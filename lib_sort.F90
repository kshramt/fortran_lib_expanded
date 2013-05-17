
#include "utils.h"
module lib_sort
  use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
  USE_UTILS_H
  use, non_intrinsic:: lib_comparable, only: is_nan, is_infinity

  use, non_intrinsic:: stack_lib, only: push_stack, pop_stack
  use, non_intrinsic:: stack_lib, only: IntegerDim0KindINT64Stack

  implicit none

  private

  public:: quick_sort, quick_sorting
  public:: merge_sort, merge_sorting

    interface quick_sort
      module procedure quick_sortIntegerDim0KindINT8
    end interface quick_sort

    interface quick_sorting
      module procedure quick_sortingIntegerDim0KindINT8
    end interface quick_sorting

    interface get_pivot
      module procedure get_pivotIntegerDim0KindINT8
    end interface get_pivot

    interface merge_sort
      module procedure merge_sortIntegerDim0KindINT8
    end interface merge_sort

    interface merge_sorting
      module procedure merge_sortingIntegerDim0KindINT8
    end interface merge_sorting

    interface merge_sorting_substance
      module procedure merge_sorting_substanceIntegerDim0KindINT8
    end interface merge_sorting_substance

    interface merge_sorted_lists
      module procedure merge_sorted_listsIntegerDim0KindINT8
    end interface merge_sorted_lists

    interface sorting_3
      module procedure sorting_3IntegerDim0KindINT8
    end interface sorting_3

    interface sorting_2
      module procedure sorting_2IntegerDim0KindINT8
    end interface sorting_2

    interface swapping
      module procedure swappingIntegerDim0KindINT8
    end interface swapping
    interface quick_sort
      module procedure quick_sortIntegerDim0KindINT16
    end interface quick_sort

    interface quick_sorting
      module procedure quick_sortingIntegerDim0KindINT16
    end interface quick_sorting

    interface get_pivot
      module procedure get_pivotIntegerDim0KindINT16
    end interface get_pivot

    interface merge_sort
      module procedure merge_sortIntegerDim0KindINT16
    end interface merge_sort

    interface merge_sorting
      module procedure merge_sortingIntegerDim0KindINT16
    end interface merge_sorting

    interface merge_sorting_substance
      module procedure merge_sorting_substanceIntegerDim0KindINT16
    end interface merge_sorting_substance

    interface merge_sorted_lists
      module procedure merge_sorted_listsIntegerDim0KindINT16
    end interface merge_sorted_lists

    interface sorting_3
      module procedure sorting_3IntegerDim0KindINT16
    end interface sorting_3

    interface sorting_2
      module procedure sorting_2IntegerDim0KindINT16
    end interface sorting_2

    interface swapping
      module procedure swappingIntegerDim0KindINT16
    end interface swapping
    interface quick_sort
      module procedure quick_sortIntegerDim0KindINT32
    end interface quick_sort

    interface quick_sorting
      module procedure quick_sortingIntegerDim0KindINT32
    end interface quick_sorting

    interface get_pivot
      module procedure get_pivotIntegerDim0KindINT32
    end interface get_pivot

    interface merge_sort
      module procedure merge_sortIntegerDim0KindINT32
    end interface merge_sort

    interface merge_sorting
      module procedure merge_sortingIntegerDim0KindINT32
    end interface merge_sorting

    interface merge_sorting_substance
      module procedure merge_sorting_substanceIntegerDim0KindINT32
    end interface merge_sorting_substance

    interface merge_sorted_lists
      module procedure merge_sorted_listsIntegerDim0KindINT32
    end interface merge_sorted_lists

    interface sorting_3
      module procedure sorting_3IntegerDim0KindINT32
    end interface sorting_3

    interface sorting_2
      module procedure sorting_2IntegerDim0KindINT32
    end interface sorting_2

    interface swapping
      module procedure swappingIntegerDim0KindINT32
    end interface swapping
    interface quick_sort
      module procedure quick_sortIntegerDim0KindINT64
    end interface quick_sort

    interface quick_sorting
      module procedure quick_sortingIntegerDim0KindINT64
    end interface quick_sorting

    interface get_pivot
      module procedure get_pivotIntegerDim0KindINT64
    end interface get_pivot

    interface merge_sort
      module procedure merge_sortIntegerDim0KindINT64
    end interface merge_sort

    interface merge_sorting
      module procedure merge_sortingIntegerDim0KindINT64
    end interface merge_sorting

    interface merge_sorting_substance
      module procedure merge_sorting_substanceIntegerDim0KindINT64
    end interface merge_sorting_substance

    interface merge_sorted_lists
      module procedure merge_sorted_listsIntegerDim0KindINT64
    end interface merge_sorted_lists

    interface sorting_3
      module procedure sorting_3IntegerDim0KindINT64
    end interface sorting_3

    interface sorting_2
      module procedure sorting_2IntegerDim0KindINT64
    end interface sorting_2

    interface swapping
      module procedure swappingIntegerDim0KindINT64
    end interface swapping
    interface quick_sort
      module procedure quick_sortRealDim0KindREAL32
    end interface quick_sort

    interface quick_sorting
      module procedure quick_sortingRealDim0KindREAL32
    end interface quick_sorting

    interface get_pivot
      module procedure get_pivotRealDim0KindREAL32
    end interface get_pivot

    interface merge_sort
      module procedure merge_sortRealDim0KindREAL32
    end interface merge_sort

    interface merge_sorting
      module procedure merge_sortingRealDim0KindREAL32
    end interface merge_sorting

    interface merge_sorting_substance
      module procedure merge_sorting_substanceRealDim0KindREAL32
    end interface merge_sorting_substance

    interface merge_sorted_lists
      module procedure merge_sorted_listsRealDim0KindREAL32
    end interface merge_sorted_lists

    interface sorting_3
      module procedure sorting_3RealDim0KindREAL32
    end interface sorting_3

    interface sorting_2
      module procedure sorting_2RealDim0KindREAL32
    end interface sorting_2

    interface swapping
      module procedure swappingRealDim0KindREAL32
    end interface swapping
    interface quick_sort
      module procedure quick_sortRealDim0KindREAL64
    end interface quick_sort

    interface quick_sorting
      module procedure quick_sortingRealDim0KindREAL64
    end interface quick_sorting

    interface get_pivot
      module procedure get_pivotRealDim0KindREAL64
    end interface get_pivot

    interface merge_sort
      module procedure merge_sortRealDim0KindREAL64
    end interface merge_sort

    interface merge_sorting
      module procedure merge_sortingRealDim0KindREAL64
    end interface merge_sorting

    interface merge_sorting_substance
      module procedure merge_sorting_substanceRealDim0KindREAL64
    end interface merge_sorting_substance

    interface merge_sorted_lists
      module procedure merge_sorted_listsRealDim0KindREAL64
    end interface merge_sorted_lists

    interface sorting_3
      module procedure sorting_3RealDim0KindREAL64
    end interface sorting_3

    interface sorting_2
      module procedure sorting_2RealDim0KindREAL64
    end interface sorting_2

    interface swapping
      module procedure swappingRealDim0KindREAL64
    end interface swapping
    interface quick_sort
      module procedure quick_sortRealDim0KindREAL128
    end interface quick_sort

    interface quick_sorting
      module procedure quick_sortingRealDim0KindREAL128
    end interface quick_sorting

    interface get_pivot
      module procedure get_pivotRealDim0KindREAL128
    end interface get_pivot

    interface merge_sort
      module procedure merge_sortRealDim0KindREAL128
    end interface merge_sort

    interface merge_sorting
      module procedure merge_sortingRealDim0KindREAL128
    end interface merge_sorting

    interface merge_sorting_substance
      module procedure merge_sorting_substanceRealDim0KindREAL128
    end interface merge_sorting_substance

    interface merge_sorted_lists
      module procedure merge_sorted_listsRealDim0KindREAL128
    end interface merge_sorted_lists

    interface sorting_3
      module procedure sorting_3RealDim0KindREAL128
    end interface sorting_3

    interface sorting_2
      module procedure sorting_2RealDim0KindREAL128
    end interface sorting_2

    interface swapping
      module procedure swappingRealDim0KindREAL128
    end interface swapping

