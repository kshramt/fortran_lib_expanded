module comparable_lib
   use, intrinsic:: iso_fortran_env, only: int8, int16, int32, int64, real32, real64, real128
   implicit none
   private
   public:: almost_equal
   public:: operator(==)
   public:: is_nan
   public:: is_infinity
      interface is_nan
         module procedure is_nanRealDim0Kindreal32
      end interface is_nan
      interface is_infinity
         module procedure is_infinityRealDim0Kindreal32
      end interface is_infinity
      interface is_nan
         module procedure is_nanRealDim0Kindreal64
      end interface is_nan
      interface is_infinity
         module procedure is_infinityRealDim0Kindreal64
      end interface is_infinity
      interface is_nan
         module procedure is_nanRealDim0Kindreal128
      end interface is_nan
      interface is_infinity
         module procedure is_infinityRealDim0Kindreal128
      end interface is_infinity
      interface is_nan
         module procedure is_nanIntegerDim0Kindint8
      end interface is_nan
      interface is_infinity
         module procedure is_infinityIntegerDim0Kindint8
      end interface is_infinity
      interface is_nan
         module procedure is_nanIntegerDim0Kindint16
      end interface is_nan
      interface is_infinity
         module procedure is_infinityIntegerDim0Kindint16
      end interface is_infinity
      interface is_nan
         module procedure is_nanIntegerDim0Kindint32
      end interface is_nan
      interface is_infinity
         module procedure is_infinityIntegerDim0Kindint32
      end interface is_infinity
      interface is_nan
         module procedure is_nanIntegerDim0Kindint64
      end interface is_nan
      interface is_infinity
         module procedure is_infinityIntegerDim0Kindint64
      end interface is_infinity
   interface almost_equal
         module procedure almost_equalIntegerDim0Kindint8IntegerDim0Kindint8
         module procedure almost_equalIntegerDim0Kindint8IntegerDim0Kindint16
         module procedure almost_equalIntegerDim0Kindint8IntegerDim0Kindint32
         module procedure almost_equalIntegerDim0Kindint8IntegerDim0Kindint64
         module procedure almost_equalIntegerDim0Kindint16IntegerDim0Kindint8
         module procedure almost_equalIntegerDim0Kindint16IntegerDim0Kindint16
         module procedure almost_equalIntegerDim0Kindint16IntegerDim0Kindint32
         module procedure almost_equalIntegerDim0Kindint16IntegerDim0Kindint64
         module procedure almost_equalIntegerDim0Kindint32IntegerDim0Kindint8
         module procedure almost_equalIntegerDim0Kindint32IntegerDim0Kindint16
         module procedure almost_equalIntegerDim0Kindint32IntegerDim0Kindint32
         module procedure almost_equalIntegerDim0Kindint32IntegerDim0Kindint64
         module procedure almost_equalIntegerDim0Kindint64IntegerDim0Kindint8
         module procedure almost_equalIntegerDim0Kindint64IntegerDim0Kindint16
         module procedure almost_equalIntegerDim0Kindint64IntegerDim0Kindint32
         module procedure almost_equalIntegerDim0Kindint64IntegerDim0Kindint64
         module procedure almost_equalRealDim0Kindreal32RealDim0Kindreal32
         module procedure almost_equalRealDim0Kindreal32RealDim0Kindreal64
         module procedure almost_equalRealDim0Kindreal32RealDim0Kindreal128
         module procedure almost_equalRealDim0Kindreal64RealDim0Kindreal32
         module procedure almost_equalRealDim0Kindreal64RealDim0Kindreal64
         module procedure almost_equalRealDim0Kindreal64RealDim0Kindreal128
         module procedure almost_equalRealDim0Kindreal128RealDim0Kindreal32
         module procedure almost_equalRealDim0Kindreal128RealDim0Kindreal64
         module procedure almost_equalRealDim0Kindreal128RealDim0Kindreal128
         module procedure almost_equalComplexDim0Kindreal32ComplexDim0Kindreal32
         module procedure almost_equalComplexDim0Kindreal32ComplexDim0Kindreal64
         module procedure almost_equalComplexDim0Kindreal32ComplexDim0Kindreal128
         module procedure almost_equalComplexDim0Kindreal64ComplexDim0Kindreal32
         module procedure almost_equalComplexDim0Kindreal64ComplexDim0Kindreal64
         module procedure almost_equalComplexDim0Kindreal64ComplexDim0Kindreal128
         module procedure almost_equalComplexDim0Kindreal128ComplexDim0Kindreal32
         module procedure almost_equalComplexDim0Kindreal128ComplexDim0Kindreal64
         module procedure almost_equalComplexDim0Kindreal128ComplexDim0Kindreal128
         module procedure almost_equalLogicalDim0Kindint8LogicalDim0Kindint8
         module procedure almost_equalLogicalDim0Kindint8LogicalDim0Kindint16
         module procedure almost_equalLogicalDim0Kindint8LogicalDim0Kindint32
         module procedure almost_equalLogicalDim0Kindint8LogicalDim0Kindint64
         module procedure almost_equalLogicalDim0Kindint16LogicalDim0Kindint8
         module procedure almost_equalLogicalDim0Kindint16LogicalDim0Kindint16
         module procedure almost_equalLogicalDim0Kindint16LogicalDim0Kindint32
         module procedure almost_equalLogicalDim0Kindint16LogicalDim0Kindint64
         module procedure almost_equalLogicalDim0Kindint32LogicalDim0Kindint8
         module procedure almost_equalLogicalDim0Kindint32LogicalDim0Kindint16
         module procedure almost_equalLogicalDim0Kindint32LogicalDim0Kindint32
         module procedure almost_equalLogicalDim0Kindint32LogicalDim0Kindint64
         module procedure almost_equalLogicalDim0Kindint64LogicalDim0Kindint8
         module procedure almost_equalLogicalDim0Kindint64LogicalDim0Kindint16
         module procedure almost_equalLogicalDim0Kindint64LogicalDim0Kindint32
         module procedure almost_equalLogicalDim0Kindint64LogicalDim0Kindint64
         module procedure almost_equalCharacterDim0LenAsteriskCharacterDim0LenAsterisk
         module procedure almost_equalIntegerDim0Kindint8RealDim0Kindreal32
         module procedure almost_equalRealDim0Kindreal32IntegerDim0Kindint8
         module procedure almost_equalIntegerDim0Kindint8RealDim0Kindreal64
         module procedure almost_equalRealDim0Kindreal64IntegerDim0Kindint8
         module procedure almost_equalIntegerDim0Kindint8RealDim0Kindreal128
         module procedure almost_equalRealDim0Kindreal128IntegerDim0Kindint8
         module procedure almost_equalIntegerDim0Kindint16RealDim0Kindreal32
         module procedure almost_equalRealDim0Kindreal32IntegerDim0Kindint16
         module procedure almost_equalIntegerDim0Kindint16RealDim0Kindreal64
         module procedure almost_equalRealDim0Kindreal64IntegerDim0Kindint16
         module procedure almost_equalIntegerDim0Kindint16RealDim0Kindreal128
         module procedure almost_equalRealDim0Kindreal128IntegerDim0Kindint16
         module procedure almost_equalIntegerDim0Kindint32RealDim0Kindreal32
         module procedure almost_equalRealDim0Kindreal32IntegerDim0Kindint32
         module procedure almost_equalIntegerDim0Kindint32RealDim0Kindreal64
         module procedure almost_equalRealDim0Kindreal64IntegerDim0Kindint32
         module procedure almost_equalIntegerDim0Kindint32RealDim0Kindreal128
         module procedure almost_equalRealDim0Kindreal128IntegerDim0Kindint32
         module procedure almost_equalIntegerDim0Kindint64RealDim0Kindreal32
         module procedure almost_equalRealDim0Kindreal32IntegerDim0Kindint64
         module procedure almost_equalIntegerDim0Kindint64RealDim0Kindreal64
         module procedure almost_equalRealDim0Kindreal64IntegerDim0Kindint64
         module procedure almost_equalIntegerDim0Kindint64RealDim0Kindreal128
         module procedure almost_equalRealDim0Kindreal128IntegerDim0Kindint64
   end interface almost_equal
   interface operator(==)
         module procedure almost_equalLogicalDim0Kindint8LogicalDim0Kindint8
         module procedure almost_equalLogicalDim0Kindint8LogicalDim0Kindint16
         module procedure almost_equalLogicalDim0Kindint8LogicalDim0Kindint32
         module procedure almost_equalLogicalDim0Kindint8LogicalDim0Kindint64
         module procedure almost_equalLogicalDim0Kindint16LogicalDim0Kindint8
         module procedure almost_equalLogicalDim0Kindint16LogicalDim0Kindint16
         module procedure almost_equalLogicalDim0Kindint16LogicalDim0Kindint32
         module procedure almost_equalLogicalDim0Kindint16LogicalDim0Kindint64
         module procedure almost_equalLogicalDim0Kindint32LogicalDim0Kindint8
         module procedure almost_equalLogicalDim0Kindint32LogicalDim0Kindint16
         module procedure almost_equalLogicalDim0Kindint32LogicalDim0Kindint32
         module procedure almost_equalLogicalDim0Kindint32LogicalDim0Kindint64
         module procedure almost_equalLogicalDim0Kindint64LogicalDim0Kindint8
         module procedure almost_equalLogicalDim0Kindint64LogicalDim0Kindint16
         module procedure almost_equalLogicalDim0Kindint64LogicalDim0Kindint32
         module procedure almost_equalLogicalDim0Kindint64LogicalDim0Kindint64
   end interface operator(==)
