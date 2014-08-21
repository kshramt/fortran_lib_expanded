program character_lib_test
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: REAL64
   use, non_intrinsic:: character_lib
   implicit none
   Character(len = 8):: sBuffer
   Character(len = 17):: dBuffer
   ! replace
   if(.not.(replace('a', 'a', 'bc') == 'bc'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 13, (".not.(replace('a', 'a', 'bc') == 'bc')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(replace('a_a', 'a', 'bc') == 'bc_bc'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 14, (".not.(replace('a_a', 'a', 'bc') == 'bc_bc')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(replace('abcdabcdab', 'ab', 'PQR') == 'PQRcdPQRcdPQR'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 15, (".not.(replace('abcdabcdab', 'ab', 'PQR') == 'PQRcdPQRcdPQR')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(replace('abcabca', 'a', '') == 'bcbc'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 16, (".not.(replace('abcabca', 'a', '') == 'bcbc')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! s
   if(.not.(s('') == ''))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 19, (".not.(s('') == '')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(s('a') == 'a'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 20, (".not.(s('a') == 'a')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(s(' ') == ''))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 21, (".not.(s(' ') == '')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(s(' a') == 'a'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 22, (".not.(s(' a') == 'a')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(s('a ') == 'a'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 23, (".not.(s('a ') == 'a')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(s(' a ') == 'a'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 24, (".not.(s(' a ') == 'a')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(s(' a b ') == 'a b'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 25, (".not.(s(' a b ') == 'a b')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! str
   if(.not.(len(str(0)) == 1))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 28, (".not.(len(str(0)) == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(str('a') == 'a'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 29, (".not.(str('a') == 'a')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(len(str(0)) == 1))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 30, (".not.(len(str(0)) == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(str(0) == '0'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 31, (".not.(str(0) == '0')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(len(str(-1)) == 2))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 32, (".not.(len(str(-1)) == 2)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(str(-1) == '-1'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 33, (".not.(str(-1) == '-1')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   sBuffer = str(0.0)
   if(.not.(sBuffer == '0.000000'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 35, (".not.(sBuffer == '0.000000')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   sBuffer = str(1.0)
   if(.not.(sBuffer == '1.000000'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 37, (".not.(sBuffer == '1.000000')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   dBuffer = str(0.0_REAL64)
   if(.not.(dBuffer == '0.000000000000000'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 39, (".not.(dBuffer == '0.000000000000000')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   dBuffer = str(-1.0_REAL64)
   if(.not.(dBuffer == '-1.00000000000000'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 41, (".not.(dBuffer == '-1.00000000000000')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   write(OUTPUT_UNIT, *) trim(str((1, 1)))
   if(.not.(str(.true.) == 'T'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 43, (".not.(str(.true.) == 'T')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(str(.false.) == 'F'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 44, (".not.(str(.false.) == 'F')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! +
   if(.not.('' + '' == ''))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 47, (".not.('' + '' == '')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.('' + 'a' == 'a'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 48, (".not.('' + 'a' == 'a')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.('a' + '' == 'a'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 49, (".not.('a' + '' == 'a')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.('a' + 'b' == 'ab'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 50, (".not.('a' + 'b' == 'ab')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(' a ' + 'b' == ' a b'))then; write(ERROR_UNIT, *) "RAISE: ", "character_lib_test.f90", " ", 51, (".not.(' a ' + 'b' == ' a b')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   write(OUTPUT_UNIT, *) "SUCCESS: ", "character_lib_test.f90"
   stop
end program character_lib_test
