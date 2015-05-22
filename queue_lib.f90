module queue_lib
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
   implicit none
   private
   public:: push
   public:: shift
      interface push
         module procedure pushRealDim0KindREAL32Queue
      end interface push
      interface shift
         module procedure shiftRealDim0KindREAL32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim0KindREAL32Queue
      end interface is_empty
      interface push
         module procedure pushRealDim0KindREAL64Queue
      end interface push
      interface shift
         module procedure shiftRealDim0KindREAL64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim0KindREAL64Queue
      end interface is_empty
      interface push
         module procedure pushRealDim0KindREAL128Queue
      end interface push
      interface shift
         module procedure shiftRealDim0KindREAL128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim0KindREAL128Queue
      end interface is_empty
      interface push
         module procedure pushRealDim1KindREAL32Queue
      end interface push
      interface shift
         module procedure shiftRealDim1KindREAL32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim1KindREAL32Queue
      end interface is_empty
      interface push
         module procedure pushRealDim1KindREAL64Queue
      end interface push
      interface shift
         module procedure shiftRealDim1KindREAL64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim1KindREAL64Queue
      end interface is_empty
      interface push
         module procedure pushRealDim1KindREAL128Queue
      end interface push
      interface shift
         module procedure shiftRealDim1KindREAL128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim1KindREAL128Queue
      end interface is_empty
      interface push
         module procedure pushRealDim2KindREAL32Queue
      end interface push
      interface shift
         module procedure shiftRealDim2KindREAL32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim2KindREAL32Queue
      end interface is_empty
      interface push
         module procedure pushRealDim2KindREAL64Queue
      end interface push
      interface shift
         module procedure shiftRealDim2KindREAL64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim2KindREAL64Queue
      end interface is_empty
      interface push
         module procedure pushRealDim2KindREAL128Queue
      end interface push
      interface shift
         module procedure shiftRealDim2KindREAL128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim2KindREAL128Queue
      end interface is_empty
      interface push
         module procedure pushRealDim3KindREAL32Queue
      end interface push
      interface shift
         module procedure shiftRealDim3KindREAL32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim3KindREAL32Queue
      end interface is_empty
      interface push
         module procedure pushRealDim3KindREAL64Queue
      end interface push
      interface shift
         module procedure shiftRealDim3KindREAL64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim3KindREAL64Queue
      end interface is_empty
      interface push
         module procedure pushRealDim3KindREAL128Queue
      end interface push
      interface shift
         module procedure shiftRealDim3KindREAL128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim3KindREAL128Queue
      end interface is_empty
      interface push
         module procedure pushRealDim4KindREAL32Queue
      end interface push
      interface shift
         module procedure shiftRealDim4KindREAL32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim4KindREAL32Queue
      end interface is_empty
      interface push
         module procedure pushRealDim4KindREAL64Queue
      end interface push
      interface shift
         module procedure shiftRealDim4KindREAL64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim4KindREAL64Queue
      end interface is_empty
      interface push
         module procedure pushRealDim4KindREAL128Queue
      end interface push
      interface shift
         module procedure shiftRealDim4KindREAL128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim4KindREAL128Queue
      end interface is_empty
      interface push
         module procedure pushRealDim5KindREAL32Queue
      end interface push
      interface shift
         module procedure shiftRealDim5KindREAL32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim5KindREAL32Queue
      end interface is_empty
      interface push
         module procedure pushRealDim5KindREAL64Queue
      end interface push
      interface shift
         module procedure shiftRealDim5KindREAL64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim5KindREAL64Queue
      end interface is_empty
      interface push
         module procedure pushRealDim5KindREAL128Queue
      end interface push
      interface shift
         module procedure shiftRealDim5KindREAL128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim5KindREAL128Queue
      end interface is_empty
      interface push
         module procedure pushRealDim6KindREAL32Queue
      end interface push
      interface shift
         module procedure shiftRealDim6KindREAL32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim6KindREAL32Queue
      end interface is_empty
      interface push
         module procedure pushRealDim6KindREAL64Queue
      end interface push
      interface shift
         module procedure shiftRealDim6KindREAL64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim6KindREAL64Queue
      end interface is_empty
      interface push
         module procedure pushRealDim6KindREAL128Queue
      end interface push
      interface shift
         module procedure shiftRealDim6KindREAL128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim6KindREAL128Queue
      end interface is_empty
      interface push
         module procedure pushRealDim7KindREAL32Queue
      end interface push
      interface shift
         module procedure shiftRealDim7KindREAL32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim7KindREAL32Queue
      end interface is_empty
      interface push
         module procedure pushRealDim7KindREAL64Queue
      end interface push
      interface shift
         module procedure shiftRealDim7KindREAL64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim7KindREAL64Queue
      end interface is_empty
      interface push
         module procedure pushRealDim7KindREAL128Queue
      end interface push
      interface shift
         module procedure shiftRealDim7KindREAL128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyRealDim7KindREAL128Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim0KindINT8Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim0KindINT8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim0KindINT8Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim0KindINT16Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim0KindINT16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim0KindINT16Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim0KindINT32Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim0KindINT32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim0KindINT32Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim0KindINT64Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim0KindINT64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim0KindINT64Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim1KindINT8Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim1KindINT8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim1KindINT8Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim1KindINT16Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim1KindINT16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim1KindINT16Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim1KindINT32Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim1KindINT32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim1KindINT32Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim1KindINT64Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim1KindINT64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim1KindINT64Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim2KindINT8Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim2KindINT8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim2KindINT8Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim2KindINT16Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim2KindINT16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim2KindINT16Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim2KindINT32Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim2KindINT32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim2KindINT32Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim2KindINT64Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim2KindINT64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim2KindINT64Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim3KindINT8Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim3KindINT8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim3KindINT8Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim3KindINT16Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim3KindINT16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim3KindINT16Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim3KindINT32Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim3KindINT32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim3KindINT32Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim3KindINT64Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim3KindINT64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim3KindINT64Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim4KindINT8Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim4KindINT8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim4KindINT8Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim4KindINT16Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim4KindINT16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim4KindINT16Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim4KindINT32Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim4KindINT32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim4KindINT32Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim4KindINT64Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim4KindINT64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim4KindINT64Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim5KindINT8Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim5KindINT8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim5KindINT8Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim5KindINT16Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim5KindINT16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim5KindINT16Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim5KindINT32Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim5KindINT32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim5KindINT32Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim5KindINT64Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim5KindINT64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim5KindINT64Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim6KindINT8Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim6KindINT8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim6KindINT8Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim6KindINT16Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim6KindINT16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim6KindINT16Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim6KindINT32Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim6KindINT32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim6KindINT32Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim6KindINT64Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim6KindINT64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim6KindINT64Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim7KindINT8Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim7KindINT8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim7KindINT8Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim7KindINT16Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim7KindINT16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim7KindINT16Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim7KindINT32Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim7KindINT32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim7KindINT32Queue
      end interface is_empty
      interface push
         module procedure pushIntegerDim7KindINT64Queue
      end interface push
      interface shift
         module procedure shiftIntegerDim7KindINT64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyIntegerDim7KindINT64Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim0KindINT8Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim0KindINT8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim0KindINT8Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim0KindINT16Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim0KindINT16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim0KindINT16Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim0KindINT32Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim0KindINT32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim0KindINT32Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim0KindINT64Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim0KindINT64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim0KindINT64Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim1KindINT8Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim1KindINT8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim1KindINT8Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim1KindINT16Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim1KindINT16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim1KindINT16Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim1KindINT32Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim1KindINT32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim1KindINT32Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim1KindINT64Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim1KindINT64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim1KindINT64Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim2KindINT8Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim2KindINT8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim2KindINT8Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim2KindINT16Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim2KindINT16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim2KindINT16Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim2KindINT32Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim2KindINT32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim2KindINT32Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim2KindINT64Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim2KindINT64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim2KindINT64Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim3KindINT8Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim3KindINT8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim3KindINT8Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim3KindINT16Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim3KindINT16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim3KindINT16Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim3KindINT32Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim3KindINT32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim3KindINT32Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim3KindINT64Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim3KindINT64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim3KindINT64Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim4KindINT8Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim4KindINT8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim4KindINT8Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim4KindINT16Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim4KindINT16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim4KindINT16Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim4KindINT32Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim4KindINT32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim4KindINT32Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim4KindINT64Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim4KindINT64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim4KindINT64Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim5KindINT8Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim5KindINT8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim5KindINT8Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim5KindINT16Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim5KindINT16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim5KindINT16Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim5KindINT32Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim5KindINT32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim5KindINT32Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim5KindINT64Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim5KindINT64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim5KindINT64Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim6KindINT8Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim6KindINT8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim6KindINT8Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim6KindINT16Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim6KindINT16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim6KindINT16Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim6KindINT32Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim6KindINT32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim6KindINT32Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim6KindINT64Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim6KindINT64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim6KindINT64Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim7KindINT8Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim7KindINT8Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim7KindINT8Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim7KindINT16Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim7KindINT16Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim7KindINT16Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim7KindINT32Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim7KindINT32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim7KindINT32Queue
      end interface is_empty
      interface push
         module procedure pushLogicalDim7KindINT64Queue
      end interface push
      interface shift
         module procedure shiftLogicalDim7KindINT64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyLogicalDim7KindINT64Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim0KindREAL32Queue
      end interface push
      interface shift
         module procedure shiftComplexDim0KindREAL32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim0KindREAL32Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim0KindREAL64Queue
      end interface push
      interface shift
         module procedure shiftComplexDim0KindREAL64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim0KindREAL64Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim0KindREAL128Queue
      end interface push
      interface shift
         module procedure shiftComplexDim0KindREAL128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim0KindREAL128Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim1KindREAL32Queue
      end interface push
      interface shift
         module procedure shiftComplexDim1KindREAL32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim1KindREAL32Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim1KindREAL64Queue
      end interface push
      interface shift
         module procedure shiftComplexDim1KindREAL64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim1KindREAL64Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim1KindREAL128Queue
      end interface push
      interface shift
         module procedure shiftComplexDim1KindREAL128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim1KindREAL128Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim2KindREAL32Queue
      end interface push
      interface shift
         module procedure shiftComplexDim2KindREAL32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim2KindREAL32Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim2KindREAL64Queue
      end interface push
      interface shift
         module procedure shiftComplexDim2KindREAL64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim2KindREAL64Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim2KindREAL128Queue
      end interface push
      interface shift
         module procedure shiftComplexDim2KindREAL128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim2KindREAL128Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim3KindREAL32Queue
      end interface push
      interface shift
         module procedure shiftComplexDim3KindREAL32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim3KindREAL32Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim3KindREAL64Queue
      end interface push
      interface shift
         module procedure shiftComplexDim3KindREAL64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim3KindREAL64Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim3KindREAL128Queue
      end interface push
      interface shift
         module procedure shiftComplexDim3KindREAL128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim3KindREAL128Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim4KindREAL32Queue
      end interface push
      interface shift
         module procedure shiftComplexDim4KindREAL32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim4KindREAL32Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim4KindREAL64Queue
      end interface push
      interface shift
         module procedure shiftComplexDim4KindREAL64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim4KindREAL64Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim4KindREAL128Queue
      end interface push
      interface shift
         module procedure shiftComplexDim4KindREAL128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim4KindREAL128Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim5KindREAL32Queue
      end interface push
      interface shift
         module procedure shiftComplexDim5KindREAL32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim5KindREAL32Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim5KindREAL64Queue
      end interface push
      interface shift
         module procedure shiftComplexDim5KindREAL64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim5KindREAL64Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim5KindREAL128Queue
      end interface push
      interface shift
         module procedure shiftComplexDim5KindREAL128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim5KindREAL128Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim6KindREAL32Queue
      end interface push
      interface shift
         module procedure shiftComplexDim6KindREAL32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim6KindREAL32Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim6KindREAL64Queue
      end interface push
      interface shift
         module procedure shiftComplexDim6KindREAL64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim6KindREAL64Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim6KindREAL128Queue
      end interface push
      interface shift
         module procedure shiftComplexDim6KindREAL128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim6KindREAL128Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim7KindREAL32Queue
      end interface push
      interface shift
         module procedure shiftComplexDim7KindREAL32Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim7KindREAL32Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim7KindREAL64Queue
      end interface push
      interface shift
         module procedure shiftComplexDim7KindREAL64Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim7KindREAL64Queue
      end interface is_empty
      interface push
         module procedure pushComplexDim7KindREAL128Queue
      end interface push
      interface shift
         module procedure shiftComplexDim7KindREAL128Queue
      end interface shift
      interface is_empty
         module procedure is_emptyComplexDim7KindREAL128Queue
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
      type, extends(Queue), public:: RealDim0KindREAL32Queue
         type(RealDim0KindREAL32QueueNode), pointer:: tail => null()
         type(RealDim0KindREAL32QueueNode), pointer:: head => null()
      end type RealDim0KindREAL32Queue
      type, extends(QueueNode):: RealDim0KindREAL32QueueNode
         Real(kind=REAL32):: value
         type(RealDim0KindREAL32QueueNode), pointer:: next => null()
      end type RealDim0KindREAL32QueueNode
      type, extends(Queue), public:: RealDim0KindREAL64Queue
         type(RealDim0KindREAL64QueueNode), pointer:: tail => null()
         type(RealDim0KindREAL64QueueNode), pointer:: head => null()
      end type RealDim0KindREAL64Queue
      type, extends(QueueNode):: RealDim0KindREAL64QueueNode
         Real(kind=REAL64):: value
         type(RealDim0KindREAL64QueueNode), pointer:: next => null()
      end type RealDim0KindREAL64QueueNode
      type, extends(Queue), public:: RealDim0KindREAL128Queue
         type(RealDim0KindREAL128QueueNode), pointer:: tail => null()
         type(RealDim0KindREAL128QueueNode), pointer:: head => null()
      end type RealDim0KindREAL128Queue
      type, extends(QueueNode):: RealDim0KindREAL128QueueNode
         Real(kind=REAL128):: value
         type(RealDim0KindREAL128QueueNode), pointer:: next => null()
      end type RealDim0KindREAL128QueueNode
      type, extends(Queue), public:: RealDim1KindREAL32Queue
         type(RealDim1KindREAL32QueueNode), pointer:: tail => null()
         type(RealDim1KindREAL32QueueNode), pointer:: head => null()
      end type RealDim1KindREAL32Queue
      type, extends(QueueNode):: RealDim1KindREAL32QueueNode
         Real(kind=REAL32), dimension(:), allocatable:: value
         type(RealDim1KindREAL32QueueNode), pointer:: next => null()
      end type RealDim1KindREAL32QueueNode
      type, extends(Queue), public:: RealDim1KindREAL64Queue
         type(RealDim1KindREAL64QueueNode), pointer:: tail => null()
         type(RealDim1KindREAL64QueueNode), pointer:: head => null()
      end type RealDim1KindREAL64Queue
      type, extends(QueueNode):: RealDim1KindREAL64QueueNode
         Real(kind=REAL64), dimension(:), allocatable:: value
         type(RealDim1KindREAL64QueueNode), pointer:: next => null()
      end type RealDim1KindREAL64QueueNode
      type, extends(Queue), public:: RealDim1KindREAL128Queue
         type(RealDim1KindREAL128QueueNode), pointer:: tail => null()
         type(RealDim1KindREAL128QueueNode), pointer:: head => null()
      end type RealDim1KindREAL128Queue
      type, extends(QueueNode):: RealDim1KindREAL128QueueNode
         Real(kind=REAL128), dimension(:), allocatable:: value
         type(RealDim1KindREAL128QueueNode), pointer:: next => null()
      end type RealDim1KindREAL128QueueNode
      type, extends(Queue), public:: RealDim2KindREAL32Queue
         type(RealDim2KindREAL32QueueNode), pointer:: tail => null()
         type(RealDim2KindREAL32QueueNode), pointer:: head => null()
      end type RealDim2KindREAL32Queue
      type, extends(QueueNode):: RealDim2KindREAL32QueueNode
         Real(kind=REAL32), dimension(:, :), allocatable:: value
         type(RealDim2KindREAL32QueueNode), pointer:: next => null()
      end type RealDim2KindREAL32QueueNode
      type, extends(Queue), public:: RealDim2KindREAL64Queue
         type(RealDim2KindREAL64QueueNode), pointer:: tail => null()
         type(RealDim2KindREAL64QueueNode), pointer:: head => null()
      end type RealDim2KindREAL64Queue
      type, extends(QueueNode):: RealDim2KindREAL64QueueNode
         Real(kind=REAL64), dimension(:, :), allocatable:: value
         type(RealDim2KindREAL64QueueNode), pointer:: next => null()
      end type RealDim2KindREAL64QueueNode
      type, extends(Queue), public:: RealDim2KindREAL128Queue
         type(RealDim2KindREAL128QueueNode), pointer:: tail => null()
         type(RealDim2KindREAL128QueueNode), pointer:: head => null()
      end type RealDim2KindREAL128Queue
      type, extends(QueueNode):: RealDim2KindREAL128QueueNode
         Real(kind=REAL128), dimension(:, :), allocatable:: value
         type(RealDim2KindREAL128QueueNode), pointer:: next => null()
      end type RealDim2KindREAL128QueueNode
      type, extends(Queue), public:: RealDim3KindREAL32Queue
         type(RealDim3KindREAL32QueueNode), pointer:: tail => null()
         type(RealDim3KindREAL32QueueNode), pointer:: head => null()
      end type RealDim3KindREAL32Queue
      type, extends(QueueNode):: RealDim3KindREAL32QueueNode
         Real(kind=REAL32), dimension(:, :, :), allocatable:: value
         type(RealDim3KindREAL32QueueNode), pointer:: next => null()
      end type RealDim3KindREAL32QueueNode
      type, extends(Queue), public:: RealDim3KindREAL64Queue
         type(RealDim3KindREAL64QueueNode), pointer:: tail => null()
         type(RealDim3KindREAL64QueueNode), pointer:: head => null()
      end type RealDim3KindREAL64Queue
      type, extends(QueueNode):: RealDim3KindREAL64QueueNode
         Real(kind=REAL64), dimension(:, :, :), allocatable:: value
         type(RealDim3KindREAL64QueueNode), pointer:: next => null()
      end type RealDim3KindREAL64QueueNode
      type, extends(Queue), public:: RealDim3KindREAL128Queue
         type(RealDim3KindREAL128QueueNode), pointer:: tail => null()
         type(RealDim3KindREAL128QueueNode), pointer:: head => null()
      end type RealDim3KindREAL128Queue
      type, extends(QueueNode):: RealDim3KindREAL128QueueNode
         Real(kind=REAL128), dimension(:, :, :), allocatable:: value
         type(RealDim3KindREAL128QueueNode), pointer:: next => null()
      end type RealDim3KindREAL128QueueNode
      type, extends(Queue), public:: RealDim4KindREAL32Queue
         type(RealDim4KindREAL32QueueNode), pointer:: tail => null()
         type(RealDim4KindREAL32QueueNode), pointer:: head => null()
      end type RealDim4KindREAL32Queue
      type, extends(QueueNode):: RealDim4KindREAL32QueueNode
         Real(kind=REAL32), dimension(:, :, :, :), allocatable:: value
         type(RealDim4KindREAL32QueueNode), pointer:: next => null()
      end type RealDim4KindREAL32QueueNode
      type, extends(Queue), public:: RealDim4KindREAL64Queue
         type(RealDim4KindREAL64QueueNode), pointer:: tail => null()
         type(RealDim4KindREAL64QueueNode), pointer:: head => null()
      end type RealDim4KindREAL64Queue
      type, extends(QueueNode):: RealDim4KindREAL64QueueNode
         Real(kind=REAL64), dimension(:, :, :, :), allocatable:: value
         type(RealDim4KindREAL64QueueNode), pointer:: next => null()
      end type RealDim4KindREAL64QueueNode
      type, extends(Queue), public:: RealDim4KindREAL128Queue
         type(RealDim4KindREAL128QueueNode), pointer:: tail => null()
         type(RealDim4KindREAL128QueueNode), pointer:: head => null()
      end type RealDim4KindREAL128Queue
      type, extends(QueueNode):: RealDim4KindREAL128QueueNode
         Real(kind=REAL128), dimension(:, :, :, :), allocatable:: value
         type(RealDim4KindREAL128QueueNode), pointer:: next => null()
      end type RealDim4KindREAL128QueueNode
      type, extends(Queue), public:: RealDim5KindREAL32Queue
         type(RealDim5KindREAL32QueueNode), pointer:: tail => null()
         type(RealDim5KindREAL32QueueNode), pointer:: head => null()
      end type RealDim5KindREAL32Queue
      type, extends(QueueNode):: RealDim5KindREAL32QueueNode
         Real(kind=REAL32), dimension(:, :, :, :, :), allocatable:: value
         type(RealDim5KindREAL32QueueNode), pointer:: next => null()
      end type RealDim5KindREAL32QueueNode
      type, extends(Queue), public:: RealDim5KindREAL64Queue
         type(RealDim5KindREAL64QueueNode), pointer:: tail => null()
         type(RealDim5KindREAL64QueueNode), pointer:: head => null()
      end type RealDim5KindREAL64Queue
      type, extends(QueueNode):: RealDim5KindREAL64QueueNode
         Real(kind=REAL64), dimension(:, :, :, :, :), allocatable:: value
         type(RealDim5KindREAL64QueueNode), pointer:: next => null()
      end type RealDim5KindREAL64QueueNode
      type, extends(Queue), public:: RealDim5KindREAL128Queue
         type(RealDim5KindREAL128QueueNode), pointer:: tail => null()
         type(RealDim5KindREAL128QueueNode), pointer:: head => null()
      end type RealDim5KindREAL128Queue
      type, extends(QueueNode):: RealDim5KindREAL128QueueNode
         Real(kind=REAL128), dimension(:, :, :, :, :), allocatable:: value
         type(RealDim5KindREAL128QueueNode), pointer:: next => null()
      end type RealDim5KindREAL128QueueNode
      type, extends(Queue), public:: RealDim6KindREAL32Queue
         type(RealDim6KindREAL32QueueNode), pointer:: tail => null()
         type(RealDim6KindREAL32QueueNode), pointer:: head => null()
      end type RealDim6KindREAL32Queue
      type, extends(QueueNode):: RealDim6KindREAL32QueueNode
         Real(kind=REAL32), dimension(:, :, :, :, :, :), allocatable:: value
         type(RealDim6KindREAL32QueueNode), pointer:: next => null()
      end type RealDim6KindREAL32QueueNode
      type, extends(Queue), public:: RealDim6KindREAL64Queue
         type(RealDim6KindREAL64QueueNode), pointer:: tail => null()
         type(RealDim6KindREAL64QueueNode), pointer:: head => null()
      end type RealDim6KindREAL64Queue
      type, extends(QueueNode):: RealDim6KindREAL64QueueNode
         Real(kind=REAL64), dimension(:, :, :, :, :, :), allocatable:: value
         type(RealDim6KindREAL64QueueNode), pointer:: next => null()
      end type RealDim6KindREAL64QueueNode
      type, extends(Queue), public:: RealDim6KindREAL128Queue
         type(RealDim6KindREAL128QueueNode), pointer:: tail => null()
         type(RealDim6KindREAL128QueueNode), pointer:: head => null()
      end type RealDim6KindREAL128Queue
      type, extends(QueueNode):: RealDim6KindREAL128QueueNode
         Real(kind=REAL128), dimension(:, :, :, :, :, :), allocatable:: value
         type(RealDim6KindREAL128QueueNode), pointer:: next => null()
      end type RealDim6KindREAL128QueueNode
      type, extends(Queue), public:: RealDim7KindREAL32Queue
         type(RealDim7KindREAL32QueueNode), pointer:: tail => null()
         type(RealDim7KindREAL32QueueNode), pointer:: head => null()
      end type RealDim7KindREAL32Queue
      type, extends(QueueNode):: RealDim7KindREAL32QueueNode
         Real(kind=REAL32), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(RealDim7KindREAL32QueueNode), pointer:: next => null()
      end type RealDim7KindREAL32QueueNode
      type, extends(Queue), public:: RealDim7KindREAL64Queue
         type(RealDim7KindREAL64QueueNode), pointer:: tail => null()
         type(RealDim7KindREAL64QueueNode), pointer:: head => null()
      end type RealDim7KindREAL64Queue
      type, extends(QueueNode):: RealDim7KindREAL64QueueNode
         Real(kind=REAL64), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(RealDim7KindREAL64QueueNode), pointer:: next => null()
      end type RealDim7KindREAL64QueueNode
      type, extends(Queue), public:: RealDim7KindREAL128Queue
         type(RealDim7KindREAL128QueueNode), pointer:: tail => null()
         type(RealDim7KindREAL128QueueNode), pointer:: head => null()
      end type RealDim7KindREAL128Queue
      type, extends(QueueNode):: RealDim7KindREAL128QueueNode
         Real(kind=REAL128), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(RealDim7KindREAL128QueueNode), pointer:: next => null()
      end type RealDim7KindREAL128QueueNode
      type, extends(Queue), public:: IntegerDim0KindINT8Queue
         type(IntegerDim0KindINT8QueueNode), pointer:: tail => null()
         type(IntegerDim0KindINT8QueueNode), pointer:: head => null()
      end type IntegerDim0KindINT8Queue
      type, extends(QueueNode):: IntegerDim0KindINT8QueueNode
         Integer(kind=INT8):: value
         type(IntegerDim0KindINT8QueueNode), pointer:: next => null()
      end type IntegerDim0KindINT8QueueNode
      type, extends(Queue), public:: IntegerDim0KindINT16Queue
         type(IntegerDim0KindINT16QueueNode), pointer:: tail => null()
         type(IntegerDim0KindINT16QueueNode), pointer:: head => null()
      end type IntegerDim0KindINT16Queue
      type, extends(QueueNode):: IntegerDim0KindINT16QueueNode
         Integer(kind=INT16):: value
         type(IntegerDim0KindINT16QueueNode), pointer:: next => null()
      end type IntegerDim0KindINT16QueueNode
      type, extends(Queue), public:: IntegerDim0KindINT32Queue
         type(IntegerDim0KindINT32QueueNode), pointer:: tail => null()
         type(IntegerDim0KindINT32QueueNode), pointer:: head => null()
      end type IntegerDim0KindINT32Queue
      type, extends(QueueNode):: IntegerDim0KindINT32QueueNode
         Integer(kind=INT32):: value
         type(IntegerDim0KindINT32QueueNode), pointer:: next => null()
      end type IntegerDim0KindINT32QueueNode
      type, extends(Queue), public:: IntegerDim0KindINT64Queue
         type(IntegerDim0KindINT64QueueNode), pointer:: tail => null()
         type(IntegerDim0KindINT64QueueNode), pointer:: head => null()
      end type IntegerDim0KindINT64Queue
      type, extends(QueueNode):: IntegerDim0KindINT64QueueNode
         Integer(kind=INT64):: value
         type(IntegerDim0KindINT64QueueNode), pointer:: next => null()
      end type IntegerDim0KindINT64QueueNode
      type, extends(Queue), public:: IntegerDim1KindINT8Queue
         type(IntegerDim1KindINT8QueueNode), pointer:: tail => null()
         type(IntegerDim1KindINT8QueueNode), pointer:: head => null()
      end type IntegerDim1KindINT8Queue
      type, extends(QueueNode):: IntegerDim1KindINT8QueueNode
         Integer(kind=INT8), dimension(:), allocatable:: value
         type(IntegerDim1KindINT8QueueNode), pointer:: next => null()
      end type IntegerDim1KindINT8QueueNode
      type, extends(Queue), public:: IntegerDim1KindINT16Queue
         type(IntegerDim1KindINT16QueueNode), pointer:: tail => null()
         type(IntegerDim1KindINT16QueueNode), pointer:: head => null()
      end type IntegerDim1KindINT16Queue
      type, extends(QueueNode):: IntegerDim1KindINT16QueueNode
         Integer(kind=INT16), dimension(:), allocatable:: value
         type(IntegerDim1KindINT16QueueNode), pointer:: next => null()
      end type IntegerDim1KindINT16QueueNode
      type, extends(Queue), public:: IntegerDim1KindINT32Queue
         type(IntegerDim1KindINT32QueueNode), pointer:: tail => null()
         type(IntegerDim1KindINT32QueueNode), pointer:: head => null()
      end type IntegerDim1KindINT32Queue
      type, extends(QueueNode):: IntegerDim1KindINT32QueueNode
         Integer(kind=INT32), dimension(:), allocatable:: value
         type(IntegerDim1KindINT32QueueNode), pointer:: next => null()
      end type IntegerDim1KindINT32QueueNode
      type, extends(Queue), public:: IntegerDim1KindINT64Queue
         type(IntegerDim1KindINT64QueueNode), pointer:: tail => null()
         type(IntegerDim1KindINT64QueueNode), pointer:: head => null()
      end type IntegerDim1KindINT64Queue
      type, extends(QueueNode):: IntegerDim1KindINT64QueueNode
         Integer(kind=INT64), dimension(:), allocatable:: value
         type(IntegerDim1KindINT64QueueNode), pointer:: next => null()
      end type IntegerDim1KindINT64QueueNode
      type, extends(Queue), public:: IntegerDim2KindINT8Queue
         type(IntegerDim2KindINT8QueueNode), pointer:: tail => null()
         type(IntegerDim2KindINT8QueueNode), pointer:: head => null()
      end type IntegerDim2KindINT8Queue
      type, extends(QueueNode):: IntegerDim2KindINT8QueueNode
         Integer(kind=INT8), dimension(:, :), allocatable:: value
         type(IntegerDim2KindINT8QueueNode), pointer:: next => null()
      end type IntegerDim2KindINT8QueueNode
      type, extends(Queue), public:: IntegerDim2KindINT16Queue
         type(IntegerDim2KindINT16QueueNode), pointer:: tail => null()
         type(IntegerDim2KindINT16QueueNode), pointer:: head => null()
      end type IntegerDim2KindINT16Queue
      type, extends(QueueNode):: IntegerDim2KindINT16QueueNode
         Integer(kind=INT16), dimension(:, :), allocatable:: value
         type(IntegerDim2KindINT16QueueNode), pointer:: next => null()
      end type IntegerDim2KindINT16QueueNode
      type, extends(Queue), public:: IntegerDim2KindINT32Queue
         type(IntegerDim2KindINT32QueueNode), pointer:: tail => null()
         type(IntegerDim2KindINT32QueueNode), pointer:: head => null()
      end type IntegerDim2KindINT32Queue
      type, extends(QueueNode):: IntegerDim2KindINT32QueueNode
         Integer(kind=INT32), dimension(:, :), allocatable:: value
         type(IntegerDim2KindINT32QueueNode), pointer:: next => null()
      end type IntegerDim2KindINT32QueueNode
      type, extends(Queue), public:: IntegerDim2KindINT64Queue
         type(IntegerDim2KindINT64QueueNode), pointer:: tail => null()
         type(IntegerDim2KindINT64QueueNode), pointer:: head => null()
      end type IntegerDim2KindINT64Queue
      type, extends(QueueNode):: IntegerDim2KindINT64QueueNode
         Integer(kind=INT64), dimension(:, :), allocatable:: value
         type(IntegerDim2KindINT64QueueNode), pointer:: next => null()
      end type IntegerDim2KindINT64QueueNode
      type, extends(Queue), public:: IntegerDim3KindINT8Queue
         type(IntegerDim3KindINT8QueueNode), pointer:: tail => null()
         type(IntegerDim3KindINT8QueueNode), pointer:: head => null()
      end type IntegerDim3KindINT8Queue
      type, extends(QueueNode):: IntegerDim3KindINT8QueueNode
         Integer(kind=INT8), dimension(:, :, :), allocatable:: value
         type(IntegerDim3KindINT8QueueNode), pointer:: next => null()
      end type IntegerDim3KindINT8QueueNode
      type, extends(Queue), public:: IntegerDim3KindINT16Queue
         type(IntegerDim3KindINT16QueueNode), pointer:: tail => null()
         type(IntegerDim3KindINT16QueueNode), pointer:: head => null()
      end type IntegerDim3KindINT16Queue
      type, extends(QueueNode):: IntegerDim3KindINT16QueueNode
         Integer(kind=INT16), dimension(:, :, :), allocatable:: value
         type(IntegerDim3KindINT16QueueNode), pointer:: next => null()
      end type IntegerDim3KindINT16QueueNode
      type, extends(Queue), public:: IntegerDim3KindINT32Queue
         type(IntegerDim3KindINT32QueueNode), pointer:: tail => null()
         type(IntegerDim3KindINT32QueueNode), pointer:: head => null()
      end type IntegerDim3KindINT32Queue
      type, extends(QueueNode):: IntegerDim3KindINT32QueueNode
         Integer(kind=INT32), dimension(:, :, :), allocatable:: value
         type(IntegerDim3KindINT32QueueNode), pointer:: next => null()
      end type IntegerDim3KindINT32QueueNode
      type, extends(Queue), public:: IntegerDim3KindINT64Queue
         type(IntegerDim3KindINT64QueueNode), pointer:: tail => null()
         type(IntegerDim3KindINT64QueueNode), pointer:: head => null()
      end type IntegerDim3KindINT64Queue
      type, extends(QueueNode):: IntegerDim3KindINT64QueueNode
         Integer(kind=INT64), dimension(:, :, :), allocatable:: value
         type(IntegerDim3KindINT64QueueNode), pointer:: next => null()
      end type IntegerDim3KindINT64QueueNode
      type, extends(Queue), public:: IntegerDim4KindINT8Queue
         type(IntegerDim4KindINT8QueueNode), pointer:: tail => null()
         type(IntegerDim4KindINT8QueueNode), pointer:: head => null()
      end type IntegerDim4KindINT8Queue
      type, extends(QueueNode):: IntegerDim4KindINT8QueueNode
         Integer(kind=INT8), dimension(:, :, :, :), allocatable:: value
         type(IntegerDim4KindINT8QueueNode), pointer:: next => null()
      end type IntegerDim4KindINT8QueueNode
      type, extends(Queue), public:: IntegerDim4KindINT16Queue
         type(IntegerDim4KindINT16QueueNode), pointer:: tail => null()
         type(IntegerDim4KindINT16QueueNode), pointer:: head => null()
      end type IntegerDim4KindINT16Queue
      type, extends(QueueNode):: IntegerDim4KindINT16QueueNode
         Integer(kind=INT16), dimension(:, :, :, :), allocatable:: value
         type(IntegerDim4KindINT16QueueNode), pointer:: next => null()
      end type IntegerDim4KindINT16QueueNode
      type, extends(Queue), public:: IntegerDim4KindINT32Queue
         type(IntegerDim4KindINT32QueueNode), pointer:: tail => null()
         type(IntegerDim4KindINT32QueueNode), pointer:: head => null()
      end type IntegerDim4KindINT32Queue
      type, extends(QueueNode):: IntegerDim4KindINT32QueueNode
         Integer(kind=INT32), dimension(:, :, :, :), allocatable:: value
         type(IntegerDim4KindINT32QueueNode), pointer:: next => null()
      end type IntegerDim4KindINT32QueueNode
      type, extends(Queue), public:: IntegerDim4KindINT64Queue
         type(IntegerDim4KindINT64QueueNode), pointer:: tail => null()
         type(IntegerDim4KindINT64QueueNode), pointer:: head => null()
      end type IntegerDim4KindINT64Queue
      type, extends(QueueNode):: IntegerDim4KindINT64QueueNode
         Integer(kind=INT64), dimension(:, :, :, :), allocatable:: value
         type(IntegerDim4KindINT64QueueNode), pointer:: next => null()
      end type IntegerDim4KindINT64QueueNode
      type, extends(Queue), public:: IntegerDim5KindINT8Queue
         type(IntegerDim5KindINT8QueueNode), pointer:: tail => null()
         type(IntegerDim5KindINT8QueueNode), pointer:: head => null()
      end type IntegerDim5KindINT8Queue
      type, extends(QueueNode):: IntegerDim5KindINT8QueueNode
         Integer(kind=INT8), dimension(:, :, :, :, :), allocatable:: value
         type(IntegerDim5KindINT8QueueNode), pointer:: next => null()
      end type IntegerDim5KindINT8QueueNode
      type, extends(Queue), public:: IntegerDim5KindINT16Queue
         type(IntegerDim5KindINT16QueueNode), pointer:: tail => null()
         type(IntegerDim5KindINT16QueueNode), pointer:: head => null()
      end type IntegerDim5KindINT16Queue
      type, extends(QueueNode):: IntegerDim5KindINT16QueueNode
         Integer(kind=INT16), dimension(:, :, :, :, :), allocatable:: value
         type(IntegerDim5KindINT16QueueNode), pointer:: next => null()
      end type IntegerDim5KindINT16QueueNode
      type, extends(Queue), public:: IntegerDim5KindINT32Queue
         type(IntegerDim5KindINT32QueueNode), pointer:: tail => null()
         type(IntegerDim5KindINT32QueueNode), pointer:: head => null()
      end type IntegerDim5KindINT32Queue
      type, extends(QueueNode):: IntegerDim5KindINT32QueueNode
         Integer(kind=INT32), dimension(:, :, :, :, :), allocatable:: value
         type(IntegerDim5KindINT32QueueNode), pointer:: next => null()
      end type IntegerDim5KindINT32QueueNode
      type, extends(Queue), public:: IntegerDim5KindINT64Queue
         type(IntegerDim5KindINT64QueueNode), pointer:: tail => null()
         type(IntegerDim5KindINT64QueueNode), pointer:: head => null()
      end type IntegerDim5KindINT64Queue
      type, extends(QueueNode):: IntegerDim5KindINT64QueueNode
         Integer(kind=INT64), dimension(:, :, :, :, :), allocatable:: value
         type(IntegerDim5KindINT64QueueNode), pointer:: next => null()
      end type IntegerDim5KindINT64QueueNode
      type, extends(Queue), public:: IntegerDim6KindINT8Queue
         type(IntegerDim6KindINT8QueueNode), pointer:: tail => null()
         type(IntegerDim6KindINT8QueueNode), pointer:: head => null()
      end type IntegerDim6KindINT8Queue
      type, extends(QueueNode):: IntegerDim6KindINT8QueueNode
         Integer(kind=INT8), dimension(:, :, :, :, :, :), allocatable:: value
         type(IntegerDim6KindINT8QueueNode), pointer:: next => null()
      end type IntegerDim6KindINT8QueueNode
      type, extends(Queue), public:: IntegerDim6KindINT16Queue
         type(IntegerDim6KindINT16QueueNode), pointer:: tail => null()
         type(IntegerDim6KindINT16QueueNode), pointer:: head => null()
      end type IntegerDim6KindINT16Queue
      type, extends(QueueNode):: IntegerDim6KindINT16QueueNode
         Integer(kind=INT16), dimension(:, :, :, :, :, :), allocatable:: value
         type(IntegerDim6KindINT16QueueNode), pointer:: next => null()
      end type IntegerDim6KindINT16QueueNode
      type, extends(Queue), public:: IntegerDim6KindINT32Queue
         type(IntegerDim6KindINT32QueueNode), pointer:: tail => null()
         type(IntegerDim6KindINT32QueueNode), pointer:: head => null()
      end type IntegerDim6KindINT32Queue
      type, extends(QueueNode):: IntegerDim6KindINT32QueueNode
         Integer(kind=INT32), dimension(:, :, :, :, :, :), allocatable:: value
         type(IntegerDim6KindINT32QueueNode), pointer:: next => null()
      end type IntegerDim6KindINT32QueueNode
      type, extends(Queue), public:: IntegerDim6KindINT64Queue
         type(IntegerDim6KindINT64QueueNode), pointer:: tail => null()
         type(IntegerDim6KindINT64QueueNode), pointer:: head => null()
      end type IntegerDim6KindINT64Queue
      type, extends(QueueNode):: IntegerDim6KindINT64QueueNode
         Integer(kind=INT64), dimension(:, :, :, :, :, :), allocatable:: value
         type(IntegerDim6KindINT64QueueNode), pointer:: next => null()
      end type IntegerDim6KindINT64QueueNode
      type, extends(Queue), public:: IntegerDim7KindINT8Queue
         type(IntegerDim7KindINT8QueueNode), pointer:: tail => null()
         type(IntegerDim7KindINT8QueueNode), pointer:: head => null()
      end type IntegerDim7KindINT8Queue
      type, extends(QueueNode):: IntegerDim7KindINT8QueueNode
         Integer(kind=INT8), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(IntegerDim7KindINT8QueueNode), pointer:: next => null()
      end type IntegerDim7KindINT8QueueNode
      type, extends(Queue), public:: IntegerDim7KindINT16Queue
         type(IntegerDim7KindINT16QueueNode), pointer:: tail => null()
         type(IntegerDim7KindINT16QueueNode), pointer:: head => null()
      end type IntegerDim7KindINT16Queue
      type, extends(QueueNode):: IntegerDim7KindINT16QueueNode
         Integer(kind=INT16), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(IntegerDim7KindINT16QueueNode), pointer:: next => null()
      end type IntegerDim7KindINT16QueueNode
      type, extends(Queue), public:: IntegerDim7KindINT32Queue
         type(IntegerDim7KindINT32QueueNode), pointer:: tail => null()
         type(IntegerDim7KindINT32QueueNode), pointer:: head => null()
      end type IntegerDim7KindINT32Queue
      type, extends(QueueNode):: IntegerDim7KindINT32QueueNode
         Integer(kind=INT32), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(IntegerDim7KindINT32QueueNode), pointer:: next => null()
      end type IntegerDim7KindINT32QueueNode
      type, extends(Queue), public:: IntegerDim7KindINT64Queue
         type(IntegerDim7KindINT64QueueNode), pointer:: tail => null()
         type(IntegerDim7KindINT64QueueNode), pointer:: head => null()
      end type IntegerDim7KindINT64Queue
      type, extends(QueueNode):: IntegerDim7KindINT64QueueNode
         Integer(kind=INT64), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(IntegerDim7KindINT64QueueNode), pointer:: next => null()
      end type IntegerDim7KindINT64QueueNode
      type, extends(Queue), public:: LogicalDim0KindINT8Queue
         type(LogicalDim0KindINT8QueueNode), pointer:: tail => null()
         type(LogicalDim0KindINT8QueueNode), pointer:: head => null()
      end type LogicalDim0KindINT8Queue
      type, extends(QueueNode):: LogicalDim0KindINT8QueueNode
         Logical(kind=INT8):: value
         type(LogicalDim0KindINT8QueueNode), pointer:: next => null()
      end type LogicalDim0KindINT8QueueNode
      type, extends(Queue), public:: LogicalDim0KindINT16Queue
         type(LogicalDim0KindINT16QueueNode), pointer:: tail => null()
         type(LogicalDim0KindINT16QueueNode), pointer:: head => null()
      end type LogicalDim0KindINT16Queue
      type, extends(QueueNode):: LogicalDim0KindINT16QueueNode
         Logical(kind=INT16):: value
         type(LogicalDim0KindINT16QueueNode), pointer:: next => null()
      end type LogicalDim0KindINT16QueueNode
      type, extends(Queue), public:: LogicalDim0KindINT32Queue
         type(LogicalDim0KindINT32QueueNode), pointer:: tail => null()
         type(LogicalDim0KindINT32QueueNode), pointer:: head => null()
      end type LogicalDim0KindINT32Queue
      type, extends(QueueNode):: LogicalDim0KindINT32QueueNode
         Logical(kind=INT32):: value
         type(LogicalDim0KindINT32QueueNode), pointer:: next => null()
      end type LogicalDim0KindINT32QueueNode
      type, extends(Queue), public:: LogicalDim0KindINT64Queue
         type(LogicalDim0KindINT64QueueNode), pointer:: tail => null()
         type(LogicalDim0KindINT64QueueNode), pointer:: head => null()
      end type LogicalDim0KindINT64Queue
      type, extends(QueueNode):: LogicalDim0KindINT64QueueNode
         Logical(kind=INT64):: value
         type(LogicalDim0KindINT64QueueNode), pointer:: next => null()
      end type LogicalDim0KindINT64QueueNode
      type, extends(Queue), public:: LogicalDim1KindINT8Queue
         type(LogicalDim1KindINT8QueueNode), pointer:: tail => null()
         type(LogicalDim1KindINT8QueueNode), pointer:: head => null()
      end type LogicalDim1KindINT8Queue
      type, extends(QueueNode):: LogicalDim1KindINT8QueueNode
         Logical(kind=INT8), dimension(:), allocatable:: value
         type(LogicalDim1KindINT8QueueNode), pointer:: next => null()
      end type LogicalDim1KindINT8QueueNode
      type, extends(Queue), public:: LogicalDim1KindINT16Queue
         type(LogicalDim1KindINT16QueueNode), pointer:: tail => null()
         type(LogicalDim1KindINT16QueueNode), pointer:: head => null()
      end type LogicalDim1KindINT16Queue
      type, extends(QueueNode):: LogicalDim1KindINT16QueueNode
         Logical(kind=INT16), dimension(:), allocatable:: value
         type(LogicalDim1KindINT16QueueNode), pointer:: next => null()
      end type LogicalDim1KindINT16QueueNode
      type, extends(Queue), public:: LogicalDim1KindINT32Queue
         type(LogicalDim1KindINT32QueueNode), pointer:: tail => null()
         type(LogicalDim1KindINT32QueueNode), pointer:: head => null()
      end type LogicalDim1KindINT32Queue
      type, extends(QueueNode):: LogicalDim1KindINT32QueueNode
         Logical(kind=INT32), dimension(:), allocatable:: value
         type(LogicalDim1KindINT32QueueNode), pointer:: next => null()
      end type LogicalDim1KindINT32QueueNode
      type, extends(Queue), public:: LogicalDim1KindINT64Queue
         type(LogicalDim1KindINT64QueueNode), pointer:: tail => null()
         type(LogicalDim1KindINT64QueueNode), pointer:: head => null()
      end type LogicalDim1KindINT64Queue
      type, extends(QueueNode):: LogicalDim1KindINT64QueueNode
         Logical(kind=INT64), dimension(:), allocatable:: value
         type(LogicalDim1KindINT64QueueNode), pointer:: next => null()
      end type LogicalDim1KindINT64QueueNode
      type, extends(Queue), public:: LogicalDim2KindINT8Queue
         type(LogicalDim2KindINT8QueueNode), pointer:: tail => null()
         type(LogicalDim2KindINT8QueueNode), pointer:: head => null()
      end type LogicalDim2KindINT8Queue
      type, extends(QueueNode):: LogicalDim2KindINT8QueueNode
         Logical(kind=INT8), dimension(:, :), allocatable:: value
         type(LogicalDim2KindINT8QueueNode), pointer:: next => null()
      end type LogicalDim2KindINT8QueueNode
      type, extends(Queue), public:: LogicalDim2KindINT16Queue
         type(LogicalDim2KindINT16QueueNode), pointer:: tail => null()
         type(LogicalDim2KindINT16QueueNode), pointer:: head => null()
      end type LogicalDim2KindINT16Queue
      type, extends(QueueNode):: LogicalDim2KindINT16QueueNode
         Logical(kind=INT16), dimension(:, :), allocatable:: value
         type(LogicalDim2KindINT16QueueNode), pointer:: next => null()
      end type LogicalDim2KindINT16QueueNode
      type, extends(Queue), public:: LogicalDim2KindINT32Queue
         type(LogicalDim2KindINT32QueueNode), pointer:: tail => null()
         type(LogicalDim2KindINT32QueueNode), pointer:: head => null()
      end type LogicalDim2KindINT32Queue
      type, extends(QueueNode):: LogicalDim2KindINT32QueueNode
         Logical(kind=INT32), dimension(:, :), allocatable:: value
         type(LogicalDim2KindINT32QueueNode), pointer:: next => null()
      end type LogicalDim2KindINT32QueueNode
      type, extends(Queue), public:: LogicalDim2KindINT64Queue
         type(LogicalDim2KindINT64QueueNode), pointer:: tail => null()
         type(LogicalDim2KindINT64QueueNode), pointer:: head => null()
      end type LogicalDim2KindINT64Queue
      type, extends(QueueNode):: LogicalDim2KindINT64QueueNode
         Logical(kind=INT64), dimension(:, :), allocatable:: value
         type(LogicalDim2KindINT64QueueNode), pointer:: next => null()
      end type LogicalDim2KindINT64QueueNode
      type, extends(Queue), public:: LogicalDim3KindINT8Queue
         type(LogicalDim3KindINT8QueueNode), pointer:: tail => null()
         type(LogicalDim3KindINT8QueueNode), pointer:: head => null()
      end type LogicalDim3KindINT8Queue
      type, extends(QueueNode):: LogicalDim3KindINT8QueueNode
         Logical(kind=INT8), dimension(:, :, :), allocatable:: value
         type(LogicalDim3KindINT8QueueNode), pointer:: next => null()
      end type LogicalDim3KindINT8QueueNode
      type, extends(Queue), public:: LogicalDim3KindINT16Queue
         type(LogicalDim3KindINT16QueueNode), pointer:: tail => null()
         type(LogicalDim3KindINT16QueueNode), pointer:: head => null()
      end type LogicalDim3KindINT16Queue
      type, extends(QueueNode):: LogicalDim3KindINT16QueueNode
         Logical(kind=INT16), dimension(:, :, :), allocatable:: value
         type(LogicalDim3KindINT16QueueNode), pointer:: next => null()
      end type LogicalDim3KindINT16QueueNode
      type, extends(Queue), public:: LogicalDim3KindINT32Queue
         type(LogicalDim3KindINT32QueueNode), pointer:: tail => null()
         type(LogicalDim3KindINT32QueueNode), pointer:: head => null()
      end type LogicalDim3KindINT32Queue
      type, extends(QueueNode):: LogicalDim3KindINT32QueueNode
         Logical(kind=INT32), dimension(:, :, :), allocatable:: value
         type(LogicalDim3KindINT32QueueNode), pointer:: next => null()
      end type LogicalDim3KindINT32QueueNode
      type, extends(Queue), public:: LogicalDim3KindINT64Queue
         type(LogicalDim3KindINT64QueueNode), pointer:: tail => null()
         type(LogicalDim3KindINT64QueueNode), pointer:: head => null()
      end type LogicalDim3KindINT64Queue
      type, extends(QueueNode):: LogicalDim3KindINT64QueueNode
         Logical(kind=INT64), dimension(:, :, :), allocatable:: value
         type(LogicalDim3KindINT64QueueNode), pointer:: next => null()
      end type LogicalDim3KindINT64QueueNode
      type, extends(Queue), public:: LogicalDim4KindINT8Queue
         type(LogicalDim4KindINT8QueueNode), pointer:: tail => null()
         type(LogicalDim4KindINT8QueueNode), pointer:: head => null()
      end type LogicalDim4KindINT8Queue
      type, extends(QueueNode):: LogicalDim4KindINT8QueueNode
         Logical(kind=INT8), dimension(:, :, :, :), allocatable:: value
         type(LogicalDim4KindINT8QueueNode), pointer:: next => null()
      end type LogicalDim4KindINT8QueueNode
      type, extends(Queue), public:: LogicalDim4KindINT16Queue
         type(LogicalDim4KindINT16QueueNode), pointer:: tail => null()
         type(LogicalDim4KindINT16QueueNode), pointer:: head => null()
      end type LogicalDim4KindINT16Queue
      type, extends(QueueNode):: LogicalDim4KindINT16QueueNode
         Logical(kind=INT16), dimension(:, :, :, :), allocatable:: value
         type(LogicalDim4KindINT16QueueNode), pointer:: next => null()
      end type LogicalDim4KindINT16QueueNode
      type, extends(Queue), public:: LogicalDim4KindINT32Queue
         type(LogicalDim4KindINT32QueueNode), pointer:: tail => null()
         type(LogicalDim4KindINT32QueueNode), pointer:: head => null()
      end type LogicalDim4KindINT32Queue
      type, extends(QueueNode):: LogicalDim4KindINT32QueueNode
         Logical(kind=INT32), dimension(:, :, :, :), allocatable:: value
         type(LogicalDim4KindINT32QueueNode), pointer:: next => null()
      end type LogicalDim4KindINT32QueueNode
      type, extends(Queue), public:: LogicalDim4KindINT64Queue
         type(LogicalDim4KindINT64QueueNode), pointer:: tail => null()
         type(LogicalDim4KindINT64QueueNode), pointer:: head => null()
      end type LogicalDim4KindINT64Queue
      type, extends(QueueNode):: LogicalDim4KindINT64QueueNode
         Logical(kind=INT64), dimension(:, :, :, :), allocatable:: value
         type(LogicalDim4KindINT64QueueNode), pointer:: next => null()
      end type LogicalDim4KindINT64QueueNode
      type, extends(Queue), public:: LogicalDim5KindINT8Queue
         type(LogicalDim5KindINT8QueueNode), pointer:: tail => null()
         type(LogicalDim5KindINT8QueueNode), pointer:: head => null()
      end type LogicalDim5KindINT8Queue
      type, extends(QueueNode):: LogicalDim5KindINT8QueueNode
         Logical(kind=INT8), dimension(:, :, :, :, :), allocatable:: value
         type(LogicalDim5KindINT8QueueNode), pointer:: next => null()
      end type LogicalDim5KindINT8QueueNode
      type, extends(Queue), public:: LogicalDim5KindINT16Queue
         type(LogicalDim5KindINT16QueueNode), pointer:: tail => null()
         type(LogicalDim5KindINT16QueueNode), pointer:: head => null()
      end type LogicalDim5KindINT16Queue
      type, extends(QueueNode):: LogicalDim5KindINT16QueueNode
         Logical(kind=INT16), dimension(:, :, :, :, :), allocatable:: value
         type(LogicalDim5KindINT16QueueNode), pointer:: next => null()
      end type LogicalDim5KindINT16QueueNode
      type, extends(Queue), public:: LogicalDim5KindINT32Queue
         type(LogicalDim5KindINT32QueueNode), pointer:: tail => null()
         type(LogicalDim5KindINT32QueueNode), pointer:: head => null()
      end type LogicalDim5KindINT32Queue
      type, extends(QueueNode):: LogicalDim5KindINT32QueueNode
         Logical(kind=INT32), dimension(:, :, :, :, :), allocatable:: value
         type(LogicalDim5KindINT32QueueNode), pointer:: next => null()
      end type LogicalDim5KindINT32QueueNode
      type, extends(Queue), public:: LogicalDim5KindINT64Queue
         type(LogicalDim5KindINT64QueueNode), pointer:: tail => null()
         type(LogicalDim5KindINT64QueueNode), pointer:: head => null()
      end type LogicalDim5KindINT64Queue
      type, extends(QueueNode):: LogicalDim5KindINT64QueueNode
         Logical(kind=INT64), dimension(:, :, :, :, :), allocatable:: value
         type(LogicalDim5KindINT64QueueNode), pointer:: next => null()
      end type LogicalDim5KindINT64QueueNode
      type, extends(Queue), public:: LogicalDim6KindINT8Queue
         type(LogicalDim6KindINT8QueueNode), pointer:: tail => null()
         type(LogicalDim6KindINT8QueueNode), pointer:: head => null()
      end type LogicalDim6KindINT8Queue
      type, extends(QueueNode):: LogicalDim6KindINT8QueueNode
         Logical(kind=INT8), dimension(:, :, :, :, :, :), allocatable:: value
         type(LogicalDim6KindINT8QueueNode), pointer:: next => null()
      end type LogicalDim6KindINT8QueueNode
      type, extends(Queue), public:: LogicalDim6KindINT16Queue
         type(LogicalDim6KindINT16QueueNode), pointer:: tail => null()
         type(LogicalDim6KindINT16QueueNode), pointer:: head => null()
      end type LogicalDim6KindINT16Queue
      type, extends(QueueNode):: LogicalDim6KindINT16QueueNode
         Logical(kind=INT16), dimension(:, :, :, :, :, :), allocatable:: value
         type(LogicalDim6KindINT16QueueNode), pointer:: next => null()
      end type LogicalDim6KindINT16QueueNode
      type, extends(Queue), public:: LogicalDim6KindINT32Queue
         type(LogicalDim6KindINT32QueueNode), pointer:: tail => null()
         type(LogicalDim6KindINT32QueueNode), pointer:: head => null()
      end type LogicalDim6KindINT32Queue
      type, extends(QueueNode):: LogicalDim6KindINT32QueueNode
         Logical(kind=INT32), dimension(:, :, :, :, :, :), allocatable:: value
         type(LogicalDim6KindINT32QueueNode), pointer:: next => null()
      end type LogicalDim6KindINT32QueueNode
      type, extends(Queue), public:: LogicalDim6KindINT64Queue
         type(LogicalDim6KindINT64QueueNode), pointer:: tail => null()
         type(LogicalDim6KindINT64QueueNode), pointer:: head => null()
      end type LogicalDim6KindINT64Queue
      type, extends(QueueNode):: LogicalDim6KindINT64QueueNode
         Logical(kind=INT64), dimension(:, :, :, :, :, :), allocatable:: value
         type(LogicalDim6KindINT64QueueNode), pointer:: next => null()
      end type LogicalDim6KindINT64QueueNode
      type, extends(Queue), public:: LogicalDim7KindINT8Queue
         type(LogicalDim7KindINT8QueueNode), pointer:: tail => null()
         type(LogicalDim7KindINT8QueueNode), pointer:: head => null()
      end type LogicalDim7KindINT8Queue
      type, extends(QueueNode):: LogicalDim7KindINT8QueueNode
         Logical(kind=INT8), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(LogicalDim7KindINT8QueueNode), pointer:: next => null()
      end type LogicalDim7KindINT8QueueNode
      type, extends(Queue), public:: LogicalDim7KindINT16Queue
         type(LogicalDim7KindINT16QueueNode), pointer:: tail => null()
         type(LogicalDim7KindINT16QueueNode), pointer:: head => null()
      end type LogicalDim7KindINT16Queue
      type, extends(QueueNode):: LogicalDim7KindINT16QueueNode
         Logical(kind=INT16), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(LogicalDim7KindINT16QueueNode), pointer:: next => null()
      end type LogicalDim7KindINT16QueueNode
      type, extends(Queue), public:: LogicalDim7KindINT32Queue
         type(LogicalDim7KindINT32QueueNode), pointer:: tail => null()
         type(LogicalDim7KindINT32QueueNode), pointer:: head => null()
      end type LogicalDim7KindINT32Queue
      type, extends(QueueNode):: LogicalDim7KindINT32QueueNode
         Logical(kind=INT32), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(LogicalDim7KindINT32QueueNode), pointer:: next => null()
      end type LogicalDim7KindINT32QueueNode
      type, extends(Queue), public:: LogicalDim7KindINT64Queue
         type(LogicalDim7KindINT64QueueNode), pointer:: tail => null()
         type(LogicalDim7KindINT64QueueNode), pointer:: head => null()
      end type LogicalDim7KindINT64Queue
      type, extends(QueueNode):: LogicalDim7KindINT64QueueNode
         Logical(kind=INT64), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(LogicalDim7KindINT64QueueNode), pointer:: next => null()
      end type LogicalDim7KindINT64QueueNode
      type, extends(Queue), public:: ComplexDim0KindREAL32Queue
         type(ComplexDim0KindREAL32QueueNode), pointer:: tail => null()
         type(ComplexDim0KindREAL32QueueNode), pointer:: head => null()
      end type ComplexDim0KindREAL32Queue
      type, extends(QueueNode):: ComplexDim0KindREAL32QueueNode
         Complex(kind=REAL32):: value
         type(ComplexDim0KindREAL32QueueNode), pointer:: next => null()
      end type ComplexDim0KindREAL32QueueNode
      type, extends(Queue), public:: ComplexDim0KindREAL64Queue
         type(ComplexDim0KindREAL64QueueNode), pointer:: tail => null()
         type(ComplexDim0KindREAL64QueueNode), pointer:: head => null()
      end type ComplexDim0KindREAL64Queue
      type, extends(QueueNode):: ComplexDim0KindREAL64QueueNode
         Complex(kind=REAL64):: value
         type(ComplexDim0KindREAL64QueueNode), pointer:: next => null()
      end type ComplexDim0KindREAL64QueueNode
      type, extends(Queue), public:: ComplexDim0KindREAL128Queue
         type(ComplexDim0KindREAL128QueueNode), pointer:: tail => null()
         type(ComplexDim0KindREAL128QueueNode), pointer:: head => null()
      end type ComplexDim0KindREAL128Queue
      type, extends(QueueNode):: ComplexDim0KindREAL128QueueNode
         Complex(kind=REAL128):: value
         type(ComplexDim0KindREAL128QueueNode), pointer:: next => null()
      end type ComplexDim0KindREAL128QueueNode
      type, extends(Queue), public:: ComplexDim1KindREAL32Queue
         type(ComplexDim1KindREAL32QueueNode), pointer:: tail => null()
         type(ComplexDim1KindREAL32QueueNode), pointer:: head => null()
      end type ComplexDim1KindREAL32Queue
      type, extends(QueueNode):: ComplexDim1KindREAL32QueueNode
         Complex(kind=REAL32), dimension(:), allocatable:: value
         type(ComplexDim1KindREAL32QueueNode), pointer:: next => null()
      end type ComplexDim1KindREAL32QueueNode
      type, extends(Queue), public:: ComplexDim1KindREAL64Queue
         type(ComplexDim1KindREAL64QueueNode), pointer:: tail => null()
         type(ComplexDim1KindREAL64QueueNode), pointer:: head => null()
      end type ComplexDim1KindREAL64Queue
      type, extends(QueueNode):: ComplexDim1KindREAL64QueueNode
         Complex(kind=REAL64), dimension(:), allocatable:: value
         type(ComplexDim1KindREAL64QueueNode), pointer:: next => null()
      end type ComplexDim1KindREAL64QueueNode
      type, extends(Queue), public:: ComplexDim1KindREAL128Queue
         type(ComplexDim1KindREAL128QueueNode), pointer:: tail => null()
         type(ComplexDim1KindREAL128QueueNode), pointer:: head => null()
      end type ComplexDim1KindREAL128Queue
      type, extends(QueueNode):: ComplexDim1KindREAL128QueueNode
         Complex(kind=REAL128), dimension(:), allocatable:: value
         type(ComplexDim1KindREAL128QueueNode), pointer:: next => null()
      end type ComplexDim1KindREAL128QueueNode
      type, extends(Queue), public:: ComplexDim2KindREAL32Queue
         type(ComplexDim2KindREAL32QueueNode), pointer:: tail => null()
         type(ComplexDim2KindREAL32QueueNode), pointer:: head => null()
      end type ComplexDim2KindREAL32Queue
      type, extends(QueueNode):: ComplexDim2KindREAL32QueueNode
         Complex(kind=REAL32), dimension(:, :), allocatable:: value
         type(ComplexDim2KindREAL32QueueNode), pointer:: next => null()
      end type ComplexDim2KindREAL32QueueNode
      type, extends(Queue), public:: ComplexDim2KindREAL64Queue
         type(ComplexDim2KindREAL64QueueNode), pointer:: tail => null()
         type(ComplexDim2KindREAL64QueueNode), pointer:: head => null()
      end type ComplexDim2KindREAL64Queue
      type, extends(QueueNode):: ComplexDim2KindREAL64QueueNode
         Complex(kind=REAL64), dimension(:, :), allocatable:: value
         type(ComplexDim2KindREAL64QueueNode), pointer:: next => null()
      end type ComplexDim2KindREAL64QueueNode
      type, extends(Queue), public:: ComplexDim2KindREAL128Queue
         type(ComplexDim2KindREAL128QueueNode), pointer:: tail => null()
         type(ComplexDim2KindREAL128QueueNode), pointer:: head => null()
      end type ComplexDim2KindREAL128Queue
      type, extends(QueueNode):: ComplexDim2KindREAL128QueueNode
         Complex(kind=REAL128), dimension(:, :), allocatable:: value
         type(ComplexDim2KindREAL128QueueNode), pointer:: next => null()
      end type ComplexDim2KindREAL128QueueNode
      type, extends(Queue), public:: ComplexDim3KindREAL32Queue
         type(ComplexDim3KindREAL32QueueNode), pointer:: tail => null()
         type(ComplexDim3KindREAL32QueueNode), pointer:: head => null()
      end type ComplexDim3KindREAL32Queue
      type, extends(QueueNode):: ComplexDim3KindREAL32QueueNode
         Complex(kind=REAL32), dimension(:, :, :), allocatable:: value
         type(ComplexDim3KindREAL32QueueNode), pointer:: next => null()
      end type ComplexDim3KindREAL32QueueNode
      type, extends(Queue), public:: ComplexDim3KindREAL64Queue
         type(ComplexDim3KindREAL64QueueNode), pointer:: tail => null()
         type(ComplexDim3KindREAL64QueueNode), pointer:: head => null()
      end type ComplexDim3KindREAL64Queue
      type, extends(QueueNode):: ComplexDim3KindREAL64QueueNode
         Complex(kind=REAL64), dimension(:, :, :), allocatable:: value
         type(ComplexDim3KindREAL64QueueNode), pointer:: next => null()
      end type ComplexDim3KindREAL64QueueNode
      type, extends(Queue), public:: ComplexDim3KindREAL128Queue
         type(ComplexDim3KindREAL128QueueNode), pointer:: tail => null()
         type(ComplexDim3KindREAL128QueueNode), pointer:: head => null()
      end type ComplexDim3KindREAL128Queue
      type, extends(QueueNode):: ComplexDim3KindREAL128QueueNode
         Complex(kind=REAL128), dimension(:, :, :), allocatable:: value
         type(ComplexDim3KindREAL128QueueNode), pointer:: next => null()
      end type ComplexDim3KindREAL128QueueNode
      type, extends(Queue), public:: ComplexDim4KindREAL32Queue
         type(ComplexDim4KindREAL32QueueNode), pointer:: tail => null()
         type(ComplexDim4KindREAL32QueueNode), pointer:: head => null()
      end type ComplexDim4KindREAL32Queue
      type, extends(QueueNode):: ComplexDim4KindREAL32QueueNode
         Complex(kind=REAL32), dimension(:, :, :, :), allocatable:: value
         type(ComplexDim4KindREAL32QueueNode), pointer:: next => null()
      end type ComplexDim4KindREAL32QueueNode
      type, extends(Queue), public:: ComplexDim4KindREAL64Queue
         type(ComplexDim4KindREAL64QueueNode), pointer:: tail => null()
         type(ComplexDim4KindREAL64QueueNode), pointer:: head => null()
      end type ComplexDim4KindREAL64Queue
      type, extends(QueueNode):: ComplexDim4KindREAL64QueueNode
         Complex(kind=REAL64), dimension(:, :, :, :), allocatable:: value
         type(ComplexDim4KindREAL64QueueNode), pointer:: next => null()
      end type ComplexDim4KindREAL64QueueNode
      type, extends(Queue), public:: ComplexDim4KindREAL128Queue
         type(ComplexDim4KindREAL128QueueNode), pointer:: tail => null()
         type(ComplexDim4KindREAL128QueueNode), pointer:: head => null()
      end type ComplexDim4KindREAL128Queue
      type, extends(QueueNode):: ComplexDim4KindREAL128QueueNode
         Complex(kind=REAL128), dimension(:, :, :, :), allocatable:: value
         type(ComplexDim4KindREAL128QueueNode), pointer:: next => null()
      end type ComplexDim4KindREAL128QueueNode
      type, extends(Queue), public:: ComplexDim5KindREAL32Queue
         type(ComplexDim5KindREAL32QueueNode), pointer:: tail => null()
         type(ComplexDim5KindREAL32QueueNode), pointer:: head => null()
      end type ComplexDim5KindREAL32Queue
      type, extends(QueueNode):: ComplexDim5KindREAL32QueueNode
         Complex(kind=REAL32), dimension(:, :, :, :, :), allocatable:: value
         type(ComplexDim5KindREAL32QueueNode), pointer:: next => null()
      end type ComplexDim5KindREAL32QueueNode
      type, extends(Queue), public:: ComplexDim5KindREAL64Queue
         type(ComplexDim5KindREAL64QueueNode), pointer:: tail => null()
         type(ComplexDim5KindREAL64QueueNode), pointer:: head => null()
      end type ComplexDim5KindREAL64Queue
      type, extends(QueueNode):: ComplexDim5KindREAL64QueueNode
         Complex(kind=REAL64), dimension(:, :, :, :, :), allocatable:: value
         type(ComplexDim5KindREAL64QueueNode), pointer:: next => null()
      end type ComplexDim5KindREAL64QueueNode
      type, extends(Queue), public:: ComplexDim5KindREAL128Queue
         type(ComplexDim5KindREAL128QueueNode), pointer:: tail => null()
         type(ComplexDim5KindREAL128QueueNode), pointer:: head => null()
      end type ComplexDim5KindREAL128Queue
      type, extends(QueueNode):: ComplexDim5KindREAL128QueueNode
         Complex(kind=REAL128), dimension(:, :, :, :, :), allocatable:: value
         type(ComplexDim5KindREAL128QueueNode), pointer:: next => null()
      end type ComplexDim5KindREAL128QueueNode
      type, extends(Queue), public:: ComplexDim6KindREAL32Queue
         type(ComplexDim6KindREAL32QueueNode), pointer:: tail => null()
         type(ComplexDim6KindREAL32QueueNode), pointer:: head => null()
      end type ComplexDim6KindREAL32Queue
      type, extends(QueueNode):: ComplexDim6KindREAL32QueueNode
         Complex(kind=REAL32), dimension(:, :, :, :, :, :), allocatable:: value
         type(ComplexDim6KindREAL32QueueNode), pointer:: next => null()
      end type ComplexDim6KindREAL32QueueNode
      type, extends(Queue), public:: ComplexDim6KindREAL64Queue
         type(ComplexDim6KindREAL64QueueNode), pointer:: tail => null()
         type(ComplexDim6KindREAL64QueueNode), pointer:: head => null()
      end type ComplexDim6KindREAL64Queue
      type, extends(QueueNode):: ComplexDim6KindREAL64QueueNode
         Complex(kind=REAL64), dimension(:, :, :, :, :, :), allocatable:: value
         type(ComplexDim6KindREAL64QueueNode), pointer:: next => null()
      end type ComplexDim6KindREAL64QueueNode
      type, extends(Queue), public:: ComplexDim6KindREAL128Queue
         type(ComplexDim6KindREAL128QueueNode), pointer:: tail => null()
         type(ComplexDim6KindREAL128QueueNode), pointer:: head => null()
      end type ComplexDim6KindREAL128Queue
      type, extends(QueueNode):: ComplexDim6KindREAL128QueueNode
         Complex(kind=REAL128), dimension(:, :, :, :, :, :), allocatable:: value
         type(ComplexDim6KindREAL128QueueNode), pointer:: next => null()
      end type ComplexDim6KindREAL128QueueNode
      type, extends(Queue), public:: ComplexDim7KindREAL32Queue
         type(ComplexDim7KindREAL32QueueNode), pointer:: tail => null()
         type(ComplexDim7KindREAL32QueueNode), pointer:: head => null()
      end type ComplexDim7KindREAL32Queue
      type, extends(QueueNode):: ComplexDim7KindREAL32QueueNode
         Complex(kind=REAL32), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(ComplexDim7KindREAL32QueueNode), pointer:: next => null()
      end type ComplexDim7KindREAL32QueueNode
      type, extends(Queue), public:: ComplexDim7KindREAL64Queue
         type(ComplexDim7KindREAL64QueueNode), pointer:: tail => null()
         type(ComplexDim7KindREAL64QueueNode), pointer:: head => null()
      end type ComplexDim7KindREAL64Queue
      type, extends(QueueNode):: ComplexDim7KindREAL64QueueNode
         Complex(kind=REAL64), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(ComplexDim7KindREAL64QueueNode), pointer:: next => null()
      end type ComplexDim7KindREAL64QueueNode
      type, extends(Queue), public:: ComplexDim7KindREAL128Queue
         type(ComplexDim7KindREAL128QueueNode), pointer:: tail => null()
         type(ComplexDim7KindREAL128QueueNode), pointer:: head => null()
      end type ComplexDim7KindREAL128Queue
      type, extends(QueueNode):: ComplexDim7KindREAL128QueueNode
         Complex(kind=REAL128), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(ComplexDim7KindREAL128QueueNode), pointer:: next => null()
      end type ComplexDim7KindREAL128QueueNode
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
      subroutine pushRealDim0KindREAL32Queue(self, value)
         type(RealDim0KindREAL32Queue), intent(inout):: self
         Real(kind=REAL32), intent(in):: value
         type(RealDim0KindREAL32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim0KindREAL32Queue
         ! type(RealDim0KindREAL32QueueNode), target:: root
         ! type(RealDim0KindREAL32QueueNode), pointer:: tail => root
         ! type(RealDim0KindREAL32QueueNode), pointer:: head => root%next
         ! end type RealDim0KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim0KindREAL32Queue
      function shiftRealDim0KindREAL32Queue(self, value) result(isSuccess)
         type(RealDim0KindREAL32Queue), intent(inout):: self
         Real(kind=REAL32), intent(inout):: value
         Logical:: isSuccess
         type(RealDim0KindREAL32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim0KindREAL32Queue
      function is_emptyRealDim0KindREAL32Queue(self) result(answer)
         type(RealDim0KindREAL32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim0KindREAL32Queue
      subroutine pushRealDim0KindREAL64Queue(self, value)
         type(RealDim0KindREAL64Queue), intent(inout):: self
         Real(kind=REAL64), intent(in):: value
         type(RealDim0KindREAL64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim0KindREAL64Queue
         ! type(RealDim0KindREAL64QueueNode), target:: root
         ! type(RealDim0KindREAL64QueueNode), pointer:: tail => root
         ! type(RealDim0KindREAL64QueueNode), pointer:: head => root%next
         ! end type RealDim0KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim0KindREAL64Queue
      function shiftRealDim0KindREAL64Queue(self, value) result(isSuccess)
         type(RealDim0KindREAL64Queue), intent(inout):: self
         Real(kind=REAL64), intent(inout):: value
         Logical:: isSuccess
         type(RealDim0KindREAL64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim0KindREAL64Queue
      function is_emptyRealDim0KindREAL64Queue(self) result(answer)
         type(RealDim0KindREAL64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim0KindREAL64Queue
      subroutine pushRealDim0KindREAL128Queue(self, value)
         type(RealDim0KindREAL128Queue), intent(inout):: self
         Real(kind=REAL128), intent(in):: value
         type(RealDim0KindREAL128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim0KindREAL128Queue
         ! type(RealDim0KindREAL128QueueNode), target:: root
         ! type(RealDim0KindREAL128QueueNode), pointer:: tail => root
         ! type(RealDim0KindREAL128QueueNode), pointer:: head => root%next
         ! end type RealDim0KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim0KindREAL128Queue
      function shiftRealDim0KindREAL128Queue(self, value) result(isSuccess)
         type(RealDim0KindREAL128Queue), intent(inout):: self
         Real(kind=REAL128), intent(inout):: value
         Logical:: isSuccess
         type(RealDim0KindREAL128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim0KindREAL128Queue
      function is_emptyRealDim0KindREAL128Queue(self) result(answer)
         type(RealDim0KindREAL128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim0KindREAL128Queue
      subroutine pushRealDim1KindREAL32Queue(self, value)
         type(RealDim1KindREAL32Queue), intent(inout):: self
         Real(kind=REAL32), dimension(:), intent(in):: value
         type(RealDim1KindREAL32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim1KindREAL32Queue
         ! type(RealDim1KindREAL32QueueNode), target:: root
         ! type(RealDim1KindREAL32QueueNode), pointer:: tail => root
         ! type(RealDim1KindREAL32QueueNode), pointer:: head => root%next
         ! end type RealDim1KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim1KindREAL32Queue
      function shiftRealDim1KindREAL32Queue(self, value) result(isSuccess)
         type(RealDim1KindREAL32Queue), intent(inout):: self
         Real(kind=REAL32), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim1KindREAL32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim1KindREAL32Queue
      function is_emptyRealDim1KindREAL32Queue(self) result(answer)
         type(RealDim1KindREAL32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim1KindREAL32Queue
      subroutine pushRealDim1KindREAL64Queue(self, value)
         type(RealDim1KindREAL64Queue), intent(inout):: self
         Real(kind=REAL64), dimension(:), intent(in):: value
         type(RealDim1KindREAL64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim1KindREAL64Queue
         ! type(RealDim1KindREAL64QueueNode), target:: root
         ! type(RealDim1KindREAL64QueueNode), pointer:: tail => root
         ! type(RealDim1KindREAL64QueueNode), pointer:: head => root%next
         ! end type RealDim1KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim1KindREAL64Queue
      function shiftRealDim1KindREAL64Queue(self, value) result(isSuccess)
         type(RealDim1KindREAL64Queue), intent(inout):: self
         Real(kind=REAL64), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim1KindREAL64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim1KindREAL64Queue
      function is_emptyRealDim1KindREAL64Queue(self) result(answer)
         type(RealDim1KindREAL64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim1KindREAL64Queue
      subroutine pushRealDim1KindREAL128Queue(self, value)
         type(RealDim1KindREAL128Queue), intent(inout):: self
         Real(kind=REAL128), dimension(:), intent(in):: value
         type(RealDim1KindREAL128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim1KindREAL128Queue
         ! type(RealDim1KindREAL128QueueNode), target:: root
         ! type(RealDim1KindREAL128QueueNode), pointer:: tail => root
         ! type(RealDim1KindREAL128QueueNode), pointer:: head => root%next
         ! end type RealDim1KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim1KindREAL128Queue
      function shiftRealDim1KindREAL128Queue(self, value) result(isSuccess)
         type(RealDim1KindREAL128Queue), intent(inout):: self
         Real(kind=REAL128), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim1KindREAL128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim1KindREAL128Queue
      function is_emptyRealDim1KindREAL128Queue(self) result(answer)
         type(RealDim1KindREAL128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim1KindREAL128Queue
      subroutine pushRealDim2KindREAL32Queue(self, value)
         type(RealDim2KindREAL32Queue), intent(inout):: self
         Real(kind=REAL32), dimension(:, :), intent(in):: value
         type(RealDim2KindREAL32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim2KindREAL32Queue
         ! type(RealDim2KindREAL32QueueNode), target:: root
         ! type(RealDim2KindREAL32QueueNode), pointer:: tail => root
         ! type(RealDim2KindREAL32QueueNode), pointer:: head => root%next
         ! end type RealDim2KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim2KindREAL32Queue
      function shiftRealDim2KindREAL32Queue(self, value) result(isSuccess)
         type(RealDim2KindREAL32Queue), intent(inout):: self
         Real(kind=REAL32), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim2KindREAL32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim2KindREAL32Queue
      function is_emptyRealDim2KindREAL32Queue(self) result(answer)
         type(RealDim2KindREAL32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim2KindREAL32Queue
      subroutine pushRealDim2KindREAL64Queue(self, value)
         type(RealDim2KindREAL64Queue), intent(inout):: self
         Real(kind=REAL64), dimension(:, :), intent(in):: value
         type(RealDim2KindREAL64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim2KindREAL64Queue
         ! type(RealDim2KindREAL64QueueNode), target:: root
         ! type(RealDim2KindREAL64QueueNode), pointer:: tail => root
         ! type(RealDim2KindREAL64QueueNode), pointer:: head => root%next
         ! end type RealDim2KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim2KindREAL64Queue
      function shiftRealDim2KindREAL64Queue(self, value) result(isSuccess)
         type(RealDim2KindREAL64Queue), intent(inout):: self
         Real(kind=REAL64), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim2KindREAL64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim2KindREAL64Queue
      function is_emptyRealDim2KindREAL64Queue(self) result(answer)
         type(RealDim2KindREAL64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim2KindREAL64Queue
      subroutine pushRealDim2KindREAL128Queue(self, value)
         type(RealDim2KindREAL128Queue), intent(inout):: self
         Real(kind=REAL128), dimension(:, :), intent(in):: value
         type(RealDim2KindREAL128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim2KindREAL128Queue
         ! type(RealDim2KindREAL128QueueNode), target:: root
         ! type(RealDim2KindREAL128QueueNode), pointer:: tail => root
         ! type(RealDim2KindREAL128QueueNode), pointer:: head => root%next
         ! end type RealDim2KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim2KindREAL128Queue
      function shiftRealDim2KindREAL128Queue(self, value) result(isSuccess)
         type(RealDim2KindREAL128Queue), intent(inout):: self
         Real(kind=REAL128), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim2KindREAL128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim2KindREAL128Queue
      function is_emptyRealDim2KindREAL128Queue(self) result(answer)
         type(RealDim2KindREAL128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim2KindREAL128Queue
      subroutine pushRealDim3KindREAL32Queue(self, value)
         type(RealDim3KindREAL32Queue), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :), intent(in):: value
         type(RealDim3KindREAL32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim3KindREAL32Queue
         ! type(RealDim3KindREAL32QueueNode), target:: root
         ! type(RealDim3KindREAL32QueueNode), pointer:: tail => root
         ! type(RealDim3KindREAL32QueueNode), pointer:: head => root%next
         ! end type RealDim3KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim3KindREAL32Queue
      function shiftRealDim3KindREAL32Queue(self, value) result(isSuccess)
         type(RealDim3KindREAL32Queue), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim3KindREAL32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim3KindREAL32Queue
      function is_emptyRealDim3KindREAL32Queue(self) result(answer)
         type(RealDim3KindREAL32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim3KindREAL32Queue
      subroutine pushRealDim3KindREAL64Queue(self, value)
         type(RealDim3KindREAL64Queue), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :), intent(in):: value
         type(RealDim3KindREAL64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim3KindREAL64Queue
         ! type(RealDim3KindREAL64QueueNode), target:: root
         ! type(RealDim3KindREAL64QueueNode), pointer:: tail => root
         ! type(RealDim3KindREAL64QueueNode), pointer:: head => root%next
         ! end type RealDim3KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim3KindREAL64Queue
      function shiftRealDim3KindREAL64Queue(self, value) result(isSuccess)
         type(RealDim3KindREAL64Queue), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim3KindREAL64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim3KindREAL64Queue
      function is_emptyRealDim3KindREAL64Queue(self) result(answer)
         type(RealDim3KindREAL64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim3KindREAL64Queue
      subroutine pushRealDim3KindREAL128Queue(self, value)
         type(RealDim3KindREAL128Queue), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :), intent(in):: value
         type(RealDim3KindREAL128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim3KindREAL128Queue
         ! type(RealDim3KindREAL128QueueNode), target:: root
         ! type(RealDim3KindREAL128QueueNode), pointer:: tail => root
         ! type(RealDim3KindREAL128QueueNode), pointer:: head => root%next
         ! end type RealDim3KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim3KindREAL128Queue
      function shiftRealDim3KindREAL128Queue(self, value) result(isSuccess)
         type(RealDim3KindREAL128Queue), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim3KindREAL128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim3KindREAL128Queue
      function is_emptyRealDim3KindREAL128Queue(self) result(answer)
         type(RealDim3KindREAL128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim3KindREAL128Queue
      subroutine pushRealDim4KindREAL32Queue(self, value)
         type(RealDim4KindREAL32Queue), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :, :), intent(in):: value
         type(RealDim4KindREAL32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim4KindREAL32Queue
         ! type(RealDim4KindREAL32QueueNode), target:: root
         ! type(RealDim4KindREAL32QueueNode), pointer:: tail => root
         ! type(RealDim4KindREAL32QueueNode), pointer:: head => root%next
         ! end type RealDim4KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim4KindREAL32Queue
      function shiftRealDim4KindREAL32Queue(self, value) result(isSuccess)
         type(RealDim4KindREAL32Queue), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim4KindREAL32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim4KindREAL32Queue
      function is_emptyRealDim4KindREAL32Queue(self) result(answer)
         type(RealDim4KindREAL32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim4KindREAL32Queue
      subroutine pushRealDim4KindREAL64Queue(self, value)
         type(RealDim4KindREAL64Queue), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :, :), intent(in):: value
         type(RealDim4KindREAL64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim4KindREAL64Queue
         ! type(RealDim4KindREAL64QueueNode), target:: root
         ! type(RealDim4KindREAL64QueueNode), pointer:: tail => root
         ! type(RealDim4KindREAL64QueueNode), pointer:: head => root%next
         ! end type RealDim4KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim4KindREAL64Queue
      function shiftRealDim4KindREAL64Queue(self, value) result(isSuccess)
         type(RealDim4KindREAL64Queue), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim4KindREAL64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim4KindREAL64Queue
      function is_emptyRealDim4KindREAL64Queue(self) result(answer)
         type(RealDim4KindREAL64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim4KindREAL64Queue
      subroutine pushRealDim4KindREAL128Queue(self, value)
         type(RealDim4KindREAL128Queue), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :, :), intent(in):: value
         type(RealDim4KindREAL128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim4KindREAL128Queue
         ! type(RealDim4KindREAL128QueueNode), target:: root
         ! type(RealDim4KindREAL128QueueNode), pointer:: tail => root
         ! type(RealDim4KindREAL128QueueNode), pointer:: head => root%next
         ! end type RealDim4KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim4KindREAL128Queue
      function shiftRealDim4KindREAL128Queue(self, value) result(isSuccess)
         type(RealDim4KindREAL128Queue), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim4KindREAL128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim4KindREAL128Queue
      function is_emptyRealDim4KindREAL128Queue(self) result(answer)
         type(RealDim4KindREAL128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim4KindREAL128Queue
      subroutine pushRealDim5KindREAL32Queue(self, value)
         type(RealDim5KindREAL32Queue), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :, :, :), intent(in):: value
         type(RealDim5KindREAL32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim5KindREAL32Queue
         ! type(RealDim5KindREAL32QueueNode), target:: root
         ! type(RealDim5KindREAL32QueueNode), pointer:: tail => root
         ! type(RealDim5KindREAL32QueueNode), pointer:: head => root%next
         ! end type RealDim5KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim5KindREAL32Queue
      function shiftRealDim5KindREAL32Queue(self, value) result(isSuccess)
         type(RealDim5KindREAL32Queue), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim5KindREAL32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim5KindREAL32Queue
      function is_emptyRealDim5KindREAL32Queue(self) result(answer)
         type(RealDim5KindREAL32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim5KindREAL32Queue
      subroutine pushRealDim5KindREAL64Queue(self, value)
         type(RealDim5KindREAL64Queue), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :, :, :), intent(in):: value
         type(RealDim5KindREAL64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim5KindREAL64Queue
         ! type(RealDim5KindREAL64QueueNode), target:: root
         ! type(RealDim5KindREAL64QueueNode), pointer:: tail => root
         ! type(RealDim5KindREAL64QueueNode), pointer:: head => root%next
         ! end type RealDim5KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim5KindREAL64Queue
      function shiftRealDim5KindREAL64Queue(self, value) result(isSuccess)
         type(RealDim5KindREAL64Queue), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim5KindREAL64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim5KindREAL64Queue
      function is_emptyRealDim5KindREAL64Queue(self) result(answer)
         type(RealDim5KindREAL64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim5KindREAL64Queue
      subroutine pushRealDim5KindREAL128Queue(self, value)
         type(RealDim5KindREAL128Queue), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :, :, :), intent(in):: value
         type(RealDim5KindREAL128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim5KindREAL128Queue
         ! type(RealDim5KindREAL128QueueNode), target:: root
         ! type(RealDim5KindREAL128QueueNode), pointer:: tail => root
         ! type(RealDim5KindREAL128QueueNode), pointer:: head => root%next
         ! end type RealDim5KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim5KindREAL128Queue
      function shiftRealDim5KindREAL128Queue(self, value) result(isSuccess)
         type(RealDim5KindREAL128Queue), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim5KindREAL128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim5KindREAL128Queue
      function is_emptyRealDim5KindREAL128Queue(self) result(answer)
         type(RealDim5KindREAL128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim5KindREAL128Queue
      subroutine pushRealDim6KindREAL32Queue(self, value)
         type(RealDim6KindREAL32Queue), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :, :, :, :), intent(in):: value
         type(RealDim6KindREAL32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim6KindREAL32Queue
         ! type(RealDim6KindREAL32QueueNode), target:: root
         ! type(RealDim6KindREAL32QueueNode), pointer:: tail => root
         ! type(RealDim6KindREAL32QueueNode), pointer:: head => root%next
         ! end type RealDim6KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim6KindREAL32Queue
      function shiftRealDim6KindREAL32Queue(self, value) result(isSuccess)
         type(RealDim6KindREAL32Queue), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim6KindREAL32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim6KindREAL32Queue
      function is_emptyRealDim6KindREAL32Queue(self) result(answer)
         type(RealDim6KindREAL32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim6KindREAL32Queue
      subroutine pushRealDim6KindREAL64Queue(self, value)
         type(RealDim6KindREAL64Queue), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :, :, :, :), intent(in):: value
         type(RealDim6KindREAL64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim6KindREAL64Queue
         ! type(RealDim6KindREAL64QueueNode), target:: root
         ! type(RealDim6KindREAL64QueueNode), pointer:: tail => root
         ! type(RealDim6KindREAL64QueueNode), pointer:: head => root%next
         ! end type RealDim6KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim6KindREAL64Queue
      function shiftRealDim6KindREAL64Queue(self, value) result(isSuccess)
         type(RealDim6KindREAL64Queue), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim6KindREAL64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim6KindREAL64Queue
      function is_emptyRealDim6KindREAL64Queue(self) result(answer)
         type(RealDim6KindREAL64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim6KindREAL64Queue
      subroutine pushRealDim6KindREAL128Queue(self, value)
         type(RealDim6KindREAL128Queue), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :, :, :, :), intent(in):: value
         type(RealDim6KindREAL128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim6KindREAL128Queue
         ! type(RealDim6KindREAL128QueueNode), target:: root
         ! type(RealDim6KindREAL128QueueNode), pointer:: tail => root
         ! type(RealDim6KindREAL128QueueNode), pointer:: head => root%next
         ! end type RealDim6KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim6KindREAL128Queue
      function shiftRealDim6KindREAL128Queue(self, value) result(isSuccess)
         type(RealDim6KindREAL128Queue), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim6KindREAL128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim6KindREAL128Queue
      function is_emptyRealDim6KindREAL128Queue(self) result(answer)
         type(RealDim6KindREAL128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim6KindREAL128Queue
      subroutine pushRealDim7KindREAL32Queue(self, value)
         type(RealDim7KindREAL32Queue), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(RealDim7KindREAL32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim7KindREAL32Queue
         ! type(RealDim7KindREAL32QueueNode), target:: root
         ! type(RealDim7KindREAL32QueueNode), pointer:: tail => root
         ! type(RealDim7KindREAL32QueueNode), pointer:: head => root%next
         ! end type RealDim7KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim7KindREAL32Queue
      function shiftRealDim7KindREAL32Queue(self, value) result(isSuccess)
         type(RealDim7KindREAL32Queue), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim7KindREAL32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim7KindREAL32Queue
      function is_emptyRealDim7KindREAL32Queue(self) result(answer)
         type(RealDim7KindREAL32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim7KindREAL32Queue
      subroutine pushRealDim7KindREAL64Queue(self, value)
         type(RealDim7KindREAL64Queue), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(RealDim7KindREAL64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim7KindREAL64Queue
         ! type(RealDim7KindREAL64QueueNode), target:: root
         ! type(RealDim7KindREAL64QueueNode), pointer:: tail => root
         ! type(RealDim7KindREAL64QueueNode), pointer:: head => root%next
         ! end type RealDim7KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim7KindREAL64Queue
      function shiftRealDim7KindREAL64Queue(self, value) result(isSuccess)
         type(RealDim7KindREAL64Queue), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim7KindREAL64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim7KindREAL64Queue
      function is_emptyRealDim7KindREAL64Queue(self) result(answer)
         type(RealDim7KindREAL64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim7KindREAL64Queue
      subroutine pushRealDim7KindREAL128Queue(self, value)
         type(RealDim7KindREAL128Queue), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(RealDim7KindREAL128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim7KindREAL128Queue
         ! type(RealDim7KindREAL128QueueNode), target:: root
         ! type(RealDim7KindREAL128QueueNode), pointer:: tail => root
         ! type(RealDim7KindREAL128QueueNode), pointer:: head => root%next
         ! end type RealDim7KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushRealDim7KindREAL128Queue
      function shiftRealDim7KindREAL128Queue(self, value) result(isSuccess)
         type(RealDim7KindREAL128Queue), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim7KindREAL128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim7KindREAL128Queue
      function is_emptyRealDim7KindREAL128Queue(self) result(answer)
         type(RealDim7KindREAL128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim7KindREAL128Queue
      subroutine pushIntegerDim0KindINT8Queue(self, value)
         type(IntegerDim0KindINT8Queue), intent(inout):: self
         Integer(kind=INT8), intent(in):: value
         type(IntegerDim0KindINT8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim0KindINT8Queue
         ! type(IntegerDim0KindINT8QueueNode), target:: root
         ! type(IntegerDim0KindINT8QueueNode), pointer:: tail => root
         ! type(IntegerDim0KindINT8QueueNode), pointer:: head => root%next
         ! end type IntegerDim0KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim0KindINT8Queue
      function shiftIntegerDim0KindINT8Queue(self, value) result(isSuccess)
         type(IntegerDim0KindINT8Queue), intent(inout):: self
         Integer(kind=INT8), intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim0KindINT8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim0KindINT8Queue
      function is_emptyIntegerDim0KindINT8Queue(self) result(answer)
         type(IntegerDim0KindINT8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim0KindINT8Queue
      subroutine pushIntegerDim0KindINT16Queue(self, value)
         type(IntegerDim0KindINT16Queue), intent(inout):: self
         Integer(kind=INT16), intent(in):: value
         type(IntegerDim0KindINT16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim0KindINT16Queue
         ! type(IntegerDim0KindINT16QueueNode), target:: root
         ! type(IntegerDim0KindINT16QueueNode), pointer:: tail => root
         ! type(IntegerDim0KindINT16QueueNode), pointer:: head => root%next
         ! end type IntegerDim0KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim0KindINT16Queue
      function shiftIntegerDim0KindINT16Queue(self, value) result(isSuccess)
         type(IntegerDim0KindINT16Queue), intent(inout):: self
         Integer(kind=INT16), intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim0KindINT16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim0KindINT16Queue
      function is_emptyIntegerDim0KindINT16Queue(self) result(answer)
         type(IntegerDim0KindINT16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim0KindINT16Queue
      subroutine pushIntegerDim0KindINT32Queue(self, value)
         type(IntegerDim0KindINT32Queue), intent(inout):: self
         Integer(kind=INT32), intent(in):: value
         type(IntegerDim0KindINT32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim0KindINT32Queue
         ! type(IntegerDim0KindINT32QueueNode), target:: root
         ! type(IntegerDim0KindINT32QueueNode), pointer:: tail => root
         ! type(IntegerDim0KindINT32QueueNode), pointer:: head => root%next
         ! end type IntegerDim0KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim0KindINT32Queue
      function shiftIntegerDim0KindINT32Queue(self, value) result(isSuccess)
         type(IntegerDim0KindINT32Queue), intent(inout):: self
         Integer(kind=INT32), intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim0KindINT32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim0KindINT32Queue
      function is_emptyIntegerDim0KindINT32Queue(self) result(answer)
         type(IntegerDim0KindINT32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim0KindINT32Queue
      subroutine pushIntegerDim0KindINT64Queue(self, value)
         type(IntegerDim0KindINT64Queue), intent(inout):: self
         Integer(kind=INT64), intent(in):: value
         type(IntegerDim0KindINT64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim0KindINT64Queue
         ! type(IntegerDim0KindINT64QueueNode), target:: root
         ! type(IntegerDim0KindINT64QueueNode), pointer:: tail => root
         ! type(IntegerDim0KindINT64QueueNode), pointer:: head => root%next
         ! end type IntegerDim0KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim0KindINT64Queue
      function shiftIntegerDim0KindINT64Queue(self, value) result(isSuccess)
         type(IntegerDim0KindINT64Queue), intent(inout):: self
         Integer(kind=INT64), intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim0KindINT64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim0KindINT64Queue
      function is_emptyIntegerDim0KindINT64Queue(self) result(answer)
         type(IntegerDim0KindINT64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim0KindINT64Queue
      subroutine pushIntegerDim1KindINT8Queue(self, value)
         type(IntegerDim1KindINT8Queue), intent(inout):: self
         Integer(kind=INT8), dimension(:), intent(in):: value
         type(IntegerDim1KindINT8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim1KindINT8Queue
         ! type(IntegerDim1KindINT8QueueNode), target:: root
         ! type(IntegerDim1KindINT8QueueNode), pointer:: tail => root
         ! type(IntegerDim1KindINT8QueueNode), pointer:: head => root%next
         ! end type IntegerDim1KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim1KindINT8Queue
      function shiftIntegerDim1KindINT8Queue(self, value) result(isSuccess)
         type(IntegerDim1KindINT8Queue), intent(inout):: self
         Integer(kind=INT8), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim1KindINT8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim1KindINT8Queue
      function is_emptyIntegerDim1KindINT8Queue(self) result(answer)
         type(IntegerDim1KindINT8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim1KindINT8Queue
      subroutine pushIntegerDim1KindINT16Queue(self, value)
         type(IntegerDim1KindINT16Queue), intent(inout):: self
         Integer(kind=INT16), dimension(:), intent(in):: value
         type(IntegerDim1KindINT16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim1KindINT16Queue
         ! type(IntegerDim1KindINT16QueueNode), target:: root
         ! type(IntegerDim1KindINT16QueueNode), pointer:: tail => root
         ! type(IntegerDim1KindINT16QueueNode), pointer:: head => root%next
         ! end type IntegerDim1KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim1KindINT16Queue
      function shiftIntegerDim1KindINT16Queue(self, value) result(isSuccess)
         type(IntegerDim1KindINT16Queue), intent(inout):: self
         Integer(kind=INT16), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim1KindINT16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim1KindINT16Queue
      function is_emptyIntegerDim1KindINT16Queue(self) result(answer)
         type(IntegerDim1KindINT16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim1KindINT16Queue
      subroutine pushIntegerDim1KindINT32Queue(self, value)
         type(IntegerDim1KindINT32Queue), intent(inout):: self
         Integer(kind=INT32), dimension(:), intent(in):: value
         type(IntegerDim1KindINT32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim1KindINT32Queue
         ! type(IntegerDim1KindINT32QueueNode), target:: root
         ! type(IntegerDim1KindINT32QueueNode), pointer:: tail => root
         ! type(IntegerDim1KindINT32QueueNode), pointer:: head => root%next
         ! end type IntegerDim1KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim1KindINT32Queue
      function shiftIntegerDim1KindINT32Queue(self, value) result(isSuccess)
         type(IntegerDim1KindINT32Queue), intent(inout):: self
         Integer(kind=INT32), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim1KindINT32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim1KindINT32Queue
      function is_emptyIntegerDim1KindINT32Queue(self) result(answer)
         type(IntegerDim1KindINT32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim1KindINT32Queue
      subroutine pushIntegerDim1KindINT64Queue(self, value)
         type(IntegerDim1KindINT64Queue), intent(inout):: self
         Integer(kind=INT64), dimension(:), intent(in):: value
         type(IntegerDim1KindINT64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim1KindINT64Queue
         ! type(IntegerDim1KindINT64QueueNode), target:: root
         ! type(IntegerDim1KindINT64QueueNode), pointer:: tail => root
         ! type(IntegerDim1KindINT64QueueNode), pointer:: head => root%next
         ! end type IntegerDim1KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim1KindINT64Queue
      function shiftIntegerDim1KindINT64Queue(self, value) result(isSuccess)
         type(IntegerDim1KindINT64Queue), intent(inout):: self
         Integer(kind=INT64), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim1KindINT64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim1KindINT64Queue
      function is_emptyIntegerDim1KindINT64Queue(self) result(answer)
         type(IntegerDim1KindINT64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim1KindINT64Queue
      subroutine pushIntegerDim2KindINT8Queue(self, value)
         type(IntegerDim2KindINT8Queue), intent(inout):: self
         Integer(kind=INT8), dimension(:, :), intent(in):: value
         type(IntegerDim2KindINT8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim2KindINT8Queue
         ! type(IntegerDim2KindINT8QueueNode), target:: root
         ! type(IntegerDim2KindINT8QueueNode), pointer:: tail => root
         ! type(IntegerDim2KindINT8QueueNode), pointer:: head => root%next
         ! end type IntegerDim2KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim2KindINT8Queue
      function shiftIntegerDim2KindINT8Queue(self, value) result(isSuccess)
         type(IntegerDim2KindINT8Queue), intent(inout):: self
         Integer(kind=INT8), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim2KindINT8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim2KindINT8Queue
      function is_emptyIntegerDim2KindINT8Queue(self) result(answer)
         type(IntegerDim2KindINT8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim2KindINT8Queue
      subroutine pushIntegerDim2KindINT16Queue(self, value)
         type(IntegerDim2KindINT16Queue), intent(inout):: self
         Integer(kind=INT16), dimension(:, :), intent(in):: value
         type(IntegerDim2KindINT16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim2KindINT16Queue
         ! type(IntegerDim2KindINT16QueueNode), target:: root
         ! type(IntegerDim2KindINT16QueueNode), pointer:: tail => root
         ! type(IntegerDim2KindINT16QueueNode), pointer:: head => root%next
         ! end type IntegerDim2KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim2KindINT16Queue
      function shiftIntegerDim2KindINT16Queue(self, value) result(isSuccess)
         type(IntegerDim2KindINT16Queue), intent(inout):: self
         Integer(kind=INT16), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim2KindINT16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim2KindINT16Queue
      function is_emptyIntegerDim2KindINT16Queue(self) result(answer)
         type(IntegerDim2KindINT16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim2KindINT16Queue
      subroutine pushIntegerDim2KindINT32Queue(self, value)
         type(IntegerDim2KindINT32Queue), intent(inout):: self
         Integer(kind=INT32), dimension(:, :), intent(in):: value
         type(IntegerDim2KindINT32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim2KindINT32Queue
         ! type(IntegerDim2KindINT32QueueNode), target:: root
         ! type(IntegerDim2KindINT32QueueNode), pointer:: tail => root
         ! type(IntegerDim2KindINT32QueueNode), pointer:: head => root%next
         ! end type IntegerDim2KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim2KindINT32Queue
      function shiftIntegerDim2KindINT32Queue(self, value) result(isSuccess)
         type(IntegerDim2KindINT32Queue), intent(inout):: self
         Integer(kind=INT32), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim2KindINT32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim2KindINT32Queue
      function is_emptyIntegerDim2KindINT32Queue(self) result(answer)
         type(IntegerDim2KindINT32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim2KindINT32Queue
      subroutine pushIntegerDim2KindINT64Queue(self, value)
         type(IntegerDim2KindINT64Queue), intent(inout):: self
         Integer(kind=INT64), dimension(:, :), intent(in):: value
         type(IntegerDim2KindINT64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim2KindINT64Queue
         ! type(IntegerDim2KindINT64QueueNode), target:: root
         ! type(IntegerDim2KindINT64QueueNode), pointer:: tail => root
         ! type(IntegerDim2KindINT64QueueNode), pointer:: head => root%next
         ! end type IntegerDim2KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim2KindINT64Queue
      function shiftIntegerDim2KindINT64Queue(self, value) result(isSuccess)
         type(IntegerDim2KindINT64Queue), intent(inout):: self
         Integer(kind=INT64), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim2KindINT64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim2KindINT64Queue
      function is_emptyIntegerDim2KindINT64Queue(self) result(answer)
         type(IntegerDim2KindINT64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim2KindINT64Queue
      subroutine pushIntegerDim3KindINT8Queue(self, value)
         type(IntegerDim3KindINT8Queue), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :), intent(in):: value
         type(IntegerDim3KindINT8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim3KindINT8Queue
         ! type(IntegerDim3KindINT8QueueNode), target:: root
         ! type(IntegerDim3KindINT8QueueNode), pointer:: tail => root
         ! type(IntegerDim3KindINT8QueueNode), pointer:: head => root%next
         ! end type IntegerDim3KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim3KindINT8Queue
      function shiftIntegerDim3KindINT8Queue(self, value) result(isSuccess)
         type(IntegerDim3KindINT8Queue), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim3KindINT8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim3KindINT8Queue
      function is_emptyIntegerDim3KindINT8Queue(self) result(answer)
         type(IntegerDim3KindINT8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim3KindINT8Queue
      subroutine pushIntegerDim3KindINT16Queue(self, value)
         type(IntegerDim3KindINT16Queue), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :), intent(in):: value
         type(IntegerDim3KindINT16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim3KindINT16Queue
         ! type(IntegerDim3KindINT16QueueNode), target:: root
         ! type(IntegerDim3KindINT16QueueNode), pointer:: tail => root
         ! type(IntegerDim3KindINT16QueueNode), pointer:: head => root%next
         ! end type IntegerDim3KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim3KindINT16Queue
      function shiftIntegerDim3KindINT16Queue(self, value) result(isSuccess)
         type(IntegerDim3KindINT16Queue), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim3KindINT16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim3KindINT16Queue
      function is_emptyIntegerDim3KindINT16Queue(self) result(answer)
         type(IntegerDim3KindINT16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim3KindINT16Queue
      subroutine pushIntegerDim3KindINT32Queue(self, value)
         type(IntegerDim3KindINT32Queue), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :), intent(in):: value
         type(IntegerDim3KindINT32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim3KindINT32Queue
         ! type(IntegerDim3KindINT32QueueNode), target:: root
         ! type(IntegerDim3KindINT32QueueNode), pointer:: tail => root
         ! type(IntegerDim3KindINT32QueueNode), pointer:: head => root%next
         ! end type IntegerDim3KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim3KindINT32Queue
      function shiftIntegerDim3KindINT32Queue(self, value) result(isSuccess)
         type(IntegerDim3KindINT32Queue), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim3KindINT32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim3KindINT32Queue
      function is_emptyIntegerDim3KindINT32Queue(self) result(answer)
         type(IntegerDim3KindINT32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim3KindINT32Queue
      subroutine pushIntegerDim3KindINT64Queue(self, value)
         type(IntegerDim3KindINT64Queue), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :), intent(in):: value
         type(IntegerDim3KindINT64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim3KindINT64Queue
         ! type(IntegerDim3KindINT64QueueNode), target:: root
         ! type(IntegerDim3KindINT64QueueNode), pointer:: tail => root
         ! type(IntegerDim3KindINT64QueueNode), pointer:: head => root%next
         ! end type IntegerDim3KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim3KindINT64Queue
      function shiftIntegerDim3KindINT64Queue(self, value) result(isSuccess)
         type(IntegerDim3KindINT64Queue), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim3KindINT64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim3KindINT64Queue
      function is_emptyIntegerDim3KindINT64Queue(self) result(answer)
         type(IntegerDim3KindINT64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim3KindINT64Queue
      subroutine pushIntegerDim4KindINT8Queue(self, value)
         type(IntegerDim4KindINT8Queue), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :, :), intent(in):: value
         type(IntegerDim4KindINT8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim4KindINT8Queue
         ! type(IntegerDim4KindINT8QueueNode), target:: root
         ! type(IntegerDim4KindINT8QueueNode), pointer:: tail => root
         ! type(IntegerDim4KindINT8QueueNode), pointer:: head => root%next
         ! end type IntegerDim4KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim4KindINT8Queue
      function shiftIntegerDim4KindINT8Queue(self, value) result(isSuccess)
         type(IntegerDim4KindINT8Queue), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim4KindINT8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim4KindINT8Queue
      function is_emptyIntegerDim4KindINT8Queue(self) result(answer)
         type(IntegerDim4KindINT8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim4KindINT8Queue
      subroutine pushIntegerDim4KindINT16Queue(self, value)
         type(IntegerDim4KindINT16Queue), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :, :), intent(in):: value
         type(IntegerDim4KindINT16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim4KindINT16Queue
         ! type(IntegerDim4KindINT16QueueNode), target:: root
         ! type(IntegerDim4KindINT16QueueNode), pointer:: tail => root
         ! type(IntegerDim4KindINT16QueueNode), pointer:: head => root%next
         ! end type IntegerDim4KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim4KindINT16Queue
      function shiftIntegerDim4KindINT16Queue(self, value) result(isSuccess)
         type(IntegerDim4KindINT16Queue), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim4KindINT16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim4KindINT16Queue
      function is_emptyIntegerDim4KindINT16Queue(self) result(answer)
         type(IntegerDim4KindINT16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim4KindINT16Queue
      subroutine pushIntegerDim4KindINT32Queue(self, value)
         type(IntegerDim4KindINT32Queue), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :, :), intent(in):: value
         type(IntegerDim4KindINT32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim4KindINT32Queue
         ! type(IntegerDim4KindINT32QueueNode), target:: root
         ! type(IntegerDim4KindINT32QueueNode), pointer:: tail => root
         ! type(IntegerDim4KindINT32QueueNode), pointer:: head => root%next
         ! end type IntegerDim4KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim4KindINT32Queue
      function shiftIntegerDim4KindINT32Queue(self, value) result(isSuccess)
         type(IntegerDim4KindINT32Queue), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim4KindINT32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim4KindINT32Queue
      function is_emptyIntegerDim4KindINT32Queue(self) result(answer)
         type(IntegerDim4KindINT32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim4KindINT32Queue
      subroutine pushIntegerDim4KindINT64Queue(self, value)
         type(IntegerDim4KindINT64Queue), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :, :), intent(in):: value
         type(IntegerDim4KindINT64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim4KindINT64Queue
         ! type(IntegerDim4KindINT64QueueNode), target:: root
         ! type(IntegerDim4KindINT64QueueNode), pointer:: tail => root
         ! type(IntegerDim4KindINT64QueueNode), pointer:: head => root%next
         ! end type IntegerDim4KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim4KindINT64Queue
      function shiftIntegerDim4KindINT64Queue(self, value) result(isSuccess)
         type(IntegerDim4KindINT64Queue), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim4KindINT64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim4KindINT64Queue
      function is_emptyIntegerDim4KindINT64Queue(self) result(answer)
         type(IntegerDim4KindINT64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim4KindINT64Queue
      subroutine pushIntegerDim5KindINT8Queue(self, value)
         type(IntegerDim5KindINT8Queue), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :, :, :), intent(in):: value
         type(IntegerDim5KindINT8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim5KindINT8Queue
         ! type(IntegerDim5KindINT8QueueNode), target:: root
         ! type(IntegerDim5KindINT8QueueNode), pointer:: tail => root
         ! type(IntegerDim5KindINT8QueueNode), pointer:: head => root%next
         ! end type IntegerDim5KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim5KindINT8Queue
      function shiftIntegerDim5KindINT8Queue(self, value) result(isSuccess)
         type(IntegerDim5KindINT8Queue), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim5KindINT8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim5KindINT8Queue
      function is_emptyIntegerDim5KindINT8Queue(self) result(answer)
         type(IntegerDim5KindINT8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim5KindINT8Queue
      subroutine pushIntegerDim5KindINT16Queue(self, value)
         type(IntegerDim5KindINT16Queue), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :, :, :), intent(in):: value
         type(IntegerDim5KindINT16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim5KindINT16Queue
         ! type(IntegerDim5KindINT16QueueNode), target:: root
         ! type(IntegerDim5KindINT16QueueNode), pointer:: tail => root
         ! type(IntegerDim5KindINT16QueueNode), pointer:: head => root%next
         ! end type IntegerDim5KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim5KindINT16Queue
      function shiftIntegerDim5KindINT16Queue(self, value) result(isSuccess)
         type(IntegerDim5KindINT16Queue), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim5KindINT16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim5KindINT16Queue
      function is_emptyIntegerDim5KindINT16Queue(self) result(answer)
         type(IntegerDim5KindINT16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim5KindINT16Queue
      subroutine pushIntegerDim5KindINT32Queue(self, value)
         type(IntegerDim5KindINT32Queue), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :, :, :), intent(in):: value
         type(IntegerDim5KindINT32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim5KindINT32Queue
         ! type(IntegerDim5KindINT32QueueNode), target:: root
         ! type(IntegerDim5KindINT32QueueNode), pointer:: tail => root
         ! type(IntegerDim5KindINT32QueueNode), pointer:: head => root%next
         ! end type IntegerDim5KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim5KindINT32Queue
      function shiftIntegerDim5KindINT32Queue(self, value) result(isSuccess)
         type(IntegerDim5KindINT32Queue), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim5KindINT32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim5KindINT32Queue
      function is_emptyIntegerDim5KindINT32Queue(self) result(answer)
         type(IntegerDim5KindINT32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim5KindINT32Queue
      subroutine pushIntegerDim5KindINT64Queue(self, value)
         type(IntegerDim5KindINT64Queue), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :, :, :), intent(in):: value
         type(IntegerDim5KindINT64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim5KindINT64Queue
         ! type(IntegerDim5KindINT64QueueNode), target:: root
         ! type(IntegerDim5KindINT64QueueNode), pointer:: tail => root
         ! type(IntegerDim5KindINT64QueueNode), pointer:: head => root%next
         ! end type IntegerDim5KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim5KindINT64Queue
      function shiftIntegerDim5KindINT64Queue(self, value) result(isSuccess)
         type(IntegerDim5KindINT64Queue), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim5KindINT64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim5KindINT64Queue
      function is_emptyIntegerDim5KindINT64Queue(self) result(answer)
         type(IntegerDim5KindINT64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim5KindINT64Queue
      subroutine pushIntegerDim6KindINT8Queue(self, value)
         type(IntegerDim6KindINT8Queue), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :, :, :, :), intent(in):: value
         type(IntegerDim6KindINT8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim6KindINT8Queue
         ! type(IntegerDim6KindINT8QueueNode), target:: root
         ! type(IntegerDim6KindINT8QueueNode), pointer:: tail => root
         ! type(IntegerDim6KindINT8QueueNode), pointer:: head => root%next
         ! end type IntegerDim6KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim6KindINT8Queue
      function shiftIntegerDim6KindINT8Queue(self, value) result(isSuccess)
         type(IntegerDim6KindINT8Queue), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim6KindINT8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim6KindINT8Queue
      function is_emptyIntegerDim6KindINT8Queue(self) result(answer)
         type(IntegerDim6KindINT8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim6KindINT8Queue
      subroutine pushIntegerDim6KindINT16Queue(self, value)
         type(IntegerDim6KindINT16Queue), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :, :, :, :), intent(in):: value
         type(IntegerDim6KindINT16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim6KindINT16Queue
         ! type(IntegerDim6KindINT16QueueNode), target:: root
         ! type(IntegerDim6KindINT16QueueNode), pointer:: tail => root
         ! type(IntegerDim6KindINT16QueueNode), pointer:: head => root%next
         ! end type IntegerDim6KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim6KindINT16Queue
      function shiftIntegerDim6KindINT16Queue(self, value) result(isSuccess)
         type(IntegerDim6KindINT16Queue), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim6KindINT16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim6KindINT16Queue
      function is_emptyIntegerDim6KindINT16Queue(self) result(answer)
         type(IntegerDim6KindINT16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim6KindINT16Queue
      subroutine pushIntegerDim6KindINT32Queue(self, value)
         type(IntegerDim6KindINT32Queue), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :, :, :, :), intent(in):: value
         type(IntegerDim6KindINT32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim6KindINT32Queue
         ! type(IntegerDim6KindINT32QueueNode), target:: root
         ! type(IntegerDim6KindINT32QueueNode), pointer:: tail => root
         ! type(IntegerDim6KindINT32QueueNode), pointer:: head => root%next
         ! end type IntegerDim6KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim6KindINT32Queue
      function shiftIntegerDim6KindINT32Queue(self, value) result(isSuccess)
         type(IntegerDim6KindINT32Queue), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim6KindINT32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim6KindINT32Queue
      function is_emptyIntegerDim6KindINT32Queue(self) result(answer)
         type(IntegerDim6KindINT32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim6KindINT32Queue
      subroutine pushIntegerDim6KindINT64Queue(self, value)
         type(IntegerDim6KindINT64Queue), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :, :, :, :), intent(in):: value
         type(IntegerDim6KindINT64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim6KindINT64Queue
         ! type(IntegerDim6KindINT64QueueNode), target:: root
         ! type(IntegerDim6KindINT64QueueNode), pointer:: tail => root
         ! type(IntegerDim6KindINT64QueueNode), pointer:: head => root%next
         ! end type IntegerDim6KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim6KindINT64Queue
      function shiftIntegerDim6KindINT64Queue(self, value) result(isSuccess)
         type(IntegerDim6KindINT64Queue), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim6KindINT64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim6KindINT64Queue
      function is_emptyIntegerDim6KindINT64Queue(self) result(answer)
         type(IntegerDim6KindINT64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim6KindINT64Queue
      subroutine pushIntegerDim7KindINT8Queue(self, value)
         type(IntegerDim7KindINT8Queue), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(IntegerDim7KindINT8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim7KindINT8Queue
         ! type(IntegerDim7KindINT8QueueNode), target:: root
         ! type(IntegerDim7KindINT8QueueNode), pointer:: tail => root
         ! type(IntegerDim7KindINT8QueueNode), pointer:: head => root%next
         ! end type IntegerDim7KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim7KindINT8Queue
      function shiftIntegerDim7KindINT8Queue(self, value) result(isSuccess)
         type(IntegerDim7KindINT8Queue), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim7KindINT8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim7KindINT8Queue
      function is_emptyIntegerDim7KindINT8Queue(self) result(answer)
         type(IntegerDim7KindINT8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim7KindINT8Queue
      subroutine pushIntegerDim7KindINT16Queue(self, value)
         type(IntegerDim7KindINT16Queue), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(IntegerDim7KindINT16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim7KindINT16Queue
         ! type(IntegerDim7KindINT16QueueNode), target:: root
         ! type(IntegerDim7KindINT16QueueNode), pointer:: tail => root
         ! type(IntegerDim7KindINT16QueueNode), pointer:: head => root%next
         ! end type IntegerDim7KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim7KindINT16Queue
      function shiftIntegerDim7KindINT16Queue(self, value) result(isSuccess)
         type(IntegerDim7KindINT16Queue), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim7KindINT16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim7KindINT16Queue
      function is_emptyIntegerDim7KindINT16Queue(self) result(answer)
         type(IntegerDim7KindINT16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim7KindINT16Queue
      subroutine pushIntegerDim7KindINT32Queue(self, value)
         type(IntegerDim7KindINT32Queue), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(IntegerDim7KindINT32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim7KindINT32Queue
         ! type(IntegerDim7KindINT32QueueNode), target:: root
         ! type(IntegerDim7KindINT32QueueNode), pointer:: tail => root
         ! type(IntegerDim7KindINT32QueueNode), pointer:: head => root%next
         ! end type IntegerDim7KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim7KindINT32Queue
      function shiftIntegerDim7KindINT32Queue(self, value) result(isSuccess)
         type(IntegerDim7KindINT32Queue), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim7KindINT32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim7KindINT32Queue
      function is_emptyIntegerDim7KindINT32Queue(self) result(answer)
         type(IntegerDim7KindINT32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim7KindINT32Queue
      subroutine pushIntegerDim7KindINT64Queue(self, value)
         type(IntegerDim7KindINT64Queue), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(IntegerDim7KindINT64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim7KindINT64Queue
         ! type(IntegerDim7KindINT64QueueNode), target:: root
         ! type(IntegerDim7KindINT64QueueNode), pointer:: tail => root
         ! type(IntegerDim7KindINT64QueueNode), pointer:: head => root%next
         ! end type IntegerDim7KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushIntegerDim7KindINT64Queue
      function shiftIntegerDim7KindINT64Queue(self, value) result(isSuccess)
         type(IntegerDim7KindINT64Queue), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim7KindINT64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim7KindINT64Queue
      function is_emptyIntegerDim7KindINT64Queue(self) result(answer)
         type(IntegerDim7KindINT64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim7KindINT64Queue
      subroutine pushLogicalDim0KindINT8Queue(self, value)
         type(LogicalDim0KindINT8Queue), intent(inout):: self
         Logical(kind=INT8), intent(in):: value
         type(LogicalDim0KindINT8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim0KindINT8Queue
         ! type(LogicalDim0KindINT8QueueNode), target:: root
         ! type(LogicalDim0KindINT8QueueNode), pointer:: tail => root
         ! type(LogicalDim0KindINT8QueueNode), pointer:: head => root%next
         ! end type LogicalDim0KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim0KindINT8Queue
      function shiftLogicalDim0KindINT8Queue(self, value) result(isSuccess)
         type(LogicalDim0KindINT8Queue), intent(inout):: self
         Logical(kind=INT8), intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim0KindINT8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim0KindINT8Queue
      function is_emptyLogicalDim0KindINT8Queue(self) result(answer)
         type(LogicalDim0KindINT8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim0KindINT8Queue
      subroutine pushLogicalDim0KindINT16Queue(self, value)
         type(LogicalDim0KindINT16Queue), intent(inout):: self
         Logical(kind=INT16), intent(in):: value
         type(LogicalDim0KindINT16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim0KindINT16Queue
         ! type(LogicalDim0KindINT16QueueNode), target:: root
         ! type(LogicalDim0KindINT16QueueNode), pointer:: tail => root
         ! type(LogicalDim0KindINT16QueueNode), pointer:: head => root%next
         ! end type LogicalDim0KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim0KindINT16Queue
      function shiftLogicalDim0KindINT16Queue(self, value) result(isSuccess)
         type(LogicalDim0KindINT16Queue), intent(inout):: self
         Logical(kind=INT16), intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim0KindINT16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim0KindINT16Queue
      function is_emptyLogicalDim0KindINT16Queue(self) result(answer)
         type(LogicalDim0KindINT16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim0KindINT16Queue
      subroutine pushLogicalDim0KindINT32Queue(self, value)
         type(LogicalDim0KindINT32Queue), intent(inout):: self
         Logical(kind=INT32), intent(in):: value
         type(LogicalDim0KindINT32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim0KindINT32Queue
         ! type(LogicalDim0KindINT32QueueNode), target:: root
         ! type(LogicalDim0KindINT32QueueNode), pointer:: tail => root
         ! type(LogicalDim0KindINT32QueueNode), pointer:: head => root%next
         ! end type LogicalDim0KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim0KindINT32Queue
      function shiftLogicalDim0KindINT32Queue(self, value) result(isSuccess)
         type(LogicalDim0KindINT32Queue), intent(inout):: self
         Logical(kind=INT32), intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim0KindINT32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim0KindINT32Queue
      function is_emptyLogicalDim0KindINT32Queue(self) result(answer)
         type(LogicalDim0KindINT32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim0KindINT32Queue
      subroutine pushLogicalDim0KindINT64Queue(self, value)
         type(LogicalDim0KindINT64Queue), intent(inout):: self
         Logical(kind=INT64), intent(in):: value
         type(LogicalDim0KindINT64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim0KindINT64Queue
         ! type(LogicalDim0KindINT64QueueNode), target:: root
         ! type(LogicalDim0KindINT64QueueNode), pointer:: tail => root
         ! type(LogicalDim0KindINT64QueueNode), pointer:: head => root%next
         ! end type LogicalDim0KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim0KindINT64Queue
      function shiftLogicalDim0KindINT64Queue(self, value) result(isSuccess)
         type(LogicalDim0KindINT64Queue), intent(inout):: self
         Logical(kind=INT64), intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim0KindINT64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim0KindINT64Queue
      function is_emptyLogicalDim0KindINT64Queue(self) result(answer)
         type(LogicalDim0KindINT64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim0KindINT64Queue
      subroutine pushLogicalDim1KindINT8Queue(self, value)
         type(LogicalDim1KindINT8Queue), intent(inout):: self
         Logical(kind=INT8), dimension(:), intent(in):: value
         type(LogicalDim1KindINT8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim1KindINT8Queue
         ! type(LogicalDim1KindINT8QueueNode), target:: root
         ! type(LogicalDim1KindINT8QueueNode), pointer:: tail => root
         ! type(LogicalDim1KindINT8QueueNode), pointer:: head => root%next
         ! end type LogicalDim1KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim1KindINT8Queue
      function shiftLogicalDim1KindINT8Queue(self, value) result(isSuccess)
         type(LogicalDim1KindINT8Queue), intent(inout):: self
         Logical(kind=INT8), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim1KindINT8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim1KindINT8Queue
      function is_emptyLogicalDim1KindINT8Queue(self) result(answer)
         type(LogicalDim1KindINT8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim1KindINT8Queue
      subroutine pushLogicalDim1KindINT16Queue(self, value)
         type(LogicalDim1KindINT16Queue), intent(inout):: self
         Logical(kind=INT16), dimension(:), intent(in):: value
         type(LogicalDim1KindINT16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim1KindINT16Queue
         ! type(LogicalDim1KindINT16QueueNode), target:: root
         ! type(LogicalDim1KindINT16QueueNode), pointer:: tail => root
         ! type(LogicalDim1KindINT16QueueNode), pointer:: head => root%next
         ! end type LogicalDim1KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim1KindINT16Queue
      function shiftLogicalDim1KindINT16Queue(self, value) result(isSuccess)
         type(LogicalDim1KindINT16Queue), intent(inout):: self
         Logical(kind=INT16), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim1KindINT16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim1KindINT16Queue
      function is_emptyLogicalDim1KindINT16Queue(self) result(answer)
         type(LogicalDim1KindINT16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim1KindINT16Queue
      subroutine pushLogicalDim1KindINT32Queue(self, value)
         type(LogicalDim1KindINT32Queue), intent(inout):: self
         Logical(kind=INT32), dimension(:), intent(in):: value
         type(LogicalDim1KindINT32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim1KindINT32Queue
         ! type(LogicalDim1KindINT32QueueNode), target:: root
         ! type(LogicalDim1KindINT32QueueNode), pointer:: tail => root
         ! type(LogicalDim1KindINT32QueueNode), pointer:: head => root%next
         ! end type LogicalDim1KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim1KindINT32Queue
      function shiftLogicalDim1KindINT32Queue(self, value) result(isSuccess)
         type(LogicalDim1KindINT32Queue), intent(inout):: self
         Logical(kind=INT32), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim1KindINT32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim1KindINT32Queue
      function is_emptyLogicalDim1KindINT32Queue(self) result(answer)
         type(LogicalDim1KindINT32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim1KindINT32Queue
      subroutine pushLogicalDim1KindINT64Queue(self, value)
         type(LogicalDim1KindINT64Queue), intent(inout):: self
         Logical(kind=INT64), dimension(:), intent(in):: value
         type(LogicalDim1KindINT64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim1KindINT64Queue
         ! type(LogicalDim1KindINT64QueueNode), target:: root
         ! type(LogicalDim1KindINT64QueueNode), pointer:: tail => root
         ! type(LogicalDim1KindINT64QueueNode), pointer:: head => root%next
         ! end type LogicalDim1KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim1KindINT64Queue
      function shiftLogicalDim1KindINT64Queue(self, value) result(isSuccess)
         type(LogicalDim1KindINT64Queue), intent(inout):: self
         Logical(kind=INT64), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim1KindINT64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim1KindINT64Queue
      function is_emptyLogicalDim1KindINT64Queue(self) result(answer)
         type(LogicalDim1KindINT64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim1KindINT64Queue
      subroutine pushLogicalDim2KindINT8Queue(self, value)
         type(LogicalDim2KindINT8Queue), intent(inout):: self
         Logical(kind=INT8), dimension(:, :), intent(in):: value
         type(LogicalDim2KindINT8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim2KindINT8Queue
         ! type(LogicalDim2KindINT8QueueNode), target:: root
         ! type(LogicalDim2KindINT8QueueNode), pointer:: tail => root
         ! type(LogicalDim2KindINT8QueueNode), pointer:: head => root%next
         ! end type LogicalDim2KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim2KindINT8Queue
      function shiftLogicalDim2KindINT8Queue(self, value) result(isSuccess)
         type(LogicalDim2KindINT8Queue), intent(inout):: self
         Logical(kind=INT8), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim2KindINT8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim2KindINT8Queue
      function is_emptyLogicalDim2KindINT8Queue(self) result(answer)
         type(LogicalDim2KindINT8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim2KindINT8Queue
      subroutine pushLogicalDim2KindINT16Queue(self, value)
         type(LogicalDim2KindINT16Queue), intent(inout):: self
         Logical(kind=INT16), dimension(:, :), intent(in):: value
         type(LogicalDim2KindINT16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim2KindINT16Queue
         ! type(LogicalDim2KindINT16QueueNode), target:: root
         ! type(LogicalDim2KindINT16QueueNode), pointer:: tail => root
         ! type(LogicalDim2KindINT16QueueNode), pointer:: head => root%next
         ! end type LogicalDim2KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim2KindINT16Queue
      function shiftLogicalDim2KindINT16Queue(self, value) result(isSuccess)
         type(LogicalDim2KindINT16Queue), intent(inout):: self
         Logical(kind=INT16), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim2KindINT16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim2KindINT16Queue
      function is_emptyLogicalDim2KindINT16Queue(self) result(answer)
         type(LogicalDim2KindINT16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim2KindINT16Queue
      subroutine pushLogicalDim2KindINT32Queue(self, value)
         type(LogicalDim2KindINT32Queue), intent(inout):: self
         Logical(kind=INT32), dimension(:, :), intent(in):: value
         type(LogicalDim2KindINT32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim2KindINT32Queue
         ! type(LogicalDim2KindINT32QueueNode), target:: root
         ! type(LogicalDim2KindINT32QueueNode), pointer:: tail => root
         ! type(LogicalDim2KindINT32QueueNode), pointer:: head => root%next
         ! end type LogicalDim2KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim2KindINT32Queue
      function shiftLogicalDim2KindINT32Queue(self, value) result(isSuccess)
         type(LogicalDim2KindINT32Queue), intent(inout):: self
         Logical(kind=INT32), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim2KindINT32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim2KindINT32Queue
      function is_emptyLogicalDim2KindINT32Queue(self) result(answer)
         type(LogicalDim2KindINT32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim2KindINT32Queue
      subroutine pushLogicalDim2KindINT64Queue(self, value)
         type(LogicalDim2KindINT64Queue), intent(inout):: self
         Logical(kind=INT64), dimension(:, :), intent(in):: value
         type(LogicalDim2KindINT64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim2KindINT64Queue
         ! type(LogicalDim2KindINT64QueueNode), target:: root
         ! type(LogicalDim2KindINT64QueueNode), pointer:: tail => root
         ! type(LogicalDim2KindINT64QueueNode), pointer:: head => root%next
         ! end type LogicalDim2KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim2KindINT64Queue
      function shiftLogicalDim2KindINT64Queue(self, value) result(isSuccess)
         type(LogicalDim2KindINT64Queue), intent(inout):: self
         Logical(kind=INT64), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim2KindINT64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim2KindINT64Queue
      function is_emptyLogicalDim2KindINT64Queue(self) result(answer)
         type(LogicalDim2KindINT64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim2KindINT64Queue
      subroutine pushLogicalDim3KindINT8Queue(self, value)
         type(LogicalDim3KindINT8Queue), intent(inout):: self
         Logical(kind=INT8), dimension(:, :, :), intent(in):: value
         type(LogicalDim3KindINT8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim3KindINT8Queue
         ! type(LogicalDim3KindINT8QueueNode), target:: root
         ! type(LogicalDim3KindINT8QueueNode), pointer:: tail => root
         ! type(LogicalDim3KindINT8QueueNode), pointer:: head => root%next
         ! end type LogicalDim3KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim3KindINT8Queue
      function shiftLogicalDim3KindINT8Queue(self, value) result(isSuccess)
         type(LogicalDim3KindINT8Queue), intent(inout):: self
         Logical(kind=INT8), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim3KindINT8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim3KindINT8Queue
      function is_emptyLogicalDim3KindINT8Queue(self) result(answer)
         type(LogicalDim3KindINT8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim3KindINT8Queue
      subroutine pushLogicalDim3KindINT16Queue(self, value)
         type(LogicalDim3KindINT16Queue), intent(inout):: self
         Logical(kind=INT16), dimension(:, :, :), intent(in):: value
         type(LogicalDim3KindINT16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim3KindINT16Queue
         ! type(LogicalDim3KindINT16QueueNode), target:: root
         ! type(LogicalDim3KindINT16QueueNode), pointer:: tail => root
         ! type(LogicalDim3KindINT16QueueNode), pointer:: head => root%next
         ! end type LogicalDim3KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim3KindINT16Queue
      function shiftLogicalDim3KindINT16Queue(self, value) result(isSuccess)
         type(LogicalDim3KindINT16Queue), intent(inout):: self
         Logical(kind=INT16), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim3KindINT16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim3KindINT16Queue
      function is_emptyLogicalDim3KindINT16Queue(self) result(answer)
         type(LogicalDim3KindINT16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim3KindINT16Queue
      subroutine pushLogicalDim3KindINT32Queue(self, value)
         type(LogicalDim3KindINT32Queue), intent(inout):: self
         Logical(kind=INT32), dimension(:, :, :), intent(in):: value
         type(LogicalDim3KindINT32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim3KindINT32Queue
         ! type(LogicalDim3KindINT32QueueNode), target:: root
         ! type(LogicalDim3KindINT32QueueNode), pointer:: tail => root
         ! type(LogicalDim3KindINT32QueueNode), pointer:: head => root%next
         ! end type LogicalDim3KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim3KindINT32Queue
      function shiftLogicalDim3KindINT32Queue(self, value) result(isSuccess)
         type(LogicalDim3KindINT32Queue), intent(inout):: self
         Logical(kind=INT32), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim3KindINT32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim3KindINT32Queue
      function is_emptyLogicalDim3KindINT32Queue(self) result(answer)
         type(LogicalDim3KindINT32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim3KindINT32Queue
      subroutine pushLogicalDim3KindINT64Queue(self, value)
         type(LogicalDim3KindINT64Queue), intent(inout):: self
         Logical(kind=INT64), dimension(:, :, :), intent(in):: value
         type(LogicalDim3KindINT64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim3KindINT64Queue
         ! type(LogicalDim3KindINT64QueueNode), target:: root
         ! type(LogicalDim3KindINT64QueueNode), pointer:: tail => root
         ! type(LogicalDim3KindINT64QueueNode), pointer:: head => root%next
         ! end type LogicalDim3KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim3KindINT64Queue
      function shiftLogicalDim3KindINT64Queue(self, value) result(isSuccess)
         type(LogicalDim3KindINT64Queue), intent(inout):: self
         Logical(kind=INT64), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim3KindINT64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim3KindINT64Queue
      function is_emptyLogicalDim3KindINT64Queue(self) result(answer)
         type(LogicalDim3KindINT64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim3KindINT64Queue
      subroutine pushLogicalDim4KindINT8Queue(self, value)
         type(LogicalDim4KindINT8Queue), intent(inout):: self
         Logical(kind=INT8), dimension(:, :, :, :), intent(in):: value
         type(LogicalDim4KindINT8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim4KindINT8Queue
         ! type(LogicalDim4KindINT8QueueNode), target:: root
         ! type(LogicalDim4KindINT8QueueNode), pointer:: tail => root
         ! type(LogicalDim4KindINT8QueueNode), pointer:: head => root%next
         ! end type LogicalDim4KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim4KindINT8Queue
      function shiftLogicalDim4KindINT8Queue(self, value) result(isSuccess)
         type(LogicalDim4KindINT8Queue), intent(inout):: self
         Logical(kind=INT8), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim4KindINT8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim4KindINT8Queue
      function is_emptyLogicalDim4KindINT8Queue(self) result(answer)
         type(LogicalDim4KindINT8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim4KindINT8Queue
      subroutine pushLogicalDim4KindINT16Queue(self, value)
         type(LogicalDim4KindINT16Queue), intent(inout):: self
         Logical(kind=INT16), dimension(:, :, :, :), intent(in):: value
         type(LogicalDim4KindINT16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim4KindINT16Queue
         ! type(LogicalDim4KindINT16QueueNode), target:: root
         ! type(LogicalDim4KindINT16QueueNode), pointer:: tail => root
         ! type(LogicalDim4KindINT16QueueNode), pointer:: head => root%next
         ! end type LogicalDim4KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim4KindINT16Queue
      function shiftLogicalDim4KindINT16Queue(self, value) result(isSuccess)
         type(LogicalDim4KindINT16Queue), intent(inout):: self
         Logical(kind=INT16), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim4KindINT16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim4KindINT16Queue
      function is_emptyLogicalDim4KindINT16Queue(self) result(answer)
         type(LogicalDim4KindINT16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim4KindINT16Queue
      subroutine pushLogicalDim4KindINT32Queue(self, value)
         type(LogicalDim4KindINT32Queue), intent(inout):: self
         Logical(kind=INT32), dimension(:, :, :, :), intent(in):: value
         type(LogicalDim4KindINT32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim4KindINT32Queue
         ! type(LogicalDim4KindINT32QueueNode), target:: root
         ! type(LogicalDim4KindINT32QueueNode), pointer:: tail => root
         ! type(LogicalDim4KindINT32QueueNode), pointer:: head => root%next
         ! end type LogicalDim4KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim4KindINT32Queue
      function shiftLogicalDim4KindINT32Queue(self, value) result(isSuccess)
         type(LogicalDim4KindINT32Queue), intent(inout):: self
         Logical(kind=INT32), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim4KindINT32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim4KindINT32Queue
      function is_emptyLogicalDim4KindINT32Queue(self) result(answer)
         type(LogicalDim4KindINT32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim4KindINT32Queue
      subroutine pushLogicalDim4KindINT64Queue(self, value)
         type(LogicalDim4KindINT64Queue), intent(inout):: self
         Logical(kind=INT64), dimension(:, :, :, :), intent(in):: value
         type(LogicalDim4KindINT64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim4KindINT64Queue
         ! type(LogicalDim4KindINT64QueueNode), target:: root
         ! type(LogicalDim4KindINT64QueueNode), pointer:: tail => root
         ! type(LogicalDim4KindINT64QueueNode), pointer:: head => root%next
         ! end type LogicalDim4KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim4KindINT64Queue
      function shiftLogicalDim4KindINT64Queue(self, value) result(isSuccess)
         type(LogicalDim4KindINT64Queue), intent(inout):: self
         Logical(kind=INT64), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim4KindINT64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim4KindINT64Queue
      function is_emptyLogicalDim4KindINT64Queue(self) result(answer)
         type(LogicalDim4KindINT64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim4KindINT64Queue
      subroutine pushLogicalDim5KindINT8Queue(self, value)
         type(LogicalDim5KindINT8Queue), intent(inout):: self
         Logical(kind=INT8), dimension(:, :, :, :, :), intent(in):: value
         type(LogicalDim5KindINT8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim5KindINT8Queue
         ! type(LogicalDim5KindINT8QueueNode), target:: root
         ! type(LogicalDim5KindINT8QueueNode), pointer:: tail => root
         ! type(LogicalDim5KindINT8QueueNode), pointer:: head => root%next
         ! end type LogicalDim5KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim5KindINT8Queue
      function shiftLogicalDim5KindINT8Queue(self, value) result(isSuccess)
         type(LogicalDim5KindINT8Queue), intent(inout):: self
         Logical(kind=INT8), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim5KindINT8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim5KindINT8Queue
      function is_emptyLogicalDim5KindINT8Queue(self) result(answer)
         type(LogicalDim5KindINT8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim5KindINT8Queue
      subroutine pushLogicalDim5KindINT16Queue(self, value)
         type(LogicalDim5KindINT16Queue), intent(inout):: self
         Logical(kind=INT16), dimension(:, :, :, :, :), intent(in):: value
         type(LogicalDim5KindINT16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim5KindINT16Queue
         ! type(LogicalDim5KindINT16QueueNode), target:: root
         ! type(LogicalDim5KindINT16QueueNode), pointer:: tail => root
         ! type(LogicalDim5KindINT16QueueNode), pointer:: head => root%next
         ! end type LogicalDim5KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim5KindINT16Queue
      function shiftLogicalDim5KindINT16Queue(self, value) result(isSuccess)
         type(LogicalDim5KindINT16Queue), intent(inout):: self
         Logical(kind=INT16), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim5KindINT16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim5KindINT16Queue
      function is_emptyLogicalDim5KindINT16Queue(self) result(answer)
         type(LogicalDim5KindINT16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim5KindINT16Queue
      subroutine pushLogicalDim5KindINT32Queue(self, value)
         type(LogicalDim5KindINT32Queue), intent(inout):: self
         Logical(kind=INT32), dimension(:, :, :, :, :), intent(in):: value
         type(LogicalDim5KindINT32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim5KindINT32Queue
         ! type(LogicalDim5KindINT32QueueNode), target:: root
         ! type(LogicalDim5KindINT32QueueNode), pointer:: tail => root
         ! type(LogicalDim5KindINT32QueueNode), pointer:: head => root%next
         ! end type LogicalDim5KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim5KindINT32Queue
      function shiftLogicalDim5KindINT32Queue(self, value) result(isSuccess)
         type(LogicalDim5KindINT32Queue), intent(inout):: self
         Logical(kind=INT32), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim5KindINT32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim5KindINT32Queue
      function is_emptyLogicalDim5KindINT32Queue(self) result(answer)
         type(LogicalDim5KindINT32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim5KindINT32Queue
      subroutine pushLogicalDim5KindINT64Queue(self, value)
         type(LogicalDim5KindINT64Queue), intent(inout):: self
         Logical(kind=INT64), dimension(:, :, :, :, :), intent(in):: value
         type(LogicalDim5KindINT64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim5KindINT64Queue
         ! type(LogicalDim5KindINT64QueueNode), target:: root
         ! type(LogicalDim5KindINT64QueueNode), pointer:: tail => root
         ! type(LogicalDim5KindINT64QueueNode), pointer:: head => root%next
         ! end type LogicalDim5KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim5KindINT64Queue
      function shiftLogicalDim5KindINT64Queue(self, value) result(isSuccess)
         type(LogicalDim5KindINT64Queue), intent(inout):: self
         Logical(kind=INT64), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim5KindINT64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim5KindINT64Queue
      function is_emptyLogicalDim5KindINT64Queue(self) result(answer)
         type(LogicalDim5KindINT64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim5KindINT64Queue
      subroutine pushLogicalDim6KindINT8Queue(self, value)
         type(LogicalDim6KindINT8Queue), intent(inout):: self
         Logical(kind=INT8), dimension(:, :, :, :, :, :), intent(in):: value
         type(LogicalDim6KindINT8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim6KindINT8Queue
         ! type(LogicalDim6KindINT8QueueNode), target:: root
         ! type(LogicalDim6KindINT8QueueNode), pointer:: tail => root
         ! type(LogicalDim6KindINT8QueueNode), pointer:: head => root%next
         ! end type LogicalDim6KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim6KindINT8Queue
      function shiftLogicalDim6KindINT8Queue(self, value) result(isSuccess)
         type(LogicalDim6KindINT8Queue), intent(inout):: self
         Logical(kind=INT8), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim6KindINT8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim6KindINT8Queue
      function is_emptyLogicalDim6KindINT8Queue(self) result(answer)
         type(LogicalDim6KindINT8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim6KindINT8Queue
      subroutine pushLogicalDim6KindINT16Queue(self, value)
         type(LogicalDim6KindINT16Queue), intent(inout):: self
         Logical(kind=INT16), dimension(:, :, :, :, :, :), intent(in):: value
         type(LogicalDim6KindINT16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim6KindINT16Queue
         ! type(LogicalDim6KindINT16QueueNode), target:: root
         ! type(LogicalDim6KindINT16QueueNode), pointer:: tail => root
         ! type(LogicalDim6KindINT16QueueNode), pointer:: head => root%next
         ! end type LogicalDim6KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim6KindINT16Queue
      function shiftLogicalDim6KindINT16Queue(self, value) result(isSuccess)
         type(LogicalDim6KindINT16Queue), intent(inout):: self
         Logical(kind=INT16), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim6KindINT16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim6KindINT16Queue
      function is_emptyLogicalDim6KindINT16Queue(self) result(answer)
         type(LogicalDim6KindINT16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim6KindINT16Queue
      subroutine pushLogicalDim6KindINT32Queue(self, value)
         type(LogicalDim6KindINT32Queue), intent(inout):: self
         Logical(kind=INT32), dimension(:, :, :, :, :, :), intent(in):: value
         type(LogicalDim6KindINT32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim6KindINT32Queue
         ! type(LogicalDim6KindINT32QueueNode), target:: root
         ! type(LogicalDim6KindINT32QueueNode), pointer:: tail => root
         ! type(LogicalDim6KindINT32QueueNode), pointer:: head => root%next
         ! end type LogicalDim6KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim6KindINT32Queue
      function shiftLogicalDim6KindINT32Queue(self, value) result(isSuccess)
         type(LogicalDim6KindINT32Queue), intent(inout):: self
         Logical(kind=INT32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim6KindINT32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim6KindINT32Queue
      function is_emptyLogicalDim6KindINT32Queue(self) result(answer)
         type(LogicalDim6KindINT32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim6KindINT32Queue
      subroutine pushLogicalDim6KindINT64Queue(self, value)
         type(LogicalDim6KindINT64Queue), intent(inout):: self
         Logical(kind=INT64), dimension(:, :, :, :, :, :), intent(in):: value
         type(LogicalDim6KindINT64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim6KindINT64Queue
         ! type(LogicalDim6KindINT64QueueNode), target:: root
         ! type(LogicalDim6KindINT64QueueNode), pointer:: tail => root
         ! type(LogicalDim6KindINT64QueueNode), pointer:: head => root%next
         ! end type LogicalDim6KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim6KindINT64Queue
      function shiftLogicalDim6KindINT64Queue(self, value) result(isSuccess)
         type(LogicalDim6KindINT64Queue), intent(inout):: self
         Logical(kind=INT64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim6KindINT64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim6KindINT64Queue
      function is_emptyLogicalDim6KindINT64Queue(self) result(answer)
         type(LogicalDim6KindINT64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim6KindINT64Queue
      subroutine pushLogicalDim7KindINT8Queue(self, value)
         type(LogicalDim7KindINT8Queue), intent(inout):: self
         Logical(kind=INT8), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(LogicalDim7KindINT8QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim7KindINT8Queue
         ! type(LogicalDim7KindINT8QueueNode), target:: root
         ! type(LogicalDim7KindINT8QueueNode), pointer:: tail => root
         ! type(LogicalDim7KindINT8QueueNode), pointer:: head => root%next
         ! end type LogicalDim7KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim7KindINT8Queue
      function shiftLogicalDim7KindINT8Queue(self, value) result(isSuccess)
         type(LogicalDim7KindINT8Queue), intent(inout):: self
         Logical(kind=INT8), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim7KindINT8QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim7KindINT8Queue
      function is_emptyLogicalDim7KindINT8Queue(self) result(answer)
         type(LogicalDim7KindINT8Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim7KindINT8Queue
      subroutine pushLogicalDim7KindINT16Queue(self, value)
         type(LogicalDim7KindINT16Queue), intent(inout):: self
         Logical(kind=INT16), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(LogicalDim7KindINT16QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim7KindINT16Queue
         ! type(LogicalDim7KindINT16QueueNode), target:: root
         ! type(LogicalDim7KindINT16QueueNode), pointer:: tail => root
         ! type(LogicalDim7KindINT16QueueNode), pointer:: head => root%next
         ! end type LogicalDim7KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim7KindINT16Queue
      function shiftLogicalDim7KindINT16Queue(self, value) result(isSuccess)
         type(LogicalDim7KindINT16Queue), intent(inout):: self
         Logical(kind=INT16), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim7KindINT16QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim7KindINT16Queue
      function is_emptyLogicalDim7KindINT16Queue(self) result(answer)
         type(LogicalDim7KindINT16Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim7KindINT16Queue
      subroutine pushLogicalDim7KindINT32Queue(self, value)
         type(LogicalDim7KindINT32Queue), intent(inout):: self
         Logical(kind=INT32), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(LogicalDim7KindINT32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim7KindINT32Queue
         ! type(LogicalDim7KindINT32QueueNode), target:: root
         ! type(LogicalDim7KindINT32QueueNode), pointer:: tail => root
         ! type(LogicalDim7KindINT32QueueNode), pointer:: head => root%next
         ! end type LogicalDim7KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim7KindINT32Queue
      function shiftLogicalDim7KindINT32Queue(self, value) result(isSuccess)
         type(LogicalDim7KindINT32Queue), intent(inout):: self
         Logical(kind=INT32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim7KindINT32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim7KindINT32Queue
      function is_emptyLogicalDim7KindINT32Queue(self) result(answer)
         type(LogicalDim7KindINT32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim7KindINT32Queue
      subroutine pushLogicalDim7KindINT64Queue(self, value)
         type(LogicalDim7KindINT64Queue), intent(inout):: self
         Logical(kind=INT64), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(LogicalDim7KindINT64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim7KindINT64Queue
         ! type(LogicalDim7KindINT64QueueNode), target:: root
         ! type(LogicalDim7KindINT64QueueNode), pointer:: tail => root
         ! type(LogicalDim7KindINT64QueueNode), pointer:: head => root%next
         ! end type LogicalDim7KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushLogicalDim7KindINT64Queue
      function shiftLogicalDim7KindINT64Queue(self, value) result(isSuccess)
         type(LogicalDim7KindINT64Queue), intent(inout):: self
         Logical(kind=INT64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim7KindINT64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim7KindINT64Queue
      function is_emptyLogicalDim7KindINT64Queue(self) result(answer)
         type(LogicalDim7KindINT64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim7KindINT64Queue
      subroutine pushComplexDim0KindREAL32Queue(self, value)
         type(ComplexDim0KindREAL32Queue), intent(inout):: self
         Complex(kind=REAL32), intent(in):: value
         type(ComplexDim0KindREAL32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim0KindREAL32Queue
         ! type(ComplexDim0KindREAL32QueueNode), target:: root
         ! type(ComplexDim0KindREAL32QueueNode), pointer:: tail => root
         ! type(ComplexDim0KindREAL32QueueNode), pointer:: head => root%next
         ! end type ComplexDim0KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim0KindREAL32Queue
      function shiftComplexDim0KindREAL32Queue(self, value) result(isSuccess)
         type(ComplexDim0KindREAL32Queue), intent(inout):: self
         Complex(kind=REAL32), intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim0KindREAL32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim0KindREAL32Queue
      function is_emptyComplexDim0KindREAL32Queue(self) result(answer)
         type(ComplexDim0KindREAL32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim0KindREAL32Queue
      subroutine pushComplexDim0KindREAL64Queue(self, value)
         type(ComplexDim0KindREAL64Queue), intent(inout):: self
         Complex(kind=REAL64), intent(in):: value
         type(ComplexDim0KindREAL64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim0KindREAL64Queue
         ! type(ComplexDim0KindREAL64QueueNode), target:: root
         ! type(ComplexDim0KindREAL64QueueNode), pointer:: tail => root
         ! type(ComplexDim0KindREAL64QueueNode), pointer:: head => root%next
         ! end type ComplexDim0KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim0KindREAL64Queue
      function shiftComplexDim0KindREAL64Queue(self, value) result(isSuccess)
         type(ComplexDim0KindREAL64Queue), intent(inout):: self
         Complex(kind=REAL64), intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim0KindREAL64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim0KindREAL64Queue
      function is_emptyComplexDim0KindREAL64Queue(self) result(answer)
         type(ComplexDim0KindREAL64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim0KindREAL64Queue
      subroutine pushComplexDim0KindREAL128Queue(self, value)
         type(ComplexDim0KindREAL128Queue), intent(inout):: self
         Complex(kind=REAL128), intent(in):: value
         type(ComplexDim0KindREAL128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim0KindREAL128Queue
         ! type(ComplexDim0KindREAL128QueueNode), target:: root
         ! type(ComplexDim0KindREAL128QueueNode), pointer:: tail => root
         ! type(ComplexDim0KindREAL128QueueNode), pointer:: head => root%next
         ! end type ComplexDim0KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim0KindREAL128Queue
      function shiftComplexDim0KindREAL128Queue(self, value) result(isSuccess)
         type(ComplexDim0KindREAL128Queue), intent(inout):: self
         Complex(kind=REAL128), intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim0KindREAL128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim0KindREAL128Queue
      function is_emptyComplexDim0KindREAL128Queue(self) result(answer)
         type(ComplexDim0KindREAL128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim0KindREAL128Queue
      subroutine pushComplexDim1KindREAL32Queue(self, value)
         type(ComplexDim1KindREAL32Queue), intent(inout):: self
         Complex(kind=REAL32), dimension(:), intent(in):: value
         type(ComplexDim1KindREAL32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim1KindREAL32Queue
         ! type(ComplexDim1KindREAL32QueueNode), target:: root
         ! type(ComplexDim1KindREAL32QueueNode), pointer:: tail => root
         ! type(ComplexDim1KindREAL32QueueNode), pointer:: head => root%next
         ! end type ComplexDim1KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim1KindREAL32Queue
      function shiftComplexDim1KindREAL32Queue(self, value) result(isSuccess)
         type(ComplexDim1KindREAL32Queue), intent(inout):: self
         Complex(kind=REAL32), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim1KindREAL32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim1KindREAL32Queue
      function is_emptyComplexDim1KindREAL32Queue(self) result(answer)
         type(ComplexDim1KindREAL32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim1KindREAL32Queue
      subroutine pushComplexDim1KindREAL64Queue(self, value)
         type(ComplexDim1KindREAL64Queue), intent(inout):: self
         Complex(kind=REAL64), dimension(:), intent(in):: value
         type(ComplexDim1KindREAL64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim1KindREAL64Queue
         ! type(ComplexDim1KindREAL64QueueNode), target:: root
         ! type(ComplexDim1KindREAL64QueueNode), pointer:: tail => root
         ! type(ComplexDim1KindREAL64QueueNode), pointer:: head => root%next
         ! end type ComplexDim1KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim1KindREAL64Queue
      function shiftComplexDim1KindREAL64Queue(self, value) result(isSuccess)
         type(ComplexDim1KindREAL64Queue), intent(inout):: self
         Complex(kind=REAL64), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim1KindREAL64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim1KindREAL64Queue
      function is_emptyComplexDim1KindREAL64Queue(self) result(answer)
         type(ComplexDim1KindREAL64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim1KindREAL64Queue
      subroutine pushComplexDim1KindREAL128Queue(self, value)
         type(ComplexDim1KindREAL128Queue), intent(inout):: self
         Complex(kind=REAL128), dimension(:), intent(in):: value
         type(ComplexDim1KindREAL128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim1KindREAL128Queue
         ! type(ComplexDim1KindREAL128QueueNode), target:: root
         ! type(ComplexDim1KindREAL128QueueNode), pointer:: tail => root
         ! type(ComplexDim1KindREAL128QueueNode), pointer:: head => root%next
         ! end type ComplexDim1KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim1KindREAL128Queue
      function shiftComplexDim1KindREAL128Queue(self, value) result(isSuccess)
         type(ComplexDim1KindREAL128Queue), intent(inout):: self
         Complex(kind=REAL128), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim1KindREAL128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim1KindREAL128Queue
      function is_emptyComplexDim1KindREAL128Queue(self) result(answer)
         type(ComplexDim1KindREAL128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim1KindREAL128Queue
      subroutine pushComplexDim2KindREAL32Queue(self, value)
         type(ComplexDim2KindREAL32Queue), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :), intent(in):: value
         type(ComplexDim2KindREAL32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim2KindREAL32Queue
         ! type(ComplexDim2KindREAL32QueueNode), target:: root
         ! type(ComplexDim2KindREAL32QueueNode), pointer:: tail => root
         ! type(ComplexDim2KindREAL32QueueNode), pointer:: head => root%next
         ! end type ComplexDim2KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim2KindREAL32Queue
      function shiftComplexDim2KindREAL32Queue(self, value) result(isSuccess)
         type(ComplexDim2KindREAL32Queue), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim2KindREAL32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim2KindREAL32Queue
      function is_emptyComplexDim2KindREAL32Queue(self) result(answer)
         type(ComplexDim2KindREAL32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim2KindREAL32Queue
      subroutine pushComplexDim2KindREAL64Queue(self, value)
         type(ComplexDim2KindREAL64Queue), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :), intent(in):: value
         type(ComplexDim2KindREAL64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim2KindREAL64Queue
         ! type(ComplexDim2KindREAL64QueueNode), target:: root
         ! type(ComplexDim2KindREAL64QueueNode), pointer:: tail => root
         ! type(ComplexDim2KindREAL64QueueNode), pointer:: head => root%next
         ! end type ComplexDim2KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim2KindREAL64Queue
      function shiftComplexDim2KindREAL64Queue(self, value) result(isSuccess)
         type(ComplexDim2KindREAL64Queue), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim2KindREAL64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim2KindREAL64Queue
      function is_emptyComplexDim2KindREAL64Queue(self) result(answer)
         type(ComplexDim2KindREAL64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim2KindREAL64Queue
      subroutine pushComplexDim2KindREAL128Queue(self, value)
         type(ComplexDim2KindREAL128Queue), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :), intent(in):: value
         type(ComplexDim2KindREAL128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim2KindREAL128Queue
         ! type(ComplexDim2KindREAL128QueueNode), target:: root
         ! type(ComplexDim2KindREAL128QueueNode), pointer:: tail => root
         ! type(ComplexDim2KindREAL128QueueNode), pointer:: head => root%next
         ! end type ComplexDim2KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim2KindREAL128Queue
      function shiftComplexDim2KindREAL128Queue(self, value) result(isSuccess)
         type(ComplexDim2KindREAL128Queue), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim2KindREAL128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim2KindREAL128Queue
      function is_emptyComplexDim2KindREAL128Queue(self) result(answer)
         type(ComplexDim2KindREAL128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim2KindREAL128Queue
      subroutine pushComplexDim3KindREAL32Queue(self, value)
         type(ComplexDim3KindREAL32Queue), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :), intent(in):: value
         type(ComplexDim3KindREAL32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim3KindREAL32Queue
         ! type(ComplexDim3KindREAL32QueueNode), target:: root
         ! type(ComplexDim3KindREAL32QueueNode), pointer:: tail => root
         ! type(ComplexDim3KindREAL32QueueNode), pointer:: head => root%next
         ! end type ComplexDim3KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim3KindREAL32Queue
      function shiftComplexDim3KindREAL32Queue(self, value) result(isSuccess)
         type(ComplexDim3KindREAL32Queue), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim3KindREAL32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim3KindREAL32Queue
      function is_emptyComplexDim3KindREAL32Queue(self) result(answer)
         type(ComplexDim3KindREAL32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim3KindREAL32Queue
      subroutine pushComplexDim3KindREAL64Queue(self, value)
         type(ComplexDim3KindREAL64Queue), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :), intent(in):: value
         type(ComplexDim3KindREAL64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim3KindREAL64Queue
         ! type(ComplexDim3KindREAL64QueueNode), target:: root
         ! type(ComplexDim3KindREAL64QueueNode), pointer:: tail => root
         ! type(ComplexDim3KindREAL64QueueNode), pointer:: head => root%next
         ! end type ComplexDim3KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim3KindREAL64Queue
      function shiftComplexDim3KindREAL64Queue(self, value) result(isSuccess)
         type(ComplexDim3KindREAL64Queue), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim3KindREAL64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim3KindREAL64Queue
      function is_emptyComplexDim3KindREAL64Queue(self) result(answer)
         type(ComplexDim3KindREAL64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim3KindREAL64Queue
      subroutine pushComplexDim3KindREAL128Queue(self, value)
         type(ComplexDim3KindREAL128Queue), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :), intent(in):: value
         type(ComplexDim3KindREAL128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim3KindREAL128Queue
         ! type(ComplexDim3KindREAL128QueueNode), target:: root
         ! type(ComplexDim3KindREAL128QueueNode), pointer:: tail => root
         ! type(ComplexDim3KindREAL128QueueNode), pointer:: head => root%next
         ! end type ComplexDim3KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim3KindREAL128Queue
      function shiftComplexDim3KindREAL128Queue(self, value) result(isSuccess)
         type(ComplexDim3KindREAL128Queue), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim3KindREAL128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim3KindREAL128Queue
      function is_emptyComplexDim3KindREAL128Queue(self) result(answer)
         type(ComplexDim3KindREAL128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim3KindREAL128Queue
      subroutine pushComplexDim4KindREAL32Queue(self, value)
         type(ComplexDim4KindREAL32Queue), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :, :), intent(in):: value
         type(ComplexDim4KindREAL32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim4KindREAL32Queue
         ! type(ComplexDim4KindREAL32QueueNode), target:: root
         ! type(ComplexDim4KindREAL32QueueNode), pointer:: tail => root
         ! type(ComplexDim4KindREAL32QueueNode), pointer:: head => root%next
         ! end type ComplexDim4KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim4KindREAL32Queue
      function shiftComplexDim4KindREAL32Queue(self, value) result(isSuccess)
         type(ComplexDim4KindREAL32Queue), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim4KindREAL32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim4KindREAL32Queue
      function is_emptyComplexDim4KindREAL32Queue(self) result(answer)
         type(ComplexDim4KindREAL32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim4KindREAL32Queue
      subroutine pushComplexDim4KindREAL64Queue(self, value)
         type(ComplexDim4KindREAL64Queue), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :, :), intent(in):: value
         type(ComplexDim4KindREAL64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim4KindREAL64Queue
         ! type(ComplexDim4KindREAL64QueueNode), target:: root
         ! type(ComplexDim4KindREAL64QueueNode), pointer:: tail => root
         ! type(ComplexDim4KindREAL64QueueNode), pointer:: head => root%next
         ! end type ComplexDim4KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim4KindREAL64Queue
      function shiftComplexDim4KindREAL64Queue(self, value) result(isSuccess)
         type(ComplexDim4KindREAL64Queue), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim4KindREAL64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim4KindREAL64Queue
      function is_emptyComplexDim4KindREAL64Queue(self) result(answer)
         type(ComplexDim4KindREAL64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim4KindREAL64Queue
      subroutine pushComplexDim4KindREAL128Queue(self, value)
         type(ComplexDim4KindREAL128Queue), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :, :), intent(in):: value
         type(ComplexDim4KindREAL128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim4KindREAL128Queue
         ! type(ComplexDim4KindREAL128QueueNode), target:: root
         ! type(ComplexDim4KindREAL128QueueNode), pointer:: tail => root
         ! type(ComplexDim4KindREAL128QueueNode), pointer:: head => root%next
         ! end type ComplexDim4KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim4KindREAL128Queue
      function shiftComplexDim4KindREAL128Queue(self, value) result(isSuccess)
         type(ComplexDim4KindREAL128Queue), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim4KindREAL128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim4KindREAL128Queue
      function is_emptyComplexDim4KindREAL128Queue(self) result(answer)
         type(ComplexDim4KindREAL128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim4KindREAL128Queue
      subroutine pushComplexDim5KindREAL32Queue(self, value)
         type(ComplexDim5KindREAL32Queue), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :, :, :), intent(in):: value
         type(ComplexDim5KindREAL32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim5KindREAL32Queue
         ! type(ComplexDim5KindREAL32QueueNode), target:: root
         ! type(ComplexDim5KindREAL32QueueNode), pointer:: tail => root
         ! type(ComplexDim5KindREAL32QueueNode), pointer:: head => root%next
         ! end type ComplexDim5KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim5KindREAL32Queue
      function shiftComplexDim5KindREAL32Queue(self, value) result(isSuccess)
         type(ComplexDim5KindREAL32Queue), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim5KindREAL32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim5KindREAL32Queue
      function is_emptyComplexDim5KindREAL32Queue(self) result(answer)
         type(ComplexDim5KindREAL32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim5KindREAL32Queue
      subroutine pushComplexDim5KindREAL64Queue(self, value)
         type(ComplexDim5KindREAL64Queue), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :, :, :), intent(in):: value
         type(ComplexDim5KindREAL64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim5KindREAL64Queue
         ! type(ComplexDim5KindREAL64QueueNode), target:: root
         ! type(ComplexDim5KindREAL64QueueNode), pointer:: tail => root
         ! type(ComplexDim5KindREAL64QueueNode), pointer:: head => root%next
         ! end type ComplexDim5KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim5KindREAL64Queue
      function shiftComplexDim5KindREAL64Queue(self, value) result(isSuccess)
         type(ComplexDim5KindREAL64Queue), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim5KindREAL64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim5KindREAL64Queue
      function is_emptyComplexDim5KindREAL64Queue(self) result(answer)
         type(ComplexDim5KindREAL64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim5KindREAL64Queue
      subroutine pushComplexDim5KindREAL128Queue(self, value)
         type(ComplexDim5KindREAL128Queue), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :, :, :), intent(in):: value
         type(ComplexDim5KindREAL128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim5KindREAL128Queue
         ! type(ComplexDim5KindREAL128QueueNode), target:: root
         ! type(ComplexDim5KindREAL128QueueNode), pointer:: tail => root
         ! type(ComplexDim5KindREAL128QueueNode), pointer:: head => root%next
         ! end type ComplexDim5KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim5KindREAL128Queue
      function shiftComplexDim5KindREAL128Queue(self, value) result(isSuccess)
         type(ComplexDim5KindREAL128Queue), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim5KindREAL128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim5KindREAL128Queue
      function is_emptyComplexDim5KindREAL128Queue(self) result(answer)
         type(ComplexDim5KindREAL128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim5KindREAL128Queue
      subroutine pushComplexDim6KindREAL32Queue(self, value)
         type(ComplexDim6KindREAL32Queue), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :, :, :, :), intent(in):: value
         type(ComplexDim6KindREAL32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim6KindREAL32Queue
         ! type(ComplexDim6KindREAL32QueueNode), target:: root
         ! type(ComplexDim6KindREAL32QueueNode), pointer:: tail => root
         ! type(ComplexDim6KindREAL32QueueNode), pointer:: head => root%next
         ! end type ComplexDim6KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim6KindREAL32Queue
      function shiftComplexDim6KindREAL32Queue(self, value) result(isSuccess)
         type(ComplexDim6KindREAL32Queue), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim6KindREAL32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim6KindREAL32Queue
      function is_emptyComplexDim6KindREAL32Queue(self) result(answer)
         type(ComplexDim6KindREAL32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim6KindREAL32Queue
      subroutine pushComplexDim6KindREAL64Queue(self, value)
         type(ComplexDim6KindREAL64Queue), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :, :, :, :), intent(in):: value
         type(ComplexDim6KindREAL64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim6KindREAL64Queue
         ! type(ComplexDim6KindREAL64QueueNode), target:: root
         ! type(ComplexDim6KindREAL64QueueNode), pointer:: tail => root
         ! type(ComplexDim6KindREAL64QueueNode), pointer:: head => root%next
         ! end type ComplexDim6KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim6KindREAL64Queue
      function shiftComplexDim6KindREAL64Queue(self, value) result(isSuccess)
         type(ComplexDim6KindREAL64Queue), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim6KindREAL64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim6KindREAL64Queue
      function is_emptyComplexDim6KindREAL64Queue(self) result(answer)
         type(ComplexDim6KindREAL64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim6KindREAL64Queue
      subroutine pushComplexDim6KindREAL128Queue(self, value)
         type(ComplexDim6KindREAL128Queue), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :, :, :, :), intent(in):: value
         type(ComplexDim6KindREAL128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim6KindREAL128Queue
         ! type(ComplexDim6KindREAL128QueueNode), target:: root
         ! type(ComplexDim6KindREAL128QueueNode), pointer:: tail => root
         ! type(ComplexDim6KindREAL128QueueNode), pointer:: head => root%next
         ! end type ComplexDim6KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim6KindREAL128Queue
      function shiftComplexDim6KindREAL128Queue(self, value) result(isSuccess)
         type(ComplexDim6KindREAL128Queue), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim6KindREAL128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim6KindREAL128Queue
      function is_emptyComplexDim6KindREAL128Queue(self) result(answer)
         type(ComplexDim6KindREAL128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim6KindREAL128Queue
      subroutine pushComplexDim7KindREAL32Queue(self, value)
         type(ComplexDim7KindREAL32Queue), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(ComplexDim7KindREAL32QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim7KindREAL32Queue
         ! type(ComplexDim7KindREAL32QueueNode), target:: root
         ! type(ComplexDim7KindREAL32QueueNode), pointer:: tail => root
         ! type(ComplexDim7KindREAL32QueueNode), pointer:: head => root%next
         ! end type ComplexDim7KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim7KindREAL32Queue
      function shiftComplexDim7KindREAL32Queue(self, value) result(isSuccess)
         type(ComplexDim7KindREAL32Queue), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim7KindREAL32QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim7KindREAL32Queue
      function is_emptyComplexDim7KindREAL32Queue(self) result(answer)
         type(ComplexDim7KindREAL32Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim7KindREAL32Queue
      subroutine pushComplexDim7KindREAL64Queue(self, value)
         type(ComplexDim7KindREAL64Queue), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(ComplexDim7KindREAL64QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim7KindREAL64Queue
         ! type(ComplexDim7KindREAL64QueueNode), target:: root
         ! type(ComplexDim7KindREAL64QueueNode), pointer:: tail => root
         ! type(ComplexDim7KindREAL64QueueNode), pointer:: head => root%next
         ! end type ComplexDim7KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim7KindREAL64Queue
      function shiftComplexDim7KindREAL64Queue(self, value) result(isSuccess)
         type(ComplexDim7KindREAL64Queue), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim7KindREAL64QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim7KindREAL64Queue
      function is_emptyComplexDim7KindREAL64Queue(self) result(answer)
         type(ComplexDim7KindREAL64Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim7KindREAL64Queue
      subroutine pushComplexDim7KindREAL128Queue(self, value)
         type(ComplexDim7KindREAL128Queue), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(ComplexDim7KindREAL128QueueNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim7KindREAL128Queue
         ! type(ComplexDim7KindREAL128QueueNode), target:: root
         ! type(ComplexDim7KindREAL128QueueNode), pointer:: tail => root
         ! type(ComplexDim7KindREAL128QueueNode), pointer:: head => root%next
         ! end type ComplexDim7KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! self%tail%next => newNode
         if(is_empty(self))then
            self%head => newNode
         else
            self%tail%next => newNode
         end if
         self%tail => newNode
      end subroutine pushComplexDim7KindREAL128Queue
      function shiftComplexDim7KindREAL128Queue(self, value) result(isSuccess)
         type(ComplexDim7KindREAL128Queue), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim7KindREAL128QueueNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%head%value
         removedNode => self%head
         self%head => self%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim7KindREAL128Queue
      function is_emptyComplexDim7KindREAL128Queue(self) result(answer)
         type(ComplexDim7KindREAL128Queue), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim7KindREAL128Queue
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
