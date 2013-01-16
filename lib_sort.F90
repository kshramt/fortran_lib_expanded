
#include "utils.h"
module lib_sort
  use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
  USE_UTILS_H
  use lib_comparable, only: is_nan, is_infinity

  use lib_stack, only: push, pop
  use lib_stack, only: IntegerDim0KindINT64Stack

  implicit none

  private

  public:: sort_quick, sorting_quick

    interface sort_quick
      module procedure sort_quickIntegerDim0KindINT8
    end interface sort_quick

    interface sorting_quick
      module procedure sorting_quickIntegerDim0KindINT8
    end interface sorting_quick

    interface get_pib
      module procedure get_pibIntegerDim0KindINT8
    end interface get_pib

    interface sorting_2
      module procedure sorting_2IntegerDim0KindINT8
    end interface sorting_2

    interface sorting_3
      module procedure sorting_3IntegerDim0KindINT8
    end interface sorting_3

    interface swapping
      module procedure swappingIntegerDim0KindINT8
    end interface swapping
    interface sort_quick
      module procedure sort_quickIntegerDim0KindINT16
    end interface sort_quick

    interface sorting_quick
      module procedure sorting_quickIntegerDim0KindINT16
    end interface sorting_quick

    interface get_pib
      module procedure get_pibIntegerDim0KindINT16
    end interface get_pib

    interface sorting_2
      module procedure sorting_2IntegerDim0KindINT16
    end interface sorting_2

    interface sorting_3
      module procedure sorting_3IntegerDim0KindINT16
    end interface sorting_3

    interface swapping
      module procedure swappingIntegerDim0KindINT16
    end interface swapping
    interface sort_quick
      module procedure sort_quickIntegerDim0KindINT32
    end interface sort_quick

    interface sorting_quick
      module procedure sorting_quickIntegerDim0KindINT32
    end interface sorting_quick

    interface get_pib
      module procedure get_pibIntegerDim0KindINT32
    end interface get_pib

    interface sorting_2
      module procedure sorting_2IntegerDim0KindINT32
    end interface sorting_2

    interface sorting_3
      module procedure sorting_3IntegerDim0KindINT32
    end interface sorting_3

    interface swapping
      module procedure swappingIntegerDim0KindINT32
    end interface swapping
    interface sort_quick
      module procedure sort_quickIntegerDim0KindINT64
    end interface sort_quick

    interface sorting_quick
      module procedure sorting_quickIntegerDim0KindINT64
    end interface sorting_quick

    interface get_pib
      module procedure get_pibIntegerDim0KindINT64
    end interface get_pib

    interface sorting_2
      module procedure sorting_2IntegerDim0KindINT64
    end interface sorting_2

    interface sorting_3
      module procedure sorting_3IntegerDim0KindINT64
    end interface sorting_3

    interface swapping
      module procedure swappingIntegerDim0KindINT64
    end interface swapping
    interface sort_quick
      module procedure sort_quickRealDim0KindREAL32
    end interface sort_quick

    interface sorting_quick
      module procedure sorting_quickRealDim0KindREAL32
    end interface sorting_quick

    interface get_pib
      module procedure get_pibRealDim0KindREAL32
    end interface get_pib

    interface sorting_2
      module procedure sorting_2RealDim0KindREAL32
    end interface sorting_2

    interface sorting_3
      module procedure sorting_3RealDim0KindREAL32
    end interface sorting_3

    interface swapping
      module procedure swappingRealDim0KindREAL32
    end interface swapping
    interface sort_quick
      module procedure sort_quickRealDim0KindREAL64
    end interface sort_quick

    interface sorting_quick
      module procedure sorting_quickRealDim0KindREAL64
    end interface sorting_quick

    interface get_pib
      module procedure get_pibRealDim0KindREAL64
    end interface get_pib

    interface sorting_2
      module procedure sorting_2RealDim0KindREAL64
    end interface sorting_2

    interface sorting_3
      module procedure sorting_3RealDim0KindREAL64
    end interface sorting_3

    interface swapping
      module procedure swappingRealDim0KindREAL64
    end interface swapping
    interface sort_quick
      module procedure sort_quickRealDim0KindREAL128
    end interface sort_quick

    interface sorting_quick
      module procedure sorting_quickRealDim0KindREAL128
    end interface sorting_quick

    interface get_pib
      module procedure get_pibRealDim0KindREAL128
    end interface get_pib

    interface sorting_2
      module procedure sorting_2RealDim0KindREAL128
    end interface sorting_2

    interface sorting_3
      module procedure sorting_3RealDim0KindREAL128
    end interface sorting_3

    interface swapping
      module procedure swappingRealDim0KindREAL128
    end interface swapping

