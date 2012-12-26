# 1 "lib_character.f90"
# 1 "<command-line>"
# 1 "lib_character.f90"

module lib_character
  use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128

  implicit none

  private

  public:: s ! Same as String#strip method in Ruby.
  public:: operator(+) ! Syntax sugar of `//'. This will be useful if you want to use `//' within macro where `//' is discarded.
  public:: operator(*) ! Syntax sugar of `repeat'. Inspired by Ruby's String#*.
  public:: str ! Convert a value to a string. The result is also stripped.
  public:: STR_LEN ! Maximum length of str.

  integer, parameter:: STR_LEN = 1024

  interface operator(+)
    module procedure add
  end interface operator(+)

  interface operator(*)
      module procedure repeat_delegatorIntegerDim0KindINT8
      module procedure repeat_delegatorIntegerDim0KindINT16
      module procedure repeat_delegatorIntegerDim0KindINT32
      module procedure repeat_delegatorIntegerDim0KindINT64
  end interface operator(*)

    interface str
      module procedure strLogicalDim0
    end interface str

    interface str_fixed
      module procedure str_fixedLogicalDim0
    end interface str_fixed
    interface str
      module procedure strRealDim0KindREAL32
    end interface str

    interface str_fixed
      module procedure str_fixedRealDim0KindREAL32
    end interface str_fixed
    interface str
      module procedure strRealDim0KindREAL64
    end interface str

    interface str_fixed
      module procedure str_fixedRealDim0KindREAL64
    end interface str_fixed
    interface str
      module procedure strRealDim0KindREAL128
    end interface str

    interface str_fixed
      module procedure str_fixedRealDim0KindREAL128
    end interface str_fixed
    interface str
      module procedure strComplexDim0KindREAL32
    end interface str

    interface str_fixed
      module procedure str_fixedComplexDim0KindREAL32
    end interface str_fixed
    interface str
      module procedure strComplexDim0KindREAL64
    end interface str

    interface str_fixed
      module procedure str_fixedComplexDim0KindREAL64
    end interface str_fixed
    interface str
      module procedure strComplexDim0KindREAL128
    end interface str

    interface str_fixed
      module procedure str_fixedComplexDim0KindREAL128
    end interface str_fixed
    interface str
      module procedure strCharacterDim0LenAst
    end interface str

    interface str_fixed
      module procedure str_fixedCharacterDim0LenAst
    end interface str_fixed
    interface str
      module procedure strCharacterDim1LenAst
    end interface str

    interface str_fixed
      module procedure str_fixedCharacterDim1LenAst
    end interface str_fixed
    interface str
      module procedure strCharacterDim2LenAst
    end interface str

    interface str_fixed
      module procedure str_fixedCharacterDim2LenAst
    end interface str_fixed
    interface str
      module procedure strCharacterDim3LenAst
    end interface str

    interface str_fixed
      module procedure str_fixedCharacterDim3LenAst
    end interface str_fixed
    interface str
      module procedure strCharacterDim4LenAst
    end interface str

    interface str_fixed
      module procedure str_fixedCharacterDim4LenAst
    end interface str_fixed
    interface str
      module procedure strCharacterDim5LenAst
    end interface str

    interface str_fixed
      module procedure str_fixedCharacterDim5LenAst
    end interface str_fixed
    interface str
      module procedure strCharacterDim6LenAst
    end interface str

    interface str_fixed
      module procedure str_fixedCharacterDim6LenAst
    end interface str_fixed
    interface str
      module procedure strCharacterDim7LenAst
    end interface str

    interface str_fixed
      module procedure str_fixedCharacterDim7LenAst
    end interface str_fixed
    interface str
      module procedure strIntegerDim0KindINT8
    end interface str

    interface str_fixed
      module procedure str_fixedIntegerDim0KindINT8
    end interface str_fixed
    interface str
      module procedure strIntegerDim0KindINT16
    end interface str

    interface str_fixed
      module procedure str_fixedIntegerDim0KindINT16
    end interface str_fixed
    interface str
      module procedure strIntegerDim0KindINT32
    end interface str

    interface str_fixed
      module procedure str_fixedIntegerDim0KindINT32
    end interface str_fixed
    interface str
      module procedure strIntegerDim0KindINT64
    end interface str

    interface str_fixed
      module procedure str_fixedIntegerDim0KindINT64
    end interface str_fixed

contains

  pure function s(str) result(this)
    character(len = *), intent(in):: str
    character(len = len_trim(adjustl(str))):: this

    this = trim(adjustl(str))
  end function s

  elemental function add(str1, str2) result(this)
    character(len = *), intent(in):: str1, str2
    character(len = len(str1) + len(str2)):: this

    this = str1 // str2
  end function add

    pure function repeat_delegatorIntegerDim0KindINT8(str, n) result(this)
      character(len = *), intent(in):: str
      Integer(kind = INT8), intent(in):: n
      character(len = len(str)*n):: this

      this = repeat(str, n)
    end function repeat_delegatorIntegerDim0KindINT8
    pure function repeat_delegatorIntegerDim0KindINT16(str, n) result(this)
      character(len = *), intent(in):: str
      Integer(kind = INT16), intent(in):: n
      character(len = len(str)*n):: this

      this = repeat(str, n)
    end function repeat_delegatorIntegerDim0KindINT16
    pure function repeat_delegatorIntegerDim0KindINT32(str, n) result(this)
      character(len = *), intent(in):: str
      Integer(kind = INT32), intent(in):: n
      character(len = len(str)*n):: this

      this = repeat(str, n)
    end function repeat_delegatorIntegerDim0KindINT32
    pure function repeat_delegatorIntegerDim0KindINT64(str, n) result(this)
      character(len = *), intent(in):: str
      Integer(kind = INT64), intent(in):: n
      character(len = len(str)*n):: this

      this = repeat(str, n)
    end function repeat_delegatorIntegerDim0KindINT64

    pure function str_fixedLogicalDim0(x) result(this)
      character(len = STR_LEN):: this
      Logical, intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedLogicalDim0

    pure function strLogicalDim0(x) result(this)
      Logical, intent(in):: x
      character(len = len(s(str_fixedLogicalDim0(x)))):: this

      this = s(str_fixed(x))
    end function strLogicalDim0
    pure function str_fixedRealDim0KindREAL32(x) result(this)
      character(len = STR_LEN):: this
      Real(kind = REAL32), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedRealDim0KindREAL32

    pure function strRealDim0KindREAL32(x) result(this)
      Real(kind = REAL32), intent(in):: x
      character(len = len(s(str_fixedRealDim0KindREAL32(x)))):: this

      this = s(str_fixed(x))
    end function strRealDim0KindREAL32
    pure function str_fixedRealDim0KindREAL64(x) result(this)
      character(len = STR_LEN):: this
      Real(kind = REAL64), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedRealDim0KindREAL64

    pure function strRealDim0KindREAL64(x) result(this)
      Real(kind = REAL64), intent(in):: x
      character(len = len(s(str_fixedRealDim0KindREAL64(x)))):: this

      this = s(str_fixed(x))
    end function strRealDim0KindREAL64
    pure function str_fixedRealDim0KindREAL128(x) result(this)
      character(len = STR_LEN):: this
      Real(kind = REAL128), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedRealDim0KindREAL128

    pure function strRealDim0KindREAL128(x) result(this)
      Real(kind = REAL128), intent(in):: x
      character(len = len(s(str_fixedRealDim0KindREAL128(x)))):: this

      this = s(str_fixed(x))
    end function strRealDim0KindREAL128
    pure function str_fixedComplexDim0KindREAL32(x) result(this)
      character(len = STR_LEN):: this
      Complex(kind = REAL32), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedComplexDim0KindREAL32

    pure function strComplexDim0KindREAL32(x) result(this)
      Complex(kind = REAL32), intent(in):: x
      character(len = len(s(str_fixedComplexDim0KindREAL32(x)))):: this

      this = s(str_fixed(x))
    end function strComplexDim0KindREAL32
    pure function str_fixedComplexDim0KindREAL64(x) result(this)
      character(len = STR_LEN):: this
      Complex(kind = REAL64), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedComplexDim0KindREAL64

    pure function strComplexDim0KindREAL64(x) result(this)
      Complex(kind = REAL64), intent(in):: x
      character(len = len(s(str_fixedComplexDim0KindREAL64(x)))):: this

      this = s(str_fixed(x))
    end function strComplexDim0KindREAL64
    pure function str_fixedComplexDim0KindREAL128(x) result(this)
      character(len = STR_LEN):: this
      Complex(kind = REAL128), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedComplexDim0KindREAL128

    pure function strComplexDim0KindREAL128(x) result(this)
      Complex(kind = REAL128), intent(in):: x
      character(len = len(s(str_fixedComplexDim0KindREAL128(x)))):: this

      this = s(str_fixed(x))
    end function strComplexDim0KindREAL128
    pure function str_fixedCharacterDim0LenAst(x) result(this)
      character(len = STR_LEN):: this
      Character(len = *), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedCharacterDim0LenAst

    pure function strCharacterDim0LenAst(x) result(this)
      Character(len = *), intent(in):: x
      character(len = len(s(str_fixedCharacterDim0LenAst(x)))):: this

      this = s(str_fixed(x))
    end function strCharacterDim0LenAst
    pure function str_fixedCharacterDim1LenAst(x) result(this)
      character(len = STR_LEN):: this
      Character(len = *), dimension(:), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedCharacterDim1LenAst

    pure function strCharacterDim1LenAst(x) result(this)
      Character(len = *), dimension(:), intent(in):: x
      character(len = len(s(str_fixedCharacterDim1LenAst(x)))):: this

      this = s(str_fixed(x))
    end function strCharacterDim1LenAst
    pure function str_fixedCharacterDim2LenAst(x) result(this)
      character(len = STR_LEN):: this
      Character(len = *), dimension(:, :), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedCharacterDim2LenAst

    pure function strCharacterDim2LenAst(x) result(this)
      Character(len = *), dimension(:, :), intent(in):: x
      character(len = len(s(str_fixedCharacterDim2LenAst(x)))):: this

      this = s(str_fixed(x))
    end function strCharacterDim2LenAst
    pure function str_fixedCharacterDim3LenAst(x) result(this)
      character(len = STR_LEN):: this
      Character(len = *), dimension(:, :, :), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedCharacterDim3LenAst

    pure function strCharacterDim3LenAst(x) result(this)
      Character(len = *), dimension(:, :, :), intent(in):: x
      character(len = len(s(str_fixedCharacterDim3LenAst(x)))):: this

      this = s(str_fixed(x))
    end function strCharacterDim3LenAst
    pure function str_fixedCharacterDim4LenAst(x) result(this)
      character(len = STR_LEN):: this
      Character(len = *), dimension(:, :, :, :), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedCharacterDim4LenAst

    pure function strCharacterDim4LenAst(x) result(this)
      Character(len = *), dimension(:, :, :, :), intent(in):: x
      character(len = len(s(str_fixedCharacterDim4LenAst(x)))):: this

      this = s(str_fixed(x))
    end function strCharacterDim4LenAst
    pure function str_fixedCharacterDim5LenAst(x) result(this)
      character(len = STR_LEN):: this
      Character(len = *), dimension(:, :, :, :, :), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedCharacterDim5LenAst

    pure function strCharacterDim5LenAst(x) result(this)
      Character(len = *), dimension(:, :, :, :, :), intent(in):: x
      character(len = len(s(str_fixedCharacterDim5LenAst(x)))):: this

      this = s(str_fixed(x))
    end function strCharacterDim5LenAst
    pure function str_fixedCharacterDim6LenAst(x) result(this)
      character(len = STR_LEN):: this
      Character(len = *), dimension(:, :, :, :, :, :), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedCharacterDim6LenAst

    pure function strCharacterDim6LenAst(x) result(this)
      Character(len = *), dimension(:, :, :, :, :, :), intent(in):: x
      character(len = len(s(str_fixedCharacterDim6LenAst(x)))):: this

      this = s(str_fixed(x))
    end function strCharacterDim6LenAst
    pure function str_fixedCharacterDim7LenAst(x) result(this)
      character(len = STR_LEN):: this
      Character(len = *), dimension(:, :, :, :, :, :, :), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedCharacterDim7LenAst

    pure function strCharacterDim7LenAst(x) result(this)
      Character(len = *), dimension(:, :, :, :, :, :, :), intent(in):: x
      character(len = len(s(str_fixedCharacterDim7LenAst(x)))):: this

      this = s(str_fixed(x))
    end function strCharacterDim7LenAst
    pure function str_fixedIntegerDim0KindINT8(x) result(this)
      character(len = STR_LEN):: this
      Integer(kind = INT8), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedIntegerDim0KindINT8

    pure function strIntegerDim0KindINT8(x) result(this)
      Integer(kind = INT8), intent(in):: x
      character(len = len(s(str_fixedIntegerDim0KindINT8(x)))):: this

      this = s(str_fixed(x))
    end function strIntegerDim0KindINT8
    pure function str_fixedIntegerDim0KindINT16(x) result(this)
      character(len = STR_LEN):: this
      Integer(kind = INT16), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedIntegerDim0KindINT16

    pure function strIntegerDim0KindINT16(x) result(this)
      Integer(kind = INT16), intent(in):: x
      character(len = len(s(str_fixedIntegerDim0KindINT16(x)))):: this

      this = s(str_fixed(x))
    end function strIntegerDim0KindINT16
    pure function str_fixedIntegerDim0KindINT32(x) result(this)
      character(len = STR_LEN):: this
      Integer(kind = INT32), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedIntegerDim0KindINT32

    pure function strIntegerDim0KindINT32(x) result(this)
      Integer(kind = INT32), intent(in):: x
      character(len = len(s(str_fixedIntegerDim0KindINT32(x)))):: this

      this = s(str_fixed(x))
    end function strIntegerDim0KindINT32
    pure function str_fixedIntegerDim0KindINT64(x) result(this)
      character(len = STR_LEN):: this
      Integer(kind = INT64), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedIntegerDim0KindINT64

    pure function strIntegerDim0KindINT64(x) result(this)
      Integer(kind = INT64), intent(in):: x
      character(len = len(s(str_fixedIntegerDim0KindINT64(x)))):: this

      this = s(str_fixed(x))
    end function strIntegerDim0KindINT64
end module lib_character
