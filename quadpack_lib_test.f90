program main
   use, intrinsic:: iso_fortran_env, only: input_unit, output_unit, error_unit
   use, intrinsic:: iso_fortran_env, only: int32, int64, real64
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, non_intrinsic:: comparable_lib, only: almost_equal
   use, non_intrinsic:: ad_lib
   use, non_intrinsic:: quadpack_lib, only: qags
   implicit none
   Real(kind=real64), parameter:: pi = 2*atan2(1d0, 0d0)
   Integer(kind=int32):: err, n_eval
   Real(kind=real64):: ret, abs_err, a, b, q
   type(Dual64_2_1):: dual_ret, dual_abs_err
   call qags(my_sin, 0d0, pi, ret, n_eval=n_eval, err=err, abs_err=abs_err)
   if(.not.(err == 0))then; write(error_unit, *) "ERROR: ", "quadpack_lib_test.f90", " ", 18, (".not.(err == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(ret, 2d0, atol=abs_err)))then; write(error_unit, *) "ERROR: ", "quadpack_lib_test.f90", " ", 19, (".not.(almost_equal(ret, 2d0, atol=abs_err))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   call qags(dual_3sin, 0d0, pi, dual_ret, n_eval=n_eval, err=err, abs_err=dual_abs_err)
   if(.not.(err == 0))then; write(error_unit, *) "ERROR: ", "quadpack_lib_test.f90", " ", 22, (".not.(err == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(real(dual_ret), 6d0, atol=real(dual_abs_err))))then; write(error_unit, *) "ERROR: ", "quadpack_lib_test.f90", " ", 23, (".not.(almost_equal(real(dual_ret), 6d0, atol=real(dual_abs_err)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(dual_ret), 2d0, atol=abs(grad(dual_abs_err))))))then; write(error_unit, *) "ERROR: ", "quadpack_lib_test.f90", " ", 24, (".not.(all(almost_equal(grad(dual_ret), 2d0, atol=abs(grad(dual_abs_err)))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   call qags(inv_x, 1d0/2, 2d0, ret, n_eval=n_eval, err=err, abs_err=abs_err)
   if(.not.(err == 0))then; write(error_unit, *) "ERROR: ", "quadpack_lib_test.f90", " ", 27, (".not.(err == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(ret, log(4d0), atol=abs_err)))then; write(error_unit, *) "ERROR: ", "quadpack_lib_test.f90", " ", 28, (".not.(almost_equal(ret, log(4d0), atol=abs_err))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   call qags(inv_x_args, 1d0/2, 2d0, [3d0], ret, n_eval=n_eval, err=err, abs_err=abs_err)
   if(.not.(err == 0))then; write(error_unit, *) "ERROR: ", "quadpack_lib_test.f90", " ", 31, (".not.(err == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(ret, 3*log(4d0), atol=abs_err)))then; write(error_unit, *) "ERROR: ", "quadpack_lib_test.f90", " ", 32, (".not.(almost_equal(ret, 3*log(4d0), atol=abs_err))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   a = 1d0/2
   b = 2d0
   q = 1
   call qags(dual_inv_x_pow_q, a, b, [Dual64_2_1(q, [1])], dual_ret, n_eval=n_eval, err=err, abs_err=dual_abs_err)
   if(.not.(err == 0))then; write(error_unit, *) "ERROR: ", "quadpack_lib_test.f90", " ", 38, (".not.(err == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(real(dual_ret), log(b/a), atol=real(dual_abs_err))))then; write(error_unit, *) "ERROR: ", "quadpack_lib_test.f90", " ", 39, (".not.(almost_equal(real(dual_ret), log(b/a), atol=real(dual_abs_err)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(dual_ret), -(b**(1 - q)*log(b)**2 - a**(1 - q)*log(a)**2)/2, atol=abs(grad(dual_abs_err))))))then; write(error_unit, *) "ERROR: ", "quadpack_lib_test.f90", " ", 40, (".not.(all(almost_equal(grad(dual_ret), -(b**(1 - q)*log(b)**2 - a**(1 - q)*log(a)**2)/2, atol=abs(grad(dual_abs_err)))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   q = 2
   call qags(dual_inv_x_pow_q, a, b, [Dual64_2_1(q, [1])], dual_ret, n_eval=n_eval, err=err, abs_err=dual_abs_err)
   if(.not.(err == 0))then; write(error_unit, *) "ERROR: ", "quadpack_lib_test.f90", " ", 44, (".not.(err == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(real(dual_ret), (b**(1 - q) - a**(1 - q))/(1 - q), atol=real(dual_abs_err))))then; write(error_unit, *) "ERROR: ", "quadpack_lib_test.f90", " ", 45, (".not.(almost_equal(real(dual_ret), (b**(1 - q) - a**(1 - q))/(1 - q), atol=real(dual_abs_err)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(dual_ret), ((-b**(1 - q)*log(b) + a**(1 - q)*log(a))*(1 - q) + (b**(1 - q) - a**(1 - q)))/(1 - q)**2, atol=abs(grad(dual_abs_err))))))then; write(error_unit, *) "ERROR: ", "quadpack_lib_test.f90", " ", 46, (".not.(all(almost_equal(grad(dual_ret), ((-b**(1 - q)*log(b) + a**(1 - q)*log(a))*(1 - q) + (b**(1 - q) - a**(1 - q)))/(1 - q)**2, atol=abs(grad(dual_abs_err)))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   call qags(inv_x2, 1d0/1024, 1024d0, ret, n_eval=n_eval, err=err, abs_err=abs_err)
   if(.not.(err == 0))then; write(error_unit, *) "ERROR: ", "quadpack_lib_test.f90", " ", 49, (".not.(err == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(ret, (1048575d0/1024) - (10*sqrt(10d0)*atan2(476625*sqrt(5d0/2), 23296d0)), atol=abs_err)))then; write(error_unit, *) "ERROR: ", "quadpack_lib_test.f90", " ", 50, (".not.(almost_equal(ret, (1048575d0/1024) - (10*sqrt(10d0)*atan2(476625*sqrt(5d0/2), 23296d0)), atol=abs_err))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   write(output_unit, *) 'SUCCESS: ', "quadpack_lib_test.f90"
   stop
contains
   pure function my_sin(x) result(ret)
      Real(kind=real64), intent(in):: x
      Real(kind=kind(x)):: ret
      ret = sin(x)
   end function my_sin
   pure function inv_x(x) result(ret)
      Real(kind=real64), intent(in):: x
      Real(kind=kind(x)):: ret
      ret = 1/x
   end function inv_x
   pure function inv_x2(x) result(ret)
      Real(kind=real64), intent(in):: x
      Real(kind=kind(x)):: ret
      ret = (1 - 1/(x**2 + 1d-3))
   end function inv_x2
   pure function inv_x_args(x, args) result(ret)
      Real(kind=real64), intent(in):: x
      Real(kind=real64), intent(in):: args(:) ! args(1) does not work
      Real(kind=kind(x)):: ret
      ret = args(1)/x
   end function inv_x_args
   pure function dual_3sin(x) result(ret)
      Real(kind=real64), intent(in):: x
      type(Dual64_2_1):: ret
      ret = sin(x)*Dual64_2_1(3, [1])
   end function dual_3sin
   pure function dual_inv_x_pow_q(x, args) result(ret)
      Real(kind=real64), intent(in):: x
      ! this should NOT be args(1) to match the qags interface
      type(Dual64_2_1), intent(in):: args(:)
      type(Dual64_2_1):: ret
      ret = 1/x**args(1)
   end function dual_inv_x_pow_q
end program main
