

#include "utils.h"
module character_lib
   USE_UTILS_H
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128

   implicit none

   private

   public:: replace ! replace all substring `from` in string `s` to `to`
   public:: s                    ! Same as String#strip method in Ruby.
   public:: operator(+)          ! Syntax sugar of `//'. This will be useful if you want to use `//' within macro where `//' is discarded.
   public:: str ! Convert a value to a string.

   integer, parameter, public:: MAX_STR_LEN = 2**11  ! Maximum length of str.

   interface operator(+)
      module procedure add
   end interface operator(+)

      interface str
         module procedure strLogicalDim0
      end interface str
      interface str
         module procedure strRealDim0KindREAL32
      end interface str
      interface str
         module procedure strRealDim0KindREAL64
      end interface str
      interface str
         module procedure strRealDim0KindREAL128
      end interface str
      interface str
         module procedure strComplexDim0KindREAL32
      end interface str
      interface str
         module procedure strComplexDim0KindREAL64
      end interface str
      interface str
         module procedure strComplexDim0KindREAL128
      end interface str
      interface str
         module procedure strCharacterDim0LenAsterisk
      end interface str
      interface str
         module procedure strCharacterDim1LenAsterisk
      end interface str
      interface str
         module procedure strCharacterDim2LenAsterisk
      end interface str
      interface str
         module procedure strCharacterDim3LenAsterisk
      end interface str
      interface str
         module procedure strCharacterDim4LenAsterisk
      end interface str
      interface str
         module procedure strCharacterDim5LenAsterisk
      end interface str
      interface str
         module procedure strCharacterDim6LenAsterisk
      end interface str
      interface str
         module procedure strCharacterDim7LenAsterisk
      end interface str
      interface str
         module procedure strIntegerDim0KindINT8
      end interface str
      interface str
         module procedure strIntegerDim0KindINT16
      end interface str
      interface str
         module procedure strIntegerDim0KindINT32
      end interface str
      interface str
         module procedure strIntegerDim0KindINT64
      end interface str

