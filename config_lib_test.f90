program main
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   use, intrinsic:: iso_fortran_env, only: REAL128
   use, non_intrinsic:: config_lib
   implicit none
   Integer:: io
   Logical:: l
   Character(len=2**10):: str
   Integer:: nX
   Real:: lX
   Complex(kind=REAL128):: c
   open(newunit=io, file='config_lib_test.exe.in', status='old', action='read')
   if(.not.(.not.get_config_value(io, 'no such key', l)))then; write(error_unit, *) "ERROR: ", "config_lib_test.f90", " ", 18, (".not.(.not.get_config_value(io, 'no such key', l))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(get_config_value(io, 'logical1', l)))then; write(error_unit, *) "ERROR: ", "config_lib_test.f90", " ", 19, (".not.(get_config_value(io, 'logical1', l))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(l))then; write(error_unit, *) "ERROR: ", "config_lib_test.f90", " ", 20, (".not.(l)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(get_config_value(io, 'logicaL1', l)))then; write(error_unit, *) "ERROR: ", "config_lib_test.f90", " ", 21, (".not.(get_config_value(io, 'logicaL1', l))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(.not.l))then; write(error_unit, *) "ERROR: ", "config_lib_test.f90", " ", 22, (".not.(.not.l)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(get_config_value(io, 'str', str)))then; write(error_unit, *) "ERROR: ", "config_lib_test.f90", " ", 23, (".not.(get_config_value(io, 'str', str))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(str == ' hop step jump'))then; write(error_unit, *) "ERROR: ", "config_lib_test.f90", " ", 24, (".not.(str == ' hop step jump')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(get_config_value(io, 'nX', nX)))then; write(error_unit, *) "ERROR: ", "config_lib_test.f90", " ", 25, (".not.(get_config_value(io, 'nX', nX))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(nX == 32))then; write(error_unit, *) "ERROR: ", "config_lib_test.f90", " ", 26, (".not.(nX == 32)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(get_config_value(io, 'lX', lX)))then; write(error_unit, *) "ERROR: ", "config_lib_test.f90", " ", 27, (".not.(get_config_value(io, 'lX', lX))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(lX == 123.4))then; write(error_unit, *) "ERROR: ", "config_lib_test.f90", " ", 28, (".not.(lX == 123.4)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(get_config_value(io, 'impedance', c)))then; write(error_unit, *) "ERROR: ", "config_lib_test.f90", " ", 29, (".not.(get_config_value(io, 'impedance', c))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(c == (1, 2)))then; write(error_unit, *) "ERROR: ", "config_lib_test.f90", " ", 30, (".not.(c == (1, 2))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   close(io)
   write(OUTPUT_UNIT, *) 'SUCCESS: ', "config_lib_test.f90"
   stop
end program main
