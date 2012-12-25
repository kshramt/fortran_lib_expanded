# 1 "lib_comparable.f90"
# 1 "<command-line>"
# 1 "lib_comparable.f90"


module lib_comparable
  use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128

  implicit none

  private
  public:: equivalent
  public:: is_nan

  interface is_nan
      module procedure is_nanRealDim0KindREAL32
      module procedure is_nanRealDim0KindREAL64
      module procedure is_nanRealDim0KindREAL128
  end interface is_nan

  interface equivalent
      module procedure equivalentIntegerDim0KindINT8IntegerDim0KindINT8
      module procedure equivalentIntegerDim0KindINT8IntegerDim0KindINT16
      module procedure equivalentIntegerDim0KindINT8IntegerDim0KindINT32
      module procedure equivalentIntegerDim0KindINT8IntegerDim0KindINT64
      module procedure equivalentIntegerDim0KindINT16IntegerDim0KindINT8
      module procedure equivalentIntegerDim0KindINT16IntegerDim0KindINT16
      module procedure equivalentIntegerDim0KindINT16IntegerDim0KindINT32
      module procedure equivalentIntegerDim0KindINT16IntegerDim0KindINT64
      module procedure equivalentIntegerDim0KindINT32IntegerDim0KindINT8
      module procedure equivalentIntegerDim0KindINT32IntegerDim0KindINT16
      module procedure equivalentIntegerDim0KindINT32IntegerDim0KindINT32
      module procedure equivalentIntegerDim0KindINT32IntegerDim0KindINT64
      module procedure equivalentIntegerDim0KindINT64IntegerDim0KindINT8
      module procedure equivalentIntegerDim0KindINT64IntegerDim0KindINT16
      module procedure equivalentIntegerDim0KindINT64IntegerDim0KindINT32
      module procedure equivalentIntegerDim0KindINT64IntegerDim0KindINT64
      module procedure equivalentRealDim0KindREAL32RealDim0KindREAL32
      module procedure equivalentRealDim0KindREAL32RealDim0KindREAL64
      module procedure equivalentRealDim0KindREAL32RealDim0KindREAL128
      module procedure equivalentRealDim0KindREAL64RealDim0KindREAL32
      module procedure equivalentRealDim0KindREAL64RealDim0KindREAL64
      module procedure equivalentRealDim0KindREAL64RealDim0KindREAL128
      module procedure equivalentRealDim0KindREAL128RealDim0KindREAL32
      module procedure equivalentRealDim0KindREAL128RealDim0KindREAL64
      module procedure equivalentRealDim0KindREAL128RealDim0KindREAL128
      module procedure equivalentComplexDim0KindREAL32ComplexDim0KindREAL32
      module procedure equivalentComplexDim0KindREAL32ComplexDim0KindREAL64
      module procedure equivalentComplexDim0KindREAL32ComplexDim0KindREAL128
      module procedure equivalentComplexDim0KindREAL64ComplexDim0KindREAL32
      module procedure equivalentComplexDim0KindREAL64ComplexDim0KindREAL64
      module procedure equivalentComplexDim0KindREAL64ComplexDim0KindREAL128
      module procedure equivalentComplexDim0KindREAL128ComplexDim0KindREAL32
      module procedure equivalentComplexDim0KindREAL128ComplexDim0KindREAL64
      module procedure equivalentComplexDim0KindREAL128ComplexDim0KindREAL128
      module procedure equivalentLogicalDim0LogicalDim0
      module procedure equivalentCharacterDim0LenAstCharacterDim0LenAst
  end interface equivalent