contains

    function quick_sortIntegerDim0KindINT8(xs) result(xsSorted)
      Integer(kind = INT8), allocatable:: xsSorted(:)
      Integer(kind = INT8), intent(in):: xs(:)

      xsSorted = xs
      call quick_sorting(xsSorted)
    end function quick_sortIntegerDim0KindINT8

    subroutine quick_sortingIntegerDim0KindINT8(xs)
      Integer(kind = INT8), intent(inout):: xs(:)
      Integer(kind = INT8):: pivot
      type(IntegerDim0KindINT64Stack):: iLs, iRs
      Integer(kind = INT64):: iL, iR, iLOriginal, iROriginal
      Logical:: isUniform

      RAISE_IF(any(is_nan(xs)))

      call push_stack(iLs, 1_INT64)
      call push_stack(iRs, size(xs, dim = 1, kind = kind(iR)))

      do while(pop_stack(iRs, iR))    ! Loop for all segments on the stacks.
        ASSERT(pop_stack(iLs, iL))

        iLOriginal = iL      ! Left most index of the current segment.
        do while(iLOriginal < iR) ! While current segment remains
          select case(iR - iL)
          case(-1, 0)
            exit
          case(1)
            call sorting_2(xs(iL:iR))
            exit
          case(2)
            call sorting_3(xs(iL:iR))
            exit
          case(3:)
            pivot = get_pivot(xs(iL:iR), isUniform)
            if(isUniform) exit

            iROriginal = iR  ! Right most index of the current segment
            loop_to_swap: do ! Within the segment
              do while(xs(iR) > pivot)
                iR = iR - 1
              end do
              do while(xs(iL) <= pivot)
                if(iL >= iR)then
                  call push_stack(iLs, iR + 1)
                  call push_stack(iRs, iROriginal)
                  iL = iLOriginal
                  exit loop_to_swap
                end if

                iL = iL + 1
              end do

              call swapping(xs(iL), xs(iR))
            end do loop_to_swap
          case default
            RAISE('Must not happen.')
          end select
        end do
      end do
    end subroutine quick_sortingIntegerDim0KindINT8

    function get_pivotIntegerDim0KindINT8(xs, isUniform) result(pivot)
      Integer(kind = INT8):: pivot
      Integer(kind = INT8), intent(in):: xs(:)
      Logical, intent(out):: isUniform
      Integer(kind = INT8):: tmpX
      Integer(kind = INT64):: iXs, nXs

      isUniform = .false.

      nXs = size(xs, dim = 1, kind = kind(nXs))

      if(xs(1) /= xs(nXs))then
        pivot = min(xs(1), xs(nXs))
        return
      end if

      tmpX = xs(1)
      do iXs = 2, nXs - 1
        if(xs(iXs) /= tmpX)then
          pivot = min(xs(iXs), tmpX)
          return
        end if
      end do

      pivot = huge(pivot)
      isUniform = .true.
    end function get_pivotIntegerDim0KindINT8

    function merge_sortIntegerDim0KindINT8(xs) result(xsSorted)
      Integer(kind = INT8), intent(in):: xs(:)
      Integer(kind = INT8), allocatable:: xsSorted(:)

      xsSorted = xs
      call merge_sortingIntegerDim0KindINT8(xsSorted)
    end function merge_sortIntegerDim0KindINT8

    subroutine merge_sortingIntegerDim0KindINT8(xs)
      Integer(kind = INT8), intent(inout):: xs(:)

      RAISE_IF(any(is_nan(xs)))
      call merge_sorting_substanceIntegerDim0KindINT8(xs)
    end subroutine merge_sortingIntegerDim0KindINT8

    recursive subroutine merge_sorting_substanceIntegerDim0KindINT8(xs)
      Integer(kind = INT8), intent(inout):: xs(:)
      Integer(kind = INT8), allocatable:: xsL(:), xsR(:)
      Integer(kind = INT64):: nXs

      nXs = size(xs, dim = 1, kind = kind(nXs))
      select case(nXs)
      case(:1)
        ! Nothing to do.
      case(2)
        call sorting_2(xs)
      case(3)
        call sorting_3(xs)
      case default
        xsL = xs(1:nXs/2)
        xsR = xs((nXs/2 + 1):nXs)
        call merge_sorting_substance(xsL)
        call merge_sorting_substance(xsR)
        call merge_sorted_lists(xsL, xsR, xs)
      end select
    end subroutine merge_sorting_substanceIntegerDim0KindINT8

    ! Merge sorted 1-D array xs and ys into zs.
    subroutine merge_sorted_listsIntegerDim0KindINT8(xs, ys, zs)
      Integer(kind = INT8), intent(in):: xs(:), ys(:)
      Integer(kind = INT8), intent(out):: zs(:)
      Integer(kind = INT64):: iXs, nXs, iYs, nYs, iZs, nZs

      nXs = size(xs, dim = 1, kind = kind(nXs))
      nYs = size(ys, dim = 1, kind = kind(nYs))
      nZs = size(zs, dim = 1, kind = kind(nZs))

      ASSERT(nXs + nYs == nZs)
      if(nXs < 1)then
         zs = ys
         return
      end if
      if(nYs < 1)then
         zs = xs
         return
      end if

      iXs = 1
      iYs = 1
      iZs = 1
      do while(iXs <= nXs .and. iYs <= nYs)
        if(xs(iXs) <= ys(iYs))then
          zs(iZs) = xs(iXs)
          iXs = iXs + 1
        else
          zs(iZs) = ys(iYs)
          iYs = iYs + 1
        end if
        iZs = iZs + 1
      end do

      if(iXs <= nXs)then
        zs(iZs:nZs) = xs(iXs:nXs)
      else
        zs(iZs:nZs) = ys(iYs:nYs)
      end if
    end subroutine merge_sorted_listsIntegerDim0KindINT8

    pure subroutine sorting_3IntegerDim0KindINT8(xs)
      Integer(kind = INT8), intent(inout):: xs(1:3)

      if(xs(3) < xs(1)) call swapping(xs(1), xs(3))
      if(xs(3) < xs(2))then
        call swapping(xs(2), xs(3))
      else if(xs(2) < xs(1))then
        call swapping(xs(1), xs(2))
      end if
    end subroutine sorting_3IntegerDim0KindINT8

    pure subroutine sorting_2IntegerDim0KindINT8(xs)
      Integer(kind = INT8), intent(inout):: xs(1:2)

      if(xs(2) < xs(1)) call swapping(xs(1), xs(2))
    end subroutine sorting_2IntegerDim0KindINT8

    elemental subroutine swappingIntegerDim0KindINT8(a, b)
      Integer(kind = INT8), intent(inout):: a, b
      Integer(kind = INT8):: swap

      swap = b
      b = a
      a = swap
    end subroutine swappingIntegerDim0KindINT8
    function quick_sortIntegerDim0KindINT16(xs) result(xsSorted)
      Integer(kind = INT16), allocatable:: xsSorted(:)
      Integer(kind = INT16), intent(in):: xs(:)

      xsSorted = xs
      call quick_sorting(xsSorted)
    end function quick_sortIntegerDim0KindINT16

    subroutine quick_sortingIntegerDim0KindINT16(xs)
      Integer(kind = INT16), intent(inout):: xs(:)
      Integer(kind = INT16):: pivot
      type(IntegerDim0KindINT64Stack):: iLs, iRs
      Integer(kind = INT64):: iL, iR, iLOriginal, iROriginal
      Logical:: isUniform

      RAISE_IF(any(is_nan(xs)))

      call push_stack(iLs, 1_INT64)
      call push_stack(iRs, size(xs, dim = 1, kind = kind(iR)))

      do while(pop_stack(iRs, iR))    ! Loop for all segments on the stacks.
        ASSERT(pop_stack(iLs, iL))

        iLOriginal = iL      ! Left most index of the current segment.
        do while(iLOriginal < iR) ! While current segment remains
          select case(iR - iL)
          case(-1, 0)
            exit
          case(1)
            call sorting_2(xs(iL:iR))
            exit
          case(2)
            call sorting_3(xs(iL:iR))
            exit
          case(3:)
            pivot = get_pivot(xs(iL:iR), isUniform)
            if(isUniform) exit

            iROriginal = iR  ! Right most index of the current segment
            loop_to_swap: do ! Within the segment
              do while(xs(iR) > pivot)
                iR = iR - 1
              end do
              do while(xs(iL) <= pivot)
                if(iL >= iR)then
                  call push_stack(iLs, iR + 1)
                  call push_stack(iRs, iROriginal)
                  iL = iLOriginal
                  exit loop_to_swap
                end if

                iL = iL + 1
              end do

              call swapping(xs(iL), xs(iR))
            end do loop_to_swap
          case default
            RAISE('Must not happen.')
          end select
        end do
      end do
    end subroutine quick_sortingIntegerDim0KindINT16

    function get_pivotIntegerDim0KindINT16(xs, isUniform) result(pivot)
      Integer(kind = INT16):: pivot
      Integer(kind = INT16), intent(in):: xs(:)
      Logical, intent(out):: isUniform
      Integer(kind = INT16):: tmpX
      Integer(kind = INT64):: iXs, nXs

      isUniform = .false.

      nXs = size(xs, dim = 1, kind = kind(nXs))

      if(xs(1) /= xs(nXs))then
        pivot = min(xs(1), xs(nXs))
        return
      end if

      tmpX = xs(1)
      do iXs = 2, nXs - 1
        if(xs(iXs) /= tmpX)then
          pivot = min(xs(iXs), tmpX)
          return
        end if
      end do

      pivot = huge(pivot)
      isUniform = .true.
    end function get_pivotIntegerDim0KindINT16

    function merge_sortIntegerDim0KindINT16(xs) result(xsSorted)
      Integer(kind = INT16), intent(in):: xs(:)
      Integer(kind = INT16), allocatable:: xsSorted(:)

      xsSorted = xs
      call merge_sortingIntegerDim0KindINT16(xsSorted)
    end function merge_sortIntegerDim0KindINT16

    subroutine merge_sortingIntegerDim0KindINT16(xs)
      Integer(kind = INT16), intent(inout):: xs(:)

      RAISE_IF(any(is_nan(xs)))
      call merge_sorting_substanceIntegerDim0KindINT16(xs)
    end subroutine merge_sortingIntegerDim0KindINT16

    recursive subroutine merge_sorting_substanceIntegerDim0KindINT16(xs)
      Integer(kind = INT16), intent(inout):: xs(:)
      Integer(kind = INT16), allocatable:: xsL(:), xsR(:)
      Integer(kind = INT64):: nXs

      nXs = size(xs, dim = 1, kind = kind(nXs))
      select case(nXs)
      case(:1)
        ! Nothing to do.
      case(2)
        call sorting_2(xs)
      case(3)
        call sorting_3(xs)
      case default
        xsL = xs(1:nXs/2)
        xsR = xs((nXs/2 + 1):nXs)
        call merge_sorting_substance(xsL)
        call merge_sorting_substance(xsR)
        call merge_sorted_lists(xsL, xsR, xs)
      end select
    end subroutine merge_sorting_substanceIntegerDim0KindINT16

    ! Merge sorted 1-D array xs and ys into zs.
    subroutine merge_sorted_listsIntegerDim0KindINT16(xs, ys, zs)
      Integer(kind = INT16), intent(in):: xs(:), ys(:)
      Integer(kind = INT16), intent(out):: zs(:)
      Integer(kind = INT64):: iXs, nXs, iYs, nYs, iZs, nZs

      nXs = size(xs, dim = 1, kind = kind(nXs))
      nYs = size(ys, dim = 1, kind = kind(nYs))
      nZs = size(zs, dim = 1, kind = kind(nZs))

      ASSERT(nXs + nYs == nZs)
      if(nXs < 1)then
         zs = ys
         return
      end if
      if(nYs < 1)then
         zs = xs
         return
      end if

      iXs = 1
      iYs = 1
      iZs = 1
      do while(iXs <= nXs .and. iYs <= nYs)
        if(xs(iXs) <= ys(iYs))then
          zs(iZs) = xs(iXs)
          iXs = iXs + 1
        else
          zs(iZs) = ys(iYs)
          iYs = iYs + 1
        end if
        iZs = iZs + 1
      end do

      if(iXs <= nXs)then
        zs(iZs:nZs) = xs(iXs:nXs)
      else
        zs(iZs:nZs) = ys(iYs:nYs)
      end if
    end subroutine merge_sorted_listsIntegerDim0KindINT16

    pure subroutine sorting_3IntegerDim0KindINT16(xs)
      Integer(kind = INT16), intent(inout):: xs(1:3)

      if(xs(3) < xs(1)) call swapping(xs(1), xs(3))
      if(xs(3) < xs(2))then
        call swapping(xs(2), xs(3))
      else if(xs(2) < xs(1))then
        call swapping(xs(1), xs(2))
      end if
    end subroutine sorting_3IntegerDim0KindINT16

    pure subroutine sorting_2IntegerDim0KindINT16(xs)
      Integer(kind = INT16), intent(inout):: xs(1:2)

      if(xs(2) < xs(1)) call swapping(xs(1), xs(2))
    end subroutine sorting_2IntegerDim0KindINT16

    elemental subroutine swappingIntegerDim0KindINT16(a, b)
      Integer(kind = INT16), intent(inout):: a, b
      Integer(kind = INT16):: swap

      swap = b
      b = a
      a = swap
    end subroutine swappingIntegerDim0KindINT16
    function quick_sortIntegerDim0KindINT32(xs) result(xsSorted)
      Integer(kind = INT32), allocatable:: xsSorted(:)
      Integer(kind = INT32), intent(in):: xs(:)

      xsSorted = xs
      call quick_sorting(xsSorted)
    end function quick_sortIntegerDim0KindINT32

    subroutine quick_sortingIntegerDim0KindINT32(xs)
      Integer(kind = INT32), intent(inout):: xs(:)
      Integer(kind = INT32):: pivot
      type(IntegerDim0KindINT64Stack):: iLs, iRs
      Integer(kind = INT64):: iL, iR, iLOriginal, iROriginal
      Logical:: isUniform

      RAISE_IF(any(is_nan(xs)))

      call push_stack(iLs, 1_INT64)
      call push_stack(iRs, size(xs, dim = 1, kind = kind(iR)))

      do while(pop_stack(iRs, iR))    ! Loop for all segments on the stacks.
        ASSERT(pop_stack(iLs, iL))

        iLOriginal = iL      ! Left most index of the current segment.
        do while(iLOriginal < iR) ! While current segment remains
          select case(iR - iL)
          case(-1, 0)
            exit
          case(1)
            call sorting_2(xs(iL:iR))
            exit
          case(2)
            call sorting_3(xs(iL:iR))
            exit
          case(3:)
            pivot = get_pivot(xs(iL:iR), isUniform)
            if(isUniform) exit

            iROriginal = iR  ! Right most index of the current segment
            loop_to_swap: do ! Within the segment
              do while(xs(iR) > pivot)
                iR = iR - 1
              end do
              do while(xs(iL) <= pivot)
                if(iL >= iR)then
                  call push_stack(iLs, iR + 1)
                  call push_stack(iRs, iROriginal)
                  iL = iLOriginal
                  exit loop_to_swap
                end if

                iL = iL + 1
              end do

              call swapping(xs(iL), xs(iR))
            end do loop_to_swap
          case default
            RAISE('Must not happen.')
          end select
        end do
      end do
    end subroutine quick_sortingIntegerDim0KindINT32

    function get_pivotIntegerDim0KindINT32(xs, isUniform) result(pivot)
      Integer(kind = INT32):: pivot
      Integer(kind = INT32), intent(in):: xs(:)
      Logical, intent(out):: isUniform
      Integer(kind = INT32):: tmpX
      Integer(kind = INT64):: iXs, nXs

      isUniform = .false.

      nXs = size(xs, dim = 1, kind = kind(nXs))

      if(xs(1) /= xs(nXs))then
        pivot = min(xs(1), xs(nXs))
        return
      end if

      tmpX = xs(1)
      do iXs = 2, nXs - 1
        if(xs(iXs) /= tmpX)then
          pivot = min(xs(iXs), tmpX)
          return
        end if
      end do

      pivot = huge(pivot)
      isUniform = .true.
    end function get_pivotIntegerDim0KindINT32

    function merge_sortIntegerDim0KindINT32(xs) result(xsSorted)
      Integer(kind = INT32), intent(in):: xs(:)
      Integer(kind = INT32), allocatable:: xsSorted(:)

      xsSorted = xs
      call merge_sortingIntegerDim0KindINT32(xsSorted)
    end function merge_sortIntegerDim0KindINT32

    subroutine merge_sortingIntegerDim0KindINT32(xs)
      Integer(kind = INT32), intent(inout):: xs(:)

      RAISE_IF(any(is_nan(xs)))
      call merge_sorting_substanceIntegerDim0KindINT32(xs)
    end subroutine merge_sortingIntegerDim0KindINT32

    recursive subroutine merge_sorting_substanceIntegerDim0KindINT32(xs)
      Integer(kind = INT32), intent(inout):: xs(:)
      Integer(kind = INT32), allocatable:: xsL(:), xsR(:)
      Integer(kind = INT64):: nXs

      nXs = size(xs, dim = 1, kind = kind(nXs))
      select case(nXs)
      case(:1)
        ! Nothing to do.
      case(2)
        call sorting_2(xs)
      case(3)
        call sorting_3(xs)
      case default
        xsL = xs(1:nXs/2)
        xsR = xs((nXs/2 + 1):nXs)
        call merge_sorting_substance(xsL)
        call merge_sorting_substance(xsR)
        call merge_sorted_lists(xsL, xsR, xs)
      end select
    end subroutine merge_sorting_substanceIntegerDim0KindINT32

    ! Merge sorted 1-D array xs and ys into zs.
    subroutine merge_sorted_listsIntegerDim0KindINT32(xs, ys, zs)
      Integer(kind = INT32), intent(in):: xs(:), ys(:)
      Integer(kind = INT32), intent(out):: zs(:)
      Integer(kind = INT64):: iXs, nXs, iYs, nYs, iZs, nZs

      nXs = size(xs, dim = 1, kind = kind(nXs))
      nYs = size(ys, dim = 1, kind = kind(nYs))
      nZs = size(zs, dim = 1, kind = kind(nZs))

      ASSERT(nXs + nYs == nZs)
      if(nXs < 1)then
         zs = ys
         return
      end if
      if(nYs < 1)then
         zs = xs
         return
      end if

      iXs = 1
      iYs = 1
      iZs = 1
      do while(iXs <= nXs .and. iYs <= nYs)
        if(xs(iXs) <= ys(iYs))then
          zs(iZs) = xs(iXs)
          iXs = iXs + 1
        else
          zs(iZs) = ys(iYs)
          iYs = iYs + 1
        end if
        iZs = iZs + 1
      end do

      if(iXs <= nXs)then
        zs(iZs:nZs) = xs(iXs:nXs)
      else
        zs(iZs:nZs) = ys(iYs:nYs)
      end if
    end subroutine merge_sorted_listsIntegerDim0KindINT32

    pure subroutine sorting_3IntegerDim0KindINT32(xs)
      Integer(kind = INT32), intent(inout):: xs(1:3)

      if(xs(3) < xs(1)) call swapping(xs(1), xs(3))
      if(xs(3) < xs(2))then
        call swapping(xs(2), xs(3))
      else if(xs(2) < xs(1))then
        call swapping(xs(1), xs(2))
      end if
    end subroutine sorting_3IntegerDim0KindINT32

    pure subroutine sorting_2IntegerDim0KindINT32(xs)
      Integer(kind = INT32), intent(inout):: xs(1:2)

      if(xs(2) < xs(1)) call swapping(xs(1), xs(2))
    end subroutine sorting_2IntegerDim0KindINT32

    elemental subroutine swappingIntegerDim0KindINT32(a, b)
      Integer(kind = INT32), intent(inout):: a, b
      Integer(kind = INT32):: swap

      swap = b
      b = a
      a = swap
    end subroutine swappingIntegerDim0KindINT32
    function quick_sortIntegerDim0KindINT64(xs) result(xsSorted)
      Integer(kind = INT64), allocatable:: xsSorted(:)
      Integer(kind = INT64), intent(in):: xs(:)

      xsSorted = xs
      call quick_sorting(xsSorted)
    end function quick_sortIntegerDim0KindINT64

    subroutine quick_sortingIntegerDim0KindINT64(xs)
      Integer(kind = INT64), intent(inout):: xs(:)
      Integer(kind = INT64):: pivot
      type(IntegerDim0KindINT64Stack):: iLs, iRs
      Integer(kind = INT64):: iL, iR, iLOriginal, iROriginal
      Logical:: isUniform

      RAISE_IF(any(is_nan(xs)))

      call push_stack(iLs, 1_INT64)
      call push_stack(iRs, size(xs, dim = 1, kind = kind(iR)))

      do while(pop_stack(iRs, iR))    ! Loop for all segments on the stacks.
        ASSERT(pop_stack(iLs, iL))

        iLOriginal = iL      ! Left most index of the current segment.
        do while(iLOriginal < iR) ! While current segment remains
          select case(iR - iL)
          case(-1, 0)
            exit
          case(1)
            call sorting_2(xs(iL:iR))
            exit
          case(2)
            call sorting_3(xs(iL:iR))
            exit
          case(3:)
            pivot = get_pivot(xs(iL:iR), isUniform)
            if(isUniform) exit

            iROriginal = iR  ! Right most index of the current segment
            loop_to_swap: do ! Within the segment
              do while(xs(iR) > pivot)
                iR = iR - 1
              end do
              do while(xs(iL) <= pivot)
                if(iL >= iR)then
                  call push_stack(iLs, iR + 1)
                  call push_stack(iRs, iROriginal)
                  iL = iLOriginal
                  exit loop_to_swap
                end if

                iL = iL + 1
              end do

              call swapping(xs(iL), xs(iR))
            end do loop_to_swap
          case default
            RAISE('Must not happen.')
          end select
        end do
      end do
    end subroutine quick_sortingIntegerDim0KindINT64

    function get_pivotIntegerDim0KindINT64(xs, isUniform) result(pivot)
      Integer(kind = INT64):: pivot
      Integer(kind = INT64), intent(in):: xs(:)
      Logical, intent(out):: isUniform
      Integer(kind = INT64):: tmpX
      Integer(kind = INT64):: iXs, nXs

      isUniform = .false.

      nXs = size(xs, dim = 1, kind = kind(nXs))

      if(xs(1) /= xs(nXs))then
        pivot = min(xs(1), xs(nXs))
        return
      end if

      tmpX = xs(1)
      do iXs = 2, nXs - 1
        if(xs(iXs) /= tmpX)then
          pivot = min(xs(iXs), tmpX)
          return
        end if
      end do

      pivot = huge(pivot)
      isUniform = .true.
    end function get_pivotIntegerDim0KindINT64

    function merge_sortIntegerDim0KindINT64(xs) result(xsSorted)
      Integer(kind = INT64), intent(in):: xs(:)
      Integer(kind = INT64), allocatable:: xsSorted(:)

      xsSorted = xs
      call merge_sortingIntegerDim0KindINT64(xsSorted)
    end function merge_sortIntegerDim0KindINT64

    subroutine merge_sortingIntegerDim0KindINT64(xs)
      Integer(kind = INT64), intent(inout):: xs(:)

      RAISE_IF(any(is_nan(xs)))
      call merge_sorting_substanceIntegerDim0KindINT64(xs)
    end subroutine merge_sortingIntegerDim0KindINT64

    recursive subroutine merge_sorting_substanceIntegerDim0KindINT64(xs)
      Integer(kind = INT64), intent(inout):: xs(:)
      Integer(kind = INT64), allocatable:: xsL(:), xsR(:)
      Integer(kind = INT64):: nXs

      nXs = size(xs, dim = 1, kind = kind(nXs))
      select case(nXs)
      case(:1)
        ! Nothing to do.
      case(2)
        call sorting_2(xs)
      case(3)
        call sorting_3(xs)
      case default
        xsL = xs(1:nXs/2)
        xsR = xs((nXs/2 + 1):nXs)
        call merge_sorting_substance(xsL)
        call merge_sorting_substance(xsR)
        call merge_sorted_lists(xsL, xsR, xs)
      end select
    end subroutine merge_sorting_substanceIntegerDim0KindINT64

    ! Merge sorted 1-D array xs and ys into zs.
    subroutine merge_sorted_listsIntegerDim0KindINT64(xs, ys, zs)
      Integer(kind = INT64), intent(in):: xs(:), ys(:)
      Integer(kind = INT64), intent(out):: zs(:)
      Integer(kind = INT64):: iXs, nXs, iYs, nYs, iZs, nZs

      nXs = size(xs, dim = 1, kind = kind(nXs))
      nYs = size(ys, dim = 1, kind = kind(nYs))
      nZs = size(zs, dim = 1, kind = kind(nZs))

      ASSERT(nXs + nYs == nZs)
      if(nXs < 1)then
         zs = ys
         return
      end if
      if(nYs < 1)then
         zs = xs
         return
      end if

      iXs = 1
      iYs = 1
      iZs = 1
      do while(iXs <= nXs .and. iYs <= nYs)
        if(xs(iXs) <= ys(iYs))then
          zs(iZs) = xs(iXs)
          iXs = iXs + 1
        else
          zs(iZs) = ys(iYs)
          iYs = iYs + 1
        end if
        iZs = iZs + 1
      end do

      if(iXs <= nXs)then
        zs(iZs:nZs) = xs(iXs:nXs)
      else
        zs(iZs:nZs) = ys(iYs:nYs)
      end if
    end subroutine merge_sorted_listsIntegerDim0KindINT64

    pure subroutine sorting_3IntegerDim0KindINT64(xs)
      Integer(kind = INT64), intent(inout):: xs(1:3)

      if(xs(3) < xs(1)) call swapping(xs(1), xs(3))
      if(xs(3) < xs(2))then
        call swapping(xs(2), xs(3))
      else if(xs(2) < xs(1))then
        call swapping(xs(1), xs(2))
      end if
    end subroutine sorting_3IntegerDim0KindINT64

    pure subroutine sorting_2IntegerDim0KindINT64(xs)
      Integer(kind = INT64), intent(inout):: xs(1:2)

      if(xs(2) < xs(1)) call swapping(xs(1), xs(2))
    end subroutine sorting_2IntegerDim0KindINT64

    elemental subroutine swappingIntegerDim0KindINT64(a, b)
      Integer(kind = INT64), intent(inout):: a, b
      Integer(kind = INT64):: swap

      swap = b
      b = a
      a = swap
    end subroutine swappingIntegerDim0KindINT64
    function quick_sortRealDim0KindREAL32(xs) result(xsSorted)
      Real(kind = REAL32), allocatable:: xsSorted(:)
      Real(kind = REAL32), intent(in):: xs(:)

      xsSorted = xs
      call quick_sorting(xsSorted)
    end function quick_sortRealDim0KindREAL32

    subroutine quick_sortingRealDim0KindREAL32(xs)
      Real(kind = REAL32), intent(inout):: xs(:)
      Real(kind = REAL32):: pivot
      type(IntegerDim0KindINT64Stack):: iLs, iRs
      Integer(kind = INT64):: iL, iR, iLOriginal, iROriginal
      Logical:: isUniform

      RAISE_IF(any(is_nan(xs)))

      call push_stack(iLs, 1_INT64)
      call push_stack(iRs, size(xs, dim = 1, kind = kind(iR)))

      do while(pop_stack(iRs, iR))    ! Loop for all segments on the stacks.
        ASSERT(pop_stack(iLs, iL))

        iLOriginal = iL      ! Left most index of the current segment.
        do while(iLOriginal < iR) ! While current segment remains
          select case(iR - iL)
          case(-1, 0)
            exit
          case(1)
            call sorting_2(xs(iL:iR))
            exit
          case(2)
            call sorting_3(xs(iL:iR))
            exit
          case(3:)
            pivot = get_pivot(xs(iL:iR), isUniform)
            if(isUniform) exit

            iROriginal = iR  ! Right most index of the current segment
            loop_to_swap: do ! Within the segment
              do while(xs(iR) > pivot)
                iR = iR - 1
              end do
              do while(xs(iL) <= pivot)
                if(iL >= iR)then
                  call push_stack(iLs, iR + 1)
                  call push_stack(iRs, iROriginal)
                  iL = iLOriginal
                  exit loop_to_swap
                end if

                iL = iL + 1
              end do

              call swapping(xs(iL), xs(iR))
            end do loop_to_swap
          case default
            RAISE('Must not happen.')
          end select
        end do
      end do
    end subroutine quick_sortingRealDim0KindREAL32

    function get_pivotRealDim0KindREAL32(xs, isUniform) result(pivot)
      Real(kind = REAL32):: pivot
      Real(kind = REAL32), intent(in):: xs(:)
      Logical, intent(out):: isUniform
      Real(kind = REAL32):: tmpX
      Integer(kind = INT64):: iXs, nXs

      isUniform = .false.

      nXs = size(xs, dim = 1, kind = kind(nXs))

      if(xs(1) /= xs(nXs))then
        pivot = min(xs(1), xs(nXs))
        return
      end if

      tmpX = xs(1)
      do iXs = 2, nXs - 1
        if(xs(iXs) /= tmpX)then
          pivot = min(xs(iXs), tmpX)
          return
        end if
      end do

      pivot = huge(pivot)
      isUniform = .true.
    end function get_pivotRealDim0KindREAL32

    function merge_sortRealDim0KindREAL32(xs) result(xsSorted)
      Real(kind = REAL32), intent(in):: xs(:)
      Real(kind = REAL32), allocatable:: xsSorted(:)

      xsSorted = xs
      call merge_sortingRealDim0KindREAL32(xsSorted)
    end function merge_sortRealDim0KindREAL32

    subroutine merge_sortingRealDim0KindREAL32(xs)
      Real(kind = REAL32), intent(inout):: xs(:)

      RAISE_IF(any(is_nan(xs)))
      call merge_sorting_substanceRealDim0KindREAL32(xs)
    end subroutine merge_sortingRealDim0KindREAL32

    recursive subroutine merge_sorting_substanceRealDim0KindREAL32(xs)
      Real(kind = REAL32), intent(inout):: xs(:)
      Real(kind = REAL32), allocatable:: xsL(:), xsR(:)
      Integer(kind = INT64):: nXs

      nXs = size(xs, dim = 1, kind = kind(nXs))
      select case(nXs)
      case(:1)
        ! Nothing to do.
      case(2)
        call sorting_2(xs)
      case(3)
        call sorting_3(xs)
      case default
        xsL = xs(1:nXs/2)
        xsR = xs((nXs/2 + 1):nXs)
        call merge_sorting_substance(xsL)
        call merge_sorting_substance(xsR)
        call merge_sorted_lists(xsL, xsR, xs)
      end select
    end subroutine merge_sorting_substanceRealDim0KindREAL32

    ! Merge sorted 1-D array xs and ys into zs.
    subroutine merge_sorted_listsRealDim0KindREAL32(xs, ys, zs)
      Real(kind = REAL32), intent(in):: xs(:), ys(:)
      Real(kind = REAL32), intent(out):: zs(:)
      Integer(kind = INT64):: iXs, nXs, iYs, nYs, iZs, nZs

      nXs = size(xs, dim = 1, kind = kind(nXs))
      nYs = size(ys, dim = 1, kind = kind(nYs))
      nZs = size(zs, dim = 1, kind = kind(nZs))

      ASSERT(nXs + nYs == nZs)
      if(nXs < 1)then
         zs = ys
         return
      end if
      if(nYs < 1)then
         zs = xs
         return
      end if

      iXs = 1
      iYs = 1
      iZs = 1
      do while(iXs <= nXs .and. iYs <= nYs)
        if(xs(iXs) <= ys(iYs))then
          zs(iZs) = xs(iXs)
          iXs = iXs + 1
        else
          zs(iZs) = ys(iYs)
          iYs = iYs + 1
        end if
        iZs = iZs + 1
      end do

      if(iXs <= nXs)then
        zs(iZs:nZs) = xs(iXs:nXs)
      else
        zs(iZs:nZs) = ys(iYs:nYs)
      end if
    end subroutine merge_sorted_listsRealDim0KindREAL32

    pure subroutine sorting_3RealDim0KindREAL32(xs)
      Real(kind = REAL32), intent(inout):: xs(1:3)

      if(xs(3) < xs(1)) call swapping(xs(1), xs(3))
      if(xs(3) < xs(2))then
        call swapping(xs(2), xs(3))
      else if(xs(2) < xs(1))then
        call swapping(xs(1), xs(2))
      end if
    end subroutine sorting_3RealDim0KindREAL32

    pure subroutine sorting_2RealDim0KindREAL32(xs)
      Real(kind = REAL32), intent(inout):: xs(1:2)

      if(xs(2) < xs(1)) call swapping(xs(1), xs(2))
    end subroutine sorting_2RealDim0KindREAL32

    elemental subroutine swappingRealDim0KindREAL32(a, b)
      Real(kind = REAL32), intent(inout):: a, b
      Real(kind = REAL32):: swap

      swap = b
      b = a
      a = swap
    end subroutine swappingRealDim0KindREAL32
    function quick_sortRealDim0KindREAL64(xs) result(xsSorted)
      Real(kind = REAL64), allocatable:: xsSorted(:)
      Real(kind = REAL64), intent(in):: xs(:)

      xsSorted = xs
      call quick_sorting(xsSorted)
    end function quick_sortRealDim0KindREAL64

    subroutine quick_sortingRealDim0KindREAL64(xs)
      Real(kind = REAL64), intent(inout):: xs(:)
      Real(kind = REAL64):: pivot
      type(IntegerDim0KindINT64Stack):: iLs, iRs
      Integer(kind = INT64):: iL, iR, iLOriginal, iROriginal
      Logical:: isUniform

      RAISE_IF(any(is_nan(xs)))

      call push_stack(iLs, 1_INT64)
      call push_stack(iRs, size(xs, dim = 1, kind = kind(iR)))

      do while(pop_stack(iRs, iR))    ! Loop for all segments on the stacks.
        ASSERT(pop_stack(iLs, iL))

        iLOriginal = iL      ! Left most index of the current segment.
        do while(iLOriginal < iR) ! While current segment remains
          select case(iR - iL)
          case(-1, 0)
            exit
          case(1)
            call sorting_2(xs(iL:iR))
            exit
          case(2)
            call sorting_3(xs(iL:iR))
            exit
          case(3:)
            pivot = get_pivot(xs(iL:iR), isUniform)
            if(isUniform) exit

            iROriginal = iR  ! Right most index of the current segment
            loop_to_swap: do ! Within the segment
              do while(xs(iR) > pivot)
                iR = iR - 1
              end do
              do while(xs(iL) <= pivot)
                if(iL >= iR)then
                  call push_stack(iLs, iR + 1)
                  call push_stack(iRs, iROriginal)
                  iL = iLOriginal
                  exit loop_to_swap
                end if

                iL = iL + 1
              end do

              call swapping(xs(iL), xs(iR))
            end do loop_to_swap
          case default
            RAISE('Must not happen.')
          end select
        end do
      end do
    end subroutine quick_sortingRealDim0KindREAL64

    function get_pivotRealDim0KindREAL64(xs, isUniform) result(pivot)
      Real(kind = REAL64):: pivot
      Real(kind = REAL64), intent(in):: xs(:)
      Logical, intent(out):: isUniform
      Real(kind = REAL64):: tmpX
      Integer(kind = INT64):: iXs, nXs

      isUniform = .false.

      nXs = size(xs, dim = 1, kind = kind(nXs))

      if(xs(1) /= xs(nXs))then
        pivot = min(xs(1), xs(nXs))
        return
      end if

      tmpX = xs(1)
      do iXs = 2, nXs - 1
        if(xs(iXs) /= tmpX)then
          pivot = min(xs(iXs), tmpX)
          return
        end if
      end do

      pivot = huge(pivot)
      isUniform = .true.
    end function get_pivotRealDim0KindREAL64

    function merge_sortRealDim0KindREAL64(xs) result(xsSorted)
      Real(kind = REAL64), intent(in):: xs(:)
      Real(kind = REAL64), allocatable:: xsSorted(:)

      xsSorted = xs
      call merge_sortingRealDim0KindREAL64(xsSorted)
    end function merge_sortRealDim0KindREAL64

    subroutine merge_sortingRealDim0KindREAL64(xs)
      Real(kind = REAL64), intent(inout):: xs(:)

      RAISE_IF(any(is_nan(xs)))
      call merge_sorting_substanceRealDim0KindREAL64(xs)
    end subroutine merge_sortingRealDim0KindREAL64

    recursive subroutine merge_sorting_substanceRealDim0KindREAL64(xs)
      Real(kind = REAL64), intent(inout):: xs(:)
      Real(kind = REAL64), allocatable:: xsL(:), xsR(:)
      Integer(kind = INT64):: nXs

      nXs = size(xs, dim = 1, kind = kind(nXs))
      select case(nXs)
      case(:1)
        ! Nothing to do.
      case(2)
        call sorting_2(xs)
      case(3)
        call sorting_3(xs)
      case default
        xsL = xs(1:nXs/2)
        xsR = xs((nXs/2 + 1):nXs)
        call merge_sorting_substance(xsL)
        call merge_sorting_substance(xsR)
        call merge_sorted_lists(xsL, xsR, xs)
      end select
    end subroutine merge_sorting_substanceRealDim0KindREAL64

    ! Merge sorted 1-D array xs and ys into zs.
    subroutine merge_sorted_listsRealDim0KindREAL64(xs, ys, zs)
      Real(kind = REAL64), intent(in):: xs(:), ys(:)
      Real(kind = REAL64), intent(out):: zs(:)
      Integer(kind = INT64):: iXs, nXs, iYs, nYs, iZs, nZs

      nXs = size(xs, dim = 1, kind = kind(nXs))
      nYs = size(ys, dim = 1, kind = kind(nYs))
      nZs = size(zs, dim = 1, kind = kind(nZs))

      ASSERT(nXs + nYs == nZs)
      if(nXs < 1)then
         zs = ys
         return
      end if
      if(nYs < 1)then
         zs = xs
         return
      end if

      iXs = 1
      iYs = 1
      iZs = 1
      do while(iXs <= nXs .and. iYs <= nYs)
        if(xs(iXs) <= ys(iYs))then
          zs(iZs) = xs(iXs)
          iXs = iXs + 1
        else
          zs(iZs) = ys(iYs)
          iYs = iYs + 1
        end if
        iZs = iZs + 1
      end do

      if(iXs <= nXs)then
        zs(iZs:nZs) = xs(iXs:nXs)
      else
        zs(iZs:nZs) = ys(iYs:nYs)
      end if
    end subroutine merge_sorted_listsRealDim0KindREAL64

    pure subroutine sorting_3RealDim0KindREAL64(xs)
      Real(kind = REAL64), intent(inout):: xs(1:3)

      if(xs(3) < xs(1)) call swapping(xs(1), xs(3))
      if(xs(3) < xs(2))then
        call swapping(xs(2), xs(3))
      else if(xs(2) < xs(1))then
        call swapping(xs(1), xs(2))
      end if
    end subroutine sorting_3RealDim0KindREAL64

    pure subroutine sorting_2RealDim0KindREAL64(xs)
      Real(kind = REAL64), intent(inout):: xs(1:2)

      if(xs(2) < xs(1)) call swapping(xs(1), xs(2))
    end subroutine sorting_2RealDim0KindREAL64

    elemental subroutine swappingRealDim0KindREAL64(a, b)
      Real(kind = REAL64), intent(inout):: a, b
      Real(kind = REAL64):: swap

      swap = b
      b = a
      a = swap
    end subroutine swappingRealDim0KindREAL64
    function quick_sortRealDim0KindREAL128(xs) result(xsSorted)
      Real(kind = REAL128), allocatable:: xsSorted(:)
      Real(kind = REAL128), intent(in):: xs(:)

      xsSorted = xs
      call quick_sorting(xsSorted)
    end function quick_sortRealDim0KindREAL128

    subroutine quick_sortingRealDim0KindREAL128(xs)
      Real(kind = REAL128), intent(inout):: xs(:)
      Real(kind = REAL128):: pivot
      type(IntegerDim0KindINT64Stack):: iLs, iRs
      Integer(kind = INT64):: iL, iR, iLOriginal, iROriginal
      Logical:: isUniform

      RAISE_IF(any(is_nan(xs)))

      call push_stack(iLs, 1_INT64)
      call push_stack(iRs, size(xs, dim = 1, kind = kind(iR)))

      do while(pop_stack(iRs, iR))    ! Loop for all segments on the stacks.
        ASSERT(pop_stack(iLs, iL))

        iLOriginal = iL      ! Left most index of the current segment.
        do while(iLOriginal < iR) ! While current segment remains
          select case(iR - iL)
          case(-1, 0)
            exit
          case(1)
            call sorting_2(xs(iL:iR))
            exit
          case(2)
            call sorting_3(xs(iL:iR))
            exit
          case(3:)
            pivot = get_pivot(xs(iL:iR), isUniform)
            if(isUniform) exit

            iROriginal = iR  ! Right most index of the current segment
            loop_to_swap: do ! Within the segment
              do while(xs(iR) > pivot)
                iR = iR - 1
              end do
              do while(xs(iL) <= pivot)
                if(iL >= iR)then
                  call push_stack(iLs, iR + 1)
                  call push_stack(iRs, iROriginal)
                  iL = iLOriginal
                  exit loop_to_swap
                end if

                iL = iL + 1
              end do

              call swapping(xs(iL), xs(iR))
            end do loop_to_swap
          case default
            RAISE('Must not happen.')
          end select
        end do
      end do
    end subroutine quick_sortingRealDim0KindREAL128

    function get_pivotRealDim0KindREAL128(xs, isUniform) result(pivot)
      Real(kind = REAL128):: pivot
      Real(kind = REAL128), intent(in):: xs(:)
      Logical, intent(out):: isUniform
      Real(kind = REAL128):: tmpX
      Integer(kind = INT64):: iXs, nXs

      isUniform = .false.

      nXs = size(xs, dim = 1, kind = kind(nXs))

      if(xs(1) /= xs(nXs))then
        pivot = min(xs(1), xs(nXs))
        return
      end if

      tmpX = xs(1)
      do iXs = 2, nXs - 1
        if(xs(iXs) /= tmpX)then
          pivot = min(xs(iXs), tmpX)
          return
        end if
      end do

      pivot = huge(pivot)
      isUniform = .true.
    end function get_pivotRealDim0KindREAL128

    function merge_sortRealDim0KindREAL128(xs) result(xsSorted)
      Real(kind = REAL128), intent(in):: xs(:)
      Real(kind = REAL128), allocatable:: xsSorted(:)

      xsSorted = xs
      call merge_sortingRealDim0KindREAL128(xsSorted)
    end function merge_sortRealDim0KindREAL128

    subroutine merge_sortingRealDim0KindREAL128(xs)
      Real(kind = REAL128), intent(inout):: xs(:)

      RAISE_IF(any(is_nan(xs)))
      call merge_sorting_substanceRealDim0KindREAL128(xs)
    end subroutine merge_sortingRealDim0KindREAL128

    recursive subroutine merge_sorting_substanceRealDim0KindREAL128(xs)
      Real(kind = REAL128), intent(inout):: xs(:)
      Real(kind = REAL128), allocatable:: xsL(:), xsR(:)
      Integer(kind = INT64):: nXs

      nXs = size(xs, dim = 1, kind = kind(nXs))
      select case(nXs)
      case(:1)
        ! Nothing to do.
      case(2)
        call sorting_2(xs)
      case(3)
        call sorting_3(xs)
      case default
        xsL = xs(1:nXs/2)
        xsR = xs((nXs/2 + 1):nXs)
        call merge_sorting_substance(xsL)
        call merge_sorting_substance(xsR)
        call merge_sorted_lists(xsL, xsR, xs)
      end select
    end subroutine merge_sorting_substanceRealDim0KindREAL128

    ! Merge sorted 1-D array xs and ys into zs.
    subroutine merge_sorted_listsRealDim0KindREAL128(xs, ys, zs)
      Real(kind = REAL128), intent(in):: xs(:), ys(:)
      Real(kind = REAL128), intent(out):: zs(:)
      Integer(kind = INT64):: iXs, nXs, iYs, nYs, iZs, nZs

      nXs = size(xs, dim = 1, kind = kind(nXs))
      nYs = size(ys, dim = 1, kind = kind(nYs))
      nZs = size(zs, dim = 1, kind = kind(nZs))

      ASSERT(nXs + nYs == nZs)
      if(nXs < 1)then
         zs = ys
         return
      end if
      if(nYs < 1)then
         zs = xs
         return
      end if

      iXs = 1
      iYs = 1
      iZs = 1
      do while(iXs <= nXs .and. iYs <= nYs)
        if(xs(iXs) <= ys(iYs))then
          zs(iZs) = xs(iXs)
          iXs = iXs + 1
        else
          zs(iZs) = ys(iYs)
          iYs = iYs + 1
        end if
        iZs = iZs + 1
      end do

      if(iXs <= nXs)then
        zs(iZs:nZs) = xs(iXs:nXs)
      else
        zs(iZs:nZs) = ys(iYs:nYs)
      end if
    end subroutine merge_sorted_listsRealDim0KindREAL128

    pure subroutine sorting_3RealDim0KindREAL128(xs)
      Real(kind = REAL128), intent(inout):: xs(1:3)

      if(xs(3) < xs(1)) call swapping(xs(1), xs(3))
      if(xs(3) < xs(2))then
        call swapping(xs(2), xs(3))
      else if(xs(2) < xs(1))then
        call swapping(xs(1), xs(2))
      end if
    end subroutine sorting_3RealDim0KindREAL128

    pure subroutine sorting_2RealDim0KindREAL128(xs)
      Real(kind = REAL128), intent(inout):: xs(1:2)

      if(xs(2) < xs(1)) call swapping(xs(1), xs(2))
    end subroutine sorting_2RealDim0KindREAL128

    elemental subroutine swappingRealDim0KindREAL128(a, b)
      Real(kind = REAL128), intent(inout):: a, b
      Real(kind = REAL128):: swap

      swap = b
      b = a
      a = swap
    end subroutine swappingRealDim0KindREAL128
end module lib_sort
