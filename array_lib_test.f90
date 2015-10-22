program main
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   use, intrinsic:: iso_fortran_env, only: INT64
   use, non_intrinsic:: comparable_lib, only: almost_equal
   use, non_intrinsic:: array_lib, only: iota, l2_norm, eye, get, mul_diag
   implicit none
   Integer:: i
   Integer:: nss(3, 4)
   Real:: A(3, 4), B(3, 4)
   A(1, :) = [1, 2, 3, 4]
   A(2, :) = [5, 6, 7, 8]
   A(3, :) = [9, 10, 11, 12]
   B(:, 1) = 1*A(:, 1)
   B(:, 2) = 2*A(:, 2)
   B(:, 3) = 3*A(:, 3)
   B(:, 4) = 4*A(:, 4)
   if(.not.(all(almost_equal(mul_diag(A, [1.0, 2.0, 3.0, 4.0]), B))))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 22, (".not.(all(almost_equal(mul_diag(A, [1.0, 2.0, 3.0, 4.0]), B)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   B(1, :) = 1*A(1, :)
   B(2, :) = 2*A(2, :)
   B(3, :) = 3*A(3, :)
   if(.not.(all(almost_equal(mul_diag([1.0, 2.0, 3.0], A), B))))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 26, (".not.(all(almost_equal(mul_diag([1.0, 2.0, 3.0], A), B)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(l2_norm([1.0, 2.0]), 5.0)))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 28, (".not.(almost_equal(l2_norm([1.0, 2.0]), 5.0))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(iota(0) == [(i, i = 1, 0)])))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 30, (".not.(all(iota(0) == [(i, i = 1, 0)]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(iota(1) == [1])))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 31, (".not.(all(iota(1) == [1]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(iota(2) == [1, 2])))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 32, (".not.(all(iota(2) == [1, 2]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(iota(3) == [1, 2, 3])))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 33, (".not.(all(iota(3) == [1, 2, 3]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(iota(-3, -4) == [(i, i = 1, 0)])))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 35, (".not.(all(iota(-3, -4) == [(i, i = 1, 0)]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(iota(-3, -3) == [-3])))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 36, (".not.(all(iota(-3, -3) == [-3]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(iota(-3, -2) == [-3, -2])))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 37, (".not.(all(iota(-3, -2) == [-3, -2]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(iota(-3, -1) == [-3, -2, -1])))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 38, (".not.(all(iota(-3, -1) == [-3, -2, -1]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(iota(2, 3, -3) == [(i, i = 1, 0)])))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 40, (".not.(all(iota(2, 3, -3) == [(i, i = 1, 0)]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(iota(2, 2, -3) == [2])))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 41, (".not.(all(iota(2, 2, -3) == [2]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(iota(2, 1, -3) == [2])))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 42, (".not.(all(iota(2, 1, -3) == [2]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(iota(2, 0, -3) == [2])))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 43, (".not.(all(iota(2, 0, -3) == [2]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(iota(2, -1, -3) == [2, -1])))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 44, (".not.(all(iota(2, -1, -3) == [2, -1]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(iota(2, -2, -3) == [2, -1])))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 45, (".not.(all(iota(2, -2, -3) == [2, -1]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(iota(2, -3, -3) == [2, -1])))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 46, (".not.(all(iota(2, -3, -3) == [2, -1]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(iota(2, -4, -3) == [2, -1, -4])))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 47, (".not.(all(iota(2, -4, -3) == [2, -1, -4]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   nss = eye(size(nss, 1), size(nss, 2))
   if(.not.(nss(1, 1) == 1))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 50, (".not.(nss(1, 1) == 1)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(nss(1, 2) == 0))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 51, (".not.(nss(1, 2) == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(nss(1, 3) == 0))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 52, (".not.(nss(1, 3) == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(nss(1, 4) == 0))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 53, (".not.(nss(1, 4) == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(nss(2, 1) == 0))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 54, (".not.(nss(2, 1) == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(nss(2, 2) == 1))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 55, (".not.(nss(2, 2) == 1)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(nss(2, 3) == 0))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 56, (".not.(nss(2, 3) == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(nss(2, 4) == 0))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 57, (".not.(nss(2, 4) == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(nss(3, 1) == 0))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 58, (".not.(nss(3, 1) == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(nss(3, 2) == 0))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 59, (".not.(nss(3, 2) == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(nss(3, 3) == 1))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 60, (".not.(nss(3, 3) == 1)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(nss(3, 4) == 0))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 61, (".not.(nss(3, 4) == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(get(iota(5), 1) == 1))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 63, (".not.(get(iota(5), 1) == 1)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(get(iota(5), 2_INT64) == 2))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 64, (".not.(get(iota(5), 2_INT64) == 2)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(get(iota(5), 3) == 3))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 65, (".not.(get(iota(5), 3) == 3)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(get(iota(5), 4) == 4))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 66, (".not.(get(iota(5), 4) == 4)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(get(iota(5), 5) == 5))then; write(error_unit, *) "ERROR: ", "array_lib_test.f90", " ", 67, (".not.(get(iota(5), 5) == 5)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   write(OUTPUT_UNIT, *) 'SUCCESS: ', "array_lib_test.f90"
   stop
end program main
