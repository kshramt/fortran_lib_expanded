program main
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   use, non_intrinsic:: sac_lib, only: Sac, load, dump_json
   implicit none
   type(Sac):: s
   Character(len=2**11):: file
   Integer:: status
   if(command_argument_count() /= 1) call usage_and_exit()
   call get_command_argument(1, value=file, status=status)
   if(.not.(status == 0))then; write(ERROR_UNIT, *) "RAISE: ", "sac_to_json.f90", " ", 16, (".not.(status == 0)"); error stop; end if
   if(file == '-h' .or. file == '--help') call usage_and_exit()
   call load(s, file)
   call dump_json(s, OUTPUT_UNIT)
   stop
contains
   subroutine usage_and_exit()
      Character(len=2**10):: programName
      call get_command_argument(0, value=programName)
      write(ERROR_UNIT, *) trim(programName), ' ', 'FILE'
      error stop
   end subroutine usage_and_exit
end program main