contains

    elemental function is_nanRealDim0KindREAL32(a) result(this)
      logical:: this
      Real(kind = REAL32), intent(in):: a

      this = (a /= a)
    end function is_nanRealDim0KindREAL32
    elemental function is_nanRealDim0KindREAL64(a) result(this)
      logical:: this
      Real(kind = REAL64), intent(in):: a

      this = (a /= a)
    end function is_nanRealDim0KindREAL64
    elemental function is_nanRealDim0KindREAL128(a) result(this)
      logical:: this
      Real(kind = REAL128), intent(in):: a

      this = (a /= a)
    end function is_nanRealDim0KindREAL128

    elemental function equivalentRealDim0KindREAL32RealDim0KindREAL32(a, b, delta) result(this)
      logical:: this
      Real(kind = REAL32), intent(in):: a
      Real(kind = REAL32), intent(in):: b
      real(max(kind(a), kind(b))), intent(in), optional:: delta

      real(kind(delta)):: delta_, deltaRelative, deltaAbsolute
      real(min(kind(a), kind(b))):: lowerPrecision

      if(present(delta))then
        delta_ = delta*max(abs(a), abs(b))
      else
        deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
        deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
        delta_ = max(deltaRelative, deltaAbsolute)
      end if

      this = (abs(a - b) <= 2*delta_)
    end function equivalentRealDim0KindREAL32RealDim0KindREAL32
    elemental function equivalentRealDim0KindREAL32RealDim0KindREAL64(a, b, delta) result(this)
      logical:: this
      Real(kind = REAL32), intent(in):: a
      Real(kind = REAL64), intent(in):: b
      real(max(kind(a), kind(b))), intent(in), optional:: delta

      real(kind(delta)):: delta_, deltaRelative, deltaAbsolute
      real(min(kind(a), kind(b))):: lowerPrecision

      if(present(delta))then
        delta_ = delta*max(abs(a), abs(b))
      else
        deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
        deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
        delta_ = max(deltaRelative, deltaAbsolute)
      end if

      this = (abs(a - b) <= 2*delta_)
    end function equivalentRealDim0KindREAL32RealDim0KindREAL64
    elemental function equivalentRealDim0KindREAL32RealDim0KindREAL128(a, b, delta) result(this)
      logical:: this
      Real(kind = REAL32), intent(in):: a
      Real(kind = REAL128), intent(in):: b
      real(max(kind(a), kind(b))), intent(in), optional:: delta

      real(kind(delta)):: delta_, deltaRelative, deltaAbsolute
      real(min(kind(a), kind(b))):: lowerPrecision

      if(present(delta))then
        delta_ = delta*max(abs(a), abs(b))
      else
        deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
        deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
        delta_ = max(deltaRelative, deltaAbsolute)
      end if

      this = (abs(a - b) <= 2*delta_)
    end function equivalentRealDim0KindREAL32RealDim0KindREAL128
    elemental function equivalentRealDim0KindREAL64RealDim0KindREAL32(a, b, delta) result(this)
      logical:: this
      Real(kind = REAL64), intent(in):: a
      Real(kind = REAL32), intent(in):: b
      real(max(kind(a), kind(b))), intent(in), optional:: delta

      real(kind(delta)):: delta_, deltaRelative, deltaAbsolute
      real(min(kind(a), kind(b))):: lowerPrecision

      if(present(delta))then
        delta_ = delta*max(abs(a), abs(b))
      else
        deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
        deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
        delta_ = max(deltaRelative, deltaAbsolute)
      end if

      this = (abs(a - b) <= 2*delta_)
    end function equivalentRealDim0KindREAL64RealDim0KindREAL32
    elemental function equivalentRealDim0KindREAL64RealDim0KindREAL64(a, b, delta) result(this)
      logical:: this
      Real(kind = REAL64), intent(in):: a
      Real(kind = REAL64), intent(in):: b
      real(max(kind(a), kind(b))), intent(in), optional:: delta

      real(kind(delta)):: delta_, deltaRelative, deltaAbsolute
      real(min(kind(a), kind(b))):: lowerPrecision

      if(present(delta))then
        delta_ = delta*max(abs(a), abs(b))
      else
        deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
        deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
        delta_ = max(deltaRelative, deltaAbsolute)
      end if

      this = (abs(a - b) <= 2*delta_)
    end function equivalentRealDim0KindREAL64RealDim0KindREAL64
    elemental function equivalentRealDim0KindREAL64RealDim0KindREAL128(a, b, delta) result(this)
      logical:: this
      Real(kind = REAL64), intent(in):: a
      Real(kind = REAL128), intent(in):: b
      real(max(kind(a), kind(b))), intent(in), optional:: delta

      real(kind(delta)):: delta_, deltaRelative, deltaAbsolute
      real(min(kind(a), kind(b))):: lowerPrecision

      if(present(delta))then
        delta_ = delta*max(abs(a), abs(b))
      else
        deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
        deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
        delta_ = max(deltaRelative, deltaAbsolute)
      end if

      this = (abs(a - b) <= 2*delta_)
    end function equivalentRealDim0KindREAL64RealDim0KindREAL128
    elemental function equivalentRealDim0KindREAL128RealDim0KindREAL32(a, b, delta) result(this)
      logical:: this
      Real(kind = REAL128), intent(in):: a
      Real(kind = REAL32), intent(in):: b
      real(max(kind(a), kind(b))), intent(in), optional:: delta

      real(kind(delta)):: delta_, deltaRelative, deltaAbsolute
      real(min(kind(a), kind(b))):: lowerPrecision

      if(present(delta))then
        delta_ = delta*max(abs(a), abs(b))
      else
        deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
        deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
        delta_ = max(deltaRelative, deltaAbsolute)
      end if

      this = (abs(a - b) <= 2*delta_)
    end function equivalentRealDim0KindREAL128RealDim0KindREAL32
    elemental function equivalentRealDim0KindREAL128RealDim0KindREAL64(a, b, delta) result(this)
      logical:: this
      Real(kind = REAL128), intent(in):: a
      Real(kind = REAL64), intent(in):: b
      real(max(kind(a), kind(b))), intent(in), optional:: delta

      real(kind(delta)):: delta_, deltaRelative, deltaAbsolute
      real(min(kind(a), kind(b))):: lowerPrecision

      if(present(delta))then
        delta_ = delta*max(abs(a), abs(b))
      else
        deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
        deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
        delta_ = max(deltaRelative, deltaAbsolute)
      end if

      this = (abs(a - b) <= 2*delta_)
    end function equivalentRealDim0KindREAL128RealDim0KindREAL64
    elemental function equivalentRealDim0KindREAL128RealDim0KindREAL128(a, b, delta) result(this)
      logical:: this
      Real(kind = REAL128), intent(in):: a
      Real(kind = REAL128), intent(in):: b
      real(max(kind(a), kind(b))), intent(in), optional:: delta

      real(kind(delta)):: delta_, deltaRelative, deltaAbsolute
      real(min(kind(a), kind(b))):: lowerPrecision

      if(present(delta))then
        delta_ = delta*max(abs(a), abs(b))
      else
        deltaRelative = max(epsilon(a)*abs(a), epsilon(b)*abs(b))
        deltaAbsolute = epsilon(lowerPrecision)*tiny(lowerPrecision)
        delta_ = max(deltaRelative, deltaAbsolute)
      end if

      this = (abs(a - b) <= 2*delta_)
    end function equivalentRealDim0KindREAL128RealDim0KindREAL128

    elemental function equivalentComplexDim0KindREAL32ComplexDim0KindREAL32(a, b, delta) result(this)
      logical:: this
      Complex(kind = REAL32), intent(in):: a
      Complex(kind = REAL32), intent(in):: b
      real(max(kind(a), kind(b))), intent(in), optional:: delta

      if(present(delta))then
        this = equivalent(real(a), real(b), delta) .and. equivalent(aimag(a), aimag(b), delta)
      else
        this = equivalent(real(a), real(b)) .and. equivalent(aimag(a), aimag(b))
      end if
    end function equivalentComplexDim0KindREAL32ComplexDim0KindREAL32
    elemental function equivalentComplexDim0KindREAL32ComplexDim0KindREAL64(a, b, delta) result(this)
      logical:: this
      Complex(kind = REAL32), intent(in):: a
      Complex(kind = REAL64), intent(in):: b
      real(max(kind(a), kind(b))), intent(in), optional:: delta

      if(present(delta))then
        this = equivalent(real(a), real(b), delta) .and. equivalent(aimag(a), aimag(b), delta)
      else
        this = equivalent(real(a), real(b)) .and. equivalent(aimag(a), aimag(b))
      end if
    end function equivalentComplexDim0KindREAL32ComplexDim0KindREAL64
    elemental function equivalentComplexDim0KindREAL32ComplexDim0KindREAL128(a, b, delta) result(this)
      logical:: this
      Complex(kind = REAL32), intent(in):: a
      Complex(kind = REAL128), intent(in):: b
      real(max(kind(a), kind(b))), intent(in), optional:: delta

      if(present(delta))then
        this = equivalent(real(a), real(b), delta) .and. equivalent(aimag(a), aimag(b), delta)
      else
        this = equivalent(real(a), real(b)) .and. equivalent(aimag(a), aimag(b))
      end if
    end function equivalentComplexDim0KindREAL32ComplexDim0KindREAL128
    elemental function equivalentComplexDim0KindREAL64ComplexDim0KindREAL32(a, b, delta) result(this)
      logical:: this
      Complex(kind = REAL64), intent(in):: a
      Complex(kind = REAL32), intent(in):: b
      real(max(kind(a), kind(b))), intent(in), optional:: delta

      if(present(delta))then
        this = equivalent(real(a), real(b), delta) .and. equivalent(aimag(a), aimag(b), delta)
      else
        this = equivalent(real(a), real(b)) .and. equivalent(aimag(a), aimag(b))
      end if
    end function equivalentComplexDim0KindREAL64ComplexDim0KindREAL32
    elemental function equivalentComplexDim0KindREAL64ComplexDim0KindREAL64(a, b, delta) result(this)
      logical:: this
      Complex(kind = REAL64), intent(in):: a
      Complex(kind = REAL64), intent(in):: b
      real(max(kind(a), kind(b))), intent(in), optional:: delta

      if(present(delta))then
        this = equivalent(real(a), real(b), delta) .and. equivalent(aimag(a), aimag(b), delta)
      else
        this = equivalent(real(a), real(b)) .and. equivalent(aimag(a), aimag(b))
      end if
    end function equivalentComplexDim0KindREAL64ComplexDim0KindREAL64
    elemental function equivalentComplexDim0KindREAL64ComplexDim0KindREAL128(a, b, delta) result(this)
      logical:: this
      Complex(kind = REAL64), intent(in):: a
      Complex(kind = REAL128), intent(in):: b
      real(max(kind(a), kind(b))), intent(in), optional:: delta

      if(present(delta))then
        this = equivalent(real(a), real(b), delta) .and. equivalent(aimag(a), aimag(b), delta)
      else
        this = equivalent(real(a), real(b)) .and. equivalent(aimag(a), aimag(b))
      end if
    end function equivalentComplexDim0KindREAL64ComplexDim0KindREAL128
    elemental function equivalentComplexDim0KindREAL128ComplexDim0KindREAL32(a, b, delta) result(this)
      logical:: this
      Complex(kind = REAL128), intent(in):: a
      Complex(kind = REAL32), intent(in):: b
      real(max(kind(a), kind(b))), intent(in), optional:: delta

      if(present(delta))then
        this = equivalent(real(a), real(b), delta) .and. equivalent(aimag(a), aimag(b), delta)
      else
        this = equivalent(real(a), real(b)) .and. equivalent(aimag(a), aimag(b))
      end if
    end function equivalentComplexDim0KindREAL128ComplexDim0KindREAL32
    elemental function equivalentComplexDim0KindREAL128ComplexDim0KindREAL64(a, b, delta) result(this)
      logical:: this
      Complex(kind = REAL128), intent(in):: a
      Complex(kind = REAL64), intent(in):: b
      real(max(kind(a), kind(b))), intent(in), optional:: delta

      if(present(delta))then
        this = equivalent(real(a), real(b), delta) .and. equivalent(aimag(a), aimag(b), delta)
      else
        this = equivalent(real(a), real(b)) .and. equivalent(aimag(a), aimag(b))
      end if
    end function equivalentComplexDim0KindREAL128ComplexDim0KindREAL64
    elemental function equivalentComplexDim0KindREAL128ComplexDim0KindREAL128(a, b, delta) result(this)
      logical:: this
      Complex(kind = REAL128), intent(in):: a
      Complex(kind = REAL128), intent(in):: b
      real(max(kind(a), kind(b))), intent(in), optional:: delta

      if(present(delta))then
        this = equivalent(real(a), real(b), delta) .and. equivalent(aimag(a), aimag(b), delta)
      else
        this = equivalent(real(a), real(b)) .and. equivalent(aimag(a), aimag(b))
      end if
    end function equivalentComplexDim0KindREAL128ComplexDim0KindREAL128

    elemental function equivalentIntegerDim0KindINT8IntegerDim0KindINT8(a, b) result(this)
      logical:: this
      Integer(kind = INT8), intent(in):: a
      Integer(kind = INT8), intent(in):: b

      this = (a == b)
    end function equivalentIntegerDim0KindINT8IntegerDim0KindINT8
    elemental function equivalentIntegerDim0KindINT8IntegerDim0KindINT16(a, b) result(this)
      logical:: this
      Integer(kind = INT8), intent(in):: a
      Integer(kind = INT16), intent(in):: b

      this = (a == b)
    end function equivalentIntegerDim0KindINT8IntegerDim0KindINT16
    elemental function equivalentIntegerDim0KindINT8IntegerDim0KindINT32(a, b) result(this)
      logical:: this
      Integer(kind = INT8), intent(in):: a
      Integer(kind = INT32), intent(in):: b

      this = (a == b)
    end function equivalentIntegerDim0KindINT8IntegerDim0KindINT32
    elemental function equivalentIntegerDim0KindINT8IntegerDim0KindINT64(a, b) result(this)
      logical:: this
      Integer(kind = INT8), intent(in):: a
      Integer(kind = INT64), intent(in):: b

      this = (a == b)
    end function equivalentIntegerDim0KindINT8IntegerDim0KindINT64
    elemental function equivalentIntegerDim0KindINT16IntegerDim0KindINT8(a, b) result(this)
      logical:: this
      Integer(kind = INT16), intent(in):: a
      Integer(kind = INT8), intent(in):: b

      this = (a == b)
    end function equivalentIntegerDim0KindINT16IntegerDim0KindINT8
    elemental function equivalentIntegerDim0KindINT16IntegerDim0KindINT16(a, b) result(this)
      logical:: this
      Integer(kind = INT16), intent(in):: a
      Integer(kind = INT16), intent(in):: b

      this = (a == b)
    end function equivalentIntegerDim0KindINT16IntegerDim0KindINT16
    elemental function equivalentIntegerDim0KindINT16IntegerDim0KindINT32(a, b) result(this)
      logical:: this
      Integer(kind = INT16), intent(in):: a
      Integer(kind = INT32), intent(in):: b

      this = (a == b)
    end function equivalentIntegerDim0KindINT16IntegerDim0KindINT32
    elemental function equivalentIntegerDim0KindINT16IntegerDim0KindINT64(a, b) result(this)
      logical:: this
      Integer(kind = INT16), intent(in):: a
      Integer(kind = INT64), intent(in):: b

      this = (a == b)
    end function equivalentIntegerDim0KindINT16IntegerDim0KindINT64
    elemental function equivalentIntegerDim0KindINT32IntegerDim0KindINT8(a, b) result(this)
      logical:: this
      Integer(kind = INT32), intent(in):: a
      Integer(kind = INT8), intent(in):: b

      this = (a == b)
    end function equivalentIntegerDim0KindINT32IntegerDim0KindINT8
    elemental function equivalentIntegerDim0KindINT32IntegerDim0KindINT16(a, b) result(this)
      logical:: this
      Integer(kind = INT32), intent(in):: a
      Integer(kind = INT16), intent(in):: b

      this = (a == b)
    end function equivalentIntegerDim0KindINT32IntegerDim0KindINT16
    elemental function equivalentIntegerDim0KindINT32IntegerDim0KindINT32(a, b) result(this)
      logical:: this
      Integer(kind = INT32), intent(in):: a
      Integer(kind = INT32), intent(in):: b

      this = (a == b)
    end function equivalentIntegerDim0KindINT32IntegerDim0KindINT32
    elemental function equivalentIntegerDim0KindINT32IntegerDim0KindINT64(a, b) result(this)
      logical:: this
      Integer(kind = INT32), intent(in):: a
      Integer(kind = INT64), intent(in):: b

      this = (a == b)
    end function equivalentIntegerDim0KindINT32IntegerDim0KindINT64
    elemental function equivalentIntegerDim0KindINT64IntegerDim0KindINT8(a, b) result(this)
      logical:: this
      Integer(kind = INT64), intent(in):: a
      Integer(kind = INT8), intent(in):: b

      this = (a == b)
    end function equivalentIntegerDim0KindINT64IntegerDim0KindINT8
    elemental function equivalentIntegerDim0KindINT64IntegerDim0KindINT16(a, b) result(this)
      logical:: this
      Integer(kind = INT64), intent(in):: a
      Integer(kind = INT16), intent(in):: b

      this = (a == b)
    end function equivalentIntegerDim0KindINT64IntegerDim0KindINT16
    elemental function equivalentIntegerDim0KindINT64IntegerDim0KindINT32(a, b) result(this)
      logical:: this
      Integer(kind = INT64), intent(in):: a
      Integer(kind = INT32), intent(in):: b

      this = (a == b)
    end function equivalentIntegerDim0KindINT64IntegerDim0KindINT32
    elemental function equivalentIntegerDim0KindINT64IntegerDim0KindINT64(a, b) result(this)
      logical:: this
      Integer(kind = INT64), intent(in):: a
      Integer(kind = INT64), intent(in):: b

      this = (a == b)
    end function equivalentIntegerDim0KindINT64IntegerDim0KindINT64

    elemental function equivalentLogicalDim0LogicalDim0(a, b) result(this)
      logical:: this
      Logical, intent(in):: a
      Logical, intent(in):: b

      this = a .eqv. b
    end function equivalentLogicalDim0LogicalDim0

    elemental function equivalentCharacterDim0LenAstCharacterDim0LenAst(a, b) result(this)
      logical:: this
      Character(len = *), intent(in):: a
      Character(len = *), intent(in):: b

      this = (a == b)
    end function equivalentCharacterDim0LenAstCharacterDim0LenAst
end module lib_comparable