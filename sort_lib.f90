module sort_lib
   use, intrinsic:: iso_fortran_env, only: int8, int16, int32, int64, real32, real64, real128
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, non_intrinsic:: comparable_lib, only: is_nan, is_infinity
   use, non_intrinsic:: stack_lib, only: add, pop
   use, non_intrinsic:: stack_lib, only: StackIntegerDim0KindINT64
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
         module procedure medianIntegerDim0Kindint8
      end interface median
      interface medianing
         module procedure medianingIntegerDim0Kindint8
      end interface medianing
      interface median_of_medianing
         module procedure median_of_medianingIntegerDim0Kindint8
      end interface median_of_medianing
         interface select
            module procedure selectIntegerDim0Kindint8IntegerDim0Kindint8
         end interface select
         interface selecting
            module procedure selectingIntegerDim0Kindint8IntegerDim0Kindint8
         end interface selecting
         interface select
            module procedure selectIntegerDim0Kindint8IntegerDim0Kindint16
         end interface select
         interface selecting
            module procedure selectingIntegerDim0Kindint8IntegerDim0Kindint16
         end interface selecting
         interface select
            module procedure selectIntegerDim0Kindint8IntegerDim0Kindint32
         end interface select
         interface selecting
            module procedure selectingIntegerDim0Kindint8IntegerDim0Kindint32
         end interface selecting
         interface select
            module procedure selectIntegerDim0Kindint8IntegerDim0Kindint64
         end interface select
         interface selecting
            module procedure selectingIntegerDim0Kindint8IntegerDim0Kindint64
         end interface selecting
      interface partitioning
         module procedure partitioningIntegerDim0Kindint8
      end interface partitioning
      interface partitioning_impl
         module procedure partitioning_implIntegerDim0Kindint8
      end interface partitioning_impl
      interface insertion_sort
         module procedure insertion_sortIntegerDim0Kindint8
      end interface insertion_sort
      interface insertion_sorting
         module procedure insertion_sortingIntegerDim0Kindint8
      end interface insertion_sorting
      interface insertion_sorting_impl
         module procedure insertion_sorting_implIntegerDim0Kindint8
      end interface insertion_sorting_impl
      interface quick_sort
         module procedure quick_sortIntegerDim0Kindint8
      end interface quick_sort
      interface quick_sorting
         module procedure quick_sortingIntegerDim0Kindint8
      end interface quick_sorting
      interface get_pivot
         module procedure get_pivotIntegerDim0Kindint8
      end interface get_pivot
      interface merge_sort
         module procedure merge_sortIntegerDim0Kindint8
      end interface merge_sort
      interface merge_sorting
         module procedure merge_sortingIntegerDim0Kindint8
      end interface merge_sorting
      interface merge_sorting_impl
         module procedure merge_sorting_implIntegerDim0Kindint8
      end interface merge_sorting_impl
      interface merge_sorted_lists
         module procedure merge_sorted_listsIntegerDim0Kindint8
      end interface merge_sorted_lists
      interface swapping
         module procedure swappingIntegerDim0Kindint8
      end interface swapping
      interface median
         module procedure medianIntegerDim0Kindint16
      end interface median
      interface medianing
         module procedure medianingIntegerDim0Kindint16
      end interface medianing
      interface median_of_medianing
         module procedure median_of_medianingIntegerDim0Kindint16
      end interface median_of_medianing
         interface select
            module procedure selectIntegerDim0Kindint16IntegerDim0Kindint8
         end interface select
         interface selecting
            module procedure selectingIntegerDim0Kindint16IntegerDim0Kindint8
         end interface selecting
         interface select
            module procedure selectIntegerDim0Kindint16IntegerDim0Kindint16
         end interface select
         interface selecting
            module procedure selectingIntegerDim0Kindint16IntegerDim0Kindint16
         end interface selecting
         interface select
            module procedure selectIntegerDim0Kindint16IntegerDim0Kindint32
         end interface select
         interface selecting
            module procedure selectingIntegerDim0Kindint16IntegerDim0Kindint32
         end interface selecting
         interface select
            module procedure selectIntegerDim0Kindint16IntegerDim0Kindint64
         end interface select
         interface selecting
            module procedure selectingIntegerDim0Kindint16IntegerDim0Kindint64
         end interface selecting
      interface partitioning
         module procedure partitioningIntegerDim0Kindint16
      end interface partitioning
      interface partitioning_impl
         module procedure partitioning_implIntegerDim0Kindint16
      end interface partitioning_impl
      interface insertion_sort
         module procedure insertion_sortIntegerDim0Kindint16
      end interface insertion_sort
      interface insertion_sorting
         module procedure insertion_sortingIntegerDim0Kindint16
      end interface insertion_sorting
      interface insertion_sorting_impl
         module procedure insertion_sorting_implIntegerDim0Kindint16
      end interface insertion_sorting_impl
      interface quick_sort
         module procedure quick_sortIntegerDim0Kindint16
      end interface quick_sort
      interface quick_sorting
         module procedure quick_sortingIntegerDim0Kindint16
      end interface quick_sorting
      interface get_pivot
         module procedure get_pivotIntegerDim0Kindint16
      end interface get_pivot
      interface merge_sort
         module procedure merge_sortIntegerDim0Kindint16
      end interface merge_sort
      interface merge_sorting
         module procedure merge_sortingIntegerDim0Kindint16
      end interface merge_sorting
      interface merge_sorting_impl
         module procedure merge_sorting_implIntegerDim0Kindint16
      end interface merge_sorting_impl
      interface merge_sorted_lists
         module procedure merge_sorted_listsIntegerDim0Kindint16
      end interface merge_sorted_lists
      interface swapping
         module procedure swappingIntegerDim0Kindint16
      end interface swapping
      interface median
         module procedure medianIntegerDim0Kindint32
      end interface median
      interface medianing
         module procedure medianingIntegerDim0Kindint32
      end interface medianing
      interface median_of_medianing
         module procedure median_of_medianingIntegerDim0Kindint32
      end interface median_of_medianing
         interface select
            module procedure selectIntegerDim0Kindint32IntegerDim0Kindint8
         end interface select
         interface selecting
            module procedure selectingIntegerDim0Kindint32IntegerDim0Kindint8
         end interface selecting
         interface select
            module procedure selectIntegerDim0Kindint32IntegerDim0Kindint16
         end interface select
         interface selecting
            module procedure selectingIntegerDim0Kindint32IntegerDim0Kindint16
         end interface selecting
         interface select
            module procedure selectIntegerDim0Kindint32IntegerDim0Kindint32
         end interface select
         interface selecting
            module procedure selectingIntegerDim0Kindint32IntegerDim0Kindint32
         end interface selecting
         interface select
            module procedure selectIntegerDim0Kindint32IntegerDim0Kindint64
         end interface select
         interface selecting
            module procedure selectingIntegerDim0Kindint32IntegerDim0Kindint64
         end interface selecting
      interface partitioning
         module procedure partitioningIntegerDim0Kindint32
      end interface partitioning
      interface partitioning_impl
         module procedure partitioning_implIntegerDim0Kindint32
      end interface partitioning_impl
      interface insertion_sort
         module procedure insertion_sortIntegerDim0Kindint32
      end interface insertion_sort
      interface insertion_sorting
         module procedure insertion_sortingIntegerDim0Kindint32
      end interface insertion_sorting
      interface insertion_sorting_impl
         module procedure insertion_sorting_implIntegerDim0Kindint32
      end interface insertion_sorting_impl
      interface quick_sort
         module procedure quick_sortIntegerDim0Kindint32
      end interface quick_sort
      interface quick_sorting
         module procedure quick_sortingIntegerDim0Kindint32
      end interface quick_sorting
      interface get_pivot
         module procedure get_pivotIntegerDim0Kindint32
      end interface get_pivot
      interface merge_sort
         module procedure merge_sortIntegerDim0Kindint32
      end interface merge_sort
      interface merge_sorting
         module procedure merge_sortingIntegerDim0Kindint32
      end interface merge_sorting
      interface merge_sorting_impl
         module procedure merge_sorting_implIntegerDim0Kindint32
      end interface merge_sorting_impl
      interface merge_sorted_lists
         module procedure merge_sorted_listsIntegerDim0Kindint32
      end interface merge_sorted_lists
      interface swapping
         module procedure swappingIntegerDim0Kindint32
      end interface swapping
      interface median
         module procedure medianIntegerDim0Kindint64
      end interface median
      interface medianing
         module procedure medianingIntegerDim0Kindint64
      end interface medianing
      interface median_of_medianing
         module procedure median_of_medianingIntegerDim0Kindint64
      end interface median_of_medianing
         interface select
            module procedure selectIntegerDim0Kindint64IntegerDim0Kindint8
         end interface select
         interface selecting
            module procedure selectingIntegerDim0Kindint64IntegerDim0Kindint8
         end interface selecting
         interface select
            module procedure selectIntegerDim0Kindint64IntegerDim0Kindint16
         end interface select
         interface selecting
            module procedure selectingIntegerDim0Kindint64IntegerDim0Kindint16
         end interface selecting
         interface select
            module procedure selectIntegerDim0Kindint64IntegerDim0Kindint32
         end interface select
         interface selecting
            module procedure selectingIntegerDim0Kindint64IntegerDim0Kindint32
         end interface selecting
         interface select
            module procedure selectIntegerDim0Kindint64IntegerDim0Kindint64
         end interface select
         interface selecting
            module procedure selectingIntegerDim0Kindint64IntegerDim0Kindint64
         end interface selecting
      interface partitioning
         module procedure partitioningIntegerDim0Kindint64
      end interface partitioning
      interface partitioning_impl
         module procedure partitioning_implIntegerDim0Kindint64
      end interface partitioning_impl
      interface insertion_sort
         module procedure insertion_sortIntegerDim0Kindint64
      end interface insertion_sort
      interface insertion_sorting
         module procedure insertion_sortingIntegerDim0Kindint64
      end interface insertion_sorting
      interface insertion_sorting_impl
         module procedure insertion_sorting_implIntegerDim0Kindint64
      end interface insertion_sorting_impl
      interface quick_sort
         module procedure quick_sortIntegerDim0Kindint64
      end interface quick_sort
      interface quick_sorting
         module procedure quick_sortingIntegerDim0Kindint64
      end interface quick_sorting
      interface get_pivot
         module procedure get_pivotIntegerDim0Kindint64
      end interface get_pivot
      interface merge_sort
         module procedure merge_sortIntegerDim0Kindint64
      end interface merge_sort
      interface merge_sorting
         module procedure merge_sortingIntegerDim0Kindint64
      end interface merge_sorting
      interface merge_sorting_impl
         module procedure merge_sorting_implIntegerDim0Kindint64
      end interface merge_sorting_impl
      interface merge_sorted_lists
         module procedure merge_sorted_listsIntegerDim0Kindint64
      end interface merge_sorted_lists
      interface swapping
         module procedure swappingIntegerDim0Kindint64
      end interface swapping
      interface median
         module procedure medianRealDim0Kindreal32
      end interface median
      interface medianing
         module procedure medianingRealDim0Kindreal32
      end interface medianing
      interface median_of_medianing
         module procedure median_of_medianingRealDim0Kindreal32
      end interface median_of_medianing
         interface select
            module procedure selectRealDim0Kindreal32IntegerDim0Kindint8
         end interface select
         interface selecting
            module procedure selectingRealDim0Kindreal32IntegerDim0Kindint8
         end interface selecting
         interface select
            module procedure selectRealDim0Kindreal32IntegerDim0Kindint16
         end interface select
         interface selecting
            module procedure selectingRealDim0Kindreal32IntegerDim0Kindint16
         end interface selecting
         interface select
            module procedure selectRealDim0Kindreal32IntegerDim0Kindint32
         end interface select
         interface selecting
            module procedure selectingRealDim0Kindreal32IntegerDim0Kindint32
         end interface selecting
         interface select
            module procedure selectRealDim0Kindreal32IntegerDim0Kindint64
         end interface select
         interface selecting
            module procedure selectingRealDim0Kindreal32IntegerDim0Kindint64
         end interface selecting
      interface partitioning
         module procedure partitioningRealDim0Kindreal32
      end interface partitioning
      interface partitioning_impl
         module procedure partitioning_implRealDim0Kindreal32
      end interface partitioning_impl
      interface insertion_sort
         module procedure insertion_sortRealDim0Kindreal32
      end interface insertion_sort
      interface insertion_sorting
         module procedure insertion_sortingRealDim0Kindreal32
      end interface insertion_sorting
      interface insertion_sorting_impl
         module procedure insertion_sorting_implRealDim0Kindreal32
      end interface insertion_sorting_impl
      interface quick_sort
         module procedure quick_sortRealDim0Kindreal32
      end interface quick_sort
      interface quick_sorting
         module procedure quick_sortingRealDim0Kindreal32
      end interface quick_sorting
      interface get_pivot
         module procedure get_pivotRealDim0Kindreal32
      end interface get_pivot
      interface merge_sort
         module procedure merge_sortRealDim0Kindreal32
      end interface merge_sort
      interface merge_sorting
         module procedure merge_sortingRealDim0Kindreal32
      end interface merge_sorting
      interface merge_sorting_impl
         module procedure merge_sorting_implRealDim0Kindreal32
      end interface merge_sorting_impl
      interface merge_sorted_lists
         module procedure merge_sorted_listsRealDim0Kindreal32
      end interface merge_sorted_lists
      interface swapping
         module procedure swappingRealDim0Kindreal32
      end interface swapping
      interface median
         module procedure medianRealDim0Kindreal64
      end interface median
      interface medianing
         module procedure medianingRealDim0Kindreal64
      end interface medianing
      interface median_of_medianing
         module procedure median_of_medianingRealDim0Kindreal64
      end interface median_of_medianing
         interface select
            module procedure selectRealDim0Kindreal64IntegerDim0Kindint8
         end interface select
         interface selecting
            module procedure selectingRealDim0Kindreal64IntegerDim0Kindint8
         end interface selecting
         interface select
            module procedure selectRealDim0Kindreal64IntegerDim0Kindint16
         end interface select
         interface selecting
            module procedure selectingRealDim0Kindreal64IntegerDim0Kindint16
         end interface selecting
         interface select
            module procedure selectRealDim0Kindreal64IntegerDim0Kindint32
         end interface select
         interface selecting
            module procedure selectingRealDim0Kindreal64IntegerDim0Kindint32
         end interface selecting
         interface select
            module procedure selectRealDim0Kindreal64IntegerDim0Kindint64
         end interface select
         interface selecting
            module procedure selectingRealDim0Kindreal64IntegerDim0Kindint64
         end interface selecting
      interface partitioning
         module procedure partitioningRealDim0Kindreal64
      end interface partitioning
      interface partitioning_impl
         module procedure partitioning_implRealDim0Kindreal64
      end interface partitioning_impl
      interface insertion_sort
         module procedure insertion_sortRealDim0Kindreal64
      end interface insertion_sort
      interface insertion_sorting
         module procedure insertion_sortingRealDim0Kindreal64
      end interface insertion_sorting
      interface insertion_sorting_impl
         module procedure insertion_sorting_implRealDim0Kindreal64
      end interface insertion_sorting_impl
      interface quick_sort
         module procedure quick_sortRealDim0Kindreal64
      end interface quick_sort
      interface quick_sorting
         module procedure quick_sortingRealDim0Kindreal64
      end interface quick_sorting
      interface get_pivot
         module procedure get_pivotRealDim0Kindreal64
      end interface get_pivot
      interface merge_sort
         module procedure merge_sortRealDim0Kindreal64
      end interface merge_sort
      interface merge_sorting
         module procedure merge_sortingRealDim0Kindreal64
      end interface merge_sorting
      interface merge_sorting_impl
         module procedure merge_sorting_implRealDim0Kindreal64
      end interface merge_sorting_impl
      interface merge_sorted_lists
         module procedure merge_sorted_listsRealDim0Kindreal64
      end interface merge_sorted_lists
      interface swapping
         module procedure swappingRealDim0Kindreal64
      end interface swapping
      interface median
         module procedure medianRealDim0Kindreal128
      end interface median
      interface medianing
         module procedure medianingRealDim0Kindreal128
      end interface medianing
      interface median_of_medianing
         module procedure median_of_medianingRealDim0Kindreal128
      end interface median_of_medianing
         interface select
            module procedure selectRealDim0Kindreal128IntegerDim0Kindint8
         end interface select
         interface selecting
            module procedure selectingRealDim0Kindreal128IntegerDim0Kindint8
         end interface selecting
         interface select
            module procedure selectRealDim0Kindreal128IntegerDim0Kindint16
         end interface select
         interface selecting
            module procedure selectingRealDim0Kindreal128IntegerDim0Kindint16
         end interface selecting
         interface select
            module procedure selectRealDim0Kindreal128IntegerDim0Kindint32
         end interface select
         interface selecting
            module procedure selectingRealDim0Kindreal128IntegerDim0Kindint32
         end interface selecting
         interface select
            module procedure selectRealDim0Kindreal128IntegerDim0Kindint64
         end interface select
         interface selecting
            module procedure selectingRealDim0Kindreal128IntegerDim0Kindint64
         end interface selecting
      interface partitioning
         module procedure partitioningRealDim0Kindreal128
      end interface partitioning
      interface partitioning_impl
         module procedure partitioning_implRealDim0Kindreal128
      end interface partitioning_impl
      interface insertion_sort
         module procedure insertion_sortRealDim0Kindreal128
      end interface insertion_sort
      interface insertion_sorting
         module procedure insertion_sortingRealDim0Kindreal128
      end interface insertion_sorting
      interface insertion_sorting_impl
         module procedure insertion_sorting_implRealDim0Kindreal128
      end interface insertion_sorting_impl
      interface quick_sort
         module procedure quick_sortRealDim0Kindreal128
      end interface quick_sort
      interface quick_sorting
         module procedure quick_sortingRealDim0Kindreal128
      end interface quick_sorting
      interface get_pivot
         module procedure get_pivotRealDim0Kindreal128
      end interface get_pivot
      interface merge_sort
         module procedure merge_sortRealDim0Kindreal128
      end interface merge_sort
      interface merge_sorting
         module procedure merge_sortingRealDim0Kindreal128
      end interface merge_sorting
      interface merge_sorting_impl
         module procedure merge_sorting_implRealDim0Kindreal128
      end interface merge_sorting_impl
      interface merge_sorted_lists
         module procedure merge_sorted_listsRealDim0Kindreal128
      end interface merge_sorted_lists
      interface swapping
         module procedure swappingRealDim0Kindreal128
      end interface swapping
