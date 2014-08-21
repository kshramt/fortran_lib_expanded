program path_lib_test
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, non_intrinsic:: path_lib, only: dirname
   implicit none
   if(.not.(dirname('/a/b/c.d') == '/a/b/'))then; write(ERROR_UNIT, *) "RAISE: ", "path_lib_test.f90", " ", 7, (".not.(dirname('/a/b/c.d') == '/a/b/')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(dirname('/') == '/'))then; write(ERROR_UNIT, *) "RAISE: ", "path_lib_test.f90", " ", 8, (".not.(dirname('/') == '/')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(dirname('') == ''))then; write(ERROR_UNIT, *) "RAISE: ", "path_lib_test.f90", " ", 9, (".not.(dirname('') == '')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   write(OUTPUT_UNIT, *) 'SUCCESS: ', "path_lib_test.f90"
   stop
end program path_lib_test
