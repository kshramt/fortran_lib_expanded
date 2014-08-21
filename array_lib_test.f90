program main
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   use, intrinsic:: iso_fortran_env, only: INT64
   use, non_intrinsic:: comparable_lib, only: almost_equal
   use, non_intrinsic:: array_lib, only: iota, l2_norm, eye, get
   implicit none
   Integer:: i
   Integer:: nss(3, 4)
   if(.not.(almost_equal(l2_norm([1.0, 2.0]), 5.0)))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 14, (".not.(almost_equal(l2_norm([1.0, 2.0]), 5.0))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(iota(0) == [(i, i = 1, 0)])))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 16, (".not.(all(iota(0) == [(i, i = 1, 0)]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(iota(1) == [1])))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 17, (".not.(all(iota(1) == [1]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(iota(2) == [1, 2])))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 18, (".not.(all(iota(2) == [1, 2]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(iota(3) == [1, 2, 3])))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 19, (".not.(all(iota(3) == [1, 2, 3]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(iota(-3, -4) == [(i, i = 1, 0)])))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 21, (".not.(all(iota(-3, -4) == [(i, i = 1, 0)]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(iota(-3, -3) == [-3])))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 22, (".not.(all(iota(-3, -3) == [-3]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(iota(-3, -2) == [-3, -2])))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 23, (".not.(all(iota(-3, -2) == [-3, -2]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(iota(-3, -1) == [-3, -2, -1])))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 24, (".not.(all(iota(-3, -1) == [-3, -2, -1]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(iota(2, 3, -3) == [(i, i = 1, 0)])))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 26, (".not.(all(iota(2, 3, -3) == [(i, i = 1, 0)]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(iota(2, 2, -3) == [2])))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 27, (".not.(all(iota(2, 2, -3) == [2]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(iota(2, 1, -3) == [2])))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 28, (".not.(all(iota(2, 1, -3) == [2]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(iota(2, 0, -3) == [2])))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 29, (".not.(all(iota(2, 0, -3) == [2]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(iota(2, -1, -3) == [2, -1])))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 30, (".not.(all(iota(2, -1, -3) == [2, -1]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(iota(2, -2, -3) == [2, -1])))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 31, (".not.(all(iota(2, -2, -3) == [2, -1]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(iota(2, -3, -3) == [2, -1])))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 32, (".not.(all(iota(2, -3, -3) == [2, -1]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(iota(2, -4, -3) == [2, -1, -4])))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 33, (".not.(all(iota(2, -4, -3) == [2, -1, -4]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   nss = eye(size(nss, 1), size(nss, 2))
   if(.not.(nss(1, 1) == 1))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 36, (".not.(nss(1, 1) == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(nss(1, 2) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 37, (".not.(nss(1, 2) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(nss(1, 3) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 38, (".not.(nss(1, 3) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(nss(1, 4) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 39, (".not.(nss(1, 4) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(nss(2, 1) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 40, (".not.(nss(2, 1) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(nss(2, 2) == 1))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 41, (".not.(nss(2, 2) == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(nss(2, 3) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 42, (".not.(nss(2, 3) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(nss(2, 4) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 43, (".not.(nss(2, 4) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(nss(3, 1) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 44, (".not.(nss(3, 1) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(nss(3, 2) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 45, (".not.(nss(3, 2) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(nss(3, 3) == 1))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 46, (".not.(nss(3, 3) == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(nss(3, 4) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 47, (".not.(nss(3, 4) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(get(iota(5), 1) == 1))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 49, (".not.(get(iota(5), 1) == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(get(iota(5), 2_INT64) == 2))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 50, (".not.(get(iota(5), 2_INT64) == 2)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(get(iota(5), 3) == 3))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 51, (".not.(get(iota(5), 3) == 3)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(get(iota(5), 4) == 4))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 52, (".not.(get(iota(5), 4) == 4)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(get(iota(5), 5) == 5))then; write(ERROR_UNIT, *) "RAISE: ", "array_lib_test.f90", " ", 53, (".not.(get(iota(5), 5) == 5)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   write(OUTPUT_UNIT, *) 'SUCCESS: ', "array_lib_test.f90"
   stop
end program main
