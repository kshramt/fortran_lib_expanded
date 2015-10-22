module config_lib
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: int8, int16, int32, int64, real32, real64, real128
   implicit none
   private
   public:: get_config_value
   interface get_config_value
          module procedure get_config_valueLogicalDim0Kindint8
          module procedure get_config_valueLogicalDim0Kindint16
          module procedure get_config_valueLogicalDim0Kindint32
          module procedure get_config_valueLogicalDim0Kindint64
          module procedure get_config_valueIntegerDim0Kindint8
          module procedure get_config_valueIntegerDim0Kindint16
          module procedure get_config_valueIntegerDim0Kindint32
          module procedure get_config_valueIntegerDim0Kindint64
          module procedure get_config_valueRealDim0Kindreal32
          module procedure get_config_valueRealDim0Kindreal64
          module procedure get_config_valueRealDim0Kindreal128
          module procedure get_config_valueComplexDim0Kindreal32
          module procedure get_config_valueComplexDim0Kindreal64
          module procedure get_config_valueComplexDim0Kindreal128
          module procedure get_config_valueCharacterDim0LenAsterisk
   end interface get_config_value
contains
      function get_config_valueLogicalDim0Kindint8(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Logical(kind=int8), intent(out):: value
         Logical:: isKeyExist
         Integer:: ios
         Character(len = len_trim(key) + 1):: keyBuf
         rewind(io)
         isKeyExist = .false.
         do
            read(io, *, iostat = ios) keyBuf
            if(keyBuf == key)then
               backspace(io)
               read(io, *) keyBuf, value
               isKeyExist = .true.
               return
            end if
            if(ios /= 0) exit
         end do
      end function get_config_valueLogicalDim0Kindint8
      function get_config_valueLogicalDim0Kindint16(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Logical(kind=int16), intent(out):: value
         Logical:: isKeyExist
         Integer:: ios
         Character(len = len_trim(key) + 1):: keyBuf
         rewind(io)
         isKeyExist = .false.
         do
            read(io, *, iostat = ios) keyBuf
            if(keyBuf == key)then
               backspace(io)
               read(io, *) keyBuf, value
               isKeyExist = .true.
               return
            end if
            if(ios /= 0) exit
         end do
      end function get_config_valueLogicalDim0Kindint16
      function get_config_valueLogicalDim0Kindint32(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Logical(kind=int32), intent(out):: value
         Logical:: isKeyExist
         Integer:: ios
         Character(len = len_trim(key) + 1):: keyBuf
         rewind(io)
         isKeyExist = .false.
         do
            read(io, *, iostat = ios) keyBuf
            if(keyBuf == key)then
               backspace(io)
               read(io, *) keyBuf, value
               isKeyExist = .true.
               return
            end if
            if(ios /= 0) exit
         end do
      end function get_config_valueLogicalDim0Kindint32
      function get_config_valueLogicalDim0Kindint64(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Logical(kind=int64), intent(out):: value
         Logical:: isKeyExist
         Integer:: ios
         Character(len = len_trim(key) + 1):: keyBuf
         rewind(io)
         isKeyExist = .false.
         do
            read(io, *, iostat = ios) keyBuf
            if(keyBuf == key)then
               backspace(io)
               read(io, *) keyBuf, value
               isKeyExist = .true.
               return
            end if
            if(ios /= 0) exit
         end do
      end function get_config_valueLogicalDim0Kindint64
      function get_config_valueIntegerDim0Kindint8(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Integer(kind=int8), intent(out):: value
         Logical:: isKeyExist
         Integer:: ios
         Character(len = len_trim(key) + 1):: keyBuf
         rewind(io)
         isKeyExist = .false.
         do
            read(io, *, iostat = ios) keyBuf
            if(keyBuf == key)then
               backspace(io)
               read(io, *) keyBuf, value
               isKeyExist = .true.
               return
            end if
            if(ios /= 0) exit
         end do
      end function get_config_valueIntegerDim0Kindint8
      function get_config_valueIntegerDim0Kindint16(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Integer(kind=int16), intent(out):: value
         Logical:: isKeyExist
         Integer:: ios
         Character(len = len_trim(key) + 1):: keyBuf
         rewind(io)
         isKeyExist = .false.
         do
            read(io, *, iostat = ios) keyBuf
            if(keyBuf == key)then
               backspace(io)
               read(io, *) keyBuf, value
               isKeyExist = .true.
               return
            end if
            if(ios /= 0) exit
         end do
      end function get_config_valueIntegerDim0Kindint16
      function get_config_valueIntegerDim0Kindint32(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Integer(kind=int32), intent(out):: value
         Logical:: isKeyExist
         Integer:: ios
         Character(len = len_trim(key) + 1):: keyBuf
         rewind(io)
         isKeyExist = .false.
         do
            read(io, *, iostat = ios) keyBuf
            if(keyBuf == key)then
               backspace(io)
               read(io, *) keyBuf, value
               isKeyExist = .true.
               return
            end if
            if(ios /= 0) exit
         end do
      end function get_config_valueIntegerDim0Kindint32
      function get_config_valueIntegerDim0Kindint64(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Integer(kind=int64), intent(out):: value
         Logical:: isKeyExist
         Integer:: ios
         Character(len = len_trim(key) + 1):: keyBuf
         rewind(io)
         isKeyExist = .false.
         do
            read(io, *, iostat = ios) keyBuf
            if(keyBuf == key)then
               backspace(io)
               read(io, *) keyBuf, value
               isKeyExist = .true.
               return
            end if
            if(ios /= 0) exit
         end do
      end function get_config_valueIntegerDim0Kindint64
      function get_config_valueRealDim0Kindreal32(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Real(kind=real32), intent(out):: value
         Logical:: isKeyExist
         Integer:: ios
         Character(len = len_trim(key) + 1):: keyBuf
         rewind(io)
         isKeyExist = .false.
         do
            read(io, *, iostat = ios) keyBuf
            if(keyBuf == key)then
               backspace(io)
               read(io, *) keyBuf, value
               isKeyExist = .true.
               return
            end if
            if(ios /= 0) exit
         end do
      end function get_config_valueRealDim0Kindreal32
      function get_config_valueRealDim0Kindreal64(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Real(kind=real64), intent(out):: value
         Logical:: isKeyExist
         Integer:: ios
         Character(len = len_trim(key) + 1):: keyBuf
         rewind(io)
         isKeyExist = .false.
         do
            read(io, *, iostat = ios) keyBuf
            if(keyBuf == key)then
               backspace(io)
               read(io, *) keyBuf, value
               isKeyExist = .true.
               return
            end if
            if(ios /= 0) exit
         end do
      end function get_config_valueRealDim0Kindreal64
      function get_config_valueRealDim0Kindreal128(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Real(kind=real128), intent(out):: value
         Logical:: isKeyExist
         Integer:: ios
         Character(len = len_trim(key) + 1):: keyBuf
         rewind(io)
         isKeyExist = .false.
         do
            read(io, *, iostat = ios) keyBuf
            if(keyBuf == key)then
               backspace(io)
               read(io, *) keyBuf, value
               isKeyExist = .true.
               return
            end if
            if(ios /= 0) exit
         end do
      end function get_config_valueRealDim0Kindreal128
      function get_config_valueComplexDim0Kindreal32(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Complex(kind=real32), intent(out):: value
         Logical:: isKeyExist
         Integer:: ios
         Character(len = len_trim(key) + 1):: keyBuf
         rewind(io)
         isKeyExist = .false.
         do
            read(io, *, iostat = ios) keyBuf
            if(keyBuf == key)then
               backspace(io)
               read(io, *) keyBuf, value
               isKeyExist = .true.
               return
            end if
            if(ios /= 0) exit
         end do
      end function get_config_valueComplexDim0Kindreal32
      function get_config_valueComplexDim0Kindreal64(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Complex(kind=real64), intent(out):: value
         Logical:: isKeyExist
         Integer:: ios
         Character(len = len_trim(key) + 1):: keyBuf
         rewind(io)
         isKeyExist = .false.
         do
            read(io, *, iostat = ios) keyBuf
            if(keyBuf == key)then
               backspace(io)
               read(io, *) keyBuf, value
               isKeyExist = .true.
               return
            end if
            if(ios /= 0) exit
         end do
      end function get_config_valueComplexDim0Kindreal64
      function get_config_valueComplexDim0Kindreal128(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Complex(kind=real128), intent(out):: value
         Logical:: isKeyExist
         Integer:: ios
         Character(len = len_trim(key) + 1):: keyBuf
         rewind(io)
         isKeyExist = .false.
         do
            read(io, *, iostat = ios) keyBuf
            if(keyBuf == key)then
               backspace(io)
               read(io, *) keyBuf, value
               isKeyExist = .true.
               return
            end if
            if(ios /= 0) exit
         end do
      end function get_config_valueComplexDim0Kindreal128
      function get_config_valueCharacterDim0LenAsterisk(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Character(len=*), intent(out):: value
         Logical:: isKeyExist
         Integer:: ios
         Character(len = len_trim(key) + 1):: keyBuf
         rewind(io)
         isKeyExist = .false.
         do
            read(io, *, iostat = ios) keyBuf
            if(keyBuf == key)then
               backspace(io)
               read(io, *) keyBuf, value
               isKeyExist = .true.
               return
            end if
            if(ios /= 0) exit
         end do
      end function get_config_valueCharacterDim0LenAsterisk
end module config_lib
