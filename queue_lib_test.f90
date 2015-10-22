program queue_lib_test
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only:OUTPUT_UNIT
   use, non_intrinsic:: queue_lib, only: IntegerDim0KindINT32Queue, IntegerDim1KindINT32Queue, IntegerDim2KindINT32Queue
   use, non_intrinsic:: queue_lib, only: push, shift
   implicit none
   type(IntegerDim0KindINT32Queue):: queue0
   type(IntegerDim1KindINT32Queue):: queue1
   type(IntegerDim2KindINT32Queue):: queue2
   Integer:: val0
   Integer, allocatable:: val1(:)
   Integer, allocatable:: val2(:, :)
   Logical:: isSuccess
   Integer:: i
   Integer, parameter:: N = 1000000
   ! dim = 0
   isSuccess = shift(queue0, val0)
   if(.not.(.not.isSuccess))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 22, (".not.(.not.isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   call push(queue0, 1)
   call push(queue0, 2)
   call push(queue0, 3)
   call push(queue0, 4)
   call push(queue0, 5)
   isSuccess = shift(queue0, val0)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 29, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(val0 == 1))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 30, (".not.(val0 == 1)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = shift(queue0, val0)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 32, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(val0 == 2))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 33, (".not.(val0 == 2)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = shift(queue0, val0)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 35, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(val0 == 3))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 36, (".not.(val0 == 3)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = shift(queue0, val0)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 38, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(val0 == 4))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 39, (".not.(val0 == 4)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = shift(queue0, val0)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 41, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(val0 == 5))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 42, (".not.(val0 == 5)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = shift(queue0, val0)
   if(.not.(.not.isSuccess))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 44, (".not.(.not.isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = shift(queue0, val0)
   if(.not.(.not.isSuccess))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 46, (".not.(.not.isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! dim = 0
   isSuccess = shift(queue1, val1)
   if(.not.(.not.isSuccess))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 50, (".not.(.not.isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   call push(queue1, [1])
   call push(queue1, [2])
   call push(queue1, [3, 0, -3])
   call push(queue1, [4])
   call push(queue1, [5])
   isSuccess = shift(queue1, val1)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 57, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(val1 == [1])))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 58, (".not.(all(val1 == [1]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = shift(queue1, val1)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 60, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(val1 == [2])))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 61, (".not.(all(val1 == [2]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = shift(queue1, val1)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 63, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(val1 == [3, 0, -3])))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 64, (".not.(all(val1 == [3, 0, -3]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = shift(queue1, val1)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 66, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(val1 == [4])))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 67, (".not.(all(val1 == [4]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = shift(queue1, val1)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 69, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(val1 == [5])))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 70, (".not.(all(val1 == [5]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = shift(queue1, val1)
   if(.not.(.not.isSuccess))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 72, (".not.(.not.isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = shift(queue1, val1)
   if(.not.(.not.isSuccess))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 74, (".not.(.not.isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! dim 2
   call push(queue2, reshape([1, 2, 3, 4, 5, 6], [2, 3]))
   call push(queue2, reshape([1, 2, 3, 4, 5, 6, 7, 8], [4, 2]))
   isSuccess = shift(queue2, val2)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 80, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(shape(val2) == [2, 3])))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 81, (".not.(all(shape(val2) == [2, 3]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isSuccess = shift(queue2, val2)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 83, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(shape(val2) == [4, 2])))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 84, (".not.(all(shape(val2) == [4, 2]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! Many times
   do i = 1, N
      call push(queue0, i)
   end do
   do i = 1, N - 1
      isSuccess = shift(queue0, val0)
   end do
   isSuccess = shift(queue0, val0)
   if(.not.(isSuccess))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 94, (".not.(isSuccess)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(val0 == N))then; write(error_unit, *) "ERROR: ", "queue_lib_test.f90", " ", 95, (".not.(val0 == N)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   write(OUTPUT_UNIT, *) 'SUCCESS: ', "queue_lib_test.f90"
   stop
end program queue_lib_test
