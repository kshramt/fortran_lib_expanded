module red_black_tree_lib
   use, intrinsic:: iso_fortran_env, only: INT8
   use, non_intrinsic:: character_lib, only: str
   implicit none
   private
   public:: insert
   public:: get
   public:: show
   type, public:: IntIntRBTree
      type(IntIntRBNode), pointer:: root => null()
   end type IntIntRBTree
   type, public:: IntIntRBNode
      Integer:: key
      Integer:: val
      Logical(kind=INT8):: isRed = .true.
      type(IntIntRBNode), pointer:: parent => null()
      type(IntIntRBNode), pointer:: left => null()
      type(IntIntRBNode), pointer:: right => null()
   end type IntIntRBNode
   interface rotate
      module procedure rotate
      module procedure rotate_impl
   end interface rotate
contains
   subroutine insert(tree, key, val)
      type(IntIntRBTree), intent(inout):: tree
      Integer, intent(in):: key
      Integer, intent(in):: val
      type(IntIntRBNode), pointer:: me
      type(IntIntRBNode), pointer:: child
      Logical(kind=INT8):: isChildLeft
      if(associated(tree%root))then
         me => tree%root
         do
            if(me%key == key)then ! overwrite current value
               me%key = key ! for mutable value
               me%val = val
               exit
            else ! append a new node
               isChildLeft = key < me%key
               if(isChildLeft)then; child => me%left;else; child => me%right;end if
               if(associated(child))then ! descend
                  me => child
               else ! append a new node
                  call append(tree, me, child, isChildLeft, key, val)
                  exit
               end if
            end if
         end do
      else ! create root
         allocate(tree%root)
         tree%root%key = key
         tree%root%val = val
         tree%root%isRed = .false.
      end if
   end subroutine insert
   function get(tree, key, found) result(ret)
      type(IntIntRBTree), intent(in):: tree
      Integer, intent(in):: key
      Logical, intent(out):: found
      Integer:: ret
      type(IntIntRBNode), pointer:: me, child
      me => tree%root
      if(associated(me))then
         do
            if(me%key == key)then
               ret = me%val
               found = .true.
               exit
            else
               if(key < me%key)then; child => me%left;else; child => me%right;end if
               if(associated(child))then
                  me => child
               else
                  found = .false.
                  exit
               end if
            end if
         end do
      else
         found = .false.
      end if
   end function get
   subroutine show(unit, tree)
      Integer, intent(in):: unit
      type(IntIntRBTree), intent(in):: tree
      Integer:: id
      id = 0
      write(unit, *) 'digraph G{'
      write(unit, *) 'node [shape=box]'
      write(unit, *) 'graph [rankdir=UD]'
      call show_impl(unit, tree%root, id)
      write(unit, *) '}'
   end subroutine show
   recursive subroutine show_impl(unit, node, id)
      Integer, intent(in):: unit
      type(IntIntRBNode), pointer, intent(in):: node
      Integer, intent(inout):: id
      Integer:: id_orig
      id = id + 1
      id_orig = id
      write(unit, '(3a)', advance='no') 'n', str(id), '[color='
      if(associated(node))then
         if(node%isRed)then
            write(unit, *) '"#ff0000", '
         else
            write(unit, *) '"#000000", '
         end if
         write(unit, *) 'label="', str(node%key), ' ', str(node%val), '"]'
         write(unit, *) 'n', str(id_orig), ' -> ', 'n', str(id + 1)
         call show_impl(unit, node%left, id)
         write(unit, *) 'n', str(id_orig), ' -> ', 'n', str(id + 1)
         call show_impl(unit, node%right, id)
      else
         write(unit, *) '"#000000", label=""]'
      end if
   end subroutine show_impl
   subroutine append(tree, me, child, isChildLeft, key, val)
      type(IntIntRBTree), intent(inout):: tree
      type(IntIntRBNode), pointer, intent(inout):: me, child
      Logical(kind=INT8), intent(in):: isChildLeft
      Integer, intent(in):: key, val
      type(IntIntRBNode), pointer:: grandparent
      type(IntIntRBNode), pointer:: parent
      type(IntIntRBNode), pointer:: brother
      Logical(kind=INT8):: isParentLeft
      allocate(child)
      child%key = key
      child%val = val
      child%parent => me
      if(isChildLeft)then; me%left => child;else; me%right => child;end if
      if(me%isRed)then
         parent => me%parent
         grandparent => parent%parent
         if(parent%key < key)then; brother => parent%left;else; brother => parent%right;end if
         if(associated(brother))then
            me%isRed = .false.
            brother%isRed = .false.
            if(associated(grandparent))then
               parent%isRed = .true.
               if(grandparent%isRed)then
                  isParentLeft = key < grandparent%key
                  if(isParentLeft .eqv. key < grandparent%parent%key)then
                     call rotate_single(tree, parent, isParentLeft)
                  else
                     call rotate_double(tree, parent, isParentLeft)
                  end if
               end if
            end if
         else
            if(associated(grandparent))then
               if(key < grandparent%key)then; grandparent%left => me;else; grandparent%right => me;end if
               me%parent => grandparent
            else
               tree%root => me
               me%parent => null()
            end if
            me%isRed = .false.
            parent%left => null()
            parent%right => null()
            if(.not.isChildLeft)then; me%left => parent;else; me%right => parent;end if
            parent%parent => me
            parent%isRed = .true.
         end if
      end if
   end subroutine append
   subroutine rotate_double(tree, me, isMeLeft)
      type(IntIntRBTree), intent(inout):: tree
      type(IntIntRBNode), pointer, intent(inout):: me
      Logical(kind=INT8), intent(in):: isMeLeft
      type(IntIntRBNode), pointer:: parent
      parent => me%parent
      if(isMeLeft)then
         call rotate(parent%parent%right, parent, .not.isMeLeft)
      else
         call rotate(parent%parent%left, parent, isMeLeft)
      end if
      call rotate_single(tree, parent, .not.isMeLeft)
   end subroutine rotate_double
   subroutine rotate_single(tree, me, isMeLeft)
      type(IntIntRBTree), intent(inout):: tree
      type(IntIntRBNode), pointer, intent(inout):: me
      Logical(kind=INT8), intent(in):: isMeLeft
      type(IntIntRBNode), pointer:: parent, uncle, grandparent, great_grandparent
      parent => me%parent
      grandparent => parent%parent
      if(.not.isMeLeft)then; uncle => grandparent%left;else; uncle => grandparent%right;end if
      great_grandparent => grandparent%parent
      do while(uncle%isRed) ! delegate red for an upper node since no valid rotation is available for now
         parent%isRed = .false.
         uncle%isRed = .false.
         if(associated(great_grandparent))then
            grandparent%isRed = .true.
            if(great_grandparent%isRed)then
               me => grandparent
               parent => great_grandparent
               grandparent => parent%parent
               if(.not.isMeLeft)then; uncle => grandparent%left;else; uncle => grandparent%right;end if
               great_grandparent => grandparent%parent
            else
               return
            end if
         else
            return
         end if
      end do
      ! actual rotation
      parent%isRed = .false.
      grandparent%isRed = .true.
      if(associated(great_grandparent))then
         call rotate(grandparent, .not.isMeLeft)
      else
         call rotate(tree%root, grandparent, .not.isMeLeft)
      end if
   end subroutine rotate_single
   subroutine rotate(me, isLeft)
      type(IntIntRBNode), pointer, intent(inout):: me
      Logical(kind=INT8), intent(in):: isLeft
      type(IntIntRBNode), pointer:: parent
      parent => me%parent
      if(me%key < parent%key)then
         call rotate(parent%left, me, isLeft)
      else
         call rotate(parent%right, me, isLeft)
      end if
   end subroutine rotate
   subroutine rotate_impl(parent_to_me, me, isLeft)
      type(IntIntRBNode), pointer, intent(inout):: parent_to_me, me
      Logical(kind=INT8), intent(in):: isLeft
      type(IntIntRBNode), pointer:: child_to_up
      if(isLeft)then
         child_to_up => me%right
         me%right => child_to_up%left
         child_to_up%left => me
      else
         child_to_up => me%left
         me%left => child_to_up%right
         child_to_up%right => me
      end if
      parent_to_me => child_to_up
      child_to_up%parent => me%parent
      me%parent => child_to_up
   end subroutine rotate
end module red_black_tree_lib
program main
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   use, non_intrinsic:: red_black_tree_lib, only: IntIntRBTree
   use, non_intrinsic:: red_black_tree_lib, only: insert, get, show
   implicit none
   type(IntIntRBTree):: t
   Logical:: found
   ! Integer:: i
   call insert(t, 0, 0)
   call insert(t, -1, 1)
   call insert(t, -2, 2)
   call insert(t, 1, 1)
   call insert(t, 2, 2)
   call insert(t, 3, 3)
   call insert(t, -3, 3)
   call insert(t, 4, 4)
   call insert(t, -4, 4)
   ! do i = 1, 30
   ! call insert(t, i, i)
   ! end do
   print*, '//', get(t, 0, found)
   print*, '//', found
   print*, '//', get(t, -1, found)
   print*, '//', found
   print*, '//', get(t, -2, found)
   print*, '//', found
   print*, '//', get(t, 1, found)
   print*, '//', found
   print*, '//', get(t, 2, found)
   print*, '//', found
   call show(OUTPUT_UNIT, t)
   stop
end program main
