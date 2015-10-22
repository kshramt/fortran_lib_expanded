program main
   use, intrinsic:: iso_fortran_env, only: input_unit, output_unit, error_unit
   use, intrinsic:: iso_fortran_env, only: int64, real64
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, non_intrinsic:: comparable_lib, only: almost_equal
   use, non_intrinsic:: quadrature_lib
   implicit none
   Real(kind=real64), parameter:: pi = 2*atan2(1d0, 0d0)
   Real(kind=real64):: ret, abs_err
   Logical:: err
   Integer(kind=int64):: n_eval
   ret = romberg(my_sin, 0d0, pi, abs_err=abs_err, err=err)
   if(.not.(.not.err))then; write(error_unit, *) "ERROR: ", "quadrature_lib_test.f90", " ", 18, (".not.(.not.err)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(ret, 2d0, atol=abs_err)))then; write(error_unit, *) "ERROR: ", "quadrature_lib_test.f90", " ", 19, (".not.(almost_equal(ret, 2d0, atol=abs_err))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ret = romberg(inv_x, 1d0/2, 2d0, abs_err=abs_err, err=err, n_eval=n_eval)
   if(.not.(.not.err))then; write(error_unit, *) "ERROR: ", "quadrature_lib_test.f90", " ", 22, (".not.(.not.err)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(ret, log(4d0), atol=abs_err)))then; write(error_unit, *) "ERROR: ", "quadrature_lib_test.f90", " ", 23, (".not.(almost_equal(ret, log(4d0), atol=abs_err))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ret = romberg(inv_x, 1d0/2, 8d0, abs_err=abs_err, err=err, n_eval=n_eval)
   if(.not.(.not.err))then; write(error_unit, *) "ERROR: ", "quadrature_lib_test.f90", " ", 26, (".not.(.not.err)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(ret, log(16d0), atol=abs_err)))then; write(error_unit, *) "ERROR: ", "quadrature_lib_test.f90", " ", 27, (".not.(almost_equal(ret, log(16d0), atol=abs_err))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   write(error_unit, *) "INFO: ", "quadrature_lib_test.f90", " ", 28, "n_eval", ": ", (n_eval)
   write(output_unit, *) 'SUCCESS: ', "quadrature_lib_test.f90"
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
   pure function inv_x_args(x, args) result(ret)
      Real(kind=real64), intent(in):: x
      Real(kind=real64), intent(in):: args(:) ! args(1) does not work
      Real(kind=kind(x)):: ret
      ret = args(1)/x
   end function inv_x_args
end program main
