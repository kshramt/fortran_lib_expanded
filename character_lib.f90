module character_lib
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: int8, int16, int32, int64, real32, real64, real128
   use, intrinsic:: iso_fortran_env, only: int8, int64
   implicit none
   private
   public:: lower, upper
   public:: replace ! replace all substring `from` in string `s` to `to`
   public:: s ! Same as String#strip method in Ruby.
   public:: operator(+) ! Syntax sugar of `//'. This will be useful if you want to use `//' within macro where `//' is discarded.
   public:: str ! Convert a value to a string.
   interface operator(+)
      module procedure add
   end interface operator(+)
   interface lower
      module procedure lower
   end interface lower
   interface upper
      module procedure upper
   end interface upper
   interface replace
      module procedure replace
   end interface replace
   interface s
      module procedure s
   end interface s
      interface str
         module procedure strLogicalDim0Kindint8
      end interface str
      interface str
         module procedure strLogicalDim0Kindint16
      end interface str
      interface str
         module procedure strLogicalDim0Kindint32
      end interface str
      interface str
         module procedure strLogicalDim0Kindint64
      end interface str
      interface str
         module procedure strRealDim0Kindreal32
      end interface str
      interface str
         module procedure strRealDim0Kindreal64
      end interface str
      interface str
         module procedure strRealDim0Kindreal128
      end interface str
      interface str
         module procedure strComplexDim0Kindreal32
      end interface str
      interface str
         module procedure strComplexDim0Kindreal64
      end interface str
      interface str
         module procedure strComplexDim0Kindreal128
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
         module procedure strIntegerDim0Kindint8
      end interface str
      interface str
         module procedure strIntegerDim0Kindint16
      end interface str
      interface str
         module procedure strIntegerDim0Kindint32
      end interface str
      interface str
         module procedure strIntegerDim0Kindint64
      end interface str
   Integer(kind=int8), parameter, public:: inc_upper_to_lower = iachar('a') - iachar('A')
contains
      elemental function upper(s) result(ret)
         Integer(kind=kind(inc_upper_to_lower)), parameter:: ia = iachar('a')
         Integer(kind=kind(inc_upper_to_lower)), parameter:: iz = iachar('z')
         Character(len=*), intent(in):: s
         Character(len=len(s), kind=kind(s)):: ret
         Character(len=1, kind=kind(s)):: si
         Integer(kind=int64):: isi
         Integer(kind=int64):: i
         do i = 1, len(s, kind=kind(i))
            si = s(i:i)
            isi = iachar(si)
            if(ia <= isi .and. isi <= iz)then
               ret(i:i) = achar(isi - inc_upper_to_lower)
            else
               ret(i:i) = si
            end if
         end do
      end function upper
      elemental function lower(s) result(ret)
         Integer(kind=kind(inc_upper_to_lower)), parameter:: iA = iachar('A')
         Integer(kind=kind(inc_upper_to_lower)), parameter:: iZ = iachar('Z')
         Character(len=*), intent(in):: s
         Character(len=len(s), kind=kind(s)):: ret
         Character(len=1, kind=kind(s)):: si
         Integer(kind=int64):: isi
         Integer(kind=int64):: i
         do i = 1, len(s, kind=kind(i))
            si = s(i:i)
            isi = iachar(si)
            if(iA <= isi .and. isi <= iZ)then
               ret(i:i) = achar(isi + inc_upper_to_lower)
            else
               ret(i:i) = si
            end if
         end do
      end function lower
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
      Integer(kind=int64):: ret
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
      pure function strLogicalDim0Kindint8(x) result(ret)
         Logical(kind=int8), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strLogicalDim0Kindint8
      pure function strLogicalDim0Kindint16(x) result(ret)
         Logical(kind=int16), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strLogicalDim0Kindint16
      pure function strLogicalDim0Kindint32(x) result(ret)
         Logical(kind=int32), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strLogicalDim0Kindint32
      pure function strLogicalDim0Kindint64(x) result(ret)
         Logical(kind=int64), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strLogicalDim0Kindint64
      pure function strRealDim0Kindreal32(x) result(ret)
         Real(kind=real32), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strRealDim0Kindreal32
      pure function strRealDim0Kindreal64(x) result(ret)
         Real(kind=real64), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strRealDim0Kindreal64
      pure function strRealDim0Kindreal128(x) result(ret)
         Real(kind=real128), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strRealDim0Kindreal128
      pure function strComplexDim0Kindreal32(x) result(ret)
         Complex(kind=real32), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strComplexDim0Kindreal32
      pure function strComplexDim0Kindreal64(x) result(ret)
         Complex(kind=real64), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strComplexDim0Kindreal64
      pure function strComplexDim0Kindreal128(x) result(ret)
         Complex(kind=real128), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strComplexDim0Kindreal128
      pure function strCharacterDim0LenAsterisk(x) result(ret)
         Character(len=*), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
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
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
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
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
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
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
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
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
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
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
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
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
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
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strCharacterDim7LenAsterisk
      pure function strIntegerDim0Kindint8(x) result(ret)
         Integer(kind=int8), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strIntegerDim0Kindint8
      pure function strIntegerDim0Kindint16(x) result(ret)
         Integer(kind=int16), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strIntegerDim0Kindint16
      pure function strIntegerDim0Kindint32(x) result(ret)
         Integer(kind=int32), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strIntegerDim0Kindint32
      pure function strIntegerDim0Kindint64(x) result(ret)
         Integer(kind=int64), intent(in):: x
         character(len=:), allocatable:: buf
         character(len=:), allocatable:: ret
         Integer(kind=int64):: lenBuf
         Integer:: ios
         lenBuf = 64 ! enough length to dump `real128` value
         do
            if(allocated(buf)) deallocate(buf)
            allocate(Character(lenBuf):: buf)
            write(buf, *, iostat=ios) x
            if((ios == 0))then
               exit
            else
               lenBuf = 2*lenBuf
            end if
         end do
         ret = s(buf)
      end function strIntegerDim0Kindint64
end module character_lib
