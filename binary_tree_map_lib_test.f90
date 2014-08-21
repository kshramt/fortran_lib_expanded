program binary_tree_map_lib_test
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
   use, non_intrinsic:: binary_tree_map_lib
   implicit none
   type(CharacterDim0Len1IntegerDim0KindINT32BinaryTreeMap):: treeMap1
   type(CharacterDim0Len2IntegerDim0KindINT32BinaryTreeMap):: treeMap2
   Integer:: n, n1, n2
   Logical:: lTmp
      call append(treeMap1, 'v', 118)
      call append(treeMap1, 'd', 100)
      call append(treeMap1, 'k', 107)
      call append(treeMap1, 'j', 106)
      call append(treeMap1, 't', 116)
      call append(treeMap1, 'r', 114)
      call append(treeMap1, 'n', 110)
      call append(treeMap1, 'q', 113)
      call append(treeMap1, 'h', 104)
      call append(treeMap1, 'p', 112)
      call append(treeMap1, 'b', 98)
      call append(treeMap1, 'g', 103)
      call append(treeMap1, 'e', 101)
      call append(treeMap1, 'f', 102)
      call append(treeMap1, 'o', 111)
      call append(treeMap1, 'w', 119)
      call append(treeMap1, 's', 115)
      call append(treeMap1, 'c', 99)
      call append(treeMap1, 'x', 120)
      call append(treeMap1, 'i', 105)
      call append(treeMap1, 'm', 109)
      call append(treeMap1, 'y', 121)
      call append(treeMap1, 'a', 97)
      call append(treeMap1, 'l', 108)
      call append(treeMap1, 'u', 117)
      call append(treeMap1, 'z', 122)
      if(.not.(has_key(treeMap1, 'v')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 39, (".not.(has_key(treeMap1, 'v'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'v', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 40, (".not.(get_value(treeMap1, 'v', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 118))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 41, (".not.(n == 118)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'u')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 42, (".not.(has_key(treeMap1, 'u'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'u', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 43, (".not.(get_value(treeMap1, 'u', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 117))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 44, (".not.(n == 117)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'i')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 45, (".not.(has_key(treeMap1, 'i'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'i', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 46, (".not.(get_value(treeMap1, 'i', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 105))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 47, (".not.(n == 105)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'y')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 48, (".not.(has_key(treeMap1, 'y'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'y', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 49, (".not.(get_value(treeMap1, 'y', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 121))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 50, (".not.(n == 121)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'e')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 51, (".not.(has_key(treeMap1, 'e'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'e', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 52, (".not.(get_value(treeMap1, 'e', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 101))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 53, (".not.(n == 101)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'z')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 54, (".not.(has_key(treeMap1, 'z'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'z', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 55, (".not.(get_value(treeMap1, 'z', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 122))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 56, (".not.(n == 122)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'x')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 57, (".not.(has_key(treeMap1, 'x'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'x', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 58, (".not.(get_value(treeMap1, 'x', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 120))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 59, (".not.(n == 120)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'r')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 60, (".not.(has_key(treeMap1, 'r'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'r', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 61, (".not.(get_value(treeMap1, 'r', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 114))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 62, (".not.(n == 114)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'o')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 63, (".not.(has_key(treeMap1, 'o'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'o', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 64, (".not.(get_value(treeMap1, 'o', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 111))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 65, (".not.(n == 111)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'm')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 66, (".not.(has_key(treeMap1, 'm'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'm', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 67, (".not.(get_value(treeMap1, 'm', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 109))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 68, (".not.(n == 109)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'g')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 69, (".not.(has_key(treeMap1, 'g'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'g', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 70, (".not.(get_value(treeMap1, 'g', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 103))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 71, (".not.(n == 103)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'w')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 72, (".not.(has_key(treeMap1, 'w'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'w', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 73, (".not.(get_value(treeMap1, 'w', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 119))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 74, (".not.(n == 119)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'j')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 75, (".not.(has_key(treeMap1, 'j'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'j', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 76, (".not.(get_value(treeMap1, 'j', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 106))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 77, (".not.(n == 106)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'q')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 78, (".not.(has_key(treeMap1, 'q'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'q', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 79, (".not.(get_value(treeMap1, 'q', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 113))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 80, (".not.(n == 113)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 's')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 81, (".not.(has_key(treeMap1, 's'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 's', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 82, (".not.(get_value(treeMap1, 's', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 115))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 83, (".not.(n == 115)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'b')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 84, (".not.(has_key(treeMap1, 'b'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'b', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 85, (".not.(get_value(treeMap1, 'b', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 98))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 86, (".not.(n == 98)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'a')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 87, (".not.(has_key(treeMap1, 'a'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'a', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 88, (".not.(get_value(treeMap1, 'a', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 97))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 89, (".not.(n == 97)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'l')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 90, (".not.(has_key(treeMap1, 'l'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'l', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 91, (".not.(get_value(treeMap1, 'l', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 108))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 92, (".not.(n == 108)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'k')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 93, (".not.(has_key(treeMap1, 'k'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'k', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 94, (".not.(get_value(treeMap1, 'k', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 107))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 95, (".not.(n == 107)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'p')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 96, (".not.(has_key(treeMap1, 'p'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'p', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 97, (".not.(get_value(treeMap1, 'p', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 112))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 98, (".not.(n == 112)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 't')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 99, (".not.(has_key(treeMap1, 't'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 't', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 100, (".not.(get_value(treeMap1, 't', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 116))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 101, (".not.(n == 116)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'd')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 102, (".not.(has_key(treeMap1, 'd'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'd', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 103, (".not.(get_value(treeMap1, 'd', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 100))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 104, (".not.(n == 100)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'f')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 105, (".not.(has_key(treeMap1, 'f'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'f', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 106, (".not.(get_value(treeMap1, 'f', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 102))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 107, (".not.(n == 102)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'n')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 108, (".not.(has_key(treeMap1, 'n'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'n', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 109, (".not.(get_value(treeMap1, 'n', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 110))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 110, (".not.(n == 110)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'h')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 111, (".not.(has_key(treeMap1, 'h'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'h', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 112, (".not.(get_value(treeMap1, 'h', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 104))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 113, (".not.(n == 104)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(has_key(treeMap1, 'c')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 114, (".not.(has_key(treeMap1, 'c'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(get_value(treeMap1, 'c', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 115, (".not.(get_value(treeMap1, 'c', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      if(.not.(n == 99))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 116, (".not.(n == 99)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(.not.has_key(treeMap1, '/')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 118, (".not.(.not.has_key(treeMap1, '/'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(.not.get_value(treeMap1, '/', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 119, (".not.(.not.get_value(treeMap1, '/', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! key is trimed
   call append(treeMap1, '| ', -1)
   if(.not.(has_key(treeMap1, '| ')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 123, (".not.(has_key(treeMap1, '| '))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(get_value(treeMap1, '| ', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 124, (".not.(get_value(treeMap1, '| ', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(n == -1))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 125, (".not.(n == -1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! has_key or get_value with too long key returns .false.
   if(.not.(.not.has_key(treeMap1, '||')))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 128, (".not.(.not.has_key(treeMap1, '||'))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(.not.get_value(treeMap1, '||', n)))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 129, (".not.(.not.get_value(treeMap1, '||', n))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! key is not ladjusted
   call append(treeMap2, ' |', 0)
   call append(treeMap2, '|', 1)
   lTmp = get_value(treeMap2, ' |', n1)
   lTmp = get_value(treeMap2, '|', n2)
   if(.not.(n1 /= n2))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 136, (".not.(n1 /= n2)"); error stop; end if
   write(OUTPUT_UNIT, *) "SUCCESS: ", "binary_tree_map_lib_test.f90"
   stop
end program binary_tree_map_lib_test
