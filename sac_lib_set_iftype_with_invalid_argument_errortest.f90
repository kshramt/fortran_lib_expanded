program main
  use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
  use, non_intrinsic:: sac_lib
  implicit none
type(Sac):: wHead
call set_iftype(wHead, 'anything other than enumerated values')
   stop
end program main
