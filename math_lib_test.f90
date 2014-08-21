program main
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   use, non_intrinsic:: math_lib
   use, non_intrinsic:: comparable_lib, only: almost_equal
   implicit none
   Integer, allocatable:: zs(:)
   allocate(zs(1:5))
   call convolution([1, 2, 3], [1, 2, 3, 4], zs)
   if(.not.(all(zs == [1, 4, 10, 16, 17])))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib_test.f90", " ", 14, (".not.(all(zs == [1, 4, 10, 16, 17]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(almost_equal(linear_transform(0.1, 0.0, 1.0, 2.0, 3.0), 2.1)))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib_test.f90", " ", 16, (".not.(almost_equal(linear_transform(0.1, 0.0, 1.0, 2.0, 3.0), 2.1))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   write(OUTPUT_UNIT, *) 'SUCCESS: ', "math_lib_test.f90"
   stop
end program main
