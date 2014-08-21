program main
  use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
  use, non_intrinsic:: binary_tree_map_lib
  implicit none
type(CharacterDim0Len1IntegerDim0KindINT32BinaryTreeMap):: treeMap
call append(treeMap, '||', -1)
   stop
end program main
