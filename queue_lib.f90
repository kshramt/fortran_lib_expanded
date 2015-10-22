module queue_lib
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: int8, int16, int32, int64, real32, real64, real128
   implicit none
   private
   public:: push
   public:: shift
      interface push
         module procedure pushRealDim0Kindreal32Queue
      end interface push
      interface shift
         module procedure shiftRealDim0Kindreal32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim0Kindreal32Queue
      end interface is_empty
      interface push
         module procedure pushRealDim0Kindreal64Queue
      end interface push
      interface shift
         module procedure shiftRealDim0Kindreal64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim0Kindreal64Queue
      end interface is_empty
      interface push
         module procedure pushRealDim0Kindreal128Queue
      end interface push
      interface shift
         module procedure shiftRealDim0Kindreal128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim0Kindreal128Queue
      end interface is_empty
      interface push
         module procedure pushRealDim1Kindreal32Queue
      end interface push
      interface shift
         module procedure shiftRealDim1Kindreal32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim1Kindreal32Queue
      end interface is_empty
      interface push
         module procedure pushRealDim1Kindreal64Queue
      end interface push
      interface shift
         module procedure shiftRealDim1Kindreal64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim1Kindreal64Queue
      end interface is_empty
      interface push
         module procedure pushRealDim1Kindreal128Queue
      end interface push
      interface shift
         module procedure shiftRealDim1Kindreal128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim1Kindreal128Queue
      end interface is_empty
      interface push
         module procedure pushRealDim2Kindreal32Queue
      end interface push
      interface shift
         module procedure shiftRealDim2Kindreal32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim2Kindreal32Queue
      end interface is_empty
      interface push
         module procedure pushRealDim2Kindreal64Queue
      end interface push
      interface shift
         module procedure shiftRealDim2Kindreal64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim2Kindreal64Queue
      end interface is_empty
      interface push
         module procedure pushRealDim2Kindreal128Queue
      end interface push
      interface shift
         module procedure shiftRealDim2Kindreal128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim2Kindreal128Queue
      end interface is_empty
      interface push
         module procedure pushRealDim3Kindreal32Queue
      end interface push
      interface shift
         module procedure shiftRealDim3Kindreal32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim3Kindreal32Queue
      end interface is_empty
      interface push
         module procedure pushRealDim3Kindreal64Queue
      end interface push
      interface shift
         module procedure shiftRealDim3Kindreal64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim3Kindreal64Queue
      end interface is_empty
      interface push
         module procedure pushRealDim3Kindreal128Queue
      end interface push
      interface shift
         module procedure shiftRealDim3Kindreal128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim3Kindreal128Queue
      end interface is_empty
      interface push
         module procedure pushRealDim4Kindreal32Queue
      end interface push
      interface shift
         module procedure shiftRealDim4Kindreal32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim4Kindreal32Queue
      end interface is_empty
      interface push
         module procedure pushRealDim4Kindreal64Queue
      end interface push
      interface shift
         module procedure shiftRealDim4Kindreal64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim4Kindreal64Queue
      end interface is_empty
      interface push
         module procedure pushRealDim4Kindreal128Queue
      end interface push
      interface shift
         module procedure shiftRealDim4Kindreal128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim4Kindreal128Queue
      end interface is_empty
      interface push
         module procedure pushRealDim5Kindreal32Queue
      end interface push
      interface shift
         module procedure shiftRealDim5Kindreal32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim5Kindreal32Queue
      end interface is_empty
      interface push
         module procedure pushRealDim5Kindreal64Queue
      end interface push
      interface shift
         module procedure shiftRealDim5Kindreal64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim5Kindreal64Queue
      end interface is_empty
      interface push
         module procedure pushRealDim5Kindreal128Queue
      end interface push
      interface shift
         module procedure shiftRealDim5Kindreal128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim5Kindreal128Queue
      end interface is_empty
      interface push
         module procedure pushRealDim6Kindreal32Queue
      end interface push
      interface shift
         module procedure shiftRealDim6Kindreal32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim6Kindreal32Queue
      end interface is_empty
      interface push
         module procedure pushRealDim6Kindreal64Queue
      end interface push
      interface shift
         module procedure shiftRealDim6Kindreal64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim6Kindreal64Queue
      end interface is_empty
      interface push
         module procedure pushRealDim6Kindreal128Queue
      end interface push
      interface shift
         module procedure shiftRealDim6Kindreal128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim6Kindreal128Queue
      end interface is_empty
      interface push
         module procedure pushRealDim7Kindreal32Queue
      end interface push
      interface shift
         module procedure shiftRealDim7Kindreal32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim7Kindreal32Queue
      end interface is_empty
      interface push
         module procedure pushRealDim7Kindreal64Queue
      end interface push
      interface shift
         module procedure shiftRealDim7Kindreal64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim7Kindreal64Queue
      end interface is_empty
      interface push
         module procedure pushRealDim7Kindreal128Queue
      end interface push
      interface shift
         module procedure shiftRealDim7Kindreal128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim7Kindreal128Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim0Kindint8Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim0Kindint8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim0Kindint8Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim0Kindint16Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim0Kindint16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim0Kindint16Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim0Kindint32Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim0Kindint32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim0Kindint32Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim0Kindint64Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim0Kindint64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim0Kindint64Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim1Kindint8Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim1Kindint8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim1Kindint8Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim1Kindint16Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim1Kindint16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim1Kindint16Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim1Kindint32Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim1Kindint32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim1Kindint32Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim1Kindint64Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim1Kindint64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim1Kindint64Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim2Kindint8Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim2Kindint8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim2Kindint8Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim2Kindint16Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim2Kindint16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim2Kindint16Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim2Kindint32Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim2Kindint32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim2Kindint32Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim2Kindint64Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim2Kindint64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim2Kindint64Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim3Kindint8Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim3Kindint8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim3Kindint8Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim3Kindint16Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim3Kindint16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim3Kindint16Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim3Kindint32Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim3Kindint32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim3Kindint32Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim3Kindint64Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim3Kindint64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim3Kindint64Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim4Kindint8Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim4Kindint8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim4Kindint8Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim4Kindint16Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim4Kindint16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim4Kindint16Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim4Kindint32Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim4Kindint32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim4Kindint32Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim4Kindint64Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim4Kindint64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim4Kindint64Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim5Kindint8Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim5Kindint8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim5Kindint8Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim5Kindint16Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim5Kindint16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim5Kindint16Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim5Kindint32Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim5Kindint32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim5Kindint32Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim5Kindint64Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim5Kindint64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim5Kindint64Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim6Kindint8Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim6Kindint8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim6Kindint8Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim6Kindint16Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim6Kindint16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim6Kindint16Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim6Kindint32Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim6Kindint32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim6Kindint32Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim6Kindint64Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim6Kindint64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim6Kindint64Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim7Kindint8Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim7Kindint8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim7Kindint8Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim7Kindint16Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim7Kindint16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim7Kindint16Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim7Kindint32Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim7Kindint32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim7Kindint32Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim7Kindint64Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim7Kindint64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim7Kindint64Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim0Kindint8Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim0Kindint8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim0Kindint8Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim0Kindint16Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim0Kindint16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim0Kindint16Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim0Kindint32Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim0Kindint32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim0Kindint32Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim0Kindint64Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim0Kindint64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim0Kindint64Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim1Kindint8Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim1Kindint8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim1Kindint8Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim1Kindint16Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim1Kindint16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim1Kindint16Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim1Kindint32Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim1Kindint32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim1Kindint32Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim1Kindint64Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim1Kindint64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim1Kindint64Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim2Kindint8Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim2Kindint8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim2Kindint8Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim2Kindint16Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim2Kindint16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim2Kindint16Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim2Kindint32Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim2Kindint32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim2Kindint32Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim2Kindint64Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim2Kindint64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim2Kindint64Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim3Kindint8Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim3Kindint8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim3Kindint8Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim3Kindint16Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim3Kindint16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim3Kindint16Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim3Kindint32Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim3Kindint32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim3Kindint32Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim3Kindint64Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim3Kindint64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim3Kindint64Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim4Kindint8Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim4Kindint8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim4Kindint8Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim4Kindint16Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim4Kindint16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim4Kindint16Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim4Kindint32Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim4Kindint32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim4Kindint32Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim4Kindint64Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim4Kindint64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim4Kindint64Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim5Kindint8Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim5Kindint8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim5Kindint8Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim5Kindint16Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim5Kindint16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim5Kindint16Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim5Kindint32Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim5Kindint32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim5Kindint32Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim5Kindint64Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim5Kindint64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim5Kindint64Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim6Kindint8Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim6Kindint8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim6Kindint8Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim6Kindint16Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim6Kindint16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim6Kindint16Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim6Kindint32Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim6Kindint32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim6Kindint32Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim6Kindint64Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim6Kindint64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim6Kindint64Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim7Kindint8Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim7Kindint8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim7Kindint8Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim7Kindint16Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim7Kindint16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim7Kindint16Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim7Kindint32Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim7Kindint32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim7Kindint32Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim7Kindint64Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim7Kindint64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim7Kindint64Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim0Kindreal32Queue
      end interface push
      interface shift
         module procedure shiftComplexDim0Kindreal32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim0Kindreal32Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim0Kindreal64Queue
      end interface push
      interface shift
         module procedure shiftComplexDim0Kindreal64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim0Kindreal64Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim0Kindreal128Queue
      end interface push
      interface shift
         module procedure shiftComplexDim0Kindreal128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim0Kindreal128Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim1Kindreal32Queue
      end interface push
      interface shift
         module procedure shiftComplexDim1Kindreal32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim1Kindreal32Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim1Kindreal64Queue
      end interface push
      interface shift
         module procedure shiftComplexDim1Kindreal64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim1Kindreal64Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim1Kindreal128Queue
      end interface push
      interface shift
         module procedure shiftComplexDim1Kindreal128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim1Kindreal128Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim2Kindreal32Queue
      end interface push
      interface shift
         module procedure shiftComplexDim2Kindreal32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim2Kindreal32Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim2Kindreal64Queue
      end interface push
      interface shift
         module procedure shiftComplexDim2Kindreal64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim2Kindreal64Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim2Kindreal128Queue
      end interface push
      interface shift
         module procedure shiftComplexDim2Kindreal128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim2Kindreal128Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim3Kindreal32Queue
      end interface push
      interface shift
         module procedure shiftComplexDim3Kindreal32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim3Kindreal32Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim3Kindreal64Queue
      end interface push
      interface shift
         module procedure shiftComplexDim3Kindreal64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim3Kindreal64Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim3Kindreal128Queue
      end interface push
      interface shift
         module procedure shiftComplexDim3Kindreal128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim3Kindreal128Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim4Kindreal32Queue
      end interface push
      interface shift
         module procedure shiftComplexDim4Kindreal32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim4Kindreal32Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim4Kindreal64Queue
      end interface push
      interface shift
         module procedure shiftComplexDim4Kindreal64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim4Kindreal64Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim4Kindreal128Queue
      end interface push
      interface shift
         module procedure shiftComplexDim4Kindreal128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim4Kindreal128Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim5Kindreal32Queue
      end interface push
      interface shift
         module procedure shiftComplexDim5Kindreal32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim5Kindreal32Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim5Kindreal64Queue
      end interface push
      interface shift
         module procedure shiftComplexDim5Kindreal64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim5Kindreal64Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim5Kindreal128Queue
      end interface push
      interface shift
         module procedure shiftComplexDim5Kindreal128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim5Kindreal128Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim6Kindreal32Queue
      end interface push
      interface shift
         module procedure shiftComplexDim6Kindreal32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim6Kindreal32Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim6Kindreal64Queue
      end interface push
      interface shift
         module procedure shiftComplexDim6Kindreal64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim6Kindreal64Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim6Kindreal128Queue
      end interface push
      interface shift
         module procedure shiftComplexDim6Kindreal128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim6Kindreal128Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim7Kindreal32Queue
      end interface push
      interface shift
         module procedure shiftComplexDim7Kindreal32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim7Kindreal32Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim7Kindreal64Queue
      end interface push
      interface shift
         module procedure shiftComplexDim7Kindreal64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim7Kindreal64Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim7Kindreal128Queue
      end interface push
      interface shift
         module procedure shiftComplexDim7Kindreal128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim7Kindreal128Queue
      end interface is_empty
      interface push
         module procedure pushCharacterDim0Len0Queue
      end interface push
      interface shift
         module procedure shiftCharacterDim0Len0Queue
      end interface shift
      interface is_empty
         module procedure is_emptyCharacterDim0Len0Queue
      end interface is_empty
      interface push
         module procedure pushCharacterDim1Len0Queue
      end interface push
      interface shift
         module procedure shiftCharacterDim1Len0Queue
      end interface shift
      interface is_empty
         module procedure is_emptyCharacterDim1Len0Queue
      end interface is_empty
      interface push
         module procedure pushCharacterDim2Len0Queue
      end interface push
      interface shift
         module procedure shiftCharacterDim2Len0Queue
      end interface shift
      interface is_empty
         module procedure is_emptyCharacterDim2Len0Queue
      end interface is_empty
      interface push
         module procedure pushCharacterDim3Len0Queue
      end interface push
      interface shift
         module procedure shiftCharacterDim3Len0Queue
      end interface shift
      interface is_empty
         module procedure is_emptyCharacterDim3Len0Queue
      end interface is_empty
      interface push
         module procedure pushCharacterDim4Len0Queue
      end interface push
      interface shift
         module procedure shiftCharacterDim4Len0Queue
      end interface shift
      interface is_empty
         module procedure is_emptyCharacterDim4Len0Queue
      end interface is_empty
      interface push
         module procedure pushCharacterDim5Len0Queue
      end interface push
      interface shift
         module procedure shiftCharacterDim5Len0Queue
      end interface shift
      interface is_empty
         module procedure is_emptyCharacterDim5Len0Queue
      end interface is_empty
      interface push
         module procedure pushCharacterDim6Len0Queue
      end interface push
      interface shift
         module procedure shiftCharacterDim6Len0Queue
      end interface shift
      interface is_empty
         module procedure is_emptyCharacterDim6Len0Queue
      end interface is_empty
      interface push
         module procedure pushCharacterDim7Len0Queue
      end interface push
      interface shift
         module procedure shiftCharacterDim7Len0Queue
      end interface shift
      interface is_empty
         module procedure is_emptyCharacterDim7Len0Queue
      end interface is_empty
   type, public:: Queue
   end type Queue
   type:: QueueNode
   end type QueueNode
      type, extends(Queue), public:: RealDim0Kindreal32Queue
         type(RealDim0Kindreal32QueueNode), pointer:: tail => null()
         type(RealDim0Kindreal32QueueNode), pointer:: head => null()
      end type RealDim0Kindreal32Queue
      type, extends(QueueNode):: RealDim0Kindreal32QueueNode
         Real(kind=real32):: value
         type(RealDim0Kindreal32QueueNode), pointer:: next => null()
      end type RealDim0Kindreal32QueueNode
      type, extends(Queue), public:: RealDim0Kindreal64Queue
         type(RealDim0Kindreal64QueueNode), pointer:: tail => null()
         type(RealDim0Kindreal64QueueNode), pointer:: head => null()
      end type RealDim0Kindreal64Queue
      type, extends(QueueNode):: RealDim0Kindreal64QueueNode
         Real(kind=real64):: value
         type(RealDim0Kindreal64QueueNode), pointer:: next => null()
      end type RealDim0Kindreal64QueueNode
      type, extends(Queue), public:: RealDim0Kindreal128Queue
         type(RealDim0Kindreal128QueueNode), pointer:: tail => null()
         type(RealDim0Kindreal128QueueNode), pointer:: head => null()
      end type RealDim0Kindreal128Queue
      type, extends(QueueNode):: RealDim0Kindreal128QueueNode
         Real(kind=real128):: value
         type(RealDim0Kindreal128QueueNode), pointer:: next => null()
      end type RealDim0Kindreal128QueueNode
      type, extends(Queue), public:: RealDim1Kindreal32Queue
         type(RealDim1Kindreal32QueueNode), pointer:: tail => null()
         type(RealDim1Kindreal32QueueNode), pointer:: head => null()
      end type RealDim1Kindreal32Queue
      type, extends(QueueNode):: RealDim1Kindreal32QueueNode
         Real(kind=real32), dimension(:), allocatable:: value
         type(RealDim1Kindreal32QueueNode), pointer:: next => null()
      end type RealDim1Kindreal32QueueNode
      type, extends(Queue), public:: RealDim1Kindreal64Queue
         type(RealDim1Kindreal64QueueNode), pointer:: tail => null()
         type(RealDim1Kindreal64QueueNode), pointer:: head => null()
      end type RealDim1Kindreal64Queue
      type, extends(QueueNode):: RealDim1Kindreal64QueueNode
         Real(kind=real64), dimension(:), allocatable:: value
         type(RealDim1Kindreal64QueueNode), pointer:: next => null()
      end type RealDim1Kindreal64QueueNode
      type, extends(Queue), public:: RealDim1Kindreal128Queue
         type(RealDim1Kindreal128QueueNode), pointer:: tail => null()
         type(RealDim1Kindreal128QueueNode), pointer:: head => null()
      end type RealDim1Kindreal128Queue
      type, extends(QueueNode):: RealDim1Kindreal128QueueNode
         Real(kind=real128), dimension(:), allocatable:: value
         type(RealDim1Kindreal128QueueNode), pointer:: next => null()
      end type RealDim1Kindreal128QueueNode
      type, extends(Queue), public:: RealDim2Kindreal32Queue
         type(RealDim2Kindreal32QueueNode), pointer:: tail => null()
         type(RealDim2Kindreal32QueueNode), pointer:: head => null()
      end type RealDim2Kindreal32Queue
      type, extends(QueueNode):: RealDim2Kindreal32QueueNode
         Real(kind=real32), dimension(:, :), allocatable:: value
         type(RealDim2Kindreal32QueueNode), pointer:: next => null()
      end type RealDim2Kindreal32QueueNode
      type, extends(Queue), public:: RealDim2Kindreal64Queue
         type(RealDim2Kindreal64QueueNode), pointer:: tail => null()
         type(RealDim2Kindreal64QueueNode), pointer:: head => null()
      end type RealDim2Kindreal64Queue
      type, extends(QueueNode):: RealDim2Kindreal64QueueNode
         Real(kind=real64), dimension(:, :), allocatable:: value
         type(RealDim2Kindreal64QueueNode), pointer:: next => null()
      end type RealDim2Kindreal64QueueNode
      type, extends(Queue), public:: RealDim2Kindreal128Queue
         type(RealDim2Kindreal128QueueNode), pointer:: tail => null()
         type(RealDim2Kindreal128QueueNode), pointer:: head => null()
      end type RealDim2Kindreal128Queue
      type, extends(QueueNode):: RealDim2Kindreal128QueueNode
         Real(kind=real128), dimension(:, :), allocatable:: value
         type(RealDim2Kindreal128QueueNode), pointer:: next => null()
      end type RealDim2Kindreal128QueueNode
      type, extends(Queue), public:: RealDim3Kindreal32Queue
         type(RealDim3Kindreal32QueueNode), pointer:: tail => null()
         type(RealDim3Kindreal32QueueNode), pointer:: head => null()
      end type RealDim3Kindreal32Queue
      type, extends(QueueNode):: RealDim3Kindreal32QueueNode
         Real(kind=real32), dimension(:, :, :), allocatable:: value
         type(RealDim3Kindreal32QueueNode), pointer:: next => null()
      end type RealDim3Kindreal32QueueNode
      type, extends(Queue), public:: RealDim3Kindreal64Queue
         type(RealDim3Kindreal64QueueNode), pointer:: tail => null()
         type(RealDim3Kindreal64QueueNode), pointer:: head => null()
      end type RealDim3Kindreal64Queue
      type, extends(QueueNode):: RealDim3Kindreal64QueueNode
         Real(kind=real64), dimension(:, :, :), allocatable:: value
         type(RealDim3Kindreal64QueueNode), pointer:: next => null()
      end type RealDim3Kindreal64QueueNode
      type, extends(Queue), public:: RealDim3Kindreal128Queue
         type(RealDim3Kindreal128QueueNode), pointer:: tail => null()
         type(RealDim3Kindreal128QueueNode), pointer:: head => null()
      end type RealDim3Kindreal128Queue
      type, extends(QueueNode):: RealDim3Kindreal128QueueNode
         Real(kind=real128), dimension(:, :, :), allocatable:: value
         type(RealDim3Kindreal128QueueNode), pointer:: next => null()
      end type RealDim3Kindreal128QueueNode
      type, extends(Queue), public:: RealDim4Kindreal32Queue
         type(RealDim4Kindreal32QueueNode), pointer:: tail => null()
         type(RealDim4Kindreal32QueueNode), pointer:: head => null()
      end type RealDim4Kindreal32Queue
      type, extends(QueueNode):: RealDim4Kindreal32QueueNode
         Real(kind=real32), dimension(:, :, :, :), allocatable:: value
         type(RealDim4Kindreal32QueueNode), pointer:: next => null()
      end type RealDim4Kindreal32QueueNode
      type, extends(Queue), public:: RealDim4Kindreal64Queue
         type(RealDim4Kindreal64QueueNode), pointer:: tail => null()
         type(RealDim4Kindreal64QueueNode), pointer:: head => null()
      end type RealDim4Kindreal64Queue
      type, extends(QueueNode):: RealDim4Kindreal64QueueNode
         Real(kind=real64), dimension(:, :, :, :), allocatable:: value
         type(RealDim4Kindreal64QueueNode), pointer:: next => null()
      end type RealDim4Kindreal64QueueNode
      type, extends(Queue), public:: RealDim4Kindreal128Queue
         type(RealDim4Kindreal128QueueNode), pointer:: tail => null()
         type(RealDim4Kindreal128QueueNode), pointer:: head => null()
      end type RealDim4Kindreal128Queue
      type, extends(QueueNode):: RealDim4Kindreal128QueueNode
         Real(kind=real128), dimension(:, :, :, :), allocatable:: value
         type(RealDim4Kindreal128QueueNode), pointer:: next => null()
      end type RealDim4Kindreal128QueueNode
      type, extends(Queue), public:: RealDim5Kindreal32Queue
         type(RealDim5Kindreal32QueueNode), pointer:: tail => null()
         type(RealDim5Kindreal32QueueNode), pointer:: head => null()
      end type RealDim5Kindreal32Queue
      type, extends(QueueNode):: RealDim5Kindreal32QueueNode
         Real(kind=real32), dimension(:, :, :, :, :), allocatable:: value
         type(RealDim5Kindreal32QueueNode), pointer:: next => null()
      end type RealDim5Kindreal32QueueNode
      type, extends(Queue), public:: RealDim5Kindreal64Queue
         type(RealDim5Kindreal64QueueNode), pointer:: tail => null()
         type(RealDim5Kindreal64QueueNode), pointer:: head => null()
      end type RealDim5Kindreal64Queue
      type, extends(QueueNode):: RealDim5Kindreal64QueueNode
         Real(kind=real64), dimension(:, :, :, :, :), allocatable:: value
         type(RealDim5Kindreal64QueueNode), pointer:: next => null()
      end type RealDim5Kindreal64QueueNode
      type, extends(Queue), public:: RealDim5Kindreal128Queue
         type(RealDim5Kindreal128QueueNode), pointer:: tail => null()
         type(RealDim5Kindreal128QueueNode), pointer:: head => null()
      end type RealDim5Kindreal128Queue
      type, extends(QueueNode):: RealDim5Kindreal128QueueNode
         Real(kind=real128), dimension(:, :, :, :, :), allocatable:: value
         type(RealDim5Kindreal128QueueNode), pointer:: next => null()
      end type RealDim5Kindreal128QueueNode
      type, extends(Queue), public:: RealDim6Kindreal32Queue
         type(RealDim6Kindreal32QueueNode), pointer:: tail => null()
         type(RealDim6Kindreal32QueueNode), pointer:: head => null()
      end type RealDim6Kindreal32Queue
      type, extends(QueueNode):: RealDim6Kindreal32QueueNode
         Real(kind=real32), dimension(:, :, :, :, :, :), allocatable:: value
         type(RealDim6Kindreal32QueueNode), pointer:: next => null()
      end type RealDim6Kindreal32QueueNode
      type, extends(Queue), public:: RealDim6Kindreal64Queue
         type(RealDim6Kindreal64QueueNode), pointer:: tail => null()
         type(RealDim6Kindreal64QueueNode), pointer:: head => null()
      end type RealDim6Kindreal64Queue
      type, extends(QueueNode):: RealDim6Kindreal64QueueNode
         Real(kind=real64), dimension(:, :, :, :, :, :), allocatable:: value
         type(RealDim6Kindreal64QueueNode), pointer:: next => null()
      end type RealDim6Kindreal64QueueNode
      type, extends(Queue), public:: RealDim6Kindreal128Queue
         type(RealDim6Kindreal128QueueNode), pointer:: tail => null()
         type(RealDim6Kindreal128QueueNode), pointer:: head => null()
      end type RealDim6Kindreal128Queue
      type, extends(QueueNode):: RealDim6Kindreal128QueueNode
         Real(kind=real128), dimension(:, :, :, :, :, :), allocatable:: value
         type(RealDim6Kindreal128QueueNode), pointer:: next => null()
      end type RealDim6Kindreal128QueueNode
      type, extends(Queue), public:: RealDim7Kindreal32Queue
         type(RealDim7Kindreal32QueueNode), pointer:: tail => null()
         type(RealDim7Kindreal32QueueNode), pointer:: head => null()
      end type RealDim7Kindreal32Queue
      type, extends(QueueNode):: RealDim7Kindreal32QueueNode
         Real(kind=real32), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(RealDim7Kindreal32QueueNode), pointer:: next => null()
      end type RealDim7Kindreal32QueueNode
      type, extends(Queue), public:: RealDim7Kindreal64Queue
         type(RealDim7Kindreal64QueueNode), pointer:: tail => null()
         type(RealDim7Kindreal64QueueNode), pointer:: head => null()
      end type RealDim7Kindreal64Queue
      type, extends(QueueNode):: RealDim7Kindreal64QueueNode
         Real(kind=real64), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(RealDim7Kindreal64QueueNode), pointer:: next => null()
      end type RealDim7Kindreal64QueueNode
      type, extends(Queue), public:: RealDim7Kindreal128Queue
         type(RealDim7Kindreal128QueueNode), pointer:: tail => null()
         type(RealDim7Kindreal128QueueNode), pointer:: head => null()
      end type RealDim7Kindreal128Queue
      type, extends(QueueNode):: RealDim7Kindreal128QueueNode
         Real(kind=real128), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(RealDim7Kindreal128QueueNode), pointer:: next => null()
      end type RealDim7Kindreal128QueueNode
      type, extends(Queue), public:: IntegerDim0Kindint8Queue
         type(IntegerDim0Kindint8QueueNode), pointer:: tail => null()
         type(IntegerDim0Kindint8QueueNode), pointer:: head => null()
      end type IntegerDim0Kindint8Queue
      type, extends(QueueNode):: IntegerDim0Kindint8QueueNode
         Integer(kind=int8):: value
         type(IntegerDim0Kindint8QueueNode), pointer:: next => null()
      end type IntegerDim0Kindint8QueueNode
      type, extends(Queue), public:: IntegerDim0Kindint16Queue
         type(IntegerDim0Kindint16QueueNode), pointer:: tail => null()
         type(IntegerDim0Kindint16QueueNode), pointer:: head => null()
      end type IntegerDim0Kindint16Queue
      type, extends(QueueNode):: IntegerDim0Kindint16QueueNode
         Integer(kind=int16):: value
         type(IntegerDim0Kindint16QueueNode), pointer:: next => null()
      end type IntegerDim0Kindint16QueueNode
      type, extends(Queue), public:: IntegerDim0Kindint32Queue
         type(IntegerDim0Kindint32QueueNode), pointer:: tail => null()
         type(IntegerDim0Kindint32QueueNode), pointer:: head => null()
      end type IntegerDim0Kindint32Queue
      type, extends(QueueNode):: IntegerDim0Kindint32QueueNode
         Integer(kind=int32):: value
         type(IntegerDim0Kindint32QueueNode), pointer:: next => null()
      end type IntegerDim0Kindint32QueueNode
      type, extends(Queue), public:: IntegerDim0Kindint64Queue
         type(IntegerDim0Kindint64QueueNode), pointer:: tail => null()
         type(IntegerDim0Kindint64QueueNode), pointer:: head => null()
      end type IntegerDim0Kindint64Queue
      type, extends(QueueNode):: IntegerDim0Kindint64QueueNode
         Integer(kind=int64):: value
         type(IntegerDim0Kindint64QueueNode), pointer:: next => null()
      end type IntegerDim0Kindint64QueueNode
      type, extends(Queue), public:: IntegerDim1Kindint8Queue
         type(IntegerDim1Kindint8QueueNode), pointer:: tail => null()
         type(IntegerDim1Kindint8QueueNode), pointer:: head => null()
      end type IntegerDim1Kindint8Queue
      type, extends(QueueNode):: IntegerDim1Kindint8QueueNode
         Integer(kind=int8), dimension(:), allocatable:: value
         type(IntegerDim1Kindint8QueueNode), pointer:: next => null()
      end type IntegerDim1Kindint8QueueNode
      type, extends(Queue), public:: IntegerDim1Kindint16Queue
         type(IntegerDim1Kindint16QueueNode), pointer:: tail => null()
         type(IntegerDim1Kindint16QueueNode), pointer:: head => null()
      end type IntegerDim1Kindint16Queue
      type, extends(QueueNode):: IntegerDim1Kindint16QueueNode
         Integer(kind=int16), dimension(:), allocatable:: value
         type(IntegerDim1Kindint16QueueNode), pointer:: next => null()
      end type IntegerDim1Kindint16QueueNode
      type, extends(Queue), public:: IntegerDim1Kindint32Queue
         type(IntegerDim1Kindint32QueueNode), pointer:: tail => null()
         type(IntegerDim1Kindint32QueueNode), pointer:: head => null()
      end type IntegerDim1Kindint32Queue
      type, extends(QueueNode):: IntegerDim1Kindint32QueueNode
         Integer(kind=int32), dimension(:), allocatable:: value
         type(IntegerDim1Kindint32QueueNode), pointer:: next => null()
      end type IntegerDim1Kindint32QueueNode
      type, extends(Queue), public:: IntegerDim1Kindint64Queue
         type(IntegerDim1Kindint64QueueNode), pointer:: tail => null()
         type(IntegerDim1Kindint64QueueNode), pointer:: head => null()
      end type IntegerDim1Kindint64Queue
      type, extends(QueueNode):: IntegerDim1Kindint64QueueNode
         Integer(kind=int64), dimension(:), allocatable:: value
         type(IntegerDim1Kindint64QueueNode), pointer:: next => null()
      end type IntegerDim1Kindint64QueueNode
      type, extends(Queue), public:: IntegerDim2Kindint8Queue
         type(IntegerDim2Kindint8QueueNode), pointer:: tail => null()
         type(IntegerDim2Kindint8QueueNode), pointer:: head => null()
      end type IntegerDim2Kindint8Queue
      type, extends(QueueNode):: IntegerDim2Kindint8QueueNode
         Integer(kind=int8), dimension(:, :), allocatable:: value
         type(IntegerDim2Kindint8QueueNode), pointer:: next => null()
      end type IntegerDim2Kindint8QueueNode
      type, extends(Queue), public:: IntegerDim2Kindint16Queue
         type(IntegerDim2Kindint16QueueNode), pointer:: tail => null()
         type(IntegerDim2Kindint16QueueNode), pointer:: head => null()
      end type IntegerDim2Kindint16Queue
      type, extends(QueueNode):: IntegerDim2Kindint16QueueNode
         Integer(kind=int16), dimension(:, :), allocatable:: value
         type(IntegerDim2Kindint16QueueNode), pointer:: next => null()
      end type IntegerDim2Kindint16QueueNode
      type, extends(Queue), public:: IntegerDim2Kindint32Queue
         type(IntegerDim2Kindint32QueueNode), pointer:: tail => null()
         type(IntegerDim2Kindint32QueueNode), pointer:: head => null()
      end type IntegerDim2Kindint32Queue
      type, extends(QueueNode):: IntegerDim2Kindint32QueueNode
         Integer(kind=int32), dimension(:, :), allocatable:: value
         type(IntegerDim2Kindint32QueueNode), pointer:: next => null()
      end type IntegerDim2Kindint32QueueNode
      type, extends(Queue), public:: IntegerDim2Kindint64Queue
         type(IntegerDim2Kindint64QueueNode), pointer:: tail => null()
         type(IntegerDim2Kindint64QueueNode), pointer:: head => null()
      end type IntegerDim2Kindint64Queue
      type, extends(QueueNode):: IntegerDim2Kindint64QueueNode
         Integer(kind=int64), dimension(:, :), allocatable:: value
         type(IntegerDim2Kindint64QueueNode), pointer:: next => null()
      end type IntegerDim2Kindint64QueueNode
      type, extends(Queue), public:: IntegerDim3Kindint8Queue
         type(IntegerDim3Kindint8QueueNode), pointer:: tail => null()
         type(IntegerDim3Kindint8QueueNode), pointer:: head => null()
      end type IntegerDim3Kindint8Queue
      type, extends(QueueNode):: IntegerDim3Kindint8QueueNode
         Integer(kind=int8), dimension(:, :, :), allocatable:: value
         type(IntegerDim3Kindint8QueueNode), pointer:: next => null()
      end type IntegerDim3Kindint8QueueNode
      type, extends(Queue), public:: IntegerDim3Kindint16Queue
         type(IntegerDim3Kindint16QueueNode), pointer:: tail => null()
         type(IntegerDim3Kindint16QueueNode), pointer:: head => null()
      end type IntegerDim3Kindint16Queue
      type, extends(QueueNode):: IntegerDim3Kindint16QueueNode
         Integer(kind=int16), dimension(:, :, :), allocatable:: value
         type(IntegerDim3Kindint16QueueNode), pointer:: next => null()
      end type IntegerDim3Kindint16QueueNode
      type, extends(Queue), public:: IntegerDim3Kindint32Queue
         type(IntegerDim3Kindint32QueueNode), pointer:: tail => null()
         type(IntegerDim3Kindint32QueueNode), pointer:: head => null()
      end type IntegerDim3Kindint32Queue
      type, extends(QueueNode):: IntegerDim3Kindint32QueueNode
         Integer(kind=int32), dimension(:, :, :), allocatable:: value
         type(IntegerDim3Kindint32QueueNode), pointer:: next => null()
      end type IntegerDim3Kindint32QueueNode
      type, extends(Queue), public:: IntegerDim3Kindint64Queue
         type(IntegerDim3Kindint64QueueNode), pointer:: tail => null()
         type(IntegerDim3Kindint64QueueNode), pointer:: head => null()
      end type IntegerDim3Kindint64Queue
      type, extends(QueueNode):: IntegerDim3Kindint64QueueNode
         Integer(kind=int64), dimension(:, :, :), allocatable:: value
         type(IntegerDim3Kindint64QueueNode), pointer:: next => null()
      end type IntegerDim3Kindint64QueueNode
      type, extends(Queue), public:: IntegerDim4Kindint8Queue
         type(IntegerDim4Kindint8QueueNode), pointer:: tail => null()
         type(IntegerDim4Kindint8QueueNode), pointer:: head => null()
      end type IntegerDim4Kindint8Queue
      type, extends(QueueNode):: IntegerDim4Kindint8QueueNode
         Integer(kind=int8), dimension(:, :, :, :), allocatable:: value
         type(IntegerDim4Kindint8QueueNode), pointer:: next => null()
      end type IntegerDim4Kindint8QueueNode
      type, extends(Queue), public:: IntegerDim4Kindint16Queue
         type(IntegerDim4Kindint16QueueNode), pointer:: tail => null()
         type(IntegerDim4Kindint16QueueNode), pointer:: head => null()
      end type IntegerDim4Kindint16Queue
      type, extends(QueueNode):: IntegerDim4Kindint16QueueNode
         Integer(kind=int16), dimension(:, :, :, :), allocatable:: value
         type(IntegerDim4Kindint16QueueNode), pointer:: next => null()
      end type IntegerDim4Kindint16QueueNode
      type, extends(Queue), public:: IntegerDim4Kindint32Queue
         type(IntegerDim4Kindint32QueueNode), pointer:: tail => null()
         type(IntegerDim4Kindint32QueueNode), pointer:: head => null()
      end type IntegerDim4Kindint32Queue
      type, extends(QueueNode):: IntegerDim4Kindint32QueueNode
         Integer(kind=int32), dimension(:, :, :, :), allocatable:: value
         type(IntegerDim4Kindint32QueueNode), pointer:: next => null()
      end type IntegerDim4Kindint32QueueNode
      type, extends(Queue), public:: IntegerDim4Kindint64Queue
         type(IntegerDim4Kindint64QueueNode), pointer:: tail => null()
         type(IntegerDim4Kindint64QueueNode), pointer:: head => null()
      end type IntegerDim4Kindint64Queue
      type, extends(QueueNode):: IntegerDim4Kindint64QueueNode
         Integer(kind=int64), dimension(:, :, :, :), allocatable:: value
         type(IntegerDim4Kindint64QueueNode), pointer:: next => null()
      end type IntegerDim4Kindint64QueueNode
      type, extends(Queue), public:: IntegerDim5Kindint8Queue
         type(IntegerDim5Kindint8QueueNode), pointer:: tail => null()
         type(IntegerDim5Kindint8QueueNode), pointer:: head => null()
      end type IntegerDim5Kindint8Queue
      type, extends(QueueNode):: IntegerDim5Kindint8QueueNode
         Integer(kind=int8), dimension(:, :, :, :, :), allocatable:: value
         type(IntegerDim5Kindint8QueueNode), pointer:: next => null()
      end type IntegerDim5Kindint8QueueNode
      type, extends(Queue), public:: IntegerDim5Kindint16Queue
         type(IntegerDim5Kindint16QueueNode), pointer:: tail => null()
         type(IntegerDim5Kindint16QueueNode), pointer:: head => null()
      end type IntegerDim5Kindint16Queue
      type, extends(QueueNode):: IntegerDim5Kindint16QueueNode
         Integer(kind=int16), dimension(:, :, :, :, :), allocatable:: value
         type(IntegerDim5Kindint16QueueNode), pointer:: next => null()
      end type IntegerDim5Kindint16QueueNode
      type, extends(Queue), public:: IntegerDim5Kindint32Queue
         type(IntegerDim5Kindint32QueueNode), pointer:: tail => null()
         type(IntegerDim5Kindint32QueueNode), pointer:: head => null()
      end type IntegerDim5Kindint32Queue
      type, extends(QueueNode):: IntegerDim5Kindint32QueueNode
         Integer(kind=int32), dimension(:, :, :, :, :), allocatable:: value
         type(IntegerDim5Kindint32QueueNode), pointer:: next => null()
      end type IntegerDim5Kindint32QueueNode
      type, extends(Queue), public:: IntegerDim5Kindint64Queue
         type(IntegerDim5Kindint64QueueNode), pointer:: tail => null()
         type(IntegerDim5Kindint64QueueNode), pointer:: head => null()
      end type IntegerDim5Kindint64Queue
      type, extends(QueueNode):: IntegerDim5Kindint64QueueNode
         Integer(kind=int64), dimension(:, :, :, :, :), allocatable:: value
         type(IntegerDim5Kindint64QueueNode), pointer:: next => null()
      end type IntegerDim5Kindint64QueueNode
      type, extends(Queue), public:: IntegerDim6Kindint8Queue
         type(IntegerDim6Kindint8QueueNode), pointer:: tail => null()
         type(IntegerDim6Kindint8QueueNode), pointer:: head => null()
      end type IntegerDim6Kindint8Queue
      type, extends(QueueNode):: IntegerDim6Kindint8QueueNode
         Integer(kind=int8), dimension(:, :, :, :, :, :), allocatable:: value
         type(IntegerDim6Kindint8QueueNode), pointer:: next => null()
      end type IntegerDim6Kindint8QueueNode
      type, extends(Queue), public:: IntegerDim6Kindint16Queue
         type(IntegerDim6Kindint16QueueNode), pointer:: tail => null()
         type(IntegerDim6Kindint16QueueNode), pointer:: head => null()
      end type IntegerDim6Kindint16Queue
      type, extends(QueueNode):: IntegerDim6Kindint16QueueNode
         Integer(kind=int16), dimension(:, :, :, :, :, :), allocatable:: value
         type(IntegerDim6Kindint16QueueNode), pointer:: next => null()
      end type IntegerDim6Kindint16QueueNode
      type, extends(Queue), public:: IntegerDim6Kindint32Queue
         type(IntegerDim6Kindint32QueueNode), pointer:: tail => null()
         type(IntegerDim6Kindint32QueueNode), pointer:: head => null()
      end type IntegerDim6Kindint32Queue
      type, extends(QueueNode):: IntegerDim6Kindint32QueueNode
         Integer(kind=int32), dimension(:, :, :, :, :, :), allocatable:: value
         type(IntegerDim6Kindint32QueueNode), pointer:: next => null()
      end type IntegerDim6Kindint32QueueNode
      type, extends(Queue), public:: IntegerDim6Kindint64Queue
         type(IntegerDim6Kindint64QueueNode), pointer:: tail => null()
         type(IntegerDim6Kindint64QueueNode), pointer:: head => null()
      end type IntegerDim6Kindint64Queue
      type, extends(QueueNode):: IntegerDim6Kindint64QueueNode
         Integer(kind=int64), dimension(:, :, :, :, :, :), allocatable:: value
         type(IntegerDim6Kindint64QueueNode), pointer:: next => null()
      end type IntegerDim6Kindint64QueueNode
      type, extends(Queue), public:: IntegerDim7Kindint8Queue
         type(IntegerDim7Kindint8QueueNode), pointer:: tail => null()
         type(IntegerDim7Kindint8QueueNode), pointer:: head => null()
      end type IntegerDim7Kindint8Queue
      type, extends(QueueNode):: IntegerDim7Kindint8QueueNode
         Integer(kind=int8), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(IntegerDim7Kindint8QueueNode), pointer:: next => null()
      end type IntegerDim7Kindint8QueueNode
      type, extends(Queue), public:: IntegerDim7Kindint16Queue
         type(IntegerDim7Kindint16QueueNode), pointer:: tail => null()
         type(IntegerDim7Kindint16QueueNode), pointer:: head => null()
      end type IntegerDim7Kindint16Queue
      type, extends(QueueNode):: IntegerDim7Kindint16QueueNode
         Integer(kind=int16), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(IntegerDim7Kindint16QueueNode), pointer:: next => null()
      end type IntegerDim7Kindint16QueueNode
      type, extends(Queue), public:: IntegerDim7Kindint32Queue
         type(IntegerDim7Kindint32QueueNode), pointer:: tail => null()
         type(IntegerDim7Kindint32QueueNode), pointer:: head => null()
      end type IntegerDim7Kindint32Queue
      type, extends(QueueNode):: IntegerDim7Kindint32QueueNode
         Integer(kind=int32), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(IntegerDim7Kindint32QueueNode), pointer:: next => null()
      end type IntegerDim7Kindint32QueueNode
      type, extends(Queue), public:: IntegerDim7Kindint64Queue
         type(IntegerDim7Kindint64QueueNode), pointer:: tail => null()
         type(IntegerDim7Kindint64QueueNode), pointer:: head => null()
      end type IntegerDim7Kindint64Queue
      type, extends(QueueNode):: IntegerDim7Kindint64QueueNode
         Integer(kind=int64), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(IntegerDim7Kindint64QueueNode), pointer:: next => null()
      end type IntegerDim7Kindint64QueueNode
      type, extends(Queue), public:: LogicalDim0Kindint8Queue
         type(LogicalDim0Kindint8QueueNode), pointer:: tail => null()
         type(LogicalDim0Kindint8QueueNode), pointer:: head => null()
      end type LogicalDim0Kindint8Queue
      type, extends(QueueNode):: LogicalDim0Kindint8QueueNode
         Logical(kind=int8):: value
         type(LogicalDim0Kindint8QueueNode), pointer:: next => null()
      end type LogicalDim0Kindint8QueueNode
      type, extends(Queue), public:: LogicalDim0Kindint16Queue
         type(LogicalDim0Kindint16QueueNode), pointer:: tail => null()
         type(LogicalDim0Kindint16QueueNode), pointer:: head => null()
      end type LogicalDim0Kindint16Queue
      type, extends(QueueNode):: LogicalDim0Kindint16QueueNode
         Logical(kind=int16):: value
         type(LogicalDim0Kindint16QueueNode), pointer:: next => null()
      end type LogicalDim0Kindint16QueueNode
      type, extends(Queue), public:: LogicalDim0Kindint32Queue
         type(LogicalDim0Kindint32QueueNode), pointer:: tail => null()
         type(LogicalDim0Kindint32QueueNode), pointer:: head => null()
      end type LogicalDim0Kindint32Queue
      type, extends(QueueNode):: LogicalDim0Kindint32QueueNode
         Logical(kind=int32):: value
         type(LogicalDim0Kindint32QueueNode), pointer:: next => null()
      end type LogicalDim0Kindint32QueueNode
      type, extends(Queue), public:: LogicalDim0Kindint64Queue
         type(LogicalDim0Kindint64QueueNode), pointer:: tail => null()
         type(LogicalDim0Kindint64QueueNode), pointer:: head => null()
      end type LogicalDim0Kindint64Queue
      type, extends(QueueNode):: LogicalDim0Kindint64QueueNode
         Logical(kind=int64):: value
         type(LogicalDim0Kindint64QueueNode), pointer:: next => null()
      end type LogicalDim0Kindint64QueueNode
      type, extends(Queue), public:: LogicalDim1Kindint8Queue
         type(LogicalDim1Kindint8QueueNode), pointer:: tail => null()
         type(LogicalDim1Kindint8QueueNode), pointer:: head => null()
      end type LogicalDim1Kindint8Queue
      type, extends(QueueNode):: LogicalDim1Kindint8QueueNode
         Logical(kind=int8), dimension(:), allocatable:: value
         type(LogicalDim1Kindint8QueueNode), pointer:: next => null()
      end type LogicalDim1Kindint8QueueNode
      type, extends(Queue), public:: LogicalDim1Kindint16Queue
         type(LogicalDim1Kindint16QueueNode), pointer:: tail => null()
         type(LogicalDim1Kindint16QueueNode), pointer:: head => null()
      end type LogicalDim1Kindint16Queue
      type, extends(QueueNode):: LogicalDim1Kindint16QueueNode
         Logical(kind=int16), dimension(:), allocatable:: value
         type(LogicalDim1Kindint16QueueNode), pointer:: next => null()
      end type LogicalDim1Kindint16QueueNode
      type, extends(Queue), public:: LogicalDim1Kindint32Queue
         type(LogicalDim1Kindint32QueueNode), pointer:: tail => null()
         type(LogicalDim1Kindint32QueueNode), pointer:: head => null()
      end type LogicalDim1Kindint32Queue
      type, extends(QueueNode):: LogicalDim1Kindint32QueueNode
         Logical(kind=int32), dimension(:), allocatable:: value
         type(LogicalDim1Kindint32QueueNode), pointer:: next => null()
      end type LogicalDim1Kindint32QueueNode
      type, extends(Queue), public:: LogicalDim1Kindint64Queue
         type(LogicalDim1Kindint64QueueNode), pointer:: tail => null()
         type(LogicalDim1Kindint64QueueNode), pointer:: head => null()
      end type LogicalDim1Kindint64Queue
      type, extends(QueueNode):: LogicalDim1Kindint64QueueNode
         Logical(kind=int64), dimension(:), allocatable:: value
         type(LogicalDim1Kindint64QueueNode), pointer:: next => null()
      end type LogicalDim1Kindint64QueueNode
      type, extends(Queue), public:: LogicalDim2Kindint8Queue
         type(LogicalDim2Kindint8QueueNode), pointer:: tail => null()
         type(LogicalDim2Kindint8QueueNode), pointer:: head => null()
      end type LogicalDim2Kindint8Queue
      type, extends(QueueNode):: LogicalDim2Kindint8QueueNode
         Logical(kind=int8), dimension(:, :), allocatable:: value
         type(LogicalDim2Kindint8QueueNode), pointer:: next => null()
      end type LogicalDim2Kindint8QueueNode
      type, extends(Queue), public:: LogicalDim2Kindint16Queue
         type(LogicalDim2Kindint16QueueNode), pointer:: tail => null()
         type(LogicalDim2Kindint16QueueNode), pointer:: head => null()
      end type LogicalDim2Kindint16Queue
      type, extends(QueueNode):: LogicalDim2Kindint16QueueNode
         Logical(kind=int16), dimension(:, :), allocatable:: value
         type(LogicalDim2Kindint16QueueNode), pointer:: next => null()
      end type LogicalDim2Kindint16QueueNode
      type, extends(Queue), public:: LogicalDim2Kindint32Queue
         type(LogicalDim2Kindint32QueueNode), pointer:: tail => null()
         type(LogicalDim2Kindint32QueueNode), pointer:: head => null()
      end type LogicalDim2Kindint32Queue
      type, extends(QueueNode):: LogicalDim2Kindint32QueueNode
         Logical(kind=int32), dimension(:, :), allocatable:: value
         type(LogicalDim2Kindint32QueueNode), pointer:: next => null()
      end type LogicalDim2Kindint32QueueNode
      type, extends(Queue), public:: LogicalDim2Kindint64Queue
         type(LogicalDim2Kindint64QueueNode), pointer:: tail => null()
         type(LogicalDim2Kindint64QueueNode), pointer:: head => null()
      end type LogicalDim2Kindint64Queue
      type, extends(QueueNode):: LogicalDim2Kindint64QueueNode
         Logical(kind=int64), dimension(:, :), allocatable:: value
         type(LogicalDim2Kindint64QueueNode), pointer:: next => null()
      end type LogicalDim2Kindint64QueueNode
      type, extends(Queue), public:: LogicalDim3Kindint8Queue
         type(LogicalDim3Kindint8QueueNode), pointer:: tail => null()
         type(LogicalDim3Kindint8QueueNode), pointer:: head => null()
      end type LogicalDim3Kindint8Queue
      type, extends(QueueNode):: LogicalDim3Kindint8QueueNode
         Logical(kind=int8), dimension(:, :, :), allocatable:: value
         type(LogicalDim3Kindint8QueueNode), pointer:: next => null()
      end type LogicalDim3Kindint8QueueNode
      type, extends(Queue), public:: LogicalDim3Kindint16Queue
         type(LogicalDim3Kindint16QueueNode), pointer:: tail => null()
         type(LogicalDim3Kindint16QueueNode), pointer:: head => null()
      end type LogicalDim3Kindint16Queue
      type, extends(QueueNode):: LogicalDim3Kindint16QueueNode
         Logical(kind=int16), dimension(:, :, :), allocatable:: value
         type(LogicalDim3Kindint16QueueNode), pointer:: next => null()
      end type LogicalDim3Kindint16QueueNode
      type, extends(Queue), public:: LogicalDim3Kindint32Queue
         type(LogicalDim3Kindint32QueueNode), pointer:: tail => null()
         type(LogicalDim3Kindint32QueueNode), pointer:: head => null()
      end type LogicalDim3Kindint32Queue
      type, extends(QueueNode):: LogicalDim3Kindint32QueueNode
         Logical(kind=int32), dimension(:, :, :), allocatable:: value
         type(LogicalDim3Kindint32QueueNode), pointer:: next => null()
      end type LogicalDim3Kindint32QueueNode
      type, extends(Queue), public:: LogicalDim3Kindint64Queue
         type(LogicalDim3Kindint64QueueNode), pointer:: tail => null()
         type(LogicalDim3Kindint64QueueNode), pointer:: head => null()
      end type LogicalDim3Kindint64Queue
      type, extends(QueueNode):: LogicalDim3Kindint64QueueNode
         Logical(kind=int64), dimension(:, :, :), allocatable:: value
         type(LogicalDim3Kindint64QueueNode), pointer:: next => null()
      end type LogicalDim3Kindint64QueueNode
      type, extends(Queue), public:: LogicalDim4Kindint8Queue
         type(LogicalDim4Kindint8QueueNode), pointer:: tail => null()
         type(LogicalDim4Kindint8QueueNode), pointer:: head => null()
      end type LogicalDim4Kindint8Queue
      type, extends(QueueNode):: LogicalDim4Kindint8QueueNode
         Logical(kind=int8), dimension(:, :, :, :), allocatable:: value
         type(LogicalDim4Kindint8QueueNode), pointer:: next => null()
      end type LogicalDim4Kindint8QueueNode
      type, extends(Queue), public:: LogicalDim4Kindint16Queue
         type(LogicalDim4Kindint16QueueNode), pointer:: tail => null()
         type(LogicalDim4Kindint16QueueNode), pointer:: head => null()
      end type LogicalDim4Kindint16Queue
      type, extends(QueueNode):: LogicalDim4Kindint16QueueNode
         Logical(kind=int16), dimension(:, :, :, :), allocatable:: value
         type(LogicalDim4Kindint16QueueNode), pointer:: next => null()
      end type LogicalDim4Kindint16QueueNode
      type, extends(Queue), public:: LogicalDim4Kindint32Queue
         type(LogicalDim4Kindint32QueueNode), pointer:: tail => null()
         type(LogicalDim4Kindint32QueueNode), pointer:: head => null()
      end type LogicalDim4Kindint32Queue
      type, extends(QueueNode):: LogicalDim4Kindint32QueueNode
         Logical(kind=int32), dimension(:, :, :, :), allocatable:: value
         type(LogicalDim4Kindint32QueueNode), pointer:: next => null()
      end type LogicalDim4Kindint32QueueNode
      type, extends(Queue), public:: LogicalDim4Kindint64Queue
         type(LogicalDim4Kindint64QueueNode), pointer:: tail => null()
         type(LogicalDim4Kindint64QueueNode), pointer:: head => null()
      end type LogicalDim4Kindint64Queue
      type, extends(QueueNode):: LogicalDim4Kindint64QueueNode
         Logical(kind=int64), dimension(:, :, :, :), allocatable:: value
         type(LogicalDim4Kindint64QueueNode), pointer:: next => null()
      end type LogicalDim4Kindint64QueueNode
      type, extends(Queue), public:: LogicalDim5Kindint8Queue
         type(LogicalDim5Kindint8QueueNode), pointer:: tail => null()
         type(LogicalDim5Kindint8QueueNode), pointer:: head => null()
      end type LogicalDim5Kindint8Queue
      type, extends(QueueNode):: LogicalDim5Kindint8QueueNode
         Logical(kind=int8), dimension(:, :, :, :, :), allocatable:: value
         type(LogicalDim5Kindint8QueueNode), pointer:: next => null()
      end type LogicalDim5Kindint8QueueNode
      type, extends(Queue), public:: LogicalDim5Kindint16Queue
         type(LogicalDim5Kindint16QueueNode), pointer:: tail => null()
         type(LogicalDim5Kindint16QueueNode), pointer:: head => null()
      end type LogicalDim5Kindint16Queue
      type, extends(QueueNode):: LogicalDim5Kindint16QueueNode
         Logical(kind=int16), dimension(:, :, :, :, :), allocatable:: value
         type(LogicalDim5Kindint16QueueNode), pointer:: next => null()
      end type LogicalDim5Kindint16QueueNode
      type, extends(Queue), public:: LogicalDim5Kindint32Queue
         type(LogicalDim5Kindint32QueueNode), pointer:: tail => null()
         type(LogicalDim5Kindint32QueueNode), pointer:: head => null()
      end type LogicalDim5Kindint32Queue
      type, extends(QueueNode):: LogicalDim5Kindint32QueueNode
         Logical(kind=int32), dimension(:, :, :, :, :), allocatable:: value
         type(LogicalDim5Kindint32QueueNode), pointer:: next => null()
      end type LogicalDim5Kindint32QueueNode
      type, extends(Queue), public:: LogicalDim5Kindint64Queue
         type(LogicalDim5Kindint64QueueNode), pointer:: tail => null()
         type(LogicalDim5Kindint64QueueNode), pointer:: head => null()
      end type LogicalDim5Kindint64Queue
      type, extends(QueueNode):: LogicalDim5Kindint64QueueNode
         Logical(kind=int64), dimension(:, :, :, :, :), allocatable:: value
         type(LogicalDim5Kindint64QueueNode), pointer:: next => null()
      end type LogicalDim5Kindint64QueueNode
      type, extends(Queue), public:: LogicalDim6Kindint8Queue
         type(LogicalDim6Kindint8QueueNode), pointer:: tail => null()
         type(LogicalDim6Kindint8QueueNode), pointer:: head => null()
      end type LogicalDim6Kindint8Queue
      type, extends(QueueNode):: LogicalDim6Kindint8QueueNode
         Logical(kind=int8), dimension(:, :, :, :, :, :), allocatable:: value
         type(LogicalDim6Kindint8QueueNode), pointer:: next => null()
      end type LogicalDim6Kindint8QueueNode
      type, extends(Queue), public:: LogicalDim6Kindint16Queue
         type(LogicalDim6Kindint16QueueNode), pointer:: tail => null()
         type(LogicalDim6Kindint16QueueNode), pointer:: head => null()
      end type LogicalDim6Kindint16Queue
      type, extends(QueueNode):: LogicalDim6Kindint16QueueNode
         Logical(kind=int16), dimension(:, :, :, :, :, :), allocatable:: value
         type(LogicalDim6Kindint16QueueNode), pointer:: next => null()
      end type LogicalDim6Kindint16QueueNode
      type, extends(Queue), public:: LogicalDim6Kindint32Queue
         type(LogicalDim6Kindint32QueueNode), pointer:: tail => null()
         type(LogicalDim6Kindint32QueueNode), pointer:: head => null()
      end type LogicalDim6Kindint32Queue
      type, extends(QueueNode):: LogicalDim6Kindint32QueueNode
         Logical(kind=int32), dimension(:, :, :, :, :, :), allocatable:: value
         type(LogicalDim6Kindint32QueueNode), pointer:: next => null()
      end type LogicalDim6Kindint32QueueNode
      type, extends(Queue), public:: LogicalDim6Kindint64Queue
         type(LogicalDim6Kindint64QueueNode), pointer:: tail => null()
         type(LogicalDim6Kindint64QueueNode), pointer:: head => null()
      end type LogicalDim6Kindint64Queue
      type, extends(QueueNode):: LogicalDim6Kindint64QueueNode
         Logical(kind=int64), dimension(:, :, :, :, :, :), allocatable:: value
         type(LogicalDim6Kindint64QueueNode), pointer:: next => null()
      end type LogicalDim6Kindint64QueueNode
      type, extends(Queue), public:: LogicalDim7Kindint8Queue
         type(LogicalDim7Kindint8QueueNode), pointer:: tail => null()
         type(LogicalDim7Kindint8QueueNode), pointer:: head => null()
      end type LogicalDim7Kindint8Queue
      type, extends(QueueNode):: LogicalDim7Kindint8QueueNode
         Logical(kind=int8), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(LogicalDim7Kindint8QueueNode), pointer:: next => null()
      end type LogicalDim7Kindint8QueueNode
      type, extends(Queue), public:: LogicalDim7Kindint16Queue
         type(LogicalDim7Kindint16QueueNode), pointer:: tail => null()
         type(LogicalDim7Kindint16QueueNode), pointer:: head => null()
      end type LogicalDim7Kindint16Queue
      type, extends(QueueNode):: LogicalDim7Kindint16QueueNode
         Logical(kind=int16), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(LogicalDim7Kindint16QueueNode), pointer:: next => null()
      end type LogicalDim7Kindint16QueueNode
      type, extends(Queue), public:: LogicalDim7Kindint32Queue
         type(LogicalDim7Kindint32QueueNode), pointer:: tail => null()
         type(LogicalDim7Kindint32QueueNode), pointer:: head => null()
      end type LogicalDim7Kindint32Queue
      type, extends(QueueNode):: LogicalDim7Kindint32QueueNode
         Logical(kind=int32), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(LogicalDim7Kindint32QueueNode), pointer:: next => null()
      end type LogicalDim7Kindint32QueueNode
      type, extends(Queue), public:: LogicalDim7Kindint64Queue
         type(LogicalDim7Kindint64QueueNode), pointer:: tail => null()
         type(LogicalDim7Kindint64QueueNode), pointer:: head => null()
      end type LogicalDim7Kindint64Queue
      type, extends(QueueNode):: LogicalDim7Kindint64QueueNode
         Logical(kind=int64), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(LogicalDim7Kindint64QueueNode), pointer:: next => null()
      end type LogicalDim7Kindint64QueueNode
      type, extends(Queue), public:: ComplexDim0Kindreal32Queue
         type(ComplexDim0Kindreal32QueueNode), pointer:: tail => null()
         type(ComplexDim0Kindreal32QueueNode), pointer:: head => null()
      end type ComplexDim0Kindreal32Queue
      type, extends(QueueNode):: ComplexDim0Kindreal32QueueNode
         Complex(kind=real32):: value
         type(ComplexDim0Kindreal32QueueNode), pointer:: next => null()
      end type ComplexDim0Kindreal32QueueNode
      type, extends(Queue), public:: ComplexDim0Kindreal64Queue
         type(ComplexDim0Kindreal64QueueNode), pointer:: tail => null()
         type(ComplexDim0Kindreal64QueueNode), pointer:: head => null()
      end type ComplexDim0Kindreal64Queue
      type, extends(QueueNode):: ComplexDim0Kindreal64QueueNode
         Complex(kind=real64):: value
         type(ComplexDim0Kindreal64QueueNode), pointer:: next => null()
      end type ComplexDim0Kindreal64QueueNode
      type, extends(Queue), public:: ComplexDim0Kindreal128Queue
         type(ComplexDim0Kindreal128QueueNode), pointer:: tail => null()
         type(ComplexDim0Kindreal128QueueNode), pointer:: head => null()
      end type ComplexDim0Kindreal128Queue
      type, extends(QueueNode):: ComplexDim0Kindreal128QueueNode
         Complex(kind=real128):: value
         type(ComplexDim0Kindreal128QueueNode), pointer:: next => null()
      end type ComplexDim0Kindreal128QueueNode
      type, extends(Queue), public:: ComplexDim1Kindreal32Queue
         type(ComplexDim1Kindreal32QueueNode), pointer:: tail => null()
         type(ComplexDim1Kindreal32QueueNode), pointer:: head => null()
      end type ComplexDim1Kindreal32Queue
      type, extends(QueueNode):: ComplexDim1Kindreal32QueueNode
         Complex(kind=real32), dimension(:), allocatable:: value
         type(ComplexDim1Kindreal32QueueNode), pointer:: next => null()
      end type ComplexDim1Kindreal32QueueNode
      type, extends(Queue), public:: ComplexDim1Kindreal64Queue
         type(ComplexDim1Kindreal64QueueNode), pointer:: tail => null()
         type(ComplexDim1Kindreal64QueueNode), pointer:: head => null()
      end type ComplexDim1Kindreal64Queue
      type, extends(QueueNode):: ComplexDim1Kindreal64QueueNode
         Complex(kind=real64), dimension(:), allocatable:: value
         type(ComplexDim1Kindreal64QueueNode), pointer:: next => null()
      end type ComplexDim1Kindreal64QueueNode
      type, extends(Queue), public:: ComplexDim1Kindreal128Queue
         type(ComplexDim1Kindreal128QueueNode), pointer:: tail => null()
         type(ComplexDim1Kindreal128QueueNode), pointer:: head => null()
      end type ComplexDim1Kindreal128Queue
      type, extends(QueueNode):: ComplexDim1Kindreal128QueueNode
         Complex(kind=real128), dimension(:), allocatable:: value
         type(ComplexDim1Kindreal128QueueNode), pointer:: next => null()
      end type ComplexDim1Kindreal128QueueNode
      type, extends(Queue), public:: ComplexDim2Kindreal32Queue
         type(ComplexDim2Kindreal32QueueNode), pointer:: tail => null()
         type(ComplexDim2Kindreal32QueueNode), pointer:: head => null()
      end type ComplexDim2Kindreal32Queue
      type, extends(QueueNode):: ComplexDim2Kindreal32QueueNode
         Complex(kind=real32), dimension(:, :), allocatable:: value
         type(ComplexDim2Kindreal32QueueNode), pointer:: next => null()
      end type ComplexDim2Kindreal32QueueNode
      type, extends(Queue), public:: ComplexDim2Kindreal64Queue
         type(ComplexDim2Kindreal64QueueNode), pointer:: tail => null()
         type(ComplexDim2Kindreal64QueueNode), pointer:: head => null()
      end type ComplexDim2Kindreal64Queue
      type, extends(QueueNode):: ComplexDim2Kindreal64QueueNode
         Complex(kind=real64), dimension(:, :), allocatable:: value
         type(ComplexDim2Kindreal64QueueNode), pointer:: next => null()
      end type ComplexDim2Kindreal64QueueNode
      type, extends(Queue), public:: ComplexDim2Kindreal128Queue
         type(ComplexDim2Kindreal128QueueNode), pointer:: tail => null()
         type(ComplexDim2Kindreal128QueueNode), pointer:: head => null()
      end type ComplexDim2Kindreal128Queue
      type, extends(QueueNode):: ComplexDim2Kindreal128QueueNode
         Complex(kind=real128), dimension(:, :), allocatable:: value
         type(ComplexDim2Kindreal128QueueNode), pointer:: next => null()
      end type ComplexDim2Kindreal128QueueNode
      type, extends(Queue), public:: ComplexDim3Kindreal32Queue
         type(ComplexDim3Kindreal32QueueNode), pointer:: tail => null()
         type(ComplexDim3Kindreal32QueueNode), pointer:: head => null()
      end type ComplexDim3Kindreal32Queue
      type, extends(QueueNode):: ComplexDim3Kindreal32QueueNode
         Complex(kind=real32), dimension(:, :, :), allocatable:: value
         type(ComplexDim3Kindreal32QueueNode), pointer:: next => null()
      end type ComplexDim3Kindreal32QueueNode
      type, extends(Queue), public:: ComplexDim3Kindreal64Queue
         type(ComplexDim3Kindreal64QueueNode), pointer:: tail => null()
         type(ComplexDim3Kindreal64QueueNode), pointer:: head => null()
      end type ComplexDim3Kindreal64Queue
      type, extends(QueueNode):: ComplexDim3Kindreal64QueueNode
         Complex(kind=real64), dimension(:, :, :), allocatable:: value
         type(ComplexDim3Kindreal64QueueNode), pointer:: next => null()
      end type ComplexDim3Kindreal64QueueNode
      type, extends(Queue), public:: ComplexDim3Kindreal128Queue
         type(ComplexDim3Kindreal128QueueNode), pointer:: tail => null()
         type(ComplexDim3Kindreal128QueueNode), pointer:: head => null()
      end type ComplexDim3Kindreal128Queue
      type, extends(QueueNode):: ComplexDim3Kindreal128QueueNode
         Complex(kind=real128), dimension(:, :, :), allocatable:: value
         type(ComplexDim3Kindreal128QueueNode), pointer:: next => null()
      end type ComplexDim3Kindreal128QueueNode
      type, extends(Queue), public:: ComplexDim4Kindreal32Queue
         type(ComplexDim4Kindreal32QueueNode), pointer:: tail => null()
         type(ComplexDim4Kindreal32QueueNode), pointer:: head => null()
      end type ComplexDim4Kindreal32Queue
      type, extends(QueueNode):: ComplexDim4Kindreal32QueueNode
         Complex(kind=real32), dimension(:, :, :, :), allocatable:: value
         type(ComplexDim4Kindreal32QueueNode), pointer:: next => null()
      end type ComplexDim4Kindreal32QueueNode
      type, extends(Queue), public:: ComplexDim4Kindreal64Queue
         type(ComplexDim4Kindreal64QueueNode), pointer:: tail => null()
         type(ComplexDim4Kindreal64QueueNode), pointer:: head => null()
      end type ComplexDim4Kindreal64Queue
      type, extends(QueueNode):: ComplexDim4Kindreal64QueueNode
         Complex(kind=real64), dimension(:, :, :, :), allocatable:: value
         type(ComplexDim4Kindreal64QueueNode), pointer:: next => null()
      end type ComplexDim4Kindreal64QueueNode
      type, extends(Queue), public:: ComplexDim4Kindreal128Queue
         type(ComplexDim4Kindreal128QueueNode), pointer:: tail => null()
         type(ComplexDim4Kindreal128QueueNode), pointer:: head => null()
      end type ComplexDim4Kindreal128Queue
      type, extends(QueueNode):: ComplexDim4Kindreal128QueueNode
         Complex(kind=real128), dimension(:, :, :, :), allocatable:: value
         type(ComplexDim4Kindreal128QueueNode), pointer:: next => null()
      end type ComplexDim4Kindreal128QueueNode
      type, extends(Queue), public:: ComplexDim5Kindreal32Queue
         type(ComplexDim5Kindreal32QueueNode), pointer:: tail => null()
         type(ComplexDim5Kindreal32QueueNode), pointer:: head => null()
      end type ComplexDim5Kindreal32Queue
      type, extends(QueueNode):: ComplexDim5Kindreal32QueueNode
         Complex(kind=real32), dimension(:, :, :, :, :), allocatable:: value
         type(ComplexDim5Kindreal32QueueNode), pointer:: next => null()
      end type ComplexDim5Kindreal32QueueNode
      type, extends(Queue), public:: ComplexDim5Kindreal64Queue
         type(ComplexDim5Kindreal64QueueNode), pointer:: tail => null()
         type(ComplexDim5Kindreal64QueueNode), pointer:: head => null()
      end type ComplexDim5Kindreal64Queue
      type, extends(QueueNode):: ComplexDim5Kindreal64QueueNode
         Complex(kind=real64), dimension(:, :, :, :, :), allocatable:: value
         type(ComplexDim5Kindreal64QueueNode), pointer:: next => null()
      end type ComplexDim5Kindreal64QueueNode
      type, extends(Queue), public:: ComplexDim5Kindreal128Queue
         type(ComplexDim5Kindreal128QueueNode), pointer:: tail => null()
         type(ComplexDim5Kindreal128QueueNode), pointer:: head => null()
      end type ComplexDim5Kindreal128Queue
      type, extends(QueueNode):: ComplexDim5Kindreal128QueueNode
         Complex(kind=real128), dimension(:, :, :, :, :), allocatable:: value
         type(ComplexDim5Kindreal128QueueNode), pointer:: next => null()
      end type ComplexDim5Kindreal128QueueNode
      type, extends(Queue), public:: ComplexDim6Kindreal32Queue
         type(ComplexDim6Kindreal32QueueNode), pointer:: tail => null()
         type(ComplexDim6Kindreal32QueueNode), pointer:: head => null()
      end type ComplexDim6Kindreal32Queue
      type, extends(QueueNode):: ComplexDim6Kindreal32QueueNode
         Complex(kind=real32), dimension(:, :, :, :, :, :), allocatable:: value
         type(ComplexDim6Kindreal32QueueNode), pointer:: next => null()
      end type ComplexDim6Kindreal32QueueNode
      type, extends(Queue), public:: ComplexDim6Kindreal64Queue
         type(ComplexDim6Kindreal64QueueNode), pointer:: tail => null()
         type(ComplexDim6Kindreal64QueueNode), pointer:: head => null()
      end type ComplexDim6Kindreal64Queue
      type, extends(QueueNode):: ComplexDim6Kindreal64QueueNode
         Complex(kind=real64), dimension(:, :, :, :, :, :), allocatable:: value
         type(ComplexDim6Kindreal64QueueNode), pointer:: next => null()
      end type ComplexDim6Kindreal64QueueNode
      type, extends(Queue), public:: ComplexDim6Kindreal128Queue
         type(ComplexDim6Kindreal128QueueNode), pointer:: tail => null()
         type(ComplexDim6Kindreal128QueueNode), pointer:: head => null()
      end type ComplexDim6Kindreal128Queue
      type, extends(QueueNode):: ComplexDim6Kindreal128QueueNode
         Complex(kind=real128), dimension(:, :, :, :, :, :), allocatable:: value
         type(ComplexDim6Kindreal128QueueNode), pointer:: next => null()
      end type ComplexDim6Kindreal128QueueNode
      type, extends(Queue), public:: ComplexDim7Kindreal32Queue
         type(ComplexDim7Kindreal32QueueNode), pointer:: tail => null()
         type(ComplexDim7Kindreal32QueueNode), pointer:: head => null()
      end type ComplexDim7Kindreal32Queue
      type, extends(QueueNode):: ComplexDim7Kindreal32QueueNode
         Complex(kind=real32), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(ComplexDim7Kindreal32QueueNode), pointer:: next => null()
      end type ComplexDim7Kindreal32QueueNode
      type, extends(Queue), public:: ComplexDim7Kindreal64Queue
         type(ComplexDim7Kindreal64QueueNode), pointer:: tail => null()
         type(ComplexDim7Kindreal64QueueNode), pointer:: head => null()
      end type ComplexDim7Kindreal64Queue
      type, extends(QueueNode):: ComplexDim7Kindreal64QueueNode
         Complex(kind=real64), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(ComplexDim7Kindreal64QueueNode), pointer:: next => null()
      end type ComplexDim7Kindreal64QueueNode
      type, extends(Queue), public:: ComplexDim7Kindreal128Queue
         type(ComplexDim7Kindreal128QueueNode), pointer:: tail => null()
         type(ComplexDim7Kindreal128QueueNode), pointer:: head => null()
      end type ComplexDim7Kindreal128Queue
      type, extends(QueueNode):: ComplexDim7Kindreal128QueueNode
         Complex(kind=real128), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(ComplexDim7Kindreal128QueueNode), pointer:: next => null()
      end type ComplexDim7Kindreal128QueueNode
      type, extends(Queue), public:: CharacterDim0Len0Queue
         type(CharacterDim0Len0QueueNode), pointer:: tail => null()
         type(CharacterDim0Len0QueueNode), pointer:: head => null()
      end type CharacterDim0Len0Queue
      type, extends(QueueNode):: CharacterDim0Len0QueueNode
         Character(len=0):: value
         type(CharacterDim0Len0QueueNode), pointer:: next => null()
      end type CharacterDim0Len0QueueNode
      type, extends(Queue), public:: CharacterDim1Len0Queue
         type(CharacterDim1Len0QueueNode), pointer:: tail => null()
         type(CharacterDim1Len0QueueNode), pointer:: head => null()
      end type CharacterDim1Len0Queue
      type, extends(QueueNode):: CharacterDim1Len0QueueNode
         Character(len=0), dimension(:), allocatable:: value
         type(CharacterDim1Len0QueueNode), pointer:: next => null()
      end type CharacterDim1Len0QueueNode
      type, extends(Queue), public:: CharacterDim2Len0Queue
         type(CharacterDim2Len0QueueNode), pointer:: tail => null()
         type(CharacterDim2Len0QueueNode), pointer:: head => null()
      end type CharacterDim2Len0Queue
      type, extends(QueueNode):: CharacterDim2Len0QueueNode
         Character(len=0), dimension(:, :), allocatable:: value
         type(CharacterDim2Len0QueueNode), pointer:: next => null()
      end type CharacterDim2Len0QueueNode
      type, extends(Queue), public:: CharacterDim3Len0Queue
         type(CharacterDim3Len0QueueNode), pointer:: tail => null()
         type(CharacterDim3Len0QueueNode), pointer:: head => null()
      end type CharacterDim3Len0Queue
      type, extends(QueueNode):: CharacterDim3Len0QueueNode
         Character(len=0), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len0QueueNode), pointer:: next => null()
      end type CharacterDim3Len0QueueNode
      type, extends(Queue), public:: CharacterDim4Len0Queue
         type(CharacterDim4Len0QueueNode), pointer:: tail => null()
         type(CharacterDim4Len0QueueNode), pointer:: head => null()
      end type CharacterDim4Len0Queue
      type, extends(QueueNode):: CharacterDim4Len0QueueNode
         Character(len=0), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len0QueueNode), pointer:: next => null()
      end type CharacterDim4Len0QueueNode
      type, extends(Queue), public:: CharacterDim5Len0Queue
         type(CharacterDim5Len0QueueNode), pointer:: tail => null()
         type(CharacterDim5Len0QueueNode), pointer:: head => null()
      end type CharacterDim5Len0Queue
      type, extends(QueueNode):: CharacterDim5Len0QueueNode
         Character(len=0), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len0QueueNode), pointer:: next => null()
      end type CharacterDim5Len0QueueNode
      type, extends(Queue), public:: CharacterDim6Len0Queue
         type(CharacterDim6Len0QueueNode), pointer:: tail => null()
         type(CharacterDim6Len0QueueNode), pointer:: head => null()
      end type CharacterDim6Len0Queue
      type, extends(QueueNode):: CharacterDim6Len0QueueNode
         Character(len=0), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len0QueueNode), pointer:: next => null()
      end type CharacterDim6Len0QueueNode
      type, extends(Queue), public:: CharacterDim7Len0Queue
         type(CharacterDim7Len0QueueNode), pointer:: tail => null()
         type(CharacterDim7Len0QueueNode), pointer:: head => null()
      end type CharacterDim7Len0Queue
      type, extends(QueueNode):: CharacterDim7Len0QueueNode
         Character(len=0), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len0QueueNode), pointer:: next => null()
      end type CharacterDim7Len0QueueNode
