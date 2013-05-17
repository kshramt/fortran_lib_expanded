# include "../utils.h"
program runner
  USE_UTILS_H
  use, non_intrinsic:: sac_lib

  implicit none

  type(Sac):: wHead
  Character:: cTrash
  Integer:: iTrash

  cTrash = get_imagsrc(wHead)
  stop
end program runner

