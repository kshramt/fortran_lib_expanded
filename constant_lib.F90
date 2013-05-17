
module constant_lib
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
   use, intrinsic:: iso_fortran_env, only: INT8

   implicit none

   private

   public:: TAB
      public:: PI_REAL32   ! Expected to be used by human writing code.
      public:: DEG_FROM_RAD_REAL32
      public:: RAD_FROM_DEG_REAL32
      public:: PIRealDim0KindREAL32         ! Expected to be used by erb generate code.
      public:: DEG_FROM_RADRealDim0KindREAL32
      public:: RAD_FROM_DEGRealDim0KindREAL32
      public:: PI_REAL64   ! Expected to be used by human writing code.
      public:: DEG_FROM_RAD_REAL64
      public:: RAD_FROM_DEG_REAL64
      public:: PIRealDim0KindREAL64         ! Expected to be used by erb generate code.
      public:: DEG_FROM_RADRealDim0KindREAL64
      public:: RAD_FROM_DEGRealDim0KindREAL64
      public:: PI_REAL128   ! Expected to be used by human writing code.
      public:: DEG_FROM_RAD_REAL128
      public:: RAD_FROM_DEG_REAL128
      public:: PIRealDim0KindREAL128         ! Expected to be used by erb generate code.
      public:: DEG_FROM_RADRealDim0KindREAL128
      public:: RAD_FROM_DEGRealDim0KindREAL128
   public:: get_nan
   public:: get_infinity
   public:: ZERO, ONE

   character, parameter:: TAB      = char(9)
      Real(kind = REAL32), parameter:: PIRealDim0KindREAL32 = 4*atan(1.0_REAL32)
      Real(kind = REAL32), parameter:: DEG_FROM_RADRealDim0KindREAL32 = 180/PIRealDim0KindREAL32
      Real(kind = REAL32), parameter:: RAD_FROM_DEGRealDim0KindREAL32 = PIRealDim0KindREAL32/180
      Real(kind = REAL32), parameter:: PI_REAL32 = PIRealDim0KindREAL32
      Real(kind = REAL32), parameter:: DEG_FROM_RAD_REAL32 = DEG_FROM_RADRealDim0KindREAL32
      Real(kind = REAL32), parameter:: RAD_FROM_DEG_REAL32 = RAD_FROM_DEGRealDim0KindREAL32
      Real(kind = REAL64), parameter:: PIRealDim0KindREAL64 = 4*atan(1.0_REAL64)
      Real(kind = REAL64), parameter:: DEG_FROM_RADRealDim0KindREAL64 = 180/PIRealDim0KindREAL64
      Real(kind = REAL64), parameter:: RAD_FROM_DEGRealDim0KindREAL64 = PIRealDim0KindREAL64/180
      Real(kind = REAL64), parameter:: PI_REAL64 = PIRealDim0KindREAL64
      Real(kind = REAL64), parameter:: DEG_FROM_RAD_REAL64 = DEG_FROM_RADRealDim0KindREAL64
      Real(kind = REAL64), parameter:: RAD_FROM_DEG_REAL64 = RAD_FROM_DEGRealDim0KindREAL64
      Real(kind = REAL128), parameter:: PIRealDim0KindREAL128 = 4*atan(1.0_REAL128)
      Real(kind = REAL128), parameter:: DEG_FROM_RADRealDim0KindREAL128 = 180/PIRealDim0KindREAL128
      Real(kind = REAL128), parameter:: RAD_FROM_DEGRealDim0KindREAL128 = PIRealDim0KindREAL128/180
      Real(kind = REAL128), parameter:: PI_REAL128 = PIRealDim0KindREAL128
      Real(kind = REAL128), parameter:: DEG_FROM_RAD_REAL128 = DEG_FROM_RADRealDim0KindREAL128
      Real(kind = REAL128), parameter:: RAD_FROM_DEG_REAL128 = RAD_FROM_DEGRealDim0KindREAL128
   Integer, parameter:: ZERO = 0_INT8, ONE = 1_INT8

contains

   elemental function get_nan() result(this)
      real(REAL32):: this

      character(len = len('NaN')):: buf ! buf can not be a parameter.

      buf = 'NaN'
      read(buf, *) this
   end function get_nan

   elemental function get_infinity() result(this)
      real(REAL32):: this

      character(len = len('Infinity')):: buf ! buf can not be a parameter.

      buf = 'Infinity'
      read(buf, *) this
   end function get_infinity
end module constant_lib
