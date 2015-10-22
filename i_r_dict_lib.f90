module i_r_dict_lib
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: int8, int64
      use, intrinsic:: iso_fortran_env, only: int32, real32
 use, non_intrinsic:: i_r_pair_lib, only: PairInt32Real32, key, val
      use, intrinsic:: iso_fortran_env, only: int64, real64
 use, non_intrinsic:: i_r_pair_lib, only: PairInt64Real64, key, val
   implicit none
   private
   public:: init
   public:: add
   public:: get
   public:: has
   public:: del
   public:: size
   public:: array_of
      type:: RBTreeNodeInt32Real32
         Logical(kind=int8):: red
         type(RBTreeNodeInt32Real32), pointer:: left => null()
         type(RBTreeNodeInt32Real32), pointer:: right => null()
         type(RBTreeNodeInt32Real32), pointer:: p => null()
         type(PairInt32Real32):: data
      end type RBTreeNodeInt32Real32
      type, public:: RBTreeInt32Real32
         type(RBTreeNodeInt32Real32), pointer:: nil => null()
         type(RBTreeNodeInt32Real32), pointer:: root => null()
      contains
         final:: finalizeInt32Real32
      end type RBTreeInt32Real32
      interface init
         module procedure initInt32Real32
      end interface init
      interface add
         module procedure addInt32Real32
      end interface add
      interface get
         module procedure get_2Int32Real32
         module procedure get_3Int32Real32
      end interface get
      interface has
         module procedure hasInt32Real32
      end interface has
      interface del
         module procedure delInt32Real32
      end interface del
      interface size
         module procedure sizeInt32Real32
         module procedure size_nodeInt32Real32
      end interface size
      interface array_of
         module procedure array_ofInt32Real32
      end interface array_of
      ! internal
      interface key
         module procedure key_RBTreeNodeInt32Real32
      end interface key
         interface tree_minimum
            module procedure tree_minimumInt32Real32
         end interface tree_minimum
         interface left_rotate
            module procedure left_rotateInt32Real32
         end interface left_rotate
         interface right_rotate
            module procedure right_rotateInt32Real32
         end interface right_rotate
         interface add_fixup
            module procedure add_fixupInt32Real32
         end interface add_fixup
         interface del_fixup
            module procedure del_fixupInt32Real32
         end interface del_fixup
         interface del_node
            module procedure del_nodeInt32Real32
         end interface del_node
         interface get_node
            module procedure get_nodeInt32Real32
         end interface get_node
         interface transplant
            module procedure transplantInt32Real32
         end interface transplant
      type:: RBTreeNodeInt64Real64
         Logical(kind=int8):: red
         type(RBTreeNodeInt64Real64), pointer:: left => null()
         type(RBTreeNodeInt64Real64), pointer:: right => null()
         type(RBTreeNodeInt64Real64), pointer:: p => null()
         type(PairInt64Real64):: data
      end type RBTreeNodeInt64Real64
      type, public:: RBTreeInt64Real64
         type(RBTreeNodeInt64Real64), pointer:: nil => null()
         type(RBTreeNodeInt64Real64), pointer:: root => null()
      contains
         final:: finalizeInt64Real64
      end type RBTreeInt64Real64
      interface init
         module procedure initInt64Real64
      end interface init
      interface add
         module procedure addInt64Real64
      end interface add
      interface get
         module procedure get_2Int64Real64
         module procedure get_3Int64Real64
      end interface get
      interface has
         module procedure hasInt64Real64
      end interface has
      interface del
         module procedure delInt64Real64
      end interface del
      interface size
         module procedure sizeInt64Real64
         module procedure size_nodeInt64Real64
      end interface size
      interface array_of
         module procedure array_ofInt64Real64
      end interface array_of
      ! internal
      interface key
         module procedure key_RBTreeNodeInt64Real64
      end interface key
         interface tree_minimum
            module procedure tree_minimumInt64Real64
         end interface tree_minimum
         interface left_rotate
            module procedure left_rotateInt64Real64
         end interface left_rotate
         interface right_rotate
            module procedure right_rotateInt64Real64
         end interface right_rotate
         interface add_fixup
            module procedure add_fixupInt64Real64
         end interface add_fixup
         interface del_fixup
            module procedure del_fixupInt64Real64
         end interface del_fixup
         interface del_node
            module procedure del_nodeInt64Real64
         end interface del_node
         interface get_node
            module procedure get_nodeInt64Real64
         end interface get_node
         interface transplant
            module procedure transplantInt64Real64
         end interface transplant
