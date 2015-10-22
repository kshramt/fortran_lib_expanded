program main
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   use, intrinsic:: iso_fortran_env, only: REAL32, REAL64, REAL128
   use, non_intrinsic:: comparable_lib, only: almost_equal
   use, non_intrinsic:: dual_lib, only: real, dual, diff, sin, cos, operator(+), operator(-), operator(*), operator(/)
   implicit none
   Integer:: i
   Real(kind=REAL32):: r
   do i = -10, 10
      r = real(i)
      ! +
      if(.not.(almost_equal(real(sin(dual(r, real(1))) + cos(dual(r, real(2)))), sin(r) + cos(r))))then; write(error_unit, *) "ERROR: ", "dual_lib_test.f90", " ", 17, (".not.(almost_equal(real(sin(dual(r, real(1))) + cos(dual(r, real(2)))), sin(r) + cos(r)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
      if(.not.(almost_equal(diff(sin(dual(r, real(1))) + cos(dual(r, real(2)))), cos(r) - 2*sin(r))))then; write(error_unit, *) "ERROR: ", "dual_lib_test.f90", " ", 18, (".not.(almost_equal(diff(sin(dual(r, real(1))) + cos(dual(r, real(2)))), cos(r) - 2*sin(r)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
      if(.not.(almost_equal(real(sin(dual(r, real(1))) + cos(r)), sin(r) + cos(r))))then; write(error_unit, *) "ERROR: ", "dual_lib_test.f90", " ", 19, (".not.(almost_equal(real(sin(dual(r, real(1))) + cos(r)), sin(r) + cos(r)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
      if(.not.(almost_equal(diff(sin(dual(r, real(1))) + cos(r)), cos(r))))then; write(error_unit, *) "ERROR: ", "dual_lib_test.f90", " ", 20, (".not.(almost_equal(diff(sin(dual(r, real(1))) + cos(r)), cos(r)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
      ! -
      if(.not.(almost_equal(real(sin(dual(r, real(1))) - cos(dual(r, real(2)))), sin(r) - cos(r))))then; write(error_unit, *) "ERROR: ", "dual_lib_test.f90", " ", 23, (".not.(almost_equal(real(sin(dual(r, real(1))) - cos(dual(r, real(2)))), sin(r) - cos(r)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
      if(.not.(almost_equal(diff(sin(dual(r, real(1))) - cos(dual(r, real(2)))), cos(r) + 2*sin(r))))then; write(error_unit, *) "ERROR: ", "dual_lib_test.f90", " ", 24, (".not.(almost_equal(diff(sin(dual(r, real(1))) - cos(dual(r, real(2)))), cos(r) + 2*sin(r)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
      ! *
      if(.not.(almost_equal(real(sin(dual(r, real(1)))*cos(dual(r, real(2)))), sin(r)*cos(r))))then; write(error_unit, *) "ERROR: ", "dual_lib_test.f90", " ", 27, (".not.(almost_equal(real(sin(dual(r, real(1)))*cos(dual(r, real(2)))), sin(r)*cos(r)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
      if(.not.(almost_equal(diff(sin(dual(r, real(1)))*cos(dual(r, real(2)))), cos(r)*cos(r) - 2*sin(r)*sin(r))))then; write(error_unit, *) "ERROR: ", "dual_lib_test.f90", " ", 28, (".not.(almost_equal(diff(sin(dual(r, real(1)))*cos(dual(r, real(2)))), cos(r)*cos(r) - 2*sin(r)*sin(r)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
      ! /
      if(.not.(almost_equal(real(sin(dual(r, real(1)))/cos(dual(r, real(2)))), sin(r)/cos(r))))then; write(error_unit, *) "ERROR: ", "dual_lib_test.f90", " ", 31, (".not.(almost_equal(real(sin(dual(r, real(1)))/cos(dual(r, real(2)))), sin(r)/cos(r)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
      if(.not.(almost_equal(diff(sin(dual(r, real(1)))/cos(dual(r, real(2)))), (cos(r)*cos(r) + 2*sin(r)*sin(r))/(cos(r)**2))))then; write(error_unit, *) "ERROR: ", "dual_lib_test.f90", " ", 32, (".not.(almost_equal(diff(sin(dual(r, real(1)))/cos(dual(r, real(2)))), (cos(r)*cos(r) + 2*sin(r)*sin(r))/(cos(r)**2)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
      ! comp
      if(.not.(almost_equal(real(sin(cos(dual(r, real(1))))), sin(cos(r)))))then; write(error_unit, *) "ERROR: ", "dual_lib_test.f90", " ", 35, (".not.(almost_equal(real(sin(cos(dual(r, real(1))))), sin(cos(r))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
      if(.not.(almost_equal(diff(sin(cos(dual(r, real(1))))), -sin(r)*cos(cos(r)))))then; write(error_unit, *) "ERROR: ", "dual_lib_test.f90", " ", 36, (".not.(almost_equal(diff(sin(cos(dual(r, real(1))))), -sin(r)*cos(cos(r))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   end do
   write(OUTPUT_UNIT, *) 'SUCCESS: ', "dual_lib_test.f90"
   stop
end program main