contains
      function medianIntegerDim0Kindint8(xs) result(ret)
         Integer(kind=int8), intent(in):: xs(:)
         Integer(kind=int8):: xsCopy(size(xs, dim=1, kind=INT64))
         Real(kind=REAL32):: ret
         xsCopy = xs
         ret = medianing(xsCopy)
      end function medianIntegerDim0Kindint8
      function medianingIntegerDim0Kindint8(xs) result(ret)
         Integer(kind=int8), intent(inout):: xs(:)
         Real(kind=REAL32):: ret
         Integer(kind=INT64):: nXs
         nXS = size(xs, dim=1, kind=kind(nXs))
         if(.not.(nXs > 0))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 730, (".not.(nXs > 0)"); error stop; end if
         if(mod(nXs, 2) == 1)then
            ret = selecting(xs, nXs/2 + 1)
         else
            ret = (real(selecting(xs, nXs/2), kind=kind(ret))/2) + (real(selecting(xs, nXs/2 + 1), kind=kind(ret))/2)
         end if
      end function medianingIntegerDim0Kindint8
      recursive function median_of_medianingIntegerDim0Kindint8(xs) result(ret)
         Integer(kind=int8), intent(inout):: xs(:)
         Integer(kind=int8):: ret
         Integer(kind=INT64):: nXs
         Integer(kind=kind(nXs)):: i
         nXS = size(xs, dim=1, kind=kind(nXs))
         ret = select([(selecting(xs((5*(i - 1) + 1):(5*i)), 3), i = 1, nXs/5)], nXs/10 + 1)
      end function median_of_medianingIntegerDim0Kindint8
         recursive function selectIntegerDim0Kindint8IntegerDim0Kindint8(xs, k) result(ret)
            Integer(kind=int8), intent(in):: xs(:)
            Integer(kind=int8), intent(in):: k
            Integer(kind=int8):: ret
            Integer(kind=int8):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0Kindint8IntegerDim0Kindint8
         recursive function selectingIntegerDim0Kindint8IntegerDim0Kindint8(xs, k) result(ret)
            Integer(kind=int8), intent(inout):: xs(:)
            Integer(kind=int8), intent(in):: k
            Integer(kind=int8):: ret
            Integer(kind=int8):: pivot
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
         end function selectingIntegerDim0Kindint8IntegerDim0Kindint8
         recursive function selectIntegerDim0Kindint8IntegerDim0Kindint16(xs, k) result(ret)
            Integer(kind=int8), intent(in):: xs(:)
            Integer(kind=int16), intent(in):: k
            Integer(kind=int8):: ret
            Integer(kind=int8):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0Kindint8IntegerDim0Kindint16
         recursive function selectingIntegerDim0Kindint8IntegerDim0Kindint16(xs, k) result(ret)
            Integer(kind=int8), intent(inout):: xs(:)
            Integer(kind=int16), intent(in):: k
            Integer(kind=int8):: ret
            Integer(kind=int8):: pivot
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
         end function selectingIntegerDim0Kindint8IntegerDim0Kindint16
         recursive function selectIntegerDim0Kindint8IntegerDim0Kindint32(xs, k) result(ret)
            Integer(kind=int8), intent(in):: xs(:)
            Integer(kind=int32), intent(in):: k
            Integer(kind=int8):: ret
            Integer(kind=int8):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0Kindint8IntegerDim0Kindint32
         recursive function selectingIntegerDim0Kindint8IntegerDim0Kindint32(xs, k) result(ret)
            Integer(kind=int8), intent(inout):: xs(:)
            Integer(kind=int32), intent(in):: k
            Integer(kind=int8):: ret
            Integer(kind=int8):: pivot
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
         end function selectingIntegerDim0Kindint8IntegerDim0Kindint32
         recursive function selectIntegerDim0Kindint8IntegerDim0Kindint64(xs, k) result(ret)
            Integer(kind=int8), intent(in):: xs(:)
            Integer(kind=int64), intent(in):: k
            Integer(kind=int8):: ret
            Integer(kind=int8):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0Kindint8IntegerDim0Kindint64
         recursive function selectingIntegerDim0Kindint8IntegerDim0Kindint64(xs, k) result(ret)
            Integer(kind=int8), intent(inout):: xs(:)
            Integer(kind=int64), intent(in):: k
            Integer(kind=int8):: ret
            Integer(kind=int8):: pivot
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
         end function selectingIntegerDim0Kindint8IntegerDim0Kindint64
      subroutine partitioningIntegerDim0Kindint8(xs, pivot, iPivot)
         Integer(kind=int8), intent(inout):: xs(:)
         Integer(kind=int8), intent(in):: pivot
         Integer(kind=INT64), intent(out):: iPivot
         if(.not.(minval(xs) <= pivot .and. pivot <= maxval(xs)))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 875, (".not.(minval(xs) <= pivot .and. pivot <= maxval(xs))"); error stop; end if
         call partitioning_impl(xs, pivot, iPivot)
      end subroutine partitioningIntegerDim0Kindint8
      ! Assume `min(xs) <= pivot <= max(xs)`
      subroutine partitioning_implIntegerDim0Kindint8(xs, pivot, iPivot)
         Integer(kind=int8), intent(inout):: xs(:)
         Integer(kind=int8), intent(in):: pivot
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
      end subroutine partitioning_implIntegerDim0Kindint8
      function insertion_sortIntegerDim0Kindint8(xs) result(ret)
         Integer(kind=int8), intent(in):: xs(:)
         Integer(kind=int8):: ret(size(xs, kind=INT64))
         ret = xs
         call insertion_sorting(ret)
      end function insertion_sortIntegerDim0Kindint8
      subroutine insertion_sortingIntegerDim0Kindint8(xs)
         Integer(kind=int8), intent(inout):: xs(:)
         if(.not.(.not.any(is_nan(xs))))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 916, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call insertion_sorting_impl(xs)
      end subroutine insertion_sortingIntegerDim0Kindint8
      subroutine insertion_sorting_implIntegerDim0Kindint8(xs)
         Integer(kind=int8), intent(inout):: xs(:)
         Integer(kind=INT64):: i, j
         Integer(kind=int8):: tmp
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
      end subroutine insertion_sorting_implIntegerDim0Kindint8
      function quick_sortIntegerDim0Kindint8(xs) result(xsSorted)
         Integer(kind=int8), intent(in):: xs(:)
         Integer(kind=int8):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call quick_sorting(xsSorted)
      end function quick_sortIntegerDim0Kindint8
      subroutine quick_sortingIntegerDim0Kindint8(xs)
         Integer(kind=int8), intent(inout):: xs(:)
         Integer(kind=int8):: pivot
         type(StackIntegerDim0KindINT64):: iLs, iRs
         Integer(kind = INT64):: iL, iR, iPivot
         Logical:: isUniform
         if(.not.(.not.any(is_nan(xs))))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 954, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call add(iLs, 1_INT64)
         call add(iRs, size(xs, dim = 1, kind = kind(iR)))
         do while(pop(iRs, iR)) ! Loop for all segments on the stacks.
            if(.not.(pop(iLs, iL)))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 960, (".not.(pop(iLs, iL))"); error stop; end if ! Left most index of the current segment.
            do while(iL < iR) ! While current segment remains
               if(iR - iL > 7)then
                  pivot = get_pivot(xs(iL:iR), isUniform)
                  if(isUniform) exit
                  call partitioning_impl(xs(iL:iR), pivot, iPivot)
                  call add(iRs, iR)
                  iR = iPivot + iL - 1 ! Right most index of the current segment
                  call add(iLs, iR + 1)
               else
                  call insertion_sorting_impl(xs)
                  return
               end if
            end do
         end do
      end subroutine quick_sortingIntegerDim0Kindint8
      function get_pivotIntegerDim0Kindint8(xs, isUniform) result(pivot)
         Integer(kind=int8):: pivot
         Integer(kind=int8), intent(in):: xs(:)
         Logical, intent(out):: isUniform
         Integer(kind=int8):: tmpX
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
      end function get_pivotIntegerDim0Kindint8
      function merge_sortIntegerDim0Kindint8(xs) result(xsSorted)
         Integer(kind=int8), intent(in):: xs(:)
         Integer(kind=int8):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call merge_sortingIntegerDim0Kindint8(xsSorted)
      end function merge_sortIntegerDim0Kindint8
      subroutine merge_sortingIntegerDim0Kindint8(xs)
         Integer(kind=int8), intent(inout):: xs(:)
         Integer(kind=int8):: buf(size(xs, dim=1, kind=INT64))
         Logical(kind=INT8):: isRetInBuf
         if(.not.(.not.any(is_nan(xs))))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 1020, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call merge_sorting_implIntegerDim0Kindint8(xs, buf, isRetInBuf)
         if(isRetInBuf)then
            xs = buf
         end if
      end subroutine merge_sortingIntegerDim0Kindint8
      recursive subroutine merge_sorting_implIntegerDim0Kindint8(xs, buf, isRetInBuf)
         Integer(kind=int8), intent(inout):: xs(:)
         Integer(kind=int8), intent(out):: buf(:)
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
      end subroutine merge_sorting_implIntegerDim0Kindint8
      ! Merge sorted 1-D array xs and ys into zs.
      subroutine merge_sorted_listsIntegerDim0Kindint8(xs, ys, zs)
         Integer(kind=int8), intent(in):: xs(:), ys(:)
         Integer(kind=int8), intent(out):: zs(size(xs, dim=1, kind=INT64) + size(ys, dim=1, kind=INT64))
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
      end subroutine merge_sorted_listsIntegerDim0Kindint8
      elemental subroutine swappingIntegerDim0Kindint8(a, b)
         Integer(kind=int8), intent(inout):: a, b
         Integer(kind=int8):: swap
         swap = b
         b = a
         a = swap
      end subroutine swappingIntegerDim0Kindint8
      function medianIntegerDim0Kindint16(xs) result(ret)
         Integer(kind=int16), intent(in):: xs(:)
         Integer(kind=int16):: xsCopy(size(xs, dim=1, kind=INT64))
         Real(kind=REAL32):: ret
         xsCopy = xs
         ret = medianing(xsCopy)
      end function medianIntegerDim0Kindint16
      function medianingIntegerDim0Kindint16(xs) result(ret)
         Integer(kind=int16), intent(inout):: xs(:)
         Real(kind=REAL32):: ret
         Integer(kind=INT64):: nXs
         nXS = size(xs, dim=1, kind=kind(nXs))
         if(.not.(nXs > 0))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 1117, (".not.(nXs > 0)"); error stop; end if
         if(mod(nXs, 2) == 1)then
            ret = selecting(xs, nXs/2 + 1)
         else
            ret = (real(selecting(xs, nXs/2), kind=kind(ret))/2) + (real(selecting(xs, nXs/2 + 1), kind=kind(ret))/2)
         end if
      end function medianingIntegerDim0Kindint16
      recursive function median_of_medianingIntegerDim0Kindint16(xs) result(ret)
         Integer(kind=int16), intent(inout):: xs(:)
         Integer(kind=int16):: ret
         Integer(kind=INT64):: nXs
         Integer(kind=kind(nXs)):: i
         nXS = size(xs, dim=1, kind=kind(nXs))
         ret = select([(selecting(xs((5*(i - 1) + 1):(5*i)), 3), i = 1, nXs/5)], nXs/10 + 1)
      end function median_of_medianingIntegerDim0Kindint16
         recursive function selectIntegerDim0Kindint16IntegerDim0Kindint8(xs, k) result(ret)
            Integer(kind=int16), intent(in):: xs(:)
            Integer(kind=int8), intent(in):: k
            Integer(kind=int16):: ret
            Integer(kind=int16):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0Kindint16IntegerDim0Kindint8
         recursive function selectingIntegerDim0Kindint16IntegerDim0Kindint8(xs, k) result(ret)
            Integer(kind=int16), intent(inout):: xs(:)
            Integer(kind=int8), intent(in):: k
            Integer(kind=int16):: ret
            Integer(kind=int16):: pivot
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
         end function selectingIntegerDim0Kindint16IntegerDim0Kindint8
         recursive function selectIntegerDim0Kindint16IntegerDim0Kindint16(xs, k) result(ret)
            Integer(kind=int16), intent(in):: xs(:)
            Integer(kind=int16), intent(in):: k
            Integer(kind=int16):: ret
            Integer(kind=int16):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0Kindint16IntegerDim0Kindint16
         recursive function selectingIntegerDim0Kindint16IntegerDim0Kindint16(xs, k) result(ret)
            Integer(kind=int16), intent(inout):: xs(:)
            Integer(kind=int16), intent(in):: k
            Integer(kind=int16):: ret
            Integer(kind=int16):: pivot
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
         end function selectingIntegerDim0Kindint16IntegerDim0Kindint16
         recursive function selectIntegerDim0Kindint16IntegerDim0Kindint32(xs, k) result(ret)
            Integer(kind=int16), intent(in):: xs(:)
            Integer(kind=int32), intent(in):: k
            Integer(kind=int16):: ret
            Integer(kind=int16):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0Kindint16IntegerDim0Kindint32
         recursive function selectingIntegerDim0Kindint16IntegerDim0Kindint32(xs, k) result(ret)
            Integer(kind=int16), intent(inout):: xs(:)
            Integer(kind=int32), intent(in):: k
            Integer(kind=int16):: ret
            Integer(kind=int16):: pivot
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
         end function selectingIntegerDim0Kindint16IntegerDim0Kindint32
         recursive function selectIntegerDim0Kindint16IntegerDim0Kindint64(xs, k) result(ret)
            Integer(kind=int16), intent(in):: xs(:)
            Integer(kind=int64), intent(in):: k
            Integer(kind=int16):: ret
            Integer(kind=int16):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0Kindint16IntegerDim0Kindint64
         recursive function selectingIntegerDim0Kindint16IntegerDim0Kindint64(xs, k) result(ret)
            Integer(kind=int16), intent(inout):: xs(:)
            Integer(kind=int64), intent(in):: k
            Integer(kind=int16):: ret
            Integer(kind=int16):: pivot
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
         end function selectingIntegerDim0Kindint16IntegerDim0Kindint64
      subroutine partitioningIntegerDim0Kindint16(xs, pivot, iPivot)
         Integer(kind=int16), intent(inout):: xs(:)
         Integer(kind=int16), intent(in):: pivot
         Integer(kind=INT64), intent(out):: iPivot
         if(.not.(minval(xs) <= pivot .and. pivot <= maxval(xs)))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 1262, (".not.(minval(xs) <= pivot .and. pivot <= maxval(xs))"); error stop; end if
         call partitioning_impl(xs, pivot, iPivot)
      end subroutine partitioningIntegerDim0Kindint16
      ! Assume `min(xs) <= pivot <= max(xs)`
      subroutine partitioning_implIntegerDim0Kindint16(xs, pivot, iPivot)
         Integer(kind=int16), intent(inout):: xs(:)
         Integer(kind=int16), intent(in):: pivot
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
      end subroutine partitioning_implIntegerDim0Kindint16
      function insertion_sortIntegerDim0Kindint16(xs) result(ret)
         Integer(kind=int16), intent(in):: xs(:)
         Integer(kind=int16):: ret(size(xs, kind=INT64))
         ret = xs
         call insertion_sorting(ret)
      end function insertion_sortIntegerDim0Kindint16
      subroutine insertion_sortingIntegerDim0Kindint16(xs)
         Integer(kind=int16), intent(inout):: xs(:)
         if(.not.(.not.any(is_nan(xs))))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 1303, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call insertion_sorting_impl(xs)
      end subroutine insertion_sortingIntegerDim0Kindint16
      subroutine insertion_sorting_implIntegerDim0Kindint16(xs)
         Integer(kind=int16), intent(inout):: xs(:)
         Integer(kind=INT64):: i, j
         Integer(kind=int16):: tmp
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
      end subroutine insertion_sorting_implIntegerDim0Kindint16
      function quick_sortIntegerDim0Kindint16(xs) result(xsSorted)
         Integer(kind=int16), intent(in):: xs(:)
         Integer(kind=int16):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call quick_sorting(xsSorted)
      end function quick_sortIntegerDim0Kindint16
      subroutine quick_sortingIntegerDim0Kindint16(xs)
         Integer(kind=int16), intent(inout):: xs(:)
         Integer(kind=int16):: pivot
         type(StackIntegerDim0KindINT64):: iLs, iRs
         Integer(kind = INT64):: iL, iR, iPivot
         Logical:: isUniform
         if(.not.(.not.any(is_nan(xs))))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 1341, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call add(iLs, 1_INT64)
         call add(iRs, size(xs, dim = 1, kind = kind(iR)))
         do while(pop(iRs, iR)) ! Loop for all segments on the stacks.
            if(.not.(pop(iLs, iL)))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 1347, (".not.(pop(iLs, iL))"); error stop; end if ! Left most index of the current segment.
            do while(iL < iR) ! While current segment remains
               if(iR - iL > 7)then
                  pivot = get_pivot(xs(iL:iR), isUniform)
                  if(isUniform) exit
                  call partitioning_impl(xs(iL:iR), pivot, iPivot)
                  call add(iRs, iR)
                  iR = iPivot + iL - 1 ! Right most index of the current segment
                  call add(iLs, iR + 1)
               else
                  call insertion_sorting_impl(xs)
                  return
               end if
            end do
         end do
      end subroutine quick_sortingIntegerDim0Kindint16
      function get_pivotIntegerDim0Kindint16(xs, isUniform) result(pivot)
         Integer(kind=int16):: pivot
         Integer(kind=int16), intent(in):: xs(:)
         Logical, intent(out):: isUniform
         Integer(kind=int16):: tmpX
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
      end function get_pivotIntegerDim0Kindint16
      function merge_sortIntegerDim0Kindint16(xs) result(xsSorted)
         Integer(kind=int16), intent(in):: xs(:)
         Integer(kind=int16):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call merge_sortingIntegerDim0Kindint16(xsSorted)
      end function merge_sortIntegerDim0Kindint16
      subroutine merge_sortingIntegerDim0Kindint16(xs)
         Integer(kind=int16), intent(inout):: xs(:)
         Integer(kind=int16):: buf(size(xs, dim=1, kind=INT64))
         Logical(kind=INT8):: isRetInBuf
         if(.not.(.not.any(is_nan(xs))))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 1407, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call merge_sorting_implIntegerDim0Kindint16(xs, buf, isRetInBuf)
         if(isRetInBuf)then
            xs = buf
         end if
      end subroutine merge_sortingIntegerDim0Kindint16
      recursive subroutine merge_sorting_implIntegerDim0Kindint16(xs, buf, isRetInBuf)
         Integer(kind=int16), intent(inout):: xs(:)
         Integer(kind=int16), intent(out):: buf(:)
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
      end subroutine merge_sorting_implIntegerDim0Kindint16
      ! Merge sorted 1-D array xs and ys into zs.
      subroutine merge_sorted_listsIntegerDim0Kindint16(xs, ys, zs)
         Integer(kind=int16), intent(in):: xs(:), ys(:)
         Integer(kind=int16), intent(out):: zs(size(xs, dim=1, kind=INT64) + size(ys, dim=1, kind=INT64))
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
      end subroutine merge_sorted_listsIntegerDim0Kindint16
      elemental subroutine swappingIntegerDim0Kindint16(a, b)
         Integer(kind=int16), intent(inout):: a, b
         Integer(kind=int16):: swap
         swap = b
         b = a
         a = swap
      end subroutine swappingIntegerDim0Kindint16
      function medianIntegerDim0Kindint32(xs) result(ret)
         Integer(kind=int32), intent(in):: xs(:)
         Integer(kind=int32):: xsCopy(size(xs, dim=1, kind=INT64))
         Real(kind=REAL32):: ret
         xsCopy = xs
         ret = medianing(xsCopy)
      end function medianIntegerDim0Kindint32
      function medianingIntegerDim0Kindint32(xs) result(ret)
         Integer(kind=int32), intent(inout):: xs(:)
         Real(kind=REAL32):: ret
         Integer(kind=INT64):: nXs
         nXS = size(xs, dim=1, kind=kind(nXs))
         if(.not.(nXs > 0))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 1504, (".not.(nXs > 0)"); error stop; end if
         if(mod(nXs, 2) == 1)then
            ret = selecting(xs, nXs/2 + 1)
         else
            ret = (real(selecting(xs, nXs/2), kind=kind(ret))/2) + (real(selecting(xs, nXs/2 + 1), kind=kind(ret))/2)
         end if
      end function medianingIntegerDim0Kindint32
      recursive function median_of_medianingIntegerDim0Kindint32(xs) result(ret)
         Integer(kind=int32), intent(inout):: xs(:)
         Integer(kind=int32):: ret
         Integer(kind=INT64):: nXs
         Integer(kind=kind(nXs)):: i
         nXS = size(xs, dim=1, kind=kind(nXs))
         ret = select([(selecting(xs((5*(i - 1) + 1):(5*i)), 3), i = 1, nXs/5)], nXs/10 + 1)
      end function median_of_medianingIntegerDim0Kindint32
         recursive function selectIntegerDim0Kindint32IntegerDim0Kindint8(xs, k) result(ret)
            Integer(kind=int32), intent(in):: xs(:)
            Integer(kind=int8), intent(in):: k
            Integer(kind=int32):: ret
            Integer(kind=int32):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0Kindint32IntegerDim0Kindint8
         recursive function selectingIntegerDim0Kindint32IntegerDim0Kindint8(xs, k) result(ret)
            Integer(kind=int32), intent(inout):: xs(:)
            Integer(kind=int8), intent(in):: k
            Integer(kind=int32):: ret
            Integer(kind=int32):: pivot
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
         end function selectingIntegerDim0Kindint32IntegerDim0Kindint8
         recursive function selectIntegerDim0Kindint32IntegerDim0Kindint16(xs, k) result(ret)
            Integer(kind=int32), intent(in):: xs(:)
            Integer(kind=int16), intent(in):: k
            Integer(kind=int32):: ret
            Integer(kind=int32):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0Kindint32IntegerDim0Kindint16
         recursive function selectingIntegerDim0Kindint32IntegerDim0Kindint16(xs, k) result(ret)
            Integer(kind=int32), intent(inout):: xs(:)
            Integer(kind=int16), intent(in):: k
            Integer(kind=int32):: ret
            Integer(kind=int32):: pivot
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
         end function selectingIntegerDim0Kindint32IntegerDim0Kindint16
         recursive function selectIntegerDim0Kindint32IntegerDim0Kindint32(xs, k) result(ret)
            Integer(kind=int32), intent(in):: xs(:)
            Integer(kind=int32), intent(in):: k
            Integer(kind=int32):: ret
            Integer(kind=int32):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0Kindint32IntegerDim0Kindint32
         recursive function selectingIntegerDim0Kindint32IntegerDim0Kindint32(xs, k) result(ret)
            Integer(kind=int32), intent(inout):: xs(:)
            Integer(kind=int32), intent(in):: k
            Integer(kind=int32):: ret
            Integer(kind=int32):: pivot
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
         end function selectingIntegerDim0Kindint32IntegerDim0Kindint32
         recursive function selectIntegerDim0Kindint32IntegerDim0Kindint64(xs, k) result(ret)
            Integer(kind=int32), intent(in):: xs(:)
            Integer(kind=int64), intent(in):: k
            Integer(kind=int32):: ret
            Integer(kind=int32):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0Kindint32IntegerDim0Kindint64
         recursive function selectingIntegerDim0Kindint32IntegerDim0Kindint64(xs, k) result(ret)
            Integer(kind=int32), intent(inout):: xs(:)
            Integer(kind=int64), intent(in):: k
            Integer(kind=int32):: ret
            Integer(kind=int32):: pivot
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
         end function selectingIntegerDim0Kindint32IntegerDim0Kindint64
      subroutine partitioningIntegerDim0Kindint32(xs, pivot, iPivot)
         Integer(kind=int32), intent(inout):: xs(:)
         Integer(kind=int32), intent(in):: pivot
         Integer(kind=INT64), intent(out):: iPivot
         if(.not.(minval(xs) <= pivot .and. pivot <= maxval(xs)))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 1649, (".not.(minval(xs) <= pivot .and. pivot <= maxval(xs))"); error stop; end if
         call partitioning_impl(xs, pivot, iPivot)
      end subroutine partitioningIntegerDim0Kindint32
      ! Assume `min(xs) <= pivot <= max(xs)`
      subroutine partitioning_implIntegerDim0Kindint32(xs, pivot, iPivot)
         Integer(kind=int32), intent(inout):: xs(:)
         Integer(kind=int32), intent(in):: pivot
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
      end subroutine partitioning_implIntegerDim0Kindint32
      function insertion_sortIntegerDim0Kindint32(xs) result(ret)
         Integer(kind=int32), intent(in):: xs(:)
         Integer(kind=int32):: ret(size(xs, kind=INT64))
         ret = xs
         call insertion_sorting(ret)
      end function insertion_sortIntegerDim0Kindint32
      subroutine insertion_sortingIntegerDim0Kindint32(xs)
         Integer(kind=int32), intent(inout):: xs(:)
         if(.not.(.not.any(is_nan(xs))))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 1690, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call insertion_sorting_impl(xs)
      end subroutine insertion_sortingIntegerDim0Kindint32
      subroutine insertion_sorting_implIntegerDim0Kindint32(xs)
         Integer(kind=int32), intent(inout):: xs(:)
         Integer(kind=INT64):: i, j
         Integer(kind=int32):: tmp
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
      end subroutine insertion_sorting_implIntegerDim0Kindint32
      function quick_sortIntegerDim0Kindint32(xs) result(xsSorted)
         Integer(kind=int32), intent(in):: xs(:)
         Integer(kind=int32):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call quick_sorting(xsSorted)
      end function quick_sortIntegerDim0Kindint32
      subroutine quick_sortingIntegerDim0Kindint32(xs)
         Integer(kind=int32), intent(inout):: xs(:)
         Integer(kind=int32):: pivot
         type(StackIntegerDim0KindINT64):: iLs, iRs
         Integer(kind = INT64):: iL, iR, iPivot
         Logical:: isUniform
         if(.not.(.not.any(is_nan(xs))))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 1728, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call add(iLs, 1_INT64)
         call add(iRs, size(xs, dim = 1, kind = kind(iR)))
         do while(pop(iRs, iR)) ! Loop for all segments on the stacks.
            if(.not.(pop(iLs, iL)))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 1734, (".not.(pop(iLs, iL))"); error stop; end if ! Left most index of the current segment.
            do while(iL < iR) ! While current segment remains
               if(iR - iL > 7)then
                  pivot = get_pivot(xs(iL:iR), isUniform)
                  if(isUniform) exit
                  call partitioning_impl(xs(iL:iR), pivot, iPivot)
                  call add(iRs, iR)
                  iR = iPivot + iL - 1 ! Right most index of the current segment
                  call add(iLs, iR + 1)
               else
                  call insertion_sorting_impl(xs)
                  return
               end if
            end do
         end do
      end subroutine quick_sortingIntegerDim0Kindint32
      function get_pivotIntegerDim0Kindint32(xs, isUniform) result(pivot)
         Integer(kind=int32):: pivot
         Integer(kind=int32), intent(in):: xs(:)
         Logical, intent(out):: isUniform
         Integer(kind=int32):: tmpX
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
      end function get_pivotIntegerDim0Kindint32
      function merge_sortIntegerDim0Kindint32(xs) result(xsSorted)
         Integer(kind=int32), intent(in):: xs(:)
         Integer(kind=int32):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call merge_sortingIntegerDim0Kindint32(xsSorted)
      end function merge_sortIntegerDim0Kindint32
      subroutine merge_sortingIntegerDim0Kindint32(xs)
         Integer(kind=int32), intent(inout):: xs(:)
         Integer(kind=int32):: buf(size(xs, dim=1, kind=INT64))
         Logical(kind=INT8):: isRetInBuf
         if(.not.(.not.any(is_nan(xs))))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 1794, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call merge_sorting_implIntegerDim0Kindint32(xs, buf, isRetInBuf)
         if(isRetInBuf)then
            xs = buf
         end if
      end subroutine merge_sortingIntegerDim0Kindint32
      recursive subroutine merge_sorting_implIntegerDim0Kindint32(xs, buf, isRetInBuf)
         Integer(kind=int32), intent(inout):: xs(:)
         Integer(kind=int32), intent(out):: buf(:)
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
      end subroutine merge_sorting_implIntegerDim0Kindint32
      ! Merge sorted 1-D array xs and ys into zs.
      subroutine merge_sorted_listsIntegerDim0Kindint32(xs, ys, zs)
         Integer(kind=int32), intent(in):: xs(:), ys(:)
         Integer(kind=int32), intent(out):: zs(size(xs, dim=1, kind=INT64) + size(ys, dim=1, kind=INT64))
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
      end subroutine merge_sorted_listsIntegerDim0Kindint32
      elemental subroutine swappingIntegerDim0Kindint32(a, b)
         Integer(kind=int32), intent(inout):: a, b
         Integer(kind=int32):: swap
         swap = b
         b = a
         a = swap
      end subroutine swappingIntegerDim0Kindint32
      function medianIntegerDim0Kindint64(xs) result(ret)
         Integer(kind=int64), intent(in):: xs(:)
         Integer(kind=int64):: xsCopy(size(xs, dim=1, kind=INT64))
         Real(kind=REAL32):: ret
         xsCopy = xs
         ret = medianing(xsCopy)
      end function medianIntegerDim0Kindint64
      function medianingIntegerDim0Kindint64(xs) result(ret)
         Integer(kind=int64), intent(inout):: xs(:)
         Real(kind=REAL32):: ret
         Integer(kind=INT64):: nXs
         nXS = size(xs, dim=1, kind=kind(nXs))
         if(.not.(nXs > 0))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 1891, (".not.(nXs > 0)"); error stop; end if
         if(mod(nXs, 2) == 1)then
            ret = selecting(xs, nXs/2 + 1)
         else
            ret = (real(selecting(xs, nXs/2), kind=kind(ret))/2) + (real(selecting(xs, nXs/2 + 1), kind=kind(ret))/2)
         end if
      end function medianingIntegerDim0Kindint64
      recursive function median_of_medianingIntegerDim0Kindint64(xs) result(ret)
         Integer(kind=int64), intent(inout):: xs(:)
         Integer(kind=int64):: ret
         Integer(kind=INT64):: nXs
         Integer(kind=kind(nXs)):: i
         nXS = size(xs, dim=1, kind=kind(nXs))
         ret = select([(selecting(xs((5*(i - 1) + 1):(5*i)), 3), i = 1, nXs/5)], nXs/10 + 1)
      end function median_of_medianingIntegerDim0Kindint64
         recursive function selectIntegerDim0Kindint64IntegerDim0Kindint8(xs, k) result(ret)
            Integer(kind=int64), intent(in):: xs(:)
            Integer(kind=int8), intent(in):: k
            Integer(kind=int64):: ret
            Integer(kind=int64):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0Kindint64IntegerDim0Kindint8
         recursive function selectingIntegerDim0Kindint64IntegerDim0Kindint8(xs, k) result(ret)
            Integer(kind=int64), intent(inout):: xs(:)
            Integer(kind=int8), intent(in):: k
            Integer(kind=int64):: ret
            Integer(kind=int64):: pivot
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
         end function selectingIntegerDim0Kindint64IntegerDim0Kindint8
         recursive function selectIntegerDim0Kindint64IntegerDim0Kindint16(xs, k) result(ret)
            Integer(kind=int64), intent(in):: xs(:)
            Integer(kind=int16), intent(in):: k
            Integer(kind=int64):: ret
            Integer(kind=int64):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0Kindint64IntegerDim0Kindint16
         recursive function selectingIntegerDim0Kindint64IntegerDim0Kindint16(xs, k) result(ret)
            Integer(kind=int64), intent(inout):: xs(:)
            Integer(kind=int16), intent(in):: k
            Integer(kind=int64):: ret
            Integer(kind=int64):: pivot
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
         end function selectingIntegerDim0Kindint64IntegerDim0Kindint16
         recursive function selectIntegerDim0Kindint64IntegerDim0Kindint32(xs, k) result(ret)
            Integer(kind=int64), intent(in):: xs(:)
            Integer(kind=int32), intent(in):: k
            Integer(kind=int64):: ret
            Integer(kind=int64):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0Kindint64IntegerDim0Kindint32
         recursive function selectingIntegerDim0Kindint64IntegerDim0Kindint32(xs, k) result(ret)
            Integer(kind=int64), intent(inout):: xs(:)
            Integer(kind=int32), intent(in):: k
            Integer(kind=int64):: ret
            Integer(kind=int64):: pivot
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
         end function selectingIntegerDim0Kindint64IntegerDim0Kindint32
         recursive function selectIntegerDim0Kindint64IntegerDim0Kindint64(xs, k) result(ret)
            Integer(kind=int64), intent(in):: xs(:)
            Integer(kind=int64), intent(in):: k
            Integer(kind=int64):: ret
            Integer(kind=int64):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectIntegerDim0Kindint64IntegerDim0Kindint64
         recursive function selectingIntegerDim0Kindint64IntegerDim0Kindint64(xs, k) result(ret)
            Integer(kind=int64), intent(inout):: xs(:)
            Integer(kind=int64), intent(in):: k
            Integer(kind=int64):: ret
            Integer(kind=int64):: pivot
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
         end function selectingIntegerDim0Kindint64IntegerDim0Kindint64
      subroutine partitioningIntegerDim0Kindint64(xs, pivot, iPivot)
         Integer(kind=int64), intent(inout):: xs(:)
         Integer(kind=int64), intent(in):: pivot
         Integer(kind=INT64), intent(out):: iPivot
         if(.not.(minval(xs) <= pivot .and. pivot <= maxval(xs)))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 2036, (".not.(minval(xs) <= pivot .and. pivot <= maxval(xs))"); error stop; end if
         call partitioning_impl(xs, pivot, iPivot)
      end subroutine partitioningIntegerDim0Kindint64
      ! Assume `min(xs) <= pivot <= max(xs)`
      subroutine partitioning_implIntegerDim0Kindint64(xs, pivot, iPivot)
         Integer(kind=int64), intent(inout):: xs(:)
         Integer(kind=int64), intent(in):: pivot
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
      end subroutine partitioning_implIntegerDim0Kindint64
      function insertion_sortIntegerDim0Kindint64(xs) result(ret)
         Integer(kind=int64), intent(in):: xs(:)
         Integer(kind=int64):: ret(size(xs, kind=INT64))
         ret = xs
         call insertion_sorting(ret)
      end function insertion_sortIntegerDim0Kindint64
      subroutine insertion_sortingIntegerDim0Kindint64(xs)
         Integer(kind=int64), intent(inout):: xs(:)
         if(.not.(.not.any(is_nan(xs))))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 2077, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call insertion_sorting_impl(xs)
      end subroutine insertion_sortingIntegerDim0Kindint64
      subroutine insertion_sorting_implIntegerDim0Kindint64(xs)
         Integer(kind=int64), intent(inout):: xs(:)
         Integer(kind=INT64):: i, j
         Integer(kind=int64):: tmp
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
      end subroutine insertion_sorting_implIntegerDim0Kindint64
      function quick_sortIntegerDim0Kindint64(xs) result(xsSorted)
         Integer(kind=int64), intent(in):: xs(:)
         Integer(kind=int64):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call quick_sorting(xsSorted)
      end function quick_sortIntegerDim0Kindint64
      subroutine quick_sortingIntegerDim0Kindint64(xs)
         Integer(kind=int64), intent(inout):: xs(:)
         Integer(kind=int64):: pivot
         type(StackIntegerDim0KindINT64):: iLs, iRs
         Integer(kind = INT64):: iL, iR, iPivot
         Logical:: isUniform
         if(.not.(.not.any(is_nan(xs))))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 2115, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call add(iLs, 1_INT64)
         call add(iRs, size(xs, dim = 1, kind = kind(iR)))
         do while(pop(iRs, iR)) ! Loop for all segments on the stacks.
            if(.not.(pop(iLs, iL)))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 2121, (".not.(pop(iLs, iL))"); error stop; end if ! Left most index of the current segment.
            do while(iL < iR) ! While current segment remains
               if(iR - iL > 7)then
                  pivot = get_pivot(xs(iL:iR), isUniform)
                  if(isUniform) exit
                  call partitioning_impl(xs(iL:iR), pivot, iPivot)
                  call add(iRs, iR)
                  iR = iPivot + iL - 1 ! Right most index of the current segment
                  call add(iLs, iR + 1)
               else
                  call insertion_sorting_impl(xs)
                  return
               end if
            end do
         end do
      end subroutine quick_sortingIntegerDim0Kindint64
      function get_pivotIntegerDim0Kindint64(xs, isUniform) result(pivot)
         Integer(kind=int64):: pivot
         Integer(kind=int64), intent(in):: xs(:)
         Logical, intent(out):: isUniform
         Integer(kind=int64):: tmpX
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
      end function get_pivotIntegerDim0Kindint64
      function merge_sortIntegerDim0Kindint64(xs) result(xsSorted)
         Integer(kind=int64), intent(in):: xs(:)
         Integer(kind=int64):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call merge_sortingIntegerDim0Kindint64(xsSorted)
      end function merge_sortIntegerDim0Kindint64
      subroutine merge_sortingIntegerDim0Kindint64(xs)
         Integer(kind=int64), intent(inout):: xs(:)
         Integer(kind=int64):: buf(size(xs, dim=1, kind=INT64))
         Logical(kind=INT8):: isRetInBuf
         if(.not.(.not.any(is_nan(xs))))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 2181, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call merge_sorting_implIntegerDim0Kindint64(xs, buf, isRetInBuf)
         if(isRetInBuf)then
            xs = buf
         end if
      end subroutine merge_sortingIntegerDim0Kindint64
      recursive subroutine merge_sorting_implIntegerDim0Kindint64(xs, buf, isRetInBuf)
         Integer(kind=int64), intent(inout):: xs(:)
         Integer(kind=int64), intent(out):: buf(:)
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
      end subroutine merge_sorting_implIntegerDim0Kindint64
      ! Merge sorted 1-D array xs and ys into zs.
      subroutine merge_sorted_listsIntegerDim0Kindint64(xs, ys, zs)
         Integer(kind=int64), intent(in):: xs(:), ys(:)
         Integer(kind=int64), intent(out):: zs(size(xs, dim=1, kind=INT64) + size(ys, dim=1, kind=INT64))
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
      end subroutine merge_sorted_listsIntegerDim0Kindint64
      elemental subroutine swappingIntegerDim0Kindint64(a, b)
         Integer(kind=int64), intent(inout):: a, b
         Integer(kind=int64):: swap
         swap = b
         b = a
         a = swap
      end subroutine swappingIntegerDim0Kindint64
      function medianRealDim0Kindreal32(xs) result(ret)
         Real(kind=real32), intent(in):: xs(:)
         Real(kind=real32):: xsCopy(size(xs, dim=1, kind=INT64))
         Real(kind=real32):: ret
         xsCopy = xs
         ret = medianing(xsCopy)
      end function medianRealDim0Kindreal32
      function medianingRealDim0Kindreal32(xs) result(ret)
         Real(kind=real32), intent(inout):: xs(:)
         Real(kind=real32):: ret
         Integer(kind=INT64):: nXs
         nXS = size(xs, dim=1, kind=kind(nXs))
         if(.not.(nXs > 0))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 2278, (".not.(nXs > 0)"); error stop; end if
         if(mod(nXs, 2) == 1)then
            ret = selecting(xs, nXs/2 + 1)
         else
            ret = (real(selecting(xs, nXs/2), kind=kind(ret))/2) + (real(selecting(xs, nXs/2 + 1), kind=kind(ret))/2)
         end if
      end function medianingRealDim0Kindreal32
      recursive function median_of_medianingRealDim0Kindreal32(xs) result(ret)
         Real(kind=real32), intent(inout):: xs(:)
         Real(kind=real32):: ret
         Integer(kind=INT64):: nXs
         Integer(kind=kind(nXs)):: i
         nXS = size(xs, dim=1, kind=kind(nXs))
         ret = select([(selecting(xs((5*(i - 1) + 1):(5*i)), 3), i = 1, nXs/5)], nXs/10 + 1)
      end function median_of_medianingRealDim0Kindreal32
         recursive function selectRealDim0Kindreal32IntegerDim0Kindint8(xs, k) result(ret)
            Real(kind=real32), intent(in):: xs(:)
            Integer(kind=int8), intent(in):: k
            Real(kind=real32):: ret
            Real(kind=real32):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0Kindreal32IntegerDim0Kindint8
         recursive function selectingRealDim0Kindreal32IntegerDim0Kindint8(xs, k) result(ret)
            Real(kind=real32), intent(inout):: xs(:)
            Integer(kind=int8), intent(in):: k
            Real(kind=real32):: ret
            Real(kind=real32):: pivot
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
         end function selectingRealDim0Kindreal32IntegerDim0Kindint8
         recursive function selectRealDim0Kindreal32IntegerDim0Kindint16(xs, k) result(ret)
            Real(kind=real32), intent(in):: xs(:)
            Integer(kind=int16), intent(in):: k
            Real(kind=real32):: ret
            Real(kind=real32):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0Kindreal32IntegerDim0Kindint16
         recursive function selectingRealDim0Kindreal32IntegerDim0Kindint16(xs, k) result(ret)
            Real(kind=real32), intent(inout):: xs(:)
            Integer(kind=int16), intent(in):: k
            Real(kind=real32):: ret
            Real(kind=real32):: pivot
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
         end function selectingRealDim0Kindreal32IntegerDim0Kindint16
         recursive function selectRealDim0Kindreal32IntegerDim0Kindint32(xs, k) result(ret)
            Real(kind=real32), intent(in):: xs(:)
            Integer(kind=int32), intent(in):: k
            Real(kind=real32):: ret
            Real(kind=real32):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0Kindreal32IntegerDim0Kindint32
         recursive function selectingRealDim0Kindreal32IntegerDim0Kindint32(xs, k) result(ret)
            Real(kind=real32), intent(inout):: xs(:)
            Integer(kind=int32), intent(in):: k
            Real(kind=real32):: ret
            Real(kind=real32):: pivot
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
         end function selectingRealDim0Kindreal32IntegerDim0Kindint32
         recursive function selectRealDim0Kindreal32IntegerDim0Kindint64(xs, k) result(ret)
            Real(kind=real32), intent(in):: xs(:)
            Integer(kind=int64), intent(in):: k
            Real(kind=real32):: ret
            Real(kind=real32):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0Kindreal32IntegerDim0Kindint64
         recursive function selectingRealDim0Kindreal32IntegerDim0Kindint64(xs, k) result(ret)
            Real(kind=real32), intent(inout):: xs(:)
            Integer(kind=int64), intent(in):: k
            Real(kind=real32):: ret
            Real(kind=real32):: pivot
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
         end function selectingRealDim0Kindreal32IntegerDim0Kindint64
      subroutine partitioningRealDim0Kindreal32(xs, pivot, iPivot)
         Real(kind=real32), intent(inout):: xs(:)
         Real(kind=real32), intent(in):: pivot
         Integer(kind=INT64), intent(out):: iPivot
         if(.not.(minval(xs) <= pivot .and. pivot <= maxval(xs)))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 2423, (".not.(minval(xs) <= pivot .and. pivot <= maxval(xs))"); error stop; end if
         call partitioning_impl(xs, pivot, iPivot)
      end subroutine partitioningRealDim0Kindreal32
      ! Assume `min(xs) <= pivot <= max(xs)`
      subroutine partitioning_implRealDim0Kindreal32(xs, pivot, iPivot)
         Real(kind=real32), intent(inout):: xs(:)
         Real(kind=real32), intent(in):: pivot
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
      end subroutine partitioning_implRealDim0Kindreal32
      function insertion_sortRealDim0Kindreal32(xs) result(ret)
         Real(kind=real32), intent(in):: xs(:)
         Real(kind=real32):: ret(size(xs, kind=INT64))
         ret = xs
         call insertion_sorting(ret)
      end function insertion_sortRealDim0Kindreal32
      subroutine insertion_sortingRealDim0Kindreal32(xs)
         Real(kind=real32), intent(inout):: xs(:)
         if(.not.(.not.any(is_nan(xs))))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 2464, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call insertion_sorting_impl(xs)
      end subroutine insertion_sortingRealDim0Kindreal32
      subroutine insertion_sorting_implRealDim0Kindreal32(xs)
         Real(kind=real32), intent(inout):: xs(:)
         Integer(kind=INT64):: i, j
         Real(kind=real32):: tmp
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
      end subroutine insertion_sorting_implRealDim0Kindreal32
      function quick_sortRealDim0Kindreal32(xs) result(xsSorted)
         Real(kind=real32), intent(in):: xs(:)
         Real(kind=real32):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call quick_sorting(xsSorted)
      end function quick_sortRealDim0Kindreal32
      subroutine quick_sortingRealDim0Kindreal32(xs)
         Real(kind=real32), intent(inout):: xs(:)
         Real(kind=real32):: pivot
         type(StackIntegerDim0KindINT64):: iLs, iRs
         Integer(kind = INT64):: iL, iR, iPivot
         Logical:: isUniform
         if(.not.(.not.any(is_nan(xs))))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 2502, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call add(iLs, 1_INT64)
         call add(iRs, size(xs, dim = 1, kind = kind(iR)))
         do while(pop(iRs, iR)) ! Loop for all segments on the stacks.
            if(.not.(pop(iLs, iL)))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 2508, (".not.(pop(iLs, iL))"); error stop; end if ! Left most index of the current segment.
            do while(iL < iR) ! While current segment remains
               if(iR - iL > 7)then
                  pivot = get_pivot(xs(iL:iR), isUniform)
                  if(isUniform) exit
                  call partitioning_impl(xs(iL:iR), pivot, iPivot)
                  call add(iRs, iR)
                  iR = iPivot + iL - 1 ! Right most index of the current segment
                  call add(iLs, iR + 1)
               else
                  call insertion_sorting_impl(xs)
                  return
               end if
            end do
         end do
      end subroutine quick_sortingRealDim0Kindreal32
      function get_pivotRealDim0Kindreal32(xs, isUniform) result(pivot)
         Real(kind=real32):: pivot
         Real(kind=real32), intent(in):: xs(:)
         Logical, intent(out):: isUniform
         Real(kind=real32):: tmpX
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
      end function get_pivotRealDim0Kindreal32
      function merge_sortRealDim0Kindreal32(xs) result(xsSorted)
         Real(kind=real32), intent(in):: xs(:)
         Real(kind=real32):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call merge_sortingRealDim0Kindreal32(xsSorted)
      end function merge_sortRealDim0Kindreal32
      subroutine merge_sortingRealDim0Kindreal32(xs)
         Real(kind=real32), intent(inout):: xs(:)
         Real(kind=real32):: buf(size(xs, dim=1, kind=INT64))
         Logical(kind=INT8):: isRetInBuf
         if(.not.(.not.any(is_nan(xs))))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 2568, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call merge_sorting_implRealDim0Kindreal32(xs, buf, isRetInBuf)
         if(isRetInBuf)then
            xs = buf
         end if
      end subroutine merge_sortingRealDim0Kindreal32
      recursive subroutine merge_sorting_implRealDim0Kindreal32(xs, buf, isRetInBuf)
         Real(kind=real32), intent(inout):: xs(:)
         Real(kind=real32), intent(out):: buf(:)
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
      end subroutine merge_sorting_implRealDim0Kindreal32
      ! Merge sorted 1-D array xs and ys into zs.
      subroutine merge_sorted_listsRealDim0Kindreal32(xs, ys, zs)
         Real(kind=real32), intent(in):: xs(:), ys(:)
         Real(kind=real32), intent(out):: zs(size(xs, dim=1, kind=INT64) + size(ys, dim=1, kind=INT64))
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
      end subroutine merge_sorted_listsRealDim0Kindreal32
      elemental subroutine swappingRealDim0Kindreal32(a, b)
         Real(kind=real32), intent(inout):: a, b
         Real(kind=real32):: swap
         swap = b
         b = a
         a = swap
      end subroutine swappingRealDim0Kindreal32
      function medianRealDim0Kindreal64(xs) result(ret)
         Real(kind=real64), intent(in):: xs(:)
         Real(kind=real64):: xsCopy(size(xs, dim=1, kind=INT64))
         Real(kind=real64):: ret
         xsCopy = xs
         ret = medianing(xsCopy)
      end function medianRealDim0Kindreal64
      function medianingRealDim0Kindreal64(xs) result(ret)
         Real(kind=real64), intent(inout):: xs(:)
         Real(kind=real64):: ret
         Integer(kind=INT64):: nXs
         nXS = size(xs, dim=1, kind=kind(nXs))
         if(.not.(nXs > 0))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 2665, (".not.(nXs > 0)"); error stop; end if
         if(mod(nXs, 2) == 1)then
            ret = selecting(xs, nXs/2 + 1)
         else
            ret = (real(selecting(xs, nXs/2), kind=kind(ret))/2) + (real(selecting(xs, nXs/2 + 1), kind=kind(ret))/2)
         end if
      end function medianingRealDim0Kindreal64
      recursive function median_of_medianingRealDim0Kindreal64(xs) result(ret)
         Real(kind=real64), intent(inout):: xs(:)
         Real(kind=real64):: ret
         Integer(kind=INT64):: nXs
         Integer(kind=kind(nXs)):: i
         nXS = size(xs, dim=1, kind=kind(nXs))
         ret = select([(selecting(xs((5*(i - 1) + 1):(5*i)), 3), i = 1, nXs/5)], nXs/10 + 1)
      end function median_of_medianingRealDim0Kindreal64
         recursive function selectRealDim0Kindreal64IntegerDim0Kindint8(xs, k) result(ret)
            Real(kind=real64), intent(in):: xs(:)
            Integer(kind=int8), intent(in):: k
            Real(kind=real64):: ret
            Real(kind=real64):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0Kindreal64IntegerDim0Kindint8
         recursive function selectingRealDim0Kindreal64IntegerDim0Kindint8(xs, k) result(ret)
            Real(kind=real64), intent(inout):: xs(:)
            Integer(kind=int8), intent(in):: k
            Real(kind=real64):: ret
            Real(kind=real64):: pivot
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
         end function selectingRealDim0Kindreal64IntegerDim0Kindint8
         recursive function selectRealDim0Kindreal64IntegerDim0Kindint16(xs, k) result(ret)
            Real(kind=real64), intent(in):: xs(:)
            Integer(kind=int16), intent(in):: k
            Real(kind=real64):: ret
            Real(kind=real64):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0Kindreal64IntegerDim0Kindint16
         recursive function selectingRealDim0Kindreal64IntegerDim0Kindint16(xs, k) result(ret)
            Real(kind=real64), intent(inout):: xs(:)
            Integer(kind=int16), intent(in):: k
            Real(kind=real64):: ret
            Real(kind=real64):: pivot
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
         end function selectingRealDim0Kindreal64IntegerDim0Kindint16
         recursive function selectRealDim0Kindreal64IntegerDim0Kindint32(xs, k) result(ret)
            Real(kind=real64), intent(in):: xs(:)
            Integer(kind=int32), intent(in):: k
            Real(kind=real64):: ret
            Real(kind=real64):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0Kindreal64IntegerDim0Kindint32
         recursive function selectingRealDim0Kindreal64IntegerDim0Kindint32(xs, k) result(ret)
            Real(kind=real64), intent(inout):: xs(:)
            Integer(kind=int32), intent(in):: k
            Real(kind=real64):: ret
            Real(kind=real64):: pivot
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
         end function selectingRealDim0Kindreal64IntegerDim0Kindint32
         recursive function selectRealDim0Kindreal64IntegerDim0Kindint64(xs, k) result(ret)
            Real(kind=real64), intent(in):: xs(:)
            Integer(kind=int64), intent(in):: k
            Real(kind=real64):: ret
            Real(kind=real64):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0Kindreal64IntegerDim0Kindint64
         recursive function selectingRealDim0Kindreal64IntegerDim0Kindint64(xs, k) result(ret)
            Real(kind=real64), intent(inout):: xs(:)
            Integer(kind=int64), intent(in):: k
            Real(kind=real64):: ret
            Real(kind=real64):: pivot
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
         end function selectingRealDim0Kindreal64IntegerDim0Kindint64
      subroutine partitioningRealDim0Kindreal64(xs, pivot, iPivot)
         Real(kind=real64), intent(inout):: xs(:)
         Real(kind=real64), intent(in):: pivot
         Integer(kind=INT64), intent(out):: iPivot
         if(.not.(minval(xs) <= pivot .and. pivot <= maxval(xs)))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 2810, (".not.(minval(xs) <= pivot .and. pivot <= maxval(xs))"); error stop; end if
         call partitioning_impl(xs, pivot, iPivot)
      end subroutine partitioningRealDim0Kindreal64
      ! Assume `min(xs) <= pivot <= max(xs)`
      subroutine partitioning_implRealDim0Kindreal64(xs, pivot, iPivot)
         Real(kind=real64), intent(inout):: xs(:)
         Real(kind=real64), intent(in):: pivot
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
      end subroutine partitioning_implRealDim0Kindreal64
      function insertion_sortRealDim0Kindreal64(xs) result(ret)
         Real(kind=real64), intent(in):: xs(:)
         Real(kind=real64):: ret(size(xs, kind=INT64))
         ret = xs
         call insertion_sorting(ret)
      end function insertion_sortRealDim0Kindreal64
      subroutine insertion_sortingRealDim0Kindreal64(xs)
         Real(kind=real64), intent(inout):: xs(:)
         if(.not.(.not.any(is_nan(xs))))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 2851, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call insertion_sorting_impl(xs)
      end subroutine insertion_sortingRealDim0Kindreal64
      subroutine insertion_sorting_implRealDim0Kindreal64(xs)
         Real(kind=real64), intent(inout):: xs(:)
         Integer(kind=INT64):: i, j
         Real(kind=real64):: tmp
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
      end subroutine insertion_sorting_implRealDim0Kindreal64
      function quick_sortRealDim0Kindreal64(xs) result(xsSorted)
         Real(kind=real64), intent(in):: xs(:)
         Real(kind=real64):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call quick_sorting(xsSorted)
      end function quick_sortRealDim0Kindreal64
      subroutine quick_sortingRealDim0Kindreal64(xs)
         Real(kind=real64), intent(inout):: xs(:)
         Real(kind=real64):: pivot
         type(StackIntegerDim0KindINT64):: iLs, iRs
         Integer(kind = INT64):: iL, iR, iPivot
         Logical:: isUniform
         if(.not.(.not.any(is_nan(xs))))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 2889, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call add(iLs, 1_INT64)
         call add(iRs, size(xs, dim = 1, kind = kind(iR)))
         do while(pop(iRs, iR)) ! Loop for all segments on the stacks.
            if(.not.(pop(iLs, iL)))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 2895, (".not.(pop(iLs, iL))"); error stop; end if ! Left most index of the current segment.
            do while(iL < iR) ! While current segment remains
               if(iR - iL > 7)then
                  pivot = get_pivot(xs(iL:iR), isUniform)
                  if(isUniform) exit
                  call partitioning_impl(xs(iL:iR), pivot, iPivot)
                  call add(iRs, iR)
                  iR = iPivot + iL - 1 ! Right most index of the current segment
                  call add(iLs, iR + 1)
               else
                  call insertion_sorting_impl(xs)
                  return
               end if
            end do
         end do
      end subroutine quick_sortingRealDim0Kindreal64
      function get_pivotRealDim0Kindreal64(xs, isUniform) result(pivot)
         Real(kind=real64):: pivot
         Real(kind=real64), intent(in):: xs(:)
         Logical, intent(out):: isUniform
         Real(kind=real64):: tmpX
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
      end function get_pivotRealDim0Kindreal64
      function merge_sortRealDim0Kindreal64(xs) result(xsSorted)
         Real(kind=real64), intent(in):: xs(:)
         Real(kind=real64):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call merge_sortingRealDim0Kindreal64(xsSorted)
      end function merge_sortRealDim0Kindreal64
      subroutine merge_sortingRealDim0Kindreal64(xs)
         Real(kind=real64), intent(inout):: xs(:)
         Real(kind=real64):: buf(size(xs, dim=1, kind=INT64))
         Logical(kind=INT8):: isRetInBuf
         if(.not.(.not.any(is_nan(xs))))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 2955, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call merge_sorting_implRealDim0Kindreal64(xs, buf, isRetInBuf)
         if(isRetInBuf)then
            xs = buf
         end if
      end subroutine merge_sortingRealDim0Kindreal64
      recursive subroutine merge_sorting_implRealDim0Kindreal64(xs, buf, isRetInBuf)
         Real(kind=real64), intent(inout):: xs(:)
         Real(kind=real64), intent(out):: buf(:)
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
      end subroutine merge_sorting_implRealDim0Kindreal64
      ! Merge sorted 1-D array xs and ys into zs.
      subroutine merge_sorted_listsRealDim0Kindreal64(xs, ys, zs)
         Real(kind=real64), intent(in):: xs(:), ys(:)
         Real(kind=real64), intent(out):: zs(size(xs, dim=1, kind=INT64) + size(ys, dim=1, kind=INT64))
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
      end subroutine merge_sorted_listsRealDim0Kindreal64
      elemental subroutine swappingRealDim0Kindreal64(a, b)
         Real(kind=real64), intent(inout):: a, b
         Real(kind=real64):: swap
         swap = b
         b = a
         a = swap
      end subroutine swappingRealDim0Kindreal64
      function medianRealDim0Kindreal128(xs) result(ret)
         Real(kind=real128), intent(in):: xs(:)
         Real(kind=real128):: xsCopy(size(xs, dim=1, kind=INT64))
         Real(kind=real128):: ret
         xsCopy = xs
         ret = medianing(xsCopy)
      end function medianRealDim0Kindreal128
      function medianingRealDim0Kindreal128(xs) result(ret)
         Real(kind=real128), intent(inout):: xs(:)
         Real(kind=real128):: ret
         Integer(kind=INT64):: nXs
         nXS = size(xs, dim=1, kind=kind(nXs))
         if(.not.(nXs > 0))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 3052, (".not.(nXs > 0)"); error stop; end if
         if(mod(nXs, 2) == 1)then
            ret = selecting(xs, nXs/2 + 1)
         else
            ret = (real(selecting(xs, nXs/2), kind=kind(ret))/2) + (real(selecting(xs, nXs/2 + 1), kind=kind(ret))/2)
         end if
      end function medianingRealDim0Kindreal128
      recursive function median_of_medianingRealDim0Kindreal128(xs) result(ret)
         Real(kind=real128), intent(inout):: xs(:)
         Real(kind=real128):: ret
         Integer(kind=INT64):: nXs
         Integer(kind=kind(nXs)):: i
         nXS = size(xs, dim=1, kind=kind(nXs))
         ret = select([(selecting(xs((5*(i - 1) + 1):(5*i)), 3), i = 1, nXs/5)], nXs/10 + 1)
      end function median_of_medianingRealDim0Kindreal128
         recursive function selectRealDim0Kindreal128IntegerDim0Kindint8(xs, k) result(ret)
            Real(kind=real128), intent(in):: xs(:)
            Integer(kind=int8), intent(in):: k
            Real(kind=real128):: ret
            Real(kind=real128):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0Kindreal128IntegerDim0Kindint8
         recursive function selectingRealDim0Kindreal128IntegerDim0Kindint8(xs, k) result(ret)
            Real(kind=real128), intent(inout):: xs(:)
            Integer(kind=int8), intent(in):: k
            Real(kind=real128):: ret
            Real(kind=real128):: pivot
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
         end function selectingRealDim0Kindreal128IntegerDim0Kindint8
         recursive function selectRealDim0Kindreal128IntegerDim0Kindint16(xs, k) result(ret)
            Real(kind=real128), intent(in):: xs(:)
            Integer(kind=int16), intent(in):: k
            Real(kind=real128):: ret
            Real(kind=real128):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0Kindreal128IntegerDim0Kindint16
         recursive function selectingRealDim0Kindreal128IntegerDim0Kindint16(xs, k) result(ret)
            Real(kind=real128), intent(inout):: xs(:)
            Integer(kind=int16), intent(in):: k
            Real(kind=real128):: ret
            Real(kind=real128):: pivot
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
         end function selectingRealDim0Kindreal128IntegerDim0Kindint16
         recursive function selectRealDim0Kindreal128IntegerDim0Kindint32(xs, k) result(ret)
            Real(kind=real128), intent(in):: xs(:)
            Integer(kind=int32), intent(in):: k
            Real(kind=real128):: ret
            Real(kind=real128):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0Kindreal128IntegerDim0Kindint32
         recursive function selectingRealDim0Kindreal128IntegerDim0Kindint32(xs, k) result(ret)
            Real(kind=real128), intent(inout):: xs(:)
            Integer(kind=int32), intent(in):: k
            Real(kind=real128):: ret
            Real(kind=real128):: pivot
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
         end function selectingRealDim0Kindreal128IntegerDim0Kindint32
         recursive function selectRealDim0Kindreal128IntegerDim0Kindint64(xs, k) result(ret)
            Real(kind=real128), intent(in):: xs(:)
            Integer(kind=int64), intent(in):: k
            Real(kind=real128):: ret
            Real(kind=real128):: xsCopy(size(xs, dim=1, kind=INT64))
            xsCopy = xs
            ret = selecting(xsCopy, k)
         end function selectRealDim0Kindreal128IntegerDim0Kindint64
         recursive function selectingRealDim0Kindreal128IntegerDim0Kindint64(xs, k) result(ret)
            Real(kind=real128), intent(inout):: xs(:)
            Integer(kind=int64), intent(in):: k
            Real(kind=real128):: ret
            Real(kind=real128):: pivot
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
         end function selectingRealDim0Kindreal128IntegerDim0Kindint64
      subroutine partitioningRealDim0Kindreal128(xs, pivot, iPivot)
         Real(kind=real128), intent(inout):: xs(:)
         Real(kind=real128), intent(in):: pivot
         Integer(kind=INT64), intent(out):: iPivot
         if(.not.(minval(xs) <= pivot .and. pivot <= maxval(xs)))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 3197, (".not.(minval(xs) <= pivot .and. pivot <= maxval(xs))"); error stop; end if
         call partitioning_impl(xs, pivot, iPivot)
      end subroutine partitioningRealDim0Kindreal128
      ! Assume `min(xs) <= pivot <= max(xs)`
      subroutine partitioning_implRealDim0Kindreal128(xs, pivot, iPivot)
         Real(kind=real128), intent(inout):: xs(:)
         Real(kind=real128), intent(in):: pivot
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
      end subroutine partitioning_implRealDim0Kindreal128
      function insertion_sortRealDim0Kindreal128(xs) result(ret)
         Real(kind=real128), intent(in):: xs(:)
         Real(kind=real128):: ret(size(xs, kind=INT64))
         ret = xs
         call insertion_sorting(ret)
      end function insertion_sortRealDim0Kindreal128
      subroutine insertion_sortingRealDim0Kindreal128(xs)
         Real(kind=real128), intent(inout):: xs(:)
         if(.not.(.not.any(is_nan(xs))))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 3238, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call insertion_sorting_impl(xs)
      end subroutine insertion_sortingRealDim0Kindreal128
      subroutine insertion_sorting_implRealDim0Kindreal128(xs)
         Real(kind=real128), intent(inout):: xs(:)
         Integer(kind=INT64):: i, j
         Real(kind=real128):: tmp
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
      end subroutine insertion_sorting_implRealDim0Kindreal128
      function quick_sortRealDim0Kindreal128(xs) result(xsSorted)
         Real(kind=real128), intent(in):: xs(:)
         Real(kind=real128):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call quick_sorting(xsSorted)
      end function quick_sortRealDim0Kindreal128
      subroutine quick_sortingRealDim0Kindreal128(xs)
         Real(kind=real128), intent(inout):: xs(:)
         Real(kind=real128):: pivot
         type(StackIntegerDim0KindINT64):: iLs, iRs
         Integer(kind = INT64):: iL, iR, iPivot
         Logical:: isUniform
         if(.not.(.not.any(is_nan(xs))))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 3276, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call add(iLs, 1_INT64)
         call add(iRs, size(xs, dim = 1, kind = kind(iR)))
         do while(pop(iRs, iR)) ! Loop for all segments on the stacks.
            if(.not.(pop(iLs, iL)))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 3282, (".not.(pop(iLs, iL))"); error stop; end if ! Left most index of the current segment.
            do while(iL < iR) ! While current segment remains
               if(iR - iL > 7)then
                  pivot = get_pivot(xs(iL:iR), isUniform)
                  if(isUniform) exit
                  call partitioning_impl(xs(iL:iR), pivot, iPivot)
                  call add(iRs, iR)
                  iR = iPivot + iL - 1 ! Right most index of the current segment
                  call add(iLs, iR + 1)
               else
                  call insertion_sorting_impl(xs)
                  return
               end if
            end do
         end do
      end subroutine quick_sortingRealDim0Kindreal128
      function get_pivotRealDim0Kindreal128(xs, isUniform) result(pivot)
         Real(kind=real128):: pivot
         Real(kind=real128), intent(in):: xs(:)
         Logical, intent(out):: isUniform
         Real(kind=real128):: tmpX
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
      end function get_pivotRealDim0Kindreal128
      function merge_sortRealDim0Kindreal128(xs) result(xsSorted)
         Real(kind=real128), intent(in):: xs(:)
         Real(kind=real128):: xsSorted(size(xs, kind=INT64))
         xsSorted = xs
         call merge_sortingRealDim0Kindreal128(xsSorted)
      end function merge_sortRealDim0Kindreal128
      subroutine merge_sortingRealDim0Kindreal128(xs)
         Real(kind=real128), intent(inout):: xs(:)
         Real(kind=real128):: buf(size(xs, dim=1, kind=INT64))
         Logical(kind=INT8):: isRetInBuf
         if(.not.(.not.any(is_nan(xs))))then; write(error_unit, *) "ERROR: ", "sort_lib.f90", " ", 3342, (".not.(.not.any(is_nan(xs)))"); error stop; end if
         call merge_sorting_implRealDim0Kindreal128(xs, buf, isRetInBuf)
         if(isRetInBuf)then
            xs = buf
         end if
      end subroutine merge_sortingRealDim0Kindreal128
      recursive subroutine merge_sorting_implRealDim0Kindreal128(xs, buf, isRetInBuf)
         Real(kind=real128), intent(inout):: xs(:)
         Real(kind=real128), intent(out):: buf(:)
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
      end subroutine merge_sorting_implRealDim0Kindreal128
      ! Merge sorted 1-D array xs and ys into zs.
      subroutine merge_sorted_listsRealDim0Kindreal128(xs, ys, zs)
         Real(kind=real128), intent(in):: xs(:), ys(:)
         Real(kind=real128), intent(out):: zs(size(xs, dim=1, kind=INT64) + size(ys, dim=1, kind=INT64))
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
      end subroutine merge_sorted_listsRealDim0Kindreal128
      elemental subroutine swappingRealDim0Kindreal128(a, b)
         Real(kind=real128), intent(inout):: a, b
         Real(kind=real128):: swap
         swap = b
         b = a
         a = swap
      end subroutine swappingRealDim0Kindreal128
end module sort_lib
