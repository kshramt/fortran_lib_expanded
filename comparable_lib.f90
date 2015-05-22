module comparable_lib
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
   implicit none
   private
   public:: almost_equal
   public:: operator(==)
   public:: is_nan
   public:: is_infinity
      interface is_nan
         module procedure is_nanRealDim0KindREAL32
      end interface is_nan
      interface is_infinity
         module procedure is_infinityRealDim0KindREAL32
      end interface is_infinity
      interface is_nan
         module procedure is_nanRealDim0KindREAL64
      end interface is_nan
      interface is_infinity
         module procedure is_infinityRealDim0KindREAL64
      end interface is_infinity
      interface is_nan
         module procedure is_nanRealDim0KindREAL128
      end interface is_nan
      interface is_infinity
         module procedure is_infinityRealDim0KindREAL128
      end interface is_infinity
      interface is_nan
         module procedure is_nanIntegerDim0KindINT8
      end interface is_nan
      interface is_infinity
         module procedure is_infinityIntegerDim0KindINT8
      end interface is_infinity
      interface is_nan
         module procedure is_nanIntegerDim0KindINT16
      end interface is_nan
      interface is_infinity
         module procedure is_infinityIntegerDim0KindINT16
      end interface is_infinity
      interface is_nan
         module procedure is_nanIntegerDim0KindINT32
      end interface is_nan
      interface is_infinity
         module procedure is_infinityIntegerDim0KindINT32
      end interface is_infinity
      interface is_nan
         module procedure is_nanIntegerDim0KindINT64
      end interface is_nan
      interface is_infinity
         module procedure is_infinityIntegerDim0KindINT64
      end interface is_infinity
   interface almost_equal
         module procedure almost_equalIntegerDim0KindINT8IntegerDim0KindINT8
         module procedure almost_equalIntegerDim0KindINT8IntegerDim0KindINT16
         module procedure almost_equalIntegerDim0KindINT8IntegerDim0KindINT32
         module procedure almost_equalIntegerDim0KindINT8IntegerDim0KindINT64
         module procedure almost_equalIntegerDim0KindINT16IntegerDim0KindINT8
         module procedure almost_equalIntegerDim0KindINT16IntegerDim0KindINT16
         module procedure almost_equalIntegerDim0KindINT16IntegerDim0KindINT32
         module procedure almost_equalIntegerDim0KindINT16IntegerDim0KindINT64
         module procedure almost_equalIntegerDim0KindINT32IntegerDim0KindINT8
         module procedure almost_equalIntegerDim0KindINT32IntegerDim0KindINT16
         module procedure almost_equalIntegerDim0KindINT32IntegerDim0KindINT32
         module procedure almost_equalIntegerDim0KindINT32IntegerDim0KindINT64
         module procedure almost_equalIntegerDim0KindINT64IntegerDim0KindINT8
         module procedure almost_equalIntegerDim0KindINT64IntegerDim0KindINT16
         module procedure almost_equalIntegerDim0KindINT64IntegerDim0KindINT32
         module procedure almost_equalIntegerDim0KindINT64IntegerDim0KindINT64
         module procedure almost_equalRealDim0KindREAL32RealDim0KindREAL32
         module procedure almost_equalRealDim0KindREAL32RealDim0KindREAL64
         module procedure almost_equalRealDim0KindREAL32RealDim0KindREAL128
         module procedure almost_equalRealDim0KindREAL64RealDim0KindREAL32
         module procedure almost_equalRealDim0KindREAL64RealDim0KindREAL64
         module procedure almost_equalRealDim0KindREAL64RealDim0KindREAL128
         module procedure almost_equalRealDim0KindREAL128RealDim0KindREAL32
         module procedure almost_equalRealDim0KindREAL128RealDim0KindREAL64
         module procedure almost_equalRealDim0KindREAL128RealDim0KindREAL128
         module procedure almost_equalComplexDim0KindREAL32ComplexDim0KindREAL32
         module procedure almost_equalComplexDim0KindREAL32ComplexDim0KindREAL64
         module procedure almost_equalComplexDim0KindREAL32ComplexDim0KindREAL128
         module procedure almost_equalComplexDim0KindREAL64ComplexDim0KindREAL32
         module procedure almost_equalComplexDim0KindREAL64ComplexDim0KindREAL64
         module procedure almost_equalComplexDim0KindREAL64ComplexDim0KindREAL128
         module procedure almost_equalComplexDim0KindREAL128ComplexDim0KindREAL32
         module procedure almost_equalComplexDim0KindREAL128ComplexDim0KindREAL64
         module procedure almost_equalComplexDim0KindREAL128ComplexDim0KindREAL128
         module procedure almost_equalLogicalDim0KindINT8LogicalDim0KindINT8
         module procedure almost_equalLogicalDim0KindINT8LogicalDim0KindINT16
         module procedure almost_equalLogicalDim0KindINT8LogicalDim0KindINT32
         module procedure almost_equalLogicalDim0KindINT8LogicalDim0KindINT64
         module procedure almost_equalLogicalDim0KindINT16LogicalDim0KindINT8
         module procedure almost_equalLogicalDim0KindINT16LogicalDim0KindINT16
         module procedure almost_equalLogicalDim0KindINT16LogicalDim0KindINT32
         module procedure almost_equalLogicalDim0KindINT16LogicalDim0KindINT64
         module procedure almost_equalLogicalDim0KindINT32LogicalDim0KindINT8
         module procedure almost_equalLogicalDim0KindINT32LogicalDim0KindINT16
         module procedure almost_equalLogicalDim0KindINT32LogicalDim0KindINT32
         module procedure almost_equalLogicalDim0KindINT32LogicalDim0KindINT64
         module procedure almost_equalLogicalDim0KindINT64LogicalDim0KindINT8
         module procedure almost_equalLogicalDim0KindINT64LogicalDim0KindINT16
         module procedure almost_equalLogicalDim0KindINT64LogicalDim0KindINT32
         module procedure almost_equalLogicalDim0KindINT64LogicalDim0KindINT64
         module procedure almost_equalCharacterDim0LenAsteriskCharacterDim0LenAsterisk
   end interface almost_equal
   interface operator(==)
         module procedure almost_equalLogicalDim0KindINT8LogicalDim0KindINT8
         module procedure almost_equalLogicalDim0KindINT8LogicalDim0KindINT16
         module procedure almost_equalLogicalDim0KindINT8LogicalDim0KindINT32
         module procedure almost_equalLogicalDim0KindINT8LogicalDim0KindINT64
         module procedure almost_equalLogicalDim0KindINT16LogicalDim0KindINT8
         module procedure almost_equalLogicalDim0KindINT16LogicalDim0KindINT16
         module procedure almost_equalLogicalDim0KindINT16LogicalDim0KindINT32
         module procedure almost_equalLogicalDim0KindINT16LogicalDim0KindINT64
         module procedure almost_equalLogicalDim0KindINT32LogicalDim0KindINT8
         module procedure almost_equalLogicalDim0KindINT32LogicalDim0KindINT16
         module procedure almost_equalLogicalDim0KindINT32LogicalDim0KindINT32
         module procedure almost_equalLogicalDim0KindINT32LogicalDim0KindINT64
         module procedure almost_equalLogicalDim0KindINT64LogicalDim0KindINT8
         module procedure almost_equalLogicalDim0KindINT64LogicalDim0KindINT16
         module procedure almost_equalLogicalDim0KindINT64LogicalDim0KindINT32
         module procedure almost_equalLogicalDim0KindINT64LogicalDim0KindINT64
   end interface operator(==)