contains
      elemental function is_nanRealDim0Kindreal32(x) result(answer)
         logical:: answer
         Real(kind=real32), intent(in):: x
         answer = (x /= x)
      end function is_nanRealDim0Kindreal32
      elemental function is_infinityRealDim0Kindreal32(x) result(answer)
         Logical:: answer
         Real(kind=real32), intent(in):: x
         answer = x > huge(x)
      end function is_infinityRealDim0Kindreal32
      elemental function is_nanRealDim0Kindreal64(x) result(answer)
         logical:: answer
         Real(kind=real64), intent(in):: x
         answer = (x /= x)
      end function is_nanRealDim0Kindreal64
      elemental function is_infinityRealDim0Kindreal64(x) result(answer)
         Logical:: answer
         Real(kind=real64), intent(in):: x
         answer = x > huge(x)
      end function is_infinityRealDim0Kindreal64
      elemental function is_nanRealDim0Kindreal128(x) result(answer)
         logical:: answer
         Real(kind=real128), intent(in):: x
         answer = (x /= x)
      end function is_nanRealDim0Kindreal128
      elemental function is_infinityRealDim0Kindreal128(x) result(answer)
         Logical:: answer
         Real(kind=real128), intent(in):: x
         answer = x > huge(x)
      end function is_infinityRealDim0Kindreal128
      elemental function is_nanIntegerDim0Kindint8(n) result(answer)
         logical:: answer
         Integer(kind=int8), intent(in):: n
         answer = .false.
      end function is_nanIntegerDim0Kindint8
      elemental function is_infinityIntegerDim0Kindint8(x) result(answer)
         Logical:: answer
         Integer(kind=int8), intent(in):: x
         answer = .false.
      end function is_infinityIntegerDim0Kindint8
      elemental function is_nanIntegerDim0Kindint16(n) result(answer)
         logical:: answer
         Integer(kind=int16), intent(in):: n
         answer = .false.
      end function is_nanIntegerDim0Kindint16
      elemental function is_infinityIntegerDim0Kindint16(x) result(answer)
         Logical:: answer
         Integer(kind=int16), intent(in):: x
         answer = .false.
      end function is_infinityIntegerDim0Kindint16
      elemental function is_nanIntegerDim0Kindint32(n) result(answer)
         logical:: answer
         Integer(kind=int32), intent(in):: n
         answer = .false.
      end function is_nanIntegerDim0Kindint32
      elemental function is_infinityIntegerDim0Kindint32(x) result(answer)
         Logical:: answer
         Integer(kind=int32), intent(in):: x
         answer = .false.
      end function is_infinityIntegerDim0Kindint32
      elemental function is_nanIntegerDim0Kindint64(n) result(answer)
         logical:: answer
         Integer(kind=int64), intent(in):: n
         answer = .false.
      end function is_nanIntegerDim0Kindint64
      elemental function is_infinityIntegerDim0Kindint64(x) result(answer)
         Logical:: answer
         Integer(kind=int64), intent(in):: x
         answer = .false.
      end function is_infinityIntegerDim0Kindint64
      elemental function almost_equalIntegerDim0Kindint8RealDim0Kindreal32(a, b, rtol, atol) result(ret)
         Logical:: ret
         Integer(kind=int8), intent(in):: a
         Real(kind=real32), intent(in):: b
         Real(kind=kind(b)), intent(in), optional:: rtol
         Real(kind=kind(b)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, rtol, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b, rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b)
            end if
         end if
      end function almost_equalIntegerDim0Kindint8RealDim0Kindreal32
      elemental function almost_equalRealDim0Kindreal32IntegerDim0Kindint8(a, b, rtol, atol) result(ret)
         Logical:: ret
         Real(kind=real32), intent(in):: a
         Integer(kind=int8), intent(in):: b
         Real(kind=kind(a)), intent(in), optional:: rtol
         Real(kind=kind(a)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), rtol, atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)), rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)))
            end if
         end if
      end function almost_equalRealDim0Kindreal32IntegerDim0Kindint8
      elemental function almost_equalIntegerDim0Kindint8RealDim0Kindreal64(a, b, rtol, atol) result(ret)
         Logical:: ret
         Integer(kind=int8), intent(in):: a
         Real(kind=real64), intent(in):: b
         Real(kind=kind(b)), intent(in), optional:: rtol
         Real(kind=kind(b)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, rtol, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b, rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b)
            end if
         end if
      end function almost_equalIntegerDim0Kindint8RealDim0Kindreal64
      elemental function almost_equalRealDim0Kindreal64IntegerDim0Kindint8(a, b, rtol, atol) result(ret)
         Logical:: ret
         Real(kind=real64), intent(in):: a
         Integer(kind=int8), intent(in):: b
         Real(kind=kind(a)), intent(in), optional:: rtol
         Real(kind=kind(a)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), rtol, atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)), rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)))
            end if
         end if
      end function almost_equalRealDim0Kindreal64IntegerDim0Kindint8
      elemental function almost_equalIntegerDim0Kindint8RealDim0Kindreal128(a, b, rtol, atol) result(ret)
         Logical:: ret
         Integer(kind=int8), intent(in):: a
         Real(kind=real128), intent(in):: b
         Real(kind=kind(b)), intent(in), optional:: rtol
         Real(kind=kind(b)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, rtol, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b, rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b)
            end if
         end if
      end function almost_equalIntegerDim0Kindint8RealDim0Kindreal128
      elemental function almost_equalRealDim0Kindreal128IntegerDim0Kindint8(a, b, rtol, atol) result(ret)
         Logical:: ret
         Real(kind=real128), intent(in):: a
         Integer(kind=int8), intent(in):: b
         Real(kind=kind(a)), intent(in), optional:: rtol
         Real(kind=kind(a)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), rtol, atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)), rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)))
            end if
         end if
      end function almost_equalRealDim0Kindreal128IntegerDim0Kindint8
      elemental function almost_equalIntegerDim0Kindint16RealDim0Kindreal32(a, b, rtol, atol) result(ret)
         Logical:: ret
         Integer(kind=int16), intent(in):: a
         Real(kind=real32), intent(in):: b
         Real(kind=kind(b)), intent(in), optional:: rtol
         Real(kind=kind(b)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, rtol, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b, rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b)
            end if
         end if
      end function almost_equalIntegerDim0Kindint16RealDim0Kindreal32
      elemental function almost_equalRealDim0Kindreal32IntegerDim0Kindint16(a, b, rtol, atol) result(ret)
         Logical:: ret
         Real(kind=real32), intent(in):: a
         Integer(kind=int16), intent(in):: b
         Real(kind=kind(a)), intent(in), optional:: rtol
         Real(kind=kind(a)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), rtol, atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)), rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)))
            end if
         end if
      end function almost_equalRealDim0Kindreal32IntegerDim0Kindint16
      elemental function almost_equalIntegerDim0Kindint16RealDim0Kindreal64(a, b, rtol, atol) result(ret)
         Logical:: ret
         Integer(kind=int16), intent(in):: a
         Real(kind=real64), intent(in):: b
         Real(kind=kind(b)), intent(in), optional:: rtol
         Real(kind=kind(b)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, rtol, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b, rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b)
            end if
         end if
      end function almost_equalIntegerDim0Kindint16RealDim0Kindreal64
      elemental function almost_equalRealDim0Kindreal64IntegerDim0Kindint16(a, b, rtol, atol) result(ret)
         Logical:: ret
         Real(kind=real64), intent(in):: a
         Integer(kind=int16), intent(in):: b
         Real(kind=kind(a)), intent(in), optional:: rtol
         Real(kind=kind(a)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), rtol, atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)), rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)))
            end if
         end if
      end function almost_equalRealDim0Kindreal64IntegerDim0Kindint16
      elemental function almost_equalIntegerDim0Kindint16RealDim0Kindreal128(a, b, rtol, atol) result(ret)
         Logical:: ret
         Integer(kind=int16), intent(in):: a
         Real(kind=real128), intent(in):: b
         Real(kind=kind(b)), intent(in), optional:: rtol
         Real(kind=kind(b)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, rtol, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b, rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b)
            end if
         end if
      end function almost_equalIntegerDim0Kindint16RealDim0Kindreal128
      elemental function almost_equalRealDim0Kindreal128IntegerDim0Kindint16(a, b, rtol, atol) result(ret)
         Logical:: ret
         Real(kind=real128), intent(in):: a
         Integer(kind=int16), intent(in):: b
         Real(kind=kind(a)), intent(in), optional:: rtol
         Real(kind=kind(a)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), rtol, atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)), rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)))
            end if
         end if
      end function almost_equalRealDim0Kindreal128IntegerDim0Kindint16
      elemental function almost_equalIntegerDim0Kindint32RealDim0Kindreal32(a, b, rtol, atol) result(ret)
         Logical:: ret
         Integer(kind=int32), intent(in):: a
         Real(kind=real32), intent(in):: b
         Real(kind=kind(b)), intent(in), optional:: rtol
         Real(kind=kind(b)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, rtol, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b, rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b)
            end if
         end if
      end function almost_equalIntegerDim0Kindint32RealDim0Kindreal32
      elemental function almost_equalRealDim0Kindreal32IntegerDim0Kindint32(a, b, rtol, atol) result(ret)
         Logical:: ret
         Real(kind=real32), intent(in):: a
         Integer(kind=int32), intent(in):: b
         Real(kind=kind(a)), intent(in), optional:: rtol
         Real(kind=kind(a)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), rtol, atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)), rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)))
            end if
         end if
      end function almost_equalRealDim0Kindreal32IntegerDim0Kindint32
      elemental function almost_equalIntegerDim0Kindint32RealDim0Kindreal64(a, b, rtol, atol) result(ret)
         Logical:: ret
         Integer(kind=int32), intent(in):: a
         Real(kind=real64), intent(in):: b
         Real(kind=kind(b)), intent(in), optional:: rtol
         Real(kind=kind(b)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, rtol, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b, rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b)
            end if
         end if
      end function almost_equalIntegerDim0Kindint32RealDim0Kindreal64
      elemental function almost_equalRealDim0Kindreal64IntegerDim0Kindint32(a, b, rtol, atol) result(ret)
         Logical:: ret
         Real(kind=real64), intent(in):: a
         Integer(kind=int32), intent(in):: b
         Real(kind=kind(a)), intent(in), optional:: rtol
         Real(kind=kind(a)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), rtol, atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)), rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)))
            end if
         end if
      end function almost_equalRealDim0Kindreal64IntegerDim0Kindint32
      elemental function almost_equalIntegerDim0Kindint32RealDim0Kindreal128(a, b, rtol, atol) result(ret)
         Logical:: ret
         Integer(kind=int32), intent(in):: a
         Real(kind=real128), intent(in):: b
         Real(kind=kind(b)), intent(in), optional:: rtol
         Real(kind=kind(b)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, rtol, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b, rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b)
            end if
         end if
      end function almost_equalIntegerDim0Kindint32RealDim0Kindreal128
      elemental function almost_equalRealDim0Kindreal128IntegerDim0Kindint32(a, b, rtol, atol) result(ret)
         Logical:: ret
         Real(kind=real128), intent(in):: a
         Integer(kind=int32), intent(in):: b
         Real(kind=kind(a)), intent(in), optional:: rtol
         Real(kind=kind(a)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), rtol, atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)), rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)))
            end if
         end if
      end function almost_equalRealDim0Kindreal128IntegerDim0Kindint32
      elemental function almost_equalIntegerDim0Kindint64RealDim0Kindreal32(a, b, rtol, atol) result(ret)
         Logical:: ret
         Integer(kind=int64), intent(in):: a
         Real(kind=real32), intent(in):: b
         Real(kind=kind(b)), intent(in), optional:: rtol
         Real(kind=kind(b)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, rtol, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b, rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b)
            end if
         end if
      end function almost_equalIntegerDim0Kindint64RealDim0Kindreal32
      elemental function almost_equalRealDim0Kindreal32IntegerDim0Kindint64(a, b, rtol, atol) result(ret)
         Logical:: ret
         Real(kind=real32), intent(in):: a
         Integer(kind=int64), intent(in):: b
         Real(kind=kind(a)), intent(in), optional:: rtol
         Real(kind=kind(a)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), rtol, atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)), rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)))
            end if
         end if
      end function almost_equalRealDim0Kindreal32IntegerDim0Kindint64
      elemental function almost_equalIntegerDim0Kindint64RealDim0Kindreal64(a, b, rtol, atol) result(ret)
         Logical:: ret
         Integer(kind=int64), intent(in):: a
         Real(kind=real64), intent(in):: b
         Real(kind=kind(b)), intent(in), optional:: rtol
         Real(kind=kind(b)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, rtol, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b, rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b)
            end if
         end if
      end function almost_equalIntegerDim0Kindint64RealDim0Kindreal64
      elemental function almost_equalRealDim0Kindreal64IntegerDim0Kindint64(a, b, rtol, atol) result(ret)
         Logical:: ret
         Real(kind=real64), intent(in):: a
         Integer(kind=int64), intent(in):: b
         Real(kind=kind(a)), intent(in), optional:: rtol
         Real(kind=kind(a)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), rtol, atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)), rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)))
            end if
         end if
      end function almost_equalRealDim0Kindreal64IntegerDim0Kindint64
      elemental function almost_equalIntegerDim0Kindint64RealDim0Kindreal128(a, b, rtol, atol) result(ret)
         Logical:: ret
         Integer(kind=int64), intent(in):: a
         Real(kind=real128), intent(in):: b
         Real(kind=kind(b)), intent(in), optional:: rtol
         Real(kind=kind(b)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, rtol, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b, rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(real(a, kind=kind(b)), b, atol)
            else
               ret = almost_equal(real(a, kind=kind(b)), b)
            end if
         end if
      end function almost_equalIntegerDim0Kindint64RealDim0Kindreal128
      elemental function almost_equalRealDim0Kindreal128IntegerDim0Kindint64(a, b, rtol, atol) result(ret)
         Logical:: ret
         Real(kind=real128), intent(in):: a
         Integer(kind=int64), intent(in):: b
         Real(kind=kind(a)), intent(in), optional:: rtol
         Real(kind=kind(a)), intent(in), optional:: atol
         if(present(rtol))then
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), rtol, atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)), rtol)
            end if
         else
            if(present(atol))then
               ret = almost_equal(a, real(b, kind=kind(a)), atol)
            else
               ret = almost_equal(a, real(b, kind=kind(a)))
            end if
         end if
      end function almost_equalRealDim0Kindreal128IntegerDim0Kindint64
      ! This function assumes gradual underflow is not flushed to zero.
      ! For example, -no-ftz option should be added when you compile this module by ifort.
      elemental function almost_equalRealDim0Kindreal32RealDim0Kindreal32(a, b, rtol, atol) result(answer)
         logical:: answer
         Real(kind=real32), intent(in):: a
         Real(kind=real32), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: rtol
         real(max(kind(a), kind(b))), intent(in), optional:: atol
         real(max(kind(a), kind(b))):: delta, deltaRelative, deltaAbsolute
         real(min(kind(a), kind(b))):: lowerPrecision
         Logical:: isAInfinity, isBInfinity, isAMinusInfinity, isBMinusInfinity
         if(is_nan(a) .and. is_nan(b))then
            answer = .true.
            return
         end if
         isAInfinity = is_infinity(a)
         isBInfinity = is_infinity(b)
         isAMinusInfinity = is_infinity(-a)
         isBMinusInfinity = is_infinity(-b)
         if((isAInfinity .and. isBInfinity) .or. (isAMinusInfinity .and. isBMinusInfinity))then
            answer = .true.
            return
         end if
         if(isAInfinity .or. isBInfinity .or. isAMinusInfinity .or. isBMinusInfinity)then
            answer = .false.
            return
         end if
         if(present(rtol))then
            deltaRelative = max(abs(a)*rtol, abs(b)*rtol)
         else
            deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
         end if
         if(present(atol))then
            deltaAbsolute = atol
         else
            deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
         end if
         delta = max(deltaRelative, deltaAbsolute)
         answer = (abs(a - b) <= delta)
      end function almost_equalRealDim0Kindreal32RealDim0Kindreal32
      ! This function assumes gradual underflow is not flushed to zero.
      ! For example, -no-ftz option should be added when you compile this module by ifort.
      elemental function almost_equalRealDim0Kindreal32RealDim0Kindreal64(a, b, rtol, atol) result(answer)
         logical:: answer
         Real(kind=real32), intent(in):: a
         Real(kind=real64), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: rtol
         real(max(kind(a), kind(b))), intent(in), optional:: atol
         real(max(kind(a), kind(b))):: delta, deltaRelative, deltaAbsolute
         real(min(kind(a), kind(b))):: lowerPrecision
         Logical:: isAInfinity, isBInfinity, isAMinusInfinity, isBMinusInfinity
         if(is_nan(a) .and. is_nan(b))then
            answer = .true.
            return
         end if
         isAInfinity = is_infinity(a)
         isBInfinity = is_infinity(b)
         isAMinusInfinity = is_infinity(-a)
         isBMinusInfinity = is_infinity(-b)
         if((isAInfinity .and. isBInfinity) .or. (isAMinusInfinity .and. isBMinusInfinity))then
            answer = .true.
            return
         end if
         if(isAInfinity .or. isBInfinity .or. isAMinusInfinity .or. isBMinusInfinity)then
            answer = .false.
            return
         end if
         if(present(rtol))then
            deltaRelative = max(abs(a)*rtol, abs(b)*rtol)
         else
            deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
         end if
         if(present(atol))then
            deltaAbsolute = atol
         else
            deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
         end if
         delta = max(deltaRelative, deltaAbsolute)
         answer = (abs(a - b) <= delta)
      end function almost_equalRealDim0Kindreal32RealDim0Kindreal64
      ! This function assumes gradual underflow is not flushed to zero.
      ! For example, -no-ftz option should be added when you compile this module by ifort.
      elemental function almost_equalRealDim0Kindreal32RealDim0Kindreal128(a, b, rtol, atol) result(answer)
         logical:: answer
         Real(kind=real32), intent(in):: a
         Real(kind=real128), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: rtol
         real(max(kind(a), kind(b))), intent(in), optional:: atol
         real(max(kind(a), kind(b))):: delta, deltaRelative, deltaAbsolute
         real(min(kind(a), kind(b))):: lowerPrecision
         Logical:: isAInfinity, isBInfinity, isAMinusInfinity, isBMinusInfinity
         if(is_nan(a) .and. is_nan(b))then
            answer = .true.
            return
         end if
         isAInfinity = is_infinity(a)
         isBInfinity = is_infinity(b)
         isAMinusInfinity = is_infinity(-a)
         isBMinusInfinity = is_infinity(-b)
         if((isAInfinity .and. isBInfinity) .or. (isAMinusInfinity .and. isBMinusInfinity))then
            answer = .true.
            return
         end if
         if(isAInfinity .or. isBInfinity .or. isAMinusInfinity .or. isBMinusInfinity)then
            answer = .false.
            return
         end if
         if(present(rtol))then
            deltaRelative = max(abs(a)*rtol, abs(b)*rtol)
         else
            deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
         end if
         if(present(atol))then
            deltaAbsolute = atol
         else
            deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
         end if
         delta = max(deltaRelative, deltaAbsolute)
         answer = (abs(a - b) <= delta)
      end function almost_equalRealDim0Kindreal32RealDim0Kindreal128
      ! This function assumes gradual underflow is not flushed to zero.
      ! For example, -no-ftz option should be added when you compile this module by ifort.
      elemental function almost_equalRealDim0Kindreal64RealDim0Kindreal32(a, b, rtol, atol) result(answer)
         logical:: answer
         Real(kind=real64), intent(in):: a
         Real(kind=real32), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: rtol
         real(max(kind(a), kind(b))), intent(in), optional:: atol
         real(max(kind(a), kind(b))):: delta, deltaRelative, deltaAbsolute
         real(min(kind(a), kind(b))):: lowerPrecision
         Logical:: isAInfinity, isBInfinity, isAMinusInfinity, isBMinusInfinity
         if(is_nan(a) .and. is_nan(b))then
            answer = .true.
            return
         end if
         isAInfinity = is_infinity(a)
         isBInfinity = is_infinity(b)
         isAMinusInfinity = is_infinity(-a)
         isBMinusInfinity = is_infinity(-b)
         if((isAInfinity .and. isBInfinity) .or. (isAMinusInfinity .and. isBMinusInfinity))then
            answer = .true.
            return
         end if
         if(isAInfinity .or. isBInfinity .or. isAMinusInfinity .or. isBMinusInfinity)then
            answer = .false.
            return
         end if
         if(present(rtol))then
            deltaRelative = max(abs(a)*rtol, abs(b)*rtol)
         else
            deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
         end if
         if(present(atol))then
            deltaAbsolute = atol
         else
            deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
         end if
         delta = max(deltaRelative, deltaAbsolute)
         answer = (abs(a - b) <= delta)
      end function almost_equalRealDim0Kindreal64RealDim0Kindreal32
      ! This function assumes gradual underflow is not flushed to zero.
      ! For example, -no-ftz option should be added when you compile this module by ifort.
      elemental function almost_equalRealDim0Kindreal64RealDim0Kindreal64(a, b, rtol, atol) result(answer)
         logical:: answer
         Real(kind=real64), intent(in):: a
         Real(kind=real64), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: rtol
         real(max(kind(a), kind(b))), intent(in), optional:: atol
         real(max(kind(a), kind(b))):: delta, deltaRelative, deltaAbsolute
         real(min(kind(a), kind(b))):: lowerPrecision
         Logical:: isAInfinity, isBInfinity, isAMinusInfinity, isBMinusInfinity
         if(is_nan(a) .and. is_nan(b))then
            answer = .true.
            return
         end if
         isAInfinity = is_infinity(a)
         isBInfinity = is_infinity(b)
         isAMinusInfinity = is_infinity(-a)
         isBMinusInfinity = is_infinity(-b)
         if((isAInfinity .and. isBInfinity) .or. (isAMinusInfinity .and. isBMinusInfinity))then
            answer = .true.
            return
         end if
         if(isAInfinity .or. isBInfinity .or. isAMinusInfinity .or. isBMinusInfinity)then
            answer = .false.
            return
         end if
         if(present(rtol))then
            deltaRelative = max(abs(a)*rtol, abs(b)*rtol)
         else
            deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
         end if
         if(present(atol))then
            deltaAbsolute = atol
         else
            deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
         end if
         delta = max(deltaRelative, deltaAbsolute)
         answer = (abs(a - b) <= delta)
      end function almost_equalRealDim0Kindreal64RealDim0Kindreal64
      ! This function assumes gradual underflow is not flushed to zero.
      ! For example, -no-ftz option should be added when you compile this module by ifort.
      elemental function almost_equalRealDim0Kindreal64RealDim0Kindreal128(a, b, rtol, atol) result(answer)
         logical:: answer
         Real(kind=real64), intent(in):: a
         Real(kind=real128), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: rtol
         real(max(kind(a), kind(b))), intent(in), optional:: atol
         real(max(kind(a), kind(b))):: delta, deltaRelative, deltaAbsolute
         real(min(kind(a), kind(b))):: lowerPrecision
         Logical:: isAInfinity, isBInfinity, isAMinusInfinity, isBMinusInfinity
         if(is_nan(a) .and. is_nan(b))then
            answer = .true.
            return
         end if
         isAInfinity = is_infinity(a)
         isBInfinity = is_infinity(b)
         isAMinusInfinity = is_infinity(-a)
         isBMinusInfinity = is_infinity(-b)
         if((isAInfinity .and. isBInfinity) .or. (isAMinusInfinity .and. isBMinusInfinity))then
            answer = .true.
            return
         end if
         if(isAInfinity .or. isBInfinity .or. isAMinusInfinity .or. isBMinusInfinity)then
            answer = .false.
            return
         end if
         if(present(rtol))then
            deltaRelative = max(abs(a)*rtol, abs(b)*rtol)
         else
            deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
         end if
         if(present(atol))then
            deltaAbsolute = atol
         else
            deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
         end if
         delta = max(deltaRelative, deltaAbsolute)
         answer = (abs(a - b) <= delta)
      end function almost_equalRealDim0Kindreal64RealDim0Kindreal128
      ! This function assumes gradual underflow is not flushed to zero.
      ! For example, -no-ftz option should be added when you compile this module by ifort.
      elemental function almost_equalRealDim0Kindreal128RealDim0Kindreal32(a, b, rtol, atol) result(answer)
         logical:: answer
         Real(kind=real128), intent(in):: a
         Real(kind=real32), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: rtol
         real(max(kind(a), kind(b))), intent(in), optional:: atol
         real(max(kind(a), kind(b))):: delta, deltaRelative, deltaAbsolute
         real(min(kind(a), kind(b))):: lowerPrecision
         Logical:: isAInfinity, isBInfinity, isAMinusInfinity, isBMinusInfinity
         if(is_nan(a) .and. is_nan(b))then
            answer = .true.
            return
         end if
         isAInfinity = is_infinity(a)
         isBInfinity = is_infinity(b)
         isAMinusInfinity = is_infinity(-a)
         isBMinusInfinity = is_infinity(-b)
         if((isAInfinity .and. isBInfinity) .or. (isAMinusInfinity .and. isBMinusInfinity))then
            answer = .true.
            return
         end if
         if(isAInfinity .or. isBInfinity .or. isAMinusInfinity .or. isBMinusInfinity)then
            answer = .false.
            return
         end if
         if(present(rtol))then
            deltaRelative = max(abs(a)*rtol, abs(b)*rtol)
         else
            deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
         end if
         if(present(atol))then
            deltaAbsolute = atol
         else
            deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
         end if
         delta = max(deltaRelative, deltaAbsolute)
         answer = (abs(a - b) <= delta)
      end function almost_equalRealDim0Kindreal128RealDim0Kindreal32
      ! This function assumes gradual underflow is not flushed to zero.
      ! For example, -no-ftz option should be added when you compile this module by ifort.
      elemental function almost_equalRealDim0Kindreal128RealDim0Kindreal64(a, b, rtol, atol) result(answer)
         logical:: answer
         Real(kind=real128), intent(in):: a
         Real(kind=real64), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: rtol
         real(max(kind(a), kind(b))), intent(in), optional:: atol
         real(max(kind(a), kind(b))):: delta, deltaRelative, deltaAbsolute
         real(min(kind(a), kind(b))):: lowerPrecision
         Logical:: isAInfinity, isBInfinity, isAMinusInfinity, isBMinusInfinity
         if(is_nan(a) .and. is_nan(b))then
            answer = .true.
            return
         end if
         isAInfinity = is_infinity(a)
         isBInfinity = is_infinity(b)
         isAMinusInfinity = is_infinity(-a)
         isBMinusInfinity = is_infinity(-b)
         if((isAInfinity .and. isBInfinity) .or. (isAMinusInfinity .and. isBMinusInfinity))then
            answer = .true.
            return
         end if
         if(isAInfinity .or. isBInfinity .or. isAMinusInfinity .or. isBMinusInfinity)then
            answer = .false.
            return
         end if
         if(present(rtol))then
            deltaRelative = max(abs(a)*rtol, abs(b)*rtol)
         else
            deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
         end if
         if(present(atol))then
            deltaAbsolute = atol
         else
            deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
         end if
         delta = max(deltaRelative, deltaAbsolute)
         answer = (abs(a - b) <= delta)
      end function almost_equalRealDim0Kindreal128RealDim0Kindreal64
      ! This function assumes gradual underflow is not flushed to zero.
      ! For example, -no-ftz option should be added when you compile this module by ifort.
      elemental function almost_equalRealDim0Kindreal128RealDim0Kindreal128(a, b, rtol, atol) result(answer)
         logical:: answer
         Real(kind=real128), intent(in):: a
         Real(kind=real128), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: rtol
         real(max(kind(a), kind(b))), intent(in), optional:: atol
         real(max(kind(a), kind(b))):: delta, deltaRelative, deltaAbsolute
         real(min(kind(a), kind(b))):: lowerPrecision
         Logical:: isAInfinity, isBInfinity, isAMinusInfinity, isBMinusInfinity
         if(is_nan(a) .and. is_nan(b))then
            answer = .true.
            return
         end if
         isAInfinity = is_infinity(a)
         isBInfinity = is_infinity(b)
         isAMinusInfinity = is_infinity(-a)
         isBMinusInfinity = is_infinity(-b)
         if((isAInfinity .and. isBInfinity) .or. (isAMinusInfinity .and. isBMinusInfinity))then
            answer = .true.
            return
         end if
         if(isAInfinity .or. isBInfinity .or. isAMinusInfinity .or. isBMinusInfinity)then
            answer = .false.
            return
         end if
         if(present(rtol))then
            deltaRelative = max(abs(a)*rtol, abs(b)*rtol)
         else
            deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
         end if
         if(present(atol))then
            deltaAbsolute = atol
         else
            deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
         end if
         delta = max(deltaRelative, deltaAbsolute)
         answer = (abs(a - b) <= delta)
      end function almost_equalRealDim0Kindreal128RealDim0Kindreal128
      elemental function almost_equalComplexDim0Kindreal32ComplexDim0Kindreal32(a, b, delta) result(answer)
         logical:: answer
         Complex(kind=real32), intent(in):: a
         Complex(kind=real32), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: delta
         if(present(delta))then
            answer = almost_equal(real(a), real(b), delta) .and. almost_equal(aimag(a), aimag(b), delta)
         else
            answer = almost_equal(real(a), real(b)) .and. almost_equal(aimag(a), aimag(b))
         end if
      end function almost_equalComplexDim0Kindreal32ComplexDim0Kindreal32
      elemental function almost_equalComplexDim0Kindreal32ComplexDim0Kindreal64(a, b, delta) result(answer)
         logical:: answer
         Complex(kind=real32), intent(in):: a
         Complex(kind=real64), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: delta
         if(present(delta))then
            answer = almost_equal(real(a), real(b), delta) .and. almost_equal(aimag(a), aimag(b), delta)
         else
            answer = almost_equal(real(a), real(b)) .and. almost_equal(aimag(a), aimag(b))
         end if
      end function almost_equalComplexDim0Kindreal32ComplexDim0Kindreal64
      elemental function almost_equalComplexDim0Kindreal32ComplexDim0Kindreal128(a, b, delta) result(answer)
         logical:: answer
         Complex(kind=real32), intent(in):: a
         Complex(kind=real128), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: delta
         if(present(delta))then
            answer = almost_equal(real(a), real(b), delta) .and. almost_equal(aimag(a), aimag(b), delta)
         else
            answer = almost_equal(real(a), real(b)) .and. almost_equal(aimag(a), aimag(b))
         end if
      end function almost_equalComplexDim0Kindreal32ComplexDim0Kindreal128
      elemental function almost_equalComplexDim0Kindreal64ComplexDim0Kindreal32(a, b, delta) result(answer)
         logical:: answer
         Complex(kind=real64), intent(in):: a
         Complex(kind=real32), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: delta
         if(present(delta))then
            answer = almost_equal(real(a), real(b), delta) .and. almost_equal(aimag(a), aimag(b), delta)
         else
            answer = almost_equal(real(a), real(b)) .and. almost_equal(aimag(a), aimag(b))
         end if
      end function almost_equalComplexDim0Kindreal64ComplexDim0Kindreal32
      elemental function almost_equalComplexDim0Kindreal64ComplexDim0Kindreal64(a, b, delta) result(answer)
         logical:: answer
         Complex(kind=real64), intent(in):: a
         Complex(kind=real64), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: delta
         if(present(delta))then
            answer = almost_equal(real(a), real(b), delta) .and. almost_equal(aimag(a), aimag(b), delta)
         else
            answer = almost_equal(real(a), real(b)) .and. almost_equal(aimag(a), aimag(b))
         end if
      end function almost_equalComplexDim0Kindreal64ComplexDim0Kindreal64
      elemental function almost_equalComplexDim0Kindreal64ComplexDim0Kindreal128(a, b, delta) result(answer)
         logical:: answer
         Complex(kind=real64), intent(in):: a
         Complex(kind=real128), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: delta
         if(present(delta))then
            answer = almost_equal(real(a), real(b), delta) .and. almost_equal(aimag(a), aimag(b), delta)
         else
            answer = almost_equal(real(a), real(b)) .and. almost_equal(aimag(a), aimag(b))
         end if
      end function almost_equalComplexDim0Kindreal64ComplexDim0Kindreal128
      elemental function almost_equalComplexDim0Kindreal128ComplexDim0Kindreal32(a, b, delta) result(answer)
         logical:: answer
         Complex(kind=real128), intent(in):: a
         Complex(kind=real32), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: delta
         if(present(delta))then
            answer = almost_equal(real(a), real(b), delta) .and. almost_equal(aimag(a), aimag(b), delta)
         else
            answer = almost_equal(real(a), real(b)) .and. almost_equal(aimag(a), aimag(b))
         end if
      end function almost_equalComplexDim0Kindreal128ComplexDim0Kindreal32
      elemental function almost_equalComplexDim0Kindreal128ComplexDim0Kindreal64(a, b, delta) result(answer)
         logical:: answer
         Complex(kind=real128), intent(in):: a
         Complex(kind=real64), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: delta
         if(present(delta))then
            answer = almost_equal(real(a), real(b), delta) .and. almost_equal(aimag(a), aimag(b), delta)
         else
            answer = almost_equal(real(a), real(b)) .and. almost_equal(aimag(a), aimag(b))
         end if
      end function almost_equalComplexDim0Kindreal128ComplexDim0Kindreal64
      elemental function almost_equalComplexDim0Kindreal128ComplexDim0Kindreal128(a, b, delta) result(answer)
         logical:: answer
         Complex(kind=real128), intent(in):: a
         Complex(kind=real128), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: delta
         if(present(delta))then
            answer = almost_equal(real(a), real(b), delta) .and. almost_equal(aimag(a), aimag(b), delta)
         else
            answer = almost_equal(real(a), real(b)) .and. almost_equal(aimag(a), aimag(b))
         end if
      end function almost_equalComplexDim0Kindreal128ComplexDim0Kindreal128
      elemental function almost_equalIntegerDim0Kindint8IntegerDim0Kindint8(a, b) result(answer)
         logical:: answer
         Integer(kind=int8), intent(in):: a
         Integer(kind=int8), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0Kindint8IntegerDim0Kindint8
      elemental function almost_equalIntegerDim0Kindint8IntegerDim0Kindint16(a, b) result(answer)
         logical:: answer
         Integer(kind=int8), intent(in):: a
         Integer(kind=int16), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0Kindint8IntegerDim0Kindint16
      elemental function almost_equalIntegerDim0Kindint8IntegerDim0Kindint32(a, b) result(answer)
         logical:: answer
         Integer(kind=int8), intent(in):: a
         Integer(kind=int32), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0Kindint8IntegerDim0Kindint32
      elemental function almost_equalIntegerDim0Kindint8IntegerDim0Kindint64(a, b) result(answer)
         logical:: answer
         Integer(kind=int8), intent(in):: a
         Integer(kind=int64), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0Kindint8IntegerDim0Kindint64
      elemental function almost_equalIntegerDim0Kindint16IntegerDim0Kindint8(a, b) result(answer)
         logical:: answer
         Integer(kind=int16), intent(in):: a
         Integer(kind=int8), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0Kindint16IntegerDim0Kindint8
      elemental function almost_equalIntegerDim0Kindint16IntegerDim0Kindint16(a, b) result(answer)
         logical:: answer
         Integer(kind=int16), intent(in):: a
         Integer(kind=int16), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0Kindint16IntegerDim0Kindint16
      elemental function almost_equalIntegerDim0Kindint16IntegerDim0Kindint32(a, b) result(answer)
         logical:: answer
         Integer(kind=int16), intent(in):: a
         Integer(kind=int32), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0Kindint16IntegerDim0Kindint32
      elemental function almost_equalIntegerDim0Kindint16IntegerDim0Kindint64(a, b) result(answer)
         logical:: answer
         Integer(kind=int16), intent(in):: a
         Integer(kind=int64), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0Kindint16IntegerDim0Kindint64
      elemental function almost_equalIntegerDim0Kindint32IntegerDim0Kindint8(a, b) result(answer)
         logical:: answer
         Integer(kind=int32), intent(in):: a
         Integer(kind=int8), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0Kindint32IntegerDim0Kindint8
      elemental function almost_equalIntegerDim0Kindint32IntegerDim0Kindint16(a, b) result(answer)
         logical:: answer
         Integer(kind=int32), intent(in):: a
         Integer(kind=int16), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0Kindint32IntegerDim0Kindint16
      elemental function almost_equalIntegerDim0Kindint32IntegerDim0Kindint32(a, b) result(answer)
         logical:: answer
         Integer(kind=int32), intent(in):: a
         Integer(kind=int32), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0Kindint32IntegerDim0Kindint32
      elemental function almost_equalIntegerDim0Kindint32IntegerDim0Kindint64(a, b) result(answer)
         logical:: answer
         Integer(kind=int32), intent(in):: a
         Integer(kind=int64), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0Kindint32IntegerDim0Kindint64
      elemental function almost_equalIntegerDim0Kindint64IntegerDim0Kindint8(a, b) result(answer)
         logical:: answer
         Integer(kind=int64), intent(in):: a
         Integer(kind=int8), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0Kindint64IntegerDim0Kindint8
      elemental function almost_equalIntegerDim0Kindint64IntegerDim0Kindint16(a, b) result(answer)
         logical:: answer
         Integer(kind=int64), intent(in):: a
         Integer(kind=int16), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0Kindint64IntegerDim0Kindint16
      elemental function almost_equalIntegerDim0Kindint64IntegerDim0Kindint32(a, b) result(answer)
         logical:: answer
         Integer(kind=int64), intent(in):: a
         Integer(kind=int32), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0Kindint64IntegerDim0Kindint32
      elemental function almost_equalIntegerDim0Kindint64IntegerDim0Kindint64(a, b) result(answer)
         logical:: answer
         Integer(kind=int64), intent(in):: a
         Integer(kind=int64), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0Kindint64IntegerDim0Kindint64
      elemental function almost_equalLogicalDim0Kindint8LogicalDim0Kindint8(a, b) result(answer)
         logical:: answer
         Logical(kind=int8), intent(in):: a
         Logical(kind=int8), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0Kindint8LogicalDim0Kindint8
      elemental function almost_equalLogicalDim0Kindint8LogicalDim0Kindint16(a, b) result(answer)
         logical:: answer
         Logical(kind=int8), intent(in):: a
         Logical(kind=int16), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0Kindint8LogicalDim0Kindint16
      elemental function almost_equalLogicalDim0Kindint8LogicalDim0Kindint32(a, b) result(answer)
         logical:: answer
         Logical(kind=int8), intent(in):: a
         Logical(kind=int32), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0Kindint8LogicalDim0Kindint32
      elemental function almost_equalLogicalDim0Kindint8LogicalDim0Kindint64(a, b) result(answer)
         logical:: answer
         Logical(kind=int8), intent(in):: a
         Logical(kind=int64), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0Kindint8LogicalDim0Kindint64
      elemental function almost_equalLogicalDim0Kindint16LogicalDim0Kindint8(a, b) result(answer)
         logical:: answer
         Logical(kind=int16), intent(in):: a
         Logical(kind=int8), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0Kindint16LogicalDim0Kindint8
      elemental function almost_equalLogicalDim0Kindint16LogicalDim0Kindint16(a, b) result(answer)
         logical:: answer
         Logical(kind=int16), intent(in):: a
         Logical(kind=int16), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0Kindint16LogicalDim0Kindint16
      elemental function almost_equalLogicalDim0Kindint16LogicalDim0Kindint32(a, b) result(answer)
         logical:: answer
         Logical(kind=int16), intent(in):: a
         Logical(kind=int32), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0Kindint16LogicalDim0Kindint32
      elemental function almost_equalLogicalDim0Kindint16LogicalDim0Kindint64(a, b) result(answer)
         logical:: answer
         Logical(kind=int16), intent(in):: a
         Logical(kind=int64), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0Kindint16LogicalDim0Kindint64
      elemental function almost_equalLogicalDim0Kindint32LogicalDim0Kindint8(a, b) result(answer)
         logical:: answer
         Logical(kind=int32), intent(in):: a
         Logical(kind=int8), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0Kindint32LogicalDim0Kindint8
      elemental function almost_equalLogicalDim0Kindint32LogicalDim0Kindint16(a, b) result(answer)
         logical:: answer
         Logical(kind=int32), intent(in):: a
         Logical(kind=int16), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0Kindint32LogicalDim0Kindint16
      elemental function almost_equalLogicalDim0Kindint32LogicalDim0Kindint32(a, b) result(answer)
         logical:: answer
         Logical(kind=int32), intent(in):: a
         Logical(kind=int32), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0Kindint32LogicalDim0Kindint32
      elemental function almost_equalLogicalDim0Kindint32LogicalDim0Kindint64(a, b) result(answer)
         logical:: answer
         Logical(kind=int32), intent(in):: a
         Logical(kind=int64), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0Kindint32LogicalDim0Kindint64
      elemental function almost_equalLogicalDim0Kindint64LogicalDim0Kindint8(a, b) result(answer)
         logical:: answer
         Logical(kind=int64), intent(in):: a
         Logical(kind=int8), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0Kindint64LogicalDim0Kindint8
      elemental function almost_equalLogicalDim0Kindint64LogicalDim0Kindint16(a, b) result(answer)
         logical:: answer
         Logical(kind=int64), intent(in):: a
         Logical(kind=int16), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0Kindint64LogicalDim0Kindint16
      elemental function almost_equalLogicalDim0Kindint64LogicalDim0Kindint32(a, b) result(answer)
         logical:: answer
         Logical(kind=int64), intent(in):: a
         Logical(kind=int32), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0Kindint64LogicalDim0Kindint32
      elemental function almost_equalLogicalDim0Kindint64LogicalDim0Kindint64(a, b) result(answer)
         logical:: answer
         Logical(kind=int64), intent(in):: a
         Logical(kind=int64), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0Kindint64LogicalDim0Kindint64
      elemental function almost_equalCharacterDim0LenAsteriskCharacterDim0LenAsterisk(a, b) result(answer)
         logical:: answer
         Character(len=*), intent(in):: a
         Character(len=*), intent(in):: b
         answer = (a == b)
      end function almost_equalCharacterDim0LenAsteriskCharacterDim0LenAsterisk
end module comparable_lib
