program main
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT, real64
   use, non_intrinsic:: math_lib
   use, non_intrinsic:: comparable_lib, only: almost_equal
   implicit none
   Integer, allocatable:: zs(:)
   Real(kind=real64):: d
   Real(kind=real64):: f, g(2), h(2, 2)
   Real(kind=real64):: f1, g1(2), h1(2, 2)
   Real(kind=real64):: f2, g2(2), h2(2, 2)
   Real(kind=real64):: f3, g3(2), h3(2, 2)
   if(.not.(mod1(-4, 3) == 2))then; write(error_unit, *) "ERROR: ", "math_lib_test.f90", " ", 18, (".not.(mod1(-4, 3) == 2)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(mod1(-3, 3) == 3))then; write(error_unit, *) "ERROR: ", "math_lib_test.f90", " ", 19, (".not.(mod1(-3, 3) == 3)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(mod1(-2, 3) == 1))then; write(error_unit, *) "ERROR: ", "math_lib_test.f90", " ", 20, (".not.(mod1(-2, 3) == 1)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(mod1(-1, 3) == 2))then; write(error_unit, *) "ERROR: ", "math_lib_test.f90", " ", 21, (".not.(mod1(-1, 3) == 2)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(mod1(0, 3) == 3))then; write(error_unit, *) "ERROR: ", "math_lib_test.f90", " ", 22, (".not.(mod1(0, 3) == 3)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(mod1(1, 3) == 1))then; write(error_unit, *) "ERROR: ", "math_lib_test.f90", " ", 23, (".not.(mod1(1, 3) == 1)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(mod1(2, 3) == 2))then; write(error_unit, *) "ERROR: ", "math_lib_test.f90", " ", 24, (".not.(mod1(2, 3) == 2)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(mod1(3, 3) == 3))then; write(error_unit, *) "ERROR: ", "math_lib_test.f90", " ", 25, (".not.(mod1(3, 3) == 3)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(mod1(4, 3) == 1))then; write(error_unit, *) "ERROR: ", "math_lib_test.f90", " ", 26, (".not.(mod1(4, 3) == 1)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(mod1(5, 3) == 2))then; write(error_unit, *) "ERROR: ", "math_lib_test.f90", " ", 27, (".not.(mod1(5, 3) == 2)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(mod1(6, 3) == 3))then; write(error_unit, *) "ERROR: ", "math_lib_test.f90", " ", 28, (".not.(mod1(6, 3) == 3)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   allocate(zs(1:5))
   call convolution([1, 2, 3], [1, 2, 3, 4], zs)
   if(.not.(all(zs == [1, 4, 10, 16, 17])))then; write(error_unit, *) "ERROR: ", "math_lib_test.f90", " ", 32, (".not.(all(zs == [1, 4, 10, 16, 17]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(linear_transform(0.1, 0.0, 1.0, 2.0, 3.0), 2.1)))then; write(error_unit, *) "ERROR: ", "math_lib_test.f90", " ", 34, (".not.(almost_equal(linear_transform(0.1, 0.0, 1.0, 2.0, 3.0), 2.1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   call rosenbrock_fgh([1d0, 1d0], f, g, h)
   if(.not.(almost_equal(f, 0d0)))then; write(error_unit, *) "ERROR: ", "math_lib_test.f90", " ", 36, (".not.(almost_equal(f, 0d0))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(g, [0d0, 0d0]))))then; write(error_unit, *) "ERROR: ", "math_lib_test.f90", " ", 37, (".not.(all(almost_equal(g, [0d0, 0d0])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   d = 1d-5
   call rosenbrock_fgh([2d0 - d, 1d0], f1, g1, h1)
   call rosenbrock_fgh([2d0, 1d0], f2, g2, h2)
   call rosenbrock_fgh([2d0 + d, 1d0], f3, g3, h3)
   if(.not.(almost_equal(g2(1), (f3 - f1)/(2*d), rtol=1d-4)))then; write(error_unit, *) "ERROR: ", "math_lib_test.f90", " ", 43, (".not.(almost_equal(g2(1), (f3 - f1)/(2*d), rtol=1d-4))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(h2(:, 1), (g3 - g1)/(2*d), rtol=1d-4))))then; write(error_unit, *) "ERROR: ", "math_lib_test.f90", " ", 44, (".not.(all(almost_equal(h2(:, 1), (g3 - g1)/(2*d), rtol=1d-4)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   call rosenbrock_fgh([2d0, 1d0 - d], f1, g1, h1)
   call rosenbrock_fgh([2d0, 1d0], f2, g2, h2)
   call rosenbrock_fgh([2d0, 1d0 + d], f3, g3, h3)
   if(.not.(almost_equal(g2(2), (f3 - f1)/(2*d), rtol=1d-4)))then; write(error_unit, *) "ERROR: ", "math_lib_test.f90", " ", 49, (".not.(almost_equal(g2(2), (f3 - f1)/(2*d), rtol=1d-4))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(h2(:, 2), (g3 - g1)/(2*d), rtol=1d-4))))then; write(error_unit, *) "ERROR: ", "math_lib_test.f90", " ", 50, (".not.(all(almost_equal(h2(:, 2), (g3 - g1)/(2*d), rtol=1d-4)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   write(OUTPUT_UNIT, *) 'SUCCESS: ', "math_lib_test.f90"
   stop
end program main
