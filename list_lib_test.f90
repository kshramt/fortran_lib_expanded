program list_lib_test
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   use, non_intrinsic:: list_lib, only: IntegerDim0KindINT32List
   use, non_intrinsic:: list_lib, only: size, delete_at, insert_at, val_at, shift, unshift, push, pop, clear, swap, is_size_one, is_empty, array_from_list, almost_equal
   use, non_intrinsic:: list_lib, only: operator(.val.), assignment(=)
   implicit none
   type(IntegerDim0KindINT32List):: emptyList, l, m
   Integer, allocatable:: a(:), b(:)
   Integer:: i
   ! is_empty, is_size_one
   if(.not.(size(emptyList) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 16, (".not.(size(emptyList) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(is_empty(emptyList)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 17, (".not.(is_empty(emptyList))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(.not.is_size_one(emptyList)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 18, (".not.(.not.is_size_one(emptyList))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   l = [1, 2]
   if(.not.(.not.is_size_one(l)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 20, (".not.(.not.is_size_one(l))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(.not.is_empty(l)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 21, (".not.(.not.is_empty(l))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   l = [1]
   if(.not.(is_size_one(l)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 23, (".not.(is_size_one(l))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! assignment(=)
   a = [1, 2, 3, 4, 5]
   l = a ! list <- array
   b = l ! array <- list
   if(.not.(all(a == b)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 29, (".not.(all(a == b))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(size(l) == size(a)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 30, (".not.(size(l) == size(a))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   m = l ! list <- list
   if(.not.(almost_equal(m, l)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 32, (".not.(almost_equal(m, l))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   l = emptyList
   if(.not.(size(l) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 34, (".not.(size(l) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! val_at
   l = [1, 2, 3, 4, 5]
   if(.not.(val_at(l, 1) == 1))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 38, (".not.(val_at(l, 1) == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(val_at(l, 2) == 2))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 39, (".not.(val_at(l, 2) == 2)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(val_at(l, 3) == 3))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 40, (".not.(val_at(l, 3) == 3)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(val_at(l, 4) == 4))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 41, (".not.(val_at(l, 4) == 4)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.((l.val.1) == 1))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 42, (".not.((l.val.1) == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.((l.val.2) == 2))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 43, (".not.((l.val.2) == 2)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.((l.val.3) == 3))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 44, (".not.((l.val.3) == 3)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.((l.val.4) == 4))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 45, (".not.((l.val.4) == 4)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! delete_at
   l = [1, 2, 3, 4]
   if(.not.(delete_at(l, 1) == 1))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 49, (".not.(delete_at(l, 1) == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(size(l) == 3))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 50, (".not.(size(l) == 3)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   l = [1, 2, 3, 4]
   if(.not.(delete_at(l, 2) == 2))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 52, (".not.(delete_at(l, 2) == 2)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(size(l) == 3))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 53, (".not.(size(l) == 3)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   l = [1, 2, 3, 4]
   if(.not.(delete_at(l, 3) == 3))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 55, (".not.(delete_at(l, 3) == 3)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(size(l) == 3))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 56, (".not.(size(l) == 3)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   l = [1, 2, 3, 4]
   if(.not.(delete_at(l, 4) == 4))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 58, (".not.(delete_at(l, 4) == 4)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(size(l) == 3))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 59, (".not.(size(l) == 3)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   i = delete_at(l, 1)
   if(.not.(size(l) == 2))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 61, (".not.(size(l) == 2)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   i = delete_at(l, 1)
   if(.not.(size(l) == 1))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 63, (".not.(size(l) == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   i = delete_at(l, 1)
   if(.not.(size(l) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 65, (".not.(size(l) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! insert_at
   l = [1, 2, 3, 4]
   call insert_at(l, -1, 1)
   if(.not.(size(l) == 5))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 70, (".not.(size(l) == 5)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.((l.val.1) == -1))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 71, (".not.((l.val.1) == -1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.((l.val.2) == 1))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 72, (".not.((l.val.2) == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.((l.val.5) == 4))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 73, (".not.((l.val.5) == 4)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call insert_at(l, -2, 6)
   if(.not.(size(l) == 6))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 75, (".not.(size(l) == 6)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.((l.val.5) == 4))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 76, (".not.((l.val.5) == 4)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.((l.val.6) == -2))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 77, (".not.((l.val.6) == -2)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! unshift, shift, push and pop
   l = emptyList
   call unshift(l, 1)
   if(.not.(size(l) == 1))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 82, (".not.(size(l) == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.((l.val.1) == 1))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 83, (".not.((l.val.1) == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   l = emptyList
   call push(l, 1)
   if(.not.(size(l) == 1))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 86, (".not.(size(l) == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.((l.val.1) == 1))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 87, (".not.((l.val.1) == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call unshift(l, 2)
   call push(l, 3)
   if(.not.(all(array_from_list(l) == [2, 1, 3])))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 90, (".not.(all(array_from_list(l) == [2, 1, 3]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(pop(l) == 3))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 91, (".not.(pop(l) == 3)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(shift(l) == 2))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 92, (".not.(shift(l) == 2)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(shift(l) == 1))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 93, (".not.(shift(l) == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(is_empty(l)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 94, (".not.(is_empty(l))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   l = [1]
   if(.not.(pop(l) == 1))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 96, (".not.(pop(l) == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(is_empty(l)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 97, (".not.(is_empty(l))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! swap
   l = [1, 2, 3]
   call swap(l, 1, 2)
   if(.not.(all(array_from_list(l) == [2, 1, 3])))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 102, (".not.(all(array_from_list(l) == [2, 1, 3]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   l = [1, 2, 3]
   call swap(l, 3, 1)
   if(.not.(all(array_from_list(l) == [3, 2, 1])))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 105, (".not.(all(array_from_list(l) == [3, 2, 1]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   l = [1, 2, 3]
   call swap(l, 2, 1)
   if(.not.(all(array_from_list(l) == [2, 1, 3])))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 108, (".not.(all(array_from_list(l) == [2, 1, 3]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   l = [1, 2, 3]
   call swap(l, 1, 1)
   if(.not.(all(array_from_list(l) == [1, 2, 3])))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 111, (".not.(all(array_from_list(l) == [1, 2, 3]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   l = [1, 2, 3]
   call swap(l, 2, 2)
   if(.not.(all(array_from_list(l) == [1, 2, 3])))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 114, (".not.(all(array_from_list(l) == [1, 2, 3]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   l = [1, 2, 3]
   call swap(l, 3, 3)
   if(.not.(all(array_from_list(l) == [1, 2, 3])))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 117, (".not.(all(array_from_list(l) == [1, 2, 3]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! clear
   l = [1, 2, 3]
   call clear(l)
   if(.not.(is_empty(l)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 122, (".not.(is_empty(l))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call clear(l)
   call clear(l)
   if(.not.(is_empty(l)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib_test.f90", " ", 125, (".not.(is_empty(l))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   write (OUTPUT_UNIT, *) 'SUCCESS: ', "list_lib_test.f90"
   stop
end program list_lib_test
