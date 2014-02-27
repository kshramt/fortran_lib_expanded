
module constant_lib
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
   use, intrinsic:: iso_fortran_env, only: INT8

   implicit none

   private

   public:: get_nan
   public:: get_infinity
   public:: rad_from_deg, deg_from_rad

   character, parameter, public:: TAB = char(9)
      Real(kind=REAL32), parameter, public:: PIRealDim0KindREAL32 = 4*atan(1.0_REAL32)
      Real(kind=REAL32), parameter, public:: PI_REAL32 = PIRealDim0KindREAL32
      Real(kind=REAL64), parameter, public:: PIRealDim0KindREAL64 = 4*atan(1.0_REAL64)
      Real(kind=REAL64), parameter, public:: PI_REAL64 = PIRealDim0KindREAL64
      Real(kind=REAL128), parameter, public:: PIRealDim0KindREAL128 = 4*atan(1.0_REAL128)
      Real(kind=REAL128), parameter, public:: PI_REAL128 = PIRealDim0KindREAL128
   Integer, parameter, public:: ZERO = 0_INT8, ONE = 1_INT8

      interface deg_from_rad
         module procedure deg_from_radRealDim0KindREAL32
      end interface deg_from_rad

      interface rad_from_deg
         module procedure rad_from_degRealDim0KindREAL32
      end interface rad_from_deg
      interface deg_from_rad
         module procedure deg_from_radRealDim0KindREAL64
      end interface deg_from_rad

      interface rad_from_deg
         module procedure rad_from_degRealDim0KindREAL64
      end interface rad_from_deg
      interface deg_from_rad
         module procedure deg_from_radRealDim0KindREAL128
      end interface deg_from_rad

      interface rad_from_deg
         module procedure rad_from_degRealDim0KindREAL128
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

      elemental function rad_from_degRealDim0KindREAL32(deg) result(rad)
         Real(kind=REAL32), parameter:: PI = PIRealDim0KindREAL32
         Real(kind=REAL32), intent(in):: deg
         Real(kind=REAL32):: rad

         rad = PI*deg/180
      end function rad_from_degRealDim0KindREAL32

      elemental function deg_from_radRealDim0KindREAL32(rad) result(deg)
         Real(kind=REAL32), parameter:: PI = PIRealDim0KindREAL32
         Real(kind=REAL32), intent(in):: rad
         Real(kind=REAL32):: deg

         deg = 180*rad/PI
      end function deg_from_radRealDim0KindREAL32
      elemental function rad_from_degRealDim0KindREAL64(deg) result(rad)
         Real(kind=REAL64), parameter:: PI = PIRealDim0KindREAL64
         Real(kind=REAL64), intent(in):: deg
         Real(kind=REAL64):: rad

         rad = PI*deg/180
      end function rad_from_degRealDim0KindREAL64

      elemental function deg_from_radRealDim0KindREAL64(rad) result(deg)
         Real(kind=REAL64), parameter:: PI = PIRealDim0KindREAL64
         Real(kind=REAL64), intent(in):: rad
         Real(kind=REAL64):: deg

         deg = 180*rad/PI
      end function deg_from_radRealDim0KindREAL64
      elemental function rad_from_degRealDim0KindREAL128(deg) result(rad)
         Real(kind=REAL128), parameter:: PI = PIRealDim0KindREAL128
         Real(kind=REAL128), intent(in):: deg
         Real(kind=REAL128):: rad

         rad = PI*deg/180
      end function rad_from_degRealDim0KindREAL128

      elemental function deg_from_radRealDim0KindREAL128(rad) result(deg)
         Real(kind=REAL128), parameter:: PI = PIRealDim0KindREAL128
         Real(kind=REAL128), intent(in):: rad
         Real(kind=REAL128):: deg

         deg = 180*rad/PI
      end function deg_from_radRealDim0KindREAL128
end module constant_lib
