program path_lib_test
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, non_intrinsic:: path_lib, only: dirname
   implicit none
   if(.not.(dirname('/a/b/c.d') == '/a/b/'))then; write(error_unit, *) "ERROR: ", "path_lib_test.f90", " ", 7, (".not.(dirname('/a/b/c.d') == '/a/b/')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(dirname('/') == '/'))then; write(error_unit, *) "ERROR: ", "path_lib_test.f90", " ", 8, (".not.(dirname('/') == '/')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(dirname('') == ''))then; write(error_unit, *) "ERROR: ", "path_lib_test.f90", " ", 9, (".not.(dirname('') == '')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   write(OUTPUT_UNIT, *) 'SUCCESS: ', "path_lib_test.f90"
   stop
end program path_lib_test
