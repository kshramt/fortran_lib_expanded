module etas_lib
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: input_unit, output_unit, error_unit
   use, intrinsic:: iso_fortran_env, only: int8, real64, int64, real128
   use, intrinsic:: iso_fortran_env, only: iostat_end
   use, non_intrinsic:: ad_lib
   implicit none
   private
   public:: intensity_etas
   public:: log_likelihood_etas
   public:: omori_integrate
   public:: utsu_seki
      public:: index_ge
      public:: index_le
      public:: index_lt
   public:: load
         interface intensity_etas
            module procedure intensity_etasReal64
         end interface intensity_etas
         interface lambda_integrate
            module procedure lambda_integrateReal64
         end interface lambda_integrate
         interface kernel_coeff
            module procedure kernel_coeffReal64
         end interface kernel_coeff
         interface omori_integrate
            module procedure omori_integrateReal64
         end interface omori_integrate
         interface utsu_seki
            module procedure utsu_sekiReal64
         end interface utsu_seki
      interface log_likelihood_etas
         module procedure log_likelihood_etasReal64
         module procedure log_likelihood_etas_rangeReal64
      end interface log_likelihood_etas
      interface omori_neg_p
         module procedure omori_t_0_neg_pReal64
      end interface omori_neg_p
      interface lambda_neg_p
         module procedure lambda_neg_p_iReal64
         module procedure lambda_neg_p_tReal64
         module procedure lambda_neg_p_j_tReal64
      end interface lambda_neg_p
         interface intensity_etas
            module procedure intensity_etasDual64_5
         end interface intensity_etas
         interface lambda_integrate
            module procedure lambda_integrateDual64_5
         end interface lambda_integrate
         interface kernel_coeff
            module procedure kernel_coeffDual64_5
         end interface kernel_coeff
         interface omori_integrate
            module procedure omori_integrateDual64_5
         end interface omori_integrate
         interface utsu_seki
            module procedure utsu_sekiDual64_5
         end interface utsu_seki
      interface log_likelihood_etas
         module procedure log_likelihood_etasDual64_5
         module procedure log_likelihood_etas_rangeDual64_5
      end interface log_likelihood_etas
      interface omori_neg_p
         module procedure omori_t_0_neg_pDual64_5
      end interface omori_neg_p
      interface lambda_neg_p
         module procedure lambda_neg_p_iDual64_5
         module procedure lambda_neg_p_tDual64_5
         module procedure lambda_neg_p_j_tDual64_5
      end interface lambda_neg_p
         interface intensity_etas
            module procedure intensity_etasDual64_7
         end interface intensity_etas
         interface lambda_integrate
            module procedure lambda_integrateDual64_7
         end interface lambda_integrate
         interface kernel_coeff
            module procedure kernel_coeffDual64_7
         end interface kernel_coeff
         interface omori_integrate
            module procedure omori_integrateDual64_7
         end interface omori_integrate
         interface utsu_seki
            module procedure utsu_sekiDual64_7
         end interface utsu_seki
      interface log_likelihood_etas
         module procedure log_likelihood_etasDual64_7
         module procedure log_likelihood_etas_rangeDual64_7
      end interface log_likelihood_etas
      interface omori_neg_p
         module procedure omori_t_0_neg_pDual64_7
      end interface omori_neg_p
      interface lambda_neg_p
         module procedure lambda_neg_p_iDual64_7
         module procedure lambda_neg_p_tDual64_7
         module procedure lambda_neg_p_j_tDual64_7
      end interface lambda_neg_p
         interface index_ge
            module procedure index_geReal64
         end interface index_ge
         interface index_le
            module procedure index_leReal64
         end interface index_le
         interface index_lt
            module procedure index_ltReal64
         end interface index_lt
      interface load
         module procedure load_EtasInputs64
      end interface load
      type, public:: EtasInputs64
         Real(kind=real64):: m_for_K
         Real(kind=real64):: t_normalize_len
         Real(kind=real64):: t_pre
         Real(kind=real64):: t_end
         Real(kind=real64), allocatable:: ts(:)
         Real(kind=real64), allocatable:: ms(:)
         Integer(kind=int64):: n
      contains
         final:: finalize_EtasInputs64
      end type EtasInputs64
