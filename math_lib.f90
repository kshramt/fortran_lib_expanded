module math_lib
   use, intrinsic:: iso_fortran_env, only: int8, int16, int32, int64, real32, real64, real128
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   implicit none
   private
   public:: mod1
   public:: linear_transform
   public:: rosenbrock
   public:: rosenbrock_fgh
   public:: convolution ! time domain
      interface mod1
         module procedure mod1_8
      end interface mod1
      interface mod1
         module procedure mod1_16
      end interface mod1
      interface mod1
         module procedure mod1_32
      end interface mod1
      interface mod1
         module procedure mod1_64
      end interface mod1
      interface linear_transform
         module procedure linear_transformRealDim0Kindreal32
      end interface linear_transform
      interface rosenbrock
         module procedure rosenbrockRealDim0Kindreal32
      end interface rosenbrock
      interface rosenbrock_fgh
         module procedure rosenbrock_fghRealDim0Kindreal32
      end interface rosenbrock_fgh
      interface linear_transform
         module procedure linear_transformRealDim0Kindreal64
      end interface linear_transform
      interface rosenbrock
         module procedure rosenbrockRealDim0Kindreal64
      end interface rosenbrock
      interface rosenbrock_fgh
         module procedure rosenbrock_fghRealDim0Kindreal64
      end interface rosenbrock_fgh
      interface linear_transform
         module procedure linear_transformRealDim0Kindreal128
      end interface linear_transform
      interface rosenbrock
         module procedure rosenbrockRealDim0Kindreal128
      end interface rosenbrock
      interface rosenbrock_fgh
         module procedure rosenbrock_fghRealDim0Kindreal128
      end interface rosenbrock_fgh
      interface convolution
         module procedure convolutionRealDim1Kindreal32
      end interface convolution
      interface convolution
         module procedure convolutionRealDim1Kindreal64
      end interface convolution
      interface convolution
         module procedure convolutionRealDim1Kindreal128
      end interface convolution
      interface convolution
         module procedure convolutionIntegerDim1Kindint8
      end interface convolution
      interface convolution
         module procedure convolutionIntegerDim1Kindint16
      end interface convolution
      interface convolution
         module procedure convolutionIntegerDim1Kindint32
      end interface convolution
      interface convolution
         module procedure convolutionIntegerDim1Kindint64
      end interface convolution
      interface convolution
         module procedure convolutionComplexDim1Kindreal32
      end interface convolution
      interface convolution
         module procedure convolutionComplexDim1Kindreal64
      end interface convolution
      interface convolution
         module procedure convolutionComplexDim1Kindreal128
      end interface convolution