contains

    function sort_quickIntegerDim0KindINT8(xs) result(xsSorted)
      Integer(kind = INT8), allocatable:: xsSorted(:)
      Integer(kind = INT8), intent(in):: xs(:)

      xsSorted = xs
      call sorting_quick(xsSorted)
    end function sort_quickIntegerDim0KindINT8

    subroutine sorting_quickIntegerDim0KindINT8(xs)
      Integer(kind = INT8), intent(inout):: xs(:)
      Integer(kind = INT8):: pib
      type(IntegerDim0KindINT64Stack):: iLs, iRs
      Integer(kind = INT64):: iL, iR, iLOriginal, iROriginal
      Logical:: isUniform

      raise_if(any(is_nan(xs)))

      call push(iLs, 1_INT64)
      call push(iRs, size(xs, dim = 1, kind = INT64))

      do while(pop(iRs, iR))    ! Loop for all segments on the stacks.
        assert(pop(iLs, iL))

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
            pib = get_pib(xs(iL:iR), isUniform)
            if(isUniform) exit

            iROriginal = iR  ! Right most index of the current segment
            loop_to_swap: do ! Within the segment
              do while(xs(iR) > pib)
                iR = iR - 1
              end do
              do while(xs(iL) <= pib)
                if(iL >= iR)then
                  call push(iLs, iR + 1)
                  call push(iRs, iROriginal)
                  iL = iLOriginal
                  exit loop_to_swap
                end if

                iL = iL + 1
              end do

              call swapping(xs(iL), xs(iR))
            end do loop_to_swap
          case default
            raise('Must not happen.')
          end select
        end do
      end do
    end subroutine sorting_quickIntegerDim0KindINT8

    function get_pibIntegerDim0KindINT8(xs, isUniform) result(pib)
      Integer(kind = INT8):: pib
      Integer(kind = INT8), intent(in):: xs(:)
      Logical, intent(out):: isUniform
      Integer(kind = INT8):: xsMin, xsMax
      Integer(kind = INT64):: iL, iR, nXs

      nXs = size(xs, dim = 1, kind = INT64)
      if(xs(1) <= xs(nXs))then
        xsMin = xs(1)
        xsMax = xs(nXs)
      else
        xsMin = xs(nXs)
        xsMax = xs(1)
      end if
      iL = 1 + 1
      iR = nXs - 1
      do while(iL <= iR)
        if(xs(iL) <= xs(iR))then
          if(xs(iL) < xsMin) xsMin = xs(iL)
          if(xs(iR) > xsMax) xsMax = xs(iR)
        else if(xs(iL) > xs(iR))then
          if(xs(iR) < xsMin) xsMin = xs(iR)
          if(xs(iL) > xsMax) xsMax = xs(iL)
        end if

        if(xsMin < xsMax) exit
        iL = iL + 1
        iR = iR - 1
      end do

      isUniform = (xsMax <= xsMin)
      if(isUniform)then
        pib = -huge(pib)
        return
      end if

      if(is_infinity(xsMax))then
        pib = huge(xsMax)
      elseif(is_infinity(-xsMin))then
        pib = -huge(xsMin)
      else
        pib = (xsMin/2) + (xsMax/2)

        if(pib >= xsMax .or. pib < xsMin) pib = xsMin ! I'm not sure whether the second condition could be true.
      end if
    end function get_pibIntegerDim0KindINT8

    subroutine sorting_3IntegerDim0KindINT8(xs)
      Integer(kind = INT8), intent(inout):: xs(1:3)

      debug_raise_if(is_nan(xs(1)))
      debug_raise_if(is_nan(xs(2)))
      debug_raise_if(is_nan(xs(3)))

      if(xs(3) < xs(1)) call swapping(xs(1), xs(3))
      if(xs(3) < xs(2))then
        call swapping(xs(2), xs(3))
      else if(xs(2) < xs(1))then
        call swapping(xs(1), xs(2))
      end if
    end subroutine sorting_3IntegerDim0KindINT8

    subroutine sorting_2IntegerDim0KindINT8(xs)
      Integer(kind = INT8), intent(inout):: xs(1:2)

      debug_raise_if(is_nan(xs(1)))
      debug_raise_if(is_nan(xs(2)))

      if(xs(2) < xs(1)) call swapping(xs(1), xs(2))
    end subroutine sorting_2IntegerDim0KindINT8

    subroutine swappingIntegerDim0KindINT8(a, b)
      Integer(kind = INT8), intent(inout):: a, b
      Integer(kind = INT8):: swap

      swap = b
      b = a
      a = swap
    end subroutine swappingIntegerDim0KindINT8
    function sort_quickIntegerDim0KindINT16(xs) result(xsSorted)
      Integer(kind = INT16), allocatable:: xsSorted(:)
      Integer(kind = INT16), intent(in):: xs(:)

      xsSorted = xs
      call sorting_quick(xsSorted)
    end function sort_quickIntegerDim0KindINT16

    subroutine sorting_quickIntegerDim0KindINT16(xs)
      Integer(kind = INT16), intent(inout):: xs(:)
      Integer(kind = INT16):: pib
      type(IntegerDim0KindINT64Stack):: iLs, iRs
      Integer(kind = INT64):: iL, iR, iLOriginal, iROriginal
      Logical:: isUniform

      raise_if(any(is_nan(xs)))

      call push(iLs, 1_INT64)
      call push(iRs, size(xs, dim = 1, kind = INT64))

      do while(pop(iRs, iR))    ! Loop for all segments on the stacks.
        assert(pop(iLs, iL))

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
            pib = get_pib(xs(iL:iR), isUniform)
            if(isUniform) exit

            iROriginal = iR  ! Right most index of the current segment
            loop_to_swap: do ! Within the segment
              do while(xs(iR) > pib)
                iR = iR - 1
              end do
              do while(xs(iL) <= pib)
                if(iL >= iR)then
                  call push(iLs, iR + 1)
                  call push(iRs, iROriginal)
                  iL = iLOriginal
                  exit loop_to_swap
                end if

                iL = iL + 1
              end do

              call swapping(xs(iL), xs(iR))
            end do loop_to_swap
          case default
            raise('Must not happen.')
          end select
        end do
      end do
    end subroutine sorting_quickIntegerDim0KindINT16

    function get_pibIntegerDim0KindINT16(xs, isUniform) result(pib)
      Integer(kind = INT16):: pib
      Integer(kind = INT16), intent(in):: xs(:)
      Logical, intent(out):: isUniform
      Integer(kind = INT16):: xsMin, xsMax
      Integer(kind = INT64):: iL, iR, nXs

      nXs = size(xs, dim = 1, kind = INT64)
      if(xs(1) <= xs(nXs))then
        xsMin = xs(1)
        xsMax = xs(nXs)
      else
        xsMin = xs(nXs)
        xsMax = xs(1)
      end if
      iL = 1 + 1
      iR = nXs - 1
      do while(iL <= iR)
        if(xs(iL) <= xs(iR))then
          if(xs(iL) < xsMin) xsMin = xs(iL)
          if(xs(iR) > xsMax) xsMax = xs(iR)
        else if(xs(iL) > xs(iR))then
          if(xs(iR) < xsMin) xsMin = xs(iR)
          if(xs(iL) > xsMax) xsMax = xs(iL)
        end if

        if(xsMin < xsMax) exit
        iL = iL + 1
        iR = iR - 1
      end do

      isUniform = (xsMax <= xsMin)
      if(isUniform)then
        pib = -huge(pib)
        return
      end if

      if(is_infinity(xsMax))then
        pib = huge(xsMax)
      elseif(is_infinity(-xsMin))then
        pib = -huge(xsMin)
      else
        pib = (xsMin/2) + (xsMax/2)

        if(pib >= xsMax .or. pib < xsMin) pib = xsMin ! I'm not sure whether the second condition could be true.
      end if
    end function get_pibIntegerDim0KindINT16

    subroutine sorting_3IntegerDim0KindINT16(xs)
      Integer(kind = INT16), intent(inout):: xs(1:3)

      debug_raise_if(is_nan(xs(1)))
      debug_raise_if(is_nan(xs(2)))
      debug_raise_if(is_nan(xs(3)))

      if(xs(3) < xs(1)) call swapping(xs(1), xs(3))
      if(xs(3) < xs(2))then
        call swapping(xs(2), xs(3))
      else if(xs(2) < xs(1))then
        call swapping(xs(1), xs(2))
      end if
    end subroutine sorting_3IntegerDim0KindINT16

    subroutine sorting_2IntegerDim0KindINT16(xs)
      Integer(kind = INT16), intent(inout):: xs(1:2)

      debug_raise_if(is_nan(xs(1)))
      debug_raise_if(is_nan(xs(2)))

      if(xs(2) < xs(1)) call swapping(xs(1), xs(2))
    end subroutine sorting_2IntegerDim0KindINT16

    subroutine swappingIntegerDim0KindINT16(a, b)
      Integer(kind = INT16), intent(inout):: a, b
      Integer(kind = INT16):: swap

      swap = b
      b = a
      a = swap
    end subroutine swappingIntegerDim0KindINT16
    function sort_quickIntegerDim0KindINT32(xs) result(xsSorted)
      Integer(kind = INT32), allocatable:: xsSorted(:)
      Integer(kind = INT32), intent(in):: xs(:)

      xsSorted = xs
      call sorting_quick(xsSorted)
    end function sort_quickIntegerDim0KindINT32

    subroutine sorting_quickIntegerDim0KindINT32(xs)
      Integer(kind = INT32), intent(inout):: xs(:)
      Integer(kind = INT32):: pib
      type(IntegerDim0KindINT64Stack):: iLs, iRs
      Integer(kind = INT64):: iL, iR, iLOriginal, iROriginal
      Logical:: isUniform

      raise_if(any(is_nan(xs)))

      call push(iLs, 1_INT64)
      call push(iRs, size(xs, dim = 1, kind = INT64))

      do while(pop(iRs, iR))    ! Loop for all segments on the stacks.
        assert(pop(iLs, iL))

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
            pib = get_pib(xs(iL:iR), isUniform)
            if(isUniform) exit

            iROriginal = iR  ! Right most index of the current segment
            loop_to_swap: do ! Within the segment
              do while(xs(iR) > pib)
                iR = iR - 1
              end do
              do while(xs(iL) <= pib)
                if(iL >= iR)then
                  call push(iLs, iR + 1)
                  call push(iRs, iROriginal)
                  iL = iLOriginal
                  exit loop_to_swap
                end if

                iL = iL + 1
              end do

              call swapping(xs(iL), xs(iR))
            end do loop_to_swap
          case default
            raise('Must not happen.')
          end select
        end do
      end do
    end subroutine sorting_quickIntegerDim0KindINT32

    function get_pibIntegerDim0KindINT32(xs, isUniform) result(pib)
      Integer(kind = INT32):: pib
      Integer(kind = INT32), intent(in):: xs(:)
      Logical, intent(out):: isUniform
      Integer(kind = INT32):: xsMin, xsMax
      Integer(kind = INT64):: iL, iR, nXs

      nXs = size(xs, dim = 1, kind = INT64)
      if(xs(1) <= xs(nXs))then
        xsMin = xs(1)
        xsMax = xs(nXs)
      else
        xsMin = xs(nXs)
        xsMax = xs(1)
      end if
      iL = 1 + 1
      iR = nXs - 1
      do while(iL <= iR)
        if(xs(iL) <= xs(iR))then
          if(xs(iL) < xsMin) xsMin = xs(iL)
          if(xs(iR) > xsMax) xsMax = xs(iR)
        else if(xs(iL) > xs(iR))then
          if(xs(iR) < xsMin) xsMin = xs(iR)
          if(xs(iL) > xsMax) xsMax = xs(iL)
        end if

        if(xsMin < xsMax) exit
        iL = iL + 1
        iR = iR - 1
      end do

      isUniform = (xsMax <= xsMin)
      if(isUniform)then
        pib = -huge(pib)
        return
      end if

      if(is_infinity(xsMax))then
        pib = huge(xsMax)
      elseif(is_infinity(-xsMin))then
        pib = -huge(xsMin)
      else
        pib = (xsMin/2) + (xsMax/2)

        if(pib >= xsMax .or. pib < xsMin) pib = xsMin ! I'm not sure whether the second condition could be true.
      end if
    end function get_pibIntegerDim0KindINT32

    subroutine sorting_3IntegerDim0KindINT32(xs)
      Integer(kind = INT32), intent(inout):: xs(1:3)

      debug_raise_if(is_nan(xs(1)))
      debug_raise_if(is_nan(xs(2)))
      debug_raise_if(is_nan(xs(3)))

      if(xs(3) < xs(1)) call swapping(xs(1), xs(3))
      if(xs(3) < xs(2))then
        call swapping(xs(2), xs(3))
      else if(xs(2) < xs(1))then
        call swapping(xs(1), xs(2))
      end if
    end subroutine sorting_3IntegerDim0KindINT32

    subroutine sorting_2IntegerDim0KindINT32(xs)
      Integer(kind = INT32), intent(inout):: xs(1:2)

      debug_raise_if(is_nan(xs(1)))
      debug_raise_if(is_nan(xs(2)))

      if(xs(2) < xs(1)) call swapping(xs(1), xs(2))
    end subroutine sorting_2IntegerDim0KindINT32

    subroutine swappingIntegerDim0KindINT32(a, b)
      Integer(kind = INT32), intent(inout):: a, b
      Integer(kind = INT32):: swap

      swap = b
      b = a
      a = swap
    end subroutine swappingIntegerDim0KindINT32
    function sort_quickIntegerDim0KindINT64(xs) result(xsSorted)
      Integer(kind = INT64), allocatable:: xsSorted(:)
      Integer(kind = INT64), intent(in):: xs(:)

      xsSorted = xs
      call sorting_quick(xsSorted)
    end function sort_quickIntegerDim0KindINT64

    subroutine sorting_quickIntegerDim0KindINT64(xs)
      Integer(kind = INT64), intent(inout):: xs(:)
      Integer(kind = INT64):: pib
      type(IntegerDim0KindINT64Stack):: iLs, iRs
      Integer(kind = INT64):: iL, iR, iLOriginal, iROriginal
      Logical:: isUniform

      raise_if(any(is_nan(xs)))

      call push(iLs, 1_INT64)
      call push(iRs, size(xs, dim = 1, kind = INT64))

      do while(pop(iRs, iR))    ! Loop for all segments on the stacks.
        assert(pop(iLs, iL))

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
            pib = get_pib(xs(iL:iR), isUniform)
            if(isUniform) exit

            iROriginal = iR  ! Right most index of the current segment
            loop_to_swap: do ! Within the segment
              do while(xs(iR) > pib)
                iR = iR - 1
              end do
              do while(xs(iL) <= pib)
                if(iL >= iR)then
                  call push(iLs, iR + 1)
                  call push(iRs, iROriginal)
                  iL = iLOriginal
                  exit loop_to_swap
                end if

                iL = iL + 1
              end do

              call swapping(xs(iL), xs(iR))
            end do loop_to_swap
          case default
            raise('Must not happen.')
          end select
        end do
      end do
    end subroutine sorting_quickIntegerDim0KindINT64

    function get_pibIntegerDim0KindINT64(xs, isUniform) result(pib)
      Integer(kind = INT64):: pib
      Integer(kind = INT64), intent(in):: xs(:)
      Logical, intent(out):: isUniform
      Integer(kind = INT64):: xsMin, xsMax
      Integer(kind = INT64):: iL, iR, nXs

      nXs = size(xs, dim = 1, kind = INT64)
      if(xs(1) <= xs(nXs))then
        xsMin = xs(1)
        xsMax = xs(nXs)
      else
        xsMin = xs(nXs)
        xsMax = xs(1)
      end if
      iL = 1 + 1
      iR = nXs - 1
      do while(iL <= iR)
        if(xs(iL) <= xs(iR))then
          if(xs(iL) < xsMin) xsMin = xs(iL)
          if(xs(iR) > xsMax) xsMax = xs(iR)
        else if(xs(iL) > xs(iR))then
          if(xs(iR) < xsMin) xsMin = xs(iR)
          if(xs(iL) > xsMax) xsMax = xs(iL)
        end if

        if(xsMin < xsMax) exit
        iL = iL + 1
        iR = iR - 1
      end do

      isUniform = (xsMax <= xsMin)
      if(isUniform)then
        pib = -huge(pib)
        return
      end if

      if(is_infinity(xsMax))then
        pib = huge(xsMax)
      elseif(is_infinity(-xsMin))then
        pib = -huge(xsMin)
      else
        pib = (xsMin/2) + (xsMax/2)

        if(pib >= xsMax .or. pib < xsMin) pib = xsMin ! I'm not sure whether the second condition could be true.
      end if
    end function get_pibIntegerDim0KindINT64

    subroutine sorting_3IntegerDim0KindINT64(xs)
      Integer(kind = INT64), intent(inout):: xs(1:3)

      debug_raise_if(is_nan(xs(1)))
      debug_raise_if(is_nan(xs(2)))
      debug_raise_if(is_nan(xs(3)))

      if(xs(3) < xs(1)) call swapping(xs(1), xs(3))
      if(xs(3) < xs(2))then
        call swapping(xs(2), xs(3))
      else if(xs(2) < xs(1))then
        call swapping(xs(1), xs(2))
      end if
    end subroutine sorting_3IntegerDim0KindINT64

    subroutine sorting_2IntegerDim0KindINT64(xs)
      Integer(kind = INT64), intent(inout):: xs(1:2)

      debug_raise_if(is_nan(xs(1)))
      debug_raise_if(is_nan(xs(2)))

      if(xs(2) < xs(1)) call swapping(xs(1), xs(2))
    end subroutine sorting_2IntegerDim0KindINT64

    subroutine swappingIntegerDim0KindINT64(a, b)
      Integer(kind = INT64), intent(inout):: a, b
      Integer(kind = INT64):: swap

      swap = b
      b = a
      a = swap
    end subroutine swappingIntegerDim0KindINT64
    function sort_quickRealDim0KindREAL32(xs) result(xsSorted)
      Real(kind = REAL32), allocatable:: xsSorted(:)
      Real(kind = REAL32), intent(in):: xs(:)

      xsSorted = xs
      call sorting_quick(xsSorted)
    end function sort_quickRealDim0KindREAL32

    subroutine sorting_quickRealDim0KindREAL32(xs)
      Real(kind = REAL32), intent(inout):: xs(:)
      Real(kind = REAL32):: pib
      type(IntegerDim0KindINT64Stack):: iLs, iRs
      Integer(kind = INT64):: iL, iR, iLOriginal, iROriginal
      Logical:: isUniform

      raise_if(any(is_nan(xs)))

      call push(iLs, 1_INT64)
      call push(iRs, size(xs, dim = 1, kind = INT64))

      do while(pop(iRs, iR))    ! Loop for all segments on the stacks.
        assert(pop(iLs, iL))

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
            pib = get_pib(xs(iL:iR), isUniform)
            if(isUniform) exit

            iROriginal = iR  ! Right most index of the current segment
            loop_to_swap: do ! Within the segment
              do while(xs(iR) > pib)
                iR = iR - 1
              end do
              do while(xs(iL) <= pib)
                if(iL >= iR)then
                  call push(iLs, iR + 1)
                  call push(iRs, iROriginal)
                  iL = iLOriginal
                  exit loop_to_swap
                end if

                iL = iL + 1
              end do

              call swapping(xs(iL), xs(iR))
            end do loop_to_swap
          case default
            raise('Must not happen.')
          end select
        end do
      end do
    end subroutine sorting_quickRealDim0KindREAL32

    function get_pibRealDim0KindREAL32(xs, isUniform) result(pib)
      Real(kind = REAL32):: pib
      Real(kind = REAL32), intent(in):: xs(:)
      Logical, intent(out):: isUniform
      Real(kind = REAL32):: xsMin, xsMax
      Integer(kind = INT64):: iL, iR, nXs

      nXs = size(xs, dim = 1, kind = INT64)
      if(xs(1) <= xs(nXs))then
        xsMin = xs(1)
        xsMax = xs(nXs)
      else
        xsMin = xs(nXs)
        xsMax = xs(1)
      end if
      iL = 1 + 1
      iR = nXs - 1
      do while(iL <= iR)
        if(xs(iL) <= xs(iR))then
          if(xs(iL) < xsMin) xsMin = xs(iL)
          if(xs(iR) > xsMax) xsMax = xs(iR)
        else if(xs(iL) > xs(iR))then
          if(xs(iR) < xsMin) xsMin = xs(iR)
          if(xs(iL) > xsMax) xsMax = xs(iL)
        end if

        if(xsMin < xsMax) exit
        iL = iL + 1
        iR = iR - 1
      end do

      isUniform = (xsMax <= xsMin)
      if(isUniform)then
        pib = -huge(pib)
        return
      end if

      if(is_infinity(xsMax))then
        pib = huge(xsMax)
      elseif(is_infinity(-xsMin))then
        pib = -huge(xsMin)
      else
        pib = (xsMin/2) + (xsMax/2)

        if(pib >= xsMax .or. pib < xsMin) pib = xsMin ! I'm not sure whether the second condition could be true.
      end if
    end function get_pibRealDim0KindREAL32

    subroutine sorting_3RealDim0KindREAL32(xs)
      Real(kind = REAL32), intent(inout):: xs(1:3)

      debug_raise_if(is_nan(xs(1)))
      debug_raise_if(is_nan(xs(2)))
      debug_raise_if(is_nan(xs(3)))

      if(xs(3) < xs(1)) call swapping(xs(1), xs(3))
      if(xs(3) < xs(2))then
        call swapping(xs(2), xs(3))
      else if(xs(2) < xs(1))then
        call swapping(xs(1), xs(2))
      end if
    end subroutine sorting_3RealDim0KindREAL32

    subroutine sorting_2RealDim0KindREAL32(xs)
      Real(kind = REAL32), intent(inout):: xs(1:2)

      debug_raise_if(is_nan(xs(1)))
      debug_raise_if(is_nan(xs(2)))

      if(xs(2) < xs(1)) call swapping(xs(1), xs(2))
    end subroutine sorting_2RealDim0KindREAL32

    subroutine swappingRealDim0KindREAL32(a, b)
      Real(kind = REAL32), intent(inout):: a, b
      Real(kind = REAL32):: swap

      swap = b
      b = a
      a = swap
    end subroutine swappingRealDim0KindREAL32
    function sort_quickRealDim0KindREAL64(xs) result(xsSorted)
      Real(kind = REAL64), allocatable:: xsSorted(:)
      Real(kind = REAL64), intent(in):: xs(:)

      xsSorted = xs
      call sorting_quick(xsSorted)
    end function sort_quickRealDim0KindREAL64

    subroutine sorting_quickRealDim0KindREAL64(xs)
      Real(kind = REAL64), intent(inout):: xs(:)
      Real(kind = REAL64):: pib
      type(IntegerDim0KindINT64Stack):: iLs, iRs
      Integer(kind = INT64):: iL, iR, iLOriginal, iROriginal
      Logical:: isUniform

      raise_if(any(is_nan(xs)))

      call push(iLs, 1_INT64)
      call push(iRs, size(xs, dim = 1, kind = INT64))

      do while(pop(iRs, iR))    ! Loop for all segments on the stacks.
        assert(pop(iLs, iL))

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
            pib = get_pib(xs(iL:iR), isUniform)
            if(isUniform) exit

            iROriginal = iR  ! Right most index of the current segment
            loop_to_swap: do ! Within the segment
              do while(xs(iR) > pib)
                iR = iR - 1
              end do
              do while(xs(iL) <= pib)
                if(iL >= iR)then
                  call push(iLs, iR + 1)
                  call push(iRs, iROriginal)
                  iL = iLOriginal
                  exit loop_to_swap
                end if

                iL = iL + 1
              end do

              call swapping(xs(iL), xs(iR))
            end do loop_to_swap
          case default
            raise('Must not happen.')
          end select
        end do
      end do
    end subroutine sorting_quickRealDim0KindREAL64

    function get_pibRealDim0KindREAL64(xs, isUniform) result(pib)
      Real(kind = REAL64):: pib
      Real(kind = REAL64), intent(in):: xs(:)
      Logical, intent(out):: isUniform
      Real(kind = REAL64):: xsMin, xsMax
      Integer(kind = INT64):: iL, iR, nXs

      nXs = size(xs, dim = 1, kind = INT64)
      if(xs(1) <= xs(nXs))then
        xsMin = xs(1)
        xsMax = xs(nXs)
      else
        xsMin = xs(nXs)
        xsMax = xs(1)
      end if
      iL = 1 + 1
      iR = nXs - 1
      do while(iL <= iR)
        if(xs(iL) <= xs(iR))then
          if(xs(iL) < xsMin) xsMin = xs(iL)
          if(xs(iR) > xsMax) xsMax = xs(iR)
        else if(xs(iL) > xs(iR))then
          if(xs(iR) < xsMin) xsMin = xs(iR)
          if(xs(iL) > xsMax) xsMax = xs(iL)
        end if

        if(xsMin < xsMax) exit
        iL = iL + 1
        iR = iR - 1
      end do

      isUniform = (xsMax <= xsMin)
      if(isUniform)then
        pib = -huge(pib)
        return
      end if

      if(is_infinity(xsMax))then
        pib = huge(xsMax)
      elseif(is_infinity(-xsMin))then
        pib = -huge(xsMin)
      else
        pib = (xsMin/2) + (xsMax/2)

        if(pib >= xsMax .or. pib < xsMin) pib = xsMin ! I'm not sure whether the second condition could be true.
      end if
    end function get_pibRealDim0KindREAL64

    subroutine sorting_3RealDim0KindREAL64(xs)
      Real(kind = REAL64), intent(inout):: xs(1:3)

      debug_raise_if(is_nan(xs(1)))
      debug_raise_if(is_nan(xs(2)))
      debug_raise_if(is_nan(xs(3)))

      if(xs(3) < xs(1)) call swapping(xs(1), xs(3))
      if(xs(3) < xs(2))then
        call swapping(xs(2), xs(3))
      else if(xs(2) < xs(1))then
        call swapping(xs(1), xs(2))
      end if
    end subroutine sorting_3RealDim0KindREAL64

    subroutine sorting_2RealDim0KindREAL64(xs)
      Real(kind = REAL64), intent(inout):: xs(1:2)

      debug_raise_if(is_nan(xs(1)))
      debug_raise_if(is_nan(xs(2)))

      if(xs(2) < xs(1)) call swapping(xs(1), xs(2))
    end subroutine sorting_2RealDim0KindREAL64

    subroutine swappingRealDim0KindREAL64(a, b)
      Real(kind = REAL64), intent(inout):: a, b
      Real(kind = REAL64):: swap

      swap = b
      b = a
      a = swap
    end subroutine swappingRealDim0KindREAL64
    function sort_quickRealDim0KindREAL128(xs) result(xsSorted)
      Real(kind = REAL128), allocatable:: xsSorted(:)
      Real(kind = REAL128), intent(in):: xs(:)

      xsSorted = xs
      call sorting_quick(xsSorted)
    end function sort_quickRealDim0KindREAL128

    subroutine sorting_quickRealDim0KindREAL128(xs)
      Real(kind = REAL128), intent(inout):: xs(:)
      Real(kind = REAL128):: pib
      type(IntegerDim0KindINT64Stack):: iLs, iRs
      Integer(kind = INT64):: iL, iR, iLOriginal, iROriginal
      Logical:: isUniform

      raise_if(any(is_nan(xs)))

      call push(iLs, 1_INT64)
      call push(iRs, size(xs, dim = 1, kind = INT64))

      do while(pop(iRs, iR))    ! Loop for all segments on the stacks.
        assert(pop(iLs, iL))

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
            pib = get_pib(xs(iL:iR), isUniform)
            if(isUniform) exit

            iROriginal = iR  ! Right most index of the current segment
            loop_to_swap: do ! Within the segment
              do while(xs(iR) > pib)
                iR = iR - 1
              end do
              do while(xs(iL) <= pib)
                if(iL >= iR)then
                  call push(iLs, iR + 1)
                  call push(iRs, iROriginal)
                  iL = iLOriginal
                  exit loop_to_swap
                end if

                iL = iL + 1
              end do

              call swapping(xs(iL), xs(iR))
            end do loop_to_swap
          case default
            raise('Must not happen.')
          end select
        end do
      end do
    end subroutine sorting_quickRealDim0KindREAL128

    function get_pibRealDim0KindREAL128(xs, isUniform) result(pib)
      Real(kind = REAL128):: pib
      Real(kind = REAL128), intent(in):: xs(:)
      Logical, intent(out):: isUniform
      Real(kind = REAL128):: xsMin, xsMax
      Integer(kind = INT64):: iL, iR, nXs

      nXs = size(xs, dim = 1, kind = INT64)
      if(xs(1) <= xs(nXs))then
        xsMin = xs(1)
        xsMax = xs(nXs)
      else
        xsMin = xs(nXs)
        xsMax = xs(1)
      end if
      iL = 1 + 1
      iR = nXs - 1
      do while(iL <= iR)
        if(xs(iL) <= xs(iR))then
          if(xs(iL) < xsMin) xsMin = xs(iL)
          if(xs(iR) > xsMax) xsMax = xs(iR)
        else if(xs(iL) > xs(iR))then
          if(xs(iR) < xsMin) xsMin = xs(iR)
          if(xs(iL) > xsMax) xsMax = xs(iL)
        end if

        if(xsMin < xsMax) exit
        iL = iL + 1
        iR = iR - 1
      end do

      isUniform = (xsMax <= xsMin)
      if(isUniform)then
        pib = -huge(pib)
        return
      end if

      if(is_infinity(xsMax))then
        pib = huge(xsMax)
      elseif(is_infinity(-xsMin))then
        pib = -huge(xsMin)
      else
        pib = (xsMin/2) + (xsMax/2)

        if(pib >= xsMax .or. pib < xsMin) pib = xsMin ! I'm not sure whether the second condition could be true.
      end if
    end function get_pibRealDim0KindREAL128

    subroutine sorting_3RealDim0KindREAL128(xs)
      Real(kind = REAL128), intent(inout):: xs(1:3)

      debug_raise_if(is_nan(xs(1)))
      debug_raise_if(is_nan(xs(2)))
      debug_raise_if(is_nan(xs(3)))

      if(xs(3) < xs(1)) call swapping(xs(1), xs(3))
      if(xs(3) < xs(2))then
        call swapping(xs(2), xs(3))
      else if(xs(2) < xs(1))then
        call swapping(xs(1), xs(2))
      end if
    end subroutine sorting_3RealDim0KindREAL128

    subroutine sorting_2RealDim0KindREAL128(xs)
      Real(kind = REAL128), intent(inout):: xs(1:2)

      debug_raise_if(is_nan(xs(1)))
      debug_raise_if(is_nan(xs(2)))

      if(xs(2) < xs(1)) call swapping(xs(1), xs(2))
    end subroutine sorting_2RealDim0KindREAL128

    subroutine swappingRealDim0KindREAL128(a, b)
      Real(kind = REAL128), intent(inout):: a, b
      Real(kind = REAL128):: swap

      swap = b
      b = a
      a = swap
    end subroutine swappingRealDim0KindREAL128
end module lib_sort
