program main
  use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
  use, non_intrinsic:: sac_lib
  implicit none
type(Sac):: wHead
call set_kstnm(wHead, '0123456789abcdefg')
   stop
end program main