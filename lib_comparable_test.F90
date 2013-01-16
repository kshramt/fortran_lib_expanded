
#include "utils.h"
program test_lib_comparable
  USE_UTILS_H
  use iso_fortran_env, only: OUTPUT_UNIT, INPUT_UNIT, REAL32, REAL64, INT32, INT64
  use lib_constant, only: get_nan, get_infinity
  use lib_comparable
  implicit none

  test(.not.is_nan(0.0))
  test(.not.is_nan(0.0_REAL64))
  test(.not.is_nan(0))
  test(.not.is_nan(0_INT64))
  test(is_nan(get_nan()))

  test(.not.is_infinity(0.0))
  test(.not.is_infinity(0.0_REAL64))
  test(.not.is_infinity(0))
  test(.not.is_infinity(0_INT64))
  test(is_infinity(get_infinity()))

  test(.not.equivalent(get_nan(), 0.0))
  test(equivalent(get_nan(), get_nan()))

  test(.not.equivalent(get_infinity(), 0.0))
  test(.not.equivalent(get_infinity(), -get_infinity()))
  test(equivalent(get_infinity(), get_infinity()))

    test(equivalent(0, 0))
    test(equivalent(1, 1))
    test(equivalent(-1, -1))
    test(equivalent(huge(0), huge(0)))
    test(equivalent(-huge(0), -huge(0)))
    test(equivalent(1_INT32, 1_INT64))
    test(equivalent(0_INT32, 0_INT64))
    test(equivalent(0.0, 0.0))
    test(equivalent(1.0, 1.0))
    test(equivalent(huge(0.0), huge(0.0)))
    test(equivalent(0.0, 2*epsilon(0.0)*tiny(0.0)))
    test(equivalent(0.0, -2*epsilon(0.0)*tiny(0.0)))
    test(equivalent(1.0, 1.0 + 2*epsilon(0.0)*tiny(0.0)))
    test(equivalent(1.0, 1.0 - 2*epsilon(0.0)*tiny(0.0)))
    test(equivalent(0.0_REAL32, 0.0_REAL64))
    test(equivalent(1.0_REAL32, 1.0_REAL64))
    test(equivalent(0.0d0, 2*epsilon(0.0)*tiny(0.0)))
    test(equivalent(0.0d0, -2*epsilon(0.0)*tiny(0.0)))
    test(equivalent(1.0d0, 1.0 + 2*epsilon(0.0)*tiny(0.0)))
    test(equivalent(1.0d0, 1.0 - 2*epsilon(0.0)*tiny(0.0)))
    test(equivalent(cmplx(0.0, 0.0), cmplx(0.0, 0.0)))
    test(equivalent(cmplx(1.0, -1.0), cmplx(1.0, -1.0)))
    test(equivalent(cmplx(0.0, 2*epsilon(0.0)*tiny(0.0)), cmplx(-2*epsilon(0.0)*tiny(0.0), 0)))
    test(equivalent(cmplx(1.0, 1.0 - 2*epsilon(0.0)*tiny(0.0)), cmplx(1.0 + 2*epsilon(0.0)*tiny(0.0), 1.0)))

    test(.not.equivalent(0.0, 3*epsilon(0.0)*tiny(0.0)))
    test(.not.equivalent(0.0, -3*epsilon(0.0)*tiny(0.0)))
    test(.not.equivalent(1.0, 1.0 + 3*epsilon(0.0)))
    test(.not.equivalent(1.0, 1.0 - 3*epsilon(0.0)))
    test(.not.equivalent(cmplx(0.0, 3*epsilon(0.0)*tiny(0.0)), cmplx(0.0, 0.0)))
    test(.not.equivalent(cmplx(1.0, 1.0 + 3*epsilon(0.0)), cmplx(1.0, 1.0)))

  write(OUTPUT_UNIT, *) "SUCCESS: ", __FILE__
  stop
end program test_lib_comparable