contains

   pure function replace(s, from, to) result(ret)
      Character(len=*), intent(in):: s, from, to
      Character(len=get_len_of_replaced_str(s, from, to)) ret

      Integer(kind=INT64):: lenS, lenFrom, lenTo, posSeek, posMatch, posRet

      lenS = len(s)
      lenFrom = len(from)
      lenTo = len(to)
      posSeek = 1
      posRet = 1
      do while(posSeek <= lenS)
         posMatch = index(s(posSeek:), from)
         select case(posMatch)
         case(:0)
            ret(posRet:) = s(posSeek:)
            exit
         case(1)
            ret(posRet:posRet + lenTo - 1) = to
            posRet = posRet + lenTo
            posSeek = posSeek + lenFrom
         case(2:)
            ret(posRet:posRet + posMatch - 2) = s(posSeek:posSeek + posMatch - 2)
            ret(posRet + posMatch - 1:posRet + posMatch - 1 + lenTo - 1) = to
            posRet = posRet + posMatch - 1 + lenTo - 1 + 1
            posSeek = posSeek + posMatch - 1 + lenFrom - 1 + 1
         end select
      end do
   end function replace

   pure function get_len_of_replaced_str(s, from, to) result(ret)
      Character(len=*), intent(in):: s, from, to
      Integer(kind=INT64):: ret

      Integer(kind=kind(ret)):: lenS, lenFrom, posSeek, posMatch, nMatch

      lenS = len(s)
      lenFrom = len(from)

      nMatch = 0
      posSeek = 1
      do while(posSeek <= lenS)
         posMatch = index(s(posSeek:), from)
         if(posMatch > 0)then
            nMatch = nMatch + 1
            posSeek = posSeek + posMatch + lenFrom - 1
         else
            exit
         end if
      end do

      ret = lenS + nMatch*(len(to) - lenFrom)
   end function get_len_of_replaced_str

   pure function s(str) result(answer)
      character(len=*), intent(in):: str
      character(len=len_trim(adjustl(str))):: answer

      answer = trim(adjustl(str))
   end function s

   function add(str1, str2) result(answer)
      character(len=*), intent(in):: str1, str2
      character(len=len(str1) + len(str2)):: answer

      answer = str1 // str2
   end function add

      pure function strLogicalDim0(x) result(ret)
         Logical, intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=INT64):: lenBuf
         Integer:: ios

         lenBuf = 32 ! enough length to dump `REAL64` value
         do
            ENSURE_DEALLOCATED(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if(is_iostat_ok(ios))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strLogicalDim0
      pure function strRealDim0KindREAL32(x) result(ret)
         Real(kind=REAL32), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=INT64):: lenBuf
         Integer:: ios

         lenBuf = 32 ! enough length to dump `REAL64` value
         do
            ENSURE_DEALLOCATED(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if(is_iostat_ok(ios))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strRealDim0KindREAL32
      pure function strRealDim0KindREAL64(x) result(ret)
         Real(kind=REAL64), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=INT64):: lenBuf
         Integer:: ios

         lenBuf = 32 ! enough length to dump `REAL64` value
         do
            ENSURE_DEALLOCATED(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if(is_iostat_ok(ios))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strRealDim0KindREAL64
      pure function strRealDim0KindREAL128(x) result(ret)
         Real(kind=REAL128), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=INT64):: lenBuf
         Integer:: ios

         lenBuf = 32 ! enough length to dump `REAL64` value
         do
            ENSURE_DEALLOCATED(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if(is_iostat_ok(ios))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strRealDim0KindREAL128
      pure function strComplexDim0KindREAL32(x) result(ret)
         Complex(kind=REAL32), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=INT64):: lenBuf
         Integer:: ios

         lenBuf = 32 ! enough length to dump `REAL64` value
         do
            ENSURE_DEALLOCATED(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if(is_iostat_ok(ios))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strComplexDim0KindREAL32
      pure function strComplexDim0KindREAL64(x) result(ret)
         Complex(kind=REAL64), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=INT64):: lenBuf
         Integer:: ios

         lenBuf = 32 ! enough length to dump `REAL64` value
         do
            ENSURE_DEALLOCATED(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if(is_iostat_ok(ios))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strComplexDim0KindREAL64
      pure function strComplexDim0KindREAL128(x) result(ret)
         Complex(kind=REAL128), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=INT64):: lenBuf
         Integer:: ios

         lenBuf = 32 ! enough length to dump `REAL64` value
         do
            ENSURE_DEALLOCATED(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if(is_iostat_ok(ios))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strComplexDim0KindREAL128
      pure function strCharacterDim0LenAsterisk(x) result(ret)
         Character(len=*), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=INT64):: lenBuf
         Integer:: ios

         lenBuf = 32 ! enough length to dump `REAL64` value
         do
            ENSURE_DEALLOCATED(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if(is_iostat_ok(ios))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strCharacterDim0LenAsterisk
      pure function strCharacterDim1LenAsterisk(x) result(ret)
         Character(len=*), dimension(:), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=INT64):: lenBuf
         Integer:: ios

         lenBuf = 32 ! enough length to dump `REAL64` value
         do
            ENSURE_DEALLOCATED(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if(is_iostat_ok(ios))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strCharacterDim1LenAsterisk
      pure function strCharacterDim2LenAsterisk(x) result(ret)
         Character(len=*), dimension(:, :), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=INT64):: lenBuf
         Integer:: ios

         lenBuf = 32 ! enough length to dump `REAL64` value
         do
            ENSURE_DEALLOCATED(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if(is_iostat_ok(ios))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strCharacterDim2LenAsterisk
      pure function strCharacterDim3LenAsterisk(x) result(ret)
         Character(len=*), dimension(:, :, :), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=INT64):: lenBuf
         Integer:: ios

         lenBuf = 32 ! enough length to dump `REAL64` value
         do
            ENSURE_DEALLOCATED(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if(is_iostat_ok(ios))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strCharacterDim3LenAsterisk
      pure function strCharacterDim4LenAsterisk(x) result(ret)
         Character(len=*), dimension(:, :, :, :), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=INT64):: lenBuf
         Integer:: ios

         lenBuf = 32 ! enough length to dump `REAL64` value
         do
            ENSURE_DEALLOCATED(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if(is_iostat_ok(ios))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strCharacterDim4LenAsterisk
      pure function strCharacterDim5LenAsterisk(x) result(ret)
         Character(len=*), dimension(:, :, :, :, :), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=INT64):: lenBuf
         Integer:: ios

         lenBuf = 32 ! enough length to dump `REAL64` value
         do
            ENSURE_DEALLOCATED(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if(is_iostat_ok(ios))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strCharacterDim5LenAsterisk
      pure function strCharacterDim6LenAsterisk(x) result(ret)
         Character(len=*), dimension(:, :, :, :, :, :), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=INT64):: lenBuf
         Integer:: ios

         lenBuf = 32 ! enough length to dump `REAL64` value
         do
            ENSURE_DEALLOCATED(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if(is_iostat_ok(ios))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strCharacterDim6LenAsterisk
      pure function strCharacterDim7LenAsterisk(x) result(ret)
         Character(len=*), dimension(:, :, :, :, :, :, :), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=INT64):: lenBuf
         Integer:: ios

         lenBuf = 32 ! enough length to dump `REAL64` value
         do
            ENSURE_DEALLOCATED(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if(is_iostat_ok(ios))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strCharacterDim7LenAsterisk
      pure function strIntegerDim0KindINT8(x) result(ret)
         Integer(kind=INT8), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=INT64):: lenBuf
         Integer:: ios

         lenBuf = 32 ! enough length to dump `REAL64` value
         do
            ENSURE_DEALLOCATED(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if(is_iostat_ok(ios))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strIntegerDim0KindINT8
      pure function strIntegerDim0KindINT16(x) result(ret)
         Integer(kind=INT16), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=INT64):: lenBuf
         Integer:: ios

         lenBuf = 32 ! enough length to dump `REAL64` value
         do
            ENSURE_DEALLOCATED(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if(is_iostat_ok(ios))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strIntegerDim0KindINT16
      pure function strIntegerDim0KindINT32(x) result(ret)
         Integer(kind=INT32), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=INT64):: lenBuf
         Integer:: ios

         lenBuf = 32 ! enough length to dump `REAL64` value
         do
            ENSURE_DEALLOCATED(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if(is_iostat_ok(ios))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strIntegerDim0KindINT32
      pure function strIntegerDim0KindINT64(x) result(ret)
         Integer(kind=INT64), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=INT64):: lenBuf
         Integer:: ios

         lenBuf = 32 ! enough length to dump `REAL64` value
         do
            ENSURE_DEALLOCATED(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if(is_iostat_ok(ios))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strIntegerDim0KindINT64
end module character_lib
