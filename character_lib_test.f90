program character_lib_test
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: REAL64
   use, non_intrinsic:: character_lib
   implicit none
   Character(len=8):: sBuffer
   Character(len=17):: dBuffer
   Character(len=*), parameter:: ascii = ' !"#$%&''()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~'
   Character(len=*), parameter:: ascii_up = ' !"#$%&''()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~'
   Character(len=*), parameter:: ascii_low = ' !"#$%&''()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~'
   ! upper
   if(.not.(upper(ascii) == ascii_up))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 16, (".not.(upper(ascii) == ascii_up)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(upper('あaA') == 'あAA'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 17, (".not.(upper('あaA') == 'あAA')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! lower
   if(.not.(lower(ascii) == ascii_low))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 20, (".not.(lower(ascii) == ascii_low)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(lower('あaA') == 'あaa'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 21, (".not.(lower('あaA') == 'あaa')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! replace
   if(.not.(replace('a', 'a', 'bc') == 'bc'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 24, (".not.(replace('a', 'a', 'bc') == 'bc')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(replace('a_a', 'a', 'bc') == 'bc_bc'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 25, (".not.(replace('a_a', 'a', 'bc') == 'bc_bc')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(replace('abcdabcdab', 'ab', 'PQR') == 'PQRcdPQRcdPQR'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 26, (".not.(replace('abcdabcdab', 'ab', 'PQR') == 'PQRcdPQRcdPQR')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(replace('abcabca', 'a', '') == 'bcbc'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 27, (".not.(replace('abcabca', 'a', '') == 'bcbc')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! s
   if(.not.(s('') == ''))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 30, (".not.(s('') == '')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(s('a') == 'a'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 31, (".not.(s('a') == 'a')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(s(' ') == ''))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 32, (".not.(s(' ') == '')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(s(' a') == 'a'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 33, (".not.(s(' a') == 'a')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(s('a ') == 'a'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 34, (".not.(s('a ') == 'a')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(s(' a ') == 'a'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 35, (".not.(s(' a ') == 'a')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(s(' a b ') == 'a b'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 36, (".not.(s(' a b ') == 'a b')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! str
   if(.not.(len(str(0)) == 1))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 39, (".not.(len(str(0)) == 1)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(str('a') == 'a'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 40, (".not.(str('a') == 'a')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(len(str(0)) == 1))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 41, (".not.(len(str(0)) == 1)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(str(0) == '0'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 42, (".not.(str(0) == '0')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(len(str(-1)) == 2))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 43, (".not.(len(str(-1)) == 2)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(str(-1) == '-1'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 44, (".not.(str(-1) == '-1')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   sBuffer = str(0.0)
   if(.not.(sBuffer == '0.000000'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 46, (".not.(sBuffer == '0.000000')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   sBuffer = str(1.0)
   if(.not.(sBuffer == '1.000000'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 48, (".not.(sBuffer == '1.000000')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   dBuffer = str(0.0_REAL64)
   if(.not.(dBuffer == '0.000000000000000'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 50, (".not.(dBuffer == '0.000000000000000')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   dBuffer = str(-1.0_REAL64)
   if(.not.(dBuffer == '-1.00000000000000'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 52, (".not.(dBuffer == '-1.00000000000000')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   write(OUTPUT_UNIT, *) trim(str((1, 1)))
   if(.not.(str(.true.) == 'T'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 54, (".not.(str(.true.) == 'T')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(str(.false.) == 'F'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 55, (".not.(str(.false.) == 'F')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! +
   if(.not.('' + '' == ''))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 58, (".not.('' + '' == '')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.('' + 'a' == 'a'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 59, (".not.('' + 'a' == 'a')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.('a' + '' == 'a'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 60, (".not.('a' + '' == 'a')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.('a' + 'b' == 'ab'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 61, (".not.('a' + 'b' == 'ab')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(' a ' + 'b' == ' a b'))then; write(error_unit, *) "ERROR: ", "character_lib_test.f90", " ", 62, (".not.(' a ' + 'b' == ' a b')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   write(OUTPUT_UNIT, *) "SUCCESS: ", "character_lib_test.f90"
   stop
end program character_lib_test