contains
      function intensity_etasReal64(t, t_normalize_len, mu, K, c, alpha, p, ts, dms) result(ret)
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: t, t_normalize_len, ts(:), dms(size(ts, kind=int64))
         Real(kind=real64), intent(in):: mu, K, c, alpha, p
         Real(kind=real64):: coeffs(size(dms, kind=int64))
         Real(kind=real64):: mu_normalized
         coeffs = kernel_coeff(dms, K, c, alpha, p, t_normalize_len)
         mu_normalized = mu/t_normalize_len
         ret = lambda_neg_p(t, c, -p, mu_normalized, ts, coeffs)
      end function intensity_etasReal64
      function log_likelihood_etasReal64(t_begin, t_end, t_normalize_len, mu, K, c, alpha, p, ts, dms, i_begin, targets) result(ret)
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: t_begin, t_end, t_normalize_len, ts(:), dms(size(ts, kind=int64))
         Integer(kind=int64), intent(in):: i_begin
         Logical, intent(in):: targets(size(ts, kind=int64))
         Real(kind=real64), intent(in):: mu, K, c, alpha, p
         Real(kind=real64):: coeffs(size(dms, kind=int64))
         Real(kind=real64):: mu_normalized, neg_p
         Real(kind=real64):: log_lambdas(size(ts, kind=int64) - i_begin + 1)
         Integer(kind=kind(i_begin)):: i, n
         n = size(ts, kind=kind(n))
         if(.not.(t_begin <= ts(i_begin) .and. ts(i_begin) <= ts(n) .and. ts(n) <= t_end))then; write(error_unit, *) "ERROR: ", "etas_lib.f90", " ", 207, (".not.(t_begin <= ts(i_begin) .and. ts(i_begin) <= ts(n) .and. ts(n) <= t_end)"); error stop; end if
         coeffs = kernel_coeff(dms, K, c, alpha, p, t_normalize_len)
         mu_normalized = mu/t_normalize_len
         neg_p = -p
            log_lambdas = 0
         ! schedule(guided) is superior to schedule(static, 1), schedule(dynamic) or schedule(auto)
         ! reversing the loop order degrades performance and result in 2-fold slowdown.
         !$omp parallel do schedule(guided)
         do i = i_begin, n
            if(targets(i))then
               log_lambdas(i - i_begin + 1) = log(lambda_neg_p(i, c, neg_p, mu_normalized, ts, coeffs))
            end if
         end do
         ! Use pairwise summation instead of omp reduction(+:ret1)
         ret = sum(log_lambdas) - lambda_integrate(t_begin, t_end, c, p, mu_normalized, ts, coeffs, i_begin)
      end function log_likelihood_etasReal64
      function log_likelihood_etas_rangeReal64(t_begin, t_end, t_normalize_len, mu, K, c, alpha, p, ts, dms, targets) result(ret)
         Integer(kind=int64), parameter:: one = 1
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: t_begin, t_end, t_normalize_len, ts(:), dms(size(ts, kind=int64))
         Real(kind=real64), intent(in):: mu, K, c, alpha, p
         Integer(kind=kind(one)):: n, i_begin, i_end
         Logical, intent(in):: targets(size(ts, kind=int64))
         n = size(ts, kind=kind(n))
         i_begin = index_ge(ts, t_begin, one, n)
         i_end = index_le(ts, t_end, i_begin, n)
         if(.not.(1 <= i_begin))then; write(error_unit, *) "ERROR: ", "etas_lib.f90", " ", 238, (".not.(1 <= i_begin)"); error stop; end if
         if(.not.(i_begin <= i_end))then; write(error_unit, *) "ERROR: ", "etas_lib.f90", " ", 239, (".not.(i_begin <= i_end)"); error stop; end if
         if(.not.(i_end <= n))then; write(error_unit, *) "ERROR: ", "etas_lib.f90", " ", 240, (".not.(i_end <= n)"); error stop; end if
         ret = log_likelihood_etas(t_begin, t_end, t_normalize_len, mu, K, c, alpha, p, ts(:i_end), dms(:i_end), i_begin, targets(:i_end))
      end function log_likelihood_etas_rangeReal64
      pure function lambda_neg_p_iReal64(i, c, neg_p, mu_normalized, ts, coeffs) result(ret)
         Real(kind=real64):: ret
         Integer(kind=int64), intent(in):: i
         Real(kind=real64), intent(in):: ts(:)
         Real(kind=real64), intent(in):: c, neg_p, mu_normalized, coeffs(size(ts, kind=int64))
         Real(kind=kind(ts)):: ti
         Integer(kind=kind(i)):: j
         ti = ts(i)
         do j = i - 1, 1, -1
            if(ts(j) < ti) exit
         end do
         ret = lambda_neg_p(j, ti, c, neg_p, mu_normalized, ts, coeffs)
      end function lambda_neg_p_iReal64
      pure function lambda_neg_p_tReal64(t, c, neg_p, mu_normalized, ts, coeffs) result(ret)
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: t, ts(:)
         Real(kind=real64), intent(in):: c, neg_p, mu_normalized, coeffs(size(ts, kind=int64))
         ret = lambda_neg_p(index_lt(ts, t, int(1, kind=int64), size(ts, kind=int64)), t, c, neg_p, mu_normalized, ts, coeffs)
      end function lambda_neg_p_tReal64
      pure function lambda_neg_p_j_tReal64(j, t, c, neg_p, mu_normalized, ts, coeffs) result(ret)
         Real(kind=real64):: ret
         Integer(kind=int64), intent(in):: j
         Real(kind=real64), intent(in):: t, ts(:)
         Real(kind=real64), intent(in):: c, neg_p, mu_normalized, coeffs(size(ts, kind=int64))
         ret = mu_normalized + dot_product(coeffs(:j), omori_neg_p(c + (t - ts(:j)), neg_p))
      end function lambda_neg_p_j_tReal64
      pure function lambda_integrateReal64(t_begin, t_end, c, p, mu_normalized, ts, coeffs, i_begin) result(ret)
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: t_begin, t_end, ts(:)
         Integer(kind=int64), intent(in):: i_begin
         Real(kind=real64), intent(in):: c, p, mu_normalized, coeffs(size(ts, kind=int64))
         ret = (t_end - t_begin)*mu_normalized + sum(coeffs*omori_integrate(t_end - ts, c, p)) - sum(coeffs(:(i_begin - 1))*omori_integrate(t_begin - ts(:(i_begin - 1)), c, p))
      end function lambda_integrateReal64
      elemental function kernel_coeffReal64(dm, K, c, alpha, p, t_normalize_len) result(ret)
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: dm, t_normalize_len
         Real(kind=real64), intent(in):: K, c, alpha, p
         ! normalization by `omori_integrate` reduces correlation of objective function and improves convergence rate.
         ret = K*utsu_seki(dm, alpha)/omori_integrate(t_normalize_len, c, p)
      end function kernel_coeffReal64
      elemental function omori_t_0_neg_pReal64(t, neg_p) result(ret)
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: t, neg_p
         ret = t**neg_p
      end function omori_t_0_neg_pReal64
      elemental function omori_integrateReal64(t, c, p) result(ret)
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: t
         Real(kind=real64), intent(in):: c, p
         ret = integrate_inv_x_pow_pReal64(c, t + c, p)
      end function omori_integrateReal64
      elemental function utsu_sekiReal64(dm, alpha) result(ret)
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: dm
         Real(kind=real64), intent(in):: alpha
         ret = exp(alpha*dm)
      end function utsu_sekiReal64
      ! space-time ETAS
      ! todo: do not create array every time
      impure elemental function space_kernel_ogata_1998_2_4_integrate_thetaReal64(theta1, theta2, l_pow_2_div_exp_alpha_dm, d, q) result(ret)
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: theta1, theta2
         Real(kind=real64), intent(in):: l_pow_2_div_exp_alpha_dm, d, q
         ! ret = romberg(space_kernel_ogata_1998_2_4_thetaReal64, theta1, theta2, [l_pow_2_div_exp_alpha_dm, d, q])
      end function space_kernel_ogata_1998_2_4_integrate_thetaReal64
      pure function space_kernel_ogata_1998_2_4_thetaReal64(theta, args) result(ret)
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: theta
         Real(kind=real64), intent(in):: args(:) ! [l**2/exp(alpha*dm), d, q]
         ret = integrate_inv_x_pow_pReal64(args(2), args(1)/sin(theta)**2 + args(2), args(3))
      end function space_kernel_ogata_1998_2_4_thetaReal64
      ! IO/utility functions
      elemental function integrate_inv_x_pow_pReal64(a, b, p) result(ret)
         ! $\int_{a}^{b} 1/x^{p} dx$
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: a, b
         Real(kind=real64), intent(in):: p
         Real(kind=real64):: one_sub_p
         one_sub_p = 1 - p
         if(one_sub_p == 0)then
            ! To correctly calculate gradient and Hessian by automatic differentiation,
            ! this redundant form should not be simplified by using p == 1.
            ! If I wrote the above code like:
            ! ret = log(x)
            ! ∂/∂p will erroneously be 0.
            ret = log(b)*b**one_sub_p - log(a)*a**one_sub_p
         else
            ret = (b**one_sub_p - a**one_sub_p)/one_sub_p
         end if
      end function integrate_inv_x_pow_pReal64
      function intensity_etasDual64_5(t, t_normalize_len, mu, K, c, alpha, p, ts, dms) result(ret)
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: t, t_normalize_len, ts(:), dms(size(ts, kind=int64))
         type(Dual64_2_5), intent(in):: mu, K, c, alpha, p
         type(Dual64_2_5):: coeffs(size(dms, kind=int64))
         type(Dual64_2_5):: mu_normalized
         coeffs = kernel_coeff(dms, K, c, alpha, p, t_normalize_len)
         mu_normalized = mu/t_normalize_len
         ret = lambda_neg_p(t, c, -p, mu_normalized, ts, coeffs)
      end function intensity_etasDual64_5
      function log_likelihood_etasDual64_5(t_begin, t_end, t_normalize_len, mu, K, c, alpha, p, ts, dms, i_begin, targets) result(ret)
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: t_begin, t_end, t_normalize_len, ts(:), dms(size(ts, kind=int64))
         Integer(kind=int64), intent(in):: i_begin
         Logical, intent(in):: targets(size(ts, kind=int64))
         type(Dual64_2_5), intent(in):: mu, K, c, alpha, p
         type(Dual64_2_5):: coeffs(size(dms, kind=int64))
         type(Dual64_2_5):: mu_normalized, neg_p
         type(Dual64_2_5):: log_lambdas(size(ts, kind=int64) - i_begin + 1)
         Integer(kind=kind(i_begin)):: i, n
         n = size(ts, kind=kind(n))
         if(.not.(t_begin <= ts(i_begin) .and. ts(i_begin) <= ts(n) .and. ts(n) <= t_end))then; write(error_unit, *) "ERROR: ", "etas_lib.f90", " ", 396, (".not.(t_begin <= ts(i_begin) .and. ts(i_begin) <= ts(n) .and. ts(n) <= t_end)"); error stop; end if
         coeffs = kernel_coeff(dms, K, c, alpha, p, t_normalize_len)
         mu_normalized = mu/t_normalize_len
         neg_p = -p
            ! log_lambdas::Dual is already initialized to 0
         ! schedule(guided) is superior to schedule(static, 1), schedule(dynamic) or schedule(auto)
         ! reversing the loop order degrades performance and result in 2-fold slowdown.
         !$omp parallel do schedule(guided)
         do i = i_begin, n
            if(targets(i))then
               log_lambdas(i - i_begin + 1) = log(lambda_neg_p(i, c, neg_p, mu_normalized, ts, coeffs))
            end if
         end do
         ! Use pairwise summation instead of omp reduction(+:ret1)
         ret = sum(log_lambdas) - lambda_integrate(t_begin, t_end, c, p, mu_normalized, ts, coeffs, i_begin)
      end function log_likelihood_etasDual64_5
      function log_likelihood_etas_rangeDual64_5(t_begin, t_end, t_normalize_len, mu, K, c, alpha, p, ts, dms, targets) result(ret)
         Integer(kind=int64), parameter:: one = 1
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: t_begin, t_end, t_normalize_len, ts(:), dms(size(ts, kind=int64))
         type(Dual64_2_5), intent(in):: mu, K, c, alpha, p
         Integer(kind=kind(one)):: n, i_begin, i_end
         Logical, intent(in):: targets(size(ts, kind=int64))
         n = size(ts, kind=kind(n))
         i_begin = index_ge(ts, t_begin, one, n)
         i_end = index_le(ts, t_end, i_begin, n)
         if(.not.(1 <= i_begin))then; write(error_unit, *) "ERROR: ", "etas_lib.f90", " ", 427, (".not.(1 <= i_begin)"); error stop; end if
         if(.not.(i_begin <= i_end))then; write(error_unit, *) "ERROR: ", "etas_lib.f90", " ", 428, (".not.(i_begin <= i_end)"); error stop; end if
         if(.not.(i_end <= n))then; write(error_unit, *) "ERROR: ", "etas_lib.f90", " ", 429, (".not.(i_end <= n)"); error stop; end if
         ret = log_likelihood_etas(t_begin, t_end, t_normalize_len, mu, K, c, alpha, p, ts(:i_end), dms(:i_end), i_begin, targets(:i_end))
      end function log_likelihood_etas_rangeDual64_5
      pure function lambda_neg_p_iDual64_5(i, c, neg_p, mu_normalized, ts, coeffs) result(ret)
         type(Dual64_2_5):: ret
         Integer(kind=int64), intent(in):: i
         Real(kind=real64), intent(in):: ts(:)
         type(Dual64_2_5), intent(in):: c, neg_p, mu_normalized, coeffs(size(ts, kind=int64))
         Real(kind=kind(ts)):: ti
         Integer(kind=kind(i)):: j
         ti = ts(i)
         do j = i - 1, 1, -1
            if(ts(j) < ti) exit
         end do
         ret = lambda_neg_p(j, ti, c, neg_p, mu_normalized, ts, coeffs)
      end function lambda_neg_p_iDual64_5
      pure function lambda_neg_p_tDual64_5(t, c, neg_p, mu_normalized, ts, coeffs) result(ret)
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: t, ts(:)
         type(Dual64_2_5), intent(in):: c, neg_p, mu_normalized, coeffs(size(ts, kind=int64))
         ret = lambda_neg_p(index_lt(ts, t, int(1, kind=int64), size(ts, kind=int64)), t, c, neg_p, mu_normalized, ts, coeffs)
      end function lambda_neg_p_tDual64_5
      pure function lambda_neg_p_j_tDual64_5(j, t, c, neg_p, mu_normalized, ts, coeffs) result(ret)
         type(Dual64_2_5):: ret
         Integer(kind=int64), intent(in):: j
         Real(kind=real64), intent(in):: t, ts(:)
         type(Dual64_2_5), intent(in):: c, neg_p, mu_normalized, coeffs(size(ts, kind=int64))
         ret = mu_normalized + dot_product(coeffs(:j), omori_neg_p(c + (t - ts(:j)), neg_p))
      end function lambda_neg_p_j_tDual64_5
      pure function lambda_integrateDual64_5(t_begin, t_end, c, p, mu_normalized, ts, coeffs, i_begin) result(ret)
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: t_begin, t_end, ts(:)
         Integer(kind=int64), intent(in):: i_begin
         type(Dual64_2_5), intent(in):: c, p, mu_normalized, coeffs(size(ts, kind=int64))
         ret = (t_end - t_begin)*mu_normalized + sum(coeffs*omori_integrate(t_end - ts, c, p)) - sum(coeffs(:(i_begin - 1))*omori_integrate(t_begin - ts(:(i_begin - 1)), c, p))
      end function lambda_integrateDual64_5
      elemental function kernel_coeffDual64_5(dm, K, c, alpha, p, t_normalize_len) result(ret)
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: dm, t_normalize_len
         type(Dual64_2_5), intent(in):: K, c, alpha, p
         ! normalization by `omori_integrate` reduces correlation of objective function and improves convergence rate.
         ret = K*utsu_seki(dm, alpha)/omori_integrate(t_normalize_len, c, p)
      end function kernel_coeffDual64_5
      elemental function omori_t_0_neg_pDual64_5(t, neg_p) result(ret)
         type(Dual64_2_5):: ret
         type(Dual64_2_5), intent(in):: t, neg_p
         ret = t**neg_p
      end function omori_t_0_neg_pDual64_5
      elemental function omori_integrateDual64_5(t, c, p) result(ret)
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: t
         type(Dual64_2_5), intent(in):: c, p
         ret = integrate_inv_x_pow_pDual64_5(c, t + c, p)
      end function omori_integrateDual64_5
      elemental function utsu_sekiDual64_5(dm, alpha) result(ret)
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: dm
         type(Dual64_2_5), intent(in):: alpha
         ret = exp(alpha*dm)
      end function utsu_sekiDual64_5
      ! space-time ETAS
      ! todo: do not create array every time
      impure elemental function space_kernel_ogata_1998_2_4_integrate_thetaDual64_5(theta1, theta2, l_pow_2_div_exp_alpha_dm, d, q) result(ret)
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: theta1, theta2
         type(Dual64_2_5), intent(in):: l_pow_2_div_exp_alpha_dm, d, q
         ! ret = romberg(space_kernel_ogata_1998_2_4_thetaDual64_5, theta1, theta2, [l_pow_2_div_exp_alpha_dm, d, q])
      end function space_kernel_ogata_1998_2_4_integrate_thetaDual64_5
      pure function space_kernel_ogata_1998_2_4_thetaDual64_5(theta, args) result(ret)
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: theta
         type(Dual64_2_5), intent(in):: args(:) ! [l**2/exp(alpha*dm), d, q]
         ret = integrate_inv_x_pow_pDual64_5(args(2), args(1)/sin(theta)**2 + args(2), args(3))
      end function space_kernel_ogata_1998_2_4_thetaDual64_5
      ! IO/utility functions
      elemental function integrate_inv_x_pow_pDual64_5(a, b, p) result(ret)
         ! $\int_{a}^{b} 1/x^{p} dx$
         type(Dual64_2_5):: ret
         type(Dual64_2_5), intent(in):: a, b
         type(Dual64_2_5), intent(in):: p
         type(Dual64_2_5):: one_sub_p
         one_sub_p = 1 - p
         if(one_sub_p == 0)then
            ! To correctly calculate gradient and Hessian by automatic differentiation,
            ! this redundant form should not be simplified by using p == 1.
            ! If I wrote the above code like:
            ! ret = log(x)
            ! ∂/∂p will erroneously be 0.
            ret = log(b)*b**one_sub_p - log(a)*a**one_sub_p
         else
            ret = (b**one_sub_p - a**one_sub_p)/one_sub_p
         end if
      end function integrate_inv_x_pow_pDual64_5
      function intensity_etasDual64_7(t, t_normalize_len, mu, K, c, alpha, p, ts, dms) result(ret)
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: t, t_normalize_len, ts(:), dms(size(ts, kind=int64))
         type(Dual64_2_7), intent(in):: mu, K, c, alpha, p
         type(Dual64_2_7):: coeffs(size(dms, kind=int64))
         type(Dual64_2_7):: mu_normalized
         coeffs = kernel_coeff(dms, K, c, alpha, p, t_normalize_len)
         mu_normalized = mu/t_normalize_len
         ret = lambda_neg_p(t, c, -p, mu_normalized, ts, coeffs)
      end function intensity_etasDual64_7
      function log_likelihood_etasDual64_7(t_begin, t_end, t_normalize_len, mu, K, c, alpha, p, ts, dms, i_begin, targets) result(ret)
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: t_begin, t_end, t_normalize_len, ts(:), dms(size(ts, kind=int64))
         Integer(kind=int64), intent(in):: i_begin
         Logical, intent(in):: targets(size(ts, kind=int64))
         type(Dual64_2_7), intent(in):: mu, K, c, alpha, p
         type(Dual64_2_7):: coeffs(size(dms, kind=int64))
         type(Dual64_2_7):: mu_normalized, neg_p
         type(Dual64_2_7):: log_lambdas(size(ts, kind=int64) - i_begin + 1)
         Integer(kind=kind(i_begin)):: i, n
         n = size(ts, kind=kind(n))
         if(.not.(t_begin <= ts(i_begin) .and. ts(i_begin) <= ts(n) .and. ts(n) <= t_end))then; write(error_unit, *) "ERROR: ", "etas_lib.f90", " ", 585, (".not.(t_begin <= ts(i_begin) .and. ts(i_begin) <= ts(n) .and. ts(n) <= t_end)"); error stop; end if
         coeffs = kernel_coeff(dms, K, c, alpha, p, t_normalize_len)
         mu_normalized = mu/t_normalize_len
         neg_p = -p
            ! log_lambdas::Dual is already initialized to 0
         ! schedule(guided) is superior to schedule(static, 1), schedule(dynamic) or schedule(auto)
         ! reversing the loop order degrades performance and result in 2-fold slowdown.
         !$omp parallel do schedule(guided)
         do i = i_begin, n
            if(targets(i))then
               log_lambdas(i - i_begin + 1) = log(lambda_neg_p(i, c, neg_p, mu_normalized, ts, coeffs))
            end if
         end do
         ! Use pairwise summation instead of omp reduction(+:ret1)
         ret = sum(log_lambdas) - lambda_integrate(t_begin, t_end, c, p, mu_normalized, ts, coeffs, i_begin)
      end function log_likelihood_etasDual64_7
      function log_likelihood_etas_rangeDual64_7(t_begin, t_end, t_normalize_len, mu, K, c, alpha, p, ts, dms, targets) result(ret)
         Integer(kind=int64), parameter:: one = 1
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: t_begin, t_end, t_normalize_len, ts(:), dms(size(ts, kind=int64))
         type(Dual64_2_7), intent(in):: mu, K, c, alpha, p
         Integer(kind=kind(one)):: n, i_begin, i_end
         Logical, intent(in):: targets(size(ts, kind=int64))
         n = size(ts, kind=kind(n))
         i_begin = index_ge(ts, t_begin, one, n)
         i_end = index_le(ts, t_end, i_begin, n)
         if(.not.(1 <= i_begin))then; write(error_unit, *) "ERROR: ", "etas_lib.f90", " ", 616, (".not.(1 <= i_begin)"); error stop; end if
         if(.not.(i_begin <= i_end))then; write(error_unit, *) "ERROR: ", "etas_lib.f90", " ", 617, (".not.(i_begin <= i_end)"); error stop; end if
         if(.not.(i_end <= n))then; write(error_unit, *) "ERROR: ", "etas_lib.f90", " ", 618, (".not.(i_end <= n)"); error stop; end if
         ret = log_likelihood_etas(t_begin, t_end, t_normalize_len, mu, K, c, alpha, p, ts(:i_end), dms(:i_end), i_begin, targets(:i_end))
      end function log_likelihood_etas_rangeDual64_7
      pure function lambda_neg_p_iDual64_7(i, c, neg_p, mu_normalized, ts, coeffs) result(ret)
         type(Dual64_2_7):: ret
         Integer(kind=int64), intent(in):: i
         Real(kind=real64), intent(in):: ts(:)
         type(Dual64_2_7), intent(in):: c, neg_p, mu_normalized, coeffs(size(ts, kind=int64))
         Real(kind=kind(ts)):: ti
         Integer(kind=kind(i)):: j
         ti = ts(i)
         do j = i - 1, 1, -1
            if(ts(j) < ti) exit
         end do
         ret = lambda_neg_p(j, ti, c, neg_p, mu_normalized, ts, coeffs)
      end function lambda_neg_p_iDual64_7
      pure function lambda_neg_p_tDual64_7(t, c, neg_p, mu_normalized, ts, coeffs) result(ret)
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: t, ts(:)
         type(Dual64_2_7), intent(in):: c, neg_p, mu_normalized, coeffs(size(ts, kind=int64))
         ret = lambda_neg_p(index_lt(ts, t, int(1, kind=int64), size(ts, kind=int64)), t, c, neg_p, mu_normalized, ts, coeffs)
      end function lambda_neg_p_tDual64_7
      pure function lambda_neg_p_j_tDual64_7(j, t, c, neg_p, mu_normalized, ts, coeffs) result(ret)
         type(Dual64_2_7):: ret
         Integer(kind=int64), intent(in):: j
         Real(kind=real64), intent(in):: t, ts(:)
         type(Dual64_2_7), intent(in):: c, neg_p, mu_normalized, coeffs(size(ts, kind=int64))
         ret = mu_normalized + dot_product(coeffs(:j), omori_neg_p(c + (t - ts(:j)), neg_p))
      end function lambda_neg_p_j_tDual64_7
      pure function lambda_integrateDual64_7(t_begin, t_end, c, p, mu_normalized, ts, coeffs, i_begin) result(ret)
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: t_begin, t_end, ts(:)
         Integer(kind=int64), intent(in):: i_begin
         type(Dual64_2_7), intent(in):: c, p, mu_normalized, coeffs(size(ts, kind=int64))
         ret = (t_end - t_begin)*mu_normalized + sum(coeffs*omori_integrate(t_end - ts, c, p)) - sum(coeffs(:(i_begin - 1))*omori_integrate(t_begin - ts(:(i_begin - 1)), c, p))
      end function lambda_integrateDual64_7
      elemental function kernel_coeffDual64_7(dm, K, c, alpha, p, t_normalize_len) result(ret)
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: dm, t_normalize_len
         type(Dual64_2_7), intent(in):: K, c, alpha, p
         ! normalization by `omori_integrate` reduces correlation of objective function and improves convergence rate.
         ret = K*utsu_seki(dm, alpha)/omori_integrate(t_normalize_len, c, p)
      end function kernel_coeffDual64_7
      elemental function omori_t_0_neg_pDual64_7(t, neg_p) result(ret)
         type(Dual64_2_7):: ret
         type(Dual64_2_7), intent(in):: t, neg_p
         ret = t**neg_p
      end function omori_t_0_neg_pDual64_7
      elemental function omori_integrateDual64_7(t, c, p) result(ret)
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: t
         type(Dual64_2_7), intent(in):: c, p
         ret = integrate_inv_x_pow_pDual64_7(c, t + c, p)
      end function omori_integrateDual64_7
      elemental function utsu_sekiDual64_7(dm, alpha) result(ret)
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: dm
         type(Dual64_2_7), intent(in):: alpha
         ret = exp(alpha*dm)
      end function utsu_sekiDual64_7
      ! space-time ETAS
      ! todo: do not create array every time
      impure elemental function space_kernel_ogata_1998_2_4_integrate_thetaDual64_7(theta1, theta2, l_pow_2_div_exp_alpha_dm, d, q) result(ret)
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: theta1, theta2
         type(Dual64_2_7), intent(in):: l_pow_2_div_exp_alpha_dm, d, q
         ! ret = romberg(space_kernel_ogata_1998_2_4_thetaDual64_7, theta1, theta2, [l_pow_2_div_exp_alpha_dm, d, q])
      end function space_kernel_ogata_1998_2_4_integrate_thetaDual64_7
      pure function space_kernel_ogata_1998_2_4_thetaDual64_7(theta, args) result(ret)
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: theta
         type(Dual64_2_7), intent(in):: args(:) ! [l**2/exp(alpha*dm), d, q]
         ret = integrate_inv_x_pow_pDual64_7(args(2), args(1)/sin(theta)**2 + args(2), args(3))
      end function space_kernel_ogata_1998_2_4_thetaDual64_7
      ! IO/utility functions
      elemental function integrate_inv_x_pow_pDual64_7(a, b, p) result(ret)
         ! $\int_{a}^{b} 1/x^{p} dx$
         type(Dual64_2_7):: ret
         type(Dual64_2_7), intent(in):: a, b
         type(Dual64_2_7), intent(in):: p
         type(Dual64_2_7):: one_sub_p
         one_sub_p = 1 - p
         if(one_sub_p == 0)then
            ! To correctly calculate gradient and Hessian by automatic differentiation,
            ! this redundant form should not be simplified by using p == 1.
            ! If I wrote the above code like:
            ! ret = log(x)
            ! ∂/∂p will erroneously be 0.
            ret = log(b)*b**one_sub_p - log(a)*a**one_sub_p
         else
            ret = (b**one_sub_p - a**one_sub_p)/one_sub_p
         end if
      end function integrate_inv_x_pow_pDual64_7
      pure recursive function index_geReal64(ts, t, i1, i2) result(ret)
         ! Return the smallest ret where ts(ret) >= t
         ! Assumptions:
         ! - ts is sorted in ascending order
         Integer(kind=int64):: ret
         Real(kind=real64), intent(in):: ts(:), t
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i_mid
         if(i1 == i2)then
            if(ts(i1) < t)then
               ret = i1 + 1
            else
               ret = i1
            end if
         else
            i_mid = (i1 + i2)/2 ! this will not overflow in practice
            if(ts(i_mid) < t)then
               ret = index_ge(ts, t, i_mid + 1, i2)
            else
               ret = index_ge(ts, t, i1, i_mid)
            end if
         end if
      end function index_geReal64
      pure recursive function index_leReal64(ts, t, i1, i2) result(ret)
         ! Return the largest ret where ts(ret) <= t
         ! Assumptions:
         ! - ts is sorted in ascending order
         Integer(kind=int64):: ret
         Real(kind=real64), intent(in):: ts(:), t
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i_mid
         if(i1 == i2)then
            if(t < ts(i1))then
               ret = i1 - 1
            else
               ret = i1
            end if
         else
            i_mid = (i1 + i2)/2 + 1 ! this will not overflow in practice
            if(t < ts(i_mid))then
               ret = index_le(ts, t, i1, i_mid - 1)
            else
               ret = index_le(ts, t, i_mid, i2)
            end if
         end if
      end function index_leReal64
      pure recursive function index_ltReal64(ts, t, i1, i2) result(ret)
         ! Return the largest ret where ts(ret) < t
         ! Assumptions:
         ! - ts is sorted in ascending order
         Integer(kind=int64):: ret
         Real(kind=real64), intent(in):: ts(:), t
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i_mid
         if(i1 == i2)then
            if(ts(i1) < t)then
               ret = i1
            else
               ret = i1 - 1
            end if
         else
            i_mid = (i1 + i2)/2 ! this will not overflow in practice
            if(ts(i_mid) < t)then
               ret = index_lt(ts, t, i_mid + 1, i2)
            else
               ret = index_lt(ts, t, i1, i_mid)
            end if
         end if
      end function index_ltReal64
      subroutine load_EtasInputs64(self, unit)
         Integer(kind=int64), parameter:: one = 1
         type(EtasInputs64), intent(out):: self
         Integer(kind=kind(input_unit)), intent(in):: unit
         Real(kind=kind(self%ts)), allocatable:: ts(:), ms(:)
         Integer(kind=kind(self%n)):: i, n, i_pre, i_end
         Integer(kind=kind(iostat_end)):: ios
         read(unit, *) self%m_for_K
         read(unit, *) self%t_normalize_len
         if(.not.(self%t_normalize_len > 0))then; write(error_unit, *) "ERROR: ", "etas_lib.f90", " ", 839, (".not.(self%t_normalize_len > 0)"); error stop; end if
         read(unit, *) self%t_pre
         read(unit, *) self%t_end
         if(.not.(self%t_pre <= self%t_end))then; write(error_unit, *) "ERROR: ", "etas_lib.f90", " ", 842, (".not.(self%t_pre <= self%t_end)"); error stop; end if
         read(unit, *) n
         if(.not.(n > 0))then; write(error_unit, *) "ERROR: ", "etas_lib.f90", " ", 844, (".not.(n > 0)"); error stop; end if
         allocate(ts(n))
         allocate(ms(n))
         i_end = n
         do i = 1, n
            read(unit, *, iostat=ios) ts(i), ms(i)
            if(ios == iostat_end .or. ts(i) > self%t_end)then
               i_end = i - 1
               exit
            end if
            if(.not.(ios == 0))then; write(error_unit, *) "ERROR: ", "etas_lib.f90", " ", 854, (".not.(ios == 0)"); error stop; end if
            if(i > 1)then
               if(.not.(ts(i) >= ts(i - 1)))then; write(error_unit, *) "ERROR: ", "etas_lib.f90", " ", 856, (".not.(ts(i) >= ts(i - 1))"); error stop; end if
            end if
         end do
         if(.not.(i_end > 0))then; write(error_unit, *) "ERROR: ", "etas_lib.f90", " ", 859, (".not.(i_end > 0)"); error stop; end if
         i_pre = index_ge(ts, self%t_pre, one, i_end)
         if(.not.(i_pre <= i_end))then; write(error_unit, *) "ERROR: ", "etas_lib.f90", " ", 861, (".not.(i_pre <= i_end)"); error stop; end if
         self%n = i_end - i_pre + 1
         allocate(self%ts(self%n), source=ts(i_pre:i_end))
         allocate(self%ms(self%n), source=ms(i_pre:i_end))
      end subroutine load_EtasInputs64
      impure elemental subroutine finalize_EtasInputs64(self)
         type(EtasInputs64), intent(inout):: self
         if(allocated(self%ts)) deallocate(self%ts)
         if(allocated(self%ms)) deallocate(self%ms)
      end subroutine finalize_EtasInputs64
end module etas_lib
