module dual_lib
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   implicit none
   private
   public:: operator(+), operator(-)
   public:: operator(*), operator(/)
      public:: exp
         public:: sqrt
         public:: tan
         public:: sin
         public:: cos
         public:: log
         public:: log10
         public:: atan
   public:: real, diff, dual
   public:: write
            interface operator(+)
               module procedure plusDual32Dual32
               module procedure plusRealDim0KindREAL32Dual32
               module procedure plusDual32RealDim0KindREAL32
            end interface operator(+)
            interface operator(-)
               module procedure minusDual32Dual32
               module procedure minusRealDim0KindREAL32Dual32
               module procedure minusDual32RealDim0KindREAL32
            end interface operator(-)
            interface operator(*)
               module procedure multiplyDual32Dual32
               module procedure multiplyRealDim0KindREAL32Dual32
               module procedure multiplyDual32RealDim0KindREAL32
            end interface operator(*)
            interface operator(/)
               module procedure divideDual32Dual32
               module procedure divideRealDim0KindREAL32Dual32
               module procedure divideDual32RealDim0KindREAL32
            end interface operator(/)
            interface operator(+)
               module procedure plusDual32Dual64
               module procedure plusRealDim0KindREAL32Dual64
               module procedure plusDual32RealDim0KindREAL64
            end interface operator(+)
            interface operator(-)
               module procedure minusDual32Dual64
               module procedure minusRealDim0KindREAL32Dual64
               module procedure minusDual32RealDim0KindREAL64
            end interface operator(-)
            interface operator(*)
               module procedure multiplyDual32Dual64
               module procedure multiplyRealDim0KindREAL32Dual64
               module procedure multiplyDual32RealDim0KindREAL64
            end interface operator(*)
            interface operator(/)
               module procedure divideDual32Dual64
               module procedure divideRealDim0KindREAL32Dual64
               module procedure divideDual32RealDim0KindREAL64
            end interface operator(/)
            interface operator(+)
               module procedure plusDual32Dual128
               module procedure plusRealDim0KindREAL32Dual128
               module procedure plusDual32RealDim0KindREAL128
            end interface operator(+)
            interface operator(-)
               module procedure minusDual32Dual128
               module procedure minusRealDim0KindREAL32Dual128
               module procedure minusDual32RealDim0KindREAL128
            end interface operator(-)
            interface operator(*)
               module procedure multiplyDual32Dual128
               module procedure multiplyRealDim0KindREAL32Dual128
               module procedure multiplyDual32RealDim0KindREAL128
            end interface operator(*)
            interface operator(/)
               module procedure divideDual32Dual128
               module procedure divideRealDim0KindREAL32Dual128
               module procedure divideDual32RealDim0KindREAL128
            end interface operator(/)
         interface exp
            module procedure expDual32
         end interface exp
         interface sqrt
            module procedure sqrtDual32
         end interface sqrt
         interface tan
            module procedure tanDual32
         end interface tan
         interface sin
            module procedure sinDual32
         end interface sin
         interface cos
            module procedure cosDual32
         end interface cos
         interface log
            module procedure logDual32
         end interface log
         interface log10
            module procedure log10Dual32
         end interface log10
         interface atan
            module procedure atanDual32
         end interface atan
      interface real
         module procedure realDual32
      end interface real
      interface diff
         module procedure diffDual32
      end interface diff
      interface dual
         module procedure dual_from_dualDual32
      end interface dual
         interface dual
            module procedure dual_from_realRealDim0KindREAL32RealDim0KindREAL32
         end interface dual
         interface dual
            module procedure dual_from_realRealDim0KindREAL32RealDim0KindREAL64
         end interface dual
         interface dual
            module procedure dual_from_realRealDim0KindREAL32RealDim0KindREAL128
         end interface dual
      interface dual
         module procedure dual_from_real_constRealDim0KindREAL32
      end interface dual
            interface write
               module procedure write_iosDual32T4T4
            end interface write
            interface write
               module procedure write_iosDual32T4T5
            end interface write
            interface write
               module procedure write_iosDual32T4T6
            end interface write
            interface write
               module procedure write_iosDual32T4T7
            end interface write
         interface write
            module procedure writeDual32IntegerDim0KindINT8
         end interface write
            interface write
               module procedure write_iosDual32T5T4
            end interface write
            interface write
               module procedure write_iosDual32T5T5
            end interface write
            interface write
               module procedure write_iosDual32T5T6
            end interface write
            interface write
               module procedure write_iosDual32T5T7
            end interface write
         interface write
            module procedure writeDual32IntegerDim0KindINT16
         end interface write
            interface write
               module procedure write_iosDual32T6T4
            end interface write
            interface write
               module procedure write_iosDual32T6T5
            end interface write
            interface write
               module procedure write_iosDual32T6T6
            end interface write
            interface write
               module procedure write_iosDual32T6T7
            end interface write
         interface write
            module procedure writeDual32IntegerDim0KindINT32
         end interface write
            interface write
               module procedure write_iosDual32T7T4
            end interface write
            interface write
               module procedure write_iosDual32T7T5
            end interface write
            interface write
               module procedure write_iosDual32T7T6
            end interface write
            interface write
               module procedure write_iosDual32T7T7
            end interface write
         interface write
            module procedure writeDual32IntegerDim0KindINT64
         end interface write
            interface operator(+)
               module procedure plusDual64Dual32
               module procedure plusRealDim0KindREAL64Dual32
               module procedure plusDual64RealDim0KindREAL32
            end interface operator(+)
            interface operator(-)
               module procedure minusDual64Dual32
               module procedure minusRealDim0KindREAL64Dual32
               module procedure minusDual64RealDim0KindREAL32
            end interface operator(-)
            interface operator(*)
               module procedure multiplyDual64Dual32
               module procedure multiplyRealDim0KindREAL64Dual32
               module procedure multiplyDual64RealDim0KindREAL32
            end interface operator(*)
            interface operator(/)
               module procedure divideDual64Dual32
               module procedure divideRealDim0KindREAL64Dual32
               module procedure divideDual64RealDim0KindREAL32
            end interface operator(/)
            interface operator(+)
               module procedure plusDual64Dual64
               module procedure plusRealDim0KindREAL64Dual64
               module procedure plusDual64RealDim0KindREAL64
            end interface operator(+)
            interface operator(-)
               module procedure minusDual64Dual64
               module procedure minusRealDim0KindREAL64Dual64
               module procedure minusDual64RealDim0KindREAL64
            end interface operator(-)
            interface operator(*)
               module procedure multiplyDual64Dual64
               module procedure multiplyRealDim0KindREAL64Dual64
               module procedure multiplyDual64RealDim0KindREAL64
            end interface operator(*)
            interface operator(/)
               module procedure divideDual64Dual64
               module procedure divideRealDim0KindREAL64Dual64
               module procedure divideDual64RealDim0KindREAL64
            end interface operator(/)
            interface operator(+)
               module procedure plusDual64Dual128
               module procedure plusRealDim0KindREAL64Dual128
               module procedure plusDual64RealDim0KindREAL128
            end interface operator(+)
            interface operator(-)
               module procedure minusDual64Dual128
               module procedure minusRealDim0KindREAL64Dual128
               module procedure minusDual64RealDim0KindREAL128
            end interface operator(-)
            interface operator(*)
               module procedure multiplyDual64Dual128
               module procedure multiplyRealDim0KindREAL64Dual128
               module procedure multiplyDual64RealDim0KindREAL128
            end interface operator(*)
            interface operator(/)
               module procedure divideDual64Dual128
               module procedure divideRealDim0KindREAL64Dual128
               module procedure divideDual64RealDim0KindREAL128
            end interface operator(/)
         interface exp
            module procedure expDual64
         end interface exp
         interface sqrt
            module procedure sqrtDual64
         end interface sqrt
         interface tan
            module procedure tanDual64
         end interface tan
         interface sin
            module procedure sinDual64
         end interface sin
         interface cos
            module procedure cosDual64
         end interface cos
         interface log
            module procedure logDual64
         end interface log
         interface log10
            module procedure log10Dual64
         end interface log10
         interface atan
            module procedure atanDual64
         end interface atan
      interface real
         module procedure realDual64
      end interface real
      interface diff
         module procedure diffDual64
      end interface diff
      interface dual
         module procedure dual_from_dualDual64
      end interface dual
         interface dual
            module procedure dual_from_realRealDim0KindREAL64RealDim0KindREAL32
         end interface dual
         interface dual
            module procedure dual_from_realRealDim0KindREAL64RealDim0KindREAL64
         end interface dual
         interface dual
            module procedure dual_from_realRealDim0KindREAL64RealDim0KindREAL128
         end interface dual
      interface dual
         module procedure dual_from_real_constRealDim0KindREAL64
      end interface dual
            interface write
               module procedure write_iosDual64T4T4
            end interface write
            interface write
               module procedure write_iosDual64T4T5
            end interface write
            interface write
               module procedure write_iosDual64T4T6
            end interface write
            interface write
               module procedure write_iosDual64T4T7
            end interface write
         interface write
            module procedure writeDual64IntegerDim0KindINT8
         end interface write
            interface write
               module procedure write_iosDual64T5T4
            end interface write
            interface write
               module procedure write_iosDual64T5T5
            end interface write
            interface write
               module procedure write_iosDual64T5T6
            end interface write
            interface write
               module procedure write_iosDual64T5T7
            end interface write
         interface write
            module procedure writeDual64IntegerDim0KindINT16
         end interface write
            interface write
               module procedure write_iosDual64T6T4
            end interface write
            interface write
               module procedure write_iosDual64T6T5
            end interface write
            interface write
               module procedure write_iosDual64T6T6
            end interface write
            interface write
               module procedure write_iosDual64T6T7
            end interface write
         interface write
            module procedure writeDual64IntegerDim0KindINT32
         end interface write
            interface write
               module procedure write_iosDual64T7T4
            end interface write
            interface write
               module procedure write_iosDual64T7T5
            end interface write
            interface write
               module procedure write_iosDual64T7T6
            end interface write
            interface write
               module procedure write_iosDual64T7T7
            end interface write
         interface write
            module procedure writeDual64IntegerDim0KindINT64
         end interface write
            interface operator(+)
               module procedure plusDual128Dual32
               module procedure plusRealDim0KindREAL128Dual32
               module procedure plusDual128RealDim0KindREAL32
            end interface operator(+)
            interface operator(-)
               module procedure minusDual128Dual32
               module procedure minusRealDim0KindREAL128Dual32
               module procedure minusDual128RealDim0KindREAL32
            end interface operator(-)
            interface operator(*)
               module procedure multiplyDual128Dual32
               module procedure multiplyRealDim0KindREAL128Dual32
               module procedure multiplyDual128RealDim0KindREAL32
            end interface operator(*)
            interface operator(/)
               module procedure divideDual128Dual32
               module procedure divideRealDim0KindREAL128Dual32
               module procedure divideDual128RealDim0KindREAL32
            end interface operator(/)
            interface operator(+)
               module procedure plusDual128Dual64
               module procedure plusRealDim0KindREAL128Dual64
               module procedure plusDual128RealDim0KindREAL64
            end interface operator(+)
            interface operator(-)
               module procedure minusDual128Dual64
               module procedure minusRealDim0KindREAL128Dual64
               module procedure minusDual128RealDim0KindREAL64
            end interface operator(-)
            interface operator(*)
               module procedure multiplyDual128Dual64
               module procedure multiplyRealDim0KindREAL128Dual64
               module procedure multiplyDual128RealDim0KindREAL64
            end interface operator(*)
            interface operator(/)
               module procedure divideDual128Dual64
               module procedure divideRealDim0KindREAL128Dual64
               module procedure divideDual128RealDim0KindREAL64
            end interface operator(/)
            interface operator(+)
               module procedure plusDual128Dual128
               module procedure plusRealDim0KindREAL128Dual128
               module procedure plusDual128RealDim0KindREAL128
            end interface operator(+)
            interface operator(-)
               module procedure minusDual128Dual128
               module procedure minusRealDim0KindREAL128Dual128
               module procedure minusDual128RealDim0KindREAL128
            end interface operator(-)
            interface operator(*)
               module procedure multiplyDual128Dual128
               module procedure multiplyRealDim0KindREAL128Dual128
               module procedure multiplyDual128RealDim0KindREAL128
            end interface operator(*)
            interface operator(/)
               module procedure divideDual128Dual128
               module procedure divideRealDim0KindREAL128Dual128
               module procedure divideDual128RealDim0KindREAL128
            end interface operator(/)
         interface exp
            module procedure expDual128
         end interface exp
         interface sqrt
            module procedure sqrtDual128
         end interface sqrt
         interface tan
            module procedure tanDual128
         end interface tan
         interface sin
            module procedure sinDual128
         end interface sin
         interface cos
            module procedure cosDual128
         end interface cos
         interface log
            module procedure logDual128
         end interface log
         interface log10
            module procedure log10Dual128
         end interface log10
         interface atan
            module procedure atanDual128
         end interface atan
      interface real
         module procedure realDual128
      end interface real
      interface diff
         module procedure diffDual128
      end interface diff
      interface dual
         module procedure dual_from_dualDual128
      end interface dual
         interface dual
            module procedure dual_from_realRealDim0KindREAL128RealDim0KindREAL32
         end interface dual
         interface dual
            module procedure dual_from_realRealDim0KindREAL128RealDim0KindREAL64
         end interface dual
         interface dual
            module procedure dual_from_realRealDim0KindREAL128RealDim0KindREAL128
         end interface dual
      interface dual
         module procedure dual_from_real_constRealDim0KindREAL128
      end interface dual
            interface write
               module procedure write_iosDual128T4T4
            end interface write
            interface write
               module procedure write_iosDual128T4T5
            end interface write
            interface write
               module procedure write_iosDual128T4T6
            end interface write
            interface write
               module procedure write_iosDual128T4T7
            end interface write
         interface write
            module procedure writeDual128IntegerDim0KindINT8
         end interface write
            interface write
               module procedure write_iosDual128T5T4
            end interface write
            interface write
               module procedure write_iosDual128T5T5
            end interface write
            interface write
               module procedure write_iosDual128T5T6
            end interface write
            interface write
               module procedure write_iosDual128T5T7
            end interface write
         interface write
            module procedure writeDual128IntegerDim0KindINT16
         end interface write
            interface write
               module procedure write_iosDual128T6T4
            end interface write
            interface write
               module procedure write_iosDual128T6T5
            end interface write
            interface write
               module procedure write_iosDual128T6T6
            end interface write
            interface write
               module procedure write_iosDual128T6T7
            end interface write
         interface write
            module procedure writeDual128IntegerDim0KindINT32
         end interface write
            interface write
               module procedure write_iosDual128T7T4
            end interface write
            interface write
               module procedure write_iosDual128T7T5
            end interface write
            interface write
               module procedure write_iosDual128T7T6
            end interface write
            interface write
               module procedure write_iosDual128T7T7
            end interface write
         interface write
            module procedure writeDual128IntegerDim0KindINT64
         end interface write
   type, public:: DualNumber
   end type DualNumber
      type, extends(DualNumber), public:: Dual32
         Real(kind=REAL32):: x
         Real(kind=REAL32):: dx = 1
      end type Dual32
      type, extends(DualNumber), public:: Dual64
         Real(kind=REAL64):: x
         Real(kind=REAL64):: dx = 1
      end type Dual64
      type, extends(DualNumber), public:: Dual128
         Real(kind=REAL128):: x
         Real(kind=REAL128):: dx = 1
      end type Dual128
