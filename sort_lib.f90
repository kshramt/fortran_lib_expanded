module sort_lib
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, non_intrinsic:: comparable_lib, only: is_nan, is_infinity
   use, non_intrinsic:: stack_lib, only: push, pop
   use, non_intrinsic:: stack_lib, only: IntegerDim0KindINT64Stack
   use, non_intrinsic:: array_lib, only: get
   implicit none
   private
   public:: insertion_sort, insertion_sorting
   public:: quick_sort, quick_sorting
   public:: merge_sort, merge_sorting
   public:: median
   public:: select
   public:: partitioning
      interface median
         module procedure medianIntegerDim0KindINT8
      end interface median
      interface medianing
         module procedure medianingIntegerDim0KindINT8
      end interface medianing
      interface median_of_medianing
         module procedure median_of_medianingIntegerDim0KindINT8
      end interface median_of_medianing
         interface select
            module procedure selectIntegerDim0KindINT8IntegerDim0KindINT8
         end interface select
         interface selecting
            module procedure selectingIntegerDim0KindINT8IntegerDim0KindINT8
         end interface selecting
         interface select
            module procedure selectIntegerDim0KindINT8IntegerDim0KindINT16
         end interface select
         interface selecting
            module procedure selectingIntegerDim0KindINT8IntegerDim0KindINT16
         end interface selecting
         interface select
            module procedure selectIntegerDim0KindINT8IntegerDim0KindINT32
         end interface select
         interface selecting
            module procedure selectingIntegerDim0KindINT8IntegerDim0KindINT32
         end interface selecting
         interface select
            module procedure selectIntegerDim0KindINT8IntegerDim0KindINT64
         end interface select
         interface selecting
            module procedure selectingIntegerDim0KindINT8IntegerDim0KindINT64
         end interface selecting
      interface partitioning
         module procedure partitioningIntegerDim0KindINT8
      end interface partitioning
      interface partitioning_impl
         module procedure partitioning_implIntegerDim0KindINT8
      end interface partitioning_impl
      interface insertion_sort
         module procedure insertion_sortIntegerDim0KindINT8
      end interface insertion_sort
      interface insertion_sorting
         module procedure insertion_sortingIntegerDim0KindINT8
      end interface insertion_sorting
      interface insertion_sorting_impl
         module procedure insertion_sorting_implIntegerDim0KindINT8
      end interface insertion_sorting_impl
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
      interface merge_sorting_impl
         module procedure merge_sorting_implIntegerDim0KindINT8
      end interface merge_sorting_impl
      interface merge_sorted_lists
         module procedure merge_sorted_listsIntegerDim0KindINT8
      end interface merge_sorted_lists
      interface swapping
         module procedure swappingIntegerDim0KindINT8
      end interface swapping
      interface median
         module procedure medianIntegerDim0KindINT16
      end interface median
      interface medianing
         module procedure medianingIntegerDim0KindINT16
      end interface medianing
      interface median_of_medianing
         module procedure median_of_medianingIntegerDim0KindINT16
      end interface median_of_medianing
         interface select
            module procedure selectIntegerDim0KindINT16IntegerDim0KindINT8
         end interface select
         interface selecting
            module procedure selectingIntegerDim0KindINT16IntegerDim0KindINT8
         end interface selecting
         interface select
            module procedure selectIntegerDim0KindINT16IntegerDim0KindINT16
         end interface select
         interface selecting
            module procedure selectingIntegerDim0KindINT16IntegerDim0KindINT16
         end interface selecting
         interface select
            module procedure selectIntegerDim0KindINT16IntegerDim0KindINT32
         end interface select
         interface selecting
            module procedure selectingIntegerDim0KindINT16IntegerDim0KindINT32
         end interface selecting
         interface select
            module procedure selectIntegerDim0KindINT16IntegerDim0KindINT64
         end interface select
         interface selecting
            module procedure selectingIntegerDim0KindINT16IntegerDim0KindINT64
         end interface selecting
      interface partitioning
         module procedure partitioningIntegerDim0KindINT16
      end interface partitioning
      interface partitioning_impl
         module procedure partitioning_implIntegerDim0KindINT16
      end interface partitioning_impl
      interface insertion_sort
         module procedure insertion_sortIntegerDim0KindINT16
      end interface insertion_sort
      interface insertion_sorting
         module procedure insertion_sortingIntegerDim0KindINT16
      end interface insertion_sorting
      interface insertion_sorting_impl
         module procedure insertion_sorting_implIntegerDim0KindINT16
      end interface insertion_sorting_impl
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
      interface merge_sorting_impl
         module procedure merge_sorting_implIntegerDim0KindINT16
      end interface merge_sorting_impl
      interface merge_sorted_lists
         module procedure merge_sorted_listsIntegerDim0KindINT16
      end interface merge_sorted_lists
      interface swapping
         module procedure swappingIntegerDim0KindINT16
      end interface swapping
      interface median
         module procedure medianIntegerDim0KindINT32
      end interface median
      interface medianing
         module procedure medianingIntegerDim0KindINT32
      end interface medianing
      interface median_of_medianing
         module procedure median_of_medianingIntegerDim0KindINT32
      end interface median_of_medianing
         interface select
            module procedure selectIntegerDim0KindINT32IntegerDim0KindINT8
         end interface select
         interface selecting
            module procedure selectingIntegerDim0KindINT32IntegerDim0KindINT8
         end interface selecting
         interface select
            module procedure selectIntegerDim0KindINT32IntegerDim0KindINT16
         end interface select
         interface selecting
            module procedure selectingIntegerDim0KindINT32IntegerDim0KindINT16
         end interface selecting
         interface select
            module procedure selectIntegerDim0KindINT32IntegerDim0KindINT32
         end interface select
         interface selecting
            module procedure selectingIntegerDim0KindINT32IntegerDim0KindINT32
         end interface selecting
         interface select
            module procedure selectIntegerDim0KindINT32IntegerDim0KindINT64
         end interface select
         interface selecting
            module procedure selectingIntegerDim0KindINT32IntegerDim0KindINT64
         end interface selecting
      interface partitioning
         module procedure partitioningIntegerDim0KindINT32
      end interface partitioning
      interface partitioning_impl
         module procedure partitioning_implIntegerDim0KindINT32
      end interface partitioning_impl
      interface insertion_sort
         module procedure insertion_sortIntegerDim0KindINT32
      end interface insertion_sort
      interface insertion_sorting
         module procedure insertion_sortingIntegerDim0KindINT32
      end interface insertion_sorting
      interface insertion_sorting_impl
         module procedure insertion_sorting_implIntegerDim0KindINT32
      end interface insertion_sorting_impl
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
      interface merge_sorting_impl
         module procedure merge_sorting_implIntegerDim0KindINT32
      end interface merge_sorting_impl
      interface merge_sorted_lists
         module procedure merge_sorted_listsIntegerDim0KindINT32
      end interface merge_sorted_lists
      interface swapping
         module procedure swappingIntegerDim0KindINT32
      end interface swapping
      interface median
         module procedure medianIntegerDim0KindINT64
      end interface median
      interface medianing
         module procedure medianingIntegerDim0KindINT64
      end interface medianing
      interface median_of_medianing
         module procedure median_of_medianingIntegerDim0KindINT64
      end interface median_of_medianing
         interface select
            module procedure selectIntegerDim0KindINT64IntegerDim0KindINT8
         end interface select
         interface selecting
            module procedure selectingIntegerDim0KindINT64IntegerDim0KindINT8
         end interface selecting
         interface select
            module procedure selectIntegerDim0KindINT64IntegerDim0KindINT16
         end interface select
         interface selecting
            module procedure selectingIntegerDim0KindINT64IntegerDim0KindINT16
         end interface selecting
         interface select
            module procedure selectIntegerDim0KindINT64IntegerDim0KindINT32
         end interface select
         interface selecting
            module procedure selectingIntegerDim0KindINT64IntegerDim0KindINT32
         end interface selecting
         interface select
            module procedure selectIntegerDim0KindINT64IntegerDim0KindINT64
         end interface select
         interface selecting
            module procedure selectingIntegerDim0KindINT64IntegerDim0KindINT64
         end interface selecting
      interface partitioning
         module procedure partitioningIntegerDim0KindINT64
      end interface partitioning
      interface partitioning_impl
         module procedure partitioning_implIntegerDim0KindINT64
      end interface partitioning_impl
      interface insertion_sort
         module procedure insertion_sortIntegerDim0KindINT64
      end interface insertion_sort
      interface insertion_sorting
         module procedure insertion_sortingIntegerDim0KindINT64
      end interface insertion_sorting
      interface insertion_sorting_impl
         module procedure insertion_sorting_implIntegerDim0KindINT64
      end interface insertion_sorting_impl
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
      interface merge_sorting_impl
         module procedure merge_sorting_implIntegerDim0KindINT64
      end interface merge_sorting_impl
      interface merge_sorted_lists
         module procedure merge_sorted_listsIntegerDim0KindINT64
      end interface merge_sorted_lists
      interface swapping
         module procedure swappingIntegerDim0KindINT64
      end interface swapping
      interface median
         module procedure medianRealDim0KindREAL32
      end interface median
      interface medianing
         module procedure medianingRealDim0KindREAL32
      end interface medianing
      interface median_of_medianing
         module procedure median_of_medianingRealDim0KindREAL32
      end interface median_of_medianing
         interface select
            module procedure selectRealDim0KindREAL32IntegerDim0KindINT8
         end interface select
         interface selecting
            module procedure selectingRealDim0KindREAL32IntegerDim0KindINT8
         end interface selecting
         interface select
            module procedure selectRealDim0KindREAL32IntegerDim0KindINT16
         end interface select
         interface selecting
            module procedure selectingRealDim0KindREAL32IntegerDim0KindINT16
         end interface selecting
         interface select
            module procedure selectRealDim0KindREAL32IntegerDim0KindINT32
         end interface select
         interface selecting
            module procedure selectingRealDim0KindREAL32IntegerDim0KindINT32
         end interface selecting
         interface select
            module procedure selectRealDim0KindREAL32IntegerDim0KindINT64
         end interface select
         interface selecting
            module procedure selectingRealDim0KindREAL32IntegerDim0KindINT64
         end interface selecting
      interface partitioning
         module procedure partitioningRealDim0KindREAL32
      end interface partitioning
      interface partitioning_impl
         module procedure partitioning_implRealDim0KindREAL32
      end interface partitioning_impl
      interface insertion_sort
         module procedure insertion_sortRealDim0KindREAL32
      end interface insertion_sort
      interface insertion_sorting
         module procedure insertion_sortingRealDim0KindREAL32
      end interface insertion_sorting
      interface insertion_sorting_impl
         module procedure insertion_sorting_implRealDim0KindREAL32
      end interface insertion_sorting_impl
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
      interface merge_sorting_impl
         module procedure merge_sorting_implRealDim0KindREAL32
      end interface merge_sorting_impl
      interface merge_sorted_lists
         module procedure merge_sorted_listsRealDim0KindREAL32
      end interface merge_sorted_lists
      interface swapping
         module procedure swappingRealDim0KindREAL32
      end interface swapping
      interface median
         module procedure medianRealDim0KindREAL64
      end interface median
      interface medianing
         module procedure medianingRealDim0KindREAL64
      end interface medianing
      interface median_of_medianing
         module procedure median_of_medianingRealDim0KindREAL64
      end interface median_of_medianing
         interface select
            module procedure selectRealDim0KindREAL64IntegerDim0KindINT8
         end interface select
         interface selecting
            module procedure selectingRealDim0KindREAL64IntegerDim0KindINT8
         end interface selecting
         interface select
            module procedure selectRealDim0KindREAL64IntegerDim0KindINT16
         end interface select
         interface selecting
            module procedure selectingRealDim0KindREAL64IntegerDim0KindINT16
         end interface selecting
         interface select
            module procedure selectRealDim0KindREAL64IntegerDim0KindINT32
         end interface select
         interface selecting
            module procedure selectingRealDim0KindREAL64IntegerDim0KindINT32
         end interface selecting
         interface select
            module procedure selectRealDim0KindREAL64IntegerDim0KindINT64
         end interface select
         interface selecting
            module procedure selectingRealDim0KindREAL64IntegerDim0KindINT64
         end interface selecting
      interface partitioning
         module procedure partitioningRealDim0KindREAL64
      end interface partitioning
      interface partitioning_impl
         module procedure partitioning_implRealDim0KindREAL64
      end interface partitioning_impl
      interface insertion_sort
         module procedure insertion_sortRealDim0KindREAL64
      end interface insertion_sort
      interface insertion_sorting
         module procedure insertion_sortingRealDim0KindREAL64
      end interface insertion_sorting
      interface insertion_sorting_impl
         module procedure insertion_sorting_implRealDim0KindREAL64
      end interface insertion_sorting_impl
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
      interface merge_sorting_impl
         module procedure merge_sorting_implRealDim0KindREAL64
      end interface merge_sorting_impl
      interface merge_sorted_lists
         module procedure merge_sorted_listsRealDim0KindREAL64
      end interface merge_sorted_lists
      interface swapping
         module procedure swappingRealDim0KindREAL64
      end interface swapping
      interface median
         module procedure medianRealDim0KindREAL128
      end interface median
      interface medianing
         module procedure medianingRealDim0KindREAL128
      end interface medianing
      interface median_of_medianing
         module procedure median_of_medianingRealDim0KindREAL128
      end interface median_of_medianing
         interface select
            module procedure selectRealDim0KindREAL128IntegerDim0KindINT8
         end interface select
         interface selecting
            module procedure selectingRealDim0KindREAL128IntegerDim0KindINT8
         end interface selecting
         interface select
            module procedure selectRealDim0KindREAL128IntegerDim0KindINT16
         end interface select
         interface selecting
            module procedure selectingRealDim0KindREAL128IntegerDim0KindINT16
         end interface selecting
         interface select
            module procedure selectRealDim0KindREAL128IntegerDim0KindINT32
         end interface select
         interface selecting
            module procedure selectingRealDim0KindREAL128IntegerDim0KindINT32
         end interface selecting
         interface select
            module procedure selectRealDim0KindREAL128IntegerDim0KindINT64
         end interface select
         interface selecting
            module procedure selectingRealDim0KindREAL128IntegerDim0KindINT64
         end interface selecting
      interface partitioning
         module procedure partitioningRealDim0KindREAL128
      end interface partitioning
      interface partitioning_impl
         module procedure partitioning_implRealDim0KindREAL128
      end interface partitioning_impl
      interface insertion_sort
         module procedure insertion_sortRealDim0KindREAL128
      end interface insertion_sort
      interface insertion_sorting
         module procedure insertion_sortingRealDim0KindREAL128
      end interface insertion_sorting
      interface insertion_sorting_impl
         module procedure insertion_sorting_implRealDim0KindREAL128
      end interface insertion_sorting_impl
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
      interface merge_sorting_impl
         module procedure merge_sorting_implRealDim0KindREAL128
      end interface merge_sorting_impl
      interface merge_sorted_lists
         module procedure merge_sorted_listsRealDim0KindREAL128
      end interface merge_sorted_lists
      interface swapping
         module procedure swappingRealDim0KindREAL128
      end interface swapping