contains
      elemental function is_nanRealDim0KindREAL32(x) result(answer)
         logical:: answer
         Real(kind=REAL32), intent(in):: x
         answer = (x /= x)
      end function is_nanRealDim0KindREAL32
      elemental function is_infinityRealDim0KindREAL32(x) result(answer)
         Logical:: answer
         Real(kind=REAL32), intent(in):: x
         answer = x > huge(x)
      end function is_infinityRealDim0KindREAL32
      elemental function is_nanRealDim0KindREAL64(x) result(answer)
         logical:: answer
         Real(kind=REAL64), intent(in):: x
         answer = (x /= x)
      end function is_nanRealDim0KindREAL64
      elemental function is_infinityRealDim0KindREAL64(x) result(answer)
         Logical:: answer
         Real(kind=REAL64), intent(in):: x
         answer = x > huge(x)
      end function is_infinityRealDim0KindREAL64
      elemental function is_nanRealDim0KindREAL128(x) result(answer)
         logical:: answer
         Real(kind=REAL128), intent(in):: x
         answer = (x /= x)
      end function is_nanRealDim0KindREAL128
      elemental function is_infinityRealDim0KindREAL128(x) result(answer)
         Logical:: answer
         Real(kind=REAL128), intent(in):: x
         answer = x > huge(x)
      end function is_infinityRealDim0KindREAL128
      elemental function is_nanIntegerDim0KindINT8(n) result(answer)
         logical:: answer
         Integer(kind=INT8), intent(in):: n
         answer = .false.
      end function is_nanIntegerDim0KindINT8
      elemental function is_infinityIntegerDim0KindINT8(x) result(answer)
         Logical:: answer
         Integer(kind=INT8), intent(in):: x
         answer = .false.
      end function is_infinityIntegerDim0KindINT8
      elemental function is_nanIntegerDim0KindINT16(n) result(answer)
         logical:: answer
         Integer(kind=INT16), intent(in):: n
         answer = .false.
      end function is_nanIntegerDim0KindINT16
      elemental function is_infinityIntegerDim0KindINT16(x) result(answer)
         Logical:: answer
         Integer(kind=INT16), intent(in):: x
         answer = .false.
      end function is_infinityIntegerDim0KindINT16
      elemental function is_nanIntegerDim0KindINT32(n) result(answer)
         logical:: answer
         Integer(kind=INT32), intent(in):: n
         answer = .false.
      end function is_nanIntegerDim0KindINT32
      elemental function is_infinityIntegerDim0KindINT32(x) result(answer)
         Logical:: answer
         Integer(kind=INT32), intent(in):: x
         answer = .false.
      end function is_infinityIntegerDim0KindINT32
      elemental function is_nanIntegerDim0KindINT64(n) result(answer)
         logical:: answer
         Integer(kind=INT64), intent(in):: n
         answer = .false.
      end function is_nanIntegerDim0KindINT64
      elemental function is_infinityIntegerDim0KindINT64(x) result(answer)
         Logical:: answer
         Integer(kind=INT64), intent(in):: x
         answer = .false.
      end function is_infinityIntegerDim0KindINT64
      ! This function assumes gradual underflow is not flushed to zero.
      ! For example, -no-ftz option should be added when you compile this module by ifort.
      elemental function almost_equalRealDim0KindREAL32RealDim0KindREAL32(a, b, relative, absolute) result(answer)
         logical:: answer
         Real(kind=REAL32), intent(in):: a
         Real(kind=REAL32), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: relative
         real(max(kind(a), kind(b))), intent(in), optional:: absolute
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
         if(present(relative))then
            deltaRelative = max(abs(a)*relative, abs(b)*relative)
         else
            deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
         end if
         if(present(absolute))then
            deltaAbsolute = absolute
         else
            deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
         end if
         delta = max(deltaRelative, deltaAbsolute)
         answer = (abs(a - b) <= delta)
      end function almost_equalRealDim0KindREAL32RealDim0KindREAL32
      ! This function assumes gradual underflow is not flushed to zero.
      ! For example, -no-ftz option should be added when you compile this module by ifort.
      elemental function almost_equalRealDim0KindREAL32RealDim0KindREAL64(a, b, relative, absolute) result(answer)
         logical:: answer
         Real(kind=REAL32), intent(in):: a
         Real(kind=REAL64), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: relative
         real(max(kind(a), kind(b))), intent(in), optional:: absolute
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
         if(present(relative))then
            deltaRelative = max(abs(a)*relative, abs(b)*relative)
         else
            deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
         end if
         if(present(absolute))then
            deltaAbsolute = absolute
         else
            deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
         end if
         delta = max(deltaRelative, deltaAbsolute)
         answer = (abs(a - b) <= delta)
      end function almost_equalRealDim0KindREAL32RealDim0KindREAL64
      ! This function assumes gradual underflow is not flushed to zero.
      ! For example, -no-ftz option should be added when you compile this module by ifort.
      elemental function almost_equalRealDim0KindREAL32RealDim0KindREAL128(a, b, relative, absolute) result(answer)
         logical:: answer
         Real(kind=REAL32), intent(in):: a
         Real(kind=REAL128), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: relative
         real(max(kind(a), kind(b))), intent(in), optional:: absolute
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
         if(present(relative))then
            deltaRelative = max(abs(a)*relative, abs(b)*relative)
         else
            deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
         end if
         if(present(absolute))then
            deltaAbsolute = absolute
         else
            deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
         end if
         delta = max(deltaRelative, deltaAbsolute)
         answer = (abs(a - b) <= delta)
      end function almost_equalRealDim0KindREAL32RealDim0KindREAL128
      ! This function assumes gradual underflow is not flushed to zero.
      ! For example, -no-ftz option should be added when you compile this module by ifort.
      elemental function almost_equalRealDim0KindREAL64RealDim0KindREAL32(a, b, relative, absolute) result(answer)
         logical:: answer
         Real(kind=REAL64), intent(in):: a
         Real(kind=REAL32), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: relative
         real(max(kind(a), kind(b))), intent(in), optional:: absolute
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
         if(present(relative))then
            deltaRelative = max(abs(a)*relative, abs(b)*relative)
         else
            deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
         end if
         if(present(absolute))then
            deltaAbsolute = absolute
         else
            deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
         end if
         delta = max(deltaRelative, deltaAbsolute)
         answer = (abs(a - b) <= delta)
      end function almost_equalRealDim0KindREAL64RealDim0KindREAL32
      ! This function assumes gradual underflow is not flushed to zero.
      ! For example, -no-ftz option should be added when you compile this module by ifort.
      elemental function almost_equalRealDim0KindREAL64RealDim0KindREAL64(a, b, relative, absolute) result(answer)
         logical:: answer
         Real(kind=REAL64), intent(in):: a
         Real(kind=REAL64), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: relative
         real(max(kind(a), kind(b))), intent(in), optional:: absolute
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
         if(present(relative))then
            deltaRelative = max(abs(a)*relative, abs(b)*relative)
         else
            deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
         end if
         if(present(absolute))then
            deltaAbsolute = absolute
         else
            deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
         end if
         delta = max(deltaRelative, deltaAbsolute)
         answer = (abs(a - b) <= delta)
      end function almost_equalRealDim0KindREAL64RealDim0KindREAL64
      ! This function assumes gradual underflow is not flushed to zero.
      ! For example, -no-ftz option should be added when you compile this module by ifort.
      elemental function almost_equalRealDim0KindREAL64RealDim0KindREAL128(a, b, relative, absolute) result(answer)
         logical:: answer
         Real(kind=REAL64), intent(in):: a
         Real(kind=REAL128), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: relative
         real(max(kind(a), kind(b))), intent(in), optional:: absolute
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
         if(present(relative))then
            deltaRelative = max(abs(a)*relative, abs(b)*relative)
         else
            deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
         end if
         if(present(absolute))then
            deltaAbsolute = absolute
         else
            deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
         end if
         delta = max(deltaRelative, deltaAbsolute)
         answer = (abs(a - b) <= delta)
      end function almost_equalRealDim0KindREAL64RealDim0KindREAL128
      ! This function assumes gradual underflow is not flushed to zero.
      ! For example, -no-ftz option should be added when you compile this module by ifort.
      elemental function almost_equalRealDim0KindREAL128RealDim0KindREAL32(a, b, relative, absolute) result(answer)
         logical:: answer
         Real(kind=REAL128), intent(in):: a
         Real(kind=REAL32), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: relative
         real(max(kind(a), kind(b))), intent(in), optional:: absolute
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
         if(present(relative))then
            deltaRelative = max(abs(a)*relative, abs(b)*relative)
         else
            deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
         end if
         if(present(absolute))then
            deltaAbsolute = absolute
         else
            deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
         end if
         delta = max(deltaRelative, deltaAbsolute)
         answer = (abs(a - b) <= delta)
      end function almost_equalRealDim0KindREAL128RealDim0KindREAL32
      ! This function assumes gradual underflow is not flushed to zero.
      ! For example, -no-ftz option should be added when you compile this module by ifort.
      elemental function almost_equalRealDim0KindREAL128RealDim0KindREAL64(a, b, relative, absolute) result(answer)
         logical:: answer
         Real(kind=REAL128), intent(in):: a
         Real(kind=REAL64), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: relative
         real(max(kind(a), kind(b))), intent(in), optional:: absolute
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
         if(present(relative))then
            deltaRelative = max(abs(a)*relative, abs(b)*relative)
         else
            deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
         end if
         if(present(absolute))then
            deltaAbsolute = absolute
         else
            deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
         end if
         delta = max(deltaRelative, deltaAbsolute)
         answer = (abs(a - b) <= delta)
      end function almost_equalRealDim0KindREAL128RealDim0KindREAL64
      ! This function assumes gradual underflow is not flushed to zero.
      ! For example, -no-ftz option should be added when you compile this module by ifort.
      elemental function almost_equalRealDim0KindREAL128RealDim0KindREAL128(a, b, relative, absolute) result(answer)
         logical:: answer
         Real(kind=REAL128), intent(in):: a
         Real(kind=REAL128), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: relative
         real(max(kind(a), kind(b))), intent(in), optional:: absolute
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
         if(present(relative))then
            deltaRelative = max(abs(a)*relative, abs(b)*relative)
         else
            deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
         end if
         if(present(absolute))then
            deltaAbsolute = absolute
         else
            deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
         end if
         delta = max(deltaRelative, deltaAbsolute)
         answer = (abs(a - b) <= delta)
      end function almost_equalRealDim0KindREAL128RealDim0KindREAL128
      elemental function almost_equalComplexDim0KindREAL32ComplexDim0KindREAL32(a, b, delta) result(answer)
         logical:: answer
         Complex(kind=REAL32), intent(in):: a
         Complex(kind=REAL32), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: delta
         if(present(delta))then
            answer = almost_equal(real(a), real(b), delta) .and. almost_equal(aimag(a), aimag(b), delta)
         else
            answer = almost_equal(real(a), real(b)) .and. almost_equal(aimag(a), aimag(b))
         end if
      end function almost_equalComplexDim0KindREAL32ComplexDim0KindREAL32
      elemental function almost_equalComplexDim0KindREAL32ComplexDim0KindREAL64(a, b, delta) result(answer)
         logical:: answer
         Complex(kind=REAL32), intent(in):: a
         Complex(kind=REAL64), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: delta
         if(present(delta))then
            answer = almost_equal(real(a), real(b), delta) .and. almost_equal(aimag(a), aimag(b), delta)
         else
            answer = almost_equal(real(a), real(b)) .and. almost_equal(aimag(a), aimag(b))
         end if
      end function almost_equalComplexDim0KindREAL32ComplexDim0KindREAL64
      elemental function almost_equalComplexDim0KindREAL32ComplexDim0KindREAL128(a, b, delta) result(answer)
         logical:: answer
         Complex(kind=REAL32), intent(in):: a
         Complex(kind=REAL128), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: delta
         if(present(delta))then
            answer = almost_equal(real(a), real(b), delta) .and. almost_equal(aimag(a), aimag(b), delta)
         else
            answer = almost_equal(real(a), real(b)) .and. almost_equal(aimag(a), aimag(b))
         end if
      end function almost_equalComplexDim0KindREAL32ComplexDim0KindREAL128
      elemental function almost_equalComplexDim0KindREAL64ComplexDim0KindREAL32(a, b, delta) result(answer)
         logical:: answer
         Complex(kind=REAL64), intent(in):: a
         Complex(kind=REAL32), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: delta
         if(present(delta))then
            answer = almost_equal(real(a), real(b), delta) .and. almost_equal(aimag(a), aimag(b), delta)
         else
            answer = almost_equal(real(a), real(b)) .and. almost_equal(aimag(a), aimag(b))
         end if
      end function almost_equalComplexDim0KindREAL64ComplexDim0KindREAL32
      elemental function almost_equalComplexDim0KindREAL64ComplexDim0KindREAL64(a, b, delta) result(answer)
         logical:: answer
         Complex(kind=REAL64), intent(in):: a
         Complex(kind=REAL64), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: delta
         if(present(delta))then
            answer = almost_equal(real(a), real(b), delta) .and. almost_equal(aimag(a), aimag(b), delta)
         else
            answer = almost_equal(real(a), real(b)) .and. almost_equal(aimag(a), aimag(b))
         end if
      end function almost_equalComplexDim0KindREAL64ComplexDim0KindREAL64
      elemental function almost_equalComplexDim0KindREAL64ComplexDim0KindREAL128(a, b, delta) result(answer)
         logical:: answer
         Complex(kind=REAL64), intent(in):: a
         Complex(kind=REAL128), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: delta
         if(present(delta))then
            answer = almost_equal(real(a), real(b), delta) .and. almost_equal(aimag(a), aimag(b), delta)
         else
            answer = almost_equal(real(a), real(b)) .and. almost_equal(aimag(a), aimag(b))
         end if
      end function almost_equalComplexDim0KindREAL64ComplexDim0KindREAL128
      elemental function almost_equalComplexDim0KindREAL128ComplexDim0KindREAL32(a, b, delta) result(answer)
         logical:: answer
         Complex(kind=REAL128), intent(in):: a
         Complex(kind=REAL32), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: delta
         if(present(delta))then
            answer = almost_equal(real(a), real(b), delta) .and. almost_equal(aimag(a), aimag(b), delta)
         else
            answer = almost_equal(real(a), real(b)) .and. almost_equal(aimag(a), aimag(b))
         end if
      end function almost_equalComplexDim0KindREAL128ComplexDim0KindREAL32
      elemental function almost_equalComplexDim0KindREAL128ComplexDim0KindREAL64(a, b, delta) result(answer)
         logical:: answer
         Complex(kind=REAL128), intent(in):: a
         Complex(kind=REAL64), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: delta
         if(present(delta))then
            answer = almost_equal(real(a), real(b), delta) .and. almost_equal(aimag(a), aimag(b), delta)
         else
            answer = almost_equal(real(a), real(b)) .and. almost_equal(aimag(a), aimag(b))
         end if
      end function almost_equalComplexDim0KindREAL128ComplexDim0KindREAL64
      elemental function almost_equalComplexDim0KindREAL128ComplexDim0KindREAL128(a, b, delta) result(answer)
         logical:: answer
         Complex(kind=REAL128), intent(in):: a
         Complex(kind=REAL128), intent(in):: b
         real(max(kind(a), kind(b))), intent(in), optional:: delta
         if(present(delta))then
            answer = almost_equal(real(a), real(b), delta) .and. almost_equal(aimag(a), aimag(b), delta)
         else
            answer = almost_equal(real(a), real(b)) .and. almost_equal(aimag(a), aimag(b))
         end if
      end function almost_equalComplexDim0KindREAL128ComplexDim0KindREAL128
      elemental function almost_equalIntegerDim0KindINT8IntegerDim0KindINT8(a, b) result(answer)
         logical:: answer
         Integer(kind=INT8), intent(in):: a
         Integer(kind=INT8), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0KindINT8IntegerDim0KindINT8
      elemental function almost_equalIntegerDim0KindINT8IntegerDim0KindINT16(a, b) result(answer)
         logical:: answer
         Integer(kind=INT8), intent(in):: a
         Integer(kind=INT16), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0KindINT8IntegerDim0KindINT16
      elemental function almost_equalIntegerDim0KindINT8IntegerDim0KindINT32(a, b) result(answer)
         logical:: answer
         Integer(kind=INT8), intent(in):: a
         Integer(kind=INT32), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0KindINT8IntegerDim0KindINT32
      elemental function almost_equalIntegerDim0KindINT8IntegerDim0KindINT64(a, b) result(answer)
         logical:: answer
         Integer(kind=INT8), intent(in):: a
         Integer(kind=INT64), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0KindINT8IntegerDim0KindINT64
      elemental function almost_equalIntegerDim0KindINT16IntegerDim0KindINT8(a, b) result(answer)
         logical:: answer
         Integer(kind=INT16), intent(in):: a
         Integer(kind=INT8), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0KindINT16IntegerDim0KindINT8
      elemental function almost_equalIntegerDim0KindINT16IntegerDim0KindINT16(a, b) result(answer)
         logical:: answer
         Integer(kind=INT16), intent(in):: a
         Integer(kind=INT16), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0KindINT16IntegerDim0KindINT16
      elemental function almost_equalIntegerDim0KindINT16IntegerDim0KindINT32(a, b) result(answer)
         logical:: answer
         Integer(kind=INT16), intent(in):: a
         Integer(kind=INT32), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0KindINT16IntegerDim0KindINT32
      elemental function almost_equalIntegerDim0KindINT16IntegerDim0KindINT64(a, b) result(answer)
         logical:: answer
         Integer(kind=INT16), intent(in):: a
         Integer(kind=INT64), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0KindINT16IntegerDim0KindINT64
      elemental function almost_equalIntegerDim0KindINT32IntegerDim0KindINT8(a, b) result(answer)
         logical:: answer
         Integer(kind=INT32), intent(in):: a
         Integer(kind=INT8), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0KindINT32IntegerDim0KindINT8
      elemental function almost_equalIntegerDim0KindINT32IntegerDim0KindINT16(a, b) result(answer)
         logical:: answer
         Integer(kind=INT32), intent(in):: a
         Integer(kind=INT16), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0KindINT32IntegerDim0KindINT16
      elemental function almost_equalIntegerDim0KindINT32IntegerDim0KindINT32(a, b) result(answer)
         logical:: answer
         Integer(kind=INT32), intent(in):: a
         Integer(kind=INT32), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0KindINT32IntegerDim0KindINT32
      elemental function almost_equalIntegerDim0KindINT32IntegerDim0KindINT64(a, b) result(answer)
         logical:: answer
         Integer(kind=INT32), intent(in):: a
         Integer(kind=INT64), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0KindINT32IntegerDim0KindINT64
      elemental function almost_equalIntegerDim0KindINT64IntegerDim0KindINT8(a, b) result(answer)
         logical:: answer
         Integer(kind=INT64), intent(in):: a
         Integer(kind=INT8), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0KindINT64IntegerDim0KindINT8
      elemental function almost_equalIntegerDim0KindINT64IntegerDim0KindINT16(a, b) result(answer)
         logical:: answer
         Integer(kind=INT64), intent(in):: a
         Integer(kind=INT16), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0KindINT64IntegerDim0KindINT16
      elemental function almost_equalIntegerDim0KindINT64IntegerDim0KindINT32(a, b) result(answer)
         logical:: answer
         Integer(kind=INT64), intent(in):: a
         Integer(kind=INT32), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0KindINT64IntegerDim0KindINT32
      elemental function almost_equalIntegerDim0KindINT64IntegerDim0KindINT64(a, b) result(answer)
         logical:: answer
         Integer(kind=INT64), intent(in):: a
         Integer(kind=INT64), intent(in):: b
         answer = (a == b)
      end function almost_equalIntegerDim0KindINT64IntegerDim0KindINT64
      elemental function almost_equalLogicalDim0KindINT8LogicalDim0KindINT8(a, b) result(answer)
         logical:: answer
         Logical(kind=INT8), intent(in):: a
         Logical(kind=INT8), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0KindINT8LogicalDim0KindINT8
      elemental function almost_equalLogicalDim0KindINT8LogicalDim0KindINT16(a, b) result(answer)
         logical:: answer
         Logical(kind=INT8), intent(in):: a
         Logical(kind=INT16), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0KindINT8LogicalDim0KindINT16
      elemental function almost_equalLogicalDim0KindINT8LogicalDim0KindINT32(a, b) result(answer)
         logical:: answer
         Logical(kind=INT8), intent(in):: a
         Logical(kind=INT32), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0KindINT8LogicalDim0KindINT32
      elemental function almost_equalLogicalDim0KindINT8LogicalDim0KindINT64(a, b) result(answer)
         logical:: answer
         Logical(kind=INT8), intent(in):: a
         Logical(kind=INT64), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0KindINT8LogicalDim0KindINT64
      elemental function almost_equalLogicalDim0KindINT16LogicalDim0KindINT8(a, b) result(answer)
         logical:: answer
         Logical(kind=INT16), intent(in):: a
         Logical(kind=INT8), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0KindINT16LogicalDim0KindINT8
      elemental function almost_equalLogicalDim0KindINT16LogicalDim0KindINT16(a, b) result(answer)
         logical:: answer
         Logical(kind=INT16), intent(in):: a
         Logical(kind=INT16), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0KindINT16LogicalDim0KindINT16
      elemental function almost_equalLogicalDim0KindINT16LogicalDim0KindINT32(a, b) result(answer)
         logical:: answer
         Logical(kind=INT16), intent(in):: a
         Logical(kind=INT32), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0KindINT16LogicalDim0KindINT32
      elemental function almost_equalLogicalDim0KindINT16LogicalDim0KindINT64(a, b) result(answer)
         logical:: answer
         Logical(kind=INT16), intent(in):: a
         Logical(kind=INT64), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0KindINT16LogicalDim0KindINT64
      elemental function almost_equalLogicalDim0KindINT32LogicalDim0KindINT8(a, b) result(answer)
         logical:: answer
         Logical(kind=INT32), intent(in):: a
         Logical(kind=INT8), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0KindINT32LogicalDim0KindINT8
      elemental function almost_equalLogicalDim0KindINT32LogicalDim0KindINT16(a, b) result(answer)
         logical:: answer
         Logical(kind=INT32), intent(in):: a
         Logical(kind=INT16), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0KindINT32LogicalDim0KindINT16
      elemental function almost_equalLogicalDim0KindINT32LogicalDim0KindINT32(a, b) result(answer)
         logical:: answer
         Logical(kind=INT32), intent(in):: a
         Logical(kind=INT32), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0KindINT32LogicalDim0KindINT32
      elemental function almost_equalLogicalDim0KindINT32LogicalDim0KindINT64(a, b) result(answer)
         logical:: answer
         Logical(kind=INT32), intent(in):: a
         Logical(kind=INT64), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0KindINT32LogicalDim0KindINT64
      elemental function almost_equalLogicalDim0KindINT64LogicalDim0KindINT8(a, b) result(answer)
         logical:: answer
         Logical(kind=INT64), intent(in):: a
         Logical(kind=INT8), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0KindINT64LogicalDim0KindINT8
      elemental function almost_equalLogicalDim0KindINT64LogicalDim0KindINT16(a, b) result(answer)
         logical:: answer
         Logical(kind=INT64), intent(in):: a
         Logical(kind=INT16), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0KindINT64LogicalDim0KindINT16
      elemental function almost_equalLogicalDim0KindINT64LogicalDim0KindINT32(a, b) result(answer)
         logical:: answer
         Logical(kind=INT64), intent(in):: a
         Logical(kind=INT32), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0KindINT64LogicalDim0KindINT32
      elemental function almost_equalLogicalDim0KindINT64LogicalDim0KindINT64(a, b) result(answer)
         logical:: answer
         Logical(kind=INT64), intent(in):: a
         Logical(kind=INT64), intent(in):: b
         answer = a .eqv. b
      end function almost_equalLogicalDim0KindINT64LogicalDim0KindINT64
      elemental function almost_equalCharacterDim0LenAsteriskCharacterDim0LenAsterisk(a, b) result(answer)
         logical:: answer
         Character(len=*), intent(in):: a
         Character(len=*), intent(in):: b
         answer = (a == b)
      end function almost_equalCharacterDim0LenAsteriskCharacterDim0LenAsterisk
end module comparable_lib
