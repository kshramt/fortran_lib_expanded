module array_lib
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: int8, int16, int32, int64, real32, real64, real128
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   implicit none
   private
   public:: mul_diag
   public:: get
   public:: eye
   public:: l2_norm
   public:: iota
      interface mul_diag
         module procedure mul_diag_AdRealDim2Kindreal32RealDim1Kindreal32
         module procedure mul_diag_dARealDim1Kindreal32RealDim2Kindreal32
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdRealDim2Kindreal64RealDim1Kindreal32
         module procedure mul_diag_dARealDim1Kindreal32RealDim2Kindreal64
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdRealDim2Kindreal128RealDim1Kindreal32
         module procedure mul_diag_dARealDim1Kindreal32RealDim2Kindreal128
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdComplexDim2Kindreal32RealDim1Kindreal32
         module procedure mul_diag_dARealDim1Kindreal32ComplexDim2Kindreal32
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdComplexDim2Kindreal64RealDim1Kindreal32
         module procedure mul_diag_dARealDim1Kindreal32ComplexDim2Kindreal64
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdComplexDim2Kindreal128RealDim1Kindreal32
         module procedure mul_diag_dARealDim1Kindreal32ComplexDim2Kindreal128
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdRealDim2Kindreal32RealDim1Kindreal64
         module procedure mul_diag_dARealDim1Kindreal64RealDim2Kindreal32
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdRealDim2Kindreal64RealDim1Kindreal64
         module procedure mul_diag_dARealDim1Kindreal64RealDim2Kindreal64
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdRealDim2Kindreal128RealDim1Kindreal64
         module procedure mul_diag_dARealDim1Kindreal64RealDim2Kindreal128
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdComplexDim2Kindreal32RealDim1Kindreal64
         module procedure mul_diag_dARealDim1Kindreal64ComplexDim2Kindreal32
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdComplexDim2Kindreal64RealDim1Kindreal64
         module procedure mul_diag_dARealDim1Kindreal64ComplexDim2Kindreal64
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdComplexDim2Kindreal128RealDim1Kindreal64
         module procedure mul_diag_dARealDim1Kindreal64ComplexDim2Kindreal128
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdRealDim2Kindreal32RealDim1Kindreal128
         module procedure mul_diag_dARealDim1Kindreal128RealDim2Kindreal32
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdRealDim2Kindreal64RealDim1Kindreal128
         module procedure mul_diag_dARealDim1Kindreal128RealDim2Kindreal64
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdRealDim2Kindreal128RealDim1Kindreal128
         module procedure mul_diag_dARealDim1Kindreal128RealDim2Kindreal128
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdComplexDim2Kindreal32RealDim1Kindreal128
         module procedure mul_diag_dARealDim1Kindreal128ComplexDim2Kindreal32
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdComplexDim2Kindreal64RealDim1Kindreal128
         module procedure mul_diag_dARealDim1Kindreal128ComplexDim2Kindreal64
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdComplexDim2Kindreal128RealDim1Kindreal128
         module procedure mul_diag_dARealDim1Kindreal128ComplexDim2Kindreal128
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdRealDim2Kindreal32ComplexDim1Kindreal32
         module procedure mul_diag_dAComplexDim1Kindreal32RealDim2Kindreal32
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdRealDim2Kindreal64ComplexDim1Kindreal32
         module procedure mul_diag_dAComplexDim1Kindreal32RealDim2Kindreal64
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdRealDim2Kindreal128ComplexDim1Kindreal32
         module procedure mul_diag_dAComplexDim1Kindreal32RealDim2Kindreal128
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdComplexDim2Kindreal32ComplexDim1Kindreal32
         module procedure mul_diag_dAComplexDim1Kindreal32ComplexDim2Kindreal32
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdComplexDim2Kindreal64ComplexDim1Kindreal32
         module procedure mul_diag_dAComplexDim1Kindreal32ComplexDim2Kindreal64
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdComplexDim2Kindreal128ComplexDim1Kindreal32
         module procedure mul_diag_dAComplexDim1Kindreal32ComplexDim2Kindreal128
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdRealDim2Kindreal32ComplexDim1Kindreal64
         module procedure mul_diag_dAComplexDim1Kindreal64RealDim2Kindreal32
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdRealDim2Kindreal64ComplexDim1Kindreal64
         module procedure mul_diag_dAComplexDim1Kindreal64RealDim2Kindreal64
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdRealDim2Kindreal128ComplexDim1Kindreal64
         module procedure mul_diag_dAComplexDim1Kindreal64RealDim2Kindreal128
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdComplexDim2Kindreal32ComplexDim1Kindreal64
         module procedure mul_diag_dAComplexDim1Kindreal64ComplexDim2Kindreal32
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdComplexDim2Kindreal64ComplexDim1Kindreal64
         module procedure mul_diag_dAComplexDim1Kindreal64ComplexDim2Kindreal64
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdComplexDim2Kindreal128ComplexDim1Kindreal64
         module procedure mul_diag_dAComplexDim1Kindreal64ComplexDim2Kindreal128
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdRealDim2Kindreal32ComplexDim1Kindreal128
         module procedure mul_diag_dAComplexDim1Kindreal128RealDim2Kindreal32
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdRealDim2Kindreal64ComplexDim1Kindreal128
         module procedure mul_diag_dAComplexDim1Kindreal128RealDim2Kindreal64
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdRealDim2Kindreal128ComplexDim1Kindreal128
         module procedure mul_diag_dAComplexDim1Kindreal128RealDim2Kindreal128
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdComplexDim2Kindreal32ComplexDim1Kindreal128
         module procedure mul_diag_dAComplexDim1Kindreal128ComplexDim2Kindreal32
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdComplexDim2Kindreal64ComplexDim1Kindreal128
         module procedure mul_diag_dAComplexDim1Kindreal128ComplexDim2Kindreal64
      end interface mul_diag
      interface mul_diag
         module procedure mul_diag_AdComplexDim2Kindreal128ComplexDim1Kindreal128
         module procedure mul_diag_dAComplexDim1Kindreal128ComplexDim2Kindreal128
      end interface mul_diag
      interface get
         module procedure getComplexDim1Kindreal32IntegerDim0Kindint8
      end interface get
      interface get
         module procedure getComplexDim1Kindreal32IntegerDim0Kindint16
      end interface get
      interface get
         module procedure getComplexDim1Kindreal32IntegerDim0Kindint32
      end interface get
      interface get
         module procedure getComplexDim1Kindreal32IntegerDim0Kindint64
      end interface get
      interface get
         module procedure getComplexDim1Kindreal64IntegerDim0Kindint8
      end interface get
      interface get
         module procedure getComplexDim1Kindreal64IntegerDim0Kindint16
      end interface get
      interface get
         module procedure getComplexDim1Kindreal64IntegerDim0Kindint32
      end interface get
      interface get
         module procedure getComplexDim1Kindreal64IntegerDim0Kindint64
      end interface get
      interface get
         module procedure getComplexDim1Kindreal128IntegerDim0Kindint8
      end interface get
      interface get
         module procedure getComplexDim1Kindreal128IntegerDim0Kindint16
      end interface get
      interface get
         module procedure getComplexDim1Kindreal128IntegerDim0Kindint32
      end interface get
      interface get
         module procedure getComplexDim1Kindreal128IntegerDim0Kindint64
      end interface get
      interface get
         module procedure getLogicalDim1Kindint8IntegerDim0Kindint8
      end interface get
      interface get
         module procedure getLogicalDim1Kindint8IntegerDim0Kindint16
      end interface get
      interface get
         module procedure getLogicalDim1Kindint8IntegerDim0Kindint32
      end interface get
      interface get
         module procedure getLogicalDim1Kindint8IntegerDim0Kindint64
      end interface get
      interface get
         module procedure getLogicalDim1Kindint16IntegerDim0Kindint8
      end interface get
      interface get
         module procedure getLogicalDim1Kindint16IntegerDim0Kindint16
      end interface get
      interface get
         module procedure getLogicalDim1Kindint16IntegerDim0Kindint32
      end interface get
      interface get
         module procedure getLogicalDim1Kindint16IntegerDim0Kindint64
      end interface get
      interface get
         module procedure getLogicalDim1Kindint32IntegerDim0Kindint8
      end interface get
      interface get
         module procedure getLogicalDim1Kindint32IntegerDim0Kindint16
      end interface get
      interface get
         module procedure getLogicalDim1Kindint32IntegerDim0Kindint32
      end interface get
      interface get
         module procedure getLogicalDim1Kindint32IntegerDim0Kindint64
      end interface get
      interface get
         module procedure getLogicalDim1Kindint64IntegerDim0Kindint8
      end interface get
      interface get
         module procedure getLogicalDim1Kindint64IntegerDim0Kindint16
      end interface get
      interface get
         module procedure getLogicalDim1Kindint64IntegerDim0Kindint32
      end interface get
      interface get
         module procedure getLogicalDim1Kindint64IntegerDim0Kindint64
      end interface get
      interface get
         module procedure getIntegerDim1Kindint8IntegerDim0Kindint8
      end interface get
      interface get
         module procedure getIntegerDim1Kindint8IntegerDim0Kindint16
      end interface get
      interface get
         module procedure getIntegerDim1Kindint8IntegerDim0Kindint32
      end interface get
      interface get
         module procedure getIntegerDim1Kindint8IntegerDim0Kindint64
      end interface get
      interface get
         module procedure getIntegerDim1Kindint16IntegerDim0Kindint8
      end interface get
      interface get
         module procedure getIntegerDim1Kindint16IntegerDim0Kindint16
      end interface get
      interface get
         module procedure getIntegerDim1Kindint16IntegerDim0Kindint32
      end interface get
      interface get
         module procedure getIntegerDim1Kindint16IntegerDim0Kindint64
      end interface get
      interface get
         module procedure getIntegerDim1Kindint32IntegerDim0Kindint8
      end interface get
      interface get
         module procedure getIntegerDim1Kindint32IntegerDim0Kindint16
      end interface get
      interface get
         module procedure getIntegerDim1Kindint32IntegerDim0Kindint32
      end interface get
      interface get
         module procedure getIntegerDim1Kindint32IntegerDim0Kindint64
      end interface get
      interface get
         module procedure getIntegerDim1Kindint64IntegerDim0Kindint8
      end interface get
      interface get
         module procedure getIntegerDim1Kindint64IntegerDim0Kindint16
      end interface get
      interface get
         module procedure getIntegerDim1Kindint64IntegerDim0Kindint32
      end interface get
      interface get
         module procedure getIntegerDim1Kindint64IntegerDim0Kindint64
      end interface get
      interface get
         module procedure getRealDim1Kindreal32IntegerDim0Kindint8
      end interface get
      interface get
         module procedure getRealDim1Kindreal32IntegerDim0Kindint16
      end interface get
      interface get
         module procedure getRealDim1Kindreal32IntegerDim0Kindint32
      end interface get
      interface get
         module procedure getRealDim1Kindreal32IntegerDim0Kindint64
      end interface get
      interface get
         module procedure getRealDim1Kindreal64IntegerDim0Kindint8
      end interface get
      interface get
         module procedure getRealDim1Kindreal64IntegerDim0Kindint16
      end interface get
      interface get
         module procedure getRealDim1Kindreal64IntegerDim0Kindint32
      end interface get
      interface get
         module procedure getRealDim1Kindreal64IntegerDim0Kindint64
      end interface get
      interface get
         module procedure getRealDim1Kindreal128IntegerDim0Kindint8
      end interface get
      interface get
         module procedure getRealDim1Kindreal128IntegerDim0Kindint16
      end interface get
      interface get
         module procedure getRealDim1Kindreal128IntegerDim0Kindint32
      end interface get
      interface get
         module procedure getRealDim1Kindreal128IntegerDim0Kindint64
      end interface get
      interface eye
         module procedure eye_mnIntegerDim0Kindint8
         module procedure eye_nIntegerDim0Kindint8
      end interface eye
      interface eye
         module procedure eye_mnIntegerDim0Kindint16
         module procedure eye_nIntegerDim0Kindint16
      end interface eye
      interface eye
         module procedure eye_mnIntegerDim0Kindint32
         module procedure eye_nIntegerDim0Kindint32
      end interface eye
      interface eye
         module procedure eye_mnIntegerDim0Kindint64
         module procedure eye_nIntegerDim0Kindint64
      end interface eye
      interface l2_norm
         module procedure l2_normRealDim1Kindreal32
      end interface l2_norm
      interface l2_norm
         module procedure l2_normRealDim1Kindreal64
      end interface l2_norm
      interface l2_norm
         module procedure l2_normRealDim1Kindreal128
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
      function mul_diag_AdRealDim2Kindreal32RealDim1Kindreal32(A, d) result(ret)
         Integer(kind=int64):: i
         Real(kind=real32), dimension(:, :), intent(in):: A
         Real(kind=real32), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Real(kind=real32):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdRealDim2Kindreal32RealDim1Kindreal32
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dARealDim1Kindreal32RealDim2Kindreal32(d_, A) result(ret)
         Integer(kind=int64):: i
         Real(kind=real32), dimension(:, :), intent(in):: A
         Real(kind=real32), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Real(kind=real32):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dARealDim1Kindreal32RealDim2Kindreal32
      function mul_diag_AdRealDim2Kindreal64RealDim1Kindreal32(A, d) result(ret)
         Integer(kind=int64):: i
         Real(kind=real64), dimension(:, :), intent(in):: A
         Real(kind=real32), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Real(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdRealDim2Kindreal64RealDim1Kindreal32
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dARealDim1Kindreal32RealDim2Kindreal64(d_, A) result(ret)
         Integer(kind=int64):: i
         Real(kind=real64), dimension(:, :), intent(in):: A
         Real(kind=real32), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Real(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dARealDim1Kindreal32RealDim2Kindreal64
      function mul_diag_AdRealDim2Kindreal128RealDim1Kindreal32(A, d) result(ret)
         Integer(kind=int64):: i
         Real(kind=real128), dimension(:, :), intent(in):: A
         Real(kind=real32), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Real(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdRealDim2Kindreal128RealDim1Kindreal32
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dARealDim1Kindreal32RealDim2Kindreal128(d_, A) result(ret)
         Integer(kind=int64):: i
         Real(kind=real128), dimension(:, :), intent(in):: A
         Real(kind=real32), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Real(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dARealDim1Kindreal32RealDim2Kindreal128
      function mul_diag_AdComplexDim2Kindreal32RealDim1Kindreal32(A, d) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real32), dimension(:, :), intent(in):: A
         Real(kind=real32), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real32):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdComplexDim2Kindreal32RealDim1Kindreal32
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dARealDim1Kindreal32ComplexDim2Kindreal32(d_, A) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real32), dimension(:, :), intent(in):: A
         Real(kind=real32), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real32):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dARealDim1Kindreal32ComplexDim2Kindreal32
      function mul_diag_AdComplexDim2Kindreal64RealDim1Kindreal32(A, d) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real64), dimension(:, :), intent(in):: A
         Real(kind=real32), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdComplexDim2Kindreal64RealDim1Kindreal32
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dARealDim1Kindreal32ComplexDim2Kindreal64(d_, A) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real64), dimension(:, :), intent(in):: A
         Real(kind=real32), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dARealDim1Kindreal32ComplexDim2Kindreal64
      function mul_diag_AdComplexDim2Kindreal128RealDim1Kindreal32(A, d) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real128), dimension(:, :), intent(in):: A
         Real(kind=real32), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdComplexDim2Kindreal128RealDim1Kindreal32
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dARealDim1Kindreal32ComplexDim2Kindreal128(d_, A) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real128), dimension(:, :), intent(in):: A
         Real(kind=real32), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dARealDim1Kindreal32ComplexDim2Kindreal128
      function mul_diag_AdRealDim2Kindreal32RealDim1Kindreal64(A, d) result(ret)
         Integer(kind=int64):: i
         Real(kind=real32), dimension(:, :), intent(in):: A
         Real(kind=real64), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Real(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdRealDim2Kindreal32RealDim1Kindreal64
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dARealDim1Kindreal64RealDim2Kindreal32(d_, A) result(ret)
         Integer(kind=int64):: i
         Real(kind=real32), dimension(:, :), intent(in):: A
         Real(kind=real64), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Real(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dARealDim1Kindreal64RealDim2Kindreal32
      function mul_diag_AdRealDim2Kindreal64RealDim1Kindreal64(A, d) result(ret)
         Integer(kind=int64):: i
         Real(kind=real64), dimension(:, :), intent(in):: A
         Real(kind=real64), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Real(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdRealDim2Kindreal64RealDim1Kindreal64
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dARealDim1Kindreal64RealDim2Kindreal64(d_, A) result(ret)
         Integer(kind=int64):: i
         Real(kind=real64), dimension(:, :), intent(in):: A
         Real(kind=real64), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Real(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dARealDim1Kindreal64RealDim2Kindreal64
      function mul_diag_AdRealDim2Kindreal128RealDim1Kindreal64(A, d) result(ret)
         Integer(kind=int64):: i
         Real(kind=real128), dimension(:, :), intent(in):: A
         Real(kind=real64), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Real(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdRealDim2Kindreal128RealDim1Kindreal64
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dARealDim1Kindreal64RealDim2Kindreal128(d_, A) result(ret)
         Integer(kind=int64):: i
         Real(kind=real128), dimension(:, :), intent(in):: A
         Real(kind=real64), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Real(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dARealDim1Kindreal64RealDim2Kindreal128
      function mul_diag_AdComplexDim2Kindreal32RealDim1Kindreal64(A, d) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real32), dimension(:, :), intent(in):: A
         Real(kind=real64), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdComplexDim2Kindreal32RealDim1Kindreal64
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dARealDim1Kindreal64ComplexDim2Kindreal32(d_, A) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real32), dimension(:, :), intent(in):: A
         Real(kind=real64), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dARealDim1Kindreal64ComplexDim2Kindreal32
      function mul_diag_AdComplexDim2Kindreal64RealDim1Kindreal64(A, d) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real64), dimension(:, :), intent(in):: A
         Real(kind=real64), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdComplexDim2Kindreal64RealDim1Kindreal64
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dARealDim1Kindreal64ComplexDim2Kindreal64(d_, A) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real64), dimension(:, :), intent(in):: A
         Real(kind=real64), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dARealDim1Kindreal64ComplexDim2Kindreal64
      function mul_diag_AdComplexDim2Kindreal128RealDim1Kindreal64(A, d) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real128), dimension(:, :), intent(in):: A
         Real(kind=real64), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdComplexDim2Kindreal128RealDim1Kindreal64
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dARealDim1Kindreal64ComplexDim2Kindreal128(d_, A) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real128), dimension(:, :), intent(in):: A
         Real(kind=real64), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dARealDim1Kindreal64ComplexDim2Kindreal128
      function mul_diag_AdRealDim2Kindreal32RealDim1Kindreal128(A, d) result(ret)
         Integer(kind=int64):: i
         Real(kind=real32), dimension(:, :), intent(in):: A
         Real(kind=real128), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Real(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdRealDim2Kindreal32RealDim1Kindreal128
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dARealDim1Kindreal128RealDim2Kindreal32(d_, A) result(ret)
         Integer(kind=int64):: i
         Real(kind=real32), dimension(:, :), intent(in):: A
         Real(kind=real128), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Real(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dARealDim1Kindreal128RealDim2Kindreal32
      function mul_diag_AdRealDim2Kindreal64RealDim1Kindreal128(A, d) result(ret)
         Integer(kind=int64):: i
         Real(kind=real64), dimension(:, :), intent(in):: A
         Real(kind=real128), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Real(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdRealDim2Kindreal64RealDim1Kindreal128
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dARealDim1Kindreal128RealDim2Kindreal64(d_, A) result(ret)
         Integer(kind=int64):: i
         Real(kind=real64), dimension(:, :), intent(in):: A
         Real(kind=real128), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Real(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dARealDim1Kindreal128RealDim2Kindreal64
      function mul_diag_AdRealDim2Kindreal128RealDim1Kindreal128(A, d) result(ret)
         Integer(kind=int64):: i
         Real(kind=real128), dimension(:, :), intent(in):: A
         Real(kind=real128), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Real(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdRealDim2Kindreal128RealDim1Kindreal128
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dARealDim1Kindreal128RealDim2Kindreal128(d_, A) result(ret)
         Integer(kind=int64):: i
         Real(kind=real128), dimension(:, :), intent(in):: A
         Real(kind=real128), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Real(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dARealDim1Kindreal128RealDim2Kindreal128
      function mul_diag_AdComplexDim2Kindreal32RealDim1Kindreal128(A, d) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real32), dimension(:, :), intent(in):: A
         Real(kind=real128), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdComplexDim2Kindreal32RealDim1Kindreal128
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dARealDim1Kindreal128ComplexDim2Kindreal32(d_, A) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real32), dimension(:, :), intent(in):: A
         Real(kind=real128), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dARealDim1Kindreal128ComplexDim2Kindreal32
      function mul_diag_AdComplexDim2Kindreal64RealDim1Kindreal128(A, d) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real64), dimension(:, :), intent(in):: A
         Real(kind=real128), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdComplexDim2Kindreal64RealDim1Kindreal128
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dARealDim1Kindreal128ComplexDim2Kindreal64(d_, A) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real64), dimension(:, :), intent(in):: A
         Real(kind=real128), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dARealDim1Kindreal128ComplexDim2Kindreal64
      function mul_diag_AdComplexDim2Kindreal128RealDim1Kindreal128(A, d) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real128), dimension(:, :), intent(in):: A
         Real(kind=real128), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdComplexDim2Kindreal128RealDim1Kindreal128
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dARealDim1Kindreal128ComplexDim2Kindreal128(d_, A) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real128), dimension(:, :), intent(in):: A
         Real(kind=real128), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dARealDim1Kindreal128ComplexDim2Kindreal128
      function mul_diag_AdRealDim2Kindreal32ComplexDim1Kindreal32(A, d) result(ret)
         Integer(kind=int64):: i
         Real(kind=real32), dimension(:, :), intent(in):: A
         Complex(kind=real32), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real32):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdRealDim2Kindreal32ComplexDim1Kindreal32
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dAComplexDim1Kindreal32RealDim2Kindreal32(d_, A) result(ret)
         Integer(kind=int64):: i
         Real(kind=real32), dimension(:, :), intent(in):: A
         Complex(kind=real32), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real32):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dAComplexDim1Kindreal32RealDim2Kindreal32
      function mul_diag_AdRealDim2Kindreal64ComplexDim1Kindreal32(A, d) result(ret)
         Integer(kind=int64):: i
         Real(kind=real64), dimension(:, :), intent(in):: A
         Complex(kind=real32), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdRealDim2Kindreal64ComplexDim1Kindreal32
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dAComplexDim1Kindreal32RealDim2Kindreal64(d_, A) result(ret)
         Integer(kind=int64):: i
         Real(kind=real64), dimension(:, :), intent(in):: A
         Complex(kind=real32), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dAComplexDim1Kindreal32RealDim2Kindreal64
      function mul_diag_AdRealDim2Kindreal128ComplexDim1Kindreal32(A, d) result(ret)
         Integer(kind=int64):: i
         Real(kind=real128), dimension(:, :), intent(in):: A
         Complex(kind=real32), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdRealDim2Kindreal128ComplexDim1Kindreal32
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dAComplexDim1Kindreal32RealDim2Kindreal128(d_, A) result(ret)
         Integer(kind=int64):: i
         Real(kind=real128), dimension(:, :), intent(in):: A
         Complex(kind=real32), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dAComplexDim1Kindreal32RealDim2Kindreal128
      function mul_diag_AdComplexDim2Kindreal32ComplexDim1Kindreal32(A, d) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real32), dimension(:, :), intent(in):: A
         Complex(kind=real32), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real32):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdComplexDim2Kindreal32ComplexDim1Kindreal32
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dAComplexDim1Kindreal32ComplexDim2Kindreal32(d_, A) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real32), dimension(:, :), intent(in):: A
         Complex(kind=real32), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real32):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dAComplexDim1Kindreal32ComplexDim2Kindreal32
      function mul_diag_AdComplexDim2Kindreal64ComplexDim1Kindreal32(A, d) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real64), dimension(:, :), intent(in):: A
         Complex(kind=real32), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdComplexDim2Kindreal64ComplexDim1Kindreal32
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dAComplexDim1Kindreal32ComplexDim2Kindreal64(d_, A) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real64), dimension(:, :), intent(in):: A
         Complex(kind=real32), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dAComplexDim1Kindreal32ComplexDim2Kindreal64
      function mul_diag_AdComplexDim2Kindreal128ComplexDim1Kindreal32(A, d) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real128), dimension(:, :), intent(in):: A
         Complex(kind=real32), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdComplexDim2Kindreal128ComplexDim1Kindreal32
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dAComplexDim1Kindreal32ComplexDim2Kindreal128(d_, A) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real128), dimension(:, :), intent(in):: A
         Complex(kind=real32), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dAComplexDim1Kindreal32ComplexDim2Kindreal128
      function mul_diag_AdRealDim2Kindreal32ComplexDim1Kindreal64(A, d) result(ret)
         Integer(kind=int64):: i
         Real(kind=real32), dimension(:, :), intent(in):: A
         Complex(kind=real64), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdRealDim2Kindreal32ComplexDim1Kindreal64
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dAComplexDim1Kindreal64RealDim2Kindreal32(d_, A) result(ret)
         Integer(kind=int64):: i
         Real(kind=real32), dimension(:, :), intent(in):: A
         Complex(kind=real64), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dAComplexDim1Kindreal64RealDim2Kindreal32
      function mul_diag_AdRealDim2Kindreal64ComplexDim1Kindreal64(A, d) result(ret)
         Integer(kind=int64):: i
         Real(kind=real64), dimension(:, :), intent(in):: A
         Complex(kind=real64), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdRealDim2Kindreal64ComplexDim1Kindreal64
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dAComplexDim1Kindreal64RealDim2Kindreal64(d_, A) result(ret)
         Integer(kind=int64):: i
         Real(kind=real64), dimension(:, :), intent(in):: A
         Complex(kind=real64), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dAComplexDim1Kindreal64RealDim2Kindreal64
      function mul_diag_AdRealDim2Kindreal128ComplexDim1Kindreal64(A, d) result(ret)
         Integer(kind=int64):: i
         Real(kind=real128), dimension(:, :), intent(in):: A
         Complex(kind=real64), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdRealDim2Kindreal128ComplexDim1Kindreal64
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dAComplexDim1Kindreal64RealDim2Kindreal128(d_, A) result(ret)
         Integer(kind=int64):: i
         Real(kind=real128), dimension(:, :), intent(in):: A
         Complex(kind=real64), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dAComplexDim1Kindreal64RealDim2Kindreal128
      function mul_diag_AdComplexDim2Kindreal32ComplexDim1Kindreal64(A, d) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real32), dimension(:, :), intent(in):: A
         Complex(kind=real64), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdComplexDim2Kindreal32ComplexDim1Kindreal64
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dAComplexDim1Kindreal64ComplexDim2Kindreal32(d_, A) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real32), dimension(:, :), intent(in):: A
         Complex(kind=real64), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dAComplexDim1Kindreal64ComplexDim2Kindreal32
      function mul_diag_AdComplexDim2Kindreal64ComplexDim1Kindreal64(A, d) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real64), dimension(:, :), intent(in):: A
         Complex(kind=real64), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdComplexDim2Kindreal64ComplexDim1Kindreal64
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dAComplexDim1Kindreal64ComplexDim2Kindreal64(d_, A) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real64), dimension(:, :), intent(in):: A
         Complex(kind=real64), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real64):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dAComplexDim1Kindreal64ComplexDim2Kindreal64
      function mul_diag_AdComplexDim2Kindreal128ComplexDim1Kindreal64(A, d) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real128), dimension(:, :), intent(in):: A
         Complex(kind=real64), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdComplexDim2Kindreal128ComplexDim1Kindreal64
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dAComplexDim1Kindreal64ComplexDim2Kindreal128(d_, A) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real128), dimension(:, :), intent(in):: A
         Complex(kind=real64), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dAComplexDim1Kindreal64ComplexDim2Kindreal128
      function mul_diag_AdRealDim2Kindreal32ComplexDim1Kindreal128(A, d) result(ret)
         Integer(kind=int64):: i
         Real(kind=real32), dimension(:, :), intent(in):: A
         Complex(kind=real128), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdRealDim2Kindreal32ComplexDim1Kindreal128
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dAComplexDim1Kindreal128RealDim2Kindreal32(d_, A) result(ret)
         Integer(kind=int64):: i
         Real(kind=real32), dimension(:, :), intent(in):: A
         Complex(kind=real128), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dAComplexDim1Kindreal128RealDim2Kindreal32
      function mul_diag_AdRealDim2Kindreal64ComplexDim1Kindreal128(A, d) result(ret)
         Integer(kind=int64):: i
         Real(kind=real64), dimension(:, :), intent(in):: A
         Complex(kind=real128), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdRealDim2Kindreal64ComplexDim1Kindreal128
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dAComplexDim1Kindreal128RealDim2Kindreal64(d_, A) result(ret)
         Integer(kind=int64):: i
         Real(kind=real64), dimension(:, :), intent(in):: A
         Complex(kind=real128), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dAComplexDim1Kindreal128RealDim2Kindreal64
      function mul_diag_AdRealDim2Kindreal128ComplexDim1Kindreal128(A, d) result(ret)
         Integer(kind=int64):: i
         Real(kind=real128), dimension(:, :), intent(in):: A
         Complex(kind=real128), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdRealDim2Kindreal128ComplexDim1Kindreal128
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dAComplexDim1Kindreal128RealDim2Kindreal128(d_, A) result(ret)
         Integer(kind=int64):: i
         Real(kind=real128), dimension(:, :), intent(in):: A
         Complex(kind=real128), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dAComplexDim1Kindreal128RealDim2Kindreal128
      function mul_diag_AdComplexDim2Kindreal32ComplexDim1Kindreal128(A, d) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real32), dimension(:, :), intent(in):: A
         Complex(kind=real128), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdComplexDim2Kindreal32ComplexDim1Kindreal128
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dAComplexDim1Kindreal128ComplexDim2Kindreal32(d_, A) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real32), dimension(:, :), intent(in):: A
         Complex(kind=real128), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dAComplexDim1Kindreal128ComplexDim2Kindreal32
      function mul_diag_AdComplexDim2Kindreal64ComplexDim1Kindreal128(A, d) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real64), dimension(:, :), intent(in):: A
         Complex(kind=real128), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdComplexDim2Kindreal64ComplexDim1Kindreal128
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dAComplexDim1Kindreal128ComplexDim2Kindreal64(d_, A) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real64), dimension(:, :), intent(in):: A
         Complex(kind=real128), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dAComplexDim1Kindreal128ComplexDim2Kindreal64
      function mul_diag_AdComplexDim2Kindreal128ComplexDim1Kindreal128(A, d) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real128), dimension(:, :), intent(in):: A
         Complex(kind=real128), dimension(:), intent(in):: d(size(A, 2, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 2, kind=kind(i))
            ret(:, i) = A(:, i)*d(i)
         end do
      end function mul_diag_AdComplexDim2Kindreal128ComplexDim1Kindreal128
      ! `d` is named `d_` to avoid ambiguity
      function mul_diag_dAComplexDim1Kindreal128ComplexDim2Kindreal128(d_, A) result(ret)
         Integer(kind=int64):: i
         Complex(kind=real128), dimension(:, :), intent(in):: A
         Complex(kind=real128), dimension(:), intent(in):: d_(size(A, 1, kind=kind(i)))
         Complex(kind=real128):: ret(size(A, 1, kind=kind(i)), size(A, 2, kind=kind(i)))
         do i = 1, size(A, 1, kind=kind(i))
            ret(i, :) = d_(i)*A(i, :)
         end do
      end function mul_diag_dAComplexDim1Kindreal128ComplexDim2Kindreal128
      function getComplexDim1Kindreal32IntegerDim0Kindint8(xs, i) result(ret)
         Complex(kind=real32), dimension(:), intent(in):: xs
         Integer(kind=int8), intent(in):: i
         Complex(kind=real32):: ret
         ret = xs(i)
      end function getComplexDim1Kindreal32IntegerDim0Kindint8
      function getComplexDim1Kindreal32IntegerDim0Kindint16(xs, i) result(ret)
         Complex(kind=real32), dimension(:), intent(in):: xs
         Integer(kind=int16), intent(in):: i
         Complex(kind=real32):: ret
         ret = xs(i)
      end function getComplexDim1Kindreal32IntegerDim0Kindint16
      function getComplexDim1Kindreal32IntegerDim0Kindint32(xs, i) result(ret)
         Complex(kind=real32), dimension(:), intent(in):: xs
         Integer(kind=int32), intent(in):: i
         Complex(kind=real32):: ret
         ret = xs(i)
      end function getComplexDim1Kindreal32IntegerDim0Kindint32
      function getComplexDim1Kindreal32IntegerDim0Kindint64(xs, i) result(ret)
         Complex(kind=real32), dimension(:), intent(in):: xs
         Integer(kind=int64), intent(in):: i
         Complex(kind=real32):: ret
         ret = xs(i)
      end function getComplexDim1Kindreal32IntegerDim0Kindint64
      function getComplexDim1Kindreal64IntegerDim0Kindint8(xs, i) result(ret)
         Complex(kind=real64), dimension(:), intent(in):: xs
         Integer(kind=int8), intent(in):: i
         Complex(kind=real64):: ret
         ret = xs(i)
      end function getComplexDim1Kindreal64IntegerDim0Kindint8
      function getComplexDim1Kindreal64IntegerDim0Kindint16(xs, i) result(ret)
         Complex(kind=real64), dimension(:), intent(in):: xs
         Integer(kind=int16), intent(in):: i
         Complex(kind=real64):: ret
         ret = xs(i)
      end function getComplexDim1Kindreal64IntegerDim0Kindint16
      function getComplexDim1Kindreal64IntegerDim0Kindint32(xs, i) result(ret)
         Complex(kind=real64), dimension(:), intent(in):: xs
         Integer(kind=int32), intent(in):: i
         Complex(kind=real64):: ret
         ret = xs(i)
      end function getComplexDim1Kindreal64IntegerDim0Kindint32
      function getComplexDim1Kindreal64IntegerDim0Kindint64(xs, i) result(ret)
         Complex(kind=real64), dimension(:), intent(in):: xs
         Integer(kind=int64), intent(in):: i
         Complex(kind=real64):: ret
         ret = xs(i)
      end function getComplexDim1Kindreal64IntegerDim0Kindint64
      function getComplexDim1Kindreal128IntegerDim0Kindint8(xs, i) result(ret)
         Complex(kind=real128), dimension(:), intent(in):: xs
         Integer(kind=int8), intent(in):: i
         Complex(kind=real128):: ret
         ret = xs(i)
      end function getComplexDim1Kindreal128IntegerDim0Kindint8
      function getComplexDim1Kindreal128IntegerDim0Kindint16(xs, i) result(ret)
         Complex(kind=real128), dimension(:), intent(in):: xs
         Integer(kind=int16), intent(in):: i
         Complex(kind=real128):: ret
         ret = xs(i)
      end function getComplexDim1Kindreal128IntegerDim0Kindint16
      function getComplexDim1Kindreal128IntegerDim0Kindint32(xs, i) result(ret)
         Complex(kind=real128), dimension(:), intent(in):: xs
         Integer(kind=int32), intent(in):: i
         Complex(kind=real128):: ret
         ret = xs(i)
      end function getComplexDim1Kindreal128IntegerDim0Kindint32
      function getComplexDim1Kindreal128IntegerDim0Kindint64(xs, i) result(ret)
         Complex(kind=real128), dimension(:), intent(in):: xs
         Integer(kind=int64), intent(in):: i
         Complex(kind=real128):: ret
         ret = xs(i)
      end function getComplexDim1Kindreal128IntegerDim0Kindint64
      function getLogicalDim1Kindint8IntegerDim0Kindint8(xs, i) result(ret)
         Logical(kind=int8), dimension(:), intent(in):: xs
         Integer(kind=int8), intent(in):: i
         Logical(kind=int8):: ret
         ret = xs(i)
      end function getLogicalDim1Kindint8IntegerDim0Kindint8
      function getLogicalDim1Kindint8IntegerDim0Kindint16(xs, i) result(ret)
         Logical(kind=int8), dimension(:), intent(in):: xs
         Integer(kind=int16), intent(in):: i
         Logical(kind=int8):: ret
         ret = xs(i)
      end function getLogicalDim1Kindint8IntegerDim0Kindint16
      function getLogicalDim1Kindint8IntegerDim0Kindint32(xs, i) result(ret)
         Logical(kind=int8), dimension(:), intent(in):: xs
         Integer(kind=int32), intent(in):: i
         Logical(kind=int8):: ret
         ret = xs(i)
      end function getLogicalDim1Kindint8IntegerDim0Kindint32
      function getLogicalDim1Kindint8IntegerDim0Kindint64(xs, i) result(ret)
         Logical(kind=int8), dimension(:), intent(in):: xs
         Integer(kind=int64), intent(in):: i
         Logical(kind=int8):: ret
         ret = xs(i)
      end function getLogicalDim1Kindint8IntegerDim0Kindint64
      function getLogicalDim1Kindint16IntegerDim0Kindint8(xs, i) result(ret)
         Logical(kind=int16), dimension(:), intent(in):: xs
         Integer(kind=int8), intent(in):: i
         Logical(kind=int16):: ret
         ret = xs(i)
      end function getLogicalDim1Kindint16IntegerDim0Kindint8
      function getLogicalDim1Kindint16IntegerDim0Kindint16(xs, i) result(ret)
         Logical(kind=int16), dimension(:), intent(in):: xs
         Integer(kind=int16), intent(in):: i
         Logical(kind=int16):: ret
         ret = xs(i)
      end function getLogicalDim1Kindint16IntegerDim0Kindint16
      function getLogicalDim1Kindint16IntegerDim0Kindint32(xs, i) result(ret)
         Logical(kind=int16), dimension(:), intent(in):: xs
         Integer(kind=int32), intent(in):: i
         Logical(kind=int16):: ret
         ret = xs(i)
      end function getLogicalDim1Kindint16IntegerDim0Kindint32
      function getLogicalDim1Kindint16IntegerDim0Kindint64(xs, i) result(ret)
         Logical(kind=int16), dimension(:), intent(in):: xs
         Integer(kind=int64), intent(in):: i
         Logical(kind=int16):: ret
         ret = xs(i)
      end function getLogicalDim1Kindint16IntegerDim0Kindint64
      function getLogicalDim1Kindint32IntegerDim0Kindint8(xs, i) result(ret)
         Logical(kind=int32), dimension(:), intent(in):: xs
         Integer(kind=int8), intent(in):: i
         Logical(kind=int32):: ret
         ret = xs(i)
      end function getLogicalDim1Kindint32IntegerDim0Kindint8
      function getLogicalDim1Kindint32IntegerDim0Kindint16(xs, i) result(ret)
         Logical(kind=int32), dimension(:), intent(in):: xs
         Integer(kind=int16), intent(in):: i
         Logical(kind=int32):: ret
         ret = xs(i)
      end function getLogicalDim1Kindint32IntegerDim0Kindint16
      function getLogicalDim1Kindint32IntegerDim0Kindint32(xs, i) result(ret)
         Logical(kind=int32), dimension(:), intent(in):: xs
         Integer(kind=int32), intent(in):: i
         Logical(kind=int32):: ret
         ret = xs(i)
      end function getLogicalDim1Kindint32IntegerDim0Kindint32
      function getLogicalDim1Kindint32IntegerDim0Kindint64(xs, i) result(ret)
         Logical(kind=int32), dimension(:), intent(in):: xs
         Integer(kind=int64), intent(in):: i
         Logical(kind=int32):: ret
         ret = xs(i)
      end function getLogicalDim1Kindint32IntegerDim0Kindint64
      function getLogicalDim1Kindint64IntegerDim0Kindint8(xs, i) result(ret)
         Logical(kind=int64), dimension(:), intent(in):: xs
         Integer(kind=int8), intent(in):: i
         Logical(kind=int64):: ret
         ret = xs(i)
      end function getLogicalDim1Kindint64IntegerDim0Kindint8
      function getLogicalDim1Kindint64IntegerDim0Kindint16(xs, i) result(ret)
         Logical(kind=int64), dimension(:), intent(in):: xs
         Integer(kind=int16), intent(in):: i
         Logical(kind=int64):: ret
         ret = xs(i)
      end function getLogicalDim1Kindint64IntegerDim0Kindint16
      function getLogicalDim1Kindint64IntegerDim0Kindint32(xs, i) result(ret)
         Logical(kind=int64), dimension(:), intent(in):: xs
         Integer(kind=int32), intent(in):: i
         Logical(kind=int64):: ret
         ret = xs(i)
      end function getLogicalDim1Kindint64IntegerDim0Kindint32
      function getLogicalDim1Kindint64IntegerDim0Kindint64(xs, i) result(ret)
         Logical(kind=int64), dimension(:), intent(in):: xs
         Integer(kind=int64), intent(in):: i
         Logical(kind=int64):: ret
         ret = xs(i)
      end function getLogicalDim1Kindint64IntegerDim0Kindint64
      function getIntegerDim1Kindint8IntegerDim0Kindint8(xs, i) result(ret)
         Integer(kind=int8), dimension(:), intent(in):: xs
         Integer(kind=int8), intent(in):: i
         Integer(kind=int8):: ret
         ret = xs(i)
      end function getIntegerDim1Kindint8IntegerDim0Kindint8
      function getIntegerDim1Kindint8IntegerDim0Kindint16(xs, i) result(ret)
         Integer(kind=int8), dimension(:), intent(in):: xs
         Integer(kind=int16), intent(in):: i
         Integer(kind=int8):: ret
         ret = xs(i)
      end function getIntegerDim1Kindint8IntegerDim0Kindint16
      function getIntegerDim1Kindint8IntegerDim0Kindint32(xs, i) result(ret)
         Integer(kind=int8), dimension(:), intent(in):: xs
         Integer(kind=int32), intent(in):: i
         Integer(kind=int8):: ret
         ret = xs(i)
      end function getIntegerDim1Kindint8IntegerDim0Kindint32
      function getIntegerDim1Kindint8IntegerDim0Kindint64(xs, i) result(ret)
         Integer(kind=int8), dimension(:), intent(in):: xs
         Integer(kind=int64), intent(in):: i
         Integer(kind=int8):: ret
         ret = xs(i)
      end function getIntegerDim1Kindint8IntegerDim0Kindint64
      function getIntegerDim1Kindint16IntegerDim0Kindint8(xs, i) result(ret)
         Integer(kind=int16), dimension(:), intent(in):: xs
         Integer(kind=int8), intent(in):: i
         Integer(kind=int16):: ret
         ret = xs(i)
      end function getIntegerDim1Kindint16IntegerDim0Kindint8
      function getIntegerDim1Kindint16IntegerDim0Kindint16(xs, i) result(ret)
         Integer(kind=int16), dimension(:), intent(in):: xs
         Integer(kind=int16), intent(in):: i
         Integer(kind=int16):: ret
         ret = xs(i)
      end function getIntegerDim1Kindint16IntegerDim0Kindint16
      function getIntegerDim1Kindint16IntegerDim0Kindint32(xs, i) result(ret)
         Integer(kind=int16), dimension(:), intent(in):: xs
         Integer(kind=int32), intent(in):: i
         Integer(kind=int16):: ret
         ret = xs(i)
      end function getIntegerDim1Kindint16IntegerDim0Kindint32
      function getIntegerDim1Kindint16IntegerDim0Kindint64(xs, i) result(ret)
         Integer(kind=int16), dimension(:), intent(in):: xs
         Integer(kind=int64), intent(in):: i
         Integer(kind=int16):: ret
         ret = xs(i)
      end function getIntegerDim1Kindint16IntegerDim0Kindint64
      function getIntegerDim1Kindint32IntegerDim0Kindint8(xs, i) result(ret)
         Integer(kind=int32), dimension(:), intent(in):: xs
         Integer(kind=int8), intent(in):: i
         Integer(kind=int32):: ret
         ret = xs(i)
      end function getIntegerDim1Kindint32IntegerDim0Kindint8
      function getIntegerDim1Kindint32IntegerDim0Kindint16(xs, i) result(ret)
         Integer(kind=int32), dimension(:), intent(in):: xs
         Integer(kind=int16), intent(in):: i
         Integer(kind=int32):: ret
         ret = xs(i)
      end function getIntegerDim1Kindint32IntegerDim0Kindint16
      function getIntegerDim1Kindint32IntegerDim0Kindint32(xs, i) result(ret)
         Integer(kind=int32), dimension(:), intent(in):: xs
         Integer(kind=int32), intent(in):: i
         Integer(kind=int32):: ret
         ret = xs(i)
      end function getIntegerDim1Kindint32IntegerDim0Kindint32
      function getIntegerDim1Kindint32IntegerDim0Kindint64(xs, i) result(ret)
         Integer(kind=int32), dimension(:), intent(in):: xs
         Integer(kind=int64), intent(in):: i
         Integer(kind=int32):: ret
         ret = xs(i)
      end function getIntegerDim1Kindint32IntegerDim0Kindint64
      function getIntegerDim1Kindint64IntegerDim0Kindint8(xs, i) result(ret)
         Integer(kind=int64), dimension(:), intent(in):: xs
         Integer(kind=int8), intent(in):: i
         Integer(kind=int64):: ret
         ret = xs(i)
      end function getIntegerDim1Kindint64IntegerDim0Kindint8
      function getIntegerDim1Kindint64IntegerDim0Kindint16(xs, i) result(ret)
         Integer(kind=int64), dimension(:), intent(in):: xs
         Integer(kind=int16), intent(in):: i
         Integer(kind=int64):: ret
         ret = xs(i)
      end function getIntegerDim1Kindint64IntegerDim0Kindint16
      function getIntegerDim1Kindint64IntegerDim0Kindint32(xs, i) result(ret)
         Integer(kind=int64), dimension(:), intent(in):: xs
         Integer(kind=int32), intent(in):: i
         Integer(kind=int64):: ret
         ret = xs(i)
      end function getIntegerDim1Kindint64IntegerDim0Kindint32
      function getIntegerDim1Kindint64IntegerDim0Kindint64(xs, i) result(ret)
         Integer(kind=int64), dimension(:), intent(in):: xs
         Integer(kind=int64), intent(in):: i
         Integer(kind=int64):: ret
         ret = xs(i)
      end function getIntegerDim1Kindint64IntegerDim0Kindint64
      function getRealDim1Kindreal32IntegerDim0Kindint8(xs, i) result(ret)
         Real(kind=real32), dimension(:), intent(in):: xs
         Integer(kind=int8), intent(in):: i
         Real(kind=real32):: ret
         ret = xs(i)
      end function getRealDim1Kindreal32IntegerDim0Kindint8
      function getRealDim1Kindreal32IntegerDim0Kindint16(xs, i) result(ret)
         Real(kind=real32), dimension(:), intent(in):: xs
         Integer(kind=int16), intent(in):: i
         Real(kind=real32):: ret
         ret = xs(i)
      end function getRealDim1Kindreal32IntegerDim0Kindint16
      function getRealDim1Kindreal32IntegerDim0Kindint32(xs, i) result(ret)
         Real(kind=real32), dimension(:), intent(in):: xs
         Integer(kind=int32), intent(in):: i
         Real(kind=real32):: ret
         ret = xs(i)
      end function getRealDim1Kindreal32IntegerDim0Kindint32
      function getRealDim1Kindreal32IntegerDim0Kindint64(xs, i) result(ret)
         Real(kind=real32), dimension(:), intent(in):: xs
         Integer(kind=int64), intent(in):: i
         Real(kind=real32):: ret
         ret = xs(i)
      end function getRealDim1Kindreal32IntegerDim0Kindint64
      function getRealDim1Kindreal64IntegerDim0Kindint8(xs, i) result(ret)
         Real(kind=real64), dimension(:), intent(in):: xs
         Integer(kind=int8), intent(in):: i
         Real(kind=real64):: ret
         ret = xs(i)
      end function getRealDim1Kindreal64IntegerDim0Kindint8
      function getRealDim1Kindreal64IntegerDim0Kindint16(xs, i) result(ret)
         Real(kind=real64), dimension(:), intent(in):: xs
         Integer(kind=int16), intent(in):: i
         Real(kind=real64):: ret
         ret = xs(i)
      end function getRealDim1Kindreal64IntegerDim0Kindint16
      function getRealDim1Kindreal64IntegerDim0Kindint32(xs, i) result(ret)
         Real(kind=real64), dimension(:), intent(in):: xs
         Integer(kind=int32), intent(in):: i
         Real(kind=real64):: ret
         ret = xs(i)
      end function getRealDim1Kindreal64IntegerDim0Kindint32
      function getRealDim1Kindreal64IntegerDim0Kindint64(xs, i) result(ret)
         Real(kind=real64), dimension(:), intent(in):: xs
         Integer(kind=int64), intent(in):: i
         Real(kind=real64):: ret
         ret = xs(i)
      end function getRealDim1Kindreal64IntegerDim0Kindint64
      function getRealDim1Kindreal128IntegerDim0Kindint8(xs, i) result(ret)
         Real(kind=real128), dimension(:), intent(in):: xs
         Integer(kind=int8), intent(in):: i
         Real(kind=real128):: ret
         ret = xs(i)
      end function getRealDim1Kindreal128IntegerDim0Kindint8
      function getRealDim1Kindreal128IntegerDim0Kindint16(xs, i) result(ret)
         Real(kind=real128), dimension(:), intent(in):: xs
         Integer(kind=int16), intent(in):: i
         Real(kind=real128):: ret
         ret = xs(i)
      end function getRealDim1Kindreal128IntegerDim0Kindint16
      function getRealDim1Kindreal128IntegerDim0Kindint32(xs, i) result(ret)
         Real(kind=real128), dimension(:), intent(in):: xs
         Integer(kind=int32), intent(in):: i
         Real(kind=real128):: ret
         ret = xs(i)
      end function getRealDim1Kindreal128IntegerDim0Kindint32
      function getRealDim1Kindreal128IntegerDim0Kindint64(xs, i) result(ret)
         Real(kind=real128), dimension(:), intent(in):: xs
         Integer(kind=int64), intent(in):: i
         Real(kind=real128):: ret
         ret = xs(i)
      end function getRealDim1Kindreal128IntegerDim0Kindint64
      function eye_nIntegerDim0Kindint8(n) result(ret)
         Integer(kind=int8), intent(in):: n
         Integer(kind=INT8):: ret(n, n)
         ret = eye(n, n)
      end function eye_nIntegerDim0Kindint8
      function eye_mnIntegerDim0Kindint8(m, n) result(ret)
         Integer(kind=int8), intent(in):: m, n
         Integer(kind=INT8):: ret(m, n)
         Integer(kind=kind(m)):: i
         ret = 0
         do i = 1, min(m, n)
            ret(i, i) = 1
         end do
      end function eye_mnIntegerDim0Kindint8
      function eye_nIntegerDim0Kindint16(n) result(ret)
         Integer(kind=int16), intent(in):: n
         Integer(kind=INT8):: ret(n, n)
         ret = eye(n, n)
      end function eye_nIntegerDim0Kindint16
      function eye_mnIntegerDim0Kindint16(m, n) result(ret)
         Integer(kind=int16), intent(in):: m, n
         Integer(kind=INT8):: ret(m, n)
         Integer(kind=kind(m)):: i
         ret = 0
         do i = 1, min(m, n)
            ret(i, i) = 1
         end do
      end function eye_mnIntegerDim0Kindint16
      function eye_nIntegerDim0Kindint32(n) result(ret)
         Integer(kind=int32), intent(in):: n
         Integer(kind=INT8):: ret(n, n)
         ret = eye(n, n)
      end function eye_nIntegerDim0Kindint32
      function eye_mnIntegerDim0Kindint32(m, n) result(ret)
         Integer(kind=int32), intent(in):: m, n
         Integer(kind=INT8):: ret(m, n)
         Integer(kind=kind(m)):: i
         ret = 0
         do i = 1, min(m, n)
            ret(i, i) = 1
         end do
      end function eye_mnIntegerDim0Kindint32
      function eye_nIntegerDim0Kindint64(n) result(ret)
         Integer(kind=int64), intent(in):: n
         Integer(kind=INT8):: ret(n, n)
         ret = eye(n, n)
      end function eye_nIntegerDim0Kindint64
      function eye_mnIntegerDim0Kindint64(m, n) result(ret)
         Integer(kind=int64), intent(in):: m, n
         Integer(kind=INT8):: ret(m, n)
         Integer(kind=kind(m)):: i
         ret = 0
         do i = 1, min(m, n)
            ret(i, i) = 1
         end do
      end function eye_mnIntegerDim0Kindint64
      pure function l2_normRealDim1Kindreal32(xs) result(ret)
         Real(kind=real32), dimension(:), intent(in):: xs
         Real(kind=kind(xs)):: ret
         ret = norm2(xs)**2
      end function l2_normRealDim1Kindreal32
      pure function l2_normRealDim1Kindreal64(xs) result(ret)
         Real(kind=real64), dimension(:), intent(in):: xs
         Real(kind=kind(xs)):: ret
         ret = norm2(xs)**2
      end function l2_normRealDim1Kindreal64
      pure function l2_normRealDim1Kindreal128(xs) result(ret)
         Real(kind=real128), dimension(:), intent(in):: xs
         Real(kind=kind(xs)):: ret
         ret = norm2(xs)**2
      end function l2_normRealDim1Kindreal128
      pure function iota_1T1(end) result(ret)
         Integer(kind=int8), intent(in):: end
         Integer(kind=kind(end)):: ret(get_iota_size(end))
         ret = iota(int(1, kind=INT8), end)
      end function iota_1T1
      pure function get_iota_size_1T1(end) result(ret)
         Integer(kind=int8), intent(in):: end
         Integer(kind=kind(end)):: ret
         ret = get_iota_size(int(1, kind=INT8), end)
      end function get_iota_size_1T1
         pure function iota_2T1T1(first, end) result(ret)
            Integer(kind=int8), intent(in):: first
            Integer(kind=int8), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T1T1
         pure function get_iota_size_2T1T1(first, end) result(ret)
            Integer(kind=int8), intent(in):: first
            Integer(kind=int8), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T1T1
            pure function iota_3T1T1T1(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T1T1
            pure function get_iota_size_3T1T1T1(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T1T1
            pure function iota_3T1T1T2(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T1T2
            pure function get_iota_size_3T1T1T2(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T1T2
            pure function iota_3T1T1T3(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T1T3
            pure function get_iota_size_3T1T1T3(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T1T3
            pure function iota_3T1T1T4(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T1T4
            pure function get_iota_size_3T1T1T4(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T1T4
         pure function iota_2T1T2(first, end) result(ret)
            Integer(kind=int8), intent(in):: first
            Integer(kind=int16), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T1T2
         pure function get_iota_size_2T1T2(first, end) result(ret)
            Integer(kind=int8), intent(in):: first
            Integer(kind=int16), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T1T2
            pure function iota_3T1T2T1(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T2T1
            pure function get_iota_size_3T1T2T1(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T2T1
            pure function iota_3T1T2T2(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T2T2
            pure function get_iota_size_3T1T2T2(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T2T2
            pure function iota_3T1T2T3(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T2T3
            pure function get_iota_size_3T1T2T3(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T2T3
            pure function iota_3T1T2T4(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T2T4
            pure function get_iota_size_3T1T2T4(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T2T4
         pure function iota_2T1T3(first, end) result(ret)
            Integer(kind=int8), intent(in):: first
            Integer(kind=int32), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T1T3
         pure function get_iota_size_2T1T3(first, end) result(ret)
            Integer(kind=int8), intent(in):: first
            Integer(kind=int32), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T1T3
            pure function iota_3T1T3T1(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T3T1
            pure function get_iota_size_3T1T3T1(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T3T1
            pure function iota_3T1T3T2(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T3T2
            pure function get_iota_size_3T1T3T2(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T3T2
            pure function iota_3T1T3T3(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T3T3
            pure function get_iota_size_3T1T3T3(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T3T3
            pure function iota_3T1T3T4(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T3T4
            pure function get_iota_size_3T1T3T4(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T3T4
         pure function iota_2T1T4(first, end) result(ret)
            Integer(kind=int8), intent(in):: first
            Integer(kind=int64), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T1T4
         pure function get_iota_size_2T1T4(first, end) result(ret)
            Integer(kind=int8), intent(in):: first
            Integer(kind=int64), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T1T4
            pure function iota_3T1T4T1(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T4T1
            pure function get_iota_size_3T1T4T1(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T4T1
            pure function iota_3T1T4T2(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T4T2
            pure function get_iota_size_3T1T4T2(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T4T2
            pure function iota_3T1T4T3(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T4T3
            pure function get_iota_size_3T1T4T3(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T4T3
            pure function iota_3T1T4T4(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T1T4T4
            pure function get_iota_size_3T1T4T4(first, end, step) result(ret)
               Integer(kind=int8), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T1T4T4
      pure function iota_1T2(end) result(ret)
         Integer(kind=int16), intent(in):: end
         Integer(kind=kind(end)):: ret(get_iota_size(end))
         ret = iota(int(1, kind=INT8), end)
      end function iota_1T2
      pure function get_iota_size_1T2(end) result(ret)
         Integer(kind=int16), intent(in):: end
         Integer(kind=kind(end)):: ret
         ret = get_iota_size(int(1, kind=INT8), end)
      end function get_iota_size_1T2
         pure function iota_2T2T1(first, end) result(ret)
            Integer(kind=int16), intent(in):: first
            Integer(kind=int8), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T2T1
         pure function get_iota_size_2T2T1(first, end) result(ret)
            Integer(kind=int16), intent(in):: first
            Integer(kind=int8), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T2T1
            pure function iota_3T2T1T1(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T1T1
            pure function get_iota_size_3T2T1T1(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T1T1
            pure function iota_3T2T1T2(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T1T2
            pure function get_iota_size_3T2T1T2(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T1T2
            pure function iota_3T2T1T3(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T1T3
            pure function get_iota_size_3T2T1T3(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T1T3
            pure function iota_3T2T1T4(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T1T4
            pure function get_iota_size_3T2T1T4(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T1T4
         pure function iota_2T2T2(first, end) result(ret)
            Integer(kind=int16), intent(in):: first
            Integer(kind=int16), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T2T2
         pure function get_iota_size_2T2T2(first, end) result(ret)
            Integer(kind=int16), intent(in):: first
            Integer(kind=int16), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T2T2
            pure function iota_3T2T2T1(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T2T1
            pure function get_iota_size_3T2T2T1(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T2T1
            pure function iota_3T2T2T2(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T2T2
            pure function get_iota_size_3T2T2T2(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T2T2
            pure function iota_3T2T2T3(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T2T3
            pure function get_iota_size_3T2T2T3(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T2T3
            pure function iota_3T2T2T4(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T2T4
            pure function get_iota_size_3T2T2T4(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T2T4
         pure function iota_2T2T3(first, end) result(ret)
            Integer(kind=int16), intent(in):: first
            Integer(kind=int32), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T2T3
         pure function get_iota_size_2T2T3(first, end) result(ret)
            Integer(kind=int16), intent(in):: first
            Integer(kind=int32), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T2T3
            pure function iota_3T2T3T1(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T3T1
            pure function get_iota_size_3T2T3T1(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T3T1
            pure function iota_3T2T3T2(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T3T2
            pure function get_iota_size_3T2T3T2(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T3T2
            pure function iota_3T2T3T3(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T3T3
            pure function get_iota_size_3T2T3T3(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T3T3
            pure function iota_3T2T3T4(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T3T4
            pure function get_iota_size_3T2T3T4(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T3T4
         pure function iota_2T2T4(first, end) result(ret)
            Integer(kind=int16), intent(in):: first
            Integer(kind=int64), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T2T4
         pure function get_iota_size_2T2T4(first, end) result(ret)
            Integer(kind=int16), intent(in):: first
            Integer(kind=int64), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T2T4
            pure function iota_3T2T4T1(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T4T1
            pure function get_iota_size_3T2T4T1(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T4T1
            pure function iota_3T2T4T2(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T4T2
            pure function get_iota_size_3T2T4T2(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T4T2
            pure function iota_3T2T4T3(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T4T3
            pure function get_iota_size_3T2T4T3(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T4T3
            pure function iota_3T2T4T4(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T2T4T4
            pure function get_iota_size_3T2T4T4(first, end, step) result(ret)
               Integer(kind=int16), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T2T4T4
      pure function iota_1T3(end) result(ret)
         Integer(kind=int32), intent(in):: end
         Integer(kind=kind(end)):: ret(get_iota_size(end))
         ret = iota(int(1, kind=INT8), end)
      end function iota_1T3
      pure function get_iota_size_1T3(end) result(ret)
         Integer(kind=int32), intent(in):: end
         Integer(kind=kind(end)):: ret
         ret = get_iota_size(int(1, kind=INT8), end)
      end function get_iota_size_1T3
         pure function iota_2T3T1(first, end) result(ret)
            Integer(kind=int32), intent(in):: first
            Integer(kind=int8), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T3T1
         pure function get_iota_size_2T3T1(first, end) result(ret)
            Integer(kind=int32), intent(in):: first
            Integer(kind=int8), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T3T1
            pure function iota_3T3T1T1(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T1T1
            pure function get_iota_size_3T3T1T1(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T1T1
            pure function iota_3T3T1T2(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T1T2
            pure function get_iota_size_3T3T1T2(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T1T2
            pure function iota_3T3T1T3(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T1T3
            pure function get_iota_size_3T3T1T3(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T1T3
            pure function iota_3T3T1T4(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T1T4
            pure function get_iota_size_3T3T1T4(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T1T4
         pure function iota_2T3T2(first, end) result(ret)
            Integer(kind=int32), intent(in):: first
            Integer(kind=int16), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T3T2
         pure function get_iota_size_2T3T2(first, end) result(ret)
            Integer(kind=int32), intent(in):: first
            Integer(kind=int16), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T3T2
            pure function iota_3T3T2T1(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T2T1
            pure function get_iota_size_3T3T2T1(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T2T1
            pure function iota_3T3T2T2(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T2T2
            pure function get_iota_size_3T3T2T2(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T2T2
            pure function iota_3T3T2T3(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T2T3
            pure function get_iota_size_3T3T2T3(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T2T3
            pure function iota_3T3T2T4(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T2T4
            pure function get_iota_size_3T3T2T4(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T2T4
         pure function iota_2T3T3(first, end) result(ret)
            Integer(kind=int32), intent(in):: first
            Integer(kind=int32), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T3T3
         pure function get_iota_size_2T3T3(first, end) result(ret)
            Integer(kind=int32), intent(in):: first
            Integer(kind=int32), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T3T3
            pure function iota_3T3T3T1(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T3T1
            pure function get_iota_size_3T3T3T1(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T3T1
            pure function iota_3T3T3T2(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T3T2
            pure function get_iota_size_3T3T3T2(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T3T2
            pure function iota_3T3T3T3(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T3T3
            pure function get_iota_size_3T3T3T3(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T3T3
            pure function iota_3T3T3T4(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T3T4
            pure function get_iota_size_3T3T3T4(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T3T4
         pure function iota_2T3T4(first, end) result(ret)
            Integer(kind=int32), intent(in):: first
            Integer(kind=int64), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T3T4
         pure function get_iota_size_2T3T4(first, end) result(ret)
            Integer(kind=int32), intent(in):: first
            Integer(kind=int64), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T3T4
            pure function iota_3T3T4T1(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T4T1
            pure function get_iota_size_3T3T4T1(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T4T1
            pure function iota_3T3T4T2(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T4T2
            pure function get_iota_size_3T3T4T2(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T4T2
            pure function iota_3T3T4T3(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T4T3
            pure function get_iota_size_3T3T4T3(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T4T3
            pure function iota_3T3T4T4(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T3T4T4
            pure function get_iota_size_3T3T4T4(first, end, step) result(ret)
               Integer(kind=int32), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T3T4T4
      pure function iota_1T4(end) result(ret)
         Integer(kind=int64), intent(in):: end
         Integer(kind=kind(end)):: ret(get_iota_size(end))
         ret = iota(int(1, kind=INT8), end)
      end function iota_1T4
      pure function get_iota_size_1T4(end) result(ret)
         Integer(kind=int64), intent(in):: end
         Integer(kind=kind(end)):: ret
         ret = get_iota_size(int(1, kind=INT8), end)
      end function get_iota_size_1T4
         pure function iota_2T4T1(first, end) result(ret)
            Integer(kind=int64), intent(in):: first
            Integer(kind=int8), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T4T1
         pure function get_iota_size_2T4T1(first, end) result(ret)
            Integer(kind=int64), intent(in):: first
            Integer(kind=int8), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T4T1
            pure function iota_3T4T1T1(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T1T1
            pure function get_iota_size_3T4T1T1(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T1T1
            pure function iota_3T4T1T2(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T1T2
            pure function get_iota_size_3T4T1T2(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T1T2
            pure function iota_3T4T1T3(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T1T3
            pure function get_iota_size_3T4T1T3(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T1T3
            pure function iota_3T4T1T4(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T1T4
            pure function get_iota_size_3T4T1T4(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int8), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T1T4
         pure function iota_2T4T2(first, end) result(ret)
            Integer(kind=int64), intent(in):: first
            Integer(kind=int16), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T4T2
         pure function get_iota_size_2T4T2(first, end) result(ret)
            Integer(kind=int64), intent(in):: first
            Integer(kind=int16), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T4T2
            pure function iota_3T4T2T1(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T2T1
            pure function get_iota_size_3T4T2T1(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T2T1
            pure function iota_3T4T2T2(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T2T2
            pure function get_iota_size_3T4T2T2(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T2T2
            pure function iota_3T4T2T3(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T2T3
            pure function get_iota_size_3T4T2T3(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T2T3
            pure function iota_3T4T2T4(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T2T4
            pure function get_iota_size_3T4T2T4(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int16), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T2T4
         pure function iota_2T4T3(first, end) result(ret)
            Integer(kind=int64), intent(in):: first
            Integer(kind=int32), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T4T3
         pure function get_iota_size_2T4T3(first, end) result(ret)
            Integer(kind=int64), intent(in):: first
            Integer(kind=int32), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T4T3
            pure function iota_3T4T3T1(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T3T1
            pure function get_iota_size_3T4T3T1(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T3T1
            pure function iota_3T4T3T2(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T3T2
            pure function get_iota_size_3T4T3T2(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T3T2
            pure function iota_3T4T3T3(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T3T3
            pure function get_iota_size_3T4T3T3(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T3T3
            pure function iota_3T4T3T4(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T3T4
            pure function get_iota_size_3T4T3T4(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int32), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T3T4
         pure function iota_2T4T4(first, end) result(ret)
            Integer(kind=int64), intent(in):: first
            Integer(kind=int64), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret(get_iota_size(first, end))
            ret = iota(first, end, int(1, kind=INT8))
         end function iota_2T4T4
         pure function get_iota_size_2T4T4(first, end) result(ret)
            Integer(kind=int64), intent(in):: first
            Integer(kind=int64), intent(in):: end
            Integer(kind=max(kind(first), kind(end))):: ret
            ret = get_iota_size(first, end, int(int(1, kind=INT8), kind=INT8))
         end function get_iota_size_2T4T4
            pure function iota_3T4T4T1(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T4T1
            pure function get_iota_size_3T4T4T1(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int8), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T4T1
            pure function iota_3T4T4T2(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T4T2
            pure function get_iota_size_3T4T4T2(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int16), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T4T2
            pure function iota_3T4T4T3(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T4T3
            pure function get_iota_size_3T4T4T3(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int32), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T4T3
            pure function iota_3T4T4T4(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret(get_iota_size(first, end, step))
               Integer(kind=kind(ret)):: i
               ret = [(i, i = first, end, step)]
            end function iota_3T4T4T4
            pure function get_iota_size_3T4T4T4(first, end, step) result(ret)
               Integer(kind=int64), intent(in):: first
               Integer(kind=int64), intent(in):: end
               Integer(kind=int64), intent(in):: step
               Integer(kind=max(kind(first), kind(end), kind(step))):: ret
               ret = max((end - first + step)/step, int(0, kind=kind(ret)))
            end function get_iota_size_3T4T4T4
end module array_lib
