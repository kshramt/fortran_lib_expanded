module math_lib
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   implicit none
   private
   public:: linear_transform
   public:: convolution ! time domain
   interface linear_transform
         module procedure linear_transformRealDim0KindREAL32
         module procedure linear_transformRealDim0KindREAL64
         module procedure linear_transformRealDim0KindREAL128
   end interface linear_transform
      interface convolution
         module procedure convolutionRealDim1KindREAL32
      end interface convolution
      interface convolution
         module procedure convolutionRealDim1KindREAL64
      end interface convolution
      interface convolution
         module procedure convolutionRealDim1KindREAL128
      end interface convolution
      interface convolution
         module procedure convolutionIntegerDim1KindINT8
      end interface convolution
      interface convolution
         module procedure convolutionIntegerDim1KindINT16
      end interface convolution
      interface convolution
         module procedure convolutionIntegerDim1KindINT32
      end interface convolution
      interface convolution
         module procedure convolutionIntegerDim1KindINT64
      end interface convolution
      interface convolution
         module procedure convolutionComplexDim1KindREAL32
      end interface convolution
      interface convolution
         module procedure convolutionComplexDim1KindREAL64
      end interface convolution
      interface convolution
         module procedure convolutionComplexDim1KindREAL128
      end interface convolution
contains
      ! zs = xs*ys (* is a convolution operator)
      ! ASSUMPTIONS:
      ! - dX = dY = dZ
      ! CAUTIONS:
      ! - dX (dY) is not multipled.
      subroutine convolutionRealDim1KindREAL32(xs, ys, zs)
         Real(kind=REAL32), dimension(:), intent(in):: xs, ys
         Real(kind=REAL32), dimension(:), intent(out):: zs
         if(size(xs, 1) >= size(ys, 1))then
            call convolution_short_with_longRealDim1KindREAL32(ys, xs, zs)
         else
            call convolution_short_with_longRealDim1KindREAL32(xs, ys, zs)
         end if
      end subroutine convolutionRealDim1KindREAL32
      subroutine convolution_short_with_longRealDim1KindREAL32(xs, ys, zs)
         Real(kind=REAL32), dimension(:), intent(in):: xs, ys
         Real(kind=REAL32), dimension(:), intent(out):: zs
         Integer:: nXs, nYs, nZs
         Integer:: i
         Integer:: iMax
         Logical:: isReachedEndOfZs
         nXs = size(xs, 1)
         nYs = size(ys, 1)
         nZs = size(zs, 1)
         if(.not.(nXs <= nYs))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib.f90", " ", 78, (".not.(nXs <= nYs)"); error stop; end if
         if(nZs <= 0) return
         zs = 0
         if(nXs <= 0) return ! this condition includes nYs <= 0 since nXs <= nYs
         if(nXs == 1)then
            zs = xs(1)*ys(1:nZs)
            return
         end if
         iMax = min(nXs - 1, nZs)
         isReachedEndOfZs = (iMax == nZs)
         do concurrent (i = 1:iMax)
            zs(i) = dot_product(ys(1:i), xs(i:1:-1))
         end do
         if(isReachedEndOfZs) return
         iMax = min(nYs, nZs)
         isReachedEndOfZs = (iMax == nZs)
         do concurrent(i = nXs:iMax)
            zs(i) = dot_product(ys(i-nXs+1:i), xs(nXs:1:-1))
         end do
         if(isReachedEndOfZs) return
         iMax = min(nXs + nYs, nZs)
         do concurrent(i = nYs + 1:iMax)
            zs(i) = dot_product(ys(i-nXs+1:nYs), xs(nXs:i-nYs+1:-1))
         end do
      end subroutine convolution_short_with_longRealDim1KindREAL32
      ! zs = xs*ys (* is a convolution operator)
      ! ASSUMPTIONS:
      ! - dX = dY = dZ
      ! CAUTIONS:
      ! - dX (dY) is not multipled.
      subroutine convolutionRealDim1KindREAL64(xs, ys, zs)
         Real(kind=REAL64), dimension(:), intent(in):: xs, ys
         Real(kind=REAL64), dimension(:), intent(out):: zs
         if(size(xs, 1) >= size(ys, 1))then
            call convolution_short_with_longRealDim1KindREAL64(ys, xs, zs)
         else
            call convolution_short_with_longRealDim1KindREAL64(xs, ys, zs)
         end if
      end subroutine convolutionRealDim1KindREAL64
      subroutine convolution_short_with_longRealDim1KindREAL64(xs, ys, zs)
         Real(kind=REAL64), dimension(:), intent(in):: xs, ys
         Real(kind=REAL64), dimension(:), intent(out):: zs
         Integer:: nXs, nYs, nZs
         Integer:: i
         Integer:: iMax
         Logical:: isReachedEndOfZs
         nXs = size(xs, 1)
         nYs = size(ys, 1)
         nZs = size(zs, 1)
         if(.not.(nXs <= nYs))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib.f90", " ", 134, (".not.(nXs <= nYs)"); error stop; end if
         if(nZs <= 0) return
         zs = 0
         if(nXs <= 0) return ! this condition includes nYs <= 0 since nXs <= nYs
         if(nXs == 1)then
            zs = xs(1)*ys(1:nZs)
            return
         end if
         iMax = min(nXs - 1, nZs)
         isReachedEndOfZs = (iMax == nZs)
         do concurrent (i = 1:iMax)
            zs(i) = dot_product(ys(1:i), xs(i:1:-1))
         end do
         if(isReachedEndOfZs) return
         iMax = min(nYs, nZs)
         isReachedEndOfZs = (iMax == nZs)
         do concurrent(i = nXs:iMax)
            zs(i) = dot_product(ys(i-nXs+1:i), xs(nXs:1:-1))
         end do
         if(isReachedEndOfZs) return
         iMax = min(nXs + nYs, nZs)
         do concurrent(i = nYs + 1:iMax)
            zs(i) = dot_product(ys(i-nXs+1:nYs), xs(nXs:i-nYs+1:-1))
         end do
      end subroutine convolution_short_with_longRealDim1KindREAL64
      ! zs = xs*ys (* is a convolution operator)
      ! ASSUMPTIONS:
      ! - dX = dY = dZ
      ! CAUTIONS:
      ! - dX (dY) is not multipled.
      subroutine convolutionRealDim1KindREAL128(xs, ys, zs)
         Real(kind=REAL128), dimension(:), intent(in):: xs, ys
         Real(kind=REAL128), dimension(:), intent(out):: zs
         if(size(xs, 1) >= size(ys, 1))then
            call convolution_short_with_longRealDim1KindREAL128(ys, xs, zs)
         else
            call convolution_short_with_longRealDim1KindREAL128(xs, ys, zs)
         end if
      end subroutine convolutionRealDim1KindREAL128
      subroutine convolution_short_with_longRealDim1KindREAL128(xs, ys, zs)
         Real(kind=REAL128), dimension(:), intent(in):: xs, ys
         Real(kind=REAL128), dimension(:), intent(out):: zs
         Integer:: nXs, nYs, nZs
         Integer:: i
         Integer:: iMax
         Logical:: isReachedEndOfZs
         nXs = size(xs, 1)
         nYs = size(ys, 1)
         nZs = size(zs, 1)
         if(.not.(nXs <= nYs))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib.f90", " ", 190, (".not.(nXs <= nYs)"); error stop; end if
         if(nZs <= 0) return
         zs = 0
         if(nXs <= 0) return ! this condition includes nYs <= 0 since nXs <= nYs
         if(nXs == 1)then
            zs = xs(1)*ys(1:nZs)
            return
         end if
         iMax = min(nXs - 1, nZs)
         isReachedEndOfZs = (iMax == nZs)
         do concurrent (i = 1:iMax)
            zs(i) = dot_product(ys(1:i), xs(i:1:-1))
         end do
         if(isReachedEndOfZs) return
         iMax = min(nYs, nZs)
         isReachedEndOfZs = (iMax == nZs)
         do concurrent(i = nXs:iMax)
            zs(i) = dot_product(ys(i-nXs+1:i), xs(nXs:1:-1))
         end do
         if(isReachedEndOfZs) return
         iMax = min(nXs + nYs, nZs)
         do concurrent(i = nYs + 1:iMax)
            zs(i) = dot_product(ys(i-nXs+1:nYs), xs(nXs:i-nYs+1:-1))
         end do
      end subroutine convolution_short_with_longRealDim1KindREAL128
      ! zs = xs*ys (* is a convolution operator)
      ! ASSUMPTIONS:
      ! - dX = dY = dZ
      ! CAUTIONS:
      ! - dX (dY) is not multipled.
      subroutine convolutionIntegerDim1KindINT8(xs, ys, zs)
         Integer(kind=INT8), dimension(:), intent(in):: xs, ys
         Integer(kind=INT8), dimension(:), intent(out):: zs
         if(size(xs, 1) >= size(ys, 1))then
            call convolution_short_with_longIntegerDim1KindINT8(ys, xs, zs)
         else
            call convolution_short_with_longIntegerDim1KindINT8(xs, ys, zs)
         end if
      end subroutine convolutionIntegerDim1KindINT8
      subroutine convolution_short_with_longIntegerDim1KindINT8(xs, ys, zs)
         Integer(kind=INT8), dimension(:), intent(in):: xs, ys
         Integer(kind=INT8), dimension(:), intent(out):: zs
         Integer:: nXs, nYs, nZs
         Integer:: i
         Integer:: iMax
         Logical:: isReachedEndOfZs
         nXs = size(xs, 1)
         nYs = size(ys, 1)
         nZs = size(zs, 1)
         if(.not.(nXs <= nYs))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib.f90", " ", 246, (".not.(nXs <= nYs)"); error stop; end if
         if(nZs <= 0) return
         zs = 0
         if(nXs <= 0) return ! this condition includes nYs <= 0 since nXs <= nYs
         if(nXs == 1)then
            zs = xs(1)*ys(1:nZs)
            return
         end if
         iMax = min(nXs - 1, nZs)
         isReachedEndOfZs = (iMax == nZs)
         do concurrent (i = 1:iMax)
            zs(i) = dot_product(ys(1:i), xs(i:1:-1))
         end do
         if(isReachedEndOfZs) return
         iMax = min(nYs, nZs)
         isReachedEndOfZs = (iMax == nZs)
         do concurrent(i = nXs:iMax)
            zs(i) = dot_product(ys(i-nXs+1:i), xs(nXs:1:-1))
         end do
         if(isReachedEndOfZs) return
         iMax = min(nXs + nYs, nZs)
         do concurrent(i = nYs + 1:iMax)
            zs(i) = dot_product(ys(i-nXs+1:nYs), xs(nXs:i-nYs+1:-1))
         end do
      end subroutine convolution_short_with_longIntegerDim1KindINT8
      ! zs = xs*ys (* is a convolution operator)
      ! ASSUMPTIONS:
      ! - dX = dY = dZ
      ! CAUTIONS:
      ! - dX (dY) is not multipled.
      subroutine convolutionIntegerDim1KindINT16(xs, ys, zs)
         Integer(kind=INT16), dimension(:), intent(in):: xs, ys
         Integer(kind=INT16), dimension(:), intent(out):: zs
         if(size(xs, 1) >= size(ys, 1))then
            call convolution_short_with_longIntegerDim1KindINT16(ys, xs, zs)
         else
            call convolution_short_with_longIntegerDim1KindINT16(xs, ys, zs)
         end if
      end subroutine convolutionIntegerDim1KindINT16
      subroutine convolution_short_with_longIntegerDim1KindINT16(xs, ys, zs)
         Integer(kind=INT16), dimension(:), intent(in):: xs, ys
         Integer(kind=INT16), dimension(:), intent(out):: zs
         Integer:: nXs, nYs, nZs
         Integer:: i
         Integer:: iMax
         Logical:: isReachedEndOfZs
         nXs = size(xs, 1)
         nYs = size(ys, 1)
         nZs = size(zs, 1)
         if(.not.(nXs <= nYs))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib.f90", " ", 302, (".not.(nXs <= nYs)"); error stop; end if
         if(nZs <= 0) return
         zs = 0
         if(nXs <= 0) return ! this condition includes nYs <= 0 since nXs <= nYs
         if(nXs == 1)then
            zs = xs(1)*ys(1:nZs)
            return
         end if
         iMax = min(nXs - 1, nZs)
         isReachedEndOfZs = (iMax == nZs)
         do concurrent (i = 1:iMax)
            zs(i) = dot_product(ys(1:i), xs(i:1:-1))
         end do
         if(isReachedEndOfZs) return
         iMax = min(nYs, nZs)
         isReachedEndOfZs = (iMax == nZs)
         do concurrent(i = nXs:iMax)
            zs(i) = dot_product(ys(i-nXs+1:i), xs(nXs:1:-1))
         end do
         if(isReachedEndOfZs) return
         iMax = min(nXs + nYs, nZs)
         do concurrent(i = nYs + 1:iMax)
            zs(i) = dot_product(ys(i-nXs+1:nYs), xs(nXs:i-nYs+1:-1))
         end do
      end subroutine convolution_short_with_longIntegerDim1KindINT16
      ! zs = xs*ys (* is a convolution operator)
      ! ASSUMPTIONS:
      ! - dX = dY = dZ
      ! CAUTIONS:
      ! - dX (dY) is not multipled.
      subroutine convolutionIntegerDim1KindINT32(xs, ys, zs)
         Integer(kind=INT32), dimension(:), intent(in):: xs, ys
         Integer(kind=INT32), dimension(:), intent(out):: zs
         if(size(xs, 1) >= size(ys, 1))then
            call convolution_short_with_longIntegerDim1KindINT32(ys, xs, zs)
         else
            call convolution_short_with_longIntegerDim1KindINT32(xs, ys, zs)
         end if
      end subroutine convolutionIntegerDim1KindINT32
      subroutine convolution_short_with_longIntegerDim1KindINT32(xs, ys, zs)
         Integer(kind=INT32), dimension(:), intent(in):: xs, ys
         Integer(kind=INT32), dimension(:), intent(out):: zs
         Integer:: nXs, nYs, nZs
         Integer:: i
         Integer:: iMax
         Logical:: isReachedEndOfZs
         nXs = size(xs, 1)
         nYs = size(ys, 1)
         nZs = size(zs, 1)
         if(.not.(nXs <= nYs))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib.f90", " ", 358, (".not.(nXs <= nYs)"); error stop; end if
         if(nZs <= 0) return
         zs = 0
         if(nXs <= 0) return ! this condition includes nYs <= 0 since nXs <= nYs
         if(nXs == 1)then
            zs = xs(1)*ys(1:nZs)
            return
         end if
         iMax = min(nXs - 1, nZs)
         isReachedEndOfZs = (iMax == nZs)
         do concurrent (i = 1:iMax)
            zs(i) = dot_product(ys(1:i), xs(i:1:-1))
         end do
         if(isReachedEndOfZs) return
         iMax = min(nYs, nZs)
         isReachedEndOfZs = (iMax == nZs)
         do concurrent(i = nXs:iMax)
            zs(i) = dot_product(ys(i-nXs+1:i), xs(nXs:1:-1))
         end do
         if(isReachedEndOfZs) return
         iMax = min(nXs + nYs, nZs)
         do concurrent(i = nYs + 1:iMax)
            zs(i) = dot_product(ys(i-nXs+1:nYs), xs(nXs:i-nYs+1:-1))
         end do
      end subroutine convolution_short_with_longIntegerDim1KindINT32
      ! zs = xs*ys (* is a convolution operator)
      ! ASSUMPTIONS:
      ! - dX = dY = dZ
      ! CAUTIONS:
      ! - dX (dY) is not multipled.
      subroutine convolutionIntegerDim1KindINT64(xs, ys, zs)
         Integer(kind=INT64), dimension(:), intent(in):: xs, ys
         Integer(kind=INT64), dimension(:), intent(out):: zs
         if(size(xs, 1) >= size(ys, 1))then
            call convolution_short_with_longIntegerDim1KindINT64(ys, xs, zs)
         else
            call convolution_short_with_longIntegerDim1KindINT64(xs, ys, zs)
         end if
      end subroutine convolutionIntegerDim1KindINT64
      subroutine convolution_short_with_longIntegerDim1KindINT64(xs, ys, zs)
         Integer(kind=INT64), dimension(:), intent(in):: xs, ys
         Integer(kind=INT64), dimension(:), intent(out):: zs
         Integer:: nXs, nYs, nZs
         Integer:: i
         Integer:: iMax
         Logical:: isReachedEndOfZs
         nXs = size(xs, 1)
         nYs = size(ys, 1)
         nZs = size(zs, 1)
         if(.not.(nXs <= nYs))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib.f90", " ", 414, (".not.(nXs <= nYs)"); error stop; end if
         if(nZs <= 0) return
         zs = 0
         if(nXs <= 0) return ! this condition includes nYs <= 0 since nXs <= nYs
         if(nXs == 1)then
            zs = xs(1)*ys(1:nZs)
            return
         end if
         iMax = min(nXs - 1, nZs)
         isReachedEndOfZs = (iMax == nZs)
         do concurrent (i = 1:iMax)
            zs(i) = dot_product(ys(1:i), xs(i:1:-1))
         end do
         if(isReachedEndOfZs) return
         iMax = min(nYs, nZs)
         isReachedEndOfZs = (iMax == nZs)
         do concurrent(i = nXs:iMax)
            zs(i) = dot_product(ys(i-nXs+1:i), xs(nXs:1:-1))
         end do
         if(isReachedEndOfZs) return
         iMax = min(nXs + nYs, nZs)
         do concurrent(i = nYs + 1:iMax)
            zs(i) = dot_product(ys(i-nXs+1:nYs), xs(nXs:i-nYs+1:-1))
         end do
      end subroutine convolution_short_with_longIntegerDim1KindINT64
      ! zs = xs*ys (* is a convolution operator)
      ! ASSUMPTIONS:
      ! - dX = dY = dZ
      ! CAUTIONS:
      ! - dX (dY) is not multipled.
      subroutine convolutionComplexDim1KindREAL32(xs, ys, zs)
         Complex(kind=REAL32), dimension(:), intent(in):: xs, ys
         Complex(kind=REAL32), dimension(:), intent(out):: zs
         if(size(xs, 1) >= size(ys, 1))then
            call convolution_short_with_longComplexDim1KindREAL32(ys, xs, zs)
         else
            call convolution_short_with_longComplexDim1KindREAL32(xs, ys, zs)
         end if
      end subroutine convolutionComplexDim1KindREAL32
      subroutine convolution_short_with_longComplexDim1KindREAL32(xs, ys, zs)
         Complex(kind=REAL32), dimension(:), intent(in):: xs, ys
         Complex(kind=REAL32), dimension(:), intent(out):: zs
         Integer:: nXs, nYs, nZs
         Integer:: i
         Integer:: iMax
         Logical:: isReachedEndOfZs
         nXs = size(xs, 1)
         nYs = size(ys, 1)
         nZs = size(zs, 1)
         if(.not.(nXs <= nYs))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib.f90", " ", 470, (".not.(nXs <= nYs)"); error stop; end if
         if(nZs <= 0) return
         zs = 0
         if(nXs <= 0) return ! this condition includes nYs <= 0 since nXs <= nYs
         if(nXs == 1)then
            zs = xs(1)*ys(1:nZs)
            return
         end if
         iMax = min(nXs - 1, nZs)
         isReachedEndOfZs = (iMax == nZs)
         do concurrent (i = 1:iMax)
            zs(i) = dot_product(ys(1:i), xs(i:1:-1))
         end do
         if(isReachedEndOfZs) return
         iMax = min(nYs, nZs)
         isReachedEndOfZs = (iMax == nZs)
         do concurrent(i = nXs:iMax)
            zs(i) = dot_product(ys(i-nXs+1:i), xs(nXs:1:-1))
         end do
         if(isReachedEndOfZs) return
         iMax = min(nXs + nYs, nZs)
         do concurrent(i = nYs + 1:iMax)
            zs(i) = dot_product(ys(i-nXs+1:nYs), xs(nXs:i-nYs+1:-1))
         end do
      end subroutine convolution_short_with_longComplexDim1KindREAL32
      ! zs = xs*ys (* is a convolution operator)
      ! ASSUMPTIONS:
      ! - dX = dY = dZ
      ! CAUTIONS:
      ! - dX (dY) is not multipled.
      subroutine convolutionComplexDim1KindREAL64(xs, ys, zs)
         Complex(kind=REAL64), dimension(:), intent(in):: xs, ys
         Complex(kind=REAL64), dimension(:), intent(out):: zs
         if(size(xs, 1) >= size(ys, 1))then
            call convolution_short_with_longComplexDim1KindREAL64(ys, xs, zs)
         else
            call convolution_short_with_longComplexDim1KindREAL64(xs, ys, zs)
         end if
      end subroutine convolutionComplexDim1KindREAL64
      subroutine convolution_short_with_longComplexDim1KindREAL64(xs, ys, zs)
         Complex(kind=REAL64), dimension(:), intent(in):: xs, ys
         Complex(kind=REAL64), dimension(:), intent(out):: zs
         Integer:: nXs, nYs, nZs
         Integer:: i
         Integer:: iMax
         Logical:: isReachedEndOfZs
         nXs = size(xs, 1)
         nYs = size(ys, 1)
         nZs = size(zs, 1)
         if(.not.(nXs <= nYs))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib.f90", " ", 526, (".not.(nXs <= nYs)"); error stop; end if
         if(nZs <= 0) return
         zs = 0
         if(nXs <= 0) return ! this condition includes nYs <= 0 since nXs <= nYs
         if(nXs == 1)then
            zs = xs(1)*ys(1:nZs)
            return
         end if
         iMax = min(nXs - 1, nZs)
         isReachedEndOfZs = (iMax == nZs)
         do concurrent (i = 1:iMax)
            zs(i) = dot_product(ys(1:i), xs(i:1:-1))
         end do
         if(isReachedEndOfZs) return
         iMax = min(nYs, nZs)
         isReachedEndOfZs = (iMax == nZs)
         do concurrent(i = nXs:iMax)
            zs(i) = dot_product(ys(i-nXs+1:i), xs(nXs:1:-1))
         end do
         if(isReachedEndOfZs) return
         iMax = min(nXs + nYs, nZs)
         do concurrent(i = nYs + 1:iMax)
            zs(i) = dot_product(ys(i-nXs+1:nYs), xs(nXs:i-nYs+1:-1))
         end do
      end subroutine convolution_short_with_longComplexDim1KindREAL64
      ! zs = xs*ys (* is a convolution operator)
      ! ASSUMPTIONS:
      ! - dX = dY = dZ
      ! CAUTIONS:
      ! - dX (dY) is not multipled.
      subroutine convolutionComplexDim1KindREAL128(xs, ys, zs)
         Complex(kind=REAL128), dimension(:), intent(in):: xs, ys
         Complex(kind=REAL128), dimension(:), intent(out):: zs
         if(size(xs, 1) >= size(ys, 1))then
            call convolution_short_with_longComplexDim1KindREAL128(ys, xs, zs)
         else
            call convolution_short_with_longComplexDim1KindREAL128(xs, ys, zs)
         end if
      end subroutine convolutionComplexDim1KindREAL128
      subroutine convolution_short_with_longComplexDim1KindREAL128(xs, ys, zs)
         Complex(kind=REAL128), dimension(:), intent(in):: xs, ys
         Complex(kind=REAL128), dimension(:), intent(out):: zs
         Integer:: nXs, nYs, nZs
         Integer:: i
         Integer:: iMax
         Logical:: isReachedEndOfZs
         nXs = size(xs, 1)
         nYs = size(ys, 1)
         nZs = size(zs, 1)
         if(.not.(nXs <= nYs))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib.f90", " ", 582, (".not.(nXs <= nYs)"); error stop; end if
         if(nZs <= 0) return
         zs = 0
         if(nXs <= 0) return ! this condition includes nYs <= 0 since nXs <= nYs
         if(nXs == 1)then
            zs = xs(1)*ys(1:nZs)
            return
         end if
         iMax = min(nXs - 1, nZs)
         isReachedEndOfZs = (iMax == nZs)
         do concurrent (i = 1:iMax)
            zs(i) = dot_product(ys(1:i), xs(i:1:-1))
         end do
         if(isReachedEndOfZs) return
         iMax = min(nYs, nZs)
         isReachedEndOfZs = (iMax == nZs)
         do concurrent(i = nXs:iMax)
            zs(i) = dot_product(ys(i-nXs+1:i), xs(nXs:1:-1))
         end do
         if(isReachedEndOfZs) return
         iMax = min(nXs + nYs, nZs)
         do concurrent(i = nYs + 1:iMax)
            zs(i) = dot_product(ys(i-nXs+1:nYs), xs(nXs:i-nYs+1:-1))
         end do
      end subroutine convolution_short_with_longComplexDim1KindREAL128
      elemental function linear_transformRealDim0KindREAL32(x, x0, x1, y0, y1) result(y)
         Real(kind=REAL32), intent(in):: x
         Real(kind = kind(x)), intent(in):: x0, x1, y0, y1
         Real(kind = kind(x)):: y
         y = (x - x0)/(x1 - x0)*(y1 - y0) + y0
      end function linear_transformRealDim0KindREAL32
      elemental function linear_transformRealDim0KindREAL64(x, x0, x1, y0, y1) result(y)
         Real(kind=REAL64), intent(in):: x
         Real(kind = kind(x)), intent(in):: x0, x1, y0, y1
         Real(kind = kind(x)):: y
         y = (x - x0)/(x1 - x0)*(y1 - y0) + y0
      end function linear_transformRealDim0KindREAL64
      elemental function linear_transformRealDim0KindREAL128(x, x0, x1, y0, y1) result(y)
         Real(kind=REAL128), intent(in):: x
         Real(kind = kind(x)), intent(in):: x0, x1, y0, y1
         Real(kind = kind(x)):: y
         y = (x - x0)/(x1 - x0)*(y1 - y0) + y0
      end function linear_transformRealDim0KindREAL128
end module math_lib
