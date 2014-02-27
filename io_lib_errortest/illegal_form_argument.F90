# include "../utils.h"
program runner
  USE_UTILS_H
  use, non_intrinsic:: io_lib

  implicit none

  Integer:: io

  call mktemp(io, form = 'illegal')
  stop
end program runner

