# include "../utils.h"
program runner
  USE_UTILS_H
  use, non_intrinsic:: sac_lib

  implicit none

  type(Sac):: wHead
  Character:: cTrash
  Integer:: iTrash

  call set_iftype(wHead, 'anything other than enumerated values')
  stop
end program runner

