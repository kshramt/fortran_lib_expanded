program stack_lib_test
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only:OUTPUT_UNIT
   use, non_intrinsic:: stack_lib
   implicit none
   type(StackIntegerDim0KindINT32):: stack0
   type(StackIntegerDim1KindINT32):: stack1
   type(StackIntegerDim2KindINT32):: stack2
   Integer:: val0
   Integer, allocatable:: val1(:)
   Integer, allocatable:: val2(:, :)
   Logical:: isSuccess
   Integer:: i
   Integer, parameter:: N = 1000000
   ! dim = 0
   if(.not.(size(stack0) == 0))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 20, (".not.(size(stack0) == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = pop(stack0, val0)
   if(.not.(.not.isSuccess))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 22, (".not.(.not.isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   call add(stack0, 1)
   call add(stack0, 2)
   call add(stack0, 3)
   call add(stack0, 4)
   call add(stack0, 5)
   if(.not.(size(stack0) == 5))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 28, (".not.(size(stack0) == 5)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(array_of(stack0) == [5, 4, 3, 2, 1])))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 29, (".not.(all(array_of(stack0) == [5, 4, 3, 2, 1]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = pop(stack0, val0)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 31, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(size(stack0) == 4))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 32, (".not.(size(stack0) == 4)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(val0 == 5))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 33, (".not.(val0 == 5)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = pop(stack0, val0)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 35, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(val0 == 4))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 36, (".not.(val0 == 4)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = pop(stack0, val0)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 38, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(val0 == 3))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 39, (".not.(val0 == 3)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = pop(stack0, val0)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 41, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(val0 == 2))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 42, (".not.(val0 == 2)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = pop(stack0, val0)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 44, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(val0 == 1))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 45, (".not.(val0 == 1)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = pop(stack0, val0)
   if(.not.(.not.isSuccess))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 47, (".not.(.not.isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = pop(stack0, val0)
   if(.not.(.not.isSuccess))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 49, (".not.(.not.isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(size(stack0) == 0))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 50, (".not.(size(stack0) == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! dim = 0
   if(.not.(size(stack1) == 0))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 53, (".not.(size(stack1) == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = pop(stack1, val1)
   if(.not.(.not.isSuccess))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 55, (".not.(.not.isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   call add(stack1, [1])
   call add(stack1, [2])
   call add(stack1, [3, 0, -3])
   call add(stack1, [4])
   call add(stack1, [5])
   if(.not.(size(stack1) == 5))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 61, (".not.(size(stack1) == 5)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = pop(stack1, val1)
   if(.not.(size(stack1) == 4))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 63, (".not.(size(stack1) == 4)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 64, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(val1 == [5])))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 65, (".not.(all(val1 == [5]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = pop(stack1, val1)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 67, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(val1 == [4])))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 68, (".not.(all(val1 == [4]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = pop(stack1, val1)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 70, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(val1 == [3, 0, -3])))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 71, (".not.(all(val1 == [3, 0, -3]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = pop(stack1, val1)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 73, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(val1 == [2])))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 74, (".not.(all(val1 == [2]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = pop(stack1, val1)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 76, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(val1 == [1])))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 77, (".not.(all(val1 == [1]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = pop(stack1, val1)
   if(.not.(.not.isSuccess))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 79, (".not.(.not.isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = pop(stack1, val1)
   if(.not.(.not.isSuccess))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 81, (".not.(.not.isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(size(stack0) == 0))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 82, (".not.(size(stack0) == 0)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! dim 2
   call add(stack2, reshape([1, 2, 3, 4, 5, 6], [2, 3]))
   call add(stack2, reshape([1, 2, 3, 4, 5, 6, 7, 8], [4, 2]))
   isSuccess = pop(stack2, val2)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 88, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(shape(val2) == [4, 2])))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 89, (".not.(all(shape(val2) == [4, 2]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = pop(stack2, val2)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 91, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(shape(val2) == [2, 3])))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 92, (".not.(all(shape(val2) == [2, 3]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! Many times
   do i = 1, N
      call add(stack0, i)
   end do
   do i = 1, N - 1
      isSuccess = pop(stack0, val0)
   end do
   isSuccess = pop(stack0, val0)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 102, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(val0 == 1))then; write(error_unit, *) "ERROR: ", "stack_lib_test.f90", " ", 103, (".not.(val0 == 1)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   write(OUTPUT_UNIT, *) 'SUCCESS: ', "stack_lib_test.f90"
   stop
end program stack_lib_test
