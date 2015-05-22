module etas_lib
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: input_unit, output_unit, error_unit, real64, int64
   implicit none
   private
   public:: log_likelihood_etas
   interface omori
      module procedure omori_t_c_p
      module procedure omori_t_0_p
   end interface omori
   interface lambda
      module procedure lambda_i
      module procedure lambda_i_t
   end interface lambda
contains
   function log_likelihood_etas(t_end, normalize_interval, c, p, alpha, k1, mu, ts, ms) result(ret)
      Real(kind=real64):: ret
      Real(kind=kind(ret)), intent(in):: t_end, normalize_interval, c, p, alpha, k1, mu, ts(:), ms(:)
      Real(kind=kind(ret)), allocatable:: ks(:)
      Real(kind=kind(ret)):: mu_normalized
      Integer(kind=int64):: n, i
      n = size(ts, kind=kind(n))
      if(.not.(size(ms, kind=kind(n)) == n))then; write(ERROR_UNIT, *) "RAISE: ", "etas_lib.f90", " ", 32, (".not.(size(ms, kind=kind(n)) == n)"); error stop; end if
      ks = kernel_coeff(ms, c, p, alpha, k1, normalize_interval)
      mu_normalized = mu/normalize_interval
      ret = -lambda_integrate(t_end, c, p, mu_normalized, ts, ks)
      !$omp parallel do reduction(+:ret) schedule(dynamic)
      do i = 1, n
         ret = ret + log(lambda(i, c, p, mu_normalized, ts, ks))
      end do
   end function log_likelihood_etas
   pure function lambda_i(i, c, p, mu_normalized, ts, ks) result(ret)
      Real(kind=real64):: ret
      Integer(kind=int64), intent(in):: i
      Real(kind=kind(ret)), intent(in):: c, p, mu_normalized, ts(:), ks(:)
      Real(kind=kind(ts)):: ti
      Integer(kind=kind(i)):: j
      ti = ts(i)
      do j = i - 1, 0, -1
         if(j <= 0) exit
         if(ts(j) < ti) exit
      end do
      ret = lambda(j, ti, c, p, mu_normalized, ts, ks)
   end function lambda_i
   pure function lambda_i_t(i, t, c, p, mu_normalized, ts, ks) result(ret)
      Real(kind=real64):: ret
      Integer(kind=int64), intent(in):: i
      Real(kind=kind(ret)), intent(in):: t, c, p, mu_normalized, ts(:), ks(:)
      ret = mu_normalized + dot_product(ks(1:i), omori((t + c) - ts(1:i), p))
   end function lambda_i_t
   pure function lambda_integrate(t_end, c, p, mu_normalized, ts, ks) result(ret)
      Real(kind=real64):: ret
      Real(kind=kind(ret)), intent(in):: t_end, c, p, mu_normalized, ts(:), ks(:)
      ret = t_end*mu_normalized + sum(kernel_integrate(t_end - ts, ks, c, p))
   end function lambda_integrate
   elemental function kernel_integrate(t, k, c, p) result(ret)
      Real(kind=real64):: ret
      Real(kind=kind(ret)), intent(in):: t, k, c, p
      ret = k*omori_integrate(t, c, p)
   end function kernel_integrate
   elemental function kernel_coeff(dm, c, p, alpha, k1, normalize_interval) result(ret)
      Real(kind=real64):: ret
      Real(kind=kind(ret)), intent(in):: dm, c, p, alpha, k1, normalize_interval
      ret = k1*utsu_seki(dm, alpha)/omori_integrate(normalize_interval, c, p)
   end function kernel_coeff
   elemental function omori_t_0_p(t, p) result(ret)
      Real(kind=real64):: ret
      Real(kind=kind(ret)), intent(in):: t, p
      ret = 1/t**p
   end function omori_t_0_p
   elemental function omori_t_c_p(t, c, p) result(ret)
      Real(kind=real64):: ret
      Real(kind=kind(ret)), intent(in):: t, c, p
      ret = 1/(t + c)**p
   end function omori_t_c_p
   elemental function omori_integrate(t, c, p) result(ret)
      Real(kind=real64):: ret
      Real(kind=kind(ret)), intent(in):: t, c, p
      if(p == 1)then
         ret = log((t + c)/c)
      else
         ret = ((t + c)**(1 - p) - c**(1 - p))/(1 - p)
      end if
   end function omori_integrate
   elemental function utsu_seki(dm, alpha) result(ret)
      Real(kind=real64):: ret
      Real(kind=kind(ret)), intent(in):: dm, alpha
      ret = exp(alpha*dm)
   end function utsu_seki
end module etas_lib
