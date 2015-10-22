module constant_lib
   use, intrinsic:: iso_fortran_env, only: int8, int16, int32, int64, real32, real64, real128
   use, intrinsic:: iso_fortran_env, only: INT8
   implicit none
   private
   public:: get_nan
   public:: get_infinity
   public:: rad_from_deg, deg_from_rad
   character, parameter, public:: TAB = char(9)
      Real(kind=real32), parameter, public:: PIRealDim0Kindreal32 = 4*atan(1.0_real32)
      Real(kind=real32), parameter, public:: PI_real32 = PIRealDim0Kindreal32
      Real(kind=real64), parameter, public:: PIRealDim0Kindreal64 = 4*atan(1.0_real64)
      Real(kind=real64), parameter, public:: PI_real64 = PIRealDim0Kindreal64
      Real(kind=real128), parameter, public:: PIRealDim0Kindreal128 = 4*atan(1.0_real128)
      Real(kind=real128), parameter, public:: PI_real128 = PIRealDim0Kindreal128
   Integer, parameter, public:: ZERO = 0_INT8, ONE = 1_INT8
      interface deg_from_rad
         module procedure deg_from_radRealDim0Kindreal32
      end interface deg_from_rad
      interface rad_from_deg
         module procedure rad_from_degRealDim0Kindreal32
      end interface rad_from_deg
      interface deg_from_rad
         module procedure deg_from_radRealDim0Kindreal64
      end interface deg_from_rad
      interface rad_from_deg
         module procedure rad_from_degRealDim0Kindreal64
      end interface rad_from_deg
      interface deg_from_rad
         module procedure deg_from_radRealDim0Kindreal128
      end interface deg_from_rad
      interface rad_from_deg
         module procedure rad_from_degRealDim0Kindreal128
      end interface rad_from_deg
contains
   elemental function get_nan() result(answer)
      real(REAL32):: answer
      character(len = len('NaN')):: buf ! buf can not be a parameter.
      buf = 'NaN'
      read(buf, *) answer
   end function get_nan
   elemental function get_infinity() result(answer)
      real(REAL32):: answer
      character(len = len('Infinity')):: buf ! buf can not be a parameter.
      buf = 'Infinity'
      read(buf, *) answer
   end function get_infinity
      elemental function rad_from_degRealDim0Kindreal32(deg) result(rad)
         Real(kind=real32), parameter:: PI = PIRealDim0Kindreal32
         Real(kind=real32), intent(in):: deg
         Real(kind=real32):: rad
         rad = PI*deg/180
      end function rad_from_degRealDim0Kindreal32
      elemental function deg_from_radRealDim0Kindreal32(rad) result(deg)
         Real(kind=real32), parameter:: PI = PIRealDim0Kindreal32
         Real(kind=real32), intent(in):: rad
         Real(kind=real32):: deg
         deg = 180*rad/PI
      end function deg_from_radRealDim0Kindreal32
      elemental function rad_from_degRealDim0Kindreal64(deg) result(rad)
         Real(kind=real64), parameter:: PI = PIRealDim0Kindreal64
         Real(kind=real64), intent(in):: deg
         Real(kind=real64):: rad
         rad = PI*deg/180
      end function rad_from_degRealDim0Kindreal64
      elemental function deg_from_radRealDim0Kindreal64(rad) result(deg)
         Real(kind=real64), parameter:: PI = PIRealDim0Kindreal64
         Real(kind=real64), intent(in):: rad
         Real(kind=real64):: deg
         deg = 180*rad/PI
      end function deg_from_radRealDim0Kindreal64
      elemental function rad_from_degRealDim0Kindreal128(deg) result(rad)
         Real(kind=real128), parameter:: PI = PIRealDim0Kindreal128
         Real(kind=real128), intent(in):: deg
         Real(kind=real128):: rad
         rad = PI*deg/180
      end function rad_from_degRealDim0Kindreal128
      elemental function deg_from_radRealDim0Kindreal128(rad) result(deg)
         Real(kind=real128), parameter:: PI = PIRealDim0Kindreal128
         Real(kind=real128), intent(in):: rad
         Real(kind=real128):: deg
         deg = 180*rad/PI
      end function deg_from_radRealDim0Kindreal128
end module constant_lib