contains
      elemental function mod1_8(i, n) result(ret)
         Integer(kind=int8):: ret
         Integer(kind=kind(ret)), intent(in):: i, n
         Integer(kind=kind(ret)):: m
         m = mod(i, n)
         if(m > 0)then
            ret = m
         else
            ret = n + m
         end if
      end function mod1_8
      elemental function mod1_16(i, n) result(ret)
         Integer(kind=int16):: ret
         Integer(kind=kind(ret)), intent(in):: i, n
         Integer(kind=kind(ret)):: m
         m = mod(i, n)
         if(m > 0)then
            ret = m
         else
            ret = n + m
         end if
      end function mod1_16
      elemental function mod1_32(i, n) result(ret)
         Integer(kind=int32):: ret
         Integer(kind=kind(ret)), intent(in):: i, n
         Integer(kind=kind(ret)):: m
         m = mod(i, n)
         if(m > 0)then
            ret = m
         else
            ret = n + m
         end if
      end function mod1_32
      elemental function mod1_64(i, n) result(ret)
         Integer(kind=int64):: ret
         Integer(kind=kind(ret)), intent(in):: i, n
         Integer(kind=kind(ret)):: m
         m = mod(i, n)
         if(m > 0)then
            ret = m
         else
            ret = n + m
         end if
      end function mod1_64
      ! zs = xs*ys (* is a convolution operator)
      ! ASSUMPTIONS:
      ! - dX = dY = dZ
      ! CAUTIONS:
      ! - dX (dY) is not multipled.
      subroutine convolutionRealDim1Kindreal32(xs, ys, zs)
         Real(kind=real32), dimension(:), intent(in):: xs, ys
         Real(kind=real32), dimension(:), intent(out):: zs
         if(size(xs, 1) >= size(ys, 1))then
            call convolution_short_with_longRealDim1Kindreal32(ys, xs, zs)
         else
            call convolution_short_with_longRealDim1Kindreal32(xs, ys, zs)
         end if
      end subroutine convolutionRealDim1Kindreal32
      subroutine convolution_short_with_longRealDim1Kindreal32(xs, ys, zs)
         Real(kind=real32), dimension(:), intent(in):: xs, ys
         Real(kind=real32), dimension(:), intent(out):: zs
         Integer:: nXs, nYs, nZs
         Integer:: i
         Integer:: iMax
         Logical:: isReachedEndOfZs
         nXs = size(xs, 1)
         nYs = size(ys, 1)
         nZs = size(zs, 1)
         if(.not.(nXs <= nYs))then; write(error_unit, *) "ERROR: ", "math_lib.f90", " ", 204, (".not.(nXs <= nYs)"); error stop; end if
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
      end subroutine convolution_short_with_longRealDim1Kindreal32
      ! zs = xs*ys (* is a convolution operator)
      ! ASSUMPTIONS:
      ! - dX = dY = dZ
      ! CAUTIONS:
      ! - dX (dY) is not multipled.
      subroutine convolutionRealDim1Kindreal64(xs, ys, zs)
         Real(kind=real64), dimension(:), intent(in):: xs, ys
         Real(kind=real64), dimension(:), intent(out):: zs
         if(size(xs, 1) >= size(ys, 1))then
            call convolution_short_with_longRealDim1Kindreal64(ys, xs, zs)
         else
            call convolution_short_with_longRealDim1Kindreal64(xs, ys, zs)
         end if
      end subroutine convolutionRealDim1Kindreal64
      subroutine convolution_short_with_longRealDim1Kindreal64(xs, ys, zs)
         Real(kind=real64), dimension(:), intent(in):: xs, ys
         Real(kind=real64), dimension(:), intent(out):: zs
         Integer:: nXs, nYs, nZs
         Integer:: i
         Integer:: iMax
         Logical:: isReachedEndOfZs
         nXs = size(xs, 1)
         nYs = size(ys, 1)
         nZs = size(zs, 1)
         if(.not.(nXs <= nYs))then; write(error_unit, *) "ERROR: ", "math_lib.f90", " ", 261, (".not.(nXs <= nYs)"); error stop; end if
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
      end subroutine convolution_short_with_longRealDim1Kindreal64
      ! zs = xs*ys (* is a convolution operator)
      ! ASSUMPTIONS:
      ! - dX = dY = dZ
      ! CAUTIONS:
      ! - dX (dY) is not multipled.
      subroutine convolutionRealDim1Kindreal128(xs, ys, zs)
         Real(kind=real128), dimension(:), intent(in):: xs, ys
         Real(kind=real128), dimension(:), intent(out):: zs
         if(size(xs, 1) >= size(ys, 1))then
            call convolution_short_with_longRealDim1Kindreal128(ys, xs, zs)
         else
            call convolution_short_with_longRealDim1Kindreal128(xs, ys, zs)
         end if
      end subroutine convolutionRealDim1Kindreal128
      subroutine convolution_short_with_longRealDim1Kindreal128(xs, ys, zs)
         Real(kind=real128), dimension(:), intent(in):: xs, ys
         Real(kind=real128), dimension(:), intent(out):: zs
         Integer:: nXs, nYs, nZs
         Integer:: i
         Integer:: iMax
         Logical:: isReachedEndOfZs
         nXs = size(xs, 1)
         nYs = size(ys, 1)
         nZs = size(zs, 1)
         if(.not.(nXs <= nYs))then; write(error_unit, *) "ERROR: ", "math_lib.f90", " ", 318, (".not.(nXs <= nYs)"); error stop; end if
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
      end subroutine convolution_short_with_longRealDim1Kindreal128
      ! zs = xs*ys (* is a convolution operator)
      ! ASSUMPTIONS:
      ! - dX = dY = dZ
      ! CAUTIONS:
      ! - dX (dY) is not multipled.
      subroutine convolutionIntegerDim1Kindint8(xs, ys, zs)
         Integer(kind=int8), dimension(:), intent(in):: xs, ys
         Integer(kind=int8), dimension(:), intent(out):: zs
         if(size(xs, 1) >= size(ys, 1))then
            call convolution_short_with_longIntegerDim1Kindint8(ys, xs, zs)
         else
            call convolution_short_with_longIntegerDim1Kindint8(xs, ys, zs)
         end if
      end subroutine convolutionIntegerDim1Kindint8
      subroutine convolution_short_with_longIntegerDim1Kindint8(xs, ys, zs)
         Integer(kind=int8), dimension(:), intent(in):: xs, ys
         Integer(kind=int8), dimension(:), intent(out):: zs
         Integer:: nXs, nYs, nZs
         Integer:: i
         Integer:: iMax
         Logical:: isReachedEndOfZs
         nXs = size(xs, 1)
         nYs = size(ys, 1)
         nZs = size(zs, 1)
         if(.not.(nXs <= nYs))then; write(error_unit, *) "ERROR: ", "math_lib.f90", " ", 375, (".not.(nXs <= nYs)"); error stop; end if
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
      end subroutine convolution_short_with_longIntegerDim1Kindint8
      ! zs = xs*ys (* is a convolution operator)
      ! ASSUMPTIONS:
      ! - dX = dY = dZ
      ! CAUTIONS:
      ! - dX (dY) is not multipled.
      subroutine convolutionIntegerDim1Kindint16(xs, ys, zs)
         Integer(kind=int16), dimension(:), intent(in):: xs, ys
         Integer(kind=int16), dimension(:), intent(out):: zs
         if(size(xs, 1) >= size(ys, 1))then
            call convolution_short_with_longIntegerDim1Kindint16(ys, xs, zs)
         else
            call convolution_short_with_longIntegerDim1Kindint16(xs, ys, zs)
         end if
      end subroutine convolutionIntegerDim1Kindint16
      subroutine convolution_short_with_longIntegerDim1Kindint16(xs, ys, zs)
         Integer(kind=int16), dimension(:), intent(in):: xs, ys
         Integer(kind=int16), dimension(:), intent(out):: zs
         Integer:: nXs, nYs, nZs
         Integer:: i
         Integer:: iMax
         Logical:: isReachedEndOfZs
         nXs = size(xs, 1)
         nYs = size(ys, 1)
         nZs = size(zs, 1)
         if(.not.(nXs <= nYs))then; write(error_unit, *) "ERROR: ", "math_lib.f90", " ", 432, (".not.(nXs <= nYs)"); error stop; end if
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
      end subroutine convolution_short_with_longIntegerDim1Kindint16
      ! zs = xs*ys (* is a convolution operator)
      ! ASSUMPTIONS:
      ! - dX = dY = dZ
      ! CAUTIONS:
      ! - dX (dY) is not multipled.
      subroutine convolutionIntegerDim1Kindint32(xs, ys, zs)
         Integer(kind=int32), dimension(:), intent(in):: xs, ys
         Integer(kind=int32), dimension(:), intent(out):: zs
         if(size(xs, 1) >= size(ys, 1))then
            call convolution_short_with_longIntegerDim1Kindint32(ys, xs, zs)
         else
            call convolution_short_with_longIntegerDim1Kindint32(xs, ys, zs)
         end if
      end subroutine convolutionIntegerDim1Kindint32
      subroutine convolution_short_with_longIntegerDim1Kindint32(xs, ys, zs)
         Integer(kind=int32), dimension(:), intent(in):: xs, ys
         Integer(kind=int32), dimension(:), intent(out):: zs
         Integer:: nXs, nYs, nZs
         Integer:: i
         Integer:: iMax
         Logical:: isReachedEndOfZs
         nXs = size(xs, 1)
         nYs = size(ys, 1)
         nZs = size(zs, 1)
         if(.not.(nXs <= nYs))then; write(error_unit, *) "ERROR: ", "math_lib.f90", " ", 489, (".not.(nXs <= nYs)"); error stop; end if
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
      end subroutine convolution_short_with_longIntegerDim1Kindint32
      ! zs = xs*ys (* is a convolution operator)
      ! ASSUMPTIONS:
      ! - dX = dY = dZ
      ! CAUTIONS:
      ! - dX (dY) is not multipled.
      subroutine convolutionIntegerDim1Kindint64(xs, ys, zs)
         Integer(kind=int64), dimension(:), intent(in):: xs, ys
         Integer(kind=int64), dimension(:), intent(out):: zs
         if(size(xs, 1) >= size(ys, 1))then
            call convolution_short_with_longIntegerDim1Kindint64(ys, xs, zs)
         else
            call convolution_short_with_longIntegerDim1Kindint64(xs, ys, zs)
         end if
      end subroutine convolutionIntegerDim1Kindint64
      subroutine convolution_short_with_longIntegerDim1Kindint64(xs, ys, zs)
         Integer(kind=int64), dimension(:), intent(in):: xs, ys
         Integer(kind=int64), dimension(:), intent(out):: zs
         Integer:: nXs, nYs, nZs
         Integer:: i
         Integer:: iMax
         Logical:: isReachedEndOfZs
         nXs = size(xs, 1)
         nYs = size(ys, 1)
         nZs = size(zs, 1)
         if(.not.(nXs <= nYs))then; write(error_unit, *) "ERROR: ", "math_lib.f90", " ", 546, (".not.(nXs <= nYs)"); error stop; end if
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
      end subroutine convolution_short_with_longIntegerDim1Kindint64
      ! zs = xs*ys (* is a convolution operator)
      ! ASSUMPTIONS:
      ! - dX = dY = dZ
      ! CAUTIONS:
      ! - dX (dY) is not multipled.
      subroutine convolutionComplexDim1Kindreal32(xs, ys, zs)
         Complex(kind=real32), dimension(:), intent(in):: xs, ys
         Complex(kind=real32), dimension(:), intent(out):: zs
         if(size(xs, 1) >= size(ys, 1))then
            call convolution_short_with_longComplexDim1Kindreal32(ys, xs, zs)
         else
            call convolution_short_with_longComplexDim1Kindreal32(xs, ys, zs)
         end if
      end subroutine convolutionComplexDim1Kindreal32
      subroutine convolution_short_with_longComplexDim1Kindreal32(xs, ys, zs)
         Complex(kind=real32), dimension(:), intent(in):: xs, ys
         Complex(kind=real32), dimension(:), intent(out):: zs
         Integer:: nXs, nYs, nZs
         Integer:: i
         Integer:: iMax
         Logical:: isReachedEndOfZs
         nXs = size(xs, 1)
         nYs = size(ys, 1)
         nZs = size(zs, 1)
         if(.not.(nXs <= nYs))then; write(error_unit, *) "ERROR: ", "math_lib.f90", " ", 603, (".not.(nXs <= nYs)"); error stop; end if
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
      end subroutine convolution_short_with_longComplexDim1Kindreal32
      ! zs = xs*ys (* is a convolution operator)
      ! ASSUMPTIONS:
      ! - dX = dY = dZ
      ! CAUTIONS:
      ! - dX (dY) is not multipled.
      subroutine convolutionComplexDim1Kindreal64(xs, ys, zs)
         Complex(kind=real64), dimension(:), intent(in):: xs, ys
         Complex(kind=real64), dimension(:), intent(out):: zs
         if(size(xs, 1) >= size(ys, 1))then
            call convolution_short_with_longComplexDim1Kindreal64(ys, xs, zs)
         else
            call convolution_short_with_longComplexDim1Kindreal64(xs, ys, zs)
         end if
      end subroutine convolutionComplexDim1Kindreal64
      subroutine convolution_short_with_longComplexDim1Kindreal64(xs, ys, zs)
         Complex(kind=real64), dimension(:), intent(in):: xs, ys
         Complex(kind=real64), dimension(:), intent(out):: zs
         Integer:: nXs, nYs, nZs
         Integer:: i
         Integer:: iMax
         Logical:: isReachedEndOfZs
         nXs = size(xs, 1)
         nYs = size(ys, 1)
         nZs = size(zs, 1)
         if(.not.(nXs <= nYs))then; write(error_unit, *) "ERROR: ", "math_lib.f90", " ", 660, (".not.(nXs <= nYs)"); error stop; end if
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
      end subroutine convolution_short_with_longComplexDim1Kindreal64
      ! zs = xs*ys (* is a convolution operator)
      ! ASSUMPTIONS:
      ! - dX = dY = dZ
      ! CAUTIONS:
      ! - dX (dY) is not multipled.
      subroutine convolutionComplexDim1Kindreal128(xs, ys, zs)
         Complex(kind=real128), dimension(:), intent(in):: xs, ys
         Complex(kind=real128), dimension(:), intent(out):: zs
         if(size(xs, 1) >= size(ys, 1))then
            call convolution_short_with_longComplexDim1Kindreal128(ys, xs, zs)
         else
            call convolution_short_with_longComplexDim1Kindreal128(xs, ys, zs)
         end if
      end subroutine convolutionComplexDim1Kindreal128
      subroutine convolution_short_with_longComplexDim1Kindreal128(xs, ys, zs)
         Complex(kind=real128), dimension(:), intent(in):: xs, ys
         Complex(kind=real128), dimension(:), intent(out):: zs
         Integer:: nXs, nYs, nZs
         Integer:: i
         Integer:: iMax
         Logical:: isReachedEndOfZs
         nXs = size(xs, 1)
         nYs = size(ys, 1)
         nZs = size(zs, 1)
         if(.not.(nXs <= nYs))then; write(error_unit, *) "ERROR: ", "math_lib.f90", " ", 717, (".not.(nXs <= nYs)"); error stop; end if
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
      end subroutine convolution_short_with_longComplexDim1Kindreal128
      elemental function rosenbrockRealDim0Kindreal32(x, y) result(ret)
         Real(kind=real32), intent(in):: x, y
         Real(kind=real32):: ret
         ret = (1 - x)**2 + 100*(y - x**2)**2
      end function rosenbrockRealDim0Kindreal32
      pure subroutine rosenbrock_fghRealDim0Kindreal32(xy, f, g, h)
         Real(kind=real32), intent(in):: xy(2)
         Real(kind=real32), intent(out):: f, g(2), h(2, 2)
         Real(kind=real32):: x, y
         x = xy(1)
         y = xy(2)
         f = rosenbrock(x, y)
         g(1) = -2*(1 - x) - 400*x*(y - x**2)
         g(2) = 200*(y - x**2)
         h(1, 1) = 2 - 400*(y - x**2) + 800*x**2
         h(1, 2) = -400*x
         h(2, 1) = h(1, 2)
         h(2, 2) = 200
      end subroutine rosenbrock_fghRealDim0Kindreal32
      elemental function linear_transformRealDim0Kindreal32(x, x0, x1, y0, y1) result(y)
         Real(kind=real32), intent(in):: x
         Real(kind = kind(x)), intent(in):: x0, x1, y0, y1
         Real(kind = kind(x)):: y
         y = (x - x0)/(x1 - x0)*(y1 - y0) + y0
      end function linear_transformRealDim0Kindreal32
      elemental function rosenbrockRealDim0Kindreal64(x, y) result(ret)
         Real(kind=real64), intent(in):: x, y
         Real(kind=real64):: ret
         ret = (1 - x)**2 + 100*(y - x**2)**2
      end function rosenbrockRealDim0Kindreal64
      pure subroutine rosenbrock_fghRealDim0Kindreal64(xy, f, g, h)
         Real(kind=real64), intent(in):: xy(2)
         Real(kind=real64), intent(out):: f, g(2), h(2, 2)
         Real(kind=real64):: x, y
         x = xy(1)
         y = xy(2)
         f = rosenbrock(x, y)
         g(1) = -2*(1 - x) - 400*x*(y - x**2)
         g(2) = 200*(y - x**2)
         h(1, 1) = 2 - 400*(y - x**2) + 800*x**2
         h(1, 2) = -400*x
         h(2, 1) = h(1, 2)
         h(2, 2) = 200
      end subroutine rosenbrock_fghRealDim0Kindreal64
      elemental function linear_transformRealDim0Kindreal64(x, x0, x1, y0, y1) result(y)
         Real(kind=real64), intent(in):: x
         Real(kind = kind(x)), intent(in):: x0, x1, y0, y1
         Real(kind = kind(x)):: y
         y = (x - x0)/(x1 - x0)*(y1 - y0) + y0
      end function linear_transformRealDim0Kindreal64
      elemental function rosenbrockRealDim0Kindreal128(x, y) result(ret)
         Real(kind=real128), intent(in):: x, y
         Real(kind=real128):: ret
         ret = (1 - x)**2 + 100*(y - x**2)**2
      end function rosenbrockRealDim0Kindreal128
      pure subroutine rosenbrock_fghRealDim0Kindreal128(xy, f, g, h)
         Real(kind=real128), intent(in):: xy(2)
         Real(kind=real128), intent(out):: f, g(2), h(2, 2)
         Real(kind=real128):: x, y
         x = xy(1)
         y = xy(2)
         f = rosenbrock(x, y)
         g(1) = -2*(1 - x) - 400*x*(y - x**2)
         g(2) = 200*(y - x**2)
         h(1, 1) = 2 - 400*(y - x**2) + 800*x**2
         h(1, 2) = -400*x
         h(2, 1) = h(1, 2)
         h(2, 2) = 200
      end subroutine rosenbrock_fghRealDim0Kindreal128
      elemental function linear_transformRealDim0Kindreal128(x, x0, x1, y0, y1) result(y)
         Real(kind=real128), intent(in):: x
         Real(kind = kind(x)), intent(in):: x0, x1, y0, y1
         Real(kind = kind(x)):: y
         y = (x - x0)/(x1 - x0)*(y1 - y0) + y0
      end function linear_transformRealDim0Kindreal128
end module math_lib
