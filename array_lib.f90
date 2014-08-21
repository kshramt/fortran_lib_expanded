module array_lib
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   implicit none
   private
   public:: get
   public:: eye
   public:: l2_norm
   public:: iota
      interface get
         module procedure getComplexDim1KindREAL32IntegerDim0KindINT8
      end interface get
      interface get
         module procedure getComplexDim1KindREAL32IntegerDim0KindINT16
      end interface get
      interface get
         module procedure getComplexDim1KindREAL32IntegerDim0KindINT32
      end interface get
      interface get
         module procedure getComplexDim1KindREAL32IntegerDim0KindINT64
      end interface get
      interface get
         module procedure getComplexDim1KindREAL64IntegerDim0KindINT8
      end interface get
      interface get
         module procedure getComplexDim1KindREAL64IntegerDim0KindINT16
      end interface get
      interface get
         module procedure getComplexDim1KindREAL64IntegerDim0KindINT32
      end interface get
      interface get
         module procedure getComplexDim1KindREAL64IntegerDim0KindINT64
      end interface get
      interface get
         module procedure getComplexDim1KindREAL128IntegerDim0KindINT8
      end interface get
      interface get
         module procedure getComplexDim1KindREAL128IntegerDim0KindINT16
      end interface get
      interface get
         module procedure getComplexDim1KindREAL128IntegerDim0KindINT32
      end interface get
      interface get
         module procedure getComplexDim1KindREAL128IntegerDim0KindINT64
      end interface get
      interface get
         module procedure getLogicalDim1KindINT8IntegerDim0KindINT8
      end interface get
      interface get
         module procedure getLogicalDim1KindINT8IntegerDim0KindINT16
      end interface get
      interface get
         module procedure getLogicalDim1KindINT8IntegerDim0KindINT32
      end interface get
      interface get
         module procedure getLogicalDim1KindINT8IntegerDim0KindINT64
      end interface get
      interface get
         module procedure getLogicalDim1KindINT16IntegerDim0KindINT8
      end interface get
      interface get
         module procedure getLogicalDim1KindINT16IntegerDim0KindINT16
      end interface get
      interface get
         module procedure getLogicalDim1KindINT16IntegerDim0KindINT32
      end interface get
      interface get
         module procedure getLogicalDim1KindINT16IntegerDim0KindINT64
      end interface get
      interface get
         module procedure getLogicalDim1KindINT32IntegerDim0KindINT8
      end interface get
      interface get
         module procedure getLogicalDim1KindINT32IntegerDim0KindINT16
      end interface get
      interface get
         module procedure getLogicalDim1KindINT32IntegerDim0KindINT32
      end interface get
      interface get
         module procedure getLogicalDim1KindINT32IntegerDim0KindINT64
      end interface get
      interface get
         module procedure getLogicalDim1KindINT64IntegerDim0KindINT8
      end interface get
      interface get
         module procedure getLogicalDim1KindINT64IntegerDim0KindINT16
      end interface get
      interface get
         module procedure getLogicalDim1KindINT64IntegerDim0KindINT32
      end interface get
      interface get
         module procedure getLogicalDim1KindINT64IntegerDim0KindINT64
      end interface get
      interface get
         module procedure getIntegerDim1KindINT8IntegerDim0KindINT8
      end interface get
      interface get
         module procedure getIntegerDim1KindINT8IntegerDim0KindINT16
      end interface get
      interface get
         module procedure getIntegerDim1KindINT8IntegerDim0KindINT32
      end interface get
      interface get
         module procedure getIntegerDim1KindINT8IntegerDim0KindINT64
      end interface get
      interface get
         module procedure getIntegerDim1KindINT16IntegerDim0KindINT8
      end interface get
      interface get
         module procedure getIntegerDim1KindINT16IntegerDim0KindINT16
      end interface get
      interface get
         module procedure getIntegerDim1KindINT16IntegerDim0KindINT32
      end interface get
      interface get
         module procedure getIntegerDim1KindINT16IntegerDim0KindINT64
      end interface get
      interface get
         module procedure getIntegerDim1KindINT32IntegerDim0KindINT8
      end interface get
      interface get
         module procedure getIntegerDim1KindINT32IntegerDim0KindINT16
      end interface get
      interface get
         module procedure getIntegerDim1KindINT32IntegerDim0KindINT32
      end interface get
      interface get
         module procedure getIntegerDim1KindINT32IntegerDim0KindINT64
      end interface get
      interface get
         module procedure getIntegerDim1KindINT64IntegerDim0KindINT8
      end interface get
      interface get
         module procedure getIntegerDim1KindINT64IntegerDim0KindINT16
      end interface get
      interface get
         module procedure getIntegerDim1KindINT64IntegerDim0KindINT32
      end interface get
      interface get
         module procedure getIntegerDim1KindINT64IntegerDim0KindINT64
      end interface get
      interface get
         module procedure getRealDim1KindREAL32IntegerDim0KindINT8
      end interface get
      interface get
         module procedure getRealDim1KindREAL32IntegerDim0KindINT16
      end interface get
      interface get
         module procedure getRealDim1KindREAL32IntegerDim0KindINT32
      end interface get
      interface get
         module procedure getRealDim1KindREAL32IntegerDim0KindINT64
      end interface get
      interface get
         module procedure getRealDim1KindREAL64IntegerDim0KindINT8
      end interface get
      interface get
         module procedure getRealDim1KindREAL64IntegerDim0KindINT16
      end interface get
      interface get
         module procedure getRealDim1KindREAL64IntegerDim0KindINT32
      end interface get
      interface get
         module procedure getRealDim1KindREAL64IntegerDim0KindINT64
      end interface get
      interface get
         module procedure getRealDim1KindREAL128IntegerDim0KindINT8
      end interface get
      interface get
         module procedure getRealDim1KindREAL128IntegerDim0KindINT16
      end interface get
      interface get
         module procedure getRealDim1KindREAL128IntegerDim0KindINT32
      end interface get
      interface get
         module procedure getRealDim1KindREAL128IntegerDim0KindINT64
      end interface get
      interface eye
         module procedure eye_mnIntegerDim0KindINT8
         module procedure eye_nIntegerDim0KindINT8
      end interface eye
      interface eye
         module procedure eye_mnIntegerDim0KindINT16
         module procedure eye_nIntegerDim0KindINT16
      end interface eye
      interface eye
         module procedure eye_mnIntegerDim0KindINT32
         module procedure eye_nIntegerDim0KindINT32
      end interface eye
      interface eye
         module procedure eye_mnIntegerDim0KindINT64
         module procedure eye_nIntegerDim0KindINT64
      end interface eye
      interface l2_norm
         module procedure l2_normRealDim1KindREAL32
      end interface l2_norm
      interface l2_norm
         module procedure l2_normRealDim1KindREAL64
      end interface l2_norm
      interface l2_norm
         module procedure l2_normRealDim1KindREAL128
      end interface l2_norm
      interface iota
         module procedure iota_1T1
      end interface iota
      interface get_iota_size
         module procedure get_iota_size_1T1
      end interface get_iota_size
         interface iota
            module procedure iota_2T1T1
         end interface iota
         interface get_iota_size
            module procedure get_iota_size_2T1T1
         end interface get_iota_size
            interface iota
               module procedure iota_3T1T1T1
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T1T1T1
            end interface get_iota_size
            interface iota
               module procedure iota_3T1T1T2
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T1T1T2
            end interface get_iota_size
            interface iota
               module procedure iota_3T1T1T3
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T1T1T3
            end interface get_iota_size
            interface iota
               module procedure iota_3T1T1T4
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T1T1T4
            end interface get_iota_size
         interface iota
            module procedure iota_2T1T2
         end interface iota
         interface get_iota_size
            module procedure get_iota_size_2T1T2
         end interface get_iota_size
            interface iota
               module procedure iota_3T1T2T1
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T1T2T1
            end interface get_iota_size
            interface iota
               module procedure iota_3T1T2T2
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T1T2T2
            end interface get_iota_size
            interface iota
               module procedure iota_3T1T2T3
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T1T2T3
            end interface get_iota_size
            interface iota
               module procedure iota_3T1T2T4
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T1T2T4
            end interface get_iota_size
         interface iota
            module procedure iota_2T1T3
         end interface iota
         interface get_iota_size
            module procedure get_iota_size_2T1T3
         end interface get_iota_size
            interface iota
               module procedure iota_3T1T3T1
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T1T3T1
            end interface get_iota_size
            interface iota
               module procedure iota_3T1T3T2
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T1T3T2
            end interface get_iota_size
            interface iota
               module procedure iota_3T1T3T3
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T1T3T3
            end interface get_iota_size
            interface iota
               module procedure iota_3T1T3T4
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T1T3T4
            end interface get_iota_size
         interface iota
            module procedure iota_2T1T4
         end interface iota
         interface get_iota_size
            module procedure get_iota_size_2T1T4
         end interface get_iota_size
            interface iota
               module procedure iota_3T1T4T1
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T1T4T1
            end interface get_iota_size
            interface iota
               module procedure iota_3T1T4T2
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T1T4T2
            end interface get_iota_size
            interface iota
               module procedure iota_3T1T4T3
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T1T4T3
            end interface get_iota_size
            interface iota
               module procedure iota_3T1T4T4
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T1T4T4
            end interface get_iota_size
      interface iota
         module procedure iota_1T2
      end interface iota
      interface get_iota_size
         module procedure get_iota_size_1T2
      end interface get_iota_size
         interface iota
            module procedure iota_2T2T1
         end interface iota
         interface get_iota_size
            module procedure get_iota_size_2T2T1
         end interface get_iota_size
            interface iota
               module procedure iota_3T2T1T1
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T2T1T1
            end interface get_iota_size
            interface iota
               module procedure iota_3T2T1T2
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T2T1T2
            end interface get_iota_size
            interface iota
               module procedure iota_3T2T1T3
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T2T1T3
            end interface get_iota_size
            interface iota
               module procedure iota_3T2T1T4
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T2T1T4
            end interface get_iota_size
         interface iota
            module procedure iota_2T2T2
         end interface iota
         interface get_iota_size
            module procedure get_iota_size_2T2T2
         end interface get_iota_size
            interface iota
               module procedure iota_3T2T2T1
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T2T2T1
            end interface get_iota_size
            interface iota
               module procedure iota_3T2T2T2
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T2T2T2
            end interface get_iota_size
            interface iota
               module procedure iota_3T2T2T3
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T2T2T3
            end interface get_iota_size
            interface iota
               module procedure iota_3T2T2T4
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T2T2T4
            end interface get_iota_size
         interface iota
            module procedure iota_2T2T3
         end interface iota
         interface get_iota_size
            module procedure get_iota_size_2T2T3
         end interface get_iota_size
            interface iota
               module procedure iota_3T2T3T1
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T2T3T1
            end interface get_iota_size
            interface iota
               module procedure iota_3T2T3T2
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T2T3T2
            end interface get_iota_size
            interface iota
               module procedure iota_3T2T3T3
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T2T3T3
            end interface get_iota_size
            interface iota
               module procedure iota_3T2T3T4
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T2T3T4
            end interface get_iota_size
         interface iota
            module procedure iota_2T2T4
         end interface iota
         interface get_iota_size
            module procedure get_iota_size_2T2T4
         end interface get_iota_size
            interface iota
               module procedure iota_3T2T4T1
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T2T4T1
            end interface get_iota_size
            interface iota
               module procedure iota_3T2T4T2
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T2T4T2
            end interface get_iota_size
            interface iota
               module procedure iota_3T2T4T3
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T2T4T3
            end interface get_iota_size
            interface iota
               module procedure iota_3T2T4T4
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T2T4T4
            end interface get_iota_size
      interface iota
         module procedure iota_1T3
      end interface iota
      interface get_iota_size
         module procedure get_iota_size_1T3
      end interface get_iota_size
         interface iota
            module procedure iota_2T3T1
         end interface iota
         interface get_iota_size
            module procedure get_iota_size_2T3T1
         end interface get_iota_size
            interface iota
               module procedure iota_3T3T1T1
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T3T1T1
            end interface get_iota_size
            interface iota
               module procedure iota_3T3T1T2
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T3T1T2
            end interface get_iota_size
            interface iota
               module procedure iota_3T3T1T3
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T3T1T3
            end interface get_iota_size
            interface iota
               module procedure iota_3T3T1T4
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T3T1T4
            end interface get_iota_size
         interface iota
            module procedure iota_2T3T2
         end interface iota
         interface get_iota_size
            module procedure get_iota_size_2T3T2
         end interface get_iota_size
            interface iota
               module procedure iota_3T3T2T1
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T3T2T1
            end interface get_iota_size
            interface iota
               module procedure iota_3T3T2T2
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T3T2T2
            end interface get_iota_size
            interface iota
               module procedure iota_3T3T2T3
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T3T2T3
            end interface get_iota_size
            interface iota
               module procedure iota_3T3T2T4
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T3T2T4
            end interface get_iota_size
         interface iota
            module procedure iota_2T3T3
         end interface iota
         interface get_iota_size
            module procedure get_iota_size_2T3T3
         end interface get_iota_size
            interface iota
               module procedure iota_3T3T3T1
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T3T3T1
            end interface get_iota_size
            interface iota
               module procedure iota_3T3T3T2
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T3T3T2
            end interface get_iota_size
            interface iota
               module procedure iota_3T3T3T3
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T3T3T3
            end interface get_iota_size
            interface iota
               module procedure iota_3T3T3T4
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T3T3T4
            end interface get_iota_size
         interface iota
            module procedure iota_2T3T4
         end interface iota
         interface get_iota_size
            module procedure get_iota_size_2T3T4
         end interface get_iota_size
            interface iota
               module procedure iota_3T3T4T1
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T3T4T1
            end interface get_iota_size
            interface iota
               module procedure iota_3T3T4T2
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T3T4T2
            end interface get_iota_size
            interface iota
               module procedure iota_3T3T4T3
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T3T4T3
            end interface get_iota_size
            interface iota
               module procedure iota_3T3T4T4
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T3T4T4
            end interface get_iota_size
      interface iota
         module procedure iota_1T4
      end interface iota
      interface get_iota_size
         module procedure get_iota_size_1T4
      end interface get_iota_size
         interface iota
            module procedure iota_2T4T1
         end interface iota
         interface get_iota_size
            module procedure get_iota_size_2T4T1
         end interface get_iota_size
            interface iota
               module procedure iota_3T4T1T1
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T4T1T1
            end interface get_iota_size
            interface iota
               module procedure iota_3T4T1T2
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T4T1T2
            end interface get_iota_size
            interface iota
               module procedure iota_3T4T1T3
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T4T1T3
            end interface get_iota_size
            interface iota
               module procedure iota_3T4T1T4
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T4T1T4
            end interface get_iota_size
         interface iota
            module procedure iota_2T4T2
         end interface iota
         interface get_iota_size
            module procedure get_iota_size_2T4T2
         end interface get_iota_size
            interface iota
               module procedure iota_3T4T2T1
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T4T2T1
            end interface get_iota_size
            interface iota
               module procedure iota_3T4T2T2
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T4T2T2
            end interface get_iota_size
            interface iota
               module procedure iota_3T4T2T3
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T4T2T3
            end interface get_iota_size
            interface iota
               module procedure iota_3T4T2T4
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T4T2T4
            end interface get_iota_size
         interface iota
            module procedure iota_2T4T3
         end interface iota
         interface get_iota_size
            module procedure get_iota_size_2T4T3
         end interface get_iota_size
            interface iota
               module procedure iota_3T4T3T1
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T4T3T1
            end interface get_iota_size
            interface iota
               module procedure iota_3T4T3T2
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T4T3T2
            end interface get_iota_size
            interface iota
               module procedure iota_3T4T3T3
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T4T3T3
            end interface get_iota_size
            interface iota
               module procedure iota_3T4T3T4
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T4T3T4
            end interface get_iota_size
         interface iota
            module procedure iota_2T4T4
         end interface iota
         interface get_iota_size
            module procedure get_iota_size_2T4T4
         end interface get_iota_size
            interface iota
               module procedure iota_3T4T4T1
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T4T4T1
            end interface get_iota_size
            interface iota
               module procedure iota_3T4T4T2
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T4T4T2
            end interface get_iota_size
            interface iota
               module procedure iota_3T4T4T3
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T4T4T3
            end interface get_iota_size
            interface iota
               module procedure iota_3T4T4T4
            end interface iota
            interface get_iota_size
               module procedure get_iota_size_3T4T4T4
            end interface get_iota_size
