program stack_lib_test
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only:OUTPUT_UNIT
   use, non_intrinsic:: stack_lib, only: IntegerDim0KindINT32Stack, IntegerDim1KindINT32Stack, IntegerDim2KindINT32Stack
   use, non_intrinsic:: stack_lib, only: push, pop
   implicit none
   type(IntegerDim0KindINT32Stack):: stack0
   type(IntegerDim1KindINT32Stack):: stack1
   type(IntegerDim2KindINT32Stack):: stack2
   Integer:: val0
   Integer, allocatable:: val1(:)
   Integer, allocatable:: val2(:, :)
   Logical:: isSuccess
   Integer:: i
   Integer, parameter:: N = 1000000
   ! dim = 0
   isSuccess = pop(stack0, val0)
   if(.not.(.not.isSuccess))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 22, (".not.(.not.isSuccess)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call push(stack0, 1)
   call push(stack0, 2)
   call push(stack0, 3)
   call push(stack0, 4)
   call push(stack0, 5)
   isSuccess = pop(stack0, val0)
   if(.not.(isSuccess))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 29, (".not.(isSuccess)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(val0 == 5))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 30, (".not.(val0 == 5)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isSuccess = pop(stack0, val0)
   if(.not.(isSuccess))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 32, (".not.(isSuccess)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(val0 == 4))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 33, (".not.(val0 == 4)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isSuccess = pop(stack0, val0)
   if(.not.(isSuccess))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 35, (".not.(isSuccess)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(val0 == 3))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 36, (".not.(val0 == 3)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isSuccess = pop(stack0, val0)
   if(.not.(isSuccess))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 38, (".not.(isSuccess)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(val0 == 2))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 39, (".not.(val0 == 2)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isSuccess = pop(stack0, val0)
   if(.not.(isSuccess))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 41, (".not.(isSuccess)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(val0 == 1))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 42, (".not.(val0 == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isSuccess = pop(stack0, val0)
   if(.not.(.not.isSuccess))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 44, (".not.(.not.isSuccess)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isSuccess = pop(stack0, val0)
   if(.not.(.not.isSuccess))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 46, (".not.(.not.isSuccess)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! dim = 0
   isSuccess = pop(stack1, val1)
   if(.not.(.not.isSuccess))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 50, (".not.(.not.isSuccess)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call push(stack1, [1])
   call push(stack1, [2])
   call push(stack1, [3, 0, -3])
   call push(stack1, [4])
   call push(stack1, [5])
   isSuccess = pop(stack1, val1)
   if(.not.(isSuccess))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 57, (".not.(isSuccess)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(val1 == [5])))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 58, (".not.(all(val1 == [5]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isSuccess = pop(stack1, val1)
   if(.not.(isSuccess))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 60, (".not.(isSuccess)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(val1 == [4])))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 61, (".not.(all(val1 == [4]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isSuccess = pop(stack1, val1)
   if(.not.(isSuccess))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 63, (".not.(isSuccess)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(val1 == [3, 0, -3])))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 64, (".not.(all(val1 == [3, 0, -3]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isSuccess = pop(stack1, val1)
   if(.not.(isSuccess))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 66, (".not.(isSuccess)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(val1 == [2])))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 67, (".not.(all(val1 == [2]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isSuccess = pop(stack1, val1)
   if(.not.(isSuccess))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 69, (".not.(isSuccess)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(val1 == [1])))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 70, (".not.(all(val1 == [1]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isSuccess = pop(stack1, val1)
   if(.not.(.not.isSuccess))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 72, (".not.(.not.isSuccess)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isSuccess = pop(stack1, val1)
   if(.not.(.not.isSuccess))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 74, (".not.(.not.isSuccess)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! dim 2
   call push(stack2, reshape([1, 2, 3, 4, 5, 6], [2, 3]))
   call push(stack2, reshape([1, 2, 3, 4, 5, 6, 7, 8], [4, 2]))
   isSuccess = pop(stack2, val2)
   if(.not.(isSuccess))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 80, (".not.(isSuccess)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(shape(val2) == [4, 2])))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 81, (".not.(all(shape(val2) == [4, 2]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isSuccess = pop(stack2, val2)
   if(.not.(isSuccess))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 83, (".not.(isSuccess)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(shape(val2) == [2, 3])))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 84, (".not.(all(shape(val2) == [2, 3]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! Many times
   do i = 1, N
      call push(stack0, i)
   end do
   do i = 1, N - 1
      isSuccess = pop(stack0, val0)
   end do
   isSuccess = pop(stack0, val0)
   if(.not.(isSuccess))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 94, (".not.(isSuccess)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(val0 == 1))then; write(ERROR_UNIT, *) "RAISE: ", "stack_lib_test.f90", " ", 95, (".not.(val0 == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   write(OUTPUT_UNIT, *) 'SUCCESS: ', "stack_lib_test.f90"
   stop
end program stack_lib_test
