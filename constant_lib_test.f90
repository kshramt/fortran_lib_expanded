program constant_lib_test
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: OUTPUT_UNIT, REAL64, REAL128
   use, non_intrinsic:: comparable_lib, only: almost_equal
   use, non_intrinsic:: constant_lib
   implicit none
   if(.not.(TAB == '	'))then; write(ERROR_UNIT, *) "RAISE: ", "constant_lib_test.f90", " ", 10, (".not.(TAB == '	')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(get_nan() /= get_nan()))then; write(ERROR_UNIT, *) "RAISE: ", "constant_lib_test.f90", " ", 11, (".not.(get_nan() /= get_nan())"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(get_infinity() > huge(0.0_REAL128)))then; write(ERROR_UNIT, *) "RAISE: ", "constant_lib_test.f90", " ", 12, (".not.(get_infinity() > huge(0.0_REAL128))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(almost_equal(PI_REAL64, 3.141592653589793_REAL64)))then; write(ERROR_UNIT, *) "RAISE: ", "constant_lib_test.f90", " ", 13, (".not.(almost_equal(PI_REAL64, 3.141592653589793_REAL64))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(almost_equal(rad_from_deg(1.0_REAL64), 0.017453292519943295_REAL64)))then; write(ERROR_UNIT, *) "RAISE: ", "constant_lib_test.f90", " ", 14, (".not.(almost_equal(rad_from_deg(1.0_REAL64), 0.017453292519943295_REAL64))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(almost_equal(deg_from_rad(1.0_REAL64), 57.29577951308232_REAL64)))then; write(ERROR_UNIT, *) "RAISE: ", "constant_lib_test.f90", " ", 15, (".not.(almost_equal(deg_from_rad(1.0_REAL64), 57.29577951308232_REAL64))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   write(OUTPUT_UNIT, *) "SUCCESS: ", "constant_lib_test.f90"
   stop
end program constant_lib_test
