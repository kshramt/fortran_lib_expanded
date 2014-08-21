program main
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: INT32
   use, non_intrinsic:: io_lib
   implicit none
Integer(INT32):: unit
call mktemp(unit, form = 'illegal')
   stop
end program main
