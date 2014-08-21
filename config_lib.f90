module config_lib
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
   implicit none
   private
   public:: get_config_value
   interface get_config_value
          module procedure get_config_valueLogicalDim0
          module procedure get_config_valueIntegerDim0KindINT8
          module procedure get_config_valueIntegerDim0KindINT16
          module procedure get_config_valueIntegerDim0KindINT32
          module procedure get_config_valueIntegerDim0KindINT64
          module procedure get_config_valueRealDim0KindREAL32
          module procedure get_config_valueRealDim0KindREAL64
          module procedure get_config_valueRealDim0KindREAL128
          module procedure get_config_valueComplexDim0KindREAL32
          module procedure get_config_valueComplexDim0KindREAL64
          module procedure get_config_valueComplexDim0KindREAL128
          module procedure get_config_valueCharacterDim0LenAsterisk
   end interface get_config_value
contains
      function get_config_valueLogicalDim0(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Logical, intent(out):: value
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
      end function get_config_valueLogicalDim0
      function get_config_valueIntegerDim0KindINT8(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Integer(kind=INT8), intent(out):: value
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
      end function get_config_valueIntegerDim0KindINT8
      function get_config_valueIntegerDim0KindINT16(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Integer(kind=INT16), intent(out):: value
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
      end function get_config_valueIntegerDim0KindINT16
      function get_config_valueIntegerDim0KindINT32(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Integer(kind=INT32), intent(out):: value
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
      end function get_config_valueIntegerDim0KindINT32
      function get_config_valueIntegerDim0KindINT64(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Integer(kind=INT64), intent(out):: value
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
      end function get_config_valueIntegerDim0KindINT64
      function get_config_valueRealDim0KindREAL32(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Real(kind=REAL32), intent(out):: value
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
      end function get_config_valueRealDim0KindREAL32
      function get_config_valueRealDim0KindREAL64(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Real(kind=REAL64), intent(out):: value
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
      end function get_config_valueRealDim0KindREAL64
      function get_config_valueRealDim0KindREAL128(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Real(kind=REAL128), intent(out):: value
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
      end function get_config_valueRealDim0KindREAL128
      function get_config_valueComplexDim0KindREAL32(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Complex(kind=REAL32), intent(out):: value
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
      end function get_config_valueComplexDim0KindREAL32
      function get_config_valueComplexDim0KindREAL64(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Complex(kind=REAL64), intent(out):: value
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
      end function get_config_valueComplexDim0KindREAL64
      function get_config_valueComplexDim0KindREAL128(io, key, value) result(isKeyExist)
         Integer:: io
         Character(len=*), intent(in):: key
         Complex(kind=REAL128), intent(out):: value
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
      end function get_config_valueComplexDim0KindREAL128
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
