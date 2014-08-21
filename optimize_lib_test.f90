program main
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   use, intrinsic:: iso_fortran_env, only: REAL64
   use, non_intrinsic:: comparable_lib, only: almost_equal
   use, non_intrinsic:: optimize_lib, only: nnls
   implicit none
   if(.not.(all(almost_equal(nnls(real(reshape([73, 87, 72, 80, 71, 74, 2, 89, 52, 46, 7, 71], shape=[4, 3]), kind=REAL64), real([49, 67, 68, 20], kind=REAL64)), [0.6495384364022547_REAL64, 0.0_REAL64, 0.0_REAL64]))))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib_test.f90", " ", 11, (".not.(all(almost_equal(nnls(real(reshape([73, 87, 72, 80, 71, 74, 2, 89, 52, 46, 7, 71], shape=[4, 3]), kind=REAL64), real([49, 67, 68, 20], kind=REAL64)), [0.6495384364022547_REAL64, 0.0_REAL64, 0.0_REAL64])))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(nnls(real(reshape([1, 1, 0, 1], shape=[2, 2]), kind=REAL64), real([1, 0], kind=REAL64)), [1.0/2, 0.0]))))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib_test.f90", " ", 12, (".not.(all(almost_equal(nnls(real(reshape([1, 1, 0, 1], shape=[2, 2]), kind=REAL64), real([1, 0], kind=REAL64)), [1.0/2, 0.0])))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   write(OUTPUT_UNIT, *) 'SUCCESS: ', "optimize_lib_test.f90"
   stop
end program main