contains
      function getComplexDim1KindREAL32IntegerDim0KindINT8(xs, i) result(ret)
         Complex(kind=REAL32), dimension(:), intent(in):: xs
         Integer(kind=INT8), intent(in):: i
         Complex(kind=REAL32):: ret
         ret = xs(i)
      end function getComplexDim1KindREAL32IntegerDim0KindINT8
      function getComplexDim1KindREAL32IntegerDim0KindINT16(xs, i) result(ret)
         Complex(kind=REAL32), dimension(:), intent(in):: xs
         Integer(kind=INT16), intent(in):: i
         Complex(kind=REAL32):: ret
         ret = xs(i)
      end function getComplexDim1KindREAL32IntegerDim0KindINT16
      function getComplexDim1KindREAL32IntegerDim0KindINT32(xs, i) result(ret)
         Complex(kind=REAL32), dimension(:), intent(in):: xs
         Integer(kind=INT32), intent(in):: i
         Complex(kind=REAL32):: ret
         ret = xs(i)
      end function getComplexDim1KindREAL32IntegerDim0KindINT32
      function getComplexDim1KindREAL32IntegerDim0KindINT64(xs, i) result(ret)
         Complex(kind=REAL32), dimension(:), intent(in):: xs
         Integer(kind=INT64), intent(in):: i
         Complex(kind=REAL32):: ret
         ret = xs(i)
      end function getComplexDim1KindREAL32IntegerDim0KindINT64
      function getComplexDim1KindREAL64IntegerDim0KindINT8(xs, i) result(ret)
         Complex(kind=REAL64), dimension(:), intent(in):: xs
         Integer(kind=INT8), intent(in):: i
         Complex(kind=REAL64):: ret
         ret = xs(i)
      end function getComplexDim1KindREAL64IntegerDim0KindINT8
      function getComplexDim1KindREAL64IntegerDim0KindINT16(xs, i) result(ret)
         Complex(kind=REAL64), dimension(:), intent(in):: xs
         Integer(kind=INT16), intent(in):: i
         Complex(kind=REAL64):: ret
         ret = xs(i)
      end function getComplexDim1KindREAL64IntegerDim0KindINT16
      function getComplexDim1KindREAL64IntegerDim0KindINT32(xs, i) result(ret)
         Complex(kind=REAL64), dimension(:), intent(in):: xs
         Integer(kind=INT32), intent(in):: i
         Complex(kind=REAL64):: ret
         ret = xs(i)
      end function getComplexDim1KindREAL64IntegerDim0KindINT32
      function getComplexDim1KindREAL64IntegerDim0KindINT64(xs, i) result(ret)
         Complex(kind=REAL64), dimension(:), intent(in):: xs
         Integer(kind=INT64), intent(in):: i
         Complex(kind=REAL64):: ret
         ret = xs(i)
      end function getComplexDim1KindREAL64IntegerDim0KindINT64
      function getComplexDim1KindREAL128IntegerDim0KindINT8(xs, i) result(ret)
         Complex(kind=REAL128), dimension(:), intent(in):: xs
         Integer(kind=INT8), intent(in):: i
         Complex(kind=REAL128):: ret
         ret = xs(i)
      end function getComplexDim1KindREAL128IntegerDim0KindINT8
      function getComplexDim1KindREAL128IntegerDim0KindINT16(xs, i) result(ret)
         Complex(kind=REAL128), dimension(:), intent(in):: xs
         Integer(kind=INT16), intent(in):: i
         Complex(kind=REAL128):: ret
         ret = xs(i)
      end function getComplexDim1KindREAL128IntegerDim0KindINT16
      function getComplexDim1KindREAL128IntegerDim0KindINT32(xs, i) result(ret)
         Complex(kind=REAL128), dimension(:), intent(in):: xs
         Integer(kind=INT32), intent(in):: i
         Complex(kind=REAL128):: ret
         ret = xs(i)
      end function getComplexDim1KindREAL128IntegerDim0KindINT32
      function getComplexDim1KindREAL128IntegerDim0KindINT64(xs, i) result(ret)
         Complex(kind=REAL128), dimension(:), intent(in):: xs
         Integer(kind=INT64), intent(in):: i
         Complex(kind=REAL128):: ret
         ret = xs(i)
      end function getComplexDim1KindREAL128IntegerDim0KindINT64
      function getLogicalDim1KindINT8IntegerDim0KindINT8(xs, i) result(ret)
         Logical(kind=INT8), dimension(:), intent(in):: xs
         Integer(kind=INT8), intent(in):: i
         Logical(kind=INT8):: ret
         ret = xs(i)
      end function getLogicalDim1KindINT8IntegerDim0KindINT8
      function getLogicalDim1KindINT8IntegerDim0KindINT16(xs, i) result(ret)
         Logical(kind=INT8), dimension(:), intent(in):: xs
         Integer(kind=INT16), intent(in):: i
         Logical(kind=INT8):: ret
         ret = xs(i)
      end function getLogicalDim1KindINT8IntegerDim0KindINT16
      function getLogicalDim1KindINT8IntegerDim0KindINT32(xs, i) result(ret)
         Logical(kind=INT8), dimension(:), intent(in):: xs
         Integer(kind=INT32), intent(in):: i
         Logical(kind=INT8):: ret
         ret = xs(i)
      end function getLogicalDim1KindINT8IntegerDim0KindINT32
      function getLogicalDim1KindINT8IntegerDim0KindINT64(xs, i) result(ret)
         Logical(kind=INT8), dimension(:), intent(in):: xs
         Integer(kind=INT64), intent(in):: i
         Logical(kind=INT8):: ret
         ret = xs(i)
      end function getLogicalDim1KindINT8IntegerDim0KindINT64
      function getLogicalDim1KindINT16IntegerDim0KindINT8(xs, i) result(ret)
         Logical(kind=INT16), dimension(:), intent(in):: xs
         Integer(kind=INT8), intent(in):: i
         Logical(kind=INT16):: ret
         ret = xs(i)
      end function getLogicalDim1KindINT16IntegerDim0KindINT8
      function getLogicalDim1KindINT16IntegerDim0KindINT16(xs, i) result(ret)
         Logical(kind=INT16), dimension(:), intent(in):: xs
         Integer(kind=INT16), intent(in):: i
         Logical(kind=INT16):: ret
         ret = xs(i)
      end function getLogicalDim1KindINT16IntegerDim0KindINT16
      function getLogicalDim1KindINT16IntegerDim0KindINT32(xs, i) result(ret)
         Logical(kind=INT16), dimension(:), intent(in):: xs
         Integer(kind=INT32), intent(in):: i
         Logical(kind=INT16):: ret
         ret = xs(i)
      end function getLogicalDim1KindINT16IntegerDim0KindINT32
      function getLogicalDim1KindINT16IntegerDim0KindINT64(xs, i) result(ret)
         Logical(kind=INT16), dimension(:), intent(in):: xs
         Integer(kind=INT64), intent(in):: i
         Logical(kind=INT16):: ret
         ret = xs(i)
      end function getLogicalDim1KindINT16IntegerDim0KindINT64
      function getLogicalDim1KindINT32IntegerDim0KindINT8(xs, i) result(ret)
         Logical(kind=INT32), dimension(:), intent(in):: xs
         Integer(kind=INT8), intent(in):: i
         Logical(kind=INT32):: ret
         ret = xs(i)
      end function getLogicalDim1KindINT32IntegerDim0KindINT8
      function getLogicalDim1KindINT32IntegerDim0KindINT16(xs, i) result(ret)
         Logical(kind=INT32), dimension(:), intent(in):: xs
         Integer(kind=INT16), intent(in):: i
         Logical(kind=INT32):: ret
         ret = xs(i)
      end function getLogicalDim1KindINT32IntegerDim0KindINT16
      function getLogicalDim1KindINT32IntegerDim0KindINT32(xs, i) result(ret)
         Logical(kind=INT32), dimension(:), intent(in):: xs
         Integer(kind=INT32), intent(in):: i
         Logical(kind=INT32):: ret
         ret = xs(i)
      end function getLogicalDim1KindINT32IntegerDim0KindINT32
      function getLogicalDim1KindINT32IntegerDim0KindINT64(xs, i) result(ret)
         Logical(kind=INT32), dimension(:), intent(in):: xs
         Integer(kind=INT64), intent(in):: i
         Logical(kind=INT32):: ret
         ret = xs(i)
      end function getLogicalDim1KindINT32IntegerDim0KindINT64
      function getLogicalDim1KindINT64IntegerDim0KindINT8(xs, i) result(ret)
         Logical(kind=INT64), dimension(:), intent(in):: xs
         Integer(kind=INT8), intent(in):: i
         Logical(kind=INT64):: ret
         ret = xs(i)
      end function getLogicalDim1KindINT64IntegerDim0KindINT8
      function getLogicalDim1KindINT64IntegerDim0KindINT16(xs, i) result(ret)
         Logical(kind=INT64), dimension(:), intent(in):: xs
         Integer(kind=INT16), intent(in):: i
         Logical(kind=INT64):: ret
         ret = xs(i)
      end function getLogicalDim1KindINT64IntegerDim0KindINT16
      function getLogicalDim1KindINT64IntegerDim0KindINT32(xs, i) result(ret)
         Logical(kind=INT64), dimension(:), intent(in):: xs
         Integer(kind=INT32), intent(in):: i
         Logical(kind=INT64):: ret
         ret = xs(i)
      end function getLogicalDim1KindINT64IntegerDim0KindINT32
      function getLogicalDim1KindINT64IntegerDim0KindINT64(xs, i) result(ret)
         Logical(kind=INT64), dimension(:), intent(in):: xs
         Integer(kind=INT64), intent(in):: i
         Logical(kind=INT64):: ret
         ret = xs(i)
      end function getLogicalDim1KindINT64IntegerDim0KindINT64
      function getIntegerDim1KindINT8IntegerDim0KindINT8(xs, i) result(ret)
         Integer(kind=INT8), dimension(:), intent(in):: xs
         Integer(kind=INT8), intent(in):: i
         Integer(kind=INT8):: ret
         ret = xs(i)
      end function getIntegerDim1KindINT8IntegerDim0KindINT8
      function getIntegerDim1KindINT8IntegerDim0KindINT16(xs, i) result(ret)
         Integer(kind=INT8), dimension(:), intent(in):: xs
         Integer(kind=INT16), intent(in):: i
         Integer(kind=INT8):: ret
         ret = xs(i)
      end function getIntegerDim1KindINT8IntegerDim0KindINT16
      function getIntegerDim1KindINT8IntegerDim0KindINT32(xs, i) result(ret)
         Integer(kind=INT8), dimension(:), intent(in):: xs
         Integer(kind=INT32), intent(in):: i
         Integer(kind=INT8):: ret
         ret = xs(i)
      end function getIntegerDim1KindINT8IntegerDim0KindINT32
      function getIntegerDim1KindINT8IntegerDim0KindINT64(xs, i) result(ret)
         Integer(kind=INT8), dimension(:), intent(in):: xs
         Integer(kind=INT64), intent(in):: i
         Integer(kind=INT8):: ret
         ret = xs(i)
      end function getIntegerDim1KindINT8IntegerDim0KindINT64
      function getIntegerDim1KindINT16IntegerDim0KindINT8(xs, i) result(ret)
         Integer(kind=INT16), dimension(:), intent(in):: xs
         Integer(kind=INT8), intent(in):: i
         Integer(kind=INT16):: ret
         ret = xs(i)
      end function getIntegerDim1KindINT16IntegerDim0KindINT8
      function getIntegerDim1KindINT16IntegerDim0KindINT16(xs, i) result(ret)
         Integer(kind=INT16), dimension(:), intent(in):: xs
         Integer(kind=INT16), intent(in):: i
         Integer(kind=INT16):: ret
         ret = xs(i)
      end function getIntegerDim1KindINT16IntegerDim0KindINT16
      function getIntegerDim1KindINT16IntegerDim0KindINT32(xs, i) result(ret)
         Integer(kind=INT16), dimension(:), intent(in):: xs
         Integer(kind=INT32), intent(in):: i
         Integer(kind=INT16):: ret
         ret = xs(i)
      end function getIntegerDim1KindINT16IntegerDim0KindINT32
      function getIntegerDim1KindINT16IntegerDim0KindINT64(xs, i) result(ret)
         Integer(kind=INT16), dimension(:), intent(in):: xs
         Integer(kind=INT64), intent(in):: i
         Integer(kind=INT16):: ret
         ret = xs(i)
      end function getIntegerDim1KindINT16IntegerDim0KindINT64
      function getIntegerDim1KindINT32IntegerDim0KindINT8(xs, i) result(ret)
         Integer(kind=INT32), dimension(:), intent(in):: xs
         Integer(kind=INT8), intent(in):: i
         Integer(kind=INT32):: ret
         ret = xs(i)
      end function getIntegerDim1KindINT32IntegerDim0KindINT8
      function getIntegerDim1KindINT32IntegerDim0KindINT16(xs, i) result(ret)
         Integer(kind=INT32), dimension(:), intent(in):: xs
         Integer(kind=INT16), intent(in):: i
         Integer(kind=INT32):: ret
         ret = xs(i)
      end function getIntegerDim1KindINT32IntegerDim0KindINT16
      function getIntegerDim1KindINT32IntegerDim0KindINT32(xs, i) result(ret)
         Integer(kind=INT32), dimension(:), intent(in):: xs
         Integer(kind=INT32), intent(in):: i
         Integer(kind=INT32):: ret
         ret = xs(i)
      end function getIntegerDim1KindINT32IntegerDim0KindINT32
      function getIntegerDim1KindINT32IntegerDim0KindINT64(xs, i) result(ret)
         Integer(kind=INT32), dimension(:), intent(in):: xs
         Integer(kind=INT64), intent(in):: i
         Integer(kind=INT32):: ret
         ret = xs(i)
      end function getIntegerDim1KindINT32IntegerDim0KindINT64
      function getIntegerDim1KindINT64IntegerDim0KindINT8(xs, i) result(ret)
         Integer(kind=INT64), dimension(:), intent(in):: xs
         Integer(kind=INT8), intent(in):: i
         Integer(kind=INT64):: ret
         ret = xs(i)
      end function getIntegerDim1KindINT64IntegerDim0KindINT8
      function getIntegerDim1KindINT64IntegerDim0KindINT16(xs, i) result(ret)
         Integer(kind=INT64), dimension(:), intent(in):: xs
         Integer(kind=INT16), intent(in):: i
         Integer(kind=INT64):: ret
         ret = xs(i)
      end function getIntegerDim1KindINT64IntegerDim0KindINT16
      function getIntegerDim1KindINT64IntegerDim0KindINT32(xs, i) result(ret)
         Integer(kind=INT64), dimension(:), intent(in):: xs
         Integer(kind=INT32), intent(in):: i
         Integer(kind=INT64):: ret
         ret = xs(i)
      end function getIntegerDim1KindINT64IntegerDim0KindINT32
      function getIntegerDim1KindINT64IntegerDim0KindINT64(xs, i) result(ret)
         Integer(kind=INT64), dimension(:), intent(in):: xs
         Integer(kind=INT64), intent(in):: i
         Integer(kind=INT64):: ret
         ret = xs(i)
      end function getIntegerDim1KindINT64IntegerDim0KindINT64
      function getRealDim1KindREAL32IntegerDim0KindINT8(xs, i) result(ret)
         Real(kind=REAL32), dimension(:), intent(in):: xs
         Integer(kind=INT8), intent(in):: i
         Real(kind=REAL32):: ret
         ret = xs(i)
      end function getRealDim1KindREAL32IntegerDim0KindINT8
      function getRealDim1KindREAL32IntegerDim0KindINT16(xs, i) result(ret)
         Real(kind=REAL32), dimension(:), intent(in):: xs
         Integer(kind=INT16), intent(in):: i
         Real(kind=REAL32):: ret
         ret = xs(i)
      end function getRealDim1KindREAL32IntegerDim0KindINT16
      function getRealDim1KindREAL32IntegerDim0KindINT32(xs, i) result(ret)
         Real(kind=REAL32), dimension(:), intent(in):: xs
         Integer(kind=INT32), intent(in):: i
         Real(kind=REAL32):: ret
         ret = xs(i)
      end function getRealDim1KindREAL32IntegerDim0KindINT32
      function getRealDim1KindREAL32IntegerDim0KindINT64(xs, i) result(ret)
         Real(kind=REAL32), dimension(:), intent(in):: xs
         Integer(kind=INT64), intent(in):: i
         Real(kind=REAL32):: ret
         ret = xs(i)
      end function getRealDim1KindREAL32IntegerDim0KindINT64
      function getRealDim1KindREAL64IntegerDim0KindINT8(xs, i) result(ret)
         Real(kind=REAL64), dimension(:), intent(in):: xs
         Integer(kind=INT8), intent(in):: i
         Real(kind=REAL64):: ret
         ret = xs(i)
      end function getRealDim1KindREAL64IntegerDim0KindINT8
      function getRealDim1KindREAL64IntegerDim0KindINT16(xs, i) result(ret)
         Real(kind=REAL64), dimension(:), intent(in):: xs
         Integer(kind=INT16), intent(in):: i
         Real(kind=REAL64):: ret
         ret = xs(i)
      end function getRealDim1KindREAL64IntegerDim0KindINT16
      function getRealDim1KindREAL64IntegerDim0KindINT32(xs, i) result(ret)
         Real(kind=REAL64), dimension(:), intent(in):: xs
         Integer(kind=INT32), intent(in):: i
         Real(kind=REAL64):: ret
         ret = xs(i)
      end function getRealDim1KindREAL64IntegerDim0KindINT32
      function getRealDim1KindREAL64IntegerDim0KindINT64(xs, i) result(ret)
         Real(kind=REAL64), dimension(:), intent(in):: xs
         Integer(kind=INT64), intent(in):: i
         Real(kind=REAL64):: ret
         ret = xs(i)
      end function getRealDim1KindREAL64IntegerDim0KindINT64
      function getRealDim1KindREAL128IntegerDim0KindINT8(xs, i) result(ret)
         Real(kind=REAL128), dimension(:), intent(in):: xs
         Integer(kind=INT8), intent(in):: i
         Real(kind=REAL128):: ret
         ret = xs(i)
      end function getRealDim1KindREAL128IntegerDim0KindINT8
      function getRealDim1KindREAL128IntegerDim0KindINT16(xs, i) result(ret)
         Real(kind=REAL128), dimension(:), intent(in):: xs
         Integer(kind=INT16), intent(in):: i
         Real(kind=REAL128):: ret
         ret = xs(i)
      end function getRealDim1KindREAL128IntegerDim0KindINT16
      function getRealDim1KindREAL128IntegerDim0KindINT32(xs, i) result(ret)
         Real(kind=REAL128), dimension(:), intent(in):: xs
         Integer(kind=INT32), intent(in):: i
         Real(kind=REAL128):: ret
         ret = xs(i)
      end function getRealDim1KindREAL128IntegerDim0KindINT32
      function getRealDim1KindREAL128IntegerDim0KindINT64(xs, i) result(ret)
         Real(kind=REAL128), dimension(:), intent(in):: xs
         Integer(kind=INT64), intent(in):: i
         Real(kind=REAL128):: ret
         ret = xs(i)
      end function getRealDim1KindREAL128IntegerDim0KindINT64
      function eye_nIntegerDim0KindINT8(n) result(ret)
         Integer(kind=INT8), intent(in):: n
         Integer(kind=INT8):: ret(n, n)
         ret = eye(n, n)
      end function eye_nIntegerDim0KindINT8
      function eye_mnIntegerDim0KindINT8(m, n) result(ret)
         Integer(kind=INT8), intent(in):: m, n
         Integer(kind=INT8):: ret(m, n)
         Integer(kind=kind(m)):: i
         ret = 0
         do i = 1, min(m, n)
            ret(i, i) = 1
         end do
      end function eye_mnIntegerDim0KindINT8
      function eye_nIntegerDim0KindINT16(n) result(ret)
         Integer(kind=INT16), intent(in):: n
         Integer(kind=INT8):: ret(n, n)
         ret = eye(n, n)
      end function eye_nIntegerDim0KindINT16
      function eye_mnIntegerDim0KindINT16(m, n) result(ret)
         Integer(kind=INT16), intent(in):: m, n
         Integer(kind=INT8):: ret(m, n)
         Integer(kind=kind(m)):: i
         ret = 0
         do i = 1, min(m, n)
            ret(i, i) = 1
         end do
      end function eye_mnIntegerDim0KindINT16
      function eye_nIntegerDim0KindINT32(n) result(ret)
         Integer(kind=INT32), intent(in):: n
         Integer(kind=INT8):: ret(n, n)
         ret = eye(n, n)
      end function eye_nIntegerDim0KindINT32
      function eye_mnIntegerDim0KindINT32(m, n) result(ret)
         Integer(kind=INT32), intent(in):: m, n
         Integer(kind=INT8):: ret(m, n)
         Integer(kind=kind(m)):: i
         ret = 0
         do i = 1, min(m, n)
            ret(i, i) = 1
         end do
      end function eye_mnIntegerDim0KindINT32
      function eye_nIntegerDim0KindINT64(n) result(ret)
         Integer(kind=INT64), intent(in):: n
         Integer(kind=INT8):: ret(n, n)
         ret = eye(n, n)
      end function eye_nIntegerDim0KindINT64
      function eye_mnIntegerDim0KindINT64(m, n) result(ret)
         Integer(kind=INT64), intent(in):: m, n
         Integer(kind=INT8):: ret(m, n)
         Integer(kind=kind(m)):: i
         ret = 0
         do i = 1, min(m, n)
            ret(i, i) = 1
         end do
      end function eye_mnIntegerDim0KindINT64
      pure function l2_normRealDim1KindREAL32(xs) result(ret)
         Real(kind=REAL32), dimension(:), intent(in):: xs
         Real(kind=kind(xs)):: ret
         ret = norm2(xs)**2
      end function l2_normRealDim1KindREAL32
      pure function l2_normRealDim1KindREAL64(xs) result(ret)
         Real(kind=REAL64), dimension(:), intent(in):: xs
         Real(kind=kind(xs)):: ret
         ret = norm2(xs)**2
      end function l2_normRealDim1KindREAL64
      pure function l2_normRealDim1KindREAL128(xs) result(ret)
         Real(kind=REAL128), dimension(:), intent(in):: xs
         Real(kind=kind(xs)):: ret
         ret = norm2(xs)**2
      end function l2_normRealDim1KindREAL128
      pure function iota_1T1(end) result(ret)
         Integer(kind=INT8), intent(in):: end
         Integer(kind=kind(end)):: ret(get_iota_size(end))
         ret = iota(int(1, kind=INT8), end)
      end function iota_1T1
      pure function get_iota_size_1T1(end) result(ret)
         Integer(kind=INT8), intent(in):: end
         Integer(kind=kind(end)):: ret
         ret = get_iota_size(int(1, kind=INT8), end)
      end function get_iota_size_1T1
         pure function iota_2T1T1(first, end) result(ret)
            Integer(kind=INT8), intent(in):: first
            Integer(kind=INT8), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T1T1
         pure function get_iota_size_2T1T1(first, end) result(ret)
            Integer(kind=INT8), intent(in):: first
            Integer(kind=INT8), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T1T1
            pure function iota_3T1T1T1(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T1T1
            pure function get_iota_size_3T1T1T1(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T1T1
            pure function iota_3T1T1T2(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T1T2
            pure function get_iota_size_3T1T1T2(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T1T2
            pure function iota_3T1T1T3(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T1T3
            pure function get_iota_size_3T1T1T3(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T1T3
            pure function iota_3T1T1T4(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T1T4
            pure function get_iota_size_3T1T1T4(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T1T4
         pure function iota_2T1T2(first, end) result(ret)
            Integer(kind=INT8), intent(in):: first
            Integer(kind=INT16), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T1T2
         pure function get_iota_size_2T1T2(first, end) result(ret)
            Integer(kind=INT8), intent(in):: first
            Integer(kind=INT16), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T1T2
            pure function iota_3T1T2T1(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T2T1
            pure function get_iota_size_3T1T2T1(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T2T1
            pure function iota_3T1T2T2(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T2T2
            pure function get_iota_size_3T1T2T2(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T2T2
            pure function iota_3T1T2T3(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T2T3
            pure function get_iota_size_3T1T2T3(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T2T3
            pure function iota_3T1T2T4(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T2T4
            pure function get_iota_size_3T1T2T4(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T2T4
         pure function iota_2T1T3(first, end) result(ret)
            Integer(kind=INT8), intent(in):: first
            Integer(kind=INT32), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T1T3
         pure function get_iota_size_2T1T3(first, end) result(ret)
            Integer(kind=INT8), intent(in):: first
            Integer(kind=INT32), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T1T3
            pure function iota_3T1T3T1(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T3T1
            pure function get_iota_size_3T1T3T1(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T3T1
            pure function iota_3T1T3T2(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T3T2
            pure function get_iota_size_3T1T3T2(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T3T2
            pure function iota_3T1T3T3(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T3T3
            pure function get_iota_size_3T1T3T3(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T3T3
            pure function iota_3T1T3T4(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T3T4
            pure function get_iota_size_3T1T3T4(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T3T4
         pure function iota_2T1T4(first, end) result(ret)
            Integer(kind=INT8), intent(in):: first
            Integer(kind=INT64), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T1T4
         pure function get_iota_size_2T1T4(first, end) result(ret)
            Integer(kind=INT8), intent(in):: first
            Integer(kind=INT64), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T1T4
            pure function iota_3T1T4T1(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T4T1
            pure function get_iota_size_3T1T4T1(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T4T1
            pure function iota_3T1T4T2(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T4T2
            pure function get_iota_size_3T1T4T2(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T4T2
            pure function iota_3T1T4T3(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T4T3
            pure function get_iota_size_3T1T4T3(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T4T3
            pure function iota_3T1T4T4(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T4T4
            pure function get_iota_size_3T1T4T4(first, end, step) result(ret)
               Integer(kind=INT8), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T4T4
      pure function iota_1T2(end) result(ret)
         Integer(kind=INT16), intent(in):: end
         Integer(kind=kind(end)):: ret(get_iota_size(end))
         ret = iota(int(1, kind=INT8), end)
      end function iota_1T2
      pure function get_iota_size_1T2(end) result(ret)
         Integer(kind=INT16), intent(in):: end
         Integer(kind=kind(end)):: ret
         ret = get_iota_size(int(1, kind=INT8), end)
      end function get_iota_size_1T2
         pure function iota_2T2T1(first, end) result(ret)
            Integer(kind=INT16), intent(in):: first
            Integer(kind=INT8), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T2T1
         pure function get_iota_size_2T2T1(first, end) result(ret)
            Integer(kind=INT16), intent(in):: first
            Integer(kind=INT8), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T2T1
            pure function iota_3T2T1T1(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T1T1
            pure function get_iota_size_3T2T1T1(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T1T1
            pure function iota_3T2T1T2(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T1T2
            pure function get_iota_size_3T2T1T2(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T1T2
            pure function iota_3T2T1T3(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T1T3
            pure function get_iota_size_3T2T1T3(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T1T3
            pure function iota_3T2T1T4(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T1T4
            pure function get_iota_size_3T2T1T4(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T1T4
         pure function iota_2T2T2(first, end) result(ret)
            Integer(kind=INT16), intent(in):: first
            Integer(kind=INT16), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T2T2
         pure function get_iota_size_2T2T2(first, end) result(ret)
            Integer(kind=INT16), intent(in):: first
            Integer(kind=INT16), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T2T2
            pure function iota_3T2T2T1(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T2T1
            pure function get_iota_size_3T2T2T1(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T2T1
            pure function iota_3T2T2T2(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T2T2
            pure function get_iota_size_3T2T2T2(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T2T2
            pure function iota_3T2T2T3(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T2T3
            pure function get_iota_size_3T2T2T3(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T2T3
            pure function iota_3T2T2T4(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T2T4
            pure function get_iota_size_3T2T2T4(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T2T4
         pure function iota_2T2T3(first, end) result(ret)
            Integer(kind=INT16), intent(in):: first
            Integer(kind=INT32), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T2T3
         pure function get_iota_size_2T2T3(first, end) result(ret)
            Integer(kind=INT16), intent(in):: first
            Integer(kind=INT32), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T2T3
            pure function iota_3T2T3T1(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T3T1
            pure function get_iota_size_3T2T3T1(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T3T1
            pure function iota_3T2T3T2(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T3T2
            pure function get_iota_size_3T2T3T2(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T3T2
            pure function iota_3T2T3T3(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T3T3
            pure function get_iota_size_3T2T3T3(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T3T3
            pure function iota_3T2T3T4(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T3T4
            pure function get_iota_size_3T2T3T4(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T3T4
         pure function iota_2T2T4(first, end) result(ret)
            Integer(kind=INT16), intent(in):: first
            Integer(kind=INT64), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T2T4
         pure function get_iota_size_2T2T4(first, end) result(ret)
            Integer(kind=INT16), intent(in):: first
            Integer(kind=INT64), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T2T4
            pure function iota_3T2T4T1(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T4T1
            pure function get_iota_size_3T2T4T1(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T4T1
            pure function iota_3T2T4T2(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T4T2
            pure function get_iota_size_3T2T4T2(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T4T2
            pure function iota_3T2T4T3(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T4T3
            pure function get_iota_size_3T2T4T3(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T4T3
            pure function iota_3T2T4T4(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T4T4
            pure function get_iota_size_3T2T4T4(first, end, step) result(ret)
               Integer(kind=INT16), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T4T4
      pure function iota_1T3(end) result(ret)
         Integer(kind=INT32), intent(in):: end
         Integer(kind=kind(end)):: ret(get_iota_size(end))
         ret = iota(int(1, kind=INT8), end)
      end function iota_1T3
      pure function get_iota_size_1T3(end) result(ret)
         Integer(kind=INT32), intent(in):: end
         Integer(kind=kind(end)):: ret
         ret = get_iota_size(int(1, kind=INT8), end)
      end function get_iota_size_1T3
         pure function iota_2T3T1(first, end) result(ret)
            Integer(kind=INT32), intent(in):: first
            Integer(kind=INT8), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T3T1
         pure function get_iota_size_2T3T1(first, end) result(ret)
            Integer(kind=INT32), intent(in):: first
            Integer(kind=INT8), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T3T1
            pure function iota_3T3T1T1(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T1T1
            pure function get_iota_size_3T3T1T1(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T1T1
            pure function iota_3T3T1T2(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T1T2
            pure function get_iota_size_3T3T1T2(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T1T2
            pure function iota_3T3T1T3(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T1T3
            pure function get_iota_size_3T3T1T3(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T1T3
            pure function iota_3T3T1T4(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T1T4
            pure function get_iota_size_3T3T1T4(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T1T4
         pure function iota_2T3T2(first, end) result(ret)
            Integer(kind=INT32), intent(in):: first
            Integer(kind=INT16), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T3T2
         pure function get_iota_size_2T3T2(first, end) result(ret)
            Integer(kind=INT32), intent(in):: first
            Integer(kind=INT16), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T3T2
            pure function iota_3T3T2T1(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T2T1
            pure function get_iota_size_3T3T2T1(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T2T1
            pure function iota_3T3T2T2(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T2T2
            pure function get_iota_size_3T3T2T2(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T2T2
            pure function iota_3T3T2T3(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T2T3
            pure function get_iota_size_3T3T2T3(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T2T3
            pure function iota_3T3T2T4(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T2T4
            pure function get_iota_size_3T3T2T4(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T2T4
         pure function iota_2T3T3(first, end) result(ret)
            Integer(kind=INT32), intent(in):: first
            Integer(kind=INT32), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T3T3
         pure function get_iota_size_2T3T3(first, end) result(ret)
            Integer(kind=INT32), intent(in):: first
            Integer(kind=INT32), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T3T3
            pure function iota_3T3T3T1(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T3T1
            pure function get_iota_size_3T3T3T1(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T3T1
            pure function iota_3T3T3T2(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T3T2
            pure function get_iota_size_3T3T3T2(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T3T2
            pure function iota_3T3T3T3(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T3T3
            pure function get_iota_size_3T3T3T3(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T3T3
            pure function iota_3T3T3T4(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T3T4
            pure function get_iota_size_3T3T3T4(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T3T4
         pure function iota_2T3T4(first, end) result(ret)
            Integer(kind=INT32), intent(in):: first
            Integer(kind=INT64), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T3T4
         pure function get_iota_size_2T3T4(first, end) result(ret)
            Integer(kind=INT32), intent(in):: first
            Integer(kind=INT64), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T3T4
            pure function iota_3T3T4T1(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T4T1
            pure function get_iota_size_3T3T4T1(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T4T1
            pure function iota_3T3T4T2(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T4T2
            pure function get_iota_size_3T3T4T2(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T4T2
            pure function iota_3T3T4T3(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T4T3
            pure function get_iota_size_3T3T4T3(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T4T3
            pure function iota_3T3T4T4(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T4T4
            pure function get_iota_size_3T3T4T4(first, end, step) result(ret)
               Integer(kind=INT32), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T4T4
      pure function iota_1T4(end) result(ret)
         Integer(kind=INT64), intent(in):: end
         Integer(kind=kind(end)):: ret(get_iota_size(end))
         ret = iota(int(1, kind=INT8), end)
      end function iota_1T4
      pure function get_iota_size_1T4(end) result(ret)
         Integer(kind=INT64), intent(in):: end
         Integer(kind=kind(end)):: ret
         ret = get_iota_size(int(1, kind=INT8), end)
      end function get_iota_size_1T4
         pure function iota_2T4T1(first, end) result(ret)
            Integer(kind=INT64), intent(in):: first
            Integer(kind=INT8), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T4T1
         pure function get_iota_size_2T4T1(first, end) result(ret)
            Integer(kind=INT64), intent(in):: first
            Integer(kind=INT8), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T4T1
            pure function iota_3T4T1T1(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T1T1
            pure function get_iota_size_3T4T1T1(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T1T1
            pure function iota_3T4T1T2(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T1T2
            pure function get_iota_size_3T4T1T2(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T1T2
            pure function iota_3T4T1T3(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T1T3
            pure function get_iota_size_3T4T1T3(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T1T3
            pure function iota_3T4T1T4(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T1T4
            pure function get_iota_size_3T4T1T4(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT8), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T1T4
         pure function iota_2T4T2(first, end) result(ret)
            Integer(kind=INT64), intent(in):: first
            Integer(kind=INT16), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T4T2
         pure function get_iota_size_2T4T2(first, end) result(ret)
            Integer(kind=INT64), intent(in):: first
            Integer(kind=INT16), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T4T2
            pure function iota_3T4T2T1(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T2T1
            pure function get_iota_size_3T4T2T1(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T2T1
            pure function iota_3T4T2T2(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T2T2
            pure function get_iota_size_3T4T2T2(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T2T2
            pure function iota_3T4T2T3(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T2T3
            pure function get_iota_size_3T4T2T3(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T2T3
            pure function iota_3T4T2T4(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T2T4
            pure function get_iota_size_3T4T2T4(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT16), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T2T4
         pure function iota_2T4T3(first, end) result(ret)
            Integer(kind=INT64), intent(in):: first
            Integer(kind=INT32), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T4T3
         pure function get_iota_size_2T4T3(first, end) result(ret)
            Integer(kind=INT64), intent(in):: first
            Integer(kind=INT32), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T4T3
            pure function iota_3T4T3T1(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T3T1
            pure function get_iota_size_3T4T3T1(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T3T1
            pure function iota_3T4T3T2(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T3T2
            pure function get_iota_size_3T4T3T2(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T3T2
            pure function iota_3T4T3T3(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T3T3
            pure function get_iota_size_3T4T3T3(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T3T3
            pure function iota_3T4T3T4(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T3T4
            pure function get_iota_size_3T4T3T4(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT32), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T3T4
         pure function iota_2T4T4(first, end) result(ret)
            Integer(kind=INT64), intent(in):: first
            Integer(kind=INT64), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T4T4
         pure function get_iota_size_2T4T4(first, end) result(ret)
            Integer(kind=INT64), intent(in):: first
            Integer(kind=INT64), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T4T4
            pure function iota_3T4T4T1(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T4T1
            pure function get_iota_size_3T4T4T1(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T4T1
            pure function iota_3T4T4T2(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T4T2
            pure function get_iota_size_3T4T4T2(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T4T2
            pure function iota_3T4T4T3(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T4T3
            pure function get_iota_size_3T4T4T3(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T4T3
            pure function iota_3T4T4T4(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T4T4
            pure function get_iota_size_3T4T4T4(first, end, step) result(ret)
               Integer(kind=INT64), intent(in):: first
               Integer(kind=INT64), intent(in):: end
               Integer(kind=INT64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T4T4
end module array_lib
