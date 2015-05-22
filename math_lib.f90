module math_lib
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   implicit none
   private
   public:: linear_transform
   public:: rosenbrock
   public:: rosenbrock_fgh
   public:: convolution ! time domain
      interface linear_transform
         module procedure linear_transformRealDim0KindREAL32
      end interface linear_transform
      interface rosenbrock
         module procedure rosenbrockRealDim0KindREAL32
      end interface rosenbrock
      interface rosenbrock_fgh
         module procedure rosenbrock_fghRealDim0KindREAL32
      end interface rosenbrock_fgh
      interface linear_transform
         module procedure linear_transformRealDim0KindREAL64
      end interface linear_transform
      interface rosenbrock
         module procedure rosenbrockRealDim0KindREAL64
      end interface rosenbrock
      interface rosenbrock_fgh
         module procedure rosenbrock_fghRealDim0KindREAL64
      end interface rosenbrock_fgh
      interface linear_transform
         module procedure linear_transformRealDim0KindREAL128
      end interface linear_transform
      interface rosenbrock
         module procedure rosenbrockRealDim0KindREAL128
      end interface rosenbrock
      interface rosenbrock_fgh
         module procedure rosenbrock_fghRealDim0KindREAL128
      end interface rosenbrock_fgh
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
         if(.not.(nXs <= nYs))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib.f90", " ", 108, (".not.(nXs <= nYs)"); error stop; end if
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
         if(.not.(nXs <= nYs))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib.f90", " ", 164, (".not.(nXs <= nYs)"); error stop; end if
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
         if(.not.(nXs <= nYs))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib.f90", " ", 220, (".not.(nXs <= nYs)"); error stop; end if
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
         if(.not.(nXs <= nYs))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib.f90", " ", 276, (".not.(nXs <= nYs)"); error stop; end if
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
         if(.not.(nXs <= nYs))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib.f90", " ", 332, (".not.(nXs <= nYs)"); error stop; end if
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
         if(.not.(nXs <= nYs))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib.f90", " ", 388, (".not.(nXs <= nYs)"); error stop; end if
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
         if(.not.(nXs <= nYs))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib.f90", " ", 444, (".not.(nXs <= nYs)"); error stop; end if
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
         if(.not.(nXs <= nYs))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib.f90", " ", 500, (".not.(nXs <= nYs)"); error stop; end if
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
         if(.not.(nXs <= nYs))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib.f90", " ", 556, (".not.(nXs <= nYs)"); error stop; end if
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
         if(.not.(nXs <= nYs))then; write(ERROR_UNIT, *) "RAISE: ", "math_lib.f90", " ", 612, (".not.(nXs <= nYs)"); error stop; end if
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
      elemental function rosenbrockRealDim0KindREAL32(x, y) result(ret)
         Real(kind=REAL32), intent(in):: x, y
         Real(kind=REAL32):: ret
         ret = (1 - x)**2 + 100*(y - x**2)**2
      end function rosenbrockRealDim0KindREAL32
      pure subroutine rosenbrock_fghRealDim0KindREAL32(xy, f, g, h)
         Real(kind=REAL32), intent(in):: xy(2)
         Real(kind=REAL32), intent(out):: f, g(2), h(2, 2)
         Real(kind=REAL32):: x, y
         x = xy(1)
         y = xy(2)
         f = rosenbrock(x, y)
         g(1) = -2*(1 - x) - 400*x*(y - x**2)
         g(2) = 200*(y - x**2)
         h(1, 1) = 2 - 400*(y - x**2) + 800*x**2
         h(1, 2) = -400*x
         h(2, 1) = h(1, 2)
         h(2, 2) = 200
      end subroutine rosenbrock_fghRealDim0KindREAL32
      elemental function linear_transformRealDim0KindREAL32(x, x0, x1, y0, y1) result(y)
         Real(kind=REAL32), intent(in):: x
         Real(kind = kind(x)), intent(in):: x0, x1, y0, y1
         Real(kind = kind(x)):: y
         y = (x - x0)/(x1 - x0)*(y1 - y0) + y0
      end function linear_transformRealDim0KindREAL32
      elemental function rosenbrockRealDim0KindREAL64(x, y) result(ret)
         Real(kind=REAL64), intent(in):: x, y
         Real(kind=REAL64):: ret
         ret = (1 - x)**2 + 100*(y - x**2)**2
      end function rosenbrockRealDim0KindREAL64
      pure subroutine rosenbrock_fghRealDim0KindREAL64(xy, f, g, h)
         Real(kind=REAL64), intent(in):: xy(2)
         Real(kind=REAL64), intent(out):: f, g(2), h(2, 2)
         Real(kind=REAL64):: x, y
         x = xy(1)
         y = xy(2)
         f = rosenbrock(x, y)
         g(1) = -2*(1 - x) - 400*x*(y - x**2)
         g(2) = 200*(y - x**2)
         h(1, 1) = 2 - 400*(y - x**2) + 800*x**2
         h(1, 2) = -400*x
         h(2, 1) = h(1, 2)
         h(2, 2) = 200
      end subroutine rosenbrock_fghRealDim0KindREAL64
      elemental function linear_transformRealDim0KindREAL64(x, x0, x1, y0, y1) result(y)
         Real(kind=REAL64), intent(in):: x
         Real(kind = kind(x)), intent(in):: x0, x1, y0, y1
         Real(kind = kind(x)):: y
         y = (x - x0)/(x1 - x0)*(y1 - y0) + y0
      end function linear_transformRealDim0KindREAL64
      elemental function rosenbrockRealDim0KindREAL128(x, y) result(ret)
         Real(kind=REAL128), intent(in):: x, y
         Real(kind=REAL128):: ret
         ret = (1 - x)**2 + 100*(y - x**2)**2
      end function rosenbrockRealDim0KindREAL128
      pure subroutine rosenbrock_fghRealDim0KindREAL128(xy, f, g, h)
         Real(kind=REAL128), intent(in):: xy(2)
         Real(kind=REAL128), intent(out):: f, g(2), h(2, 2)
         Real(kind=REAL128):: x, y
         x = xy(1)
         y = xy(2)
         f = rosenbrock(x, y)
         g(1) = -2*(1 - x) - 400*x*(y - x**2)
         g(2) = 200*(y - x**2)
         h(1, 1) = 2 - 400*(y - x**2) + 800*x**2
         h(1, 2) = -400*x
         h(2, 1) = h(1, 2)
         h(2, 2) = 200
      end subroutine rosenbrock_fghRealDim0KindREAL128
      elemental function linear_transformRealDim0KindREAL128(x, x0, x1, y0, y1) result(y)
         Real(kind=REAL128), intent(in):: x
         Real(kind = kind(x)), intent(in):: x0, x1, y0, y1
         Real(kind = kind(x)):: y
         y = (x - x0)/(x1 - x0)*(y1 - y0) + y0
      end function linear_transformRealDim0KindREAL128
end module math_lib
