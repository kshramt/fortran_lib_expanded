program main
  use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
  use, non_intrinsic:: sac_lib
  implicit none
type(Sac):: wHead
Character:: cTrash
cTrash = get_imagsrc(wHead)
   stop
end program main
