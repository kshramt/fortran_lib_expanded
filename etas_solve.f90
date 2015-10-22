module etas_solve
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: int64, real64
   use, intrinsic:: iso_fortran_env, only: input_unit, output_unit, error_unit
   use, non_intrinsic:: ad_lib, only: Dual64_2_5, exp
   use, non_intrinsic:: constant_lib, only: get_infinity
   use, non_intrinsic:: etas_lib, only: EtasInputs64, load, index_ge
   implicit none
   private
   public:: load
   public:: exp_if_true
   Integer, parameter, public:: real_kind = real64
   Integer, parameter, public:: int_kind = int64
   Integer(kind=int_kind), parameter, public:: n_params = 5
   ! Interface
   interface load
      module procedure loadEtasSolveInputs
   end interface load
   interface exp_if_true
      module procedure exp_if_true_dual
      module procedure exp_if_true_real
   end interface exp_if_true
   type, public:: EtasSolveInputs
      Logical:: fixed(n_params)
      Logical:: by_log(n_params)
      Integer(kind=int_kind):: iter_limit
      Real(kind=real_kind):: initial(n_params) ! mu, K, c, alpha, p
      Real(kind=real_kind):: lower(n_params)
      Real(kind=real_kind):: upper(n_params)
      Logical, allocatable:: targets(:)
      Real(kind=real_kind):: t_begin
      Real(kind=real_kind):: gtol
      Real(kind=real_kind):: initial_step_size
      type(EtasInputs64):: ei
      Integer(kind=int_kind):: i_begin
   end type EtasSolveInputs
contains
   subroutine loadEtasSolveInputs(self, unit)
      Integer(kind=int_kind), parameter:: one = 1
      Integer(kind=kind(input_unit)), intent(in):: unit
      type(EtasSolveInputs), intent(out):: self
      Real(kind=real_kind):: m_fit_min
      read(unit, *) self%fixed
      read(unit, *) self%by_log
      read(unit, *) self%iter_limit
      read(unit, *) self%initial
      if(.not.(.not.any(self%initial <= 0 .and. self%by_log .and. self%fixed)))then; write(error_unit, *) "ERROR: ", "etas_solve.f90", " ", 57, (".not.(.not.any(self%initial <= 0 .and. self%by_log .and. self%fixed))"); error stop; end if
      ! there is no need to take the logarithm of fixed variables
      self%by_log = self%by_log .and. (.not.self%fixed)
      read(unit, *) self%lower
      read(unit, *) self%upper
      where(self%by_log) self%initial = log(self%initial)
      where(self%by_log) self%lower = log_or_neg_huge(self%lower)
      if(.not.(all(pack(self%upper > 0, self%by_log))))then; write(error_unit, *) "ERROR: ", "etas_solve.f90", " ", 65, (".not.(all(pack(self%upper > 0, self%by_log)))"); error stop; end if
      where(self%by_log) self%upper = log(self%upper)
      if(.not.(all((self%lower <= self%initial) .and. (self%initial <= self%upper))))then; write(error_unit, *) "ERROR: ", "etas_solve.f90", " ", 67, (".not.(all((self%lower <= self%initial) .and. (self%initial <= self%upper)))"); error stop; end if
      read(unit, *) m_fit_min
      read(unit, *) self%t_begin
      read(unit, *) self%gtol
      read(unit, *) self%initial_step_size
      if(.not.(self%gtol > 0))then; write(error_unit, *) "ERROR: ", "etas_solve.f90", " ", 73, (".not.(self%gtol > 0)"); error stop; end if
      call load(self%ei, unit)
      self%i_begin = index_ge(self%ei%ts, self%t_begin, one, self%ei%n)
      if(.not.(self%ei%n - self%i_begin + 1 >= n_params))then; write(error_unit, *) "ERROR: ", "etas_solve.f90", " ", 76, (".not.(self%ei%n - self%i_begin + 1 >= n_params)"); error stop; end if
      self%targets = self%ei%ms >= m_fit_min
      self%ei%ms(:) = self%ei%ms - self%ei%m_for_K
   end subroutine loadEtasSolveInputs
   elemental function exp_if_true_dual(x, l) result(ret)
      type(Dual64_2_5), intent(in):: x
      Logical, intent(in):: l
      type(Dual64_2_5):: ret
      if(l)then
         ret = exp(x)
      else
         ret = x
      end if
   end function exp_if_true_dual
   elemental function exp_if_true_real(x, l) result(ret)
      Real(kind=real_kind), intent(in):: x
      Logical, intent(in):: l
      Real(kind=kind(x)):: ret
      if(l)then
         ret = exp(x)
      else
         ret = x
      end if
   end function exp_if_true_real
   elemental function log_or_neg_huge(x) result(ret)
      Real(kind=real_kind), intent(in):: x
      Real(kind=kind(x)):: ret
      if(x > 0)then
         ret = log(x)
      else
         ret = -get_infinity()
      end if
   end function log_or_neg_huge
