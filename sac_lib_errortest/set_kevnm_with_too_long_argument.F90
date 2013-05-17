# include "../utils.h"
program runner
  USE_UTILS_H
  use, non_intrinsic:: sac_lib

  implicit none

  type(Sac):: wHead
  Character:: cTrash
  Integer:: iTrash

  call set_kevnm(wHead, '123456789')
  stop
end program runner

