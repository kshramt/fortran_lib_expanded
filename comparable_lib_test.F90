
#include "utils.h"
program comparable_lib_test
   USE_UTILS_H
   use, intrinsic:: iso_fortran_env, only: OUTPUT_UNIT, INPUT_UNIT, REAL32, REAL64, INT32, INT64
   use, non_intrinsic:: constant_lib, only: get_nan, get_infinity
   use, non_intrinsic:: comparable_lib
   implicit none

   TEST(.not.is_nan(0.0))
   TEST(.not.is_nan(0.0_REAL64))
   TEST(.not.is_nan(0))
   TEST(.not.is_nan(0_INT64))
   TEST(is_nan(get_nan()))

   TEST(.not.is_infinity(0.0))
   TEST(.not.is_infinity(0.0_REAL64))
   TEST(.not.is_infinity(0))
   TEST(.not.is_infinity(0_INT64))
   TEST(is_infinity(get_infinity()))

   TEST(.not.almost_equal(get_nan(), 0.0))
   TEST(almost_equal(get_nan(), get_nan()))

   TEST(.not.almost_equal(get_infinity(), 0.0))
   TEST(.not.almost_equal(get_infinity(), -get_infinity()))
   TEST(almost_equal(get_infinity(), get_infinity()))

      TEST(almost_equal(0, 0))
      TEST(almost_equal(1, 1))
      TEST(almost_equal(-1, -1))
      TEST(almost_equal(huge(0), huge(0)))
      TEST(almost_equal(-huge(0), -huge(0)))
      TEST(almost_equal(1_INT32, 1_INT64))
      TEST(almost_equal(0_INT32, 0_INT64))
      TEST(almost_equal(0.0, 0.0))
      TEST(almost_equal(1.0, 1.0))
      TEST(almost_equal(-1.0, -1.0))
      TEST(almost_equal(huge(0.0), huge(0.0)))
      TEST(almost_equal(-huge(0.0), -huge(0.0)))
      TEST(almost_equal(0.0, 1*epsilon(0.0)*tiny(0.0)))
      TEST(almost_equal(0.0, -1*epsilon(0.0)*tiny(0.0)))
      TEST(almost_equal(1.0, 1.0 + 1*epsilon(0.0)))
      TEST(almost_equal(1.0, 1.0 - 1*epsilon(0.0)))
      TEST(almost_equal(0.0_REAL32, 0.0_REAL64))
      TEST(almost_equal(1.0_REAL32, 1.0_REAL64))
      TEST(almost_equal(0.0d0, 1*epsilon(0.0)*tiny(0.0)))
      TEST(almost_equal(0.0d0, -1*epsilon(0.0)*tiny(0.0)))
      TEST(almost_equal(1.0d0, 1.0 + 1*epsilon(0.0)))
      TEST(almost_equal(cmplx(0.0, 0.0), cmplx(0.0, 0.0)))
      TEST(almost_equal(cmplx(1.0, -1.0), cmplx(1.0, -1.0)))
      TEST(almost_equal(cmplx(0.0, 1*epsilon(0.0)*tiny(0.0)), cmplx(-1*epsilon(0.0)*tiny(0.0), 0)))
      TEST(almost_equal(cmplx(1.0, 1.0 - 1*epsilon(0.0)), cmplx(1.0 + 1*epsilon(0.0), 1.0)))
      TEST(almost_equal(4.7, 2.3*2 + 0.1))

      TEST(.not.almost_equal(0.0, 2*epsilon(0.0)*tiny(0.0)))
      TEST(.not.almost_equal(0.0, -2*epsilon(0.0)*tiny(0.0)))
      TEST(.not.almost_equal(1.0, 1.0 + 3*epsilon(0.0)))
      TEST(.not.almost_equal(1.0, 1.0 - 2*epsilon(0.0)))
      TEST(.not.almost_equal(1.0d0, 1.0 - 2*epsilon(0.0)))
      TEST(.not.almost_equal(cmplx(0.0, 2*epsilon(0.0)*tiny(0.0)), cmplx(0.0, 0.0)))
      TEST(.not.almost_equal(cmplx(1.0, 1.0 - 2*epsilon(0.0)), cmplx(1.0, 1.0)))
      TEST(.not.almost_equal(4.7 - 2.3*2, 0.1))

   ! relative
   TEST(.not.almost_equal(1.0, 0.9, relative = 0.1))
   TEST(almost_equal(1.0, 0.9*(1 + epsilon(0.0)), relative = 0.1))

   ! absolute
   TEST(.not.almost_equal(0.0, 0.1, absolute = 0.1))
   TEST(almost_equal(0.0, 0.1*(1 - epsilon(0.0)), absolute = 0.1))

   write(OUTPUT_UNIT, *) "SUCCESS: ", __FILE__
   stop
end program comparable_lib_test