contains
      function medianIntegerDim0KindINT8(xs) result(ret)
         Integer(kind=INT8), intent(in):: xs(:)
         Integer(kind=INT8):: xsCopy(size(xs, dim=1, kind=INT64))
         Real(kind=REAL32):: ret
         xsCopy = xs
         ret = medianing(xsCopy)
      end function medianIntegerDim0KindINT8
      function medianingIntegerDim0KindINT8(xs) result(ret)
         Integer(kind=INT8), intent(inout):: xs(:)
         Real(kind=REAL32):: ret
         Integer(kind=INT64):: nXs
         nXS = size(xs, dim=1, kind=kind(nXs))
         if(.not.(nXs > 0))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 685, (".not.(nXs > 0)"); error stop; end if
         if(mod(nXs, 2) == 1)then
            ret = selecting(xs, nXs/2 + 1)
         else
            ret = (real(selecting(xs, nXs/2), kind=kind(ret))/2) + (real(selecting(xs, nXs/2 + 1), kind=kind(ret))/2)
         end if
      end function medianingIntegerDim0KindINT8
      recursive function median_of_medianingIntegerDim0KindINT8(xs) result(ret)
         Integer(kind=INT8), intent(inout):: xs(:)
         Integer(kind=INT8):: ret
         Integer(kind=INT64):: nXs
         Integer(kind=kind(nXs)):: i
         nXS = size(xs, dim=1, kind=kind(nXs))
         ret = select([(selecting(xs((5*(i - 1) + 1):(5*i)), 3), i = 1, nXs/5)], nXs/10 + 1)
      end function median_of_medianingIntegerDim0KindINT8
         recursive function selectIntegerDim0KindINT8IntegerDim0KindINT8(xs, k) result(ret)
            Integer(kind=INT8), intent(in):: xs(:)
            Integer(kind=INT8), intent(in):: k
            Integer(kind=INT8):: ret
            Integer(kind=INT8):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0KindINT8IntegerDim0KindINT8
         recursive function selectingIntegerDim0KindINT8IntegerDim0KindINT8(xs, k) result(ret)
            Integer(kind=INT8), intent(inout):: xs(:)
            Integer(kind=INT8), intent(in):: k
            Integer(kind=INT8):: ret
            Integer(kind=INT8):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingIntegerDim0KindINT8IntegerDim0KindINT8
         recursive function selectIntegerDim0KindINT8IntegerDim0KindINT16(xs, k) result(ret)
            Integer(kind=INT8), intent(in):: xs(:)
            Integer(kind=INT16), intent(in):: k
            Integer(kind=INT8):: ret
            Integer(kind=INT8):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0KindINT8IntegerDim0KindINT16
         recursive function selectingIntegerDim0KindINT8IntegerDim0KindINT16(xs, k) result(ret)
            Integer(kind=INT8), intent(inout):: xs(:)
            Integer(kind=INT16), intent(in):: k
            Integer(kind=INT8):: ret
            Integer(kind=INT8):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingIntegerDim0KindINT8IntegerDim0KindINT16
         recursive function selectIntegerDim0KindINT8IntegerDim0KindINT32(xs, k) result(ret)
            Integer(kind=INT8), intent(in):: xs(:)
            Integer(kind=INT32), intent(in):: k
            Integer(kind=INT8):: ret
            Integer(kind=INT8):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0KindINT8IntegerDim0KindINT32
         recursive function selectingIntegerDim0KindINT8IntegerDim0KindINT32(xs, k) result(ret)
            Integer(kind=INT8), intent(inout):: xs(:)
            Integer(kind=INT32), intent(in):: k
            Integer(kind=INT8):: ret
            Integer(kind=INT8):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingIntegerDim0KindINT8IntegerDim0KindINT32
         recursive function selectIntegerDim0KindINT8IntegerDim0KindINT64(xs, k) result(ret)
            Integer(kind=INT8), intent(in):: xs(:)
            Integer(kind=INT64), intent(in):: k
            Integer(kind=INT8):: ret
            Integer(kind=INT8):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0KindINT8IntegerDim0KindINT64
         recursive function selectingIntegerDim0KindINT8IntegerDim0KindINT64(xs, k) result(ret)
            Integer(kind=INT8), intent(inout):: xs(:)
            Integer(kind=INT64), intent(in):: k
            Integer(kind=INT8):: ret
            Integer(kind=INT8):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingIntegerDim0KindINT8IntegerDim0KindINT64
      subroutine partitioningIntegerDim0KindINT8(xs, pivot, iPivot)
         Integer(kind=INT8), intent(inout):: xs(:)
         Integer(kind=INT8), intent(in):: pivot
         Integer(kind=INT64), intent(out):: iPivot
         if(.not.(minval(xs) <= pivot .and. pivot <= maxval(xs)))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 825, (".not.(minval(xs) <= pivot .and. pivot <= maxval(xs))"); error stop; end if
         call partitioning_impl(xs, pivot, iPivot)
      end subroutine partitioningIntegerDim0KindINT8
      ! Assume `min(xs) <= pivot <= max(xs)`
      subroutine partitioning_implIntegerDim0KindINT8(xs, pivot, iPivot)
         Integer(kind=INT8), intent(inout):: xs(:)
         Integer(kind=INT8), intent(in):: pivot
         Integer(kind=INT64), intent(out):: iPivot
         Integer(kind=kind(iPivot)):: iL, iR
         iL = 1
         iR = size(xs, dim=1, kind=kind(iR))
         if(iL < iR)then
            do
               do while(xs(iL) < pivot)
                  iL = iL + 1
               end do
               do while(pivot < xs(iR))
                  iR = iR - 1
               end do
               if(iR <= iL) exit
               call swapping(xs(iL), xs(iR))
               iL = iL + 1
               iR = iR - 1
            end do
         end if
         iPivot = iR
      end subroutine partitioning_implIntegerDim0KindINT8
      function insertion_sortIntegerDim0KindINT8(xs) result(ret)
         Integer(kind=INT8), intent(in):: xs(:)
         Integer(kind=INT8):: ret(size(xs, kind=INT64))
         ret = xs
         call insertion_sorting(ret)
      end function insertion_sortIntegerDim0KindINT8
      subroutine insertion_sortingIntegerDim0KindINT8(xs)
         Integer(kind=INT8), intent(inout):: xs(:)
         if(.not.(.not.any(is_nan(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 866, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call insertion_sorting_impl(xs)
      end subroutine insertion_sortingIntegerDim0KindINT8
      subroutine insertion_sorting_implIntegerDim0KindINT8(xs)
         Integer(kind=INT8), intent(inout):: xs(:)
         Integer(kind=INT64):: i, j
         Integer(kind=INT8):: tmp
         do i = int(2, kind=kind(i)), size(xs, kind=kind(i))
            tmp = xs(i)
            if(xs(i - 1) > tmp)then
               j = i
               do while(j > 1)
                  if(xs(j - 1) <= tmp) exit
                  xs(j) = xs(j - 1)
                  j = j - 1
               end do
               xs(j) = tmp
            end if
         end do
      end subroutine insertion_sorting_implIntegerDim0KindINT8
      function quick_sortIntegerDim0KindINT8(xs) result(xsSorted)
         Integer(kind=INT8), intent(in):: xs(:)
         Integer(kind=INT8):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call quick_sorting(xsSorted)
      end function quick_sortIntegerDim0KindINT8
      subroutine quick_sortingIntegerDim0KindINT8(xs)
         Integer(kind=INT8), intent(inout):: xs(:)
         Integer(kind=INT8):: pivot
         type(IntegerDim0KindINT64Stack):: iLs, iRs
         Integer(kind = INT64):: iL, iR, iPivot
         Logical:: isUniform
         if(.not.(.not.any(is_nan(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 904, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call push(iLs, 1_INT64)
         call push(iRs, size(xs, dim = 1, kind = kind(iR)))
         do while(pop(iRs, iR)) ! Loop for all segments on the stacks.
            if(.not.(pop(iLs, iL)))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 910, (".not.(pop(iLs, iL))"); error stop; end if ! Left most index of the current segment.
            do while(iL < iR) ! While current segment remains
               if(iR - iL > 7)then
                  pivot = get_pivot(xs(iL:iR), isUniform)
                  if(isUniform) exit
                  call partitioning_impl(xs(iL:iR), pivot, iPivot)
                  call push(iRs, iR)
                  iR = iPivot + iL - 1 ! Right most index of the current segment
                  call push(iLs, iR + 1)
               else
                  call insertion_sorting_impl(xs)
                  return
               end if
            end do
         end do
      end subroutine quick_sortingIntegerDim0KindINT8
      function get_pivotIntegerDim0KindINT8(xs, isUniform) result(pivot)
         Integer(kind=INT8):: pivot
         Integer(kind=INT8), intent(in):: xs(:)
         Logical, intent(out):: isUniform
         Integer(kind=INT8):: tmpX
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
         Integer(kind=INT8), intent(in):: xs(:)
         Integer(kind=INT8):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call merge_sortingIntegerDim0KindINT8(xsSorted)
      end function merge_sortIntegerDim0KindINT8
      subroutine merge_sortingIntegerDim0KindINT8(xs)
         Integer(kind=INT8), intent(inout):: xs(:)
         Integer(kind=INT8):: buf(size(xs, dim=1, kind=INT64))
         Logical(kind=INT8):: isRetInBuf
         if(.not.(.not.any(is_nan(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 970, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call merge_sorting_implIntegerDim0KindINT8(xs, buf, isRetInBuf)
         if(isRetInBuf)then
            xs = buf
         end if
      end subroutine merge_sortingIntegerDim0KindINT8
      recursive subroutine merge_sorting_implIntegerDim0KindINT8(xs, buf, isRetInBuf)
         Integer(kind=INT8), intent(inout):: xs(:)
         Integer(kind=INT8), intent(out):: buf(:)
         Logical(kind=INT8), intent(out):: isRetInBuf
         Logical(kind=kind(isRetInBuf)):: isLeftRetInBuf, isRightRetInBuf
         Integer(kind = INT64):: nXs, iL, iR
         nXs = size(xs, dim = 1, kind = kind(nXs))
         iL = nXs/2
         iR = iL + 1
         if(nXs > 7)then
            call merge_sorting_impl(xs(:iL), buf(:iL), isLeftRetInBuf)
            call merge_sorting_impl(xs(iR:), buf(iR:), isRightRetInBuf)
            if(isLeftRetInBuf)then
               if(.not.isRightRetInBuf)then
                  buf(iR:) = xs(iR:)
               end if
               call merge_sorted_lists(buf(:iL), buf(iR:), xs)
               isRetInBuf = .false.
            else
               if(isRightRetInBuf)then
                  buf(:iL) = xs(:iL)
                  call merge_sorted_lists(buf(:iL), buf(iR:), xs)
                  isRetInBuf = .false.
               else
                  call merge_sorted_lists(xs(:iL), xs(iR:), buf)
                  isRetInBuf = .true.
               end if
            end if
         else
            call insertion_sorting_impl(xs)
            isRetInBuf = .false.
         end if
      end subroutine merge_sorting_implIntegerDim0KindINT8
      ! Merge sorted 1-D array xs and ys into zs.
      subroutine merge_sorted_listsIntegerDim0KindINT8(xs, ys, zs)
         Integer(kind=INT8), intent(in):: xs(:), ys(:)
         Integer(kind=INT8), intent(out):: zs(size(xs, dim=1, kind=INT64) + size(ys, dim=1, kind=INT64))
         Integer(kind = INT64):: iXs, nXs, iYs, nYs, iZs, nZs
         nXs = size(xs, dim = 1, kind = kind(nXs))
         nYs = size(ys, dim = 1, kind = kind(nYs))
         nZs = size(zs, dim = 1, kind = kind(nZs))
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
      elemental subroutine swappingIntegerDim0KindINT8(a, b)
         Integer(kind=INT8), intent(inout):: a, b
         Integer(kind=INT8):: swap
         swap = b
         b = a
         a = swap
      end subroutine swappingIntegerDim0KindINT8
      function medianIntegerDim0KindINT16(xs) result(ret)
         Integer(kind=INT16), intent(in):: xs(:)
         Integer(kind=INT16):: xsCopy(size(xs, dim=1, kind=INT64))
         Real(kind=REAL32):: ret
         xsCopy = xs
         ret = medianing(xsCopy)
      end function medianIntegerDim0KindINT16
      function medianingIntegerDim0KindINT16(xs) result(ret)
         Integer(kind=INT16), intent(inout):: xs(:)
         Real(kind=REAL32):: ret
         Integer(kind=INT64):: nXs
         nXS = size(xs, dim=1, kind=kind(nXs))
         if(.not.(nXs > 0))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 1066, (".not.(nXs > 0)"); error stop; end if
         if(mod(nXs, 2) == 1)then
            ret = selecting(xs, nXs/2 + 1)
         else
            ret = (real(selecting(xs, nXs/2), kind=kind(ret))/2) + (real(selecting(xs, nXs/2 + 1), kind=kind(ret))/2)
         end if
      end function medianingIntegerDim0KindINT16
      recursive function median_of_medianingIntegerDim0KindINT16(xs) result(ret)
         Integer(kind=INT16), intent(inout):: xs(:)
         Integer(kind=INT16):: ret
         Integer(kind=INT64):: nXs
         Integer(kind=kind(nXs)):: i
         nXS = size(xs, dim=1, kind=kind(nXs))
         ret = select([(selecting(xs((5*(i - 1) + 1):(5*i)), 3), i = 1, nXs/5)], nXs/10 + 1)
      end function median_of_medianingIntegerDim0KindINT16
         recursive function selectIntegerDim0KindINT16IntegerDim0KindINT8(xs, k) result(ret)
            Integer(kind=INT16), intent(in):: xs(:)
            Integer(kind=INT8), intent(in):: k
            Integer(kind=INT16):: ret
            Integer(kind=INT16):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0KindINT16IntegerDim0KindINT8
         recursive function selectingIntegerDim0KindINT16IntegerDim0KindINT8(xs, k) result(ret)
            Integer(kind=INT16), intent(inout):: xs(:)
            Integer(kind=INT8), intent(in):: k
            Integer(kind=INT16):: ret
            Integer(kind=INT16):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingIntegerDim0KindINT16IntegerDim0KindINT8
         recursive function selectIntegerDim0KindINT16IntegerDim0KindINT16(xs, k) result(ret)
            Integer(kind=INT16), intent(in):: xs(:)
            Integer(kind=INT16), intent(in):: k
            Integer(kind=INT16):: ret
            Integer(kind=INT16):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0KindINT16IntegerDim0KindINT16
         recursive function selectingIntegerDim0KindINT16IntegerDim0KindINT16(xs, k) result(ret)
            Integer(kind=INT16), intent(inout):: xs(:)
            Integer(kind=INT16), intent(in):: k
            Integer(kind=INT16):: ret
            Integer(kind=INT16):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingIntegerDim0KindINT16IntegerDim0KindINT16
         recursive function selectIntegerDim0KindINT16IntegerDim0KindINT32(xs, k) result(ret)
            Integer(kind=INT16), intent(in):: xs(:)
            Integer(kind=INT32), intent(in):: k
            Integer(kind=INT16):: ret
            Integer(kind=INT16):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0KindINT16IntegerDim0KindINT32
         recursive function selectingIntegerDim0KindINT16IntegerDim0KindINT32(xs, k) result(ret)
            Integer(kind=INT16), intent(inout):: xs(:)
            Integer(kind=INT32), intent(in):: k
            Integer(kind=INT16):: ret
            Integer(kind=INT16):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingIntegerDim0KindINT16IntegerDim0KindINT32
         recursive function selectIntegerDim0KindINT16IntegerDim0KindINT64(xs, k) result(ret)
            Integer(kind=INT16), intent(in):: xs(:)
            Integer(kind=INT64), intent(in):: k
            Integer(kind=INT16):: ret
            Integer(kind=INT16):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0KindINT16IntegerDim0KindINT64
         recursive function selectingIntegerDim0KindINT16IntegerDim0KindINT64(xs, k) result(ret)
            Integer(kind=INT16), intent(inout):: xs(:)
            Integer(kind=INT64), intent(in):: k
            Integer(kind=INT16):: ret
            Integer(kind=INT16):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingIntegerDim0KindINT16IntegerDim0KindINT64
      subroutine partitioningIntegerDim0KindINT16(xs, pivot, iPivot)
         Integer(kind=INT16), intent(inout):: xs(:)
         Integer(kind=INT16), intent(in):: pivot
         Integer(kind=INT64), intent(out):: iPivot
         if(.not.(minval(xs) <= pivot .and. pivot <= maxval(xs)))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 1206, (".not.(minval(xs) <= pivot .and. pivot <= maxval(xs))"); error stop; end if
         call partitioning_impl(xs, pivot, iPivot)
      end subroutine partitioningIntegerDim0KindINT16
      ! Assume `min(xs) <= pivot <= max(xs)`
      subroutine partitioning_implIntegerDim0KindINT16(xs, pivot, iPivot)
         Integer(kind=INT16), intent(inout):: xs(:)
         Integer(kind=INT16), intent(in):: pivot
         Integer(kind=INT64), intent(out):: iPivot
         Integer(kind=kind(iPivot)):: iL, iR
         iL = 1
         iR = size(xs, dim=1, kind=kind(iR))
         if(iL < iR)then
            do
               do while(xs(iL) < pivot)
                  iL = iL + 1
               end do
               do while(pivot < xs(iR))
                  iR = iR - 1
               end do
               if(iR <= iL) exit
               call swapping(xs(iL), xs(iR))
               iL = iL + 1
               iR = iR - 1
            end do
         end if
         iPivot = iR
      end subroutine partitioning_implIntegerDim0KindINT16
      function insertion_sortIntegerDim0KindINT16(xs) result(ret)
         Integer(kind=INT16), intent(in):: xs(:)
         Integer(kind=INT16):: ret(size(xs, kind=INT64))
         ret = xs
         call insertion_sorting(ret)
      end function insertion_sortIntegerDim0KindINT16
      subroutine insertion_sortingIntegerDim0KindINT16(xs)
         Integer(kind=INT16), intent(inout):: xs(:)
         if(.not.(.not.any(is_nan(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 1247, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call insertion_sorting_impl(xs)
      end subroutine insertion_sortingIntegerDim0KindINT16
      subroutine insertion_sorting_implIntegerDim0KindINT16(xs)
         Integer(kind=INT16), intent(inout):: xs(:)
         Integer(kind=INT64):: i, j
         Integer(kind=INT16):: tmp
         do i = int(2, kind=kind(i)), size(xs, kind=kind(i))
            tmp = xs(i)
            if(xs(i - 1) > tmp)then
               j = i
               do while(j > 1)
                  if(xs(j - 1) <= tmp) exit
                  xs(j) = xs(j - 1)
                  j = j - 1
               end do
               xs(j) = tmp
            end if
         end do
      end subroutine insertion_sorting_implIntegerDim0KindINT16
      function quick_sortIntegerDim0KindINT16(xs) result(xsSorted)
         Integer(kind=INT16), intent(in):: xs(:)
         Integer(kind=INT16):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call quick_sorting(xsSorted)
      end function quick_sortIntegerDim0KindINT16
      subroutine quick_sortingIntegerDim0KindINT16(xs)
         Integer(kind=INT16), intent(inout):: xs(:)
         Integer(kind=INT16):: pivot
         type(IntegerDim0KindINT64Stack):: iLs, iRs
         Integer(kind = INT64):: iL, iR, iPivot
         Logical:: isUniform
         if(.not.(.not.any(is_nan(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 1285, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call push(iLs, 1_INT64)
         call push(iRs, size(xs, dim = 1, kind = kind(iR)))
         do while(pop(iRs, iR)) ! Loop for all segments on the stacks.
            if(.not.(pop(iLs, iL)))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 1291, (".not.(pop(iLs, iL))"); error stop; end if ! Left most index of the current segment.
            do while(iL < iR) ! While current segment remains
               if(iR - iL > 7)then
                  pivot = get_pivot(xs(iL:iR), isUniform)
                  if(isUniform) exit
                  call partitioning_impl(xs(iL:iR), pivot, iPivot)
                  call push(iRs, iR)
                  iR = iPivot + iL - 1 ! Right most index of the current segment
                  call push(iLs, iR + 1)
               else
                  call insertion_sorting_impl(xs)
                  return
               end if
            end do
         end do
      end subroutine quick_sortingIntegerDim0KindINT16
      function get_pivotIntegerDim0KindINT16(xs, isUniform) result(pivot)
         Integer(kind=INT16):: pivot
         Integer(kind=INT16), intent(in):: xs(:)
         Logical, intent(out):: isUniform
         Integer(kind=INT16):: tmpX
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
         Integer(kind=INT16), intent(in):: xs(:)
         Integer(kind=INT16):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call merge_sortingIntegerDim0KindINT16(xsSorted)
      end function merge_sortIntegerDim0KindINT16
      subroutine merge_sortingIntegerDim0KindINT16(xs)
         Integer(kind=INT16), intent(inout):: xs(:)
         Integer(kind=INT16):: buf(size(xs, dim=1, kind=INT64))
         Logical(kind=INT8):: isRetInBuf
         if(.not.(.not.any(is_nan(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 1351, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call merge_sorting_implIntegerDim0KindINT16(xs, buf, isRetInBuf)
         if(isRetInBuf)then
            xs = buf
         end if
      end subroutine merge_sortingIntegerDim0KindINT16
      recursive subroutine merge_sorting_implIntegerDim0KindINT16(xs, buf, isRetInBuf)
         Integer(kind=INT16), intent(inout):: xs(:)
         Integer(kind=INT16), intent(out):: buf(:)
         Logical(kind=INT8), intent(out):: isRetInBuf
         Logical(kind=kind(isRetInBuf)):: isLeftRetInBuf, isRightRetInBuf
         Integer(kind = INT64):: nXs, iL, iR
         nXs = size(xs, dim = 1, kind = kind(nXs))
         iL = nXs/2
         iR = iL + 1
         if(nXs > 7)then
            call merge_sorting_impl(xs(:iL), buf(:iL), isLeftRetInBuf)
            call merge_sorting_impl(xs(iR:), buf(iR:), isRightRetInBuf)
            if(isLeftRetInBuf)then
               if(.not.isRightRetInBuf)then
                  buf(iR:) = xs(iR:)
               end if
               call merge_sorted_lists(buf(:iL), buf(iR:), xs)
               isRetInBuf = .false.
            else
               if(isRightRetInBuf)then
                  buf(:iL) = xs(:iL)
                  call merge_sorted_lists(buf(:iL), buf(iR:), xs)
                  isRetInBuf = .false.
               else
                  call merge_sorted_lists(xs(:iL), xs(iR:), buf)
                  isRetInBuf = .true.
               end if
            end if
         else
            call insertion_sorting_impl(xs)
            isRetInBuf = .false.
         end if
      end subroutine merge_sorting_implIntegerDim0KindINT16
      ! Merge sorted 1-D array xs and ys into zs.
      subroutine merge_sorted_listsIntegerDim0KindINT16(xs, ys, zs)
         Integer(kind=INT16), intent(in):: xs(:), ys(:)
         Integer(kind=INT16), intent(out):: zs(size(xs, dim=1, kind=INT64) + size(ys, dim=1, kind=INT64))
         Integer(kind = INT64):: iXs, nXs, iYs, nYs, iZs, nZs
         nXs = size(xs, dim = 1, kind = kind(nXs))
         nYs = size(ys, dim = 1, kind = kind(nYs))
         nZs = size(zs, dim = 1, kind = kind(nZs))
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
      elemental subroutine swappingIntegerDim0KindINT16(a, b)
         Integer(kind=INT16), intent(inout):: a, b
         Integer(kind=INT16):: swap
         swap = b
         b = a
         a = swap
      end subroutine swappingIntegerDim0KindINT16
      function medianIntegerDim0KindINT32(xs) result(ret)
         Integer(kind=INT32), intent(in):: xs(:)
         Integer(kind=INT32):: xsCopy(size(xs, dim=1, kind=INT64))
         Real(kind=REAL32):: ret
         xsCopy = xs
         ret = medianing(xsCopy)
      end function medianIntegerDim0KindINT32
      function medianingIntegerDim0KindINT32(xs) result(ret)
         Integer(kind=INT32), intent(inout):: xs(:)
         Real(kind=REAL32):: ret
         Integer(kind=INT64):: nXs
         nXS = size(xs, dim=1, kind=kind(nXs))
         if(.not.(nXs > 0))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 1447, (".not.(nXs > 0)"); error stop; end if
         if(mod(nXs, 2) == 1)then
            ret = selecting(xs, nXs/2 + 1)
         else
            ret = (real(selecting(xs, nXs/2), kind=kind(ret))/2) + (real(selecting(xs, nXs/2 + 1), kind=kind(ret))/2)
         end if
      end function medianingIntegerDim0KindINT32
      recursive function median_of_medianingIntegerDim0KindINT32(xs) result(ret)
         Integer(kind=INT32), intent(inout):: xs(:)
         Integer(kind=INT32):: ret
         Integer(kind=INT64):: nXs
         Integer(kind=kind(nXs)):: i
         nXS = size(xs, dim=1, kind=kind(nXs))
         ret = select([(selecting(xs((5*(i - 1) + 1):(5*i)), 3), i = 1, nXs/5)], nXs/10 + 1)
      end function median_of_medianingIntegerDim0KindINT32
         recursive function selectIntegerDim0KindINT32IntegerDim0KindINT8(xs, k) result(ret)
            Integer(kind=INT32), intent(in):: xs(:)
            Integer(kind=INT8), intent(in):: k
            Integer(kind=INT32):: ret
            Integer(kind=INT32):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0KindINT32IntegerDim0KindINT8
         recursive function selectingIntegerDim0KindINT32IntegerDim0KindINT8(xs, k) result(ret)
            Integer(kind=INT32), intent(inout):: xs(:)
            Integer(kind=INT8), intent(in):: k
            Integer(kind=INT32):: ret
            Integer(kind=INT32):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingIntegerDim0KindINT32IntegerDim0KindINT8
         recursive function selectIntegerDim0KindINT32IntegerDim0KindINT16(xs, k) result(ret)
            Integer(kind=INT32), intent(in):: xs(:)
            Integer(kind=INT16), intent(in):: k
            Integer(kind=INT32):: ret
            Integer(kind=INT32):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0KindINT32IntegerDim0KindINT16
         recursive function selectingIntegerDim0KindINT32IntegerDim0KindINT16(xs, k) result(ret)
            Integer(kind=INT32), intent(inout):: xs(:)
            Integer(kind=INT16), intent(in):: k
            Integer(kind=INT32):: ret
            Integer(kind=INT32):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingIntegerDim0KindINT32IntegerDim0KindINT16
         recursive function selectIntegerDim0KindINT32IntegerDim0KindINT32(xs, k) result(ret)
            Integer(kind=INT32), intent(in):: xs(:)
            Integer(kind=INT32), intent(in):: k
            Integer(kind=INT32):: ret
            Integer(kind=INT32):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0KindINT32IntegerDim0KindINT32
         recursive function selectingIntegerDim0KindINT32IntegerDim0KindINT32(xs, k) result(ret)
            Integer(kind=INT32), intent(inout):: xs(:)
            Integer(kind=INT32), intent(in):: k
            Integer(kind=INT32):: ret
            Integer(kind=INT32):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingIntegerDim0KindINT32IntegerDim0KindINT32
         recursive function selectIntegerDim0KindINT32IntegerDim0KindINT64(xs, k) result(ret)
            Integer(kind=INT32), intent(in):: xs(:)
            Integer(kind=INT64), intent(in):: k
            Integer(kind=INT32):: ret
            Integer(kind=INT32):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0KindINT32IntegerDim0KindINT64
         recursive function selectingIntegerDim0KindINT32IntegerDim0KindINT64(xs, k) result(ret)
            Integer(kind=INT32), intent(inout):: xs(:)
            Integer(kind=INT64), intent(in):: k
            Integer(kind=INT32):: ret
            Integer(kind=INT32):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingIntegerDim0KindINT32IntegerDim0KindINT64
      subroutine partitioningIntegerDim0KindINT32(xs, pivot, iPivot)
         Integer(kind=INT32), intent(inout):: xs(:)
         Integer(kind=INT32), intent(in):: pivot
         Integer(kind=INT64), intent(out):: iPivot
         if(.not.(minval(xs) <= pivot .and. pivot <= maxval(xs)))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 1587, (".not.(minval(xs) <= pivot .and. pivot <= maxval(xs))"); error stop; end if
         call partitioning_impl(xs, pivot, iPivot)
      end subroutine partitioningIntegerDim0KindINT32
      ! Assume `min(xs) <= pivot <= max(xs)`
      subroutine partitioning_implIntegerDim0KindINT32(xs, pivot, iPivot)
         Integer(kind=INT32), intent(inout):: xs(:)
         Integer(kind=INT32), intent(in):: pivot
         Integer(kind=INT64), intent(out):: iPivot
         Integer(kind=kind(iPivot)):: iL, iR
         iL = 1
         iR = size(xs, dim=1, kind=kind(iR))
         if(iL < iR)then
            do
               do while(xs(iL) < pivot)
                  iL = iL + 1
               end do
               do while(pivot < xs(iR))
                  iR = iR - 1
               end do
               if(iR <= iL) exit
               call swapping(xs(iL), xs(iR))
               iL = iL + 1
               iR = iR - 1
            end do
         end if
         iPivot = iR
      end subroutine partitioning_implIntegerDim0KindINT32
      function insertion_sortIntegerDim0KindINT32(xs) result(ret)
         Integer(kind=INT32), intent(in):: xs(:)
         Integer(kind=INT32):: ret(size(xs, kind=INT64))
         ret = xs
         call insertion_sorting(ret)
      end function insertion_sortIntegerDim0KindINT32
      subroutine insertion_sortingIntegerDim0KindINT32(xs)
         Integer(kind=INT32), intent(inout):: xs(:)
         if(.not.(.not.any(is_nan(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 1628, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call insertion_sorting_impl(xs)
      end subroutine insertion_sortingIntegerDim0KindINT32
      subroutine insertion_sorting_implIntegerDim0KindINT32(xs)
         Integer(kind=INT32), intent(inout):: xs(:)
         Integer(kind=INT64):: i, j
         Integer(kind=INT32):: tmp
         do i = int(2, kind=kind(i)), size(xs, kind=kind(i))
            tmp = xs(i)
            if(xs(i - 1) > tmp)then
               j = i
               do while(j > 1)
                  if(xs(j - 1) <= tmp) exit
                  xs(j) = xs(j - 1)
                  j = j - 1
               end do
               xs(j) = tmp
            end if
         end do
      end subroutine insertion_sorting_implIntegerDim0KindINT32
      function quick_sortIntegerDim0KindINT32(xs) result(xsSorted)
         Integer(kind=INT32), intent(in):: xs(:)
         Integer(kind=INT32):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call quick_sorting(xsSorted)
      end function quick_sortIntegerDim0KindINT32
      subroutine quick_sortingIntegerDim0KindINT32(xs)
         Integer(kind=INT32), intent(inout):: xs(:)
         Integer(kind=INT32):: pivot
         type(IntegerDim0KindINT64Stack):: iLs, iRs
         Integer(kind = INT64):: iL, iR, iPivot
         Logical:: isUniform
         if(.not.(.not.any(is_nan(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 1666, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call push(iLs, 1_INT64)
         call push(iRs, size(xs, dim = 1, kind = kind(iR)))
         do while(pop(iRs, iR)) ! Loop for all segments on the stacks.
            if(.not.(pop(iLs, iL)))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 1672, (".not.(pop(iLs, iL))"); error stop; end if ! Left most index of the current segment.
            do while(iL < iR) ! While current segment remains
               if(iR - iL > 7)then
                  pivot = get_pivot(xs(iL:iR), isUniform)
                  if(isUniform) exit
                  call partitioning_impl(xs(iL:iR), pivot, iPivot)
                  call push(iRs, iR)
                  iR = iPivot + iL - 1 ! Right most index of the current segment
                  call push(iLs, iR + 1)
               else
                  call insertion_sorting_impl(xs)
                  return
               end if
            end do
         end do
      end subroutine quick_sortingIntegerDim0KindINT32
      function get_pivotIntegerDim0KindINT32(xs, isUniform) result(pivot)
         Integer(kind=INT32):: pivot
         Integer(kind=INT32), intent(in):: xs(:)
         Logical, intent(out):: isUniform
         Integer(kind=INT32):: tmpX
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
         Integer(kind=INT32), intent(in):: xs(:)
         Integer(kind=INT32):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call merge_sortingIntegerDim0KindINT32(xsSorted)
      end function merge_sortIntegerDim0KindINT32
      subroutine merge_sortingIntegerDim0KindINT32(xs)
         Integer(kind=INT32), intent(inout):: xs(:)
         Integer(kind=INT32):: buf(size(xs, dim=1, kind=INT64))
         Logical(kind=INT8):: isRetInBuf
         if(.not.(.not.any(is_nan(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 1732, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call merge_sorting_implIntegerDim0KindINT32(xs, buf, isRetInBuf)
         if(isRetInBuf)then
            xs = buf
         end if
      end subroutine merge_sortingIntegerDim0KindINT32
      recursive subroutine merge_sorting_implIntegerDim0KindINT32(xs, buf, isRetInBuf)
         Integer(kind=INT32), intent(inout):: xs(:)
         Integer(kind=INT32), intent(out):: buf(:)
         Logical(kind=INT8), intent(out):: isRetInBuf
         Logical(kind=kind(isRetInBuf)):: isLeftRetInBuf, isRightRetInBuf
         Integer(kind = INT64):: nXs, iL, iR
         nXs = size(xs, dim = 1, kind = kind(nXs))
         iL = nXs/2
         iR = iL + 1
         if(nXs > 7)then
            call merge_sorting_impl(xs(:iL), buf(:iL), isLeftRetInBuf)
            call merge_sorting_impl(xs(iR:), buf(iR:), isRightRetInBuf)
            if(isLeftRetInBuf)then
               if(.not.isRightRetInBuf)then
                  buf(iR:) = xs(iR:)
               end if
               call merge_sorted_lists(buf(:iL), buf(iR:), xs)
               isRetInBuf = .false.
            else
               if(isRightRetInBuf)then
                  buf(:iL) = xs(:iL)
                  call merge_sorted_lists(buf(:iL), buf(iR:), xs)
                  isRetInBuf = .false.
               else
                  call merge_sorted_lists(xs(:iL), xs(iR:), buf)
                  isRetInBuf = .true.
               end if
            end if
         else
            call insertion_sorting_impl(xs)
            isRetInBuf = .false.
         end if
      end subroutine merge_sorting_implIntegerDim0KindINT32
      ! Merge sorted 1-D array xs and ys into zs.
      subroutine merge_sorted_listsIntegerDim0KindINT32(xs, ys, zs)
         Integer(kind=INT32), intent(in):: xs(:), ys(:)
         Integer(kind=INT32), intent(out):: zs(size(xs, dim=1, kind=INT64) + size(ys, dim=1, kind=INT64))
         Integer(kind = INT64):: iXs, nXs, iYs, nYs, iZs, nZs
         nXs = size(xs, dim = 1, kind = kind(nXs))
         nYs = size(ys, dim = 1, kind = kind(nYs))
         nZs = size(zs, dim = 1, kind = kind(nZs))
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
      elemental subroutine swappingIntegerDim0KindINT32(a, b)
         Integer(kind=INT32), intent(inout):: a, b
         Integer(kind=INT32):: swap
         swap = b
         b = a
         a = swap
      end subroutine swappingIntegerDim0KindINT32
      function medianIntegerDim0KindINT64(xs) result(ret)
         Integer(kind=INT64), intent(in):: xs(:)
         Integer(kind=INT64):: xsCopy(size(xs, dim=1, kind=INT64))
         Real(kind=REAL32):: ret
         xsCopy = xs
         ret = medianing(xsCopy)
      end function medianIntegerDim0KindINT64
      function medianingIntegerDim0KindINT64(xs) result(ret)
         Integer(kind=INT64), intent(inout):: xs(:)
         Real(kind=REAL32):: ret
         Integer(kind=INT64):: nXs
         nXS = size(xs, dim=1, kind=kind(nXs))
         if(.not.(nXs > 0))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 1828, (".not.(nXs > 0)"); error stop; end if
         if(mod(nXs, 2) == 1)then
            ret = selecting(xs, nXs/2 + 1)
         else
            ret = (real(selecting(xs, nXs/2), kind=kind(ret))/2) + (real(selecting(xs, nXs/2 + 1), kind=kind(ret))/2)
         end if
      end function medianingIntegerDim0KindINT64
      recursive function median_of_medianingIntegerDim0KindINT64(xs) result(ret)
         Integer(kind=INT64), intent(inout):: xs(:)
         Integer(kind=INT64):: ret
         Integer(kind=INT64):: nXs
         Integer(kind=kind(nXs)):: i
         nXS = size(xs, dim=1, kind=kind(nXs))
         ret = select([(selecting(xs((5*(i - 1) + 1):(5*i)), 3), i = 1, nXs/5)], nXs/10 + 1)
      end function median_of_medianingIntegerDim0KindINT64
         recursive function selectIntegerDim0KindINT64IntegerDim0KindINT8(xs, k) result(ret)
            Integer(kind=INT64), intent(in):: xs(:)
            Integer(kind=INT8), intent(in):: k
            Integer(kind=INT64):: ret
            Integer(kind=INT64):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0KindINT64IntegerDim0KindINT8
         recursive function selectingIntegerDim0KindINT64IntegerDim0KindINT8(xs, k) result(ret)
            Integer(kind=INT64), intent(inout):: xs(:)
            Integer(kind=INT8), intent(in):: k
            Integer(kind=INT64):: ret
            Integer(kind=INT64):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingIntegerDim0KindINT64IntegerDim0KindINT8
         recursive function selectIntegerDim0KindINT64IntegerDim0KindINT16(xs, k) result(ret)
            Integer(kind=INT64), intent(in):: xs(:)
            Integer(kind=INT16), intent(in):: k
            Integer(kind=INT64):: ret
            Integer(kind=INT64):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0KindINT64IntegerDim0KindINT16
         recursive function selectingIntegerDim0KindINT64IntegerDim0KindINT16(xs, k) result(ret)
            Integer(kind=INT64), intent(inout):: xs(:)
            Integer(kind=INT16), intent(in):: k
            Integer(kind=INT64):: ret
            Integer(kind=INT64):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingIntegerDim0KindINT64IntegerDim0KindINT16
         recursive function selectIntegerDim0KindINT64IntegerDim0KindINT32(xs, k) result(ret)
            Integer(kind=INT64), intent(in):: xs(:)
            Integer(kind=INT32), intent(in):: k
            Integer(kind=INT64):: ret
            Integer(kind=INT64):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0KindINT64IntegerDim0KindINT32
         recursive function selectingIntegerDim0KindINT64IntegerDim0KindINT32(xs, k) result(ret)
            Integer(kind=INT64), intent(inout):: xs(:)
            Integer(kind=INT32), intent(in):: k
            Integer(kind=INT64):: ret
            Integer(kind=INT64):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingIntegerDim0KindINT64IntegerDim0KindINT32
         recursive function selectIntegerDim0KindINT64IntegerDim0KindINT64(xs, k) result(ret)
            Integer(kind=INT64), intent(in):: xs(:)
            Integer(kind=INT64), intent(in):: k
            Integer(kind=INT64):: ret
            Integer(kind=INT64):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0KindINT64IntegerDim0KindINT64
         recursive function selectingIntegerDim0KindINT64IntegerDim0KindINT64(xs, k) result(ret)
            Integer(kind=INT64), intent(inout):: xs(:)
            Integer(kind=INT64), intent(in):: k
            Integer(kind=INT64):: ret
            Integer(kind=INT64):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingIntegerDim0KindINT64IntegerDim0KindINT64
      subroutine partitioningIntegerDim0KindINT64(xs, pivot, iPivot)
         Integer(kind=INT64), intent(inout):: xs(:)
         Integer(kind=INT64), intent(in):: pivot
         Integer(kind=INT64), intent(out):: iPivot
         if(.not.(minval(xs) <= pivot .and. pivot <= maxval(xs)))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 1968, (".not.(minval(xs) <= pivot .and. pivot <= maxval(xs))"); error stop; end if
         call partitioning_impl(xs, pivot, iPivot)
      end subroutine partitioningIntegerDim0KindINT64
      ! Assume `min(xs) <= pivot <= max(xs)`
      subroutine partitioning_implIntegerDim0KindINT64(xs, pivot, iPivot)
         Integer(kind=INT64), intent(inout):: xs(:)
         Integer(kind=INT64), intent(in):: pivot
         Integer(kind=INT64), intent(out):: iPivot
         Integer(kind=kind(iPivot)):: iL, iR
         iL = 1
         iR = size(xs, dim=1, kind=kind(iR))
         if(iL < iR)then
            do
               do while(xs(iL) < pivot)
                  iL = iL + 1
               end do
               do while(pivot < xs(iR))
                  iR = iR - 1
               end do
               if(iR <= iL) exit
               call swapping(xs(iL), xs(iR))
               iL = iL + 1
               iR = iR - 1
            end do
         end if
         iPivot = iR
      end subroutine partitioning_implIntegerDim0KindINT64
      function insertion_sortIntegerDim0KindINT64(xs) result(ret)
         Integer(kind=INT64), intent(in):: xs(:)
         Integer(kind=INT64):: ret(size(xs, kind=INT64))
         ret = xs
         call insertion_sorting(ret)
      end function insertion_sortIntegerDim0KindINT64
      subroutine insertion_sortingIntegerDim0KindINT64(xs)
         Integer(kind=INT64), intent(inout):: xs(:)
         if(.not.(.not.any(is_nan(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 2009, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call insertion_sorting_impl(xs)
      end subroutine insertion_sortingIntegerDim0KindINT64
      subroutine insertion_sorting_implIntegerDim0KindINT64(xs)
         Integer(kind=INT64), intent(inout):: xs(:)
         Integer(kind=INT64):: i, j
         Integer(kind=INT64):: tmp
         do i = int(2, kind=kind(i)), size(xs, kind=kind(i))
            tmp = xs(i)
            if(xs(i - 1) > tmp)then
               j = i
               do while(j > 1)
                  if(xs(j - 1) <= tmp) exit
                  xs(j) = xs(j - 1)
                  j = j - 1
               end do
               xs(j) = tmp
            end if
         end do
      end subroutine insertion_sorting_implIntegerDim0KindINT64
      function quick_sortIntegerDim0KindINT64(xs) result(xsSorted)
         Integer(kind=INT64), intent(in):: xs(:)
         Integer(kind=INT64):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call quick_sorting(xsSorted)
      end function quick_sortIntegerDim0KindINT64
      subroutine quick_sortingIntegerDim0KindINT64(xs)
         Integer(kind=INT64), intent(inout):: xs(:)
         Integer(kind=INT64):: pivot
         type(IntegerDim0KindINT64Stack):: iLs, iRs
         Integer(kind = INT64):: iL, iR, iPivot
         Logical:: isUniform
         if(.not.(.not.any(is_nan(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 2047, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call push(iLs, 1_INT64)
         call push(iRs, size(xs, dim = 1, kind = kind(iR)))
         do while(pop(iRs, iR)) ! Loop for all segments on the stacks.
            if(.not.(pop(iLs, iL)))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 2053, (".not.(pop(iLs, iL))"); error stop; end if ! Left most index of the current segment.
            do while(iL < iR) ! While current segment remains
               if(iR - iL > 7)then
                  pivot = get_pivot(xs(iL:iR), isUniform)
                  if(isUniform) exit
                  call partitioning_impl(xs(iL:iR), pivot, iPivot)
                  call push(iRs, iR)
                  iR = iPivot + iL - 1 ! Right most index of the current segment
                  call push(iLs, iR + 1)
               else
                  call insertion_sorting_impl(xs)
                  return
               end if
            end do
         end do
      end subroutine quick_sortingIntegerDim0KindINT64
      function get_pivotIntegerDim0KindINT64(xs, isUniform) result(pivot)
         Integer(kind=INT64):: pivot
         Integer(kind=INT64), intent(in):: xs(:)
         Logical, intent(out):: isUniform
         Integer(kind=INT64):: tmpX
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
         Integer(kind=INT64), intent(in):: xs(:)
         Integer(kind=INT64):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call merge_sortingIntegerDim0KindINT64(xsSorted)
      end function merge_sortIntegerDim0KindINT64
      subroutine merge_sortingIntegerDim0KindINT64(xs)
         Integer(kind=INT64), intent(inout):: xs(:)
         Integer(kind=INT64):: buf(size(xs, dim=1, kind=INT64))
         Logical(kind=INT8):: isRetInBuf
         if(.not.(.not.any(is_nan(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 2113, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call merge_sorting_implIntegerDim0KindINT64(xs, buf, isRetInBuf)
         if(isRetInBuf)then
            xs = buf
         end if
      end subroutine merge_sortingIntegerDim0KindINT64
      recursive subroutine merge_sorting_implIntegerDim0KindINT64(xs, buf, isRetInBuf)
         Integer(kind=INT64), intent(inout):: xs(:)
         Integer(kind=INT64), intent(out):: buf(:)
         Logical(kind=INT8), intent(out):: isRetInBuf
         Logical(kind=kind(isRetInBuf)):: isLeftRetInBuf, isRightRetInBuf
         Integer(kind = INT64):: nXs, iL, iR
         nXs = size(xs, dim = 1, kind = kind(nXs))
         iL = nXs/2
         iR = iL + 1
         if(nXs > 7)then
            call merge_sorting_impl(xs(:iL), buf(:iL), isLeftRetInBuf)
            call merge_sorting_impl(xs(iR:), buf(iR:), isRightRetInBuf)
            if(isLeftRetInBuf)then
               if(.not.isRightRetInBuf)then
                  buf(iR:) = xs(iR:)
               end if
               call merge_sorted_lists(buf(:iL), buf(iR:), xs)
               isRetInBuf = .false.
            else
               if(isRightRetInBuf)then
                  buf(:iL) = xs(:iL)
                  call merge_sorted_lists(buf(:iL), buf(iR:), xs)
                  isRetInBuf = .false.
               else
                  call merge_sorted_lists(xs(:iL), xs(iR:), buf)
                  isRetInBuf = .true.
               end if
            end if
         else
            call insertion_sorting_impl(xs)
            isRetInBuf = .false.
         end if
      end subroutine merge_sorting_implIntegerDim0KindINT64
      ! Merge sorted 1-D array xs and ys into zs.
      subroutine merge_sorted_listsIntegerDim0KindINT64(xs, ys, zs)
         Integer(kind=INT64), intent(in):: xs(:), ys(:)
         Integer(kind=INT64), intent(out):: zs(size(xs, dim=1, kind=INT64) + size(ys, dim=1, kind=INT64))
         Integer(kind = INT64):: iXs, nXs, iYs, nYs, iZs, nZs
         nXs = size(xs, dim = 1, kind = kind(nXs))
         nYs = size(ys, dim = 1, kind = kind(nYs))
         nZs = size(zs, dim = 1, kind = kind(nZs))
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
      elemental subroutine swappingIntegerDim0KindINT64(a, b)
         Integer(kind=INT64), intent(inout):: a, b
         Integer(kind=INT64):: swap
         swap = b
         b = a
         a = swap
      end subroutine swappingIntegerDim0KindINT64
      function medianRealDim0KindREAL32(xs) result(ret)
         Real(kind=REAL32), intent(in):: xs(:)
         Real(kind=REAL32):: xsCopy(size(xs, dim=1, kind=INT64))
         Real(kind=REAL32):: ret
         xsCopy = xs
         ret = medianing(xsCopy)
      end function medianRealDim0KindREAL32
      function medianingRealDim0KindREAL32(xs) result(ret)
         Real(kind=REAL32), intent(inout):: xs(:)
         Real(kind=REAL32):: ret
         Integer(kind=INT64):: nXs
         nXS = size(xs, dim=1, kind=kind(nXs))
         if(.not.(nXs > 0))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 2209, (".not.(nXs > 0)"); error stop; end if
         if(mod(nXs, 2) == 1)then
            ret = selecting(xs, nXs/2 + 1)
         else
            ret = (real(selecting(xs, nXs/2), kind=kind(ret))/2) + (real(selecting(xs, nXs/2 + 1), kind=kind(ret))/2)
         end if
      end function medianingRealDim0KindREAL32
      recursive function median_of_medianingRealDim0KindREAL32(xs) result(ret)
         Real(kind=REAL32), intent(inout):: xs(:)
         Real(kind=REAL32):: ret
         Integer(kind=INT64):: nXs
         Integer(kind=kind(nXs)):: i
         nXS = size(xs, dim=1, kind=kind(nXs))
         ret = select([(selecting(xs((5*(i - 1) + 1):(5*i)), 3), i = 1, nXs/5)], nXs/10 + 1)
      end function median_of_medianingRealDim0KindREAL32
         recursive function selectRealDim0KindREAL32IntegerDim0KindINT8(xs, k) result(ret)
            Real(kind=REAL32), intent(in):: xs(:)
            Integer(kind=INT8), intent(in):: k
            Real(kind=REAL32):: ret
            Real(kind=REAL32):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0KindREAL32IntegerDim0KindINT8
         recursive function selectingRealDim0KindREAL32IntegerDim0KindINT8(xs, k) result(ret)
            Real(kind=REAL32), intent(inout):: xs(:)
            Integer(kind=INT8), intent(in):: k
            Real(kind=REAL32):: ret
            Real(kind=REAL32):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingRealDim0KindREAL32IntegerDim0KindINT8
         recursive function selectRealDim0KindREAL32IntegerDim0KindINT16(xs, k) result(ret)
            Real(kind=REAL32), intent(in):: xs(:)
            Integer(kind=INT16), intent(in):: k
            Real(kind=REAL32):: ret
            Real(kind=REAL32):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0KindREAL32IntegerDim0KindINT16
         recursive function selectingRealDim0KindREAL32IntegerDim0KindINT16(xs, k) result(ret)
            Real(kind=REAL32), intent(inout):: xs(:)
            Integer(kind=INT16), intent(in):: k
            Real(kind=REAL32):: ret
            Real(kind=REAL32):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingRealDim0KindREAL32IntegerDim0KindINT16
         recursive function selectRealDim0KindREAL32IntegerDim0KindINT32(xs, k) result(ret)
            Real(kind=REAL32), intent(in):: xs(:)
            Integer(kind=INT32), intent(in):: k
            Real(kind=REAL32):: ret
            Real(kind=REAL32):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0KindREAL32IntegerDim0KindINT32
         recursive function selectingRealDim0KindREAL32IntegerDim0KindINT32(xs, k) result(ret)
            Real(kind=REAL32), intent(inout):: xs(:)
            Integer(kind=INT32), intent(in):: k
            Real(kind=REAL32):: ret
            Real(kind=REAL32):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingRealDim0KindREAL32IntegerDim0KindINT32
         recursive function selectRealDim0KindREAL32IntegerDim0KindINT64(xs, k) result(ret)
            Real(kind=REAL32), intent(in):: xs(:)
            Integer(kind=INT64), intent(in):: k
            Real(kind=REAL32):: ret
            Real(kind=REAL32):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0KindREAL32IntegerDim0KindINT64
         recursive function selectingRealDim0KindREAL32IntegerDim0KindINT64(xs, k) result(ret)
            Real(kind=REAL32), intent(inout):: xs(:)
            Integer(kind=INT64), intent(in):: k
            Real(kind=REAL32):: ret
            Real(kind=REAL32):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingRealDim0KindREAL32IntegerDim0KindINT64
      subroutine partitioningRealDim0KindREAL32(xs, pivot, iPivot)
         Real(kind=REAL32), intent(inout):: xs(:)
         Real(kind=REAL32), intent(in):: pivot
         Integer(kind=INT64), intent(out):: iPivot
         if(.not.(minval(xs) <= pivot .and. pivot <= maxval(xs)))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 2349, (".not.(minval(xs) <= pivot .and. pivot <= maxval(xs))"); error stop; end if
         call partitioning_impl(xs, pivot, iPivot)
      end subroutine partitioningRealDim0KindREAL32
      ! Assume `min(xs) <= pivot <= max(xs)`
      subroutine partitioning_implRealDim0KindREAL32(xs, pivot, iPivot)
         Real(kind=REAL32), intent(inout):: xs(:)
         Real(kind=REAL32), intent(in):: pivot
         Integer(kind=INT64), intent(out):: iPivot
         Integer(kind=kind(iPivot)):: iL, iR
         iL = 1
         iR = size(xs, dim=1, kind=kind(iR))
         if(iL < iR)then
            do
               do while(xs(iL) < pivot)
                  iL = iL + 1
               end do
               do while(pivot < xs(iR))
                  iR = iR - 1
               end do
               if(iR <= iL) exit
               call swapping(xs(iL), xs(iR))
               iL = iL + 1
               iR = iR - 1
            end do
         end if
         iPivot = iR
      end subroutine partitioning_implRealDim0KindREAL32
      function insertion_sortRealDim0KindREAL32(xs) result(ret)
         Real(kind=REAL32), intent(in):: xs(:)
         Real(kind=REAL32):: ret(size(xs, kind=INT64))
         ret = xs
         call insertion_sorting(ret)
      end function insertion_sortRealDim0KindREAL32
      subroutine insertion_sortingRealDim0KindREAL32(xs)
         Real(kind=REAL32), intent(inout):: xs(:)
         if(.not.(.not.any(is_nan(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 2390, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call insertion_sorting_impl(xs)
      end subroutine insertion_sortingRealDim0KindREAL32
      subroutine insertion_sorting_implRealDim0KindREAL32(xs)
         Real(kind=REAL32), intent(inout):: xs(:)
         Integer(kind=INT64):: i, j
         Real(kind=REAL32):: tmp
         do i = int(2, kind=kind(i)), size(xs, kind=kind(i))
            tmp = xs(i)
            if(xs(i - 1) > tmp)then
               j = i
               do while(j > 1)
                  if(xs(j - 1) <= tmp) exit
                  xs(j) = xs(j - 1)
                  j = j - 1
               end do
               xs(j) = tmp
            end if
         end do
      end subroutine insertion_sorting_implRealDim0KindREAL32
      function quick_sortRealDim0KindREAL32(xs) result(xsSorted)
         Real(kind=REAL32), intent(in):: xs(:)
         Real(kind=REAL32):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call quick_sorting(xsSorted)
      end function quick_sortRealDim0KindREAL32
      subroutine quick_sortingRealDim0KindREAL32(xs)
         Real(kind=REAL32), intent(inout):: xs(:)
         Real(kind=REAL32):: pivot
         type(IntegerDim0KindINT64Stack):: iLs, iRs
         Integer(kind = INT64):: iL, iR, iPivot
         Logical:: isUniform
         if(.not.(.not.any(is_nan(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 2428, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call push(iLs, 1_INT64)
         call push(iRs, size(xs, dim = 1, kind = kind(iR)))
         do while(pop(iRs, iR)) ! Loop for all segments on the stacks.
            if(.not.(pop(iLs, iL)))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 2434, (".not.(pop(iLs, iL))"); error stop; end if ! Left most index of the current segment.
            do while(iL < iR) ! While current segment remains
               if(iR - iL > 7)then
                  pivot = get_pivot(xs(iL:iR), isUniform)
                  if(isUniform) exit
                  call partitioning_impl(xs(iL:iR), pivot, iPivot)
                  call push(iRs, iR)
                  iR = iPivot + iL - 1 ! Right most index of the current segment
                  call push(iLs, iR + 1)
               else
                  call insertion_sorting_impl(xs)
                  return
               end if
            end do
         end do
      end subroutine quick_sortingRealDim0KindREAL32
      function get_pivotRealDim0KindREAL32(xs, isUniform) result(pivot)
         Real(kind=REAL32):: pivot
         Real(kind=REAL32), intent(in):: xs(:)
         Logical, intent(out):: isUniform
         Real(kind=REAL32):: tmpX
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
         Real(kind=REAL32), intent(in):: xs(:)
         Real(kind=REAL32):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call merge_sortingRealDim0KindREAL32(xsSorted)
      end function merge_sortRealDim0KindREAL32
      subroutine merge_sortingRealDim0KindREAL32(xs)
         Real(kind=REAL32), intent(inout):: xs(:)
         Real(kind=REAL32):: buf(size(xs, dim=1, kind=INT64))
         Logical(kind=INT8):: isRetInBuf
         if(.not.(.not.any(is_nan(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 2494, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call merge_sorting_implRealDim0KindREAL32(xs, buf, isRetInBuf)
         if(isRetInBuf)then
            xs = buf
         end if
      end subroutine merge_sortingRealDim0KindREAL32
      recursive subroutine merge_sorting_implRealDim0KindREAL32(xs, buf, isRetInBuf)
         Real(kind=REAL32), intent(inout):: xs(:)
         Real(kind=REAL32), intent(out):: buf(:)
         Logical(kind=INT8), intent(out):: isRetInBuf
         Logical(kind=kind(isRetInBuf)):: isLeftRetInBuf, isRightRetInBuf
         Integer(kind = INT64):: nXs, iL, iR
         nXs = size(xs, dim = 1, kind = kind(nXs))
         iL = nXs/2
         iR = iL + 1
         if(nXs > 7)then
            call merge_sorting_impl(xs(:iL), buf(:iL), isLeftRetInBuf)
            call merge_sorting_impl(xs(iR:), buf(iR:), isRightRetInBuf)
            if(isLeftRetInBuf)then
               if(.not.isRightRetInBuf)then
                  buf(iR:) = xs(iR:)
               end if
               call merge_sorted_lists(buf(:iL), buf(iR:), xs)
               isRetInBuf = .false.
            else
               if(isRightRetInBuf)then
                  buf(:iL) = xs(:iL)
                  call merge_sorted_lists(buf(:iL), buf(iR:), xs)
                  isRetInBuf = .false.
               else
                  call merge_sorted_lists(xs(:iL), xs(iR:), buf)
                  isRetInBuf = .true.
               end if
            end if
         else
            call insertion_sorting_impl(xs)
            isRetInBuf = .false.
         end if
      end subroutine merge_sorting_implRealDim0KindREAL32
      ! Merge sorted 1-D array xs and ys into zs.
      subroutine merge_sorted_listsRealDim0KindREAL32(xs, ys, zs)
         Real(kind=REAL32), intent(in):: xs(:), ys(:)
         Real(kind=REAL32), intent(out):: zs(size(xs, dim=1, kind=INT64) + size(ys, dim=1, kind=INT64))
         Integer(kind = INT64):: iXs, nXs, iYs, nYs, iZs, nZs
         nXs = size(xs, dim = 1, kind = kind(nXs))
         nYs = size(ys, dim = 1, kind = kind(nYs))
         nZs = size(zs, dim = 1, kind = kind(nZs))
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
      elemental subroutine swappingRealDim0KindREAL32(a, b)
         Real(kind=REAL32), intent(inout):: a, b
         Real(kind=REAL32):: swap
         swap = b
         b = a
         a = swap
      end subroutine swappingRealDim0KindREAL32
      function medianRealDim0KindREAL64(xs) result(ret)
         Real(kind=REAL64), intent(in):: xs(:)
         Real(kind=REAL64):: xsCopy(size(xs, dim=1, kind=INT64))
         Real(kind=REAL64):: ret
         xsCopy = xs
         ret = medianing(xsCopy)
      end function medianRealDim0KindREAL64
      function medianingRealDim0KindREAL64(xs) result(ret)
         Real(kind=REAL64), intent(inout):: xs(:)
         Real(kind=REAL64):: ret
         Integer(kind=INT64):: nXs
         nXS = size(xs, dim=1, kind=kind(nXs))
         if(.not.(nXs > 0))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 2590, (".not.(nXs > 0)"); error stop; end if
         if(mod(nXs, 2) == 1)then
            ret = selecting(xs, nXs/2 + 1)
         else
            ret = (real(selecting(xs, nXs/2), kind=kind(ret))/2) + (real(selecting(xs, nXs/2 + 1), kind=kind(ret))/2)
         end if
      end function medianingRealDim0KindREAL64
      recursive function median_of_medianingRealDim0KindREAL64(xs) result(ret)
         Real(kind=REAL64), intent(inout):: xs(:)
         Real(kind=REAL64):: ret
         Integer(kind=INT64):: nXs
         Integer(kind=kind(nXs)):: i
         nXS = size(xs, dim=1, kind=kind(nXs))
         ret = select([(selecting(xs((5*(i - 1) + 1):(5*i)), 3), i = 1, nXs/5)], nXs/10 + 1)
      end function median_of_medianingRealDim0KindREAL64
         recursive function selectRealDim0KindREAL64IntegerDim0KindINT8(xs, k) result(ret)
            Real(kind=REAL64), intent(in):: xs(:)
            Integer(kind=INT8), intent(in):: k
            Real(kind=REAL64):: ret
            Real(kind=REAL64):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0KindREAL64IntegerDim0KindINT8
         recursive function selectingRealDim0KindREAL64IntegerDim0KindINT8(xs, k) result(ret)
            Real(kind=REAL64), intent(inout):: xs(:)
            Integer(kind=INT8), intent(in):: k
            Real(kind=REAL64):: ret
            Real(kind=REAL64):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingRealDim0KindREAL64IntegerDim0KindINT8
         recursive function selectRealDim0KindREAL64IntegerDim0KindINT16(xs, k) result(ret)
            Real(kind=REAL64), intent(in):: xs(:)
            Integer(kind=INT16), intent(in):: k
            Real(kind=REAL64):: ret
            Real(kind=REAL64):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0KindREAL64IntegerDim0KindINT16
         recursive function selectingRealDim0KindREAL64IntegerDim0KindINT16(xs, k) result(ret)
            Real(kind=REAL64), intent(inout):: xs(:)
            Integer(kind=INT16), intent(in):: k
            Real(kind=REAL64):: ret
            Real(kind=REAL64):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingRealDim0KindREAL64IntegerDim0KindINT16
         recursive function selectRealDim0KindREAL64IntegerDim0KindINT32(xs, k) result(ret)
            Real(kind=REAL64), intent(in):: xs(:)
            Integer(kind=INT32), intent(in):: k
            Real(kind=REAL64):: ret
            Real(kind=REAL64):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0KindREAL64IntegerDim0KindINT32
         recursive function selectingRealDim0KindREAL64IntegerDim0KindINT32(xs, k) result(ret)
            Real(kind=REAL64), intent(inout):: xs(:)
            Integer(kind=INT32), intent(in):: k
            Real(kind=REAL64):: ret
            Real(kind=REAL64):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingRealDim0KindREAL64IntegerDim0KindINT32
         recursive function selectRealDim0KindREAL64IntegerDim0KindINT64(xs, k) result(ret)
            Real(kind=REAL64), intent(in):: xs(:)
            Integer(kind=INT64), intent(in):: k
            Real(kind=REAL64):: ret
            Real(kind=REAL64):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0KindREAL64IntegerDim0KindINT64
         recursive function selectingRealDim0KindREAL64IntegerDim0KindINT64(xs, k) result(ret)
            Real(kind=REAL64), intent(inout):: xs(:)
            Integer(kind=INT64), intent(in):: k
            Real(kind=REAL64):: ret
            Real(kind=REAL64):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingRealDim0KindREAL64IntegerDim0KindINT64
      subroutine partitioningRealDim0KindREAL64(xs, pivot, iPivot)
         Real(kind=REAL64), intent(inout):: xs(:)
         Real(kind=REAL64), intent(in):: pivot
         Integer(kind=INT64), intent(out):: iPivot
         if(.not.(minval(xs) <= pivot .and. pivot <= maxval(xs)))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 2730, (".not.(minval(xs) <= pivot .and. pivot <= maxval(xs))"); error stop; end if
         call partitioning_impl(xs, pivot, iPivot)
      end subroutine partitioningRealDim0KindREAL64
      ! Assume `min(xs) <= pivot <= max(xs)`
      subroutine partitioning_implRealDim0KindREAL64(xs, pivot, iPivot)
         Real(kind=REAL64), intent(inout):: xs(:)
         Real(kind=REAL64), intent(in):: pivot
         Integer(kind=INT64), intent(out):: iPivot
         Integer(kind=kind(iPivot)):: iL, iR
         iL = 1
         iR = size(xs, dim=1, kind=kind(iR))
         if(iL < iR)then
            do
               do while(xs(iL) < pivot)
                  iL = iL + 1
               end do
               do while(pivot < xs(iR))
                  iR = iR - 1
               end do
               if(iR <= iL) exit
               call swapping(xs(iL), xs(iR))
               iL = iL + 1
               iR = iR - 1
            end do
         end if
         iPivot = iR
      end subroutine partitioning_implRealDim0KindREAL64
      function insertion_sortRealDim0KindREAL64(xs) result(ret)
         Real(kind=REAL64), intent(in):: xs(:)
         Real(kind=REAL64):: ret(size(xs, kind=INT64))
         ret = xs
         call insertion_sorting(ret)
      end function insertion_sortRealDim0KindREAL64
      subroutine insertion_sortingRealDim0KindREAL64(xs)
         Real(kind=REAL64), intent(inout):: xs(:)
         if(.not.(.not.any(is_nan(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 2771, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call insertion_sorting_impl(xs)
      end subroutine insertion_sortingRealDim0KindREAL64
      subroutine insertion_sorting_implRealDim0KindREAL64(xs)
         Real(kind=REAL64), intent(inout):: xs(:)
         Integer(kind=INT64):: i, j
         Real(kind=REAL64):: tmp
         do i = int(2, kind=kind(i)), size(xs, kind=kind(i))
            tmp = xs(i)
            if(xs(i - 1) > tmp)then
               j = i
               do while(j > 1)
                  if(xs(j - 1) <= tmp) exit
                  xs(j) = xs(j - 1)
                  j = j - 1
               end do
               xs(j) = tmp
            end if
         end do
      end subroutine insertion_sorting_implRealDim0KindREAL64
      function quick_sortRealDim0KindREAL64(xs) result(xsSorted)
         Real(kind=REAL64), intent(in):: xs(:)
         Real(kind=REAL64):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call quick_sorting(xsSorted)
      end function quick_sortRealDim0KindREAL64
      subroutine quick_sortingRealDim0KindREAL64(xs)
         Real(kind=REAL64), intent(inout):: xs(:)
         Real(kind=REAL64):: pivot
         type(IntegerDim0KindINT64Stack):: iLs, iRs
         Integer(kind = INT64):: iL, iR, iPivot
         Logical:: isUniform
         if(.not.(.not.any(is_nan(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 2809, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call push(iLs, 1_INT64)
         call push(iRs, size(xs, dim = 1, kind = kind(iR)))
         do while(pop(iRs, iR)) ! Loop for all segments on the stacks.
            if(.not.(pop(iLs, iL)))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 2815, (".not.(pop(iLs, iL))"); error stop; end if ! Left most index of the current segment.
            do while(iL < iR) ! While current segment remains
               if(iR - iL > 7)then
                  pivot = get_pivot(xs(iL:iR), isUniform)
                  if(isUniform) exit
                  call partitioning_impl(xs(iL:iR), pivot, iPivot)
                  call push(iRs, iR)
                  iR = iPivot + iL - 1 ! Right most index of the current segment
                  call push(iLs, iR + 1)
               else
                  call insertion_sorting_impl(xs)
                  return
               end if
            end do
         end do
      end subroutine quick_sortingRealDim0KindREAL64
      function get_pivotRealDim0KindREAL64(xs, isUniform) result(pivot)
         Real(kind=REAL64):: pivot
         Real(kind=REAL64), intent(in):: xs(:)
         Logical, intent(out):: isUniform
         Real(kind=REAL64):: tmpX
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
         Real(kind=REAL64), intent(in):: xs(:)
         Real(kind=REAL64):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call merge_sortingRealDim0KindREAL64(xsSorted)
      end function merge_sortRealDim0KindREAL64
      subroutine merge_sortingRealDim0KindREAL64(xs)
         Real(kind=REAL64), intent(inout):: xs(:)
         Real(kind=REAL64):: buf(size(xs, dim=1, kind=INT64))
         Logical(kind=INT8):: isRetInBuf
         if(.not.(.not.any(is_nan(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 2875, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call merge_sorting_implRealDim0KindREAL64(xs, buf, isRetInBuf)
         if(isRetInBuf)then
            xs = buf
         end if
      end subroutine merge_sortingRealDim0KindREAL64
      recursive subroutine merge_sorting_implRealDim0KindREAL64(xs, buf, isRetInBuf)
         Real(kind=REAL64), intent(inout):: xs(:)
         Real(kind=REAL64), intent(out):: buf(:)
         Logical(kind=INT8), intent(out):: isRetInBuf
         Logical(kind=kind(isRetInBuf)):: isLeftRetInBuf, isRightRetInBuf
         Integer(kind = INT64):: nXs, iL, iR
         nXs = size(xs, dim = 1, kind = kind(nXs))
         iL = nXs/2
         iR = iL + 1
         if(nXs > 7)then
            call merge_sorting_impl(xs(:iL), buf(:iL), isLeftRetInBuf)
            call merge_sorting_impl(xs(iR:), buf(iR:), isRightRetInBuf)
            if(isLeftRetInBuf)then
               if(.not.isRightRetInBuf)then
                  buf(iR:) = xs(iR:)
               end if
               call merge_sorted_lists(buf(:iL), buf(iR:), xs)
               isRetInBuf = .false.
            else
               if(isRightRetInBuf)then
                  buf(:iL) = xs(:iL)
                  call merge_sorted_lists(buf(:iL), buf(iR:), xs)
                  isRetInBuf = .false.
               else
                  call merge_sorted_lists(xs(:iL), xs(iR:), buf)
                  isRetInBuf = .true.
               end if
            end if
         else
            call insertion_sorting_impl(xs)
            isRetInBuf = .false.
         end if
      end subroutine merge_sorting_implRealDim0KindREAL64
      ! Merge sorted 1-D array xs and ys into zs.
      subroutine merge_sorted_listsRealDim0KindREAL64(xs, ys, zs)
         Real(kind=REAL64), intent(in):: xs(:), ys(:)
         Real(kind=REAL64), intent(out):: zs(size(xs, dim=1, kind=INT64) + size(ys, dim=1, kind=INT64))
         Integer(kind = INT64):: iXs, nXs, iYs, nYs, iZs, nZs
         nXs = size(xs, dim = 1, kind = kind(nXs))
         nYs = size(ys, dim = 1, kind = kind(nYs))
         nZs = size(zs, dim = 1, kind = kind(nZs))
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
      elemental subroutine swappingRealDim0KindREAL64(a, b)
         Real(kind=REAL64), intent(inout):: a, b
         Real(kind=REAL64):: swap
         swap = b
         b = a
         a = swap
      end subroutine swappingRealDim0KindREAL64
      function medianRealDim0KindREAL128(xs) result(ret)
         Real(kind=REAL128), intent(in):: xs(:)
         Real(kind=REAL128):: xsCopy(size(xs, dim=1, kind=INT64))
         Real(kind=REAL128):: ret
         xsCopy = xs
         ret = medianing(xsCopy)
      end function medianRealDim0KindREAL128
      function medianingRealDim0KindREAL128(xs) result(ret)
         Real(kind=REAL128), intent(inout):: xs(:)
         Real(kind=REAL128):: ret
         Integer(kind=INT64):: nXs
         nXS = size(xs, dim=1, kind=kind(nXs))
         if(.not.(nXs > 0))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 2971, (".not.(nXs > 0)"); error stop; end if
         if(mod(nXs, 2) == 1)then
            ret = selecting(xs, nXs/2 + 1)
         else
            ret = (real(selecting(xs, nXs/2), kind=kind(ret))/2) + (real(selecting(xs, nXs/2 + 1), kind=kind(ret))/2)
         end if
      end function medianingRealDim0KindREAL128
      recursive function median_of_medianingRealDim0KindREAL128(xs) result(ret)
         Real(kind=REAL128), intent(inout):: xs(:)
         Real(kind=REAL128):: ret
         Integer(kind=INT64):: nXs
         Integer(kind=kind(nXs)):: i
         nXS = size(xs, dim=1, kind=kind(nXs))
         ret = select([(selecting(xs((5*(i - 1) + 1):(5*i)), 3), i = 1, nXs/5)], nXs/10 + 1)
      end function median_of_medianingRealDim0KindREAL128
         recursive function selectRealDim0KindREAL128IntegerDim0KindINT8(xs, k) result(ret)
            Real(kind=REAL128), intent(in):: xs(:)
            Integer(kind=INT8), intent(in):: k
            Real(kind=REAL128):: ret
            Real(kind=REAL128):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0KindREAL128IntegerDim0KindINT8
         recursive function selectingRealDim0KindREAL128IntegerDim0KindINT8(xs, k) result(ret)
            Real(kind=REAL128), intent(inout):: xs(:)
            Integer(kind=INT8), intent(in):: k
            Real(kind=REAL128):: ret
            Real(kind=REAL128):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingRealDim0KindREAL128IntegerDim0KindINT8
         recursive function selectRealDim0KindREAL128IntegerDim0KindINT16(xs, k) result(ret)
            Real(kind=REAL128), intent(in):: xs(:)
            Integer(kind=INT16), intent(in):: k
            Real(kind=REAL128):: ret
            Real(kind=REAL128):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0KindREAL128IntegerDim0KindINT16
         recursive function selectingRealDim0KindREAL128IntegerDim0KindINT16(xs, k) result(ret)
            Real(kind=REAL128), intent(inout):: xs(:)
            Integer(kind=INT16), intent(in):: k
            Real(kind=REAL128):: ret
            Real(kind=REAL128):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingRealDim0KindREAL128IntegerDim0KindINT16
         recursive function selectRealDim0KindREAL128IntegerDim0KindINT32(xs, k) result(ret)
            Real(kind=REAL128), intent(in):: xs(:)
            Integer(kind=INT32), intent(in):: k
            Real(kind=REAL128):: ret
            Real(kind=REAL128):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0KindREAL128IntegerDim0KindINT32
         recursive function selectingRealDim0KindREAL128IntegerDim0KindINT32(xs, k) result(ret)
            Real(kind=REAL128), intent(inout):: xs(:)
            Integer(kind=INT32), intent(in):: k
            Real(kind=REAL128):: ret
            Real(kind=REAL128):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingRealDim0KindREAL128IntegerDim0KindINT32
         recursive function selectRealDim0KindREAL128IntegerDim0KindINT64(xs, k) result(ret)
            Real(kind=REAL128), intent(in):: xs(:)
            Integer(kind=INT64), intent(in):: k
            Real(kind=REAL128):: ret
            Real(kind=REAL128):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0KindREAL128IntegerDim0KindINT64
         recursive function selectingRealDim0KindREAL128IntegerDim0KindINT64(xs, k) result(ret)
            Real(kind=REAL128), intent(inout):: xs(:)
            Integer(kind=INT64), intent(in):: k
            Real(kind=REAL128):: ret
            Real(kind=REAL128):: pivot
            Integer(kind=INT64):: iPivot
            if(size(xs, dim=1, kind=INT64) > 14)then
               pivot = median_of_medianing(xs)
               call partitioning_impl(xs, pivot, iPivot)
               if(k <= iPivot)then
                  ret = selecting(xs(:iPivot), k)
               else
                  ret = selecting(xs((iPivot + 1):), k - iPivot)
               end if
            else
               ret = get(merge_sort(xs), k)
            end if
         end function selectingRealDim0KindREAL128IntegerDim0KindINT64
      subroutine partitioningRealDim0KindREAL128(xs, pivot, iPivot)
         Real(kind=REAL128), intent(inout):: xs(:)
         Real(kind=REAL128), intent(in):: pivot
         Integer(kind=INT64), intent(out):: iPivot
         if(.not.(minval(xs) <= pivot .and. pivot <= maxval(xs)))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 3111, (".not.(minval(xs) <= pivot .and. pivot <= maxval(xs))"); error stop; end if
         call partitioning_impl(xs, pivot, iPivot)
      end subroutine partitioningRealDim0KindREAL128
      ! Assume `min(xs) <= pivot <= max(xs)`
      subroutine partitioning_implRealDim0KindREAL128(xs, pivot, iPivot)
         Real(kind=REAL128), intent(inout):: xs(:)
         Real(kind=REAL128), intent(in):: pivot
         Integer(kind=INT64), intent(out):: iPivot
         Integer(kind=kind(iPivot)):: iL, iR
         iL = 1
         iR = size(xs, dim=1, kind=kind(iR))
         if(iL < iR)then
            do
               do while(xs(iL) < pivot)
                  iL = iL + 1
               end do
               do while(pivot < xs(iR))
                  iR = iR - 1
               end do
               if(iR <= iL) exit
               call swapping(xs(iL), xs(iR))
               iL = iL + 1
               iR = iR - 1
            end do
         end if
         iPivot = iR
      end subroutine partitioning_implRealDim0KindREAL128
      function insertion_sortRealDim0KindREAL128(xs) result(ret)
         Real(kind=REAL128), intent(in):: xs(:)
         Real(kind=REAL128):: ret(size(xs, kind=INT64))
         ret = xs
         call insertion_sorting(ret)
      end function insertion_sortRealDim0KindREAL128
      subroutine insertion_sortingRealDim0KindREAL128(xs)
         Real(kind=REAL128), intent(inout):: xs(:)
         if(.not.(.not.any(is_nan(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 3152, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call insertion_sorting_impl(xs)
      end subroutine insertion_sortingRealDim0KindREAL128
      subroutine insertion_sorting_implRealDim0KindREAL128(xs)
         Real(kind=REAL128), intent(inout):: xs(:)
         Integer(kind=INT64):: i, j
         Real(kind=REAL128):: tmp
         do i = int(2, kind=kind(i)), size(xs, kind=kind(i))
            tmp = xs(i)
            if(xs(i - 1) > tmp)then
               j = i
               do while(j > 1)
                  if(xs(j - 1) <= tmp) exit
                  xs(j) = xs(j - 1)
                  j = j - 1
               end do
               xs(j) = tmp
            end if
         end do
      end subroutine insertion_sorting_implRealDim0KindREAL128
      function quick_sortRealDim0KindREAL128(xs) result(xsSorted)
         Real(kind=REAL128), intent(in):: xs(:)
         Real(kind=REAL128):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call quick_sorting(xsSorted)
      end function quick_sortRealDim0KindREAL128
      subroutine quick_sortingRealDim0KindREAL128(xs)
         Real(kind=REAL128), intent(inout):: xs(:)
         Real(kind=REAL128):: pivot
         type(IntegerDim0KindINT64Stack):: iLs, iRs
         Integer(kind = INT64):: iL, iR, iPivot
         Logical:: isUniform
         if(.not.(.not.any(is_nan(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 3190, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call push(iLs, 1_INT64)
         call push(iRs, size(xs, dim = 1, kind = kind(iR)))
         do while(pop(iRs, iR)) ! Loop for all segments on the stacks.
            if(.not.(pop(iLs, iL)))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 3196, (".not.(pop(iLs, iL))"); error stop; end if ! Left most index of the current segment.
            do while(iL < iR) ! While current segment remains
               if(iR - iL > 7)then
                  pivot = get_pivot(xs(iL:iR), isUniform)
                  if(isUniform) exit
                  call partitioning_impl(xs(iL:iR), pivot, iPivot)
                  call push(iRs, iR)
                  iR = iPivot + iL - 1 ! Right most index of the current segment
                  call push(iLs, iR + 1)
               else
                  call insertion_sorting_impl(xs)
                  return
               end if
            end do
         end do
      end subroutine quick_sortingRealDim0KindREAL128
      function get_pivotRealDim0KindREAL128(xs, isUniform) result(pivot)
         Real(kind=REAL128):: pivot
         Real(kind=REAL128), intent(in):: xs(:)
         Logical, intent(out):: isUniform
         Real(kind=REAL128):: tmpX
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
         Real(kind=REAL128), intent(in):: xs(:)
         Real(kind=REAL128):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call merge_sortingRealDim0KindREAL128(xsSorted)
      end function merge_sortRealDim0KindREAL128
      subroutine merge_sortingRealDim0KindREAL128(xs)
         Real(kind=REAL128), intent(inout):: xs(:)
         Real(kind=REAL128):: buf(size(xs, dim=1, kind=INT64))
         Logical(kind=INT8):: isRetInBuf
         if(.not.(.not.any(is_nan(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "sort_lib.f90", " ", 3256, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call merge_sorting_implRealDim0KindREAL128(xs, buf, isRetInBuf)
         if(isRetInBuf)then
            xs = buf
         end if
      end subroutine merge_sortingRealDim0KindREAL128
      recursive subroutine merge_sorting_implRealDim0KindREAL128(xs, buf, isRetInBuf)
         Real(kind=REAL128), intent(inout):: xs(:)
         Real(kind=REAL128), intent(out):: buf(:)
         Logical(kind=INT8), intent(out):: isRetInBuf
         Logical(kind=kind(isRetInBuf)):: isLeftRetInBuf, isRightRetInBuf
         Integer(kind = INT64):: nXs, iL, iR
         nXs = size(xs, dim = 1, kind = kind(nXs))
         iL = nXs/2
         iR = iL + 1
         if(nXs > 7)then
            call merge_sorting_impl(xs(:iL), buf(:iL), isLeftRetInBuf)
            call merge_sorting_impl(xs(iR:), buf(iR:), isRightRetInBuf)
            if(isLeftRetInBuf)then
               if(.not.isRightRetInBuf)then
                  buf(iR:) = xs(iR:)
               end if
               call merge_sorted_lists(buf(:iL), buf(iR:), xs)
               isRetInBuf = .false.
            else
               if(isRightRetInBuf)then
                  buf(:iL) = xs(:iL)
                  call merge_sorted_lists(buf(:iL), buf(iR:), xs)
                  isRetInBuf = .false.
               else
                  call merge_sorted_lists(xs(:iL), xs(iR:), buf)
                  isRetInBuf = .true.
               end if
            end if
         else
            call insertion_sorting_impl(xs)
            isRetInBuf = .false.
         end if
      end subroutine merge_sorting_implRealDim0KindREAL128
      ! Merge sorted 1-D array xs and ys into zs.
      subroutine merge_sorted_listsRealDim0KindREAL128(xs, ys, zs)
         Real(kind=REAL128), intent(in):: xs(:), ys(:)
         Real(kind=REAL128), intent(out):: zs(size(xs, dim=1, kind=INT64) + size(ys, dim=1, kind=INT64))
         Integer(kind = INT64):: iXs, nXs, iYs, nYs, iZs, nZs
         nXs = size(xs, dim = 1, kind = kind(nXs))
         nYs = size(ys, dim = 1, kind = kind(nYs))
         nZs = size(zs, dim = 1, kind = kind(nZs))
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
      elemental subroutine swappingRealDim0KindREAL128(a, b)
         Real(kind=REAL128), intent(inout):: a, b
         Real(kind=REAL128):: swap
         swap = b
         b = a
         a = swap
      end subroutine swappingRealDim0KindREAL128
end module sort_lib
