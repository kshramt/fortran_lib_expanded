program main
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
   use, non_intrinsic:: binary_tree_map_lib
   implicit none
   type(CharacterDim0LenColonIntegerDim0KindINT32BinaryTreeMap):: t
   Integer:: n
   Logical:: found
         call put(t, 'p', 112)
         call put(t, 'v', 118)
         call put(t, 'w', 119)
         call put(t, 'z', 122)
         call put(t, 'a', 97)
         call put(t, 'j', 106)
         call put(t, 'c', 99)
         call put(t, 'n', 110)
         call put(t, 'o', 111)
         call put(t, 'x', 120)
         call put(t, 'm', 109)
         call put(t, 'b', 98)
         call put(t, 'k', 107)
         call put(t, 'h', 104)
         call put(t, 's', 115)
         call put(t, 'e', 101)
         call put(t, 'i', 105)
         call put(t, 'g', 103)
         call put(t, 'u', 117)
         call put(t, 'y', 121)
         call put(t, 't', 116)
         call put(t, 'f', 102)
         call put(t, 'd', 100)
         call put(t, 'l', 108)
         call put(t, 'r', 114)
         call put(t, 'q', 113)
         if(.not.(get(t, 'o') == 111))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 39, (".not.(get(t, 'o') == 111)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'i') == 105))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 40, (".not.(get(t, 'i') == 105)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'c') == 99))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 41, (".not.(get(t, 'c') == 99)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'k') == 107))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 42, (".not.(get(t, 'k') == 107)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'j') == 106))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 43, (".not.(get(t, 'j') == 106)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'u') == 117))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 44, (".not.(get(t, 'u') == 117)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'g') == 103))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 45, (".not.(get(t, 'g') == 103)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'f') == 102))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 46, (".not.(get(t, 'f') == 102)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'a') == 97))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 47, (".not.(get(t, 'a') == 97)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'v') == 118))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 48, (".not.(get(t, 'v') == 118)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'h') == 104))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 49, (".not.(get(t, 'h') == 104)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'w') == 119))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 50, (".not.(get(t, 'w') == 119)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'b') == 98))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 51, (".not.(get(t, 'b') == 98)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'y') == 121))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 52, (".not.(get(t, 'y') == 121)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'x') == 120))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 53, (".not.(get(t, 'x') == 120)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'q') == 113))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 54, (".not.(get(t, 'q') == 113)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'n') == 110))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 55, (".not.(get(t, 'n') == 110)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'd') == 100))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 56, (".not.(get(t, 'd') == 100)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'm') == 109))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 57, (".not.(get(t, 'm') == 109)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 's') == 115))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 58, (".not.(get(t, 's') == 115)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'p') == 112))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 59, (".not.(get(t, 'p') == 112)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'r') == 114))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 60, (".not.(get(t, 'r') == 114)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'e') == 101))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 61, (".not.(get(t, 'e') == 101)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'l') == 108))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 62, (".not.(get(t, 'l') == 108)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'z') == 122))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 63, (".not.(get(t, 'z') == 122)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 't') == 116))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 64, (".not.(get(t, 't') == 116)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      n = get(t, 'not in t', found)
      if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 67, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         call delete(t, 'a')
         call delete(t, 'p')
         call delete(t, 'j')
         call delete(t, 'k')
         call delete(t, 'x')
         call delete(t, 'b')
         call delete(t, 'l')
         call delete(t, 'e')
         call delete(t, 't')
         call delete(t, 'd')
         call delete(t, 'g')
         call delete(t, 'y')
         call delete(t, 'o')
         call delete(t, 'q')
         call delete(t, 'v')
         call delete(t, 's')
         call delete(t, 'z')
         call delete(t, 'f')
         call delete(t, 'c')
         call delete(t, 'r')
         call delete(t, 'u')
         call delete(t, 'i')
         call delete(t, 'h')
         call delete(t, 'w')
         call delete(t, 'n')
         call delete(t, 'm')
         n = get(t, 'f', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 97, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'r', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 99, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'o', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 101, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'v', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 103, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'k', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 105, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'e', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 107, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'h', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 109, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'w', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 111, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'n', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 113, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'a', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 115, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'b', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 117, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'z', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 119, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 't', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 121, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'y', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 123, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'm', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 125, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'l', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 127, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'g', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 129, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'd', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 131, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'p', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 133, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'c', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 135, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'q', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 137, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'x', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 139, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'u', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 141, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 's', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 143, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'i', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 145, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'j', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 147, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         call put(t, 'k', 107)
         call put(t, 'j', 106)
         call put(t, 'n', 110)
         call put(t, 'p', 112)
         call put(t, 'h', 104)
         call put(t, 'b', 98)
         call put(t, 'x', 120)
         call put(t, 'a', 97)
         call put(t, 'i', 105)
         call put(t, 'g', 103)
         call put(t, 'l', 108)
         call put(t, 'z', 122)
         call put(t, 'q', 113)
         call put(t, 'u', 117)
         call put(t, 'o', 111)
         call put(t, 'm', 109)
         call put(t, 'd', 100)
         call put(t, 'c', 99)
         call put(t, 'f', 102)
         call put(t, 'w', 119)
         call put(t, 'e', 101)
         call put(t, 's', 115)
         call put(t, 'v', 118)
         call put(t, 'y', 121)
         call put(t, 't', 116)
         call put(t, 'r', 114)
         if(.not.(get(t, 'w') == 119))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 175, (".not.(get(t, 'w') == 119)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'f') == 102))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 176, (".not.(get(t, 'f') == 102)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'q') == 113))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 177, (".not.(get(t, 'q') == 113)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'p') == 112))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 178, (".not.(get(t, 'p') == 112)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'h') == 104))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 179, (".not.(get(t, 'h') == 104)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'x') == 120))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 180, (".not.(get(t, 'x') == 120)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'j') == 106))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 181, (".not.(get(t, 'j') == 106)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'y') == 121))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 182, (".not.(get(t, 'y') == 121)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'k') == 107))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 183, (".not.(get(t, 'k') == 107)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 't') == 116))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 184, (".not.(get(t, 't') == 116)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'd') == 100))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 185, (".not.(get(t, 'd') == 100)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'n') == 110))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 186, (".not.(get(t, 'n') == 110)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'i') == 105))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 187, (".not.(get(t, 'i') == 105)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'b') == 98))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 188, (".not.(get(t, 'b') == 98)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'o') == 111))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 189, (".not.(get(t, 'o') == 111)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'g') == 103))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 190, (".not.(get(t, 'g') == 103)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'r') == 114))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 191, (".not.(get(t, 'r') == 114)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'm') == 109))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 192, (".not.(get(t, 'm') == 109)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 's') == 115))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 193, (".not.(get(t, 's') == 115)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'e') == 101))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 194, (".not.(get(t, 'e') == 101)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'u') == 117))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 195, (".not.(get(t, 'u') == 117)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'v') == 118))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 196, (".not.(get(t, 'v') == 118)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'a') == 97))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 197, (".not.(get(t, 'a') == 97)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'c') == 99))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 198, (".not.(get(t, 'c') == 99)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'z') == 122))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 199, (".not.(get(t, 'z') == 122)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         if(.not.(get(t, 'l') == 108))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 200, (".not.(get(t, 'l') == 108)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
      n = get(t, 'not in t', found)
      if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 203, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         call delete(t, 'w')
         call delete(t, 'r')
         call delete(t, 'q')
         call delete(t, 'b')
         call delete(t, 'i')
         call delete(t, 'd')
         call delete(t, 'l')
         call delete(t, 'f')
         call delete(t, 'j')
         call delete(t, 'g')
         call delete(t, 'x')
         call delete(t, 'm')
         call delete(t, 'z')
         call delete(t, 'e')
         call delete(t, 'v')
         call delete(t, 'a')
         call delete(t, 't')
         call delete(t, 'p')
         call delete(t, 'h')
         call delete(t, 'c')
         call delete(t, 'u')
         call delete(t, 'y')
         call delete(t, 'k')
         call delete(t, 'o')
         call delete(t, 'n')
         call delete(t, 's')
         n = get(t, 'x', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 233, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'h', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 235, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'b', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 237, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'r', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 239, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'i', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 241, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'v', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 243, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'y', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 245, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'z', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 247, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'k', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 249, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'c', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 251, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'j', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 253, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'a', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 255, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 't', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 257, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'n', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 259, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'w', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 261, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'e', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 263, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'u', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 265, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'd', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 267, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'f', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 269, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'm', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 271, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'o', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 273, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'p', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 275, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'q', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 277, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'l', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 279, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 's', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 281, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
         n = get(t, 'g', found)
         if(.not.(.not.found))then; write(ERROR_UNIT, *) "RAISE: ", "binary_tree_map_lib_test.f90", " ", 283, (".not.(.not.found)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   write(OUTPUT_UNIT, *) "SUCCESS: ", "binary_tree_map_lib_test.f90"
   stop
end program main
