program geodetic_lib_test
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: OUTPUT_UNIT, REAL64, REAL128, int64
   use, non_intrinsic:: comparable_lib, only: almost_equal
   use, non_intrinsic:: geodetic_lib
   implicit none
   Real(kind = REAL64):: xyz64(1:3), lonLatH64(1:3)
   Real(kind = REAL128):: lonLatH128(1:3)
   Real(kind = kind(xyz64)), parameter:: ZERO64 = 0, ONE64 = 1
   Real(kind = kind(lonLatH128)), parameter:: ZERO128 = 0, ONE128 = 1
   Integer(kind=int64):: i, j, k
   ! ecef_from_wgs84
   xyz64 = ecef_from_wgs84(0.0_REAL64, 0.0_REAL64, 0.0_REAL64)
   if(.not.(almost_equal(xyz64(1), WGS84_A)))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 17, (".not.(almost_equal(xyz64(1), WGS84_A))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(xyz64(2), ZERO64)))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 18, (".not.(almost_equal(xyz64(2), ZERO64))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(xyz64(3), ZERO64)))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 19, (".not.(almost_equal(xyz64(3), ZERO64))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   xyz64 = ecef_from_wgs84(0.0_REAL64, 90.0_REAL64, 0.0_REAL64)
   if(.not.(abs(xyz64(1)) < sqrt(epsilon(xyz64(1)))))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 22, (".not.(abs(xyz64(1)) < sqrt(epsilon(xyz64(1))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(abs(xyz64(2)) < sqrt(epsilon(xyz64(2)))))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 23, (".not.(abs(xyz64(2)) < sqrt(epsilon(xyz64(2))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(xyz64(3), WGS84_B)))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 24, (".not.(almost_equal(xyz64(3), WGS84_B))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! wgs84_from_ecef
   lonLatH128 = wgs84_from_ecef(ZERO128, ZERO128, ZERO128)
   if(.not.(almost_equal(lonLatH128(1), ZERO128)))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 28, (".not.(almost_equal(lonLatH128(1), ZERO128))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(lonLatH128(2) > 89))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 29, (".not.(lonLatH128(2) > 89)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   lonLatH128 = wgs84_from_ecef(ONE128*6000000, ZERO128, ZERO128)
   if(.not.(almost_equal(lonLatH128(1), ZERO128)))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 32, (".not.(almost_equal(lonLatH128(1), ZERO128))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(abs(lonLatH128(2)) < sqrt(epsilon(lonLatH128(2)))))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 33, (".not.(abs(lonLatH128(2)) < sqrt(epsilon(lonLatH128(2))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   lonLatH128 = wgs84_from_ecef(-ONE128*6000000, ZERO128, ZERO128)
   if(.not.(lonLatH128(1) == 180))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 35, (".not.(lonLatH128(1) == 180)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(abs(lonLatH128(2)) < sqrt(epsilon(lonLatH128(2)))))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 36, (".not.(abs(lonLatH128(2)) < sqrt(epsilon(lonLatH128(2))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   lonLatH128 = wgs84_from_ecef(ONE128*6000000, ONE128*6000000, ZERO128)
   if(.not.(lonLatH128(1) == 45))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 38, (".not.(lonLatH128(1) == 45)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(abs(lonLatH128(2)) < sqrt(epsilon(lonLatH128(2)))))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 39, (".not.(abs(lonLatH128(2)) < sqrt(epsilon(lonLatH128(2))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   lonLatH128 = wgs84_from_ecef(ONE128*6000000, -ONE128*6000000, ZERO128)
   if(.not.(lonLatH128(1) == -45))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 41, (".not.(lonLatH128(1) == -45)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(abs(lonLatH128(2)) < sqrt(epsilon(lonLatH128(2)))))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 42, (".not.(abs(lonLatH128(2)) < sqrt(epsilon(lonLatH128(2))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   lonLatH128 = wgs84_from_ecef(ONE128, ZERO128, ONE128)
   if(.not.(lonLatH128(1) == 0))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 44, (".not.(lonLatH128(1) == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(lonLatH128(2) >= 0))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 45, (".not.(lonLatH128(2) >= 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   lonLatH128 = wgs84_from_ecef(ONE128, ZERO128, -ONE128)
   if(.not.(lonLatH128(1) == 0))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 47, (".not.(lonLatH128(1) == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(lonLatH128(2) <= 0))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 48, (".not.(lonLatH128(2) <= 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   lonLatH128 = wgs84_from_ecef(epsilon(ONE128), ZERO128, ZERO128)
   if(.not.(lonLatH128(2) > 89))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 51, (".not.(lonLatH128(2) > 89)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   lonLatH128 = wgs84_from_ecef(ONE128*6380000, ZERO128, ONE128*1000000)
   if(.not.(lonLatH128(2) < 45))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 54, (".not.(lonLatH128(2) < 45)"); error stop; end if; write(output_unit, '(a)', advance='no') '.' ! Debug
   do i = -180, 180, 45
      do j = -90, 90, 6
         do k = -10000, 10000, 5000
            lonLatH64(:) = wgs84_from_ecef(ecef_from_wgs84(real(i, kind=real64), real(j, kind=real64), real(k, kind=real64)))
            if(.not.(all(almost_equal(lonLatH64, real([i, j, k], kind=real64), atol=0.001_real64))))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 60, (".not.(all(almost_equal(lonLatH64, real([i, j, k], kind=real64), atol=0.001_real64)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
            xyz64(:) = ecef_from_wgs84(wgs84_from_ecef(real(i, kind=real64), real(j, kind=real64), real(k, kind=real64)))
            if(.not.(all(almost_equal(xyz64, real([i, j, k], kind=real64), atol=0.001_real64))))then; write(error_unit, *) "ERROR: ", "geodetic_lib_test.f90", " ", 63, (".not.(all(almost_equal(xyz64, real([i, j, k], kind=real64), atol=0.001_real64)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
         end do
      end do
   end do
   write(OUTPUT_UNIT, *) 'SUCCESS: ', "geodetic_lib_test.f90"
   stop
end program geodetic_lib_test