contains
      elemental subroutine initInt32Real32(t)
         type(RBTreeInt32Real32), intent(out):: t
         allocate(t%nil)
         t%nil%red = .false.
         t%root => t%nil
      end subroutine initInt32Real32
      pure elemental subroutine addInt32Real32(t, d)
         type(RBTreeInt32Real32), intent(inout):: t
         type(PairInt32Real32), intent(in):: d
         type(RBTreeNodeInt32Real32), pointer:: y, x, z
        
        
         y => t%nil
         x => t%root
         do while(.not.associated(x, t%nil))
            y => x
            if(key(d) < key(x))then
               x => x%left
            else if(key(d) > key(x))then
               x => x%right
            else ! overwrite
               x%data = d
               return
            end if
         end do
         allocate(z)
         z%data = d
         z%p => y
         if(associated(y, t%nil))then
            t%root => z
         else if(key(z) < key(y))then
            y%left => z
         else
            y%right => z
         end if
         z%left => t%nil
         z%right => t%nil
         z%red = .true.
         call add_fixup(t, z)
      end subroutine addInt32Real32
      pure subroutine add_fixupInt32Real32(t, z)
         type(RBTreeInt32Real32), intent(inout):: t
         type(RBTreeNodeInt32Real32), pointer, intent(inout):: z
         type(RBTreeNodeInt32Real32), pointer:: y
        
        
         do while(z%p%red)
           
            if(associated(z%p, z%p%p%left))then
               y => z%p%p%right
               if(y%red)then
                  z%p%red = .false.
                  y%red = .false.
                  z%p%p%red = .true.
                  z => z%p%p
               else
                  if(associated(z, z%p%right))then
                     z => z%p
                     call left_rotate(t, z)
                  end if
                  z%p%red = .false.
                  z%p%p%red = .true.
                  call right_rotate(t, z%p%p)
               end if
            else
               y => z%p%p%left
               if(y%red)then
                  z%p%red = .false.
                  y%red = .false.
                  z%p%p%red = .true.
                  z => z%p%p
               else
                  if(associated(z, z%p%left))then
                     z => z%p
                     call right_rotate(t, z)
                  end if
                  z%p%red = .false.
                  z%p%p%red = .true.
                  call left_rotate(t, z%p%p)
               end if
            end if
         end do
         t%root%red = .false.
      end subroutine add_fixupInt32Real32
      impure elemental function get_2Int32Real32(t, k) result(data)
         type(PairInt32Real32):: data
         type(RBTreeInt32Real32), intent(in):: t
         Integer(kind=int32), intent(in):: k
         Logical:: found
         data = get(t, k, found)
      end function get_2Int32Real32
      impure elemental function get_3Int32Real32(t, k, found) result(data)
         type(PairInt32Real32):: data
         type(RBTreeInt32Real32), intent(in):: t
         Integer(kind=int32), intent(in):: k
         Logical, intent(out):: found
         type(RBTreeNodeInt32Real32), pointer:: n
         call get_node(t, k, n, found)
         if(found)then
            data = n%data
         end if
      end function get_3Int32Real32
      subroutine get_nodeInt32Real32(t, k, n, found)
         type(RBTreeInt32Real32), intent(in):: t
         Integer(kind=int32), intent(in):: k
         type(RBTreeNodeInt32Real32), pointer, intent(out):: n
         Logical, intent(out):: found
        
         found = .true.
         n => t%root
         do while(.not.associated(n, t%nil))
            if(k < key(n))then
               n => n%left
            else if(k > key(n))then
               n => n%right
            else
               return
            end if
         end do
         found = .false.
      end subroutine get_nodeInt32Real32
      impure elemental function hasInt32Real32(t, k) result(ret)
         Logical:: ret
         type(RBTreeInt32Real32), intent(in):: t
         Integer(kind=int32), intent(in):: k
         type(RBTreeNodeInt32Real32), pointer:: tmp
        
         call get_node(t, k, tmp, ret)
      end function hasInt32Real32
      impure elemental subroutine delInt32Real32(t, k)
         type(RBTreeInt32Real32), intent(inout):: t
         Integer(kind=int32), intent(in):: k
         type(RBTreeNodeInt32Real32), pointer:: z
         Logical:: found
        
         call get_node(t, k, z, found)
         if(found)then
            call del_node(t, z)
         end if
      end subroutine delInt32Real32
      subroutine del_nodeInt32Real32(t, z)
         type(RBTreeInt32Real32), intent(inout):: t
         type(RBTreeNodeInt32Real32), pointer, intent(inout):: z
         type(RBTreeNodeInt32Real32), pointer:: x, y
         Logical(kind=kind(y%red)):: y_original_red
        
         y => z
         y_original_red = y%red
         if(associated(z%left, t%nil))then
            x => z%right
            call transplant(t, z, z%right)
         else if(associated(z%right, t%nil))then
            x => z%left
            call transplant(t, z, z%left)
         else
            y => tree_minimum(t, z%right)
            y_original_red = y%red
            x => y%right
            if(associated(y%p, z))then
               x%p => y
            else
               call transplant(t, y, y%right)
               y%right => z%right
               y%right%p => y
            end if
            call transplant(t, z, y)
            y%left => z%left
            y%left%p => y
            y%red = z%red
         end if
         if(.not.y_original_red)then
            call del_fixup(t, x)
         end if
         deallocate(z)
      end subroutine del_nodeInt32Real32
      subroutine del_fixupInt32Real32(t, x)
         type(RBTreeInt32Real32), intent(inout):: t
         type(RBTreeNodeInt32Real32), pointer, intent(inout):: x
         type(RBTreeNodeInt32Real32), pointer:: w
        
         do while((.not.associated(x, t%root)).and.(.not.x%red))
            if(associated(x, x%p%left))then
               w => x%p%right
               if(w%red)then
                  w%red = .false.
                  x%p%red = .true.
                  call left_rotate(t, x%p)
                  w => x%p%right
               end if
               if((.not.w%left%red).and.(.not.w%right%red))then
                  w%red = .true.
                  x => x%p
               else
                  if(.not.w%right%red)then
                     w%left%red = .false.
                     w%red = .true.
                     call right_rotate(t, w)
                     w => x%p%right
                  end if
                  w%red = x%p%red
                  x%p%red = .false.
                  w%right%red = .false.
                  call left_rotate(t, x%p)
                  x => t%root
               end if
            else
               w => x%p%left
               if(w%red)then
                  w%red = .false.
                  x%p%red = .true.
                  call right_rotate(t, x%p)
                  w => x%p%left
               end if
               if((.not.w%right%red).and.(.not.w%left%red))then
                  w%red = .true.
                  x => x%p
               else
                  if(.not.w%left%red)then
                     w%right%red = .false.
                     w%red = .true.
                     call left_rotate(t, w)
                     w => x%p%left
                  end if
                  w%red = x%p%red
                  x%p%red = .false.
                  w%left%red = .false.
                  call right_rotate(t, x%p)
                  x => t%root
               end if
            end if
         end do
         x%red = .false.
      end subroutine del_fixupInt32Real32
      impure elemental subroutine finalizeInt32Real32(t)
         type(RBTreeInt32Real32), intent(inout):: t
         if(associated(t%nil))then
            call finalize_nodeInt32Real32(t%root, t%nil)
            deallocate(t%nil)
         else ! the first init(t) will try to finalize uninitialized RBTree
            ! t%nil and t%root is nullified
            if(.not.(.not.associated(t%root)))then; write(error_unit, *) "ERROR: ", "i_r_dict_lib.f90", " ", 494, (".not.(.not.associated(t%root))"); error stop; end if
         end if
      end subroutine finalizeInt32Real32
      recursive subroutine finalize_nodeInt32Real32(n, nil)
         type(RBTreeNodeInt32Real32), pointer, intent(inout):: n
         type(RBTreeNodeInt32Real32), target, intent(in):: nil
         if(associated(n, nil)) return
         call finalize_nodeInt32Real32(n%left, nil)
         call finalize_nodeInt32Real32(n%right, nil)
         deallocate(n)
      end subroutine finalize_nodeInt32Real32
      impure elemental function sizeInt32Real32(t) result(ret)
         Integer(kind=int64):: ret
         type(RBTreeInt32Real32), intent(in):: t
         ret = size(t%root, t%nil)
      end function sizeInt32Real32
      recursive function size_nodeInt32Real32(n, nil) result(ret)
         Integer(kind=int64):: ret
         type(RBTreeNodeInt32Real32), pointer, intent(in):: n
         type(RBTreeNodeInt32Real32), target, intent(in):: nil
         if(associated(n, nil))then
            ret = 0
         else
            ret = 1 + size(n%left, nil) + size(n%right, nil)
         end if
      end function size_nodeInt32Real32
      function array_ofInt32Real32(t) result(ret)
         type(RBTreeInt32Real32), intent(in):: t
         type(PairInt32Real32):: ret(size(t))
         Integer(kind=int64):: i
         i = 1
         call array_of_implInt32Real32(t%root, t%nil, i, ret)
      end function array_ofInt32Real32
      recursive subroutine array_of_implInt32Real32(n, nil, i, ret)
         type(RBTreeNodeInt32Real32), pointer, intent(in):: n
         type(RBTreeNodeInt32Real32), target, intent(in):: nil
         Integer(kind=int64), intent(inout):: i
         type(PairInt32Real32), intent(inout):: ret(:)
         if(associated(n, nil)) return
         call array_of_implInt32Real32(n%left, nil, i, ret)
         ret(i) = n%data
         i = i + 1
         call array_of_implInt32Real32(n%right, nil, i, ret)
      end subroutine array_of_implInt32Real32
      ! internal node functions
      elemental function key_RBTreeNodeInt32Real32(n) result(k)
         Integer(kind=int32):: k
         type(RBTreeNodeInt32Real32), intent(in):: n
         k = key(n%data)
      end function key_RBTreeNodeInt32Real32
      ! internal tree manipulation functions
      pure subroutine transplantInt32Real32(t, u, v)
         type(RBTreeInt32Real32), intent(inout):: t
         type(RBTreeNodeInt32Real32), target, intent(inout):: u, v
        
         if(associated(u%p, t%nil))then
            t%root => v
         else if(associated(u%p%left, u))then
            u%p%left => v
         else
            u%p%right => v
         end if
         v%p => u%p
      end subroutine transplantInt32Real32
      function tree_minimumInt32Real32(t, x) result(ret)
         type(RBTreeNodeInt32Real32), pointer:: ret
         type(RBTreeInt32Real32), intent(in):: t
         type(RBTreeNodeInt32Real32), target, intent(in):: x
        
         ret => x
         do while(.not.associated(ret%left, t%nil))
            ret => ret%left
         end do
      end function tree_minimumInt32Real32
         pure subroutine left_rotateInt32Real32(t, x)
            type(RBTreeInt32Real32), intent(inout):: t
            type(RBTreeNodeInt32Real32), target, intent(inout):: x
            type(RBTreeNodeInt32Real32), pointer:: y
           
           
           
            y => x%right
            x%right => y%left
            if(.not.associated(y%left, t%nil))then
               y%left%p => x
            end if
            ! if x is declared as pointer, y%p => x%p is concidered to be x => x%p.
            ! to make y%p as a p of y (not x), x should be declared as target.
            y%p => x%p
            if(associated(x%p, t%nil))then
               t%root => y
            else if(associated(x%p%left, x))then
               x%p%left => y
            else
               x%p%right => y
            end if
            y%left => x
            x%p => y
         end subroutine left_rotateInt32Real32
         pure subroutine right_rotateInt32Real32(t, x)
            type(RBTreeInt32Real32), intent(inout):: t
            type(RBTreeNodeInt32Real32), target, intent(inout):: x
            type(RBTreeNodeInt32Real32), pointer:: y
           
           
           
            y => x%left
            x%left => y%right
            if(.not.associated(y%right, t%nil))then
               y%right%p => x
            end if
            ! if x is declared as pointer, y%p => x%p is concidered to be x => x%p.
            ! to make y%p as a p of y (not x), x should be declared as target.
            y%p => x%p
            if(associated(x%p, t%nil))then
               t%root => y
            else if(associated(x%p%right, x))then
               x%p%right => y
            else
               x%p%left => y
            end if
            y%right => x
            x%p => y
         end subroutine right_rotateInt32Real32
      elemental subroutine initInt64Real64(t)
         type(RBTreeInt64Real64), intent(out):: t
         allocate(t%nil)
         t%nil%red = .false.
         t%root => t%nil
      end subroutine initInt64Real64
      pure elemental subroutine addInt64Real64(t, d)
         type(RBTreeInt64Real64), intent(inout):: t
         type(PairInt64Real64), intent(in):: d
         type(RBTreeNodeInt64Real64), pointer:: y, x, z
        
        
         y => t%nil
         x => t%root
         do while(.not.associated(x, t%nil))
            y => x
            if(key(d) < key(x))then
               x => x%left
            else if(key(d) > key(x))then
               x => x%right
            else ! overwrite
               x%data = d
               return
            end if
         end do
         allocate(z)
         z%data = d
         z%p => y
         if(associated(y, t%nil))then
            t%root => z
         else if(key(z) < key(y))then
            y%left => z
         else
            y%right => z
         end if
         z%left => t%nil
         z%right => t%nil
         z%red = .true.
         call add_fixup(t, z)
      end subroutine addInt64Real64
      pure subroutine add_fixupInt64Real64(t, z)
         type(RBTreeInt64Real64), intent(inout):: t
         type(RBTreeNodeInt64Real64), pointer, intent(inout):: z
         type(RBTreeNodeInt64Real64), pointer:: y
        
        
         do while(z%p%red)
           
            if(associated(z%p, z%p%p%left))then
               y => z%p%p%right
               if(y%red)then
                  z%p%red = .false.
                  y%red = .false.
                  z%p%p%red = .true.
                  z => z%p%p
               else
                  if(associated(z, z%p%right))then
                     z => z%p
                     call left_rotate(t, z)
                  end if
                  z%p%red = .false.
                  z%p%p%red = .true.
                  call right_rotate(t, z%p%p)
               end if
            else
               y => z%p%p%left
               if(y%red)then
                  z%p%red = .false.
                  y%red = .false.
                  z%p%p%red = .true.
                  z => z%p%p
               else
                  if(associated(z, z%p%left))then
                     z => z%p
                     call right_rotate(t, z)
                  end if
                  z%p%red = .false.
                  z%p%p%red = .true.
                  call left_rotate(t, z%p%p)
               end if
            end if
         end do
         t%root%red = .false.
      end subroutine add_fixupInt64Real64
      impure elemental function get_2Int64Real64(t, k) result(data)
         type(PairInt64Real64):: data
         type(RBTreeInt64Real64), intent(in):: t
         Integer(kind=int64), intent(in):: k
         Logical:: found
         data = get(t, k, found)
      end function get_2Int64Real64
      impure elemental function get_3Int64Real64(t, k, found) result(data)
         type(PairInt64Real64):: data
         type(RBTreeInt64Real64), intent(in):: t
         Integer(kind=int64), intent(in):: k
         Logical, intent(out):: found
         type(RBTreeNodeInt64Real64), pointer:: n
         call get_node(t, k, n, found)
         if(found)then
            data = n%data
         end if
      end function get_3Int64Real64
      subroutine get_nodeInt64Real64(t, k, n, found)
         type(RBTreeInt64Real64), intent(in):: t
         Integer(kind=int64), intent(in):: k
         type(RBTreeNodeInt64Real64), pointer, intent(out):: n
         Logical, intent(out):: found
        
         found = .true.
         n => t%root
         do while(.not.associated(n, t%nil))
            if(k < key(n))then
               n => n%left
            else if(k > key(n))then
               n => n%right
            else
               return
            end if
         end do
         found = .false.
      end subroutine get_nodeInt64Real64
      impure elemental function hasInt64Real64(t, k) result(ret)
         Logical:: ret
         type(RBTreeInt64Real64), intent(in):: t
         Integer(kind=int64), intent(in):: k
         type(RBTreeNodeInt64Real64), pointer:: tmp
        
         call get_node(t, k, tmp, ret)
      end function hasInt64Real64
      impure elemental subroutine delInt64Real64(t, k)
         type(RBTreeInt64Real64), intent(inout):: t
         Integer(kind=int64), intent(in):: k
         type(RBTreeNodeInt64Real64), pointer:: z
         Logical:: found
        
         call get_node(t, k, z, found)
         if(found)then
            call del_node(t, z)
         end if
      end subroutine delInt64Real64
      subroutine del_nodeInt64Real64(t, z)
         type(RBTreeInt64Real64), intent(inout):: t
         type(RBTreeNodeInt64Real64), pointer, intent(inout):: z
         type(RBTreeNodeInt64Real64), pointer:: x, y
         Logical(kind=kind(y%red)):: y_original_red
        
         y => z
         y_original_red = y%red
         if(associated(z%left, t%nil))then
            x => z%right
            call transplant(t, z, z%right)
         else if(associated(z%right, t%nil))then
            x => z%left
            call transplant(t, z, z%left)
         else
            y => tree_minimum(t, z%right)
            y_original_red = y%red
            x => y%right
            if(associated(y%p, z))then
               x%p => y
            else
               call transplant(t, y, y%right)
               y%right => z%right
               y%right%p => y
            end if
            call transplant(t, z, y)
            y%left => z%left
            y%left%p => y
            y%red = z%red
         end if
         if(.not.y_original_red)then
            call del_fixup(t, x)
         end if
         deallocate(z)
      end subroutine del_nodeInt64Real64
      subroutine del_fixupInt64Real64(t, x)
         type(RBTreeInt64Real64), intent(inout):: t
         type(RBTreeNodeInt64Real64), pointer, intent(inout):: x
         type(RBTreeNodeInt64Real64), pointer:: w
        
         do while((.not.associated(x, t%root)).and.(.not.x%red))
            if(associated(x, x%p%left))then
               w => x%p%right
               if(w%red)then
                  w%red = .false.
                  x%p%red = .true.
                  call left_rotate(t, x%p)
                  w => x%p%right
               end if
               if((.not.w%left%red).and.(.not.w%right%red))then
                  w%red = .true.
                  x => x%p
               else
                  if(.not.w%right%red)then
                     w%left%red = .false.
                     w%red = .true.
                     call right_rotate(t, w)
                     w => x%p%right
                  end if
                  w%red = x%p%red
                  x%p%red = .false.
                  w%right%red = .false.
                  call left_rotate(t, x%p)
                  x => t%root
               end if
            else
               w => x%p%left
               if(w%red)then
                  w%red = .false.
                  x%p%red = .true.
                  call right_rotate(t, x%p)
                  w => x%p%left
               end if
               if((.not.w%right%red).and.(.not.w%left%red))then
                  w%red = .true.
                  x => x%p
               else
                  if(.not.w%left%red)then
                     w%right%red = .false.
                     w%red = .true.
                     call left_rotate(t, w)
                     w => x%p%left
                  end if
                  w%red = x%p%red
                  x%p%red = .false.
                  w%left%red = .false.
                  call right_rotate(t, x%p)
                  x => t%root
               end if
            end if
         end do
         x%red = .false.
      end subroutine del_fixupInt64Real64
      impure elemental subroutine finalizeInt64Real64(t)
         type(RBTreeInt64Real64), intent(inout):: t
         if(associated(t%nil))then
            call finalize_nodeInt64Real64(t%root, t%nil)
            deallocate(t%nil)
         else ! the first init(t) will try to finalize uninitialized RBTree
            ! t%nil and t%root is nullified
            if(.not.(.not.associated(t%root)))then; write(error_unit, *) "ERROR: ", "i_r_dict_lib.f90", " ", 941, (".not.(.not.associated(t%root))"); error stop; end if
         end if
      end subroutine finalizeInt64Real64
      recursive subroutine finalize_nodeInt64Real64(n, nil)
         type(RBTreeNodeInt64Real64), pointer, intent(inout):: n
         type(RBTreeNodeInt64Real64), target, intent(in):: nil
         if(associated(n, nil)) return
         call finalize_nodeInt64Real64(n%left, nil)
         call finalize_nodeInt64Real64(n%right, nil)
         deallocate(n)
      end subroutine finalize_nodeInt64Real64
      impure elemental function sizeInt64Real64(t) result(ret)
         Integer(kind=int64):: ret
         type(RBTreeInt64Real64), intent(in):: t
         ret = size(t%root, t%nil)
      end function sizeInt64Real64
      recursive function size_nodeInt64Real64(n, nil) result(ret)
         Integer(kind=int64):: ret
         type(RBTreeNodeInt64Real64), pointer, intent(in):: n
         type(RBTreeNodeInt64Real64), target, intent(in):: nil
         if(associated(n, nil))then
            ret = 0
         else
            ret = 1 + size(n%left, nil) + size(n%right, nil)
         end if
      end function size_nodeInt64Real64
      function array_ofInt64Real64(t) result(ret)
         type(RBTreeInt64Real64), intent(in):: t
         type(PairInt64Real64):: ret(size(t))
         Integer(kind=int64):: i
         i = 1
         call array_of_implInt64Real64(t%root, t%nil, i, ret)
      end function array_ofInt64Real64
      recursive subroutine array_of_implInt64Real64(n, nil, i, ret)
         type(RBTreeNodeInt64Real64), pointer, intent(in):: n
         type(RBTreeNodeInt64Real64), target, intent(in):: nil
         Integer(kind=int64), intent(inout):: i
         type(PairInt64Real64), intent(inout):: ret(:)
         if(associated(n, nil)) return
         call array_of_implInt64Real64(n%left, nil, i, ret)
         ret(i) = n%data
         i = i + 1
         call array_of_implInt64Real64(n%right, nil, i, ret)
      end subroutine array_of_implInt64Real64
      ! internal node functions
      elemental function key_RBTreeNodeInt64Real64(n) result(k)
         Integer(kind=int64):: k
         type(RBTreeNodeInt64Real64), intent(in):: n
         k = key(n%data)
      end function key_RBTreeNodeInt64Real64
      ! internal tree manipulation functions
      pure subroutine transplantInt64Real64(t, u, v)
         type(RBTreeInt64Real64), intent(inout):: t
         type(RBTreeNodeInt64Real64), target, intent(inout):: u, v
        
         if(associated(u%p, t%nil))then
            t%root => v
         else if(associated(u%p%left, u))then
            u%p%left => v
         else
            u%p%right => v
         end if
         v%p => u%p
      end subroutine transplantInt64Real64
      function tree_minimumInt64Real64(t, x) result(ret)
         type(RBTreeNodeInt64Real64), pointer:: ret
         type(RBTreeInt64Real64), intent(in):: t
         type(RBTreeNodeInt64Real64), target, intent(in):: x
        
         ret => x
         do while(.not.associated(ret%left, t%nil))
            ret => ret%left
         end do
      end function tree_minimumInt64Real64
         pure subroutine left_rotateInt64Real64(t, x)
            type(RBTreeInt64Real64), intent(inout):: t
            type(RBTreeNodeInt64Real64), target, intent(inout):: x
            type(RBTreeNodeInt64Real64), pointer:: y
           
           
           
            y => x%right
            x%right => y%left
            if(.not.associated(y%left, t%nil))then
               y%left%p => x
            end if
            ! if x is declared as pointer, y%p => x%p is concidered to be x => x%p.
            ! to make y%p as a p of y (not x), x should be declared as target.
            y%p => x%p
            if(associated(x%p, t%nil))then
               t%root => y
            else if(associated(x%p%left, x))then
               x%p%left => y
            else
               x%p%right => y
            end if
            y%left => x
            x%p => y
         end subroutine left_rotateInt64Real64
         pure subroutine right_rotateInt64Real64(t, x)
            type(RBTreeInt64Real64), intent(inout):: t
            type(RBTreeNodeInt64Real64), target, intent(inout):: x
            type(RBTreeNodeInt64Real64), pointer:: y
           
           
           
            y => x%left
            x%left => y%right
            if(.not.associated(y%right, t%nil))then
               y%right%p => x
            end if
            ! if x is declared as pointer, y%p => x%p is concidered to be x => x%p.
            ! to make y%p as a p of y (not x), x should be declared as target.
            y%p => x%p
            if(associated(x%p, t%nil))then
               t%root => y
            else if(associated(x%p%right, x))then
               x%p%right => y
            else
               x%p%left => y
            end if
            y%right => x
            x%p => y
         end subroutine right_rotateInt64Real64
end module i_r_dict_lib