end module etas_solve
program main
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: input_unit, output_unit, error_unit, real64, int64
   use, non_intrinsic:: comparable_lib, only: almost_equal
   use, non_intrinsic:: optimize_lib, only: BoundNewtonState64, init, update
   use, non_intrinsic:: ad_lib, only: Dual64_2_5, real, hess, grad, operator(-), exp
   use, non_intrinsic:: etas_lib, only: log_likelihood_etas, omori_integrate, utsu_seki
   use, non_intrinsic:: etas_solve, only: n_params, EtasSolveInputs, load, exp_if_true, real_kind, int_kind
   implicit none
   type(EtasSolveInputs):: esi
   type(BoundNewtonState64):: s
   Real(kind=real_kind):: mu_K_c_alpha_p_best(n_params), mu, K, c, alpha, p
   Real(kind=real_kind):: f, g(n_params), H(n_params, n_params)
   Real(kind=real_kind):: f_best = huge(f_best), g_best(n_params), H_best(n_params, n_params)
   Real(kind=real_kind):: dx(n_params), r_dx
   Real(kind=kind(esi%initial_step_size)):: initial_step_size
   type(Dual64_2_5):: d_mu, d_K, d_c, d_alpha, d_p, fgh
   Integer(kind=int_kind):: i
   Integer(kind=kind(s%iter)):: iter_best
   Integer(kind=kind(esi%iter_limit)):: iter
   Logical:: converge = .false.
   Logical:: converge_by_gradient = .false.
   Logical:: converge_by_step_size = .false.
   Logical:: converge_at_corner = .false.
   Logical:: converge_by_iter_limit = .true.
   Logical:: on_lower_best(n_params), on_upper_best(n_params)
   call load(esi, input_unit)
   mu_K_c_alpha_p_best(:) = esi%initial
   if(esi%initial_step_size > 0)then
      initial_step_size = esi%initial_step_size
   else
      initial_step_size = min(1d0, minval(esi%upper - esi%lower)/8)
   end if
   call init(s, mu_K_c_alpha_p_best, initial_step_size, esi%lower, esi%upper)
   on_lower_best = s%on_lower
   on_upper_best = s%on_upper
   write(output_unit, '(a)') 'output_format_version: 6'
   do iter = 1, esi%iter_limit
      ! fix numerical error
      where(esi%fixed) s%x = esi%initial
      dx = s%x - s%x_prev
      r_dx = norm2(dx)
      d_mu = exp_if_true(Dual64_2_5(s%x(1), [1, 0, 0, 0, 0]), esi%by_log(1))
      d_K = exp_if_true(Dual64_2_5(s%x(2), [0, 1, 0, 0, 0]), esi%by_log(2))
      d_c = exp_if_true(Dual64_2_5(s%x(3), [0, 0, 1, 0, 0]), esi%by_log(3))
      d_alpha = exp_if_true(Dual64_2_5(s%x(4), [0, 0, 0, 1, 0]), esi%by_log(4))
      d_p = exp_if_true(Dual64_2_5(s%x(5), [0, 0, 0, 0, 1]), esi%by_log(5))
      fgh = -log_likelihood_etas(esi%t_begin, esi%ei%t_end, esi%ei%t_normalize_len, d_mu, d_K, d_c, d_alpha, d_p, esi%ei%ts, esi%ei%ms, esi%i_begin, esi%targets)
      f = real(fgh)
      g = grad(fgh)
      H = hess(fgh)
      write(output_unit, *) 'LOG: ', r_dx, s%is_convex, s%is_within, s%is_line_search, f, s%x, g, s%on_lower, s%on_upper
      if(f < f_best)then
         iter_best = s%iter
         mu_K_c_alpha_p_best = s%x
         f_best = f
         g_best = g
         H_best = H
         on_lower_best = s%on_lower
         on_upper_best = s%on_upper
      end if
      if(converge)then
         converge_by_iter_limit = .false.
         exit
      end if
      do i = 1, n_params
         if(esi%fixed(i))then
            g(i) = 0
            H(i, :) = 0
            H(:, i) = 0
            H(i, i) = 1
         end if
      end do
      call update(s, f, g, H, 'u')
      if(s%is_saddle_or_peak)then
         call random_number(s%x)
         s%x = (2*s%x - 1)*r_dx
      end if
      converge_by_gradient = norm2(pack(g, .not.(s%on_lower .or. s%on_upper))) <= esi%gtol .and. all(pack(g, s%on_lower) >= 0) .and. all(pack(g, s%on_upper) <= 0)
      converge_by_step_size = r_dx <= 0
      converge_at_corner = s%is_at_corner
      converge = converge_by_gradient .or. converge_by_step_size .or. converge_at_corner
   end do
   write(output_unit, '(a)') 'iterations'
   write(output_unit, *) s%iter
   write(output_unit, '(a)') 'iter_best'
   write(output_unit, *) iter_best
   write(output_unit, '(a)') 'best log likelihood'
   write(output_unit, *) -f_best
   ! transformed parameters
   write(output_unit, '(a)') 'by_log: mu, K, c, alpha, p'
   mu = mu_K_c_alpha_p_best(1)
   K = mu_K_c_alpha_p_best(2)
   c = mu_K_c_alpha_p_best(3)
   alpha = mu_K_c_alpha_p_best(4)
   p = mu_K_c_alpha_p_best(5)
   write(output_unit, *) mu, K, c, alpha, p
   write(output_unit, '(a)') 'by_log: gradient'
   write(output_unit, *) -g_best
   write(output_unit, '(a)') 'by_log: Hessian'
   do i = 1, 5
      write(output_unit, *) -H_best(i, :)
   end do
   ! non-transformed parameters
   mu = exp_if_true(mu_K_c_alpha_p_best(1), esi%by_log(1))
   K = exp_if_true(mu_K_c_alpha_p_best(2), esi%by_log(2))
   c = exp_if_true(mu_K_c_alpha_p_best(3), esi%by_log(3))
   alpha = exp_if_true(mu_K_c_alpha_p_best(4), esi%by_log(4))
   p = exp_if_true(mu_K_c_alpha_p_best(5), esi%by_log(5))
   d_mu = Dual64_2_5(mu, [1, 0, 0, 0, 0])
   d_K = Dual64_2_5(K, [0, 1, 0, 0, 0])
   d_c = Dual64_2_5(c, [0, 0, 1, 0, 0])
   d_alpha = Dual64_2_5(alpha, [0, 0, 0, 1, 0])
   d_p = Dual64_2_5(p, [0, 0, 0, 0, 1])
   fgh = -log_likelihood_etas(esi%t_begin, esi%ei%t_end, esi%ei%t_normalize_len, d_mu, d_K, d_c, d_alpha, d_p, esi%ei%ts, esi%ei%ms, esi%i_begin, esi%targets)
   g_best = grad(fgh)
   H_best = hess(fgh)
   write(output_unit, '(a)') 'mu, K, c, alpha, p, mu_for_SAPP, K_for_SAPP'
   write(output_unit, *) mu, K, c, alpha, p, mu/esi%ei%t_normalize_len, K/omori_integrate(esi%ei%t_normalize_len, c, p)
   write(output_unit, '(a)') 'gradient'
   write(output_unit, *) -g_best
   write(output_unit, '(a)') 'Hessian'
   do i = 1, 5
      write(output_unit, *) -H_best(i, :)
   end do
   write(output_unit, '(a)') 'converge_by_gradient, converge_by_step_size, converge_at_corner, converge_by_iter_limit'
   write(output_unit, *) converge_by_gradient, converge_by_step_size, converge_at_corner, converge_by_iter_limit
   write(output_unit, '(a)') 'fixed'
   write(output_unit, *) esi%fixed
   write(output_unit, '(a)') 'on_lower'
   write(output_unit, *) on_lower_best
   write(output_unit, '(a)') 'on_upper'
   write(output_unit, *) on_upper_best
   stop
end program main