contains
      subroutine pushRealDim0Kindreal32Queue(self, value)
         type(RealDim0Kindreal32Queue), intent(inout):: self
         Real(kind=real32), intent(in):: value
         type(RealDim0Kindreal32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim0Kindreal32Queue
         ! type(RealDim0Kindreal32QueueNode), target:: root
         ! type(RealDim0Kindreal32QueueNode), pointer:: tail => root
         ! type(RealDim0Kindreal32QueueNode), pointer:: head => root%next
         ! end type RealDim0Kindreal32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim0Kindreal32Queue
      function shiftRealDim0Kindreal32Queue(self, value) result(isSuccess)
         type(RealDim0Kindreal32Queue), intent(inout):: self
         Real(kind=real32), intent(inout):: value
         Logical:: isSuccess
         type(RealDim0Kindreal32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim0Kindreal32Queue
      function is_emptyRealDim0Kindreal32Queue(self) result(answer)
         type(RealDim0Kindreal32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim0Kindreal32Queue
      subroutine pushRealDim0Kindreal64Queue(self, value)
         type(RealDim0Kindreal64Queue), intent(inout):: self
         Real(kind=real64), intent(in):: value
         type(RealDim0Kindreal64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim0Kindreal64Queue
         ! type(RealDim0Kindreal64QueueNode), target:: root
         ! type(RealDim0Kindreal64QueueNode), pointer:: tail => root
         ! type(RealDim0Kindreal64QueueNode), pointer:: head => root%next
         ! end type RealDim0Kindreal64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim0Kindreal64Queue
      function shiftRealDim0Kindreal64Queue(self, value) result(isSuccess)
         type(RealDim0Kindreal64Queue), intent(inout):: self
         Real(kind=real64), intent(inout):: value
         Logical:: isSuccess
         type(RealDim0Kindreal64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim0Kindreal64Queue
      function is_emptyRealDim0Kindreal64Queue(self) result(answer)
         type(RealDim0Kindreal64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim0Kindreal64Queue
      subroutine pushRealDim0Kindreal128Queue(self, value)
         type(RealDim0Kindreal128Queue), intent(inout):: self
         Real(kind=real128), intent(in):: value
         type(RealDim0Kindreal128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim0Kindreal128Queue
         ! type(RealDim0Kindreal128QueueNode), target:: root
         ! type(RealDim0Kindreal128QueueNode), pointer:: tail => root
         ! type(RealDim0Kindreal128QueueNode), pointer:: head => root%next
         ! end type RealDim0Kindreal128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim0Kindreal128Queue
      function shiftRealDim0Kindreal128Queue(self, value) result(isSuccess)
         type(RealDim0Kindreal128Queue), intent(inout):: self
         Real(kind=real128), intent(inout):: value
         Logical:: isSuccess
         type(RealDim0Kindreal128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim0Kindreal128Queue
      function is_emptyRealDim0Kindreal128Queue(self) result(answer)
         type(RealDim0Kindreal128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim0Kindreal128Queue
      subroutine pushRealDim1Kindreal32Queue(self, value)
         type(RealDim1Kindreal32Queue), intent(inout):: self
         Real(kind=real32), dimension(:), intent(in):: value
         type(RealDim1Kindreal32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim1Kindreal32Queue
         ! type(RealDim1Kindreal32QueueNode), target:: root
         ! type(RealDim1Kindreal32QueueNode), pointer:: tail => root
         ! type(RealDim1Kindreal32QueueNode), pointer:: head => root%next
         ! end type RealDim1Kindreal32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim1Kindreal32Queue
      function shiftRealDim1Kindreal32Queue(self, value) result(isSuccess)
         type(RealDim1Kindreal32Queue), intent(inout):: self
         Real(kind=real32), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim1Kindreal32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim1Kindreal32Queue
      function is_emptyRealDim1Kindreal32Queue(self) result(answer)
         type(RealDim1Kindreal32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim1Kindreal32Queue
      subroutine pushRealDim1Kindreal64Queue(self, value)
         type(RealDim1Kindreal64Queue), intent(inout):: self
         Real(kind=real64), dimension(:), intent(in):: value
         type(RealDim1Kindreal64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim1Kindreal64Queue
         ! type(RealDim1Kindreal64QueueNode), target:: root
         ! type(RealDim1Kindreal64QueueNode), pointer:: tail => root
         ! type(RealDim1Kindreal64QueueNode), pointer:: head => root%next
         ! end type RealDim1Kindreal64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim1Kindreal64Queue
      function shiftRealDim1Kindreal64Queue(self, value) result(isSuccess)
         type(RealDim1Kindreal64Queue), intent(inout):: self
         Real(kind=real64), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim1Kindreal64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim1Kindreal64Queue
      function is_emptyRealDim1Kindreal64Queue(self) result(answer)
         type(RealDim1Kindreal64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim1Kindreal64Queue
      subroutine pushRealDim1Kindreal128Queue(self, value)
         type(RealDim1Kindreal128Queue), intent(inout):: self
         Real(kind=real128), dimension(:), intent(in):: value
         type(RealDim1Kindreal128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim1Kindreal128Queue
         ! type(RealDim1Kindreal128QueueNode), target:: root
         ! type(RealDim1Kindreal128QueueNode), pointer:: tail => root
         ! type(RealDim1Kindreal128QueueNode), pointer:: head => root%next
         ! end type RealDim1Kindreal128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim1Kindreal128Queue
      function shiftRealDim1Kindreal128Queue(self, value) result(isSuccess)
         type(RealDim1Kindreal128Queue), intent(inout):: self
         Real(kind=real128), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim1Kindreal128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim1Kindreal128Queue
      function is_emptyRealDim1Kindreal128Queue(self) result(answer)
         type(RealDim1Kindreal128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim1Kindreal128Queue
      subroutine pushRealDim2Kindreal32Queue(self, value)
         type(RealDim2Kindreal32Queue), intent(inout):: self
         Real(kind=real32), dimension(:, :), intent(in):: value
         type(RealDim2Kindreal32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim2Kindreal32Queue
         ! type(RealDim2Kindreal32QueueNode), target:: root
         ! type(RealDim2Kindreal32QueueNode), pointer:: tail => root
         ! type(RealDim2Kindreal32QueueNode), pointer:: head => root%next
         ! end type RealDim2Kindreal32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim2Kindreal32Queue
      function shiftRealDim2Kindreal32Queue(self, value) result(isSuccess)
         type(RealDim2Kindreal32Queue), intent(inout):: self
         Real(kind=real32), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim2Kindreal32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim2Kindreal32Queue
      function is_emptyRealDim2Kindreal32Queue(self) result(answer)
         type(RealDim2Kindreal32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim2Kindreal32Queue
      subroutine pushRealDim2Kindreal64Queue(self, value)
         type(RealDim2Kindreal64Queue), intent(inout):: self
         Real(kind=real64), dimension(:, :), intent(in):: value
         type(RealDim2Kindreal64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim2Kindreal64Queue
         ! type(RealDim2Kindreal64QueueNode), target:: root
         ! type(RealDim2Kindreal64QueueNode), pointer:: tail => root
         ! type(RealDim2Kindreal64QueueNode), pointer:: head => root%next
         ! end type RealDim2Kindreal64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim2Kindreal64Queue
      function shiftRealDim2Kindreal64Queue(self, value) result(isSuccess)
         type(RealDim2Kindreal64Queue), intent(inout):: self
         Real(kind=real64), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim2Kindreal64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim2Kindreal64Queue
      function is_emptyRealDim2Kindreal64Queue(self) result(answer)
         type(RealDim2Kindreal64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim2Kindreal64Queue
      subroutine pushRealDim2Kindreal128Queue(self, value)
         type(RealDim2Kindreal128Queue), intent(inout):: self
         Real(kind=real128), dimension(:, :), intent(in):: value
         type(RealDim2Kindreal128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim2Kindreal128Queue
         ! type(RealDim2Kindreal128QueueNode), target:: root
         ! type(RealDim2Kindreal128QueueNode), pointer:: tail => root
         ! type(RealDim2Kindreal128QueueNode), pointer:: head => root%next
         ! end type RealDim2Kindreal128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim2Kindreal128Queue
      function shiftRealDim2Kindreal128Queue(self, value) result(isSuccess)
         type(RealDim2Kindreal128Queue), intent(inout):: self
         Real(kind=real128), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim2Kindreal128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim2Kindreal128Queue
      function is_emptyRealDim2Kindreal128Queue(self) result(answer)
         type(RealDim2Kindreal128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim2Kindreal128Queue
      subroutine pushRealDim3Kindreal32Queue(self, value)
         type(RealDim3Kindreal32Queue), intent(inout):: self
         Real(kind=real32), dimension(:, :, :), intent(in):: value
         type(RealDim3Kindreal32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim3Kindreal32Queue
         ! type(RealDim3Kindreal32QueueNode), target:: root
         ! type(RealDim3Kindreal32QueueNode), pointer:: tail => root
         ! type(RealDim3Kindreal32QueueNode), pointer:: head => root%next
         ! end type RealDim3Kindreal32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim3Kindreal32Queue
      function shiftRealDim3Kindreal32Queue(self, value) result(isSuccess)
         type(RealDim3Kindreal32Queue), intent(inout):: self
         Real(kind=real32), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim3Kindreal32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim3Kindreal32Queue
      function is_emptyRealDim3Kindreal32Queue(self) result(answer)
         type(RealDim3Kindreal32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim3Kindreal32Queue
      subroutine pushRealDim3Kindreal64Queue(self, value)
         type(RealDim3Kindreal64Queue), intent(inout):: self
         Real(kind=real64), dimension(:, :, :), intent(in):: value
         type(RealDim3Kindreal64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim3Kindreal64Queue
         ! type(RealDim3Kindreal64QueueNode), target:: root
         ! type(RealDim3Kindreal64QueueNode), pointer:: tail => root
         ! type(RealDim3Kindreal64QueueNode), pointer:: head => root%next
         ! end type RealDim3Kindreal64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim3Kindreal64Queue
      function shiftRealDim3Kindreal64Queue(self, value) result(isSuccess)
         type(RealDim3Kindreal64Queue), intent(inout):: self
         Real(kind=real64), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim3Kindreal64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim3Kindreal64Queue
      function is_emptyRealDim3Kindreal64Queue(self) result(answer)
         type(RealDim3Kindreal64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim3Kindreal64Queue
      subroutine pushRealDim3Kindreal128Queue(self, value)
         type(RealDim3Kindreal128Queue), intent(inout):: self
         Real(kind=real128), dimension(:, :, :), intent(in):: value
         type(RealDim3Kindreal128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim3Kindreal128Queue
         ! type(RealDim3Kindreal128QueueNode), target:: root
         ! type(RealDim3Kindreal128QueueNode), pointer:: tail => root
         ! type(RealDim3Kindreal128QueueNode), pointer:: head => root%next
         ! end type RealDim3Kindreal128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim3Kindreal128Queue
      function shiftRealDim3Kindreal128Queue(self, value) result(isSuccess)
         type(RealDim3Kindreal128Queue), intent(inout):: self
         Real(kind=real128), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim3Kindreal128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim3Kindreal128Queue
      function is_emptyRealDim3Kindreal128Queue(self) result(answer)
         type(RealDim3Kindreal128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim3Kindreal128Queue
      subroutine pushRealDim4Kindreal32Queue(self, value)
         type(RealDim4Kindreal32Queue), intent(inout):: self
         Real(kind=real32), dimension(:, :, :, :), intent(in):: value
         type(RealDim4Kindreal32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim4Kindreal32Queue
         ! type(RealDim4Kindreal32QueueNode), target:: root
         ! type(RealDim4Kindreal32QueueNode), pointer:: tail => root
         ! type(RealDim4Kindreal32QueueNode), pointer:: head => root%next
         ! end type RealDim4Kindreal32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim4Kindreal32Queue
      function shiftRealDim4Kindreal32Queue(self, value) result(isSuccess)
         type(RealDim4Kindreal32Queue), intent(inout):: self
         Real(kind=real32), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim4Kindreal32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim4Kindreal32Queue
      function is_emptyRealDim4Kindreal32Queue(self) result(answer)
         type(RealDim4Kindreal32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim4Kindreal32Queue
      subroutine pushRealDim4Kindreal64Queue(self, value)
         type(RealDim4Kindreal64Queue), intent(inout):: self
         Real(kind=real64), dimension(:, :, :, :), intent(in):: value
         type(RealDim4Kindreal64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim4Kindreal64Queue
         ! type(RealDim4Kindreal64QueueNode), target:: root
         ! type(RealDim4Kindreal64QueueNode), pointer:: tail => root
         ! type(RealDim4Kindreal64QueueNode), pointer:: head => root%next
         ! end type RealDim4Kindreal64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim4Kindreal64Queue
      function shiftRealDim4Kindreal64Queue(self, value) result(isSuccess)
         type(RealDim4Kindreal64Queue), intent(inout):: self
         Real(kind=real64), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim4Kindreal64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim4Kindreal64Queue
      function is_emptyRealDim4Kindreal64Queue(self) result(answer)
         type(RealDim4Kindreal64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim4Kindreal64Queue
      subroutine pushRealDim4Kindreal128Queue(self, value)
         type(RealDim4Kindreal128Queue), intent(inout):: self
         Real(kind=real128), dimension(:, :, :, :), intent(in):: value
         type(RealDim4Kindreal128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim4Kindreal128Queue
         ! type(RealDim4Kindreal128QueueNode), target:: root
         ! type(RealDim4Kindreal128QueueNode), pointer:: tail => root
         ! type(RealDim4Kindreal128QueueNode), pointer:: head => root%next
         ! end type RealDim4Kindreal128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim4Kindreal128Queue
      function shiftRealDim4Kindreal128Queue(self, value) result(isSuccess)
         type(RealDim4Kindreal128Queue), intent(inout):: self
         Real(kind=real128), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim4Kindreal128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim4Kindreal128Queue
      function is_emptyRealDim4Kindreal128Queue(self) result(answer)
         type(RealDim4Kindreal128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim4Kindreal128Queue
      subroutine pushRealDim5Kindreal32Queue(self, value)
         type(RealDim5Kindreal32Queue), intent(inout):: self
         Real(kind=real32), dimension(:, :, :, :, :), intent(in):: value
         type(RealDim5Kindreal32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim5Kindreal32Queue
         ! type(RealDim5Kindreal32QueueNode), target:: root
         ! type(RealDim5Kindreal32QueueNode), pointer:: tail => root
         ! type(RealDim5Kindreal32QueueNode), pointer:: head => root%next
         ! end type RealDim5Kindreal32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim5Kindreal32Queue
      function shiftRealDim5Kindreal32Queue(self, value) result(isSuccess)
         type(RealDim5Kindreal32Queue), intent(inout):: self
         Real(kind=real32), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim5Kindreal32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim5Kindreal32Queue
      function is_emptyRealDim5Kindreal32Queue(self) result(answer)
         type(RealDim5Kindreal32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim5Kindreal32Queue
      subroutine pushRealDim5Kindreal64Queue(self, value)
         type(RealDim5Kindreal64Queue), intent(inout):: self
         Real(kind=real64), dimension(:, :, :, :, :), intent(in):: value
         type(RealDim5Kindreal64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim5Kindreal64Queue
         ! type(RealDim5Kindreal64QueueNode), target:: root
         ! type(RealDim5Kindreal64QueueNode), pointer:: tail => root
         ! type(RealDim5Kindreal64QueueNode), pointer:: head => root%next
         ! end type RealDim5Kindreal64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim5Kindreal64Queue
      function shiftRealDim5Kindreal64Queue(self, value) result(isSuccess)
         type(RealDim5Kindreal64Queue), intent(inout):: self
         Real(kind=real64), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim5Kindreal64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim5Kindreal64Queue
      function is_emptyRealDim5Kindreal64Queue(self) result(answer)
         type(RealDim5Kindreal64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim5Kindreal64Queue
      subroutine pushRealDim5Kindreal128Queue(self, value)
         type(RealDim5Kindreal128Queue), intent(inout):: self
         Real(kind=real128), dimension(:, :, :, :, :), intent(in):: value
         type(RealDim5Kindreal128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim5Kindreal128Queue
         ! type(RealDim5Kindreal128QueueNode), target:: root
         ! type(RealDim5Kindreal128QueueNode), pointer:: tail => root
         ! type(RealDim5Kindreal128QueueNode), pointer:: head => root%next
         ! end type RealDim5Kindreal128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim5Kindreal128Queue
      function shiftRealDim5Kindreal128Queue(self, value) result(isSuccess)
         type(RealDim5Kindreal128Queue), intent(inout):: self
         Real(kind=real128), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim5Kindreal128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim5Kindreal128Queue
      function is_emptyRealDim5Kindreal128Queue(self) result(answer)
         type(RealDim5Kindreal128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim5Kindreal128Queue
      subroutine pushRealDim6Kindreal32Queue(self, value)
         type(RealDim6Kindreal32Queue), intent(inout):: self
         Real(kind=real32), dimension(:, :, :, :, :, :), intent(in):: value
         type(RealDim6Kindreal32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim6Kindreal32Queue
         ! type(RealDim6Kindreal32QueueNode), target:: root
         ! type(RealDim6Kindreal32QueueNode), pointer:: tail => root
         ! type(RealDim6Kindreal32QueueNode), pointer:: head => root%next
         ! end type RealDim6Kindreal32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim6Kindreal32Queue
      function shiftRealDim6Kindreal32Queue(self, value) result(isSuccess)
         type(RealDim6Kindreal32Queue), intent(inout):: self
         Real(kind=real32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim6Kindreal32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim6Kindreal32Queue
      function is_emptyRealDim6Kindreal32Queue(self) result(answer)
         type(RealDim6Kindreal32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim6Kindreal32Queue
      subroutine pushRealDim6Kindreal64Queue(self, value)
         type(RealDim6Kindreal64Queue), intent(inout):: self
         Real(kind=real64), dimension(:, :, :, :, :, :), intent(in):: value
         type(RealDim6Kindreal64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim6Kindreal64Queue
         ! type(RealDim6Kindreal64QueueNode), target:: root
         ! type(RealDim6Kindreal64QueueNode), pointer:: tail => root
         ! type(RealDim6Kindreal64QueueNode), pointer:: head => root%next
         ! end type RealDim6Kindreal64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim6Kindreal64Queue
      function shiftRealDim6Kindreal64Queue(self, value) result(isSuccess)
         type(RealDim6Kindreal64Queue), intent(inout):: self
         Real(kind=real64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim6Kindreal64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim6Kindreal64Queue
      function is_emptyRealDim6Kindreal64Queue(self) result(answer)
         type(RealDim6Kindreal64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim6Kindreal64Queue
      subroutine pushRealDim6Kindreal128Queue(self, value)
         type(RealDim6Kindreal128Queue), intent(inout):: self
         Real(kind=real128), dimension(:, :, :, :, :, :), intent(in):: value
         type(RealDim6Kindreal128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim6Kindreal128Queue
         ! type(RealDim6Kindreal128QueueNode), target:: root
         ! type(RealDim6Kindreal128QueueNode), pointer:: tail => root
         ! type(RealDim6Kindreal128QueueNode), pointer:: head => root%next
         ! end type RealDim6Kindreal128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim6Kindreal128Queue
      function shiftRealDim6Kindreal128Queue(self, value) result(isSuccess)
         type(RealDim6Kindreal128Queue), intent(inout):: self
         Real(kind=real128), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim6Kindreal128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim6Kindreal128Queue
      function is_emptyRealDim6Kindreal128Queue(self) result(answer)
         type(RealDim6Kindreal128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim6Kindreal128Queue
      subroutine pushRealDim7Kindreal32Queue(self, value)
         type(RealDim7Kindreal32Queue), intent(inout):: self
         Real(kind=real32), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(RealDim7Kindreal32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim7Kindreal32Queue
         ! type(RealDim7Kindreal32QueueNode), target:: root
         ! type(RealDim7Kindreal32QueueNode), pointer:: tail => root
         ! type(RealDim7Kindreal32QueueNode), pointer:: head => root%next
         ! end type RealDim7Kindreal32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim7Kindreal32Queue
      function shiftRealDim7Kindreal32Queue(self, value) result(isSuccess)
         type(RealDim7Kindreal32Queue), intent(inout):: self
         Real(kind=real32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim7Kindreal32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim7Kindreal32Queue
      function is_emptyRealDim7Kindreal32Queue(self) result(answer)
         type(RealDim7Kindreal32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim7Kindreal32Queue
      subroutine pushRealDim7Kindreal64Queue(self, value)
         type(RealDim7Kindreal64Queue), intent(inout):: self
         Real(kind=real64), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(RealDim7Kindreal64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim7Kindreal64Queue
         ! type(RealDim7Kindreal64QueueNode), target:: root
         ! type(RealDim7Kindreal64QueueNode), pointer:: tail => root
         ! type(RealDim7Kindreal64QueueNode), pointer:: head => root%next
         ! end type RealDim7Kindreal64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim7Kindreal64Queue
      function shiftRealDim7Kindreal64Queue(self, value) result(isSuccess)
         type(RealDim7Kindreal64Queue), intent(inout):: self
         Real(kind=real64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim7Kindreal64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim7Kindreal64Queue
      function is_emptyRealDim7Kindreal64Queue(self) result(answer)
         type(RealDim7Kindreal64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim7Kindreal64Queue
      subroutine pushRealDim7Kindreal128Queue(self, value)
         type(RealDim7Kindreal128Queue), intent(inout):: self
         Real(kind=real128), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(RealDim7Kindreal128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim7Kindreal128Queue
         ! type(RealDim7Kindreal128QueueNode), target:: root
         ! type(RealDim7Kindreal128QueueNode), pointer:: tail => root
         ! type(RealDim7Kindreal128QueueNode), pointer:: head => root%next
         ! end type RealDim7Kindreal128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim7Kindreal128Queue
      function shiftRealDim7Kindreal128Queue(self, value) result(isSuccess)
         type(RealDim7Kindreal128Queue), intent(inout):: self
         Real(kind=real128), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim7Kindreal128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim7Kindreal128Queue
      function is_emptyRealDim7Kindreal128Queue(self) result(answer)
         type(RealDim7Kindreal128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim7Kindreal128Queue
      subroutine pushIntegerDim0Kindint8Queue(self, value)
         type(IntegerDim0Kindint8Queue), intent(inout):: self
         Integer(kind=int8), intent(in):: value
         type(IntegerDim0Kindint8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim0Kindint8Queue
         ! type(IntegerDim0Kindint8QueueNode), target:: root
         ! type(IntegerDim0Kindint8QueueNode), pointer:: tail => root
         ! type(IntegerDim0Kindint8QueueNode), pointer:: head => root%next
         ! end type IntegerDim0Kindint8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim0Kindint8Queue
      function shiftIntegerDim0Kindint8Queue(self, value) result(isSuccess)
         type(IntegerDim0Kindint8Queue), intent(inout):: self
         Integer(kind=int8), intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim0Kindint8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim0Kindint8Queue
      function is_emptyIntegerDim0Kindint8Queue(self) result(answer)
         type(IntegerDim0Kindint8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim0Kindint8Queue
      subroutine pushIntegerDim0Kindint16Queue(self, value)
         type(IntegerDim0Kindint16Queue), intent(inout):: self
         Integer(kind=int16), intent(in):: value
         type(IntegerDim0Kindint16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim0Kindint16Queue
         ! type(IntegerDim0Kindint16QueueNode), target:: root
         ! type(IntegerDim0Kindint16QueueNode), pointer:: tail => root
         ! type(IntegerDim0Kindint16QueueNode), pointer:: head => root%next
         ! end type IntegerDim0Kindint16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim0Kindint16Queue
      function shiftIntegerDim0Kindint16Queue(self, value) result(isSuccess)
         type(IntegerDim0Kindint16Queue), intent(inout):: self
         Integer(kind=int16), intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim0Kindint16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim0Kindint16Queue
      function is_emptyIntegerDim0Kindint16Queue(self) result(answer)
         type(IntegerDim0Kindint16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim0Kindint16Queue
      subroutine pushIntegerDim0Kindint32Queue(self, value)
         type(IntegerDim0Kindint32Queue), intent(inout):: self
         Integer(kind=int32), intent(in):: value
         type(IntegerDim0Kindint32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim0Kindint32Queue
         ! type(IntegerDim0Kindint32QueueNode), target:: root
         ! type(IntegerDim0Kindint32QueueNode), pointer:: tail => root
         ! type(IntegerDim0Kindint32QueueNode), pointer:: head => root%next
         ! end type IntegerDim0Kindint32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim0Kindint32Queue
      function shiftIntegerDim0Kindint32Queue(self, value) result(isSuccess)
         type(IntegerDim0Kindint32Queue), intent(inout):: self
         Integer(kind=int32), intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim0Kindint32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim0Kindint32Queue
      function is_emptyIntegerDim0Kindint32Queue(self) result(answer)
         type(IntegerDim0Kindint32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim0Kindint32Queue
      subroutine pushIntegerDim0Kindint64Queue(self, value)
         type(IntegerDim0Kindint64Queue), intent(inout):: self
         Integer(kind=int64), intent(in):: value
         type(IntegerDim0Kindint64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim0Kindint64Queue
         ! type(IntegerDim0Kindint64QueueNode), target:: root
         ! type(IntegerDim0Kindint64QueueNode), pointer:: tail => root
         ! type(IntegerDim0Kindint64QueueNode), pointer:: head => root%next
         ! end type IntegerDim0Kindint64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim0Kindint64Queue
      function shiftIntegerDim0Kindint64Queue(self, value) result(isSuccess)
         type(IntegerDim0Kindint64Queue), intent(inout):: self
         Integer(kind=int64), intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim0Kindint64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim0Kindint64Queue
      function is_emptyIntegerDim0Kindint64Queue(self) result(answer)
         type(IntegerDim0Kindint64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim0Kindint64Queue
      subroutine pushIntegerDim1Kindint8Queue(self, value)
         type(IntegerDim1Kindint8Queue), intent(inout):: self
         Integer(kind=int8), dimension(:), intent(in):: value
         type(IntegerDim1Kindint8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim1Kindint8Queue
         ! type(IntegerDim1Kindint8QueueNode), target:: root
         ! type(IntegerDim1Kindint8QueueNode), pointer:: tail => root
         ! type(IntegerDim1Kindint8QueueNode), pointer:: head => root%next
         ! end type IntegerDim1Kindint8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim1Kindint8Queue
      function shiftIntegerDim1Kindint8Queue(self, value) result(isSuccess)
         type(IntegerDim1Kindint8Queue), intent(inout):: self
         Integer(kind=int8), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim1Kindint8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim1Kindint8Queue
      function is_emptyIntegerDim1Kindint8Queue(self) result(answer)
         type(IntegerDim1Kindint8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim1Kindint8Queue
      subroutine pushIntegerDim1Kindint16Queue(self, value)
         type(IntegerDim1Kindint16Queue), intent(inout):: self
         Integer(kind=int16), dimension(:), intent(in):: value
         type(IntegerDim1Kindint16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim1Kindint16Queue
         ! type(IntegerDim1Kindint16QueueNode), target:: root
         ! type(IntegerDim1Kindint16QueueNode), pointer:: tail => root
         ! type(IntegerDim1Kindint16QueueNode), pointer:: head => root%next
         ! end type IntegerDim1Kindint16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim1Kindint16Queue
      function shiftIntegerDim1Kindint16Queue(self, value) result(isSuccess)
         type(IntegerDim1Kindint16Queue), intent(inout):: self
         Integer(kind=int16), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim1Kindint16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim1Kindint16Queue
      function is_emptyIntegerDim1Kindint16Queue(self) result(answer)
         type(IntegerDim1Kindint16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim1Kindint16Queue
      subroutine pushIntegerDim1Kindint32Queue(self, value)
         type(IntegerDim1Kindint32Queue), intent(inout):: self
         Integer(kind=int32), dimension(:), intent(in):: value
         type(IntegerDim1Kindint32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim1Kindint32Queue
         ! type(IntegerDim1Kindint32QueueNode), target:: root
         ! type(IntegerDim1Kindint32QueueNode), pointer:: tail => root
         ! type(IntegerDim1Kindint32QueueNode), pointer:: head => root%next
         ! end type IntegerDim1Kindint32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim1Kindint32Queue
      function shiftIntegerDim1Kindint32Queue(self, value) result(isSuccess)
         type(IntegerDim1Kindint32Queue), intent(inout):: self
         Integer(kind=int32), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim1Kindint32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim1Kindint32Queue
      function is_emptyIntegerDim1Kindint32Queue(self) result(answer)
         type(IntegerDim1Kindint32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim1Kindint32Queue
      subroutine pushIntegerDim1Kindint64Queue(self, value)
         type(IntegerDim1Kindint64Queue), intent(inout):: self
         Integer(kind=int64), dimension(:), intent(in):: value
         type(IntegerDim1Kindint64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim1Kindint64Queue
         ! type(IntegerDim1Kindint64QueueNode), target:: root
         ! type(IntegerDim1Kindint64QueueNode), pointer:: tail => root
         ! type(IntegerDim1Kindint64QueueNode), pointer:: head => root%next
         ! end type IntegerDim1Kindint64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim1Kindint64Queue
      function shiftIntegerDim1Kindint64Queue(self, value) result(isSuccess)
         type(IntegerDim1Kindint64Queue), intent(inout):: self
         Integer(kind=int64), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim1Kindint64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim1Kindint64Queue
      function is_emptyIntegerDim1Kindint64Queue(self) result(answer)
         type(IntegerDim1Kindint64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim1Kindint64Queue
      subroutine pushIntegerDim2Kindint8Queue(self, value)
         type(IntegerDim2Kindint8Queue), intent(inout):: self
         Integer(kind=int8), dimension(:, :), intent(in):: value
         type(IntegerDim2Kindint8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim2Kindint8Queue
         ! type(IntegerDim2Kindint8QueueNode), target:: root
         ! type(IntegerDim2Kindint8QueueNode), pointer:: tail => root
         ! type(IntegerDim2Kindint8QueueNode), pointer:: head => root%next
         ! end type IntegerDim2Kindint8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim2Kindint8Queue
      function shiftIntegerDim2Kindint8Queue(self, value) result(isSuccess)
         type(IntegerDim2Kindint8Queue), intent(inout):: self
         Integer(kind=int8), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim2Kindint8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim2Kindint8Queue
      function is_emptyIntegerDim2Kindint8Queue(self) result(answer)
         type(IntegerDim2Kindint8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim2Kindint8Queue
      subroutine pushIntegerDim2Kindint16Queue(self, value)
         type(IntegerDim2Kindint16Queue), intent(inout):: self
         Integer(kind=int16), dimension(:, :), intent(in):: value
         type(IntegerDim2Kindint16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim2Kindint16Queue
         ! type(IntegerDim2Kindint16QueueNode), target:: root
         ! type(IntegerDim2Kindint16QueueNode), pointer:: tail => root
         ! type(IntegerDim2Kindint16QueueNode), pointer:: head => root%next
         ! end type IntegerDim2Kindint16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim2Kindint16Queue
      function shiftIntegerDim2Kindint16Queue(self, value) result(isSuccess)
         type(IntegerDim2Kindint16Queue), intent(inout):: self
         Integer(kind=int16), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim2Kindint16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim2Kindint16Queue
      function is_emptyIntegerDim2Kindint16Queue(self) result(answer)
         type(IntegerDim2Kindint16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim2Kindint16Queue
      subroutine pushIntegerDim2Kindint32Queue(self, value)
         type(IntegerDim2Kindint32Queue), intent(inout):: self
         Integer(kind=int32), dimension(:, :), intent(in):: value
         type(IntegerDim2Kindint32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim2Kindint32Queue
         ! type(IntegerDim2Kindint32QueueNode), target:: root
         ! type(IntegerDim2Kindint32QueueNode), pointer:: tail => root
         ! type(IntegerDim2Kindint32QueueNode), pointer:: head => root%next
         ! end type IntegerDim2Kindint32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim2Kindint32Queue
      function shiftIntegerDim2Kindint32Queue(self, value) result(isSuccess)
         type(IntegerDim2Kindint32Queue), intent(inout):: self
         Integer(kind=int32), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim2Kindint32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim2Kindint32Queue
      function is_emptyIntegerDim2Kindint32Queue(self) result(answer)
         type(IntegerDim2Kindint32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim2Kindint32Queue
      subroutine pushIntegerDim2Kindint64Queue(self, value)
         type(IntegerDim2Kindint64Queue), intent(inout):: self
         Integer(kind=int64), dimension(:, :), intent(in):: value
         type(IntegerDim2Kindint64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim2Kindint64Queue
         ! type(IntegerDim2Kindint64QueueNode), target:: root
         ! type(IntegerDim2Kindint64QueueNode), pointer:: tail => root
         ! type(IntegerDim2Kindint64QueueNode), pointer:: head => root%next
         ! end type IntegerDim2Kindint64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim2Kindint64Queue
      function shiftIntegerDim2Kindint64Queue(self, value) result(isSuccess)
         type(IntegerDim2Kindint64Queue), intent(inout):: self
         Integer(kind=int64), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim2Kindint64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim2Kindint64Queue
      function is_emptyIntegerDim2Kindint64Queue(self) result(answer)
         type(IntegerDim2Kindint64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim2Kindint64Queue
      subroutine pushIntegerDim3Kindint8Queue(self, value)
         type(IntegerDim3Kindint8Queue), intent(inout):: self
         Integer(kind=int8), dimension(:, :, :), intent(in):: value
         type(IntegerDim3Kindint8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim3Kindint8Queue
         ! type(IntegerDim3Kindint8QueueNode), target:: root
         ! type(IntegerDim3Kindint8QueueNode), pointer:: tail => root
         ! type(IntegerDim3Kindint8QueueNode), pointer:: head => root%next
         ! end type IntegerDim3Kindint8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim3Kindint8Queue
      function shiftIntegerDim3Kindint8Queue(self, value) result(isSuccess)
         type(IntegerDim3Kindint8Queue), intent(inout):: self
         Integer(kind=int8), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim3Kindint8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim3Kindint8Queue
      function is_emptyIntegerDim3Kindint8Queue(self) result(answer)
         type(IntegerDim3Kindint8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim3Kindint8Queue
      subroutine pushIntegerDim3Kindint16Queue(self, value)
         type(IntegerDim3Kindint16Queue), intent(inout):: self
         Integer(kind=int16), dimension(:, :, :), intent(in):: value
         type(IntegerDim3Kindint16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim3Kindint16Queue
         ! type(IntegerDim3Kindint16QueueNode), target:: root
         ! type(IntegerDim3Kindint16QueueNode), pointer:: tail => root
         ! type(IntegerDim3Kindint16QueueNode), pointer:: head => root%next
         ! end type IntegerDim3Kindint16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim3Kindint16Queue
      function shiftIntegerDim3Kindint16Queue(self, value) result(isSuccess)
         type(IntegerDim3Kindint16Queue), intent(inout):: self
         Integer(kind=int16), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim3Kindint16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim3Kindint16Queue
      function is_emptyIntegerDim3Kindint16Queue(self) result(answer)
         type(IntegerDim3Kindint16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim3Kindint16Queue
      subroutine pushIntegerDim3Kindint32Queue(self, value)
         type(IntegerDim3Kindint32Queue), intent(inout):: self
         Integer(kind=int32), dimension(:, :, :), intent(in):: value
         type(IntegerDim3Kindint32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim3Kindint32Queue
         ! type(IntegerDim3Kindint32QueueNode), target:: root
         ! type(IntegerDim3Kindint32QueueNode), pointer:: tail => root
         ! type(IntegerDim3Kindint32QueueNode), pointer:: head => root%next
         ! end type IntegerDim3Kindint32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim3Kindint32Queue
      function shiftIntegerDim3Kindint32Queue(self, value) result(isSuccess)
         type(IntegerDim3Kindint32Queue), intent(inout):: self
         Integer(kind=int32), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim3Kindint32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim3Kindint32Queue
      function is_emptyIntegerDim3Kindint32Queue(self) result(answer)
         type(IntegerDim3Kindint32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim3Kindint32Queue
      subroutine pushIntegerDim3Kindint64Queue(self, value)
         type(IntegerDim3Kindint64Queue), intent(inout):: self
         Integer(kind=int64), dimension(:, :, :), intent(in):: value
         type(IntegerDim3Kindint64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim3Kindint64Queue
         ! type(IntegerDim3Kindint64QueueNode), target:: root
         ! type(IntegerDim3Kindint64QueueNode), pointer:: tail => root
         ! type(IntegerDim3Kindint64QueueNode), pointer:: head => root%next
         ! end type IntegerDim3Kindint64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim3Kindint64Queue
      function shiftIntegerDim3Kindint64Queue(self, value) result(isSuccess)
         type(IntegerDim3Kindint64Queue), intent(inout):: self
         Integer(kind=int64), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim3Kindint64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim3Kindint64Queue
      function is_emptyIntegerDim3Kindint64Queue(self) result(answer)
         type(IntegerDim3Kindint64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim3Kindint64Queue
      subroutine pushIntegerDim4Kindint8Queue(self, value)
         type(IntegerDim4Kindint8Queue), intent(inout):: self
         Integer(kind=int8), dimension(:, :, :, :), intent(in):: value
         type(IntegerDim4Kindint8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim4Kindint8Queue
         ! type(IntegerDim4Kindint8QueueNode), target:: root
         ! type(IntegerDim4Kindint8QueueNode), pointer:: tail => root
         ! type(IntegerDim4Kindint8QueueNode), pointer:: head => root%next
         ! end type IntegerDim4Kindint8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim4Kindint8Queue
      function shiftIntegerDim4Kindint8Queue(self, value) result(isSuccess)
         type(IntegerDim4Kindint8Queue), intent(inout):: self
         Integer(kind=int8), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim4Kindint8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim4Kindint8Queue
      function is_emptyIntegerDim4Kindint8Queue(self) result(answer)
         type(IntegerDim4Kindint8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim4Kindint8Queue
      subroutine pushIntegerDim4Kindint16Queue(self, value)
         type(IntegerDim4Kindint16Queue), intent(inout):: self
         Integer(kind=int16), dimension(:, :, :, :), intent(in):: value
         type(IntegerDim4Kindint16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim4Kindint16Queue
         ! type(IntegerDim4Kindint16QueueNode), target:: root
         ! type(IntegerDim4Kindint16QueueNode), pointer:: tail => root
         ! type(IntegerDim4Kindint16QueueNode), pointer:: head => root%next
         ! end type IntegerDim4Kindint16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim4Kindint16Queue
      function shiftIntegerDim4Kindint16Queue(self, value) result(isSuccess)
         type(IntegerDim4Kindint16Queue), intent(inout):: self
         Integer(kind=int16), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim4Kindint16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim4Kindint16Queue
      function is_emptyIntegerDim4Kindint16Queue(self) result(answer)
         type(IntegerDim4Kindint16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim4Kindint16Queue
      subroutine pushIntegerDim4Kindint32Queue(self, value)
         type(IntegerDim4Kindint32Queue), intent(inout):: self
         Integer(kind=int32), dimension(:, :, :, :), intent(in):: value
         type(IntegerDim4Kindint32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim4Kindint32Queue
         ! type(IntegerDim4Kindint32QueueNode), target:: root
         ! type(IntegerDim4Kindint32QueueNode), pointer:: tail => root
         ! type(IntegerDim4Kindint32QueueNode), pointer:: head => root%next
         ! end type IntegerDim4Kindint32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim4Kindint32Queue
      function shiftIntegerDim4Kindint32Queue(self, value) result(isSuccess)
         type(IntegerDim4Kindint32Queue), intent(inout):: self
         Integer(kind=int32), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim4Kindint32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim4Kindint32Queue
      function is_emptyIntegerDim4Kindint32Queue(self) result(answer)
         type(IntegerDim4Kindint32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim4Kindint32Queue
      subroutine pushIntegerDim4Kindint64Queue(self, value)
         type(IntegerDim4Kindint64Queue), intent(inout):: self
         Integer(kind=int64), dimension(:, :, :, :), intent(in):: value
         type(IntegerDim4Kindint64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim4Kindint64Queue
         ! type(IntegerDim4Kindint64QueueNode), target:: root
         ! type(IntegerDim4Kindint64QueueNode), pointer:: tail => root
         ! type(IntegerDim4Kindint64QueueNode), pointer:: head => root%next
         ! end type IntegerDim4Kindint64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim4Kindint64Queue
      function shiftIntegerDim4Kindint64Queue(self, value) result(isSuccess)
         type(IntegerDim4Kindint64Queue), intent(inout):: self
         Integer(kind=int64), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim4Kindint64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim4Kindint64Queue
      function is_emptyIntegerDim4Kindint64Queue(self) result(answer)
         type(IntegerDim4Kindint64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim4Kindint64Queue
      subroutine pushIntegerDim5Kindint8Queue(self, value)
         type(IntegerDim5Kindint8Queue), intent(inout):: self
         Integer(kind=int8), dimension(:, :, :, :, :), intent(in):: value
         type(IntegerDim5Kindint8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim5Kindint8Queue
         ! type(IntegerDim5Kindint8QueueNode), target:: root
         ! type(IntegerDim5Kindint8QueueNode), pointer:: tail => root
         ! type(IntegerDim5Kindint8QueueNode), pointer:: head => root%next
         ! end type IntegerDim5Kindint8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim5Kindint8Queue
      function shiftIntegerDim5Kindint8Queue(self, value) result(isSuccess)
         type(IntegerDim5Kindint8Queue), intent(inout):: self
         Integer(kind=int8), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim5Kindint8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim5Kindint8Queue
      function is_emptyIntegerDim5Kindint8Queue(self) result(answer)
         type(IntegerDim5Kindint8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim5Kindint8Queue
      subroutine pushIntegerDim5Kindint16Queue(self, value)
         type(IntegerDim5Kindint16Queue), intent(inout):: self
         Integer(kind=int16), dimension(:, :, :, :, :), intent(in):: value
         type(IntegerDim5Kindint16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim5Kindint16Queue
         ! type(IntegerDim5Kindint16QueueNode), target:: root
         ! type(IntegerDim5Kindint16QueueNode), pointer:: tail => root
         ! type(IntegerDim5Kindint16QueueNode), pointer:: head => root%next
         ! end type IntegerDim5Kindint16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim5Kindint16Queue
      function shiftIntegerDim5Kindint16Queue(self, value) result(isSuccess)
         type(IntegerDim5Kindint16Queue), intent(inout):: self
         Integer(kind=int16), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim5Kindint16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim5Kindint16Queue
      function is_emptyIntegerDim5Kindint16Queue(self) result(answer)
         type(IntegerDim5Kindint16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim5Kindint16Queue
      subroutine pushIntegerDim5Kindint32Queue(self, value)
         type(IntegerDim5Kindint32Queue), intent(inout):: self
         Integer(kind=int32), dimension(:, :, :, :, :), intent(in):: value
         type(IntegerDim5Kindint32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim5Kindint32Queue
         ! type(IntegerDim5Kindint32QueueNode), target:: root
         ! type(IntegerDim5Kindint32QueueNode), pointer:: tail => root
         ! type(IntegerDim5Kindint32QueueNode), pointer:: head => root%next
         ! end type IntegerDim5Kindint32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim5Kindint32Queue
      function shiftIntegerDim5Kindint32Queue(self, value) result(isSuccess)
         type(IntegerDim5Kindint32Queue), intent(inout):: self
         Integer(kind=int32), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim5Kindint32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim5Kindint32Queue
      function is_emptyIntegerDim5Kindint32Queue(self) result(answer)
         type(IntegerDim5Kindint32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim5Kindint32Queue
      subroutine pushIntegerDim5Kindint64Queue(self, value)
         type(IntegerDim5Kindint64Queue), intent(inout):: self
         Integer(kind=int64), dimension(:, :, :, :, :), intent(in):: value
         type(IntegerDim5Kindint64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim5Kindint64Queue
         ! type(IntegerDim5Kindint64QueueNode), target:: root
         ! type(IntegerDim5Kindint64QueueNode), pointer:: tail => root
         ! type(IntegerDim5Kindint64QueueNode), pointer:: head => root%next
         ! end type IntegerDim5Kindint64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim5Kindint64Queue
      function shiftIntegerDim5Kindint64Queue(self, value) result(isSuccess)
         type(IntegerDim5Kindint64Queue), intent(inout):: self
         Integer(kind=int64), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim5Kindint64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim5Kindint64Queue
      function is_emptyIntegerDim5Kindint64Queue(self) result(answer)
         type(IntegerDim5Kindint64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim5Kindint64Queue
      subroutine pushIntegerDim6Kindint8Queue(self, value)
         type(IntegerDim6Kindint8Queue), intent(inout):: self
         Integer(kind=int8), dimension(:, :, :, :, :, :), intent(in):: value
         type(IntegerDim6Kindint8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim6Kindint8Queue
         ! type(IntegerDim6Kindint8QueueNode), target:: root
         ! type(IntegerDim6Kindint8QueueNode), pointer:: tail => root
         ! type(IntegerDim6Kindint8QueueNode), pointer:: head => root%next
         ! end type IntegerDim6Kindint8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim6Kindint8Queue
      function shiftIntegerDim6Kindint8Queue(self, value) result(isSuccess)
         type(IntegerDim6Kindint8Queue), intent(inout):: self
         Integer(kind=int8), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim6Kindint8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim6Kindint8Queue
      function is_emptyIntegerDim6Kindint8Queue(self) result(answer)
         type(IntegerDim6Kindint8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim6Kindint8Queue
      subroutine pushIntegerDim6Kindint16Queue(self, value)
         type(IntegerDim6Kindint16Queue), intent(inout):: self
         Integer(kind=int16), dimension(:, :, :, :, :, :), intent(in):: value
         type(IntegerDim6Kindint16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim6Kindint16Queue
         ! type(IntegerDim6Kindint16QueueNode), target:: root
         ! type(IntegerDim6Kindint16QueueNode), pointer:: tail => root
         ! type(IntegerDim6Kindint16QueueNode), pointer:: head => root%next
         ! end type IntegerDim6Kindint16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim6Kindint16Queue
      function shiftIntegerDim6Kindint16Queue(self, value) result(isSuccess)
         type(IntegerDim6Kindint16Queue), intent(inout):: self
         Integer(kind=int16), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim6Kindint16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim6Kindint16Queue
      function is_emptyIntegerDim6Kindint16Queue(self) result(answer)
         type(IntegerDim6Kindint16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim6Kindint16Queue
      subroutine pushIntegerDim6Kindint32Queue(self, value)
         type(IntegerDim6Kindint32Queue), intent(inout):: self
         Integer(kind=int32), dimension(:, :, :, :, :, :), intent(in):: value
         type(IntegerDim6Kindint32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim6Kindint32Queue
         ! type(IntegerDim6Kindint32QueueNode), target:: root
         ! type(IntegerDim6Kindint32QueueNode), pointer:: tail => root
         ! type(IntegerDim6Kindint32QueueNode), pointer:: head => root%next
         ! end type IntegerDim6Kindint32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim6Kindint32Queue
      function shiftIntegerDim6Kindint32Queue(self, value) result(isSuccess)
         type(IntegerDim6Kindint32Queue), intent(inout):: self
         Integer(kind=int32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim6Kindint32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim6Kindint32Queue
      function is_emptyIntegerDim6Kindint32Queue(self) result(answer)
         type(IntegerDim6Kindint32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim6Kindint32Queue
      subroutine pushIntegerDim6Kindint64Queue(self, value)
         type(IntegerDim6Kindint64Queue), intent(inout):: self
         Integer(kind=int64), dimension(:, :, :, :, :, :), intent(in):: value
         type(IntegerDim6Kindint64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim6Kindint64Queue
         ! type(IntegerDim6Kindint64QueueNode), target:: root
         ! type(IntegerDim6Kindint64QueueNode), pointer:: tail => root
         ! type(IntegerDim6Kindint64QueueNode), pointer:: head => root%next
         ! end type IntegerDim6Kindint64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim6Kindint64Queue
      function shiftIntegerDim6Kindint64Queue(self, value) result(isSuccess)
         type(IntegerDim6Kindint64Queue), intent(inout):: self
         Integer(kind=int64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim6Kindint64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim6Kindint64Queue
      function is_emptyIntegerDim6Kindint64Queue(self) result(answer)
         type(IntegerDim6Kindint64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim6Kindint64Queue
      subroutine pushIntegerDim7Kindint8Queue(self, value)
         type(IntegerDim7Kindint8Queue), intent(inout):: self
         Integer(kind=int8), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(IntegerDim7Kindint8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim7Kindint8Queue
         ! type(IntegerDim7Kindint8QueueNode), target:: root
         ! type(IntegerDim7Kindint8QueueNode), pointer:: tail => root
         ! type(IntegerDim7Kindint8QueueNode), pointer:: head => root%next
         ! end type IntegerDim7Kindint8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim7Kindint8Queue
      function shiftIntegerDim7Kindint8Queue(self, value) result(isSuccess)
         type(IntegerDim7Kindint8Queue), intent(inout):: self
         Integer(kind=int8), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim7Kindint8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim7Kindint8Queue
      function is_emptyIntegerDim7Kindint8Queue(self) result(answer)
         type(IntegerDim7Kindint8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim7Kindint8Queue
      subroutine pushIntegerDim7Kindint16Queue(self, value)
         type(IntegerDim7Kindint16Queue), intent(inout):: self
         Integer(kind=int16), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(IntegerDim7Kindint16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim7Kindint16Queue
         ! type(IntegerDim7Kindint16QueueNode), target:: root
         ! type(IntegerDim7Kindint16QueueNode), pointer:: tail => root
         ! type(IntegerDim7Kindint16QueueNode), pointer:: head => root%next
         ! end type IntegerDim7Kindint16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim7Kindint16Queue
      function shiftIntegerDim7Kindint16Queue(self, value) result(isSuccess)
         type(IntegerDim7Kindint16Queue), intent(inout):: self
         Integer(kind=int16), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim7Kindint16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim7Kindint16Queue
      function is_emptyIntegerDim7Kindint16Queue(self) result(answer)
         type(IntegerDim7Kindint16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim7Kindint16Queue
      subroutine pushIntegerDim7Kindint32Queue(self, value)
         type(IntegerDim7Kindint32Queue), intent(inout):: self
         Integer(kind=int32), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(IntegerDim7Kindint32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim7Kindint32Queue
         ! type(IntegerDim7Kindint32QueueNode), target:: root
         ! type(IntegerDim7Kindint32QueueNode), pointer:: tail => root
         ! type(IntegerDim7Kindint32QueueNode), pointer:: head => root%next
         ! end type IntegerDim7Kindint32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim7Kindint32Queue
      function shiftIntegerDim7Kindint32Queue(self, value) result(isSuccess)
         type(IntegerDim7Kindint32Queue), intent(inout):: self
         Integer(kind=int32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim7Kindint32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim7Kindint32Queue
      function is_emptyIntegerDim7Kindint32Queue(self) result(answer)
         type(IntegerDim7Kindint32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim7Kindint32Queue
      subroutine pushIntegerDim7Kindint64Queue(self, value)
         type(IntegerDim7Kindint64Queue), intent(inout):: self
         Integer(kind=int64), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(IntegerDim7Kindint64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim7Kindint64Queue
         ! type(IntegerDim7Kindint64QueueNode), target:: root
         ! type(IntegerDim7Kindint64QueueNode), pointer:: tail => root
         ! type(IntegerDim7Kindint64QueueNode), pointer:: head => root%next
         ! end type IntegerDim7Kindint64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim7Kindint64Queue
      function shiftIntegerDim7Kindint64Queue(self, value) result(isSuccess)
         type(IntegerDim7Kindint64Queue), intent(inout):: self
         Integer(kind=int64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim7Kindint64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim7Kindint64Queue
      function is_emptyIntegerDim7Kindint64Queue(self) result(answer)
         type(IntegerDim7Kindint64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim7Kindint64Queue
      subroutine pushLogicalDim0Kindint8Queue(self, value)
         type(LogicalDim0Kindint8Queue), intent(inout):: self
         Logical(kind=int8), intent(in):: value
         type(LogicalDim0Kindint8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim0Kindint8Queue
         ! type(LogicalDim0Kindint8QueueNode), target:: root
         ! type(LogicalDim0Kindint8QueueNode), pointer:: tail => root
         ! type(LogicalDim0Kindint8QueueNode), pointer:: head => root%next
         ! end type LogicalDim0Kindint8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim0Kindint8Queue
      function shiftLogicalDim0Kindint8Queue(self, value) result(isSuccess)
         type(LogicalDim0Kindint8Queue), intent(inout):: self
         Logical(kind=int8), intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim0Kindint8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim0Kindint8Queue
      function is_emptyLogicalDim0Kindint8Queue(self) result(answer)
         type(LogicalDim0Kindint8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim0Kindint8Queue
      subroutine pushLogicalDim0Kindint16Queue(self, value)
         type(LogicalDim0Kindint16Queue), intent(inout):: self
         Logical(kind=int16), intent(in):: value
         type(LogicalDim0Kindint16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim0Kindint16Queue
         ! type(LogicalDim0Kindint16QueueNode), target:: root
         ! type(LogicalDim0Kindint16QueueNode), pointer:: tail => root
         ! type(LogicalDim0Kindint16QueueNode), pointer:: head => root%next
         ! end type LogicalDim0Kindint16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim0Kindint16Queue
      function shiftLogicalDim0Kindint16Queue(self, value) result(isSuccess)
         type(LogicalDim0Kindint16Queue), intent(inout):: self
         Logical(kind=int16), intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim0Kindint16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim0Kindint16Queue
      function is_emptyLogicalDim0Kindint16Queue(self) result(answer)
         type(LogicalDim0Kindint16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim0Kindint16Queue
      subroutine pushLogicalDim0Kindint32Queue(self, value)
         type(LogicalDim0Kindint32Queue), intent(inout):: self
         Logical(kind=int32), intent(in):: value
         type(LogicalDim0Kindint32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim0Kindint32Queue
         ! type(LogicalDim0Kindint32QueueNode), target:: root
         ! type(LogicalDim0Kindint32QueueNode), pointer:: tail => root
         ! type(LogicalDim0Kindint32QueueNode), pointer:: head => root%next
         ! end type LogicalDim0Kindint32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim0Kindint32Queue
      function shiftLogicalDim0Kindint32Queue(self, value) result(isSuccess)
         type(LogicalDim0Kindint32Queue), intent(inout):: self
         Logical(kind=int32), intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim0Kindint32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim0Kindint32Queue
      function is_emptyLogicalDim0Kindint32Queue(self) result(answer)
         type(LogicalDim0Kindint32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim0Kindint32Queue
      subroutine pushLogicalDim0Kindint64Queue(self, value)
         type(LogicalDim0Kindint64Queue), intent(inout):: self
         Logical(kind=int64), intent(in):: value
         type(LogicalDim0Kindint64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim0Kindint64Queue
         ! type(LogicalDim0Kindint64QueueNode), target:: root
         ! type(LogicalDim0Kindint64QueueNode), pointer:: tail => root
         ! type(LogicalDim0Kindint64QueueNode), pointer:: head => root%next
         ! end type LogicalDim0Kindint64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim0Kindint64Queue
      function shiftLogicalDim0Kindint64Queue(self, value) result(isSuccess)
         type(LogicalDim0Kindint64Queue), intent(inout):: self
         Logical(kind=int64), intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim0Kindint64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim0Kindint64Queue
      function is_emptyLogicalDim0Kindint64Queue(self) result(answer)
         type(LogicalDim0Kindint64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim0Kindint64Queue
      subroutine pushLogicalDim1Kindint8Queue(self, value)
         type(LogicalDim1Kindint8Queue), intent(inout):: self
         Logical(kind=int8), dimension(:), intent(in):: value
         type(LogicalDim1Kindint8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim1Kindint8Queue
         ! type(LogicalDim1Kindint8QueueNode), target:: root
         ! type(LogicalDim1Kindint8QueueNode), pointer:: tail => root
         ! type(LogicalDim1Kindint8QueueNode), pointer:: head => root%next
         ! end type LogicalDim1Kindint8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim1Kindint8Queue
      function shiftLogicalDim1Kindint8Queue(self, value) result(isSuccess)
         type(LogicalDim1Kindint8Queue), intent(inout):: self
         Logical(kind=int8), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim1Kindint8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim1Kindint8Queue
      function is_emptyLogicalDim1Kindint8Queue(self) result(answer)
         type(LogicalDim1Kindint8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim1Kindint8Queue
      subroutine pushLogicalDim1Kindint16Queue(self, value)
         type(LogicalDim1Kindint16Queue), intent(inout):: self
         Logical(kind=int16), dimension(:), intent(in):: value
         type(LogicalDim1Kindint16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim1Kindint16Queue
         ! type(LogicalDim1Kindint16QueueNode), target:: root
         ! type(LogicalDim1Kindint16QueueNode), pointer:: tail => root
         ! type(LogicalDim1Kindint16QueueNode), pointer:: head => root%next
         ! end type LogicalDim1Kindint16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim1Kindint16Queue
      function shiftLogicalDim1Kindint16Queue(self, value) result(isSuccess)
         type(LogicalDim1Kindint16Queue), intent(inout):: self
         Logical(kind=int16), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim1Kindint16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim1Kindint16Queue
      function is_emptyLogicalDim1Kindint16Queue(self) result(answer)
         type(LogicalDim1Kindint16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim1Kindint16Queue
      subroutine pushLogicalDim1Kindint32Queue(self, value)
         type(LogicalDim1Kindint32Queue), intent(inout):: self
         Logical(kind=int32), dimension(:), intent(in):: value
         type(LogicalDim1Kindint32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim1Kindint32Queue
         ! type(LogicalDim1Kindint32QueueNode), target:: root
         ! type(LogicalDim1Kindint32QueueNode), pointer:: tail => root
         ! type(LogicalDim1Kindint32QueueNode), pointer:: head => root%next
         ! end type LogicalDim1Kindint32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim1Kindint32Queue
      function shiftLogicalDim1Kindint32Queue(self, value) result(isSuccess)
         type(LogicalDim1Kindint32Queue), intent(inout):: self
         Logical(kind=int32), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim1Kindint32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim1Kindint32Queue
      function is_emptyLogicalDim1Kindint32Queue(self) result(answer)
         type(LogicalDim1Kindint32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim1Kindint32Queue
      subroutine pushLogicalDim1Kindint64Queue(self, value)
         type(LogicalDim1Kindint64Queue), intent(inout):: self
         Logical(kind=int64), dimension(:), intent(in):: value
         type(LogicalDim1Kindint64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim1Kindint64Queue
         ! type(LogicalDim1Kindint64QueueNode), target:: root
         ! type(LogicalDim1Kindint64QueueNode), pointer:: tail => root
         ! type(LogicalDim1Kindint64QueueNode), pointer:: head => root%next
         ! end type LogicalDim1Kindint64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim1Kindint64Queue
      function shiftLogicalDim1Kindint64Queue(self, value) result(isSuccess)
         type(LogicalDim1Kindint64Queue), intent(inout):: self
         Logical(kind=int64), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim1Kindint64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim1Kindint64Queue
      function is_emptyLogicalDim1Kindint64Queue(self) result(answer)
         type(LogicalDim1Kindint64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim1Kindint64Queue
      subroutine pushLogicalDim2Kindint8Queue(self, value)
         type(LogicalDim2Kindint8Queue), intent(inout):: self
         Logical(kind=int8), dimension(:, :), intent(in):: value
         type(LogicalDim2Kindint8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim2Kindint8Queue
         ! type(LogicalDim2Kindint8QueueNode), target:: root
         ! type(LogicalDim2Kindint8QueueNode), pointer:: tail => root
         ! type(LogicalDim2Kindint8QueueNode), pointer:: head => root%next
         ! end type LogicalDim2Kindint8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim2Kindint8Queue
      function shiftLogicalDim2Kindint8Queue(self, value) result(isSuccess)
         type(LogicalDim2Kindint8Queue), intent(inout):: self
         Logical(kind=int8), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim2Kindint8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim2Kindint8Queue
      function is_emptyLogicalDim2Kindint8Queue(self) result(answer)
         type(LogicalDim2Kindint8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim2Kindint8Queue
      subroutine pushLogicalDim2Kindint16Queue(self, value)
         type(LogicalDim2Kindint16Queue), intent(inout):: self
         Logical(kind=int16), dimension(:, :), intent(in):: value
         type(LogicalDim2Kindint16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim2Kindint16Queue
         ! type(LogicalDim2Kindint16QueueNode), target:: root
         ! type(LogicalDim2Kindint16QueueNode), pointer:: tail => root
         ! type(LogicalDim2Kindint16QueueNode), pointer:: head => root%next
         ! end type LogicalDim2Kindint16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim2Kindint16Queue
      function shiftLogicalDim2Kindint16Queue(self, value) result(isSuccess)
         type(LogicalDim2Kindint16Queue), intent(inout):: self
         Logical(kind=int16), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim2Kindint16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim2Kindint16Queue
      function is_emptyLogicalDim2Kindint16Queue(self) result(answer)
         type(LogicalDim2Kindint16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim2Kindint16Queue
      subroutine pushLogicalDim2Kindint32Queue(self, value)
         type(LogicalDim2Kindint32Queue), intent(inout):: self
         Logical(kind=int32), dimension(:, :), intent(in):: value
         type(LogicalDim2Kindint32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim2Kindint32Queue
         ! type(LogicalDim2Kindint32QueueNode), target:: root
         ! type(LogicalDim2Kindint32QueueNode), pointer:: tail => root
         ! type(LogicalDim2Kindint32QueueNode), pointer:: head => root%next
         ! end type LogicalDim2Kindint32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim2Kindint32Queue
      function shiftLogicalDim2Kindint32Queue(self, value) result(isSuccess)
         type(LogicalDim2Kindint32Queue), intent(inout):: self
         Logical(kind=int32), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim2Kindint32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim2Kindint32Queue
      function is_emptyLogicalDim2Kindint32Queue(self) result(answer)
         type(LogicalDim2Kindint32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim2Kindint32Queue
      subroutine pushLogicalDim2Kindint64Queue(self, value)
         type(LogicalDim2Kindint64Queue), intent(inout):: self
         Logical(kind=int64), dimension(:, :), intent(in):: value
         type(LogicalDim2Kindint64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim2Kindint64Queue
         ! type(LogicalDim2Kindint64QueueNode), target:: root
         ! type(LogicalDim2Kindint64QueueNode), pointer:: tail => root
         ! type(LogicalDim2Kindint64QueueNode), pointer:: head => root%next
         ! end type LogicalDim2Kindint64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim2Kindint64Queue
      function shiftLogicalDim2Kindint64Queue(self, value) result(isSuccess)
         type(LogicalDim2Kindint64Queue), intent(inout):: self
         Logical(kind=int64), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim2Kindint64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim2Kindint64Queue
      function is_emptyLogicalDim2Kindint64Queue(self) result(answer)
         type(LogicalDim2Kindint64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim2Kindint64Queue
      subroutine pushLogicalDim3Kindint8Queue(self, value)
         type(LogicalDim3Kindint8Queue), intent(inout):: self
         Logical(kind=int8), dimension(:, :, :), intent(in):: value
         type(LogicalDim3Kindint8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim3Kindint8Queue
         ! type(LogicalDim3Kindint8QueueNode), target:: root
         ! type(LogicalDim3Kindint8QueueNode), pointer:: tail => root
         ! type(LogicalDim3Kindint8QueueNode), pointer:: head => root%next
         ! end type LogicalDim3Kindint8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim3Kindint8Queue
      function shiftLogicalDim3Kindint8Queue(self, value) result(isSuccess)
         type(LogicalDim3Kindint8Queue), intent(inout):: self
         Logical(kind=int8), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim3Kindint8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim3Kindint8Queue
      function is_emptyLogicalDim3Kindint8Queue(self) result(answer)
         type(LogicalDim3Kindint8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim3Kindint8Queue
      subroutine pushLogicalDim3Kindint16Queue(self, value)
         type(LogicalDim3Kindint16Queue), intent(inout):: self
         Logical(kind=int16), dimension(:, :, :), intent(in):: value
         type(LogicalDim3Kindint16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim3Kindint16Queue
         ! type(LogicalDim3Kindint16QueueNode), target:: root
         ! type(LogicalDim3Kindint16QueueNode), pointer:: tail => root
         ! type(LogicalDim3Kindint16QueueNode), pointer:: head => root%next
         ! end type LogicalDim3Kindint16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim3Kindint16Queue
      function shiftLogicalDim3Kindint16Queue(self, value) result(isSuccess)
         type(LogicalDim3Kindint16Queue), intent(inout):: self
         Logical(kind=int16), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim3Kindint16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim3Kindint16Queue
      function is_emptyLogicalDim3Kindint16Queue(self) result(answer)
         type(LogicalDim3Kindint16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim3Kindint16Queue
      subroutine pushLogicalDim3Kindint32Queue(self, value)
         type(LogicalDim3Kindint32Queue), intent(inout):: self
         Logical(kind=int32), dimension(:, :, :), intent(in):: value
         type(LogicalDim3Kindint32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim3Kindint32Queue
         ! type(LogicalDim3Kindint32QueueNode), target:: root
         ! type(LogicalDim3Kindint32QueueNode), pointer:: tail => root
         ! type(LogicalDim3Kindint32QueueNode), pointer:: head => root%next
         ! end type LogicalDim3Kindint32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim3Kindint32Queue
      function shiftLogicalDim3Kindint32Queue(self, value) result(isSuccess)
         type(LogicalDim3Kindint32Queue), intent(inout):: self
         Logical(kind=int32), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim3Kindint32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim3Kindint32Queue
      function is_emptyLogicalDim3Kindint32Queue(self) result(answer)
         type(LogicalDim3Kindint32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim3Kindint32Queue
      subroutine pushLogicalDim3Kindint64Queue(self, value)
         type(LogicalDim3Kindint64Queue), intent(inout):: self
         Logical(kind=int64), dimension(:, :, :), intent(in):: value
         type(LogicalDim3Kindint64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim3Kindint64Queue
         ! type(LogicalDim3Kindint64QueueNode), target:: root
         ! type(LogicalDim3Kindint64QueueNode), pointer:: tail => root
         ! type(LogicalDim3Kindint64QueueNode), pointer:: head => root%next
         ! end type LogicalDim3Kindint64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim3Kindint64Queue
      function shiftLogicalDim3Kindint64Queue(self, value) result(isSuccess)
         type(LogicalDim3Kindint64Queue), intent(inout):: self
         Logical(kind=int64), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim3Kindint64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim3Kindint64Queue
      function is_emptyLogicalDim3Kindint64Queue(self) result(answer)
         type(LogicalDim3Kindint64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim3Kindint64Queue
      subroutine pushLogicalDim4Kindint8Queue(self, value)
         type(LogicalDim4Kindint8Queue), intent(inout):: self
         Logical(kind=int8), dimension(:, :, :, :), intent(in):: value
         type(LogicalDim4Kindint8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim4Kindint8Queue
         ! type(LogicalDim4Kindint8QueueNode), target:: root
         ! type(LogicalDim4Kindint8QueueNode), pointer:: tail => root
         ! type(LogicalDim4Kindint8QueueNode), pointer:: head => root%next
         ! end type LogicalDim4Kindint8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim4Kindint8Queue
      function shiftLogicalDim4Kindint8Queue(self, value) result(isSuccess)
         type(LogicalDim4Kindint8Queue), intent(inout):: self
         Logical(kind=int8), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim4Kindint8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim4Kindint8Queue
      function is_emptyLogicalDim4Kindint8Queue(self) result(answer)
         type(LogicalDim4Kindint8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim4Kindint8Queue
      subroutine pushLogicalDim4Kindint16Queue(self, value)
         type(LogicalDim4Kindint16Queue), intent(inout):: self
         Logical(kind=int16), dimension(:, :, :, :), intent(in):: value
         type(LogicalDim4Kindint16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim4Kindint16Queue
         ! type(LogicalDim4Kindint16QueueNode), target:: root
         ! type(LogicalDim4Kindint16QueueNode), pointer:: tail => root
         ! type(LogicalDim4Kindint16QueueNode), pointer:: head => root%next
         ! end type LogicalDim4Kindint16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim4Kindint16Queue
      function shiftLogicalDim4Kindint16Queue(self, value) result(isSuccess)
         type(LogicalDim4Kindint16Queue), intent(inout):: self
         Logical(kind=int16), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim4Kindint16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim4Kindint16Queue
      function is_emptyLogicalDim4Kindint16Queue(self) result(answer)
         type(LogicalDim4Kindint16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim4Kindint16Queue
      subroutine pushLogicalDim4Kindint32Queue(self, value)
         type(LogicalDim4Kindint32Queue), intent(inout):: self
         Logical(kind=int32), dimension(:, :, :, :), intent(in):: value
         type(LogicalDim4Kindint32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim4Kindint32Queue
         ! type(LogicalDim4Kindint32QueueNode), target:: root
         ! type(LogicalDim4Kindint32QueueNode), pointer:: tail => root
         ! type(LogicalDim4Kindint32QueueNode), pointer:: head => root%next
         ! end type LogicalDim4Kindint32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim4Kindint32Queue
      function shiftLogicalDim4Kindint32Queue(self, value) result(isSuccess)
         type(LogicalDim4Kindint32Queue), intent(inout):: self
         Logical(kind=int32), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim4Kindint32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim4Kindint32Queue
      function is_emptyLogicalDim4Kindint32Queue(self) result(answer)
         type(LogicalDim4Kindint32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim4Kindint32Queue
      subroutine pushLogicalDim4Kindint64Queue(self, value)
         type(LogicalDim4Kindint64Queue), intent(inout):: self
         Logical(kind=int64), dimension(:, :, :, :), intent(in):: value
         type(LogicalDim4Kindint64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim4Kindint64Queue
         ! type(LogicalDim4Kindint64QueueNode), target:: root
         ! type(LogicalDim4Kindint64QueueNode), pointer:: tail => root
         ! type(LogicalDim4Kindint64QueueNode), pointer:: head => root%next
         ! end type LogicalDim4Kindint64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim4Kindint64Queue
      function shiftLogicalDim4Kindint64Queue(self, value) result(isSuccess)
         type(LogicalDim4Kindint64Queue), intent(inout):: self
         Logical(kind=int64), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim4Kindint64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim4Kindint64Queue
      function is_emptyLogicalDim4Kindint64Queue(self) result(answer)
         type(LogicalDim4Kindint64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim4Kindint64Queue
      subroutine pushLogicalDim5Kindint8Queue(self, value)
         type(LogicalDim5Kindint8Queue), intent(inout):: self
         Logical(kind=int8), dimension(:, :, :, :, :), intent(in):: value
         type(LogicalDim5Kindint8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim5Kindint8Queue
         ! type(LogicalDim5Kindint8QueueNode), target:: root
         ! type(LogicalDim5Kindint8QueueNode), pointer:: tail => root
         ! type(LogicalDim5Kindint8QueueNode), pointer:: head => root%next
         ! end type LogicalDim5Kindint8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim5Kindint8Queue
      function shiftLogicalDim5Kindint8Queue(self, value) result(isSuccess)
         type(LogicalDim5Kindint8Queue), intent(inout):: self
         Logical(kind=int8), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim5Kindint8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim5Kindint8Queue
      function is_emptyLogicalDim5Kindint8Queue(self) result(answer)
         type(LogicalDim5Kindint8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim5Kindint8Queue
      subroutine pushLogicalDim5Kindint16Queue(self, value)
         type(LogicalDim5Kindint16Queue), intent(inout):: self
         Logical(kind=int16), dimension(:, :, :, :, :), intent(in):: value
         type(LogicalDim5Kindint16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim5Kindint16Queue
         ! type(LogicalDim5Kindint16QueueNode), target:: root
         ! type(LogicalDim5Kindint16QueueNode), pointer:: tail => root
         ! type(LogicalDim5Kindint16QueueNode), pointer:: head => root%next
         ! end type LogicalDim5Kindint16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim5Kindint16Queue
      function shiftLogicalDim5Kindint16Queue(self, value) result(isSuccess)
         type(LogicalDim5Kindint16Queue), intent(inout):: self
         Logical(kind=int16), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim5Kindint16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim5Kindint16Queue
      function is_emptyLogicalDim5Kindint16Queue(self) result(answer)
         type(LogicalDim5Kindint16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim5Kindint16Queue
      subroutine pushLogicalDim5Kindint32Queue(self, value)
         type(LogicalDim5Kindint32Queue), intent(inout):: self
         Logical(kind=int32), dimension(:, :, :, :, :), intent(in):: value
         type(LogicalDim5Kindint32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim5Kindint32Queue
         ! type(LogicalDim5Kindint32QueueNode), target:: root
         ! type(LogicalDim5Kindint32QueueNode), pointer:: tail => root
         ! type(LogicalDim5Kindint32QueueNode), pointer:: head => root%next
         ! end type LogicalDim5Kindint32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim5Kindint32Queue
      function shiftLogicalDim5Kindint32Queue(self, value) result(isSuccess)
         type(LogicalDim5Kindint32Queue), intent(inout):: self
         Logical(kind=int32), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim5Kindint32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim5Kindint32Queue
      function is_emptyLogicalDim5Kindint32Queue(self) result(answer)
         type(LogicalDim5Kindint32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim5Kindint32Queue
      subroutine pushLogicalDim5Kindint64Queue(self, value)
         type(LogicalDim5Kindint64Queue), intent(inout):: self
         Logical(kind=int64), dimension(:, :, :, :, :), intent(in):: value
         type(LogicalDim5Kindint64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim5Kindint64Queue
         ! type(LogicalDim5Kindint64QueueNode), target:: root
         ! type(LogicalDim5Kindint64QueueNode), pointer:: tail => root
         ! type(LogicalDim5Kindint64QueueNode), pointer:: head => root%next
         ! end type LogicalDim5Kindint64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim5Kindint64Queue
      function shiftLogicalDim5Kindint64Queue(self, value) result(isSuccess)
         type(LogicalDim5Kindint64Queue), intent(inout):: self
         Logical(kind=int64), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim5Kindint64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim5Kindint64Queue
      function is_emptyLogicalDim5Kindint64Queue(self) result(answer)
         type(LogicalDim5Kindint64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim5Kindint64Queue
      subroutine pushLogicalDim6Kindint8Queue(self, value)
         type(LogicalDim6Kindint8Queue), intent(inout):: self
         Logical(kind=int8), dimension(:, :, :, :, :, :), intent(in):: value
         type(LogicalDim6Kindint8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim6Kindint8Queue
         ! type(LogicalDim6Kindint8QueueNode), target:: root
         ! type(LogicalDim6Kindint8QueueNode), pointer:: tail => root
         ! type(LogicalDim6Kindint8QueueNode), pointer:: head => root%next
         ! end type LogicalDim6Kindint8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim6Kindint8Queue
      function shiftLogicalDim6Kindint8Queue(self, value) result(isSuccess)
         type(LogicalDim6Kindint8Queue), intent(inout):: self
         Logical(kind=int8), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim6Kindint8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim6Kindint8Queue
      function is_emptyLogicalDim6Kindint8Queue(self) result(answer)
         type(LogicalDim6Kindint8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim6Kindint8Queue
      subroutine pushLogicalDim6Kindint16Queue(self, value)
         type(LogicalDim6Kindint16Queue), intent(inout):: self
         Logical(kind=int16), dimension(:, :, :, :, :, :), intent(in):: value
         type(LogicalDim6Kindint16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim6Kindint16Queue
         ! type(LogicalDim6Kindint16QueueNode), target:: root
         ! type(LogicalDim6Kindint16QueueNode), pointer:: tail => root
         ! type(LogicalDim6Kindint16QueueNode), pointer:: head => root%next
         ! end type LogicalDim6Kindint16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim6Kindint16Queue
      function shiftLogicalDim6Kindint16Queue(self, value) result(isSuccess)
         type(LogicalDim6Kindint16Queue), intent(inout):: self
         Logical(kind=int16), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim6Kindint16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim6Kindint16Queue
      function is_emptyLogicalDim6Kindint16Queue(self) result(answer)
         type(LogicalDim6Kindint16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim6Kindint16Queue
      subroutine pushLogicalDim6Kindint32Queue(self, value)
         type(LogicalDim6Kindint32Queue), intent(inout):: self
         Logical(kind=int32), dimension(:, :, :, :, :, :), intent(in):: value
         type(LogicalDim6Kindint32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim6Kindint32Queue
         ! type(LogicalDim6Kindint32QueueNode), target:: root
         ! type(LogicalDim6Kindint32QueueNode), pointer:: tail => root
         ! type(LogicalDim6Kindint32QueueNode), pointer:: head => root%next
         ! end type LogicalDim6Kindint32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim6Kindint32Queue
      function shiftLogicalDim6Kindint32Queue(self, value) result(isSuccess)
         type(LogicalDim6Kindint32Queue), intent(inout):: self
         Logical(kind=int32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim6Kindint32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim6Kindint32Queue
      function is_emptyLogicalDim6Kindint32Queue(self) result(answer)
         type(LogicalDim6Kindint32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim6Kindint32Queue
      subroutine pushLogicalDim6Kindint64Queue(self, value)
         type(LogicalDim6Kindint64Queue), intent(inout):: self
         Logical(kind=int64), dimension(:, :, :, :, :, :), intent(in):: value
         type(LogicalDim6Kindint64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim6Kindint64Queue
         ! type(LogicalDim6Kindint64QueueNode), target:: root
         ! type(LogicalDim6Kindint64QueueNode), pointer:: tail => root
         ! type(LogicalDim6Kindint64QueueNode), pointer:: head => root%next
         ! end type LogicalDim6Kindint64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim6Kindint64Queue
      function shiftLogicalDim6Kindint64Queue(self, value) result(isSuccess)
         type(LogicalDim6Kindint64Queue), intent(inout):: self
         Logical(kind=int64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim6Kindint64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim6Kindint64Queue
      function is_emptyLogicalDim6Kindint64Queue(self) result(answer)
         type(LogicalDim6Kindint64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim6Kindint64Queue
      subroutine pushLogicalDim7Kindint8Queue(self, value)
         type(LogicalDim7Kindint8Queue), intent(inout):: self
         Logical(kind=int8), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(LogicalDim7Kindint8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim7Kindint8Queue
         ! type(LogicalDim7Kindint8QueueNode), target:: root
         ! type(LogicalDim7Kindint8QueueNode), pointer:: tail => root
         ! type(LogicalDim7Kindint8QueueNode), pointer:: head => root%next
         ! end type LogicalDim7Kindint8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim7Kindint8Queue
      function shiftLogicalDim7Kindint8Queue(self, value) result(isSuccess)
         type(LogicalDim7Kindint8Queue), intent(inout):: self
         Logical(kind=int8), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim7Kindint8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim7Kindint8Queue
      function is_emptyLogicalDim7Kindint8Queue(self) result(answer)
         type(LogicalDim7Kindint8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim7Kindint8Queue
      subroutine pushLogicalDim7Kindint16Queue(self, value)
         type(LogicalDim7Kindint16Queue), intent(inout):: self
         Logical(kind=int16), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(LogicalDim7Kindint16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim7Kindint16Queue
         ! type(LogicalDim7Kindint16QueueNode), target:: root
         ! type(LogicalDim7Kindint16QueueNode), pointer:: tail => root
         ! type(LogicalDim7Kindint16QueueNode), pointer:: head => root%next
         ! end type LogicalDim7Kindint16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim7Kindint16Queue
      function shiftLogicalDim7Kindint16Queue(self, value) result(isSuccess)
         type(LogicalDim7Kindint16Queue), intent(inout):: self
         Logical(kind=int16), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim7Kindint16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim7Kindint16Queue
      function is_emptyLogicalDim7Kindint16Queue(self) result(answer)
         type(LogicalDim7Kindint16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim7Kindint16Queue
      subroutine pushLogicalDim7Kindint32Queue(self, value)
         type(LogicalDim7Kindint32Queue), intent(inout):: self
         Logical(kind=int32), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(LogicalDim7Kindint32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim7Kindint32Queue
         ! type(LogicalDim7Kindint32QueueNode), target:: root
         ! type(LogicalDim7Kindint32QueueNode), pointer:: tail => root
         ! type(LogicalDim7Kindint32QueueNode), pointer:: head => root%next
         ! end type LogicalDim7Kindint32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim7Kindint32Queue
      function shiftLogicalDim7Kindint32Queue(self, value) result(isSuccess)
         type(LogicalDim7Kindint32Queue), intent(inout):: self
         Logical(kind=int32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim7Kindint32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim7Kindint32Queue
      function is_emptyLogicalDim7Kindint32Queue(self) result(answer)
         type(LogicalDim7Kindint32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim7Kindint32Queue
      subroutine pushLogicalDim7Kindint64Queue(self, value)
         type(LogicalDim7Kindint64Queue), intent(inout):: self
         Logical(kind=int64), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(LogicalDim7Kindint64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim7Kindint64Queue
         ! type(LogicalDim7Kindint64QueueNode), target:: root
         ! type(LogicalDim7Kindint64QueueNode), pointer:: tail => root
         ! type(LogicalDim7Kindint64QueueNode), pointer:: head => root%next
         ! end type LogicalDim7Kindint64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim7Kindint64Queue
      function shiftLogicalDim7Kindint64Queue(self, value) result(isSuccess)
         type(LogicalDim7Kindint64Queue), intent(inout):: self
         Logical(kind=int64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim7Kindint64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim7Kindint64Queue
      function is_emptyLogicalDim7Kindint64Queue(self) result(answer)
         type(LogicalDim7Kindint64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim7Kindint64Queue
      subroutine pushComplexDim0Kindreal32Queue(self, value)
         type(ComplexDim0Kindreal32Queue), intent(inout):: self
         Complex(kind=real32), intent(in):: value
         type(ComplexDim0Kindreal32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim0Kindreal32Queue
         ! type(ComplexDim0Kindreal32QueueNode), target:: root
         ! type(ComplexDim0Kindreal32QueueNode), pointer:: tail => root
         ! type(ComplexDim0Kindreal32QueueNode), pointer:: head => root%next
         ! end type ComplexDim0Kindreal32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim0Kindreal32Queue
      function shiftComplexDim0Kindreal32Queue(self, value) result(isSuccess)
         type(ComplexDim0Kindreal32Queue), intent(inout):: self
         Complex(kind=real32), intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim0Kindreal32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim0Kindreal32Queue
      function is_emptyComplexDim0Kindreal32Queue(self) result(answer)
         type(ComplexDim0Kindreal32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim0Kindreal32Queue
      subroutine pushComplexDim0Kindreal64Queue(self, value)
         type(ComplexDim0Kindreal64Queue), intent(inout):: self
         Complex(kind=real64), intent(in):: value
         type(ComplexDim0Kindreal64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim0Kindreal64Queue
         ! type(ComplexDim0Kindreal64QueueNode), target:: root
         ! type(ComplexDim0Kindreal64QueueNode), pointer:: tail => root
         ! type(ComplexDim0Kindreal64QueueNode), pointer:: head => root%next
         ! end type ComplexDim0Kindreal64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim0Kindreal64Queue
      function shiftComplexDim0Kindreal64Queue(self, value) result(isSuccess)
         type(ComplexDim0Kindreal64Queue), intent(inout):: self
         Complex(kind=real64), intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim0Kindreal64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim0Kindreal64Queue
      function is_emptyComplexDim0Kindreal64Queue(self) result(answer)
         type(ComplexDim0Kindreal64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim0Kindreal64Queue
      subroutine pushComplexDim0Kindreal128Queue(self, value)
         type(ComplexDim0Kindreal128Queue), intent(inout):: self
         Complex(kind=real128), intent(in):: value
         type(ComplexDim0Kindreal128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim0Kindreal128Queue
         ! type(ComplexDim0Kindreal128QueueNode), target:: root
         ! type(ComplexDim0Kindreal128QueueNode), pointer:: tail => root
         ! type(ComplexDim0Kindreal128QueueNode), pointer:: head => root%next
         ! end type ComplexDim0Kindreal128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim0Kindreal128Queue
      function shiftComplexDim0Kindreal128Queue(self, value) result(isSuccess)
         type(ComplexDim0Kindreal128Queue), intent(inout):: self
         Complex(kind=real128), intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim0Kindreal128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim0Kindreal128Queue
      function is_emptyComplexDim0Kindreal128Queue(self) result(answer)
         type(ComplexDim0Kindreal128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim0Kindreal128Queue
      subroutine pushComplexDim1Kindreal32Queue(self, value)
         type(ComplexDim1Kindreal32Queue), intent(inout):: self
         Complex(kind=real32), dimension(:), intent(in):: value
         type(ComplexDim1Kindreal32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim1Kindreal32Queue
         ! type(ComplexDim1Kindreal32QueueNode), target:: root
         ! type(ComplexDim1Kindreal32QueueNode), pointer:: tail => root
         ! type(ComplexDim1Kindreal32QueueNode), pointer:: head => root%next
         ! end type ComplexDim1Kindreal32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim1Kindreal32Queue
      function shiftComplexDim1Kindreal32Queue(self, value) result(isSuccess)
         type(ComplexDim1Kindreal32Queue), intent(inout):: self
         Complex(kind=real32), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim1Kindreal32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim1Kindreal32Queue
      function is_emptyComplexDim1Kindreal32Queue(self) result(answer)
         type(ComplexDim1Kindreal32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim1Kindreal32Queue
      subroutine pushComplexDim1Kindreal64Queue(self, value)
         type(ComplexDim1Kindreal64Queue), intent(inout):: self
         Complex(kind=real64), dimension(:), intent(in):: value
         type(ComplexDim1Kindreal64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim1Kindreal64Queue
         ! type(ComplexDim1Kindreal64QueueNode), target:: root
         ! type(ComplexDim1Kindreal64QueueNode), pointer:: tail => root
         ! type(ComplexDim1Kindreal64QueueNode), pointer:: head => root%next
         ! end type ComplexDim1Kindreal64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim1Kindreal64Queue
      function shiftComplexDim1Kindreal64Queue(self, value) result(isSuccess)
         type(ComplexDim1Kindreal64Queue), intent(inout):: self
         Complex(kind=real64), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim1Kindreal64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim1Kindreal64Queue
      function is_emptyComplexDim1Kindreal64Queue(self) result(answer)
         type(ComplexDim1Kindreal64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim1Kindreal64Queue
      subroutine pushComplexDim1Kindreal128Queue(self, value)
         type(ComplexDim1Kindreal128Queue), intent(inout):: self
         Complex(kind=real128), dimension(:), intent(in):: value
         type(ComplexDim1Kindreal128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim1Kindreal128Queue
         ! type(ComplexDim1Kindreal128QueueNode), target:: root
         ! type(ComplexDim1Kindreal128QueueNode), pointer:: tail => root
         ! type(ComplexDim1Kindreal128QueueNode), pointer:: head => root%next
         ! end type ComplexDim1Kindreal128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim1Kindreal128Queue
      function shiftComplexDim1Kindreal128Queue(self, value) result(isSuccess)
         type(ComplexDim1Kindreal128Queue), intent(inout):: self
         Complex(kind=real128), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim1Kindreal128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim1Kindreal128Queue
      function is_emptyComplexDim1Kindreal128Queue(self) result(answer)
         type(ComplexDim1Kindreal128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim1Kindreal128Queue
      subroutine pushComplexDim2Kindreal32Queue(self, value)
         type(ComplexDim2Kindreal32Queue), intent(inout):: self
         Complex(kind=real32), dimension(:, :), intent(in):: value
         type(ComplexDim2Kindreal32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim2Kindreal32Queue
         ! type(ComplexDim2Kindreal32QueueNode), target:: root
         ! type(ComplexDim2Kindreal32QueueNode), pointer:: tail => root
         ! type(ComplexDim2Kindreal32QueueNode), pointer:: head => root%next
         ! end type ComplexDim2Kindreal32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim2Kindreal32Queue
      function shiftComplexDim2Kindreal32Queue(self, value) result(isSuccess)
         type(ComplexDim2Kindreal32Queue), intent(inout):: self
         Complex(kind=real32), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim2Kindreal32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim2Kindreal32Queue
      function is_emptyComplexDim2Kindreal32Queue(self) result(answer)
         type(ComplexDim2Kindreal32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim2Kindreal32Queue
      subroutine pushComplexDim2Kindreal64Queue(self, value)
         type(ComplexDim2Kindreal64Queue), intent(inout):: self
         Complex(kind=real64), dimension(:, :), intent(in):: value
         type(ComplexDim2Kindreal64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim2Kindreal64Queue
         ! type(ComplexDim2Kindreal64QueueNode), target:: root
         ! type(ComplexDim2Kindreal64QueueNode), pointer:: tail => root
         ! type(ComplexDim2Kindreal64QueueNode), pointer:: head => root%next
         ! end type ComplexDim2Kindreal64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim2Kindreal64Queue
      function shiftComplexDim2Kindreal64Queue(self, value) result(isSuccess)
         type(ComplexDim2Kindreal64Queue), intent(inout):: self
         Complex(kind=real64), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim2Kindreal64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim2Kindreal64Queue
      function is_emptyComplexDim2Kindreal64Queue(self) result(answer)
         type(ComplexDim2Kindreal64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim2Kindreal64Queue
      subroutine pushComplexDim2Kindreal128Queue(self, value)
         type(ComplexDim2Kindreal128Queue), intent(inout):: self
         Complex(kind=real128), dimension(:, :), intent(in):: value
         type(ComplexDim2Kindreal128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim2Kindreal128Queue
         ! type(ComplexDim2Kindreal128QueueNode), target:: root
         ! type(ComplexDim2Kindreal128QueueNode), pointer:: tail => root
         ! type(ComplexDim2Kindreal128QueueNode), pointer:: head => root%next
         ! end type ComplexDim2Kindreal128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim2Kindreal128Queue
      function shiftComplexDim2Kindreal128Queue(self, value) result(isSuccess)
         type(ComplexDim2Kindreal128Queue), intent(inout):: self
         Complex(kind=real128), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim2Kindreal128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim2Kindreal128Queue
      function is_emptyComplexDim2Kindreal128Queue(self) result(answer)
         type(ComplexDim2Kindreal128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim2Kindreal128Queue
      subroutine pushComplexDim3Kindreal32Queue(self, value)
         type(ComplexDim3Kindreal32Queue), intent(inout):: self
         Complex(kind=real32), dimension(:, :, :), intent(in):: value
         type(ComplexDim3Kindreal32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim3Kindreal32Queue
         ! type(ComplexDim3Kindreal32QueueNode), target:: root
         ! type(ComplexDim3Kindreal32QueueNode), pointer:: tail => root
         ! type(ComplexDim3Kindreal32QueueNode), pointer:: head => root%next
         ! end type ComplexDim3Kindreal32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim3Kindreal32Queue
      function shiftComplexDim3Kindreal32Queue(self, value) result(isSuccess)
         type(ComplexDim3Kindreal32Queue), intent(inout):: self
         Complex(kind=real32), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim3Kindreal32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim3Kindreal32Queue
      function is_emptyComplexDim3Kindreal32Queue(self) result(answer)
         type(ComplexDim3Kindreal32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim3Kindreal32Queue
      subroutine pushComplexDim3Kindreal64Queue(self, value)
         type(ComplexDim3Kindreal64Queue), intent(inout):: self
         Complex(kind=real64), dimension(:, :, :), intent(in):: value
         type(ComplexDim3Kindreal64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim3Kindreal64Queue
         ! type(ComplexDim3Kindreal64QueueNode), target:: root
         ! type(ComplexDim3Kindreal64QueueNode), pointer:: tail => root
         ! type(ComplexDim3Kindreal64QueueNode), pointer:: head => root%next
         ! end type ComplexDim3Kindreal64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim3Kindreal64Queue
      function shiftComplexDim3Kindreal64Queue(self, value) result(isSuccess)
         type(ComplexDim3Kindreal64Queue), intent(inout):: self
         Complex(kind=real64), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim3Kindreal64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim3Kindreal64Queue
      function is_emptyComplexDim3Kindreal64Queue(self) result(answer)
         type(ComplexDim3Kindreal64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim3Kindreal64Queue
      subroutine pushComplexDim3Kindreal128Queue(self, value)
         type(ComplexDim3Kindreal128Queue), intent(inout):: self
         Complex(kind=real128), dimension(:, :, :), intent(in):: value
         type(ComplexDim3Kindreal128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim3Kindreal128Queue
         ! type(ComplexDim3Kindreal128QueueNode), target:: root
         ! type(ComplexDim3Kindreal128QueueNode), pointer:: tail => root
         ! type(ComplexDim3Kindreal128QueueNode), pointer:: head => root%next
         ! end type ComplexDim3Kindreal128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim3Kindreal128Queue
      function shiftComplexDim3Kindreal128Queue(self, value) result(isSuccess)
         type(ComplexDim3Kindreal128Queue), intent(inout):: self
         Complex(kind=real128), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim3Kindreal128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim3Kindreal128Queue
      function is_emptyComplexDim3Kindreal128Queue(self) result(answer)
         type(ComplexDim3Kindreal128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim3Kindreal128Queue
      subroutine pushComplexDim4Kindreal32Queue(self, value)
         type(ComplexDim4Kindreal32Queue), intent(inout):: self
         Complex(kind=real32), dimension(:, :, :, :), intent(in):: value
         type(ComplexDim4Kindreal32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim4Kindreal32Queue
         ! type(ComplexDim4Kindreal32QueueNode), target:: root
         ! type(ComplexDim4Kindreal32QueueNode), pointer:: tail => root
         ! type(ComplexDim4Kindreal32QueueNode), pointer:: head => root%next
         ! end type ComplexDim4Kindreal32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim4Kindreal32Queue
      function shiftComplexDim4Kindreal32Queue(self, value) result(isSuccess)
         type(ComplexDim4Kindreal32Queue), intent(inout):: self
         Complex(kind=real32), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim4Kindreal32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim4Kindreal32Queue
      function is_emptyComplexDim4Kindreal32Queue(self) result(answer)
         type(ComplexDim4Kindreal32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim4Kindreal32Queue
      subroutine pushComplexDim4Kindreal64Queue(self, value)
         type(ComplexDim4Kindreal64Queue), intent(inout):: self
         Complex(kind=real64), dimension(:, :, :, :), intent(in):: value
         type(ComplexDim4Kindreal64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim4Kindreal64Queue
         ! type(ComplexDim4Kindreal64QueueNode), target:: root
         ! type(ComplexDim4Kindreal64QueueNode), pointer:: tail => root
         ! type(ComplexDim4Kindreal64QueueNode), pointer:: head => root%next
         ! end type ComplexDim4Kindreal64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim4Kindreal64Queue
      function shiftComplexDim4Kindreal64Queue(self, value) result(isSuccess)
         type(ComplexDim4Kindreal64Queue), intent(inout):: self
         Complex(kind=real64), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim4Kindreal64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim4Kindreal64Queue
      function is_emptyComplexDim4Kindreal64Queue(self) result(answer)
         type(ComplexDim4Kindreal64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim4Kindreal64Queue
      subroutine pushComplexDim4Kindreal128Queue(self, value)
         type(ComplexDim4Kindreal128Queue), intent(inout):: self
         Complex(kind=real128), dimension(:, :, :, :), intent(in):: value
         type(ComplexDim4Kindreal128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim4Kindreal128Queue
         ! type(ComplexDim4Kindreal128QueueNode), target:: root
         ! type(ComplexDim4Kindreal128QueueNode), pointer:: tail => root
         ! type(ComplexDim4Kindreal128QueueNode), pointer:: head => root%next
         ! end type ComplexDim4Kindreal128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim4Kindreal128Queue
      function shiftComplexDim4Kindreal128Queue(self, value) result(isSuccess)
         type(ComplexDim4Kindreal128Queue), intent(inout):: self
         Complex(kind=real128), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim4Kindreal128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim4Kindreal128Queue
      function is_emptyComplexDim4Kindreal128Queue(self) result(answer)
         type(ComplexDim4Kindreal128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim4Kindreal128Queue
      subroutine pushComplexDim5Kindreal32Queue(self, value)
         type(ComplexDim5Kindreal32Queue), intent(inout):: self
         Complex(kind=real32), dimension(:, :, :, :, :), intent(in):: value
         type(ComplexDim5Kindreal32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim5Kindreal32Queue
         ! type(ComplexDim5Kindreal32QueueNode), target:: root
         ! type(ComplexDim5Kindreal32QueueNode), pointer:: tail => root
         ! type(ComplexDim5Kindreal32QueueNode), pointer:: head => root%next
         ! end type ComplexDim5Kindreal32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim5Kindreal32Queue
      function shiftComplexDim5Kindreal32Queue(self, value) result(isSuccess)
         type(ComplexDim5Kindreal32Queue), intent(inout):: self
         Complex(kind=real32), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim5Kindreal32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim5Kindreal32Queue
      function is_emptyComplexDim5Kindreal32Queue(self) result(answer)
         type(ComplexDim5Kindreal32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim5Kindreal32Queue
      subroutine pushComplexDim5Kindreal64Queue(self, value)
         type(ComplexDim5Kindreal64Queue), intent(inout):: self
         Complex(kind=real64), dimension(:, :, :, :, :), intent(in):: value
         type(ComplexDim5Kindreal64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim5Kindreal64Queue
         ! type(ComplexDim5Kindreal64QueueNode), target:: root
         ! type(ComplexDim5Kindreal64QueueNode), pointer:: tail => root
         ! type(ComplexDim5Kindreal64QueueNode), pointer:: head => root%next
         ! end type ComplexDim5Kindreal64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim5Kindreal64Queue
      function shiftComplexDim5Kindreal64Queue(self, value) result(isSuccess)
         type(ComplexDim5Kindreal64Queue), intent(inout):: self
         Complex(kind=real64), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim5Kindreal64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim5Kindreal64Queue
      function is_emptyComplexDim5Kindreal64Queue(self) result(answer)
         type(ComplexDim5Kindreal64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim5Kindreal64Queue
      subroutine pushComplexDim5Kindreal128Queue(self, value)
         type(ComplexDim5Kindreal128Queue), intent(inout):: self
         Complex(kind=real128), dimension(:, :, :, :, :), intent(in):: value
         type(ComplexDim5Kindreal128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim5Kindreal128Queue
         ! type(ComplexDim5Kindreal128QueueNode), target:: root
         ! type(ComplexDim5Kindreal128QueueNode), pointer:: tail => root
         ! type(ComplexDim5Kindreal128QueueNode), pointer:: head => root%next
         ! end type ComplexDim5Kindreal128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim5Kindreal128Queue
      function shiftComplexDim5Kindreal128Queue(self, value) result(isSuccess)
         type(ComplexDim5Kindreal128Queue), intent(inout):: self
         Complex(kind=real128), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim5Kindreal128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim5Kindreal128Queue
      function is_emptyComplexDim5Kindreal128Queue(self) result(answer)
         type(ComplexDim5Kindreal128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim5Kindreal128Queue
      subroutine pushComplexDim6Kindreal32Queue(self, value)
         type(ComplexDim6Kindreal32Queue), intent(inout):: self
         Complex(kind=real32), dimension(:, :, :, :, :, :), intent(in):: value
         type(ComplexDim6Kindreal32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim6Kindreal32Queue
         ! type(ComplexDim6Kindreal32QueueNode), target:: root
         ! type(ComplexDim6Kindreal32QueueNode), pointer:: tail => root
         ! type(ComplexDim6Kindreal32QueueNode), pointer:: head => root%next
         ! end type ComplexDim6Kindreal32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim6Kindreal32Queue
      function shiftComplexDim6Kindreal32Queue(self, value) result(isSuccess)
         type(ComplexDim6Kindreal32Queue), intent(inout):: self
         Complex(kind=real32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim6Kindreal32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim6Kindreal32Queue
      function is_emptyComplexDim6Kindreal32Queue(self) result(answer)
         type(ComplexDim6Kindreal32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim6Kindreal32Queue
      subroutine pushComplexDim6Kindreal64Queue(self, value)
         type(ComplexDim6Kindreal64Queue), intent(inout):: self
         Complex(kind=real64), dimension(:, :, :, :, :, :), intent(in):: value
         type(ComplexDim6Kindreal64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim6Kindreal64Queue
         ! type(ComplexDim6Kindreal64QueueNode), target:: root
         ! type(ComplexDim6Kindreal64QueueNode), pointer:: tail => root
         ! type(ComplexDim6Kindreal64QueueNode), pointer:: head => root%next
         ! end type ComplexDim6Kindreal64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim6Kindreal64Queue
      function shiftComplexDim6Kindreal64Queue(self, value) result(isSuccess)
         type(ComplexDim6Kindreal64Queue), intent(inout):: self
         Complex(kind=real64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim6Kindreal64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim6Kindreal64Queue
      function is_emptyComplexDim6Kindreal64Queue(self) result(answer)
         type(ComplexDim6Kindreal64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim6Kindreal64Queue
      subroutine pushComplexDim6Kindreal128Queue(self, value)
         type(ComplexDim6Kindreal128Queue), intent(inout):: self
         Complex(kind=real128), dimension(:, :, :, :, :, :), intent(in):: value
         type(ComplexDim6Kindreal128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim6Kindreal128Queue
         ! type(ComplexDim6Kindreal128QueueNode), target:: root
         ! type(ComplexDim6Kindreal128QueueNode), pointer:: tail => root
         ! type(ComplexDim6Kindreal128QueueNode), pointer:: head => root%next
         ! end type ComplexDim6Kindreal128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim6Kindreal128Queue
      function shiftComplexDim6Kindreal128Queue(self, value) result(isSuccess)
         type(ComplexDim6Kindreal128Queue), intent(inout):: self
         Complex(kind=real128), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim6Kindreal128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim6Kindreal128Queue
      function is_emptyComplexDim6Kindreal128Queue(self) result(answer)
         type(ComplexDim6Kindreal128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim6Kindreal128Queue
      subroutine pushComplexDim7Kindreal32Queue(self, value)
         type(ComplexDim7Kindreal32Queue), intent(inout):: self
         Complex(kind=real32), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(ComplexDim7Kindreal32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim7Kindreal32Queue
         ! type(ComplexDim7Kindreal32QueueNode), target:: root
         ! type(ComplexDim7Kindreal32QueueNode), pointer:: tail => root
         ! type(ComplexDim7Kindreal32QueueNode), pointer:: head => root%next
         ! end type ComplexDim7Kindreal32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim7Kindreal32Queue
      function shiftComplexDim7Kindreal32Queue(self, value) result(isSuccess)
         type(ComplexDim7Kindreal32Queue), intent(inout):: self
         Complex(kind=real32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim7Kindreal32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim7Kindreal32Queue
      function is_emptyComplexDim7Kindreal32Queue(self) result(answer)
         type(ComplexDim7Kindreal32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim7Kindreal32Queue
      subroutine pushComplexDim7Kindreal64Queue(self, value)
         type(ComplexDim7Kindreal64Queue), intent(inout):: self
         Complex(kind=real64), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(ComplexDim7Kindreal64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim7Kindreal64Queue
         ! type(ComplexDim7Kindreal64QueueNode), target:: root
         ! type(ComplexDim7Kindreal64QueueNode), pointer:: tail => root
         ! type(ComplexDim7Kindreal64QueueNode), pointer:: head => root%next
         ! end type ComplexDim7Kindreal64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim7Kindreal64Queue
      function shiftComplexDim7Kindreal64Queue(self, value) result(isSuccess)
         type(ComplexDim7Kindreal64Queue), intent(inout):: self
         Complex(kind=real64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim7Kindreal64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim7Kindreal64Queue
      function is_emptyComplexDim7Kindreal64Queue(self) result(answer)
         type(ComplexDim7Kindreal64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim7Kindreal64Queue
      subroutine pushComplexDim7Kindreal128Queue(self, value)
         type(ComplexDim7Kindreal128Queue), intent(inout):: self
         Complex(kind=real128), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(ComplexDim7Kindreal128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim7Kindreal128Queue
         ! type(ComplexDim7Kindreal128QueueNode), target:: root
         ! type(ComplexDim7Kindreal128QueueNode), pointer:: tail => root
         ! type(ComplexDim7Kindreal128QueueNode), pointer:: head => root%next
         ! end type ComplexDim7Kindreal128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim7Kindreal128Queue
      function shiftComplexDim7Kindreal128Queue(self, value) result(isSuccess)
         type(ComplexDim7Kindreal128Queue), intent(inout):: self
         Complex(kind=real128), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim7Kindreal128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim7Kindreal128Queue
      function is_emptyComplexDim7Kindreal128Queue(self) result(answer)
         type(ComplexDim7Kindreal128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim7Kindreal128Queue
      subroutine pushCharacterDim0Len0Queue(self, value)
         type(CharacterDim0Len0Queue), intent(inout):: self
         Character(len=0), intent(in):: value
         type(CharacterDim0Len0QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim0Len0Queue
         ! type(CharacterDim0Len0QueueNode), target:: root
         ! type(CharacterDim0Len0QueueNode), pointer:: tail => root
         ! type(CharacterDim0Len0QueueNode), pointer:: head => root%next
         ! end type CharacterDim0Len0Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushCharacterDim0Len0Queue
      function shiftCharacterDim0Len0Queue(self, value) result(isSuccess)
         type(CharacterDim0Len0Queue), intent(inout):: self
         Character(len=0), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len0QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim0Len0Queue
      function is_emptyCharacterDim0Len0Queue(self) result(answer)
         type(CharacterDim0Len0Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyCharacterDim0Len0Queue
      subroutine pushCharacterDim1Len0Queue(self, value)
         type(CharacterDim1Len0Queue), intent(inout):: self
         Character(len=0), dimension(:), intent(in):: value
         type(CharacterDim1Len0QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim1Len0Queue
         ! type(CharacterDim1Len0QueueNode), target:: root
         ! type(CharacterDim1Len0QueueNode), pointer:: tail => root
         ! type(CharacterDim1Len0QueueNode), pointer:: head => root%next
         ! end type CharacterDim1Len0Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushCharacterDim1Len0Queue
      function shiftCharacterDim1Len0Queue(self, value) result(isSuccess)
         type(CharacterDim1Len0Queue), intent(inout):: self
         Character(len=0), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len0QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim1Len0Queue
      function is_emptyCharacterDim1Len0Queue(self) result(answer)
         type(CharacterDim1Len0Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyCharacterDim1Len0Queue
      subroutine pushCharacterDim2Len0Queue(self, value)
         type(CharacterDim2Len0Queue), intent(inout):: self
         Character(len=0), dimension(:, :), intent(in):: value
         type(CharacterDim2Len0QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim2Len0Queue
         ! type(CharacterDim2Len0QueueNode), target:: root
         ! type(CharacterDim2Len0QueueNode), pointer:: tail => root
         ! type(CharacterDim2Len0QueueNode), pointer:: head => root%next
         ! end type CharacterDim2Len0Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushCharacterDim2Len0Queue
      function shiftCharacterDim2Len0Queue(self, value) result(isSuccess)
         type(CharacterDim2Len0Queue), intent(inout):: self
         Character(len=0), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len0QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim2Len0Queue
      function is_emptyCharacterDim2Len0Queue(self) result(answer)
         type(CharacterDim2Len0Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyCharacterDim2Len0Queue
      subroutine pushCharacterDim3Len0Queue(self, value)
         type(CharacterDim3Len0Queue), intent(inout):: self
         Character(len=0), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len0QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim3Len0Queue
         ! type(CharacterDim3Len0QueueNode), target:: root
         ! type(CharacterDim3Len0QueueNode), pointer:: tail => root
         ! type(CharacterDim3Len0QueueNode), pointer:: head => root%next
         ! end type CharacterDim3Len0Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushCharacterDim3Len0Queue
      function shiftCharacterDim3Len0Queue(self, value) result(isSuccess)
         type(CharacterDim3Len0Queue), intent(inout):: self
         Character(len=0), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len0QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim3Len0Queue
      function is_emptyCharacterDim3Len0Queue(self) result(answer)
         type(CharacterDim3Len0Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyCharacterDim3Len0Queue
      subroutine pushCharacterDim4Len0Queue(self, value)
         type(CharacterDim4Len0Queue), intent(inout):: self
         Character(len=0), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len0QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim4Len0Queue
         ! type(CharacterDim4Len0QueueNode), target:: root
         ! type(CharacterDim4Len0QueueNode), pointer:: tail => root
         ! type(CharacterDim4Len0QueueNode), pointer:: head => root%next
         ! end type CharacterDim4Len0Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushCharacterDim4Len0Queue
      function shiftCharacterDim4Len0Queue(self, value) result(isSuccess)
         type(CharacterDim4Len0Queue), intent(inout):: self
         Character(len=0), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len0QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim4Len0Queue
      function is_emptyCharacterDim4Len0Queue(self) result(answer)
         type(CharacterDim4Len0Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyCharacterDim4Len0Queue
      subroutine pushCharacterDim5Len0Queue(self, value)
         type(CharacterDim5Len0Queue), intent(inout):: self
         Character(len=0), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len0QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim5Len0Queue
         ! type(CharacterDim5Len0QueueNode), target:: root
         ! type(CharacterDim5Len0QueueNode), pointer:: tail => root
         ! type(CharacterDim5Len0QueueNode), pointer:: head => root%next
         ! end type CharacterDim5Len0Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushCharacterDim5Len0Queue
      function shiftCharacterDim5Len0Queue(self, value) result(isSuccess)
         type(CharacterDim5Len0Queue), intent(inout):: self
         Character(len=0), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len0QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim5Len0Queue
      function is_emptyCharacterDim5Len0Queue(self) result(answer)
         type(CharacterDim5Len0Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyCharacterDim5Len0Queue
      subroutine pushCharacterDim6Len0Queue(self, value)
         type(CharacterDim6Len0Queue), intent(inout):: self
         Character(len=0), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len0QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim6Len0Queue
         ! type(CharacterDim6Len0QueueNode), target:: root
         ! type(CharacterDim6Len0QueueNode), pointer:: tail => root
         ! type(CharacterDim6Len0QueueNode), pointer:: head => root%next
         ! end type CharacterDim6Len0Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushCharacterDim6Len0Queue
      function shiftCharacterDim6Len0Queue(self, value) result(isSuccess)
         type(CharacterDim6Len0Queue), intent(inout):: self
         Character(len=0), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len0QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim6Len0Queue
      function is_emptyCharacterDim6Len0Queue(self) result(answer)
         type(CharacterDim6Len0Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyCharacterDim6Len0Queue
      subroutine pushCharacterDim7Len0Queue(self, value)
         type(CharacterDim7Len0Queue), intent(inout):: self
         Character(len=0), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len0QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim7Len0Queue
         ! type(CharacterDim7Len0QueueNode), target:: root
         ! type(CharacterDim7Len0QueueNode), pointer:: tail => root
         ! type(CharacterDim7Len0QueueNode), pointer:: head => root%next
         ! end type CharacterDim7Len0Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushCharacterDim7Len0Queue
      function shiftCharacterDim7Len0Queue(self, value) result(isSuccess)
         type(CharacterDim7Len0Queue), intent(inout):: self
         Character(len=0), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len0QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim7Len0Queue
      function is_emptyCharacterDim7Len0Queue(self) result(answer)
         type(CharacterDim7Len0Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyCharacterDim7Len0Queue
end module queue_lib