contains
         elemental function plusDual32Dual32(f, g) result(ret)
            type(Dual32), intent(in):: f
            type(Dual32), intent(in):: g
            type(Dual32):: ret
            ret%x = real(f) + real(g)
            ret%dx = diff(f) + diff(g)
         end function plusDual32Dual32
         elemental function minusDual32Dual32(f, g) result(ret)
            type(Dual32), intent(in):: f
            type(Dual32), intent(in):: g
            type(Dual32):: ret
            ret%x = real(f) - real(g)
            ret%dx = diff(f) - diff(g)
         end function minusDual32Dual32
         elemental function multiplyDual32Dual32(f, g) result(ret)
            type(Dual32), intent(in):: f
            type(Dual32), intent(in):: g
            type(Dual32):: ret
            ret%x = real(f)*real(g)
            ret%dx = diff(f)*real(g) + diff(g)*real(f)
         end function multiplyDual32Dual32
         elemental function divideDual32Dual32(f, g) result(ret)
            type(Dual32), intent(in):: f
            type(Dual32), intent(in):: g
            type(Dual32):: ret
            ret%x = real(f)/real(g)
            ret%dx = (diff(f)*real(g) - diff(g)*real(f))/(real(g)**2)
         end function divideDual32Dual32
            elemental function plusRealDim0KindREAL32Dual32(x, g) result(ret)
               Real(kind=REAL32), intent(in):: x
               type(Dual32), intent(in):: g
               type(Dual32):: ret
               ret = dual(x) + g
            end function plusRealDim0KindREAL32Dual32
            elemental function plusDual32RealDim0KindREAL32(f, x) result(ret)
               type(Dual32), intent(in):: f
               Real(kind=REAL32), intent(in):: x
               type(Dual32):: ret
               ret = f + dual(x)
            end function plusDual32RealDim0KindREAL32
            elemental function minusRealDim0KindREAL32Dual32(x, g) result(ret)
               Real(kind=REAL32), intent(in):: x
               type(Dual32), intent(in):: g
               type(Dual32):: ret
               ret = dual(x) - g
            end function minusRealDim0KindREAL32Dual32
            elemental function minusDual32RealDim0KindREAL32(f, x) result(ret)
               type(Dual32), intent(in):: f
               Real(kind=REAL32), intent(in):: x
               type(Dual32):: ret
               ret = f - dual(x)
            end function minusDual32RealDim0KindREAL32
            elemental function multiplyRealDim0KindREAL32Dual32(x, g) result(ret)
               Real(kind=REAL32), intent(in):: x
               type(Dual32), intent(in):: g
               type(Dual32):: ret
               ret = dual(x) * g
            end function multiplyRealDim0KindREAL32Dual32
            elemental function multiplyDual32RealDim0KindREAL32(f, x) result(ret)
               type(Dual32), intent(in):: f
               Real(kind=REAL32), intent(in):: x
               type(Dual32):: ret
               ret = f * dual(x)
            end function multiplyDual32RealDim0KindREAL32
            elemental function divideRealDim0KindREAL32Dual32(x, g) result(ret)
               Real(kind=REAL32), intent(in):: x
               type(Dual32), intent(in):: g
               type(Dual32):: ret
               ret = dual(x) / g
            end function divideRealDim0KindREAL32Dual32
            elemental function divideDual32RealDim0KindREAL32(f, x) result(ret)
               type(Dual32), intent(in):: f
               Real(kind=REAL32), intent(in):: x
               type(Dual32):: ret
               ret = f / dual(x)
            end function divideDual32RealDim0KindREAL32
         elemental function plusDual32Dual64(f, g) result(ret)
            type(Dual32), intent(in):: f
            type(Dual64), intent(in):: g
            type(Dual64):: ret
            ret%x = real(f) + real(g)
            ret%dx = diff(f) + diff(g)
         end function plusDual32Dual64
         elemental function minusDual32Dual64(f, g) result(ret)
            type(Dual32), intent(in):: f
            type(Dual64), intent(in):: g
            type(Dual64):: ret
            ret%x = real(f) - real(g)
            ret%dx = diff(f) - diff(g)
         end function minusDual32Dual64
         elemental function multiplyDual32Dual64(f, g) result(ret)
            type(Dual32), intent(in):: f
            type(Dual64), intent(in):: g
            type(Dual64):: ret
            ret%x = real(f)*real(g)
            ret%dx = diff(f)*real(g) + diff(g)*real(f)
         end function multiplyDual32Dual64
         elemental function divideDual32Dual64(f, g) result(ret)
            type(Dual32), intent(in):: f
            type(Dual64), intent(in):: g
            type(Dual64):: ret
            ret%x = real(f)/real(g)
            ret%dx = (diff(f)*real(g) - diff(g)*real(f))/(real(g)**2)
         end function divideDual32Dual64
            elemental function plusRealDim0KindREAL32Dual64(x, g) result(ret)
               Real(kind=REAL32), intent(in):: x
               type(Dual64), intent(in):: g
               type(Dual64):: ret
               ret = dual(x) + g
            end function plusRealDim0KindREAL32Dual64
            elemental function plusDual32RealDim0KindREAL64(f, x) result(ret)
               type(Dual32), intent(in):: f
               Real(kind=REAL64), intent(in):: x
               type(Dual64):: ret
               ret = f + dual(x)
            end function plusDual32RealDim0KindREAL64
            elemental function minusRealDim0KindREAL32Dual64(x, g) result(ret)
               Real(kind=REAL32), intent(in):: x
               type(Dual64), intent(in):: g
               type(Dual64):: ret
               ret = dual(x) - g
            end function minusRealDim0KindREAL32Dual64
            elemental function minusDual32RealDim0KindREAL64(f, x) result(ret)
               type(Dual32), intent(in):: f
               Real(kind=REAL64), intent(in):: x
               type(Dual64):: ret
               ret = f - dual(x)
            end function minusDual32RealDim0KindREAL64
            elemental function multiplyRealDim0KindREAL32Dual64(x, g) result(ret)
               Real(kind=REAL32), intent(in):: x
               type(Dual64), intent(in):: g
               type(Dual64):: ret
               ret = dual(x) * g
            end function multiplyRealDim0KindREAL32Dual64
            elemental function multiplyDual32RealDim0KindREAL64(f, x) result(ret)
               type(Dual32), intent(in):: f
               Real(kind=REAL64), intent(in):: x
               type(Dual64):: ret
               ret = f * dual(x)
            end function multiplyDual32RealDim0KindREAL64
            elemental function divideRealDim0KindREAL32Dual64(x, g) result(ret)
               Real(kind=REAL32), intent(in):: x
               type(Dual64), intent(in):: g
               type(Dual64):: ret
               ret = dual(x) / g
            end function divideRealDim0KindREAL32Dual64
            elemental function divideDual32RealDim0KindREAL64(f, x) result(ret)
               type(Dual32), intent(in):: f
               Real(kind=REAL64), intent(in):: x
               type(Dual64):: ret
               ret = f / dual(x)
            end function divideDual32RealDim0KindREAL64
         elemental function plusDual32Dual128(f, g) result(ret)
            type(Dual32), intent(in):: f
            type(Dual128), intent(in):: g
            type(Dual128):: ret
            ret%x = real(f) + real(g)
            ret%dx = diff(f) + diff(g)
         end function plusDual32Dual128
         elemental function minusDual32Dual128(f, g) result(ret)
            type(Dual32), intent(in):: f
            type(Dual128), intent(in):: g
            type(Dual128):: ret
            ret%x = real(f) - real(g)
            ret%dx = diff(f) - diff(g)
         end function minusDual32Dual128
         elemental function multiplyDual32Dual128(f, g) result(ret)
            type(Dual32), intent(in):: f
            type(Dual128), intent(in):: g
            type(Dual128):: ret
            ret%x = real(f)*real(g)
            ret%dx = diff(f)*real(g) + diff(g)*real(f)
         end function multiplyDual32Dual128
         elemental function divideDual32Dual128(f, g) result(ret)
            type(Dual32), intent(in):: f
            type(Dual128), intent(in):: g
            type(Dual128):: ret
            ret%x = real(f)/real(g)
            ret%dx = (diff(f)*real(g) - diff(g)*real(f))/(real(g)**2)
         end function divideDual32Dual128
            elemental function plusRealDim0KindREAL32Dual128(x, g) result(ret)
               Real(kind=REAL32), intent(in):: x
               type(Dual128), intent(in):: g
               type(Dual128):: ret
               ret = dual(x) + g
            end function plusRealDim0KindREAL32Dual128
            elemental function plusDual32RealDim0KindREAL128(f, x) result(ret)
               type(Dual32), intent(in):: f
               Real(kind=REAL128), intent(in):: x
               type(Dual128):: ret
               ret = f + dual(x)
            end function plusDual32RealDim0KindREAL128
            elemental function minusRealDim0KindREAL32Dual128(x, g) result(ret)
               Real(kind=REAL32), intent(in):: x
               type(Dual128), intent(in):: g
               type(Dual128):: ret
               ret = dual(x) - g
            end function minusRealDim0KindREAL32Dual128
            elemental function minusDual32RealDim0KindREAL128(f, x) result(ret)
               type(Dual32), intent(in):: f
               Real(kind=REAL128), intent(in):: x
               type(Dual128):: ret
               ret = f - dual(x)
            end function minusDual32RealDim0KindREAL128
            elemental function multiplyRealDim0KindREAL32Dual128(x, g) result(ret)
               Real(kind=REAL32), intent(in):: x
               type(Dual128), intent(in):: g
               type(Dual128):: ret
               ret = dual(x) * g
            end function multiplyRealDim0KindREAL32Dual128
            elemental function multiplyDual32RealDim0KindREAL128(f, x) result(ret)
               type(Dual32), intent(in):: f
               Real(kind=REAL128), intent(in):: x
               type(Dual128):: ret
               ret = f * dual(x)
            end function multiplyDual32RealDim0KindREAL128
            elemental function divideRealDim0KindREAL32Dual128(x, g) result(ret)
               Real(kind=REAL32), intent(in):: x
               type(Dual128), intent(in):: g
               type(Dual128):: ret
               ret = dual(x) / g
            end function divideRealDim0KindREAL32Dual128
            elemental function divideDual32RealDim0KindREAL128(f, x) result(ret)
               type(Dual32), intent(in):: f
               Real(kind=REAL128), intent(in):: x
               type(Dual128):: ret
               ret = f / dual(x)
            end function divideDual32RealDim0KindREAL128
         elemental function expDual32(f) result(ret)
            type(Dual32), intent(in):: f
            type(Dual32):: ret
            Real(kind=REAL32):: x
            x = real(f)
            ret%x = exp(x)
            ret%dx = diff(f)*x
         end function expDual32
         elemental function sqrtDual32(f) result(ret)
            type(Dual32), intent(in):: f
            type(Dual32):: ret
            Real(kind=REAL32):: x
            x = real(f)
            ret%x = sqrt(x)
            ret%dx = diff(f)*1/(2*x)
         end function sqrtDual32
         elemental function tanDual32(f) result(ret)
            type(Dual32), intent(in):: f
            type(Dual32):: ret
            Real(kind=REAL32):: x
            x = real(f)
            ret%x = tan(x)
            ret%dx = diff(f)*1/(cos(x)**2)
         end function tanDual32
         elemental function sinDual32(f) result(ret)
            type(Dual32), intent(in):: f
            type(Dual32):: ret
            Real(kind=REAL32):: x
            x = real(f)
            ret%x = sin(x)
            ret%dx = diff(f)*cos(x)
         end function sinDual32
         elemental function cosDual32(f) result(ret)
            type(Dual32), intent(in):: f
            type(Dual32):: ret
            Real(kind=REAL32):: x
            x = real(f)
            ret%x = cos(x)
            ret%dx = diff(f)*(-1)*sin(x)
         end function cosDual32
         elemental function logDual32(f) result(ret)
            type(Dual32), intent(in):: f
            type(Dual32):: ret
            Real(kind=REAL32):: x
            x = real(f)
            ret%x = log(x)
            ret%dx = diff(f)*1/x
         end function logDual32
         elemental function log10Dual32(f) result(ret)
            type(Dual32), intent(in):: f
            type(Dual32):: ret
            Real(kind=REAL32):: x
            x = real(f)
            ret%x = log10(x)
            ret%dx = diff(f)*1/x/log(10.0)
         end function log10Dual32
         elemental function atanDual32(f) result(ret)
            type(Dual32), intent(in):: f
            type(Dual32):: ret
            Real(kind=REAL32):: x
            x = real(f)
            ret%x = atan(x)
            ret%dx = diff(f)*1/(1 + x**2)
         end function atanDual32
      elemental function realDual32(f) result(ret)
         type(Dual32), intent(in):: f
         Real(kind=REAL32):: ret
         ret = f%x
      end function realDual32
      elemental function diffDual32(f) result(ret)
         type(Dual32), intent(in):: f
         Real(kind=REAL32):: ret
         ret = f%dx
      end function diffDual32
      elemental function dual_from_dualDual32(f) result(ret)
         type(Dual32), intent(in):: f
         type(Dual32):: ret
         ret%x = real(f)
         ret%dx = diff(f)
      end function dual_from_dualDual32
         elemental function dual_from_realRealDim0KindREAL32RealDim0KindREAL32(f, dx) result(ret)
            Real(kind=REAL32), intent(in):: f
            Real(kind=REAL32), intent(in):: dx
            type(Dual32):: ret
            ret%x = f
            ret%dx = dx
         end function dual_from_realRealDim0KindREAL32RealDim0KindREAL32
         elemental function dual_from_realRealDim0KindREAL32RealDim0KindREAL64(f, dx) result(ret)
            Real(kind=REAL32), intent(in):: f
            Real(kind=REAL64), intent(in):: dx
            type(Dual64):: ret
            ret%x = f
            ret%dx = dx
         end function dual_from_realRealDim0KindREAL32RealDim0KindREAL64
         elemental function dual_from_realRealDim0KindREAL32RealDim0KindREAL128(f, dx) result(ret)
            Real(kind=REAL32), intent(in):: f
            Real(kind=REAL128), intent(in):: dx
            type(Dual128):: ret
            ret%x = f
            ret%dx = dx
         end function dual_from_realRealDim0KindREAL32RealDim0KindREAL128
      elemental function dual_from_real_constRealDim0KindREAL32(f) result(ret)
         Real(kind=REAL32), intent(in):: f
         type(Dual32):: ret
         ret%x = f
         ret%dx = real(0, kind=kind(f))
      end function dual_from_real_constRealDim0KindREAL32
            subroutine write_iosDual32T4T4(f, unit, iostat)
               type(Dual32), intent(in):: f
               Integer(kind=INT8), intent(in):: unit
               Integer(kind=INT8), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual32(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual32T4T4
            subroutine write_iosDual32T4T5(f, unit, iostat)
               type(Dual32), intent(in):: f
               Integer(kind=INT8), intent(in):: unit
               Integer(kind=INT16), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual32(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual32T4T5
            subroutine write_iosDual32T4T6(f, unit, iostat)
               type(Dual32), intent(in):: f
               Integer(kind=INT8), intent(in):: unit
               Integer(kind=INT32), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual32(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual32T4T6
            subroutine write_iosDual32T4T7(f, unit, iostat)
               type(Dual32), intent(in):: f
               Integer(kind=INT8), intent(in):: unit
               Integer(kind=INT64), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual32(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual32T4T7
         subroutine writeDual32IntegerDim0KindINT8(f, unit)
            type(Dual32), intent(in):: f
            Integer(kind=INT8), intent(in):: unit
            write(unit, *) 'Dual32(', real(f), ', ', diff(f), ')'
         end subroutine writeDual32IntegerDim0KindINT8
            subroutine write_iosDual32T5T4(f, unit, iostat)
               type(Dual32), intent(in):: f
               Integer(kind=INT16), intent(in):: unit
               Integer(kind=INT8), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual32(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual32T5T4
            subroutine write_iosDual32T5T5(f, unit, iostat)
               type(Dual32), intent(in):: f
               Integer(kind=INT16), intent(in):: unit
               Integer(kind=INT16), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual32(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual32T5T5
            subroutine write_iosDual32T5T6(f, unit, iostat)
               type(Dual32), intent(in):: f
               Integer(kind=INT16), intent(in):: unit
               Integer(kind=INT32), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual32(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual32T5T6
            subroutine write_iosDual32T5T7(f, unit, iostat)
               type(Dual32), intent(in):: f
               Integer(kind=INT16), intent(in):: unit
               Integer(kind=INT64), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual32(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual32T5T7
         subroutine writeDual32IntegerDim0KindINT16(f, unit)
            type(Dual32), intent(in):: f
            Integer(kind=INT16), intent(in):: unit
            write(unit, *) 'Dual32(', real(f), ', ', diff(f), ')'
         end subroutine writeDual32IntegerDim0KindINT16
            subroutine write_iosDual32T6T4(f, unit, iostat)
               type(Dual32), intent(in):: f
               Integer(kind=INT32), intent(in):: unit
               Integer(kind=INT8), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual32(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual32T6T4
            subroutine write_iosDual32T6T5(f, unit, iostat)
               type(Dual32), intent(in):: f
               Integer(kind=INT32), intent(in):: unit
               Integer(kind=INT16), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual32(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual32T6T5
            subroutine write_iosDual32T6T6(f, unit, iostat)
               type(Dual32), intent(in):: f
               Integer(kind=INT32), intent(in):: unit
               Integer(kind=INT32), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual32(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual32T6T6
            subroutine write_iosDual32T6T7(f, unit, iostat)
               type(Dual32), intent(in):: f
               Integer(kind=INT32), intent(in):: unit
               Integer(kind=INT64), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual32(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual32T6T7
         subroutine writeDual32IntegerDim0KindINT32(f, unit)
            type(Dual32), intent(in):: f
            Integer(kind=INT32), intent(in):: unit
            write(unit, *) 'Dual32(', real(f), ', ', diff(f), ')'
         end subroutine writeDual32IntegerDim0KindINT32
            subroutine write_iosDual32T7T4(f, unit, iostat)
               type(Dual32), intent(in):: f
               Integer(kind=INT64), intent(in):: unit
               Integer(kind=INT8), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual32(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual32T7T4
            subroutine write_iosDual32T7T5(f, unit, iostat)
               type(Dual32), intent(in):: f
               Integer(kind=INT64), intent(in):: unit
               Integer(kind=INT16), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual32(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual32T7T5
            subroutine write_iosDual32T7T6(f, unit, iostat)
               type(Dual32), intent(in):: f
               Integer(kind=INT64), intent(in):: unit
               Integer(kind=INT32), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual32(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual32T7T6
            subroutine write_iosDual32T7T7(f, unit, iostat)
               type(Dual32), intent(in):: f
               Integer(kind=INT64), intent(in):: unit
               Integer(kind=INT64), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual32(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual32T7T7
         subroutine writeDual32IntegerDim0KindINT64(f, unit)
            type(Dual32), intent(in):: f
            Integer(kind=INT64), intent(in):: unit
            write(unit, *) 'Dual32(', real(f), ', ', diff(f), ')'
         end subroutine writeDual32IntegerDim0KindINT64
         elemental function plusDual64Dual32(f, g) result(ret)
            type(Dual64), intent(in):: f
            type(Dual32), intent(in):: g
            type(Dual64):: ret
            ret%x = real(f) + real(g)
            ret%dx = diff(f) + diff(g)
         end function plusDual64Dual32
         elemental function minusDual64Dual32(f, g) result(ret)
            type(Dual64), intent(in):: f
            type(Dual32), intent(in):: g
            type(Dual64):: ret
            ret%x = real(f) - real(g)
            ret%dx = diff(f) - diff(g)
         end function minusDual64Dual32
         elemental function multiplyDual64Dual32(f, g) result(ret)
            type(Dual64), intent(in):: f
            type(Dual32), intent(in):: g
            type(Dual64):: ret
            ret%x = real(f)*real(g)
            ret%dx = diff(f)*real(g) + diff(g)*real(f)
         end function multiplyDual64Dual32
         elemental function divideDual64Dual32(f, g) result(ret)
            type(Dual64), intent(in):: f
            type(Dual32), intent(in):: g
            type(Dual64):: ret
            ret%x = real(f)/real(g)
            ret%dx = (diff(f)*real(g) - diff(g)*real(f))/(real(g)**2)
         end function divideDual64Dual32
            elemental function plusRealDim0KindREAL64Dual32(x, g) result(ret)
               Real(kind=REAL64), intent(in):: x
               type(Dual32), intent(in):: g
               type(Dual64):: ret
               ret = dual(x) + g
            end function plusRealDim0KindREAL64Dual32
            elemental function plusDual64RealDim0KindREAL32(f, x) result(ret)
               type(Dual64), intent(in):: f
               Real(kind=REAL32), intent(in):: x
               type(Dual64):: ret
               ret = f + dual(x)
            end function plusDual64RealDim0KindREAL32
            elemental function minusRealDim0KindREAL64Dual32(x, g) result(ret)
               Real(kind=REAL64), intent(in):: x
               type(Dual32), intent(in):: g
               type(Dual64):: ret
               ret = dual(x) - g
            end function minusRealDim0KindREAL64Dual32
            elemental function minusDual64RealDim0KindREAL32(f, x) result(ret)
               type(Dual64), intent(in):: f
               Real(kind=REAL32), intent(in):: x
               type(Dual64):: ret
               ret = f - dual(x)
            end function minusDual64RealDim0KindREAL32
            elemental function multiplyRealDim0KindREAL64Dual32(x, g) result(ret)
               Real(kind=REAL64), intent(in):: x
               type(Dual32), intent(in):: g
               type(Dual64):: ret
               ret = dual(x) * g
            end function multiplyRealDim0KindREAL64Dual32
            elemental function multiplyDual64RealDim0KindREAL32(f, x) result(ret)
               type(Dual64), intent(in):: f
               Real(kind=REAL32), intent(in):: x
               type(Dual64):: ret
               ret = f * dual(x)
            end function multiplyDual64RealDim0KindREAL32
            elemental function divideRealDim0KindREAL64Dual32(x, g) result(ret)
               Real(kind=REAL64), intent(in):: x
               type(Dual32), intent(in):: g
               type(Dual64):: ret
               ret = dual(x) / g
            end function divideRealDim0KindREAL64Dual32
            elemental function divideDual64RealDim0KindREAL32(f, x) result(ret)
               type(Dual64), intent(in):: f
               Real(kind=REAL32), intent(in):: x
               type(Dual64):: ret
               ret = f / dual(x)
            end function divideDual64RealDim0KindREAL32
         elemental function plusDual64Dual64(f, g) result(ret)
            type(Dual64), intent(in):: f
            type(Dual64), intent(in):: g
            type(Dual64):: ret
            ret%x = real(f) + real(g)
            ret%dx = diff(f) + diff(g)
         end function plusDual64Dual64
         elemental function minusDual64Dual64(f, g) result(ret)
            type(Dual64), intent(in):: f
            type(Dual64), intent(in):: g
            type(Dual64):: ret
            ret%x = real(f) - real(g)
            ret%dx = diff(f) - diff(g)
         end function minusDual64Dual64
         elemental function multiplyDual64Dual64(f, g) result(ret)
            type(Dual64), intent(in):: f
            type(Dual64), intent(in):: g
            type(Dual64):: ret
            ret%x = real(f)*real(g)
            ret%dx = diff(f)*real(g) + diff(g)*real(f)
         end function multiplyDual64Dual64
         elemental function divideDual64Dual64(f, g) result(ret)
            type(Dual64), intent(in):: f
            type(Dual64), intent(in):: g
            type(Dual64):: ret
            ret%x = real(f)/real(g)
            ret%dx = (diff(f)*real(g) - diff(g)*real(f))/(real(g)**2)
         end function divideDual64Dual64
            elemental function plusRealDim0KindREAL64Dual64(x, g) result(ret)
               Real(kind=REAL64), intent(in):: x
               type(Dual64), intent(in):: g
               type(Dual64):: ret
               ret = dual(x) + g
            end function plusRealDim0KindREAL64Dual64
            elemental function plusDual64RealDim0KindREAL64(f, x) result(ret)
               type(Dual64), intent(in):: f
               Real(kind=REAL64), intent(in):: x
               type(Dual64):: ret
               ret = f + dual(x)
            end function plusDual64RealDim0KindREAL64
            elemental function minusRealDim0KindREAL64Dual64(x, g) result(ret)
               Real(kind=REAL64), intent(in):: x
               type(Dual64), intent(in):: g
               type(Dual64):: ret
               ret = dual(x) - g
            end function minusRealDim0KindREAL64Dual64
            elemental function minusDual64RealDim0KindREAL64(f, x) result(ret)
               type(Dual64), intent(in):: f
               Real(kind=REAL64), intent(in):: x
               type(Dual64):: ret
               ret = f - dual(x)
            end function minusDual64RealDim0KindREAL64
            elemental function multiplyRealDim0KindREAL64Dual64(x, g) result(ret)
               Real(kind=REAL64), intent(in):: x
               type(Dual64), intent(in):: g
               type(Dual64):: ret
               ret = dual(x) * g
            end function multiplyRealDim0KindREAL64Dual64
            elemental function multiplyDual64RealDim0KindREAL64(f, x) result(ret)
               type(Dual64), intent(in):: f
               Real(kind=REAL64), intent(in):: x
               type(Dual64):: ret
               ret = f * dual(x)
            end function multiplyDual64RealDim0KindREAL64
            elemental function divideRealDim0KindREAL64Dual64(x, g) result(ret)
               Real(kind=REAL64), intent(in):: x
               type(Dual64), intent(in):: g
               type(Dual64):: ret
               ret = dual(x) / g
            end function divideRealDim0KindREAL64Dual64
            elemental function divideDual64RealDim0KindREAL64(f, x) result(ret)
               type(Dual64), intent(in):: f
               Real(kind=REAL64), intent(in):: x
               type(Dual64):: ret
               ret = f / dual(x)
            end function divideDual64RealDim0KindREAL64
         elemental function plusDual64Dual128(f, g) result(ret)
            type(Dual64), intent(in):: f
            type(Dual128), intent(in):: g
            type(Dual128):: ret
            ret%x = real(f) + real(g)
            ret%dx = diff(f) + diff(g)
         end function plusDual64Dual128
         elemental function minusDual64Dual128(f, g) result(ret)
            type(Dual64), intent(in):: f
            type(Dual128), intent(in):: g
            type(Dual128):: ret
            ret%x = real(f) - real(g)
            ret%dx = diff(f) - diff(g)
         end function minusDual64Dual128
         elemental function multiplyDual64Dual128(f, g) result(ret)
            type(Dual64), intent(in):: f
            type(Dual128), intent(in):: g
            type(Dual128):: ret
            ret%x = real(f)*real(g)
            ret%dx = diff(f)*real(g) + diff(g)*real(f)
         end function multiplyDual64Dual128
         elemental function divideDual64Dual128(f, g) result(ret)
            type(Dual64), intent(in):: f
            type(Dual128), intent(in):: g
            type(Dual128):: ret
            ret%x = real(f)/real(g)
            ret%dx = (diff(f)*real(g) - diff(g)*real(f))/(real(g)**2)
         end function divideDual64Dual128
            elemental function plusRealDim0KindREAL64Dual128(x, g) result(ret)
               Real(kind=REAL64), intent(in):: x
               type(Dual128), intent(in):: g
               type(Dual128):: ret
               ret = dual(x) + g
            end function plusRealDim0KindREAL64Dual128
            elemental function plusDual64RealDim0KindREAL128(f, x) result(ret)
               type(Dual64), intent(in):: f
               Real(kind=REAL128), intent(in):: x
               type(Dual128):: ret
               ret = f + dual(x)
            end function plusDual64RealDim0KindREAL128
            elemental function minusRealDim0KindREAL64Dual128(x, g) result(ret)
               Real(kind=REAL64), intent(in):: x
               type(Dual128), intent(in):: g
               type(Dual128):: ret
               ret = dual(x) - g
            end function minusRealDim0KindREAL64Dual128
            elemental function minusDual64RealDim0KindREAL128(f, x) result(ret)
               type(Dual64), intent(in):: f
               Real(kind=REAL128), intent(in):: x
               type(Dual128):: ret
               ret = f - dual(x)
            end function minusDual64RealDim0KindREAL128
            elemental function multiplyRealDim0KindREAL64Dual128(x, g) result(ret)
               Real(kind=REAL64), intent(in):: x
               type(Dual128), intent(in):: g
               type(Dual128):: ret
               ret = dual(x) * g
            end function multiplyRealDim0KindREAL64Dual128
            elemental function multiplyDual64RealDim0KindREAL128(f, x) result(ret)
               type(Dual64), intent(in):: f
               Real(kind=REAL128), intent(in):: x
               type(Dual128):: ret
               ret = f * dual(x)
            end function multiplyDual64RealDim0KindREAL128
            elemental function divideRealDim0KindREAL64Dual128(x, g) result(ret)
               Real(kind=REAL64), intent(in):: x
               type(Dual128), intent(in):: g
               type(Dual128):: ret
               ret = dual(x) / g
            end function divideRealDim0KindREAL64Dual128
            elemental function divideDual64RealDim0KindREAL128(f, x) result(ret)
               type(Dual64), intent(in):: f
               Real(kind=REAL128), intent(in):: x
               type(Dual128):: ret
               ret = f / dual(x)
            end function divideDual64RealDim0KindREAL128
         elemental function expDual64(f) result(ret)
            type(Dual64), intent(in):: f
            type(Dual64):: ret
            Real(kind=REAL64):: x
            x = real(f)
            ret%x = exp(x)
            ret%dx = diff(f)*x
         end function expDual64
         elemental function sqrtDual64(f) result(ret)
            type(Dual64), intent(in):: f
            type(Dual64):: ret
            Real(kind=REAL64):: x
            x = real(f)
            ret%x = sqrt(x)
            ret%dx = diff(f)*1/(2*x)
         end function sqrtDual64
         elemental function tanDual64(f) result(ret)
            type(Dual64), intent(in):: f
            type(Dual64):: ret
            Real(kind=REAL64):: x
            x = real(f)
            ret%x = tan(x)
            ret%dx = diff(f)*1/(cos(x)**2)
         end function tanDual64
         elemental function sinDual64(f) result(ret)
            type(Dual64), intent(in):: f
            type(Dual64):: ret
            Real(kind=REAL64):: x
            x = real(f)
            ret%x = sin(x)
            ret%dx = diff(f)*cos(x)
         end function sinDual64
         elemental function cosDual64(f) result(ret)
            type(Dual64), intent(in):: f
            type(Dual64):: ret
            Real(kind=REAL64):: x
            x = real(f)
            ret%x = cos(x)
            ret%dx = diff(f)*(-1)*sin(x)
         end function cosDual64
         elemental function logDual64(f) result(ret)
            type(Dual64), intent(in):: f
            type(Dual64):: ret
            Real(kind=REAL64):: x
            x = real(f)
            ret%x = log(x)
            ret%dx = diff(f)*1/x
         end function logDual64
         elemental function log10Dual64(f) result(ret)
            type(Dual64), intent(in):: f
            type(Dual64):: ret
            Real(kind=REAL64):: x
            x = real(f)
            ret%x = log10(x)
            ret%dx = diff(f)*1/x/log(10.0)
         end function log10Dual64
         elemental function atanDual64(f) result(ret)
            type(Dual64), intent(in):: f
            type(Dual64):: ret
            Real(kind=REAL64):: x
            x = real(f)
            ret%x = atan(x)
            ret%dx = diff(f)*1/(1 + x**2)
         end function atanDual64
      elemental function realDual64(f) result(ret)
         type(Dual64), intent(in):: f
         Real(kind=REAL64):: ret
         ret = f%x
      end function realDual64
      elemental function diffDual64(f) result(ret)
         type(Dual64), intent(in):: f
         Real(kind=REAL64):: ret
         ret = f%dx
      end function diffDual64
      elemental function dual_from_dualDual64(f) result(ret)
         type(Dual64), intent(in):: f
         type(Dual64):: ret
         ret%x = real(f)
         ret%dx = diff(f)
      end function dual_from_dualDual64
         elemental function dual_from_realRealDim0KindREAL64RealDim0KindREAL32(f, dx) result(ret)
            Real(kind=REAL64), intent(in):: f
            Real(kind=REAL32), intent(in):: dx
            type(Dual64):: ret
            ret%x = f
            ret%dx = dx
         end function dual_from_realRealDim0KindREAL64RealDim0KindREAL32
         elemental function dual_from_realRealDim0KindREAL64RealDim0KindREAL64(f, dx) result(ret)
            Real(kind=REAL64), intent(in):: f
            Real(kind=REAL64), intent(in):: dx
            type(Dual64):: ret
            ret%x = f
            ret%dx = dx
         end function dual_from_realRealDim0KindREAL64RealDim0KindREAL64
         elemental function dual_from_realRealDim0KindREAL64RealDim0KindREAL128(f, dx) result(ret)
            Real(kind=REAL64), intent(in):: f
            Real(kind=REAL128), intent(in):: dx
            type(Dual128):: ret
            ret%x = f
            ret%dx = dx
         end function dual_from_realRealDim0KindREAL64RealDim0KindREAL128
      elemental function dual_from_real_constRealDim0KindREAL64(f) result(ret)
         Real(kind=REAL64), intent(in):: f
         type(Dual64):: ret
         ret%x = f
         ret%dx = real(0, kind=kind(f))
      end function dual_from_real_constRealDim0KindREAL64
            subroutine write_iosDual64T4T4(f, unit, iostat)
               type(Dual64), intent(in):: f
               Integer(kind=INT8), intent(in):: unit
               Integer(kind=INT8), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual64(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual64T4T4
            subroutine write_iosDual64T4T5(f, unit, iostat)
               type(Dual64), intent(in):: f
               Integer(kind=INT8), intent(in):: unit
               Integer(kind=INT16), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual64(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual64T4T5
            subroutine write_iosDual64T4T6(f, unit, iostat)
               type(Dual64), intent(in):: f
               Integer(kind=INT8), intent(in):: unit
               Integer(kind=INT32), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual64(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual64T4T6
            subroutine write_iosDual64T4T7(f, unit, iostat)
               type(Dual64), intent(in):: f
               Integer(kind=INT8), intent(in):: unit
               Integer(kind=INT64), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual64(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual64T4T7
         subroutine writeDual64IntegerDim0KindINT8(f, unit)
            type(Dual64), intent(in):: f
            Integer(kind=INT8), intent(in):: unit
            write(unit, *) 'Dual64(', real(f), ', ', diff(f), ')'
         end subroutine writeDual64IntegerDim0KindINT8
            subroutine write_iosDual64T5T4(f, unit, iostat)
               type(Dual64), intent(in):: f
               Integer(kind=INT16), intent(in):: unit
               Integer(kind=INT8), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual64(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual64T5T4
            subroutine write_iosDual64T5T5(f, unit, iostat)
               type(Dual64), intent(in):: f
               Integer(kind=INT16), intent(in):: unit
               Integer(kind=INT16), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual64(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual64T5T5
            subroutine write_iosDual64T5T6(f, unit, iostat)
               type(Dual64), intent(in):: f
               Integer(kind=INT16), intent(in):: unit
               Integer(kind=INT32), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual64(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual64T5T6
            subroutine write_iosDual64T5T7(f, unit, iostat)
               type(Dual64), intent(in):: f
               Integer(kind=INT16), intent(in):: unit
               Integer(kind=INT64), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual64(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual64T5T7
         subroutine writeDual64IntegerDim0KindINT16(f, unit)
            type(Dual64), intent(in):: f
            Integer(kind=INT16), intent(in):: unit
            write(unit, *) 'Dual64(', real(f), ', ', diff(f), ')'
         end subroutine writeDual64IntegerDim0KindINT16
            subroutine write_iosDual64T6T4(f, unit, iostat)
               type(Dual64), intent(in):: f
               Integer(kind=INT32), intent(in):: unit
               Integer(kind=INT8), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual64(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual64T6T4
            subroutine write_iosDual64T6T5(f, unit, iostat)
               type(Dual64), intent(in):: f
               Integer(kind=INT32), intent(in):: unit
               Integer(kind=INT16), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual64(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual64T6T5
            subroutine write_iosDual64T6T6(f, unit, iostat)
               type(Dual64), intent(in):: f
               Integer(kind=INT32), intent(in):: unit
               Integer(kind=INT32), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual64(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual64T6T6
            subroutine write_iosDual64T6T7(f, unit, iostat)
               type(Dual64), intent(in):: f
               Integer(kind=INT32), intent(in):: unit
               Integer(kind=INT64), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual64(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual64T6T7
         subroutine writeDual64IntegerDim0KindINT32(f, unit)
            type(Dual64), intent(in):: f
            Integer(kind=INT32), intent(in):: unit
            write(unit, *) 'Dual64(', real(f), ', ', diff(f), ')'
         end subroutine writeDual64IntegerDim0KindINT32
            subroutine write_iosDual64T7T4(f, unit, iostat)
               type(Dual64), intent(in):: f
               Integer(kind=INT64), intent(in):: unit
               Integer(kind=INT8), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual64(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual64T7T4
            subroutine write_iosDual64T7T5(f, unit, iostat)
               type(Dual64), intent(in):: f
               Integer(kind=INT64), intent(in):: unit
               Integer(kind=INT16), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual64(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual64T7T5
            subroutine write_iosDual64T7T6(f, unit, iostat)
               type(Dual64), intent(in):: f
               Integer(kind=INT64), intent(in):: unit
               Integer(kind=INT32), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual64(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual64T7T6
            subroutine write_iosDual64T7T7(f, unit, iostat)
               type(Dual64), intent(in):: f
               Integer(kind=INT64), intent(in):: unit
               Integer(kind=INT64), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual64(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual64T7T7
         subroutine writeDual64IntegerDim0KindINT64(f, unit)
            type(Dual64), intent(in):: f
            Integer(kind=INT64), intent(in):: unit
            write(unit, *) 'Dual64(', real(f), ', ', diff(f), ')'
         end subroutine writeDual64IntegerDim0KindINT64
         elemental function plusDual128Dual32(f, g) result(ret)
            type(Dual128), intent(in):: f
            type(Dual32), intent(in):: g
            type(Dual128):: ret
            ret%x = real(f) + real(g)
            ret%dx = diff(f) + diff(g)
         end function plusDual128Dual32
         elemental function minusDual128Dual32(f, g) result(ret)
            type(Dual128), intent(in):: f
            type(Dual32), intent(in):: g
            type(Dual128):: ret
            ret%x = real(f) - real(g)
            ret%dx = diff(f) - diff(g)
         end function minusDual128Dual32
         elemental function multiplyDual128Dual32(f, g) result(ret)
            type(Dual128), intent(in):: f
            type(Dual32), intent(in):: g
            type(Dual128):: ret
            ret%x = real(f)*real(g)
            ret%dx = diff(f)*real(g) + diff(g)*real(f)
         end function multiplyDual128Dual32
         elemental function divideDual128Dual32(f, g) result(ret)
            type(Dual128), intent(in):: f
            type(Dual32), intent(in):: g
            type(Dual128):: ret
            ret%x = real(f)/real(g)
            ret%dx = (diff(f)*real(g) - diff(g)*real(f))/(real(g)**2)
         end function divideDual128Dual32
            elemental function plusRealDim0KindREAL128Dual32(x, g) result(ret)
               Real(kind=REAL128), intent(in):: x
               type(Dual32), intent(in):: g
               type(Dual128):: ret
               ret = dual(x) + g
            end function plusRealDim0KindREAL128Dual32
            elemental function plusDual128RealDim0KindREAL32(f, x) result(ret)
               type(Dual128), intent(in):: f
               Real(kind=REAL32), intent(in):: x
               type(Dual128):: ret
               ret = f + dual(x)
            end function plusDual128RealDim0KindREAL32
            elemental function minusRealDim0KindREAL128Dual32(x, g) result(ret)
               Real(kind=REAL128), intent(in):: x
               type(Dual32), intent(in):: g
               type(Dual128):: ret
               ret = dual(x) - g
            end function minusRealDim0KindREAL128Dual32
            elemental function minusDual128RealDim0KindREAL32(f, x) result(ret)
               type(Dual128), intent(in):: f
               Real(kind=REAL32), intent(in):: x
               type(Dual128):: ret
               ret = f - dual(x)
            end function minusDual128RealDim0KindREAL32
            elemental function multiplyRealDim0KindREAL128Dual32(x, g) result(ret)
               Real(kind=REAL128), intent(in):: x
               type(Dual32), intent(in):: g
               type(Dual128):: ret
               ret = dual(x) * g
            end function multiplyRealDim0KindREAL128Dual32
            elemental function multiplyDual128RealDim0KindREAL32(f, x) result(ret)
               type(Dual128), intent(in):: f
               Real(kind=REAL32), intent(in):: x
               type(Dual128):: ret
               ret = f * dual(x)
            end function multiplyDual128RealDim0KindREAL32
            elemental function divideRealDim0KindREAL128Dual32(x, g) result(ret)
               Real(kind=REAL128), intent(in):: x
               type(Dual32), intent(in):: g
               type(Dual128):: ret
               ret = dual(x) / g
            end function divideRealDim0KindREAL128Dual32
            elemental function divideDual128RealDim0KindREAL32(f, x) result(ret)
               type(Dual128), intent(in):: f
               Real(kind=REAL32), intent(in):: x
               type(Dual128):: ret
               ret = f / dual(x)
            end function divideDual128RealDim0KindREAL32
         elemental function plusDual128Dual64(f, g) result(ret)
            type(Dual128), intent(in):: f
            type(Dual64), intent(in):: g
            type(Dual128):: ret
            ret%x = real(f) + real(g)
            ret%dx = diff(f) + diff(g)
         end function plusDual128Dual64
         elemental function minusDual128Dual64(f, g) result(ret)
            type(Dual128), intent(in):: f
            type(Dual64), intent(in):: g
            type(Dual128):: ret
            ret%x = real(f) - real(g)
            ret%dx = diff(f) - diff(g)
         end function minusDual128Dual64
         elemental function multiplyDual128Dual64(f, g) result(ret)
            type(Dual128), intent(in):: f
            type(Dual64), intent(in):: g
            type(Dual128):: ret
            ret%x = real(f)*real(g)
            ret%dx = diff(f)*real(g) + diff(g)*real(f)
         end function multiplyDual128Dual64
         elemental function divideDual128Dual64(f, g) result(ret)
            type(Dual128), intent(in):: f
            type(Dual64), intent(in):: g
            type(Dual128):: ret
            ret%x = real(f)/real(g)
            ret%dx = (diff(f)*real(g) - diff(g)*real(f))/(real(g)**2)
         end function divideDual128Dual64
            elemental function plusRealDim0KindREAL128Dual64(x, g) result(ret)
               Real(kind=REAL128), intent(in):: x
               type(Dual64), intent(in):: g
               type(Dual128):: ret
               ret = dual(x) + g
            end function plusRealDim0KindREAL128Dual64
            elemental function plusDual128RealDim0KindREAL64(f, x) result(ret)
               type(Dual128), intent(in):: f
               Real(kind=REAL64), intent(in):: x
               type(Dual128):: ret
               ret = f + dual(x)
            end function plusDual128RealDim0KindREAL64
            elemental function minusRealDim0KindREAL128Dual64(x, g) result(ret)
               Real(kind=REAL128), intent(in):: x
               type(Dual64), intent(in):: g
               type(Dual128):: ret
               ret = dual(x) - g
            end function minusRealDim0KindREAL128Dual64
            elemental function minusDual128RealDim0KindREAL64(f, x) result(ret)
               type(Dual128), intent(in):: f
               Real(kind=REAL64), intent(in):: x
               type(Dual128):: ret
               ret = f - dual(x)
            end function minusDual128RealDim0KindREAL64
            elemental function multiplyRealDim0KindREAL128Dual64(x, g) result(ret)
               Real(kind=REAL128), intent(in):: x
               type(Dual64), intent(in):: g
               type(Dual128):: ret
               ret = dual(x) * g
            end function multiplyRealDim0KindREAL128Dual64
            elemental function multiplyDual128RealDim0KindREAL64(f, x) result(ret)
               type(Dual128), intent(in):: f
               Real(kind=REAL64), intent(in):: x
               type(Dual128):: ret
               ret = f * dual(x)
            end function multiplyDual128RealDim0KindREAL64
            elemental function divideRealDim0KindREAL128Dual64(x, g) result(ret)
               Real(kind=REAL128), intent(in):: x
               type(Dual64), intent(in):: g
               type(Dual128):: ret
               ret = dual(x) / g
            end function divideRealDim0KindREAL128Dual64
            elemental function divideDual128RealDim0KindREAL64(f, x) result(ret)
               type(Dual128), intent(in):: f
               Real(kind=REAL64), intent(in):: x
               type(Dual128):: ret
               ret = f / dual(x)
            end function divideDual128RealDim0KindREAL64
         elemental function plusDual128Dual128(f, g) result(ret)
            type(Dual128), intent(in):: f
            type(Dual128), intent(in):: g
            type(Dual128):: ret
            ret%x = real(f) + real(g)
            ret%dx = diff(f) + diff(g)
         end function plusDual128Dual128
         elemental function minusDual128Dual128(f, g) result(ret)
            type(Dual128), intent(in):: f
            type(Dual128), intent(in):: g
            type(Dual128):: ret
            ret%x = real(f) - real(g)
            ret%dx = diff(f) - diff(g)
         end function minusDual128Dual128
         elemental function multiplyDual128Dual128(f, g) result(ret)
            type(Dual128), intent(in):: f
            type(Dual128), intent(in):: g
            type(Dual128):: ret
            ret%x = real(f)*real(g)
            ret%dx = diff(f)*real(g) + diff(g)*real(f)
         end function multiplyDual128Dual128
         elemental function divideDual128Dual128(f, g) result(ret)
            type(Dual128), intent(in):: f
            type(Dual128), intent(in):: g
            type(Dual128):: ret
            ret%x = real(f)/real(g)
            ret%dx = (diff(f)*real(g) - diff(g)*real(f))/(real(g)**2)
         end function divideDual128Dual128
            elemental function plusRealDim0KindREAL128Dual128(x, g) result(ret)
               Real(kind=REAL128), intent(in):: x
               type(Dual128), intent(in):: g
               type(Dual128):: ret
               ret = dual(x) + g
            end function plusRealDim0KindREAL128Dual128
            elemental function plusDual128RealDim0KindREAL128(f, x) result(ret)
               type(Dual128), intent(in):: f
               Real(kind=REAL128), intent(in):: x
               type(Dual128):: ret
               ret = f + dual(x)
            end function plusDual128RealDim0KindREAL128
            elemental function minusRealDim0KindREAL128Dual128(x, g) result(ret)
               Real(kind=REAL128), intent(in):: x
               type(Dual128), intent(in):: g
               type(Dual128):: ret
               ret = dual(x) - g
            end function minusRealDim0KindREAL128Dual128
            elemental function minusDual128RealDim0KindREAL128(f, x) result(ret)
               type(Dual128), intent(in):: f
               Real(kind=REAL128), intent(in):: x
               type(Dual128):: ret
               ret = f - dual(x)
            end function minusDual128RealDim0KindREAL128
            elemental function multiplyRealDim0KindREAL128Dual128(x, g) result(ret)
               Real(kind=REAL128), intent(in):: x
               type(Dual128), intent(in):: g
               type(Dual128):: ret
               ret = dual(x) * g
            end function multiplyRealDim0KindREAL128Dual128
            elemental function multiplyDual128RealDim0KindREAL128(f, x) result(ret)
               type(Dual128), intent(in):: f
               Real(kind=REAL128), intent(in):: x
               type(Dual128):: ret
               ret = f * dual(x)
            end function multiplyDual128RealDim0KindREAL128
            elemental function divideRealDim0KindREAL128Dual128(x, g) result(ret)
               Real(kind=REAL128), intent(in):: x
               type(Dual128), intent(in):: g
               type(Dual128):: ret
               ret = dual(x) / g
            end function divideRealDim0KindREAL128Dual128
            elemental function divideDual128RealDim0KindREAL128(f, x) result(ret)
               type(Dual128), intent(in):: f
               Real(kind=REAL128), intent(in):: x
               type(Dual128):: ret
               ret = f / dual(x)
            end function divideDual128RealDim0KindREAL128
         elemental function expDual128(f) result(ret)
            type(Dual128), intent(in):: f
            type(Dual128):: ret
            Real(kind=REAL128):: x
            x = real(f)
            ret%x = exp(x)
            ret%dx = diff(f)*x
         end function expDual128
         elemental function sqrtDual128(f) result(ret)
            type(Dual128), intent(in):: f
            type(Dual128):: ret
            Real(kind=REAL128):: x
            x = real(f)
            ret%x = sqrt(x)
            ret%dx = diff(f)*1/(2*x)
         end function sqrtDual128
         elemental function tanDual128(f) result(ret)
            type(Dual128), intent(in):: f
            type(Dual128):: ret
            Real(kind=REAL128):: x
            x = real(f)
            ret%x = tan(x)
            ret%dx = diff(f)*1/(cos(x)**2)
         end function tanDual128
         elemental function sinDual128(f) result(ret)
            type(Dual128), intent(in):: f
            type(Dual128):: ret
            Real(kind=REAL128):: x
            x = real(f)
            ret%x = sin(x)
            ret%dx = diff(f)*cos(x)
         end function sinDual128
         elemental function cosDual128(f) result(ret)
            type(Dual128), intent(in):: f
            type(Dual128):: ret
            Real(kind=REAL128):: x
            x = real(f)
            ret%x = cos(x)
            ret%dx = diff(f)*(-1)*sin(x)
         end function cosDual128
         elemental function logDual128(f) result(ret)
            type(Dual128), intent(in):: f
            type(Dual128):: ret
            Real(kind=REAL128):: x
            x = real(f)
            ret%x = log(x)
            ret%dx = diff(f)*1/x
         end function logDual128
         elemental function log10Dual128(f) result(ret)
            type(Dual128), intent(in):: f
            type(Dual128):: ret
            Real(kind=REAL128):: x
            x = real(f)
            ret%x = log10(x)
            ret%dx = diff(f)*1/x/log(10.0)
         end function log10Dual128
         elemental function atanDual128(f) result(ret)
            type(Dual128), intent(in):: f
            type(Dual128):: ret
            Real(kind=REAL128):: x
            x = real(f)
            ret%x = atan(x)
            ret%dx = diff(f)*1/(1 + x**2)
         end function atanDual128
      elemental function realDual128(f) result(ret)
         type(Dual128), intent(in):: f
         Real(kind=REAL128):: ret
         ret = f%x
      end function realDual128
      elemental function diffDual128(f) result(ret)
         type(Dual128), intent(in):: f
         Real(kind=REAL128):: ret
         ret = f%dx
      end function diffDual128
      elemental function dual_from_dualDual128(f) result(ret)
         type(Dual128), intent(in):: f
         type(Dual128):: ret
         ret%x = real(f)
         ret%dx = diff(f)
      end function dual_from_dualDual128
         elemental function dual_from_realRealDim0KindREAL128RealDim0KindREAL32(f, dx) result(ret)
            Real(kind=REAL128), intent(in):: f
            Real(kind=REAL32), intent(in):: dx
            type(Dual128):: ret
            ret%x = f
            ret%dx = dx
         end function dual_from_realRealDim0KindREAL128RealDim0KindREAL32
         elemental function dual_from_realRealDim0KindREAL128RealDim0KindREAL64(f, dx) result(ret)
            Real(kind=REAL128), intent(in):: f
            Real(kind=REAL64), intent(in):: dx
            type(Dual128):: ret
            ret%x = f
            ret%dx = dx
         end function dual_from_realRealDim0KindREAL128RealDim0KindREAL64
         elemental function dual_from_realRealDim0KindREAL128RealDim0KindREAL128(f, dx) result(ret)
            Real(kind=REAL128), intent(in):: f
            Real(kind=REAL128), intent(in):: dx
            type(Dual128):: ret
            ret%x = f
            ret%dx = dx
         end function dual_from_realRealDim0KindREAL128RealDim0KindREAL128
      elemental function dual_from_real_constRealDim0KindREAL128(f) result(ret)
         Real(kind=REAL128), intent(in):: f
         type(Dual128):: ret
         ret%x = f
         ret%dx = real(0, kind=kind(f))
      end function dual_from_real_constRealDim0KindREAL128
            subroutine write_iosDual128T4T4(f, unit, iostat)
               type(Dual128), intent(in):: f
               Integer(kind=INT8), intent(in):: unit
               Integer(kind=INT8), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual128(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual128T4T4
            subroutine write_iosDual128T4T5(f, unit, iostat)
               type(Dual128), intent(in):: f
               Integer(kind=INT8), intent(in):: unit
               Integer(kind=INT16), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual128(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual128T4T5
            subroutine write_iosDual128T4T6(f, unit, iostat)
               type(Dual128), intent(in):: f
               Integer(kind=INT8), intent(in):: unit
               Integer(kind=INT32), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual128(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual128T4T6
            subroutine write_iosDual128T4T7(f, unit, iostat)
               type(Dual128), intent(in):: f
               Integer(kind=INT8), intent(in):: unit
               Integer(kind=INT64), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual128(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual128T4T7
         subroutine writeDual128IntegerDim0KindINT8(f, unit)
            type(Dual128), intent(in):: f
            Integer(kind=INT8), intent(in):: unit
            write(unit, *) 'Dual128(', real(f), ', ', diff(f), ')'
         end subroutine writeDual128IntegerDim0KindINT8
            subroutine write_iosDual128T5T4(f, unit, iostat)
               type(Dual128), intent(in):: f
               Integer(kind=INT16), intent(in):: unit
               Integer(kind=INT8), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual128(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual128T5T4
            subroutine write_iosDual128T5T5(f, unit, iostat)
               type(Dual128), intent(in):: f
               Integer(kind=INT16), intent(in):: unit
               Integer(kind=INT16), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual128(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual128T5T5
            subroutine write_iosDual128T5T6(f, unit, iostat)
               type(Dual128), intent(in):: f
               Integer(kind=INT16), intent(in):: unit
               Integer(kind=INT32), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual128(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual128T5T6
            subroutine write_iosDual128T5T7(f, unit, iostat)
               type(Dual128), intent(in):: f
               Integer(kind=INT16), intent(in):: unit
               Integer(kind=INT64), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual128(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual128T5T7
         subroutine writeDual128IntegerDim0KindINT16(f, unit)
            type(Dual128), intent(in):: f
            Integer(kind=INT16), intent(in):: unit
            write(unit, *) 'Dual128(', real(f), ', ', diff(f), ')'
         end subroutine writeDual128IntegerDim0KindINT16
            subroutine write_iosDual128T6T4(f, unit, iostat)
               type(Dual128), intent(in):: f
               Integer(kind=INT32), intent(in):: unit
               Integer(kind=INT8), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual128(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual128T6T4
            subroutine write_iosDual128T6T5(f, unit, iostat)
               type(Dual128), intent(in):: f
               Integer(kind=INT32), intent(in):: unit
               Integer(kind=INT16), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual128(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual128T6T5
            subroutine write_iosDual128T6T6(f, unit, iostat)
               type(Dual128), intent(in):: f
               Integer(kind=INT32), intent(in):: unit
               Integer(kind=INT32), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual128(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual128T6T6
            subroutine write_iosDual128T6T7(f, unit, iostat)
               type(Dual128), intent(in):: f
               Integer(kind=INT32), intent(in):: unit
               Integer(kind=INT64), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual128(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual128T6T7
         subroutine writeDual128IntegerDim0KindINT32(f, unit)
            type(Dual128), intent(in):: f
            Integer(kind=INT32), intent(in):: unit
            write(unit, *) 'Dual128(', real(f), ', ', diff(f), ')'
         end subroutine writeDual128IntegerDim0KindINT32
            subroutine write_iosDual128T7T4(f, unit, iostat)
               type(Dual128), intent(in):: f
               Integer(kind=INT64), intent(in):: unit
               Integer(kind=INT8), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual128(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual128T7T4
            subroutine write_iosDual128T7T5(f, unit, iostat)
               type(Dual128), intent(in):: f
               Integer(kind=INT64), intent(in):: unit
               Integer(kind=INT16), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual128(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual128T7T5
            subroutine write_iosDual128T7T6(f, unit, iostat)
               type(Dual128), intent(in):: f
               Integer(kind=INT64), intent(in):: unit
               Integer(kind=INT32), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual128(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual128T7T6
            subroutine write_iosDual128T7T7(f, unit, iostat)
               type(Dual128), intent(in):: f
               Integer(kind=INT64), intent(in):: unit
               Integer(kind=INT64), intent(out):: iostat
               write(unit, *, iostat=iostat) 'Dual128(', real(f), ', ', diff(f), ')'
            end subroutine write_iosDual128T7T7
         subroutine writeDual128IntegerDim0KindINT64(f, unit)
            type(Dual128), intent(in):: f
            Integer(kind=INT64), intent(in):: unit
            write(unit, *) 'Dual128(', real(f), ', ', diff(f), ')'
         end subroutine writeDual128IntegerDim0KindINT64
end module dual_lib
