
module lib_character
  use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128

  implicit none

  private

  public:: s                    ! Same as String#strip method in Ruby.
  public:: operator(+)          ! Syntax sugar of `//'. This will be useful if you want to use `//' within macro where `//' is discarded.
  ! public:: str
  public:: str_fixed            ! Convert a value to a string. The result is not stripped.
  public:: STR_LEN              ! Maximum length of str.

  integer,   parameter:: STR_LEN  = 1024

  interface operator(+)
    module procedure add
  end interface operator(+)

    ! interface str
    !   module procedure strLogicalDim0
    ! end interface str

    interface str_fixed
      module procedure str_fixedLogicalDim0
    end interface str_fixed
    ! interface str
    !   module procedure strRealDim0KindREAL32
    ! end interface str

    interface str_fixed
      module procedure str_fixedRealDim0KindREAL32
    end interface str_fixed
    ! interface str
    !   module procedure strRealDim0KindREAL64
    ! end interface str

    interface str_fixed
      module procedure str_fixedRealDim0KindREAL64
    end interface str_fixed
    ! interface str
    !   module procedure strRealDim0KindREAL128
    ! end interface str

    interface str_fixed
      module procedure str_fixedRealDim0KindREAL128
    end interface str_fixed
    ! interface str
    !   module procedure strComplexDim0KindREAL32
    ! end interface str

    interface str_fixed
      module procedure str_fixedComplexDim0KindREAL32
    end interface str_fixed
    ! interface str
    !   module procedure strComplexDim0KindREAL64
    ! end interface str

    interface str_fixed
      module procedure str_fixedComplexDim0KindREAL64
    end interface str_fixed
    ! interface str
    !   module procedure strComplexDim0KindREAL128
    ! end interface str

    interface str_fixed
      module procedure str_fixedComplexDim0KindREAL128
    end interface str_fixed
    ! interface str
    !   module procedure strCharacterDim0LenAsterisk
    ! end interface str

    interface str_fixed
      module procedure str_fixedCharacterDim0LenAsterisk
    end interface str_fixed
    ! interface str
    !   module procedure strCharacterDim1LenAsterisk
    ! end interface str

    interface str_fixed
      module procedure str_fixedCharacterDim1LenAsterisk
    end interface str_fixed
    ! interface str
    !   module procedure strCharacterDim2LenAsterisk
    ! end interface str

    interface str_fixed
      module procedure str_fixedCharacterDim2LenAsterisk
    end interface str_fixed
    ! interface str
    !   module procedure strCharacterDim3LenAsterisk
    ! end interface str

    interface str_fixed
      module procedure str_fixedCharacterDim3LenAsterisk
    end interface str_fixed
    ! interface str
    !   module procedure strCharacterDim4LenAsterisk
    ! end interface str

    interface str_fixed
      module procedure str_fixedCharacterDim4LenAsterisk
    end interface str_fixed
    ! interface str
    !   module procedure strCharacterDim5LenAsterisk
    ! end interface str

    interface str_fixed
      module procedure str_fixedCharacterDim5LenAsterisk
    end interface str_fixed
    ! interface str
    !   module procedure strCharacterDim6LenAsterisk
    ! end interface str

    interface str_fixed
      module procedure str_fixedCharacterDim6LenAsterisk
    end interface str_fixed
    ! interface str
    !   module procedure strCharacterDim7LenAsterisk
    ! end interface str

    interface str_fixed
      module procedure str_fixedCharacterDim7LenAsterisk
    end interface str_fixed
    ! interface str
    !   module procedure strIntegerDim0KindINT8
    ! end interface str

    interface str_fixed
      module procedure str_fixedIntegerDim0KindINT8
    end interface str_fixed
    ! interface str
    !   module procedure strIntegerDim0KindINT16
    ! end interface str

    interface str_fixed
      module procedure str_fixedIntegerDim0KindINT16
    end interface str_fixed
    ! interface str
    !   module procedure strIntegerDim0KindINT32
    ! end interface str

    interface str_fixed
      module procedure str_fixedIntegerDim0KindINT32
    end interface str_fixed
    ! interface str
    !   module procedure strIntegerDim0KindINT64
    ! end interface str

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

    pure function str_fixedLogicalDim0(x) result(this)
      character(len = STR_LEN):: this
      Logical, intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedLogicalDim0

    ! ! This is not work on ifort
    ! pure function strLogicalDim0(x) result(this)
    !   Logical, intent(in):: x
    !   character(len = len(s(str_fixed(x)))):: this

    !   this = s(str_fixed(x))
    ! end function strLogicalDim0
    pure function str_fixedRealDim0KindREAL32(x) result(this)
      character(len = STR_LEN):: this
      Real(kind = REAL32), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedRealDim0KindREAL32

    ! ! This is not work on ifort
    ! pure function strRealDim0KindREAL32(x) result(this)
    !   Real(kind = REAL32), intent(in):: x
    !   character(len = len(s(str_fixed(x)))):: this

    !   this = s(str_fixed(x))
    ! end function strRealDim0KindREAL32
    pure function str_fixedRealDim0KindREAL64(x) result(this)
      character(len = STR_LEN):: this
      Real(kind = REAL64), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedRealDim0KindREAL64

    ! ! This is not work on ifort
    ! pure function strRealDim0KindREAL64(x) result(this)
    !   Real(kind = REAL64), intent(in):: x
    !   character(len = len(s(str_fixed(x)))):: this

    !   this = s(str_fixed(x))
    ! end function strRealDim0KindREAL64
    pure function str_fixedRealDim0KindREAL128(x) result(this)
      character(len = STR_LEN):: this
      Real(kind = REAL128), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedRealDim0KindREAL128

    ! ! This is not work on ifort
    ! pure function strRealDim0KindREAL128(x) result(this)
    !   Real(kind = REAL128), intent(in):: x
    !   character(len = len(s(str_fixed(x)))):: this

    !   this = s(str_fixed(x))
    ! end function strRealDim0KindREAL128
    pure function str_fixedComplexDim0KindREAL32(x) result(this)
      character(len = STR_LEN):: this
      Complex(kind = REAL32), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedComplexDim0KindREAL32

    ! ! This is not work on ifort
    ! pure function strComplexDim0KindREAL32(x) result(this)
    !   Complex(kind = REAL32), intent(in):: x
    !   character(len = len(s(str_fixed(x)))):: this

    !   this = s(str_fixed(x))
    ! end function strComplexDim0KindREAL32
    pure function str_fixedComplexDim0KindREAL64(x) result(this)
      character(len = STR_LEN):: this
      Complex(kind = REAL64), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedComplexDim0KindREAL64

    ! ! This is not work on ifort
    ! pure function strComplexDim0KindREAL64(x) result(this)
    !   Complex(kind = REAL64), intent(in):: x
    !   character(len = len(s(str_fixed(x)))):: this

    !   this = s(str_fixed(x))
    ! end function strComplexDim0KindREAL64
    pure function str_fixedComplexDim0KindREAL128(x) result(this)
      character(len = STR_LEN):: this
      Complex(kind = REAL128), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedComplexDim0KindREAL128

    ! ! This is not work on ifort
    ! pure function strComplexDim0KindREAL128(x) result(this)
    !   Complex(kind = REAL128), intent(in):: x
    !   character(len = len(s(str_fixed(x)))):: this

    !   this = s(str_fixed(x))
    ! end function strComplexDim0KindREAL128
    pure function str_fixedCharacterDim0LenAsterisk(x) result(this)
      character(len = STR_LEN):: this
      Character(len = *), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedCharacterDim0LenAsterisk

    ! ! This is not work on ifort
    ! pure function strCharacterDim0LenAsterisk(x) result(this)
    !   Character(len = *), intent(in):: x
    !   character(len = len(s(str_fixed(x)))):: this

    !   this = s(str_fixed(x))
    ! end function strCharacterDim0LenAsterisk
    pure function str_fixedCharacterDim1LenAsterisk(x) result(this)
      character(len = STR_LEN):: this
      Character(len = *), dimension(:), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedCharacterDim1LenAsterisk

    ! ! This is not work on ifort
    ! pure function strCharacterDim1LenAsterisk(x) result(this)
    !   Character(len = *), dimension(:), intent(in):: x
    !   character(len = len(s(str_fixed(x)))):: this

    !   this = s(str_fixed(x))
    ! end function strCharacterDim1LenAsterisk
    pure function str_fixedCharacterDim2LenAsterisk(x) result(this)
      character(len = STR_LEN):: this
      Character(len = *), dimension(:, :), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedCharacterDim2LenAsterisk

    ! ! This is not work on ifort
    ! pure function strCharacterDim2LenAsterisk(x) result(this)
    !   Character(len = *), dimension(:, :), intent(in):: x
    !   character(len = len(s(str_fixed(x)))):: this

    !   this = s(str_fixed(x))
    ! end function strCharacterDim2LenAsterisk
    pure function str_fixedCharacterDim3LenAsterisk(x) result(this)
      character(len = STR_LEN):: this
      Character(len = *), dimension(:, :, :), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedCharacterDim3LenAsterisk

    ! ! This is not work on ifort
    ! pure function strCharacterDim3LenAsterisk(x) result(this)
    !   Character(len = *), dimension(:, :, :), intent(in):: x
    !   character(len = len(s(str_fixed(x)))):: this

    !   this = s(str_fixed(x))
    ! end function strCharacterDim3LenAsterisk
    pure function str_fixedCharacterDim4LenAsterisk(x) result(this)
      character(len = STR_LEN):: this
      Character(len = *), dimension(:, :, :, :), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedCharacterDim4LenAsterisk

    ! ! This is not work on ifort
    ! pure function strCharacterDim4LenAsterisk(x) result(this)
    !   Character(len = *), dimension(:, :, :, :), intent(in):: x
    !   character(len = len(s(str_fixed(x)))):: this

    !   this = s(str_fixed(x))
    ! end function strCharacterDim4LenAsterisk
    pure function str_fixedCharacterDim5LenAsterisk(x) result(this)
      character(len = STR_LEN):: this
      Character(len = *), dimension(:, :, :, :, :), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedCharacterDim5LenAsterisk

    ! ! This is not work on ifort
    ! pure function strCharacterDim5LenAsterisk(x) result(this)
    !   Character(len = *), dimension(:, :, :, :, :), intent(in):: x
    !   character(len = len(s(str_fixed(x)))):: this

    !   this = s(str_fixed(x))
    ! end function strCharacterDim5LenAsterisk
    pure function str_fixedCharacterDim6LenAsterisk(x) result(this)
      character(len = STR_LEN):: this
      Character(len = *), dimension(:, :, :, :, :, :), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedCharacterDim6LenAsterisk

    ! ! This is not work on ifort
    ! pure function strCharacterDim6LenAsterisk(x) result(this)
    !   Character(len = *), dimension(:, :, :, :, :, :), intent(in):: x
    !   character(len = len(s(str_fixed(x)))):: this

    !   this = s(str_fixed(x))
    ! end function strCharacterDim6LenAsterisk
    pure function str_fixedCharacterDim7LenAsterisk(x) result(this)
      character(len = STR_LEN):: this
      Character(len = *), dimension(:, :, :, :, :, :, :), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedCharacterDim7LenAsterisk

    ! ! This is not work on ifort
    ! pure function strCharacterDim7LenAsterisk(x) result(this)
    !   Character(len = *), dimension(:, :, :, :, :, :, :), intent(in):: x
    !   character(len = len(s(str_fixed(x)))):: this

    !   this = s(str_fixed(x))
    ! end function strCharacterDim7LenAsterisk
    pure function str_fixedIntegerDim0KindINT8(x) result(this)
      character(len = STR_LEN):: this
      Integer(kind = INT8), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedIntegerDim0KindINT8

    ! ! This is not work on ifort
    ! pure function strIntegerDim0KindINT8(x) result(this)
    !   Integer(kind = INT8), intent(in):: x
    !   character(len = len(s(str_fixed(x)))):: this

    !   this = s(str_fixed(x))
    ! end function strIntegerDim0KindINT8
    pure function str_fixedIntegerDim0KindINT16(x) result(this)
      character(len = STR_LEN):: this
      Integer(kind = INT16), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedIntegerDim0KindINT16

    ! ! This is not work on ifort
    ! pure function strIntegerDim0KindINT16(x) result(this)
    !   Integer(kind = INT16), intent(in):: x
    !   character(len = len(s(str_fixed(x)))):: this

    !   this = s(str_fixed(x))
    ! end function strIntegerDim0KindINT16
    pure function str_fixedIntegerDim0KindINT32(x) result(this)
      character(len = STR_LEN):: this
      Integer(kind = INT32), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedIntegerDim0KindINT32

    ! ! This is not work on ifort
    ! pure function strIntegerDim0KindINT32(x) result(this)
    !   Integer(kind = INT32), intent(in):: x
    !   character(len = len(s(str_fixed(x)))):: this

    !   this = s(str_fixed(x))
    ! end function strIntegerDim0KindINT32
    pure function str_fixedIntegerDim0KindINT64(x) result(this)
      character(len = STR_LEN):: this
      Integer(kind = INT64), intent(in):: x

      write(this, *) x
      this = s(this)
    end function str_fixedIntegerDim0KindINT64

    ! ! This is not work on ifort
    ! pure function strIntegerDim0KindINT64(x) result(this)
    !   Integer(kind = INT64), intent(in):: x
    !   character(len = len(s(str_fixed(x)))):: this

    !   this = s(str_fixed(x))
    ! end function strIntegerDim0KindINT64
end module lib_character
