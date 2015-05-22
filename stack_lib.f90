module stack_lib
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
   implicit none
   private
   public:: push
   public:: pop
      interface push
         module procedure pushRealDim0KindREAL32Stack
      end interface push
      interface pop
         module procedure popRealDim0KindREAL32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim0KindREAL32Stack
      end interface is_empty
      interface push
         module procedure pushRealDim0KindREAL64Stack
      end interface push
      interface pop
         module procedure popRealDim0KindREAL64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim0KindREAL64Stack
      end interface is_empty
      interface push
         module procedure pushRealDim0KindREAL128Stack
      end interface push
      interface pop
         module procedure popRealDim0KindREAL128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim0KindREAL128Stack
      end interface is_empty
      interface push
         module procedure pushRealDim1KindREAL32Stack
      end interface push
      interface pop
         module procedure popRealDim1KindREAL32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim1KindREAL32Stack
      end interface is_empty
      interface push
         module procedure pushRealDim1KindREAL64Stack
      end interface push
      interface pop
         module procedure popRealDim1KindREAL64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim1KindREAL64Stack
      end interface is_empty
      interface push
         module procedure pushRealDim1KindREAL128Stack
      end interface push
      interface pop
         module procedure popRealDim1KindREAL128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim1KindREAL128Stack
      end interface is_empty
      interface push
         module procedure pushRealDim2KindREAL32Stack
      end interface push
      interface pop
         module procedure popRealDim2KindREAL32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim2KindREAL32Stack
      end interface is_empty
      interface push
         module procedure pushRealDim2KindREAL64Stack
      end interface push
      interface pop
         module procedure popRealDim2KindREAL64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim2KindREAL64Stack
      end interface is_empty
      interface push
         module procedure pushRealDim2KindREAL128Stack
      end interface push
      interface pop
         module procedure popRealDim2KindREAL128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim2KindREAL128Stack
      end interface is_empty
      interface push
         module procedure pushRealDim3KindREAL32Stack
      end interface push
      interface pop
         module procedure popRealDim3KindREAL32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim3KindREAL32Stack
      end interface is_empty
      interface push
         module procedure pushRealDim3KindREAL64Stack
      end interface push
      interface pop
         module procedure popRealDim3KindREAL64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim3KindREAL64Stack
      end interface is_empty
      interface push
         module procedure pushRealDim3KindREAL128Stack
      end interface push
      interface pop
         module procedure popRealDim3KindREAL128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim3KindREAL128Stack
      end interface is_empty
      interface push
         module procedure pushRealDim4KindREAL32Stack
      end interface push
      interface pop
         module procedure popRealDim4KindREAL32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim4KindREAL32Stack
      end interface is_empty
      interface push
         module procedure pushRealDim4KindREAL64Stack
      end interface push
      interface pop
         module procedure popRealDim4KindREAL64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim4KindREAL64Stack
      end interface is_empty
      interface push
         module procedure pushRealDim4KindREAL128Stack
      end interface push
      interface pop
         module procedure popRealDim4KindREAL128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim4KindREAL128Stack
      end interface is_empty
      interface push
         module procedure pushRealDim5KindREAL32Stack
      end interface push
      interface pop
         module procedure popRealDim5KindREAL32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim5KindREAL32Stack
      end interface is_empty
      interface push
         module procedure pushRealDim5KindREAL64Stack
      end interface push
      interface pop
         module procedure popRealDim5KindREAL64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim5KindREAL64Stack
      end interface is_empty
      interface push
         module procedure pushRealDim5KindREAL128Stack
      end interface push
      interface pop
         module procedure popRealDim5KindREAL128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim5KindREAL128Stack
      end interface is_empty
      interface push
         module procedure pushRealDim6KindREAL32Stack
      end interface push
      interface pop
         module procedure popRealDim6KindREAL32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim6KindREAL32Stack
      end interface is_empty
      interface push
         module procedure pushRealDim6KindREAL64Stack
      end interface push
      interface pop
         module procedure popRealDim6KindREAL64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim6KindREAL64Stack
      end interface is_empty
      interface push
         module procedure pushRealDim6KindREAL128Stack
      end interface push
      interface pop
         module procedure popRealDim6KindREAL128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim6KindREAL128Stack
      end interface is_empty
      interface push
         module procedure pushRealDim7KindREAL32Stack
      end interface push
      interface pop
         module procedure popRealDim7KindREAL32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim7KindREAL32Stack
      end interface is_empty
      interface push
         module procedure pushRealDim7KindREAL64Stack
      end interface push
      interface pop
         module procedure popRealDim7KindREAL64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim7KindREAL64Stack
      end interface is_empty
      interface push
         module procedure pushRealDim7KindREAL128Stack
      end interface push
      interface pop
         module procedure popRealDim7KindREAL128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyRealDim7KindREAL128Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim0KindINT8Stack
      end interface push
      interface pop
         module procedure popIntegerDim0KindINT8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim0KindINT8Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim0KindINT16Stack
      end interface push
      interface pop
         module procedure popIntegerDim0KindINT16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim0KindINT16Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim0KindINT32Stack
      end interface push
      interface pop
         module procedure popIntegerDim0KindINT32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim0KindINT32Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim0KindINT64Stack
      end interface push
      interface pop
         module procedure popIntegerDim0KindINT64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim0KindINT64Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim1KindINT8Stack
      end interface push
      interface pop
         module procedure popIntegerDim1KindINT8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim1KindINT8Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim1KindINT16Stack
      end interface push
      interface pop
         module procedure popIntegerDim1KindINT16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim1KindINT16Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim1KindINT32Stack
      end interface push
      interface pop
         module procedure popIntegerDim1KindINT32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim1KindINT32Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim1KindINT64Stack
      end interface push
      interface pop
         module procedure popIntegerDim1KindINT64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim1KindINT64Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim2KindINT8Stack
      end interface push
      interface pop
         module procedure popIntegerDim2KindINT8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim2KindINT8Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim2KindINT16Stack
      end interface push
      interface pop
         module procedure popIntegerDim2KindINT16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim2KindINT16Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim2KindINT32Stack
      end interface push
      interface pop
         module procedure popIntegerDim2KindINT32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim2KindINT32Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim2KindINT64Stack
      end interface push
      interface pop
         module procedure popIntegerDim2KindINT64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim2KindINT64Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim3KindINT8Stack
      end interface push
      interface pop
         module procedure popIntegerDim3KindINT8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim3KindINT8Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim3KindINT16Stack
      end interface push
      interface pop
         module procedure popIntegerDim3KindINT16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim3KindINT16Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim3KindINT32Stack
      end interface push
      interface pop
         module procedure popIntegerDim3KindINT32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim3KindINT32Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim3KindINT64Stack
      end interface push
      interface pop
         module procedure popIntegerDim3KindINT64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim3KindINT64Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim4KindINT8Stack
      end interface push
      interface pop
         module procedure popIntegerDim4KindINT8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim4KindINT8Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim4KindINT16Stack
      end interface push
      interface pop
         module procedure popIntegerDim4KindINT16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim4KindINT16Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim4KindINT32Stack
      end interface push
      interface pop
         module procedure popIntegerDim4KindINT32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim4KindINT32Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim4KindINT64Stack
      end interface push
      interface pop
         module procedure popIntegerDim4KindINT64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim4KindINT64Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim5KindINT8Stack
      end interface push
      interface pop
         module procedure popIntegerDim5KindINT8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim5KindINT8Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim5KindINT16Stack
      end interface push
      interface pop
         module procedure popIntegerDim5KindINT16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim5KindINT16Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim5KindINT32Stack
      end interface push
      interface pop
         module procedure popIntegerDim5KindINT32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim5KindINT32Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim5KindINT64Stack
      end interface push
      interface pop
         module procedure popIntegerDim5KindINT64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim5KindINT64Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim6KindINT8Stack
      end interface push
      interface pop
         module procedure popIntegerDim6KindINT8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim6KindINT8Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim6KindINT16Stack
      end interface push
      interface pop
         module procedure popIntegerDim6KindINT16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim6KindINT16Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim6KindINT32Stack
      end interface push
      interface pop
         module procedure popIntegerDim6KindINT32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim6KindINT32Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim6KindINT64Stack
      end interface push
      interface pop
         module procedure popIntegerDim6KindINT64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim6KindINT64Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim7KindINT8Stack
      end interface push
      interface pop
         module procedure popIntegerDim7KindINT8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim7KindINT8Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim7KindINT16Stack
      end interface push
      interface pop
         module procedure popIntegerDim7KindINT16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim7KindINT16Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim7KindINT32Stack
      end interface push
      interface pop
         module procedure popIntegerDim7KindINT32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim7KindINT32Stack
      end interface is_empty
      interface push
         module procedure pushIntegerDim7KindINT64Stack
      end interface push
      interface pop
         module procedure popIntegerDim7KindINT64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyIntegerDim7KindINT64Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim0KindINT8Stack
      end interface push
      interface pop
         module procedure popLogicalDim0KindINT8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim0KindINT8Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim0KindINT16Stack
      end interface push
      interface pop
         module procedure popLogicalDim0KindINT16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim0KindINT16Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim0KindINT32Stack
      end interface push
      interface pop
         module procedure popLogicalDim0KindINT32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim0KindINT32Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim0KindINT64Stack
      end interface push
      interface pop
         module procedure popLogicalDim0KindINT64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim0KindINT64Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim1KindINT8Stack
      end interface push
      interface pop
         module procedure popLogicalDim1KindINT8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim1KindINT8Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim1KindINT16Stack
      end interface push
      interface pop
         module procedure popLogicalDim1KindINT16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim1KindINT16Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim1KindINT32Stack
      end interface push
      interface pop
         module procedure popLogicalDim1KindINT32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim1KindINT32Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim1KindINT64Stack
      end interface push
      interface pop
         module procedure popLogicalDim1KindINT64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim1KindINT64Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim2KindINT8Stack
      end interface push
      interface pop
         module procedure popLogicalDim2KindINT8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim2KindINT8Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim2KindINT16Stack
      end interface push
      interface pop
         module procedure popLogicalDim2KindINT16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim2KindINT16Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim2KindINT32Stack
      end interface push
      interface pop
         module procedure popLogicalDim2KindINT32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim2KindINT32Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim2KindINT64Stack
      end interface push
      interface pop
         module procedure popLogicalDim2KindINT64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim2KindINT64Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim3KindINT8Stack
      end interface push
      interface pop
         module procedure popLogicalDim3KindINT8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim3KindINT8Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim3KindINT16Stack
      end interface push
      interface pop
         module procedure popLogicalDim3KindINT16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim3KindINT16Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim3KindINT32Stack
      end interface push
      interface pop
         module procedure popLogicalDim3KindINT32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim3KindINT32Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim3KindINT64Stack
      end interface push
      interface pop
         module procedure popLogicalDim3KindINT64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim3KindINT64Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim4KindINT8Stack
      end interface push
      interface pop
         module procedure popLogicalDim4KindINT8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim4KindINT8Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim4KindINT16Stack
      end interface push
      interface pop
         module procedure popLogicalDim4KindINT16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim4KindINT16Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim4KindINT32Stack
      end interface push
      interface pop
         module procedure popLogicalDim4KindINT32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim4KindINT32Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim4KindINT64Stack
      end interface push
      interface pop
         module procedure popLogicalDim4KindINT64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim4KindINT64Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim5KindINT8Stack
      end interface push
      interface pop
         module procedure popLogicalDim5KindINT8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim5KindINT8Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim5KindINT16Stack
      end interface push
      interface pop
         module procedure popLogicalDim5KindINT16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim5KindINT16Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim5KindINT32Stack
      end interface push
      interface pop
         module procedure popLogicalDim5KindINT32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim5KindINT32Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim5KindINT64Stack
      end interface push
      interface pop
         module procedure popLogicalDim5KindINT64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim5KindINT64Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim6KindINT8Stack
      end interface push
      interface pop
         module procedure popLogicalDim6KindINT8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim6KindINT8Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim6KindINT16Stack
      end interface push
      interface pop
         module procedure popLogicalDim6KindINT16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim6KindINT16Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim6KindINT32Stack
      end interface push
      interface pop
         module procedure popLogicalDim6KindINT32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim6KindINT32Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim6KindINT64Stack
      end interface push
      interface pop
         module procedure popLogicalDim6KindINT64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim6KindINT64Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim7KindINT8Stack
      end interface push
      interface pop
         module procedure popLogicalDim7KindINT8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim7KindINT8Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim7KindINT16Stack
      end interface push
      interface pop
         module procedure popLogicalDim7KindINT16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim7KindINT16Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim7KindINT32Stack
      end interface push
      interface pop
         module procedure popLogicalDim7KindINT32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim7KindINT32Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim7KindINT64Stack
      end interface push
      interface pop
         module procedure popLogicalDim7KindINT64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim7KindINT64Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim0KindREAL32Stack
      end interface push
      interface pop
         module procedure popComplexDim0KindREAL32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim0KindREAL32Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim0KindREAL64Stack
      end interface push
      interface pop
         module procedure popComplexDim0KindREAL64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim0KindREAL64Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim0KindREAL128Stack
      end interface push
      interface pop
         module procedure popComplexDim0KindREAL128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim0KindREAL128Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim1KindREAL32Stack
      end interface push
      interface pop
         module procedure popComplexDim1KindREAL32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim1KindREAL32Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim1KindREAL64Stack
      end interface push
      interface pop
         module procedure popComplexDim1KindREAL64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim1KindREAL64Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim1KindREAL128Stack
      end interface push
      interface pop
         module procedure popComplexDim1KindREAL128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim1KindREAL128Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim2KindREAL32Stack
      end interface push
      interface pop
         module procedure popComplexDim2KindREAL32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim2KindREAL32Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim2KindREAL64Stack
      end interface push
      interface pop
         module procedure popComplexDim2KindREAL64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim2KindREAL64Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim2KindREAL128Stack
      end interface push
      interface pop
         module procedure popComplexDim2KindREAL128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim2KindREAL128Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim3KindREAL32Stack
      end interface push
      interface pop
         module procedure popComplexDim3KindREAL32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim3KindREAL32Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim3KindREAL64Stack
      end interface push
      interface pop
         module procedure popComplexDim3KindREAL64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim3KindREAL64Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim3KindREAL128Stack
      end interface push
      interface pop
         module procedure popComplexDim3KindREAL128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim3KindREAL128Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim4KindREAL32Stack
      end interface push
      interface pop
         module procedure popComplexDim4KindREAL32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim4KindREAL32Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim4KindREAL64Stack
      end interface push
      interface pop
         module procedure popComplexDim4KindREAL64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim4KindREAL64Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim4KindREAL128Stack
      end interface push
      interface pop
         module procedure popComplexDim4KindREAL128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim4KindREAL128Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim5KindREAL32Stack
      end interface push
      interface pop
         module procedure popComplexDim5KindREAL32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim5KindREAL32Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim5KindREAL64Stack
      end interface push
      interface pop
         module procedure popComplexDim5KindREAL64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim5KindREAL64Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim5KindREAL128Stack
      end interface push
      interface pop
         module procedure popComplexDim5KindREAL128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim5KindREAL128Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim6KindREAL32Stack
      end interface push
      interface pop
         module procedure popComplexDim6KindREAL32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim6KindREAL32Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim6KindREAL64Stack
      end interface push
      interface pop
         module procedure popComplexDim6KindREAL64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim6KindREAL64Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim6KindREAL128Stack
      end interface push
      interface pop
         module procedure popComplexDim6KindREAL128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim6KindREAL128Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim7KindREAL32Stack
      end interface push
      interface pop
         module procedure popComplexDim7KindREAL32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim7KindREAL32Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim7KindREAL64Stack
      end interface push
      interface pop
         module procedure popComplexDim7KindREAL64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim7KindREAL64Stack
      end interface is_empty
      interface push
         module procedure pushComplexDim7KindREAL128Stack
      end interface push
      interface pop
         module procedure popComplexDim7KindREAL128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyComplexDim7KindREAL128Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim0Len0Stack
      end interface push
      interface pop
         module procedure popCharacterDim0Len0Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim0Len0Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim1Len0Stack
      end interface push
      interface pop
         module procedure popCharacterDim1Len0Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim1Len0Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim2Len0Stack
      end interface push
      interface pop
         module procedure popCharacterDim2Len0Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim2Len0Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim3Len0Stack
      end interface push
      interface pop
         module procedure popCharacterDim3Len0Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim3Len0Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim4Len0Stack
      end interface push
      interface pop
         module procedure popCharacterDim4Len0Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim4Len0Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim5Len0Stack
      end interface push
      interface pop
         module procedure popCharacterDim5Len0Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim5Len0Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim6Len0Stack
      end interface push
      interface pop
         module procedure popCharacterDim6Len0Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim6Len0Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim7Len0Stack
      end interface push
      interface pop
         module procedure popCharacterDim7Len0Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim7Len0Stack
      end interface is_empty
   type, public:: Stack
   end type Stack
   type:: StackNode
   end type StackNode
      type, extends(Stack), public:: RealDim0KindREAL32Stack
         type(RealDim0KindREAL32StackNode), pointer:: head => null()
      end type RealDim0KindREAL32Stack
      type, extends(StackNode):: RealDim0KindREAL32StackNode
         Real(kind=REAL32):: val
         type(RealDim0KindREAL32StackNode), pointer:: prev => null()
      end type RealDim0KindREAL32StackNode
      type, extends(Stack), public:: RealDim0KindREAL64Stack
         type(RealDim0KindREAL64StackNode), pointer:: head => null()
      end type RealDim0KindREAL64Stack
      type, extends(StackNode):: RealDim0KindREAL64StackNode
         Real(kind=REAL64):: val
         type(RealDim0KindREAL64StackNode), pointer:: prev => null()
      end type RealDim0KindREAL64StackNode
      type, extends(Stack), public:: RealDim0KindREAL128Stack
         type(RealDim0KindREAL128StackNode), pointer:: head => null()
      end type RealDim0KindREAL128Stack
      type, extends(StackNode):: RealDim0KindREAL128StackNode
         Real(kind=REAL128):: val
         type(RealDim0KindREAL128StackNode), pointer:: prev => null()
      end type RealDim0KindREAL128StackNode
      type, extends(Stack), public:: RealDim1KindREAL32Stack
         type(RealDim1KindREAL32StackNode), pointer:: head => null()
      end type RealDim1KindREAL32Stack
      type, extends(StackNode):: RealDim1KindREAL32StackNode
         Real(kind=REAL32), dimension(:), allocatable:: val
         type(RealDim1KindREAL32StackNode), pointer:: prev => null()
      end type RealDim1KindREAL32StackNode
      type, extends(Stack), public:: RealDim1KindREAL64Stack
         type(RealDim1KindREAL64StackNode), pointer:: head => null()
      end type RealDim1KindREAL64Stack
      type, extends(StackNode):: RealDim1KindREAL64StackNode
         Real(kind=REAL64), dimension(:), allocatable:: val
         type(RealDim1KindREAL64StackNode), pointer:: prev => null()
      end type RealDim1KindREAL64StackNode
      type, extends(Stack), public:: RealDim1KindREAL128Stack
         type(RealDim1KindREAL128StackNode), pointer:: head => null()
      end type RealDim1KindREAL128Stack
      type, extends(StackNode):: RealDim1KindREAL128StackNode
         Real(kind=REAL128), dimension(:), allocatable:: val
         type(RealDim1KindREAL128StackNode), pointer:: prev => null()
      end type RealDim1KindREAL128StackNode
      type, extends(Stack), public:: RealDim2KindREAL32Stack
         type(RealDim2KindREAL32StackNode), pointer:: head => null()
      end type RealDim2KindREAL32Stack
      type, extends(StackNode):: RealDim2KindREAL32StackNode
         Real(kind=REAL32), dimension(:, :), allocatable:: val
         type(RealDim2KindREAL32StackNode), pointer:: prev => null()
      end type RealDim2KindREAL32StackNode
      type, extends(Stack), public:: RealDim2KindREAL64Stack
         type(RealDim2KindREAL64StackNode), pointer:: head => null()
      end type RealDim2KindREAL64Stack
      type, extends(StackNode):: RealDim2KindREAL64StackNode
         Real(kind=REAL64), dimension(:, :), allocatable:: val
         type(RealDim2KindREAL64StackNode), pointer:: prev => null()
      end type RealDim2KindREAL64StackNode
      type, extends(Stack), public:: RealDim2KindREAL128Stack
         type(RealDim2KindREAL128StackNode), pointer:: head => null()
      end type RealDim2KindREAL128Stack
      type, extends(StackNode):: RealDim2KindREAL128StackNode
         Real(kind=REAL128), dimension(:, :), allocatable:: val
         type(RealDim2KindREAL128StackNode), pointer:: prev => null()
      end type RealDim2KindREAL128StackNode
      type, extends(Stack), public:: RealDim3KindREAL32Stack
         type(RealDim3KindREAL32StackNode), pointer:: head => null()
      end type RealDim3KindREAL32Stack
      type, extends(StackNode):: RealDim3KindREAL32StackNode
         Real(kind=REAL32), dimension(:, :, :), allocatable:: val
         type(RealDim3KindREAL32StackNode), pointer:: prev => null()
      end type RealDim3KindREAL32StackNode
      type, extends(Stack), public:: RealDim3KindREAL64Stack
         type(RealDim3KindREAL64StackNode), pointer:: head => null()
      end type RealDim3KindREAL64Stack
      type, extends(StackNode):: RealDim3KindREAL64StackNode
         Real(kind=REAL64), dimension(:, :, :), allocatable:: val
         type(RealDim3KindREAL64StackNode), pointer:: prev => null()
      end type RealDim3KindREAL64StackNode
      type, extends(Stack), public:: RealDim3KindREAL128Stack
         type(RealDim3KindREAL128StackNode), pointer:: head => null()
      end type RealDim3KindREAL128Stack
      type, extends(StackNode):: RealDim3KindREAL128StackNode
         Real(kind=REAL128), dimension(:, :, :), allocatable:: val
         type(RealDim3KindREAL128StackNode), pointer:: prev => null()
      end type RealDim3KindREAL128StackNode
      type, extends(Stack), public:: RealDim4KindREAL32Stack
         type(RealDim4KindREAL32StackNode), pointer:: head => null()
      end type RealDim4KindREAL32Stack
      type, extends(StackNode):: RealDim4KindREAL32StackNode
         Real(kind=REAL32), dimension(:, :, :, :), allocatable:: val
         type(RealDim4KindREAL32StackNode), pointer:: prev => null()
      end type RealDim4KindREAL32StackNode
      type, extends(Stack), public:: RealDim4KindREAL64Stack
         type(RealDim4KindREAL64StackNode), pointer:: head => null()
      end type RealDim4KindREAL64Stack
      type, extends(StackNode):: RealDim4KindREAL64StackNode
         Real(kind=REAL64), dimension(:, :, :, :), allocatable:: val
         type(RealDim4KindREAL64StackNode), pointer:: prev => null()
      end type RealDim4KindREAL64StackNode
      type, extends(Stack), public:: RealDim4KindREAL128Stack
         type(RealDim4KindREAL128StackNode), pointer:: head => null()
      end type RealDim4KindREAL128Stack
      type, extends(StackNode):: RealDim4KindREAL128StackNode
         Real(kind=REAL128), dimension(:, :, :, :), allocatable:: val
         type(RealDim4KindREAL128StackNode), pointer:: prev => null()
      end type RealDim4KindREAL128StackNode
      type, extends(Stack), public:: RealDim5KindREAL32Stack
         type(RealDim5KindREAL32StackNode), pointer:: head => null()
      end type RealDim5KindREAL32Stack
      type, extends(StackNode):: RealDim5KindREAL32StackNode
         Real(kind=REAL32), dimension(:, :, :, :, :), allocatable:: val
         type(RealDim5KindREAL32StackNode), pointer:: prev => null()
      end type RealDim5KindREAL32StackNode
      type, extends(Stack), public:: RealDim5KindREAL64Stack
         type(RealDim5KindREAL64StackNode), pointer:: head => null()
      end type RealDim5KindREAL64Stack
      type, extends(StackNode):: RealDim5KindREAL64StackNode
         Real(kind=REAL64), dimension(:, :, :, :, :), allocatable:: val
         type(RealDim5KindREAL64StackNode), pointer:: prev => null()
      end type RealDim5KindREAL64StackNode
      type, extends(Stack), public:: RealDim5KindREAL128Stack
         type(RealDim5KindREAL128StackNode), pointer:: head => null()
      end type RealDim5KindREAL128Stack
      type, extends(StackNode):: RealDim5KindREAL128StackNode
         Real(kind=REAL128), dimension(:, :, :, :, :), allocatable:: val
         type(RealDim5KindREAL128StackNode), pointer:: prev => null()
      end type RealDim5KindREAL128StackNode
      type, extends(Stack), public:: RealDim6KindREAL32Stack
         type(RealDim6KindREAL32StackNode), pointer:: head => null()
      end type RealDim6KindREAL32Stack
      type, extends(StackNode):: RealDim6KindREAL32StackNode
         Real(kind=REAL32), dimension(:, :, :, :, :, :), allocatable:: val
         type(RealDim6KindREAL32StackNode), pointer:: prev => null()
      end type RealDim6KindREAL32StackNode
      type, extends(Stack), public:: RealDim6KindREAL64Stack
         type(RealDim6KindREAL64StackNode), pointer:: head => null()
      end type RealDim6KindREAL64Stack
      type, extends(StackNode):: RealDim6KindREAL64StackNode
         Real(kind=REAL64), dimension(:, :, :, :, :, :), allocatable:: val
         type(RealDim6KindREAL64StackNode), pointer:: prev => null()
      end type RealDim6KindREAL64StackNode
      type, extends(Stack), public:: RealDim6KindREAL128Stack
         type(RealDim6KindREAL128StackNode), pointer:: head => null()
      end type RealDim6KindREAL128Stack
      type, extends(StackNode):: RealDim6KindREAL128StackNode
         Real(kind=REAL128), dimension(:, :, :, :, :, :), allocatable:: val
         type(RealDim6KindREAL128StackNode), pointer:: prev => null()
      end type RealDim6KindREAL128StackNode
      type, extends(Stack), public:: RealDim7KindREAL32Stack
         type(RealDim7KindREAL32StackNode), pointer:: head => null()
      end type RealDim7KindREAL32Stack
      type, extends(StackNode):: RealDim7KindREAL32StackNode
         Real(kind=REAL32), dimension(:, :, :, :, :, :, :), allocatable:: val
         type(RealDim7KindREAL32StackNode), pointer:: prev => null()
      end type RealDim7KindREAL32StackNode
      type, extends(Stack), public:: RealDim7KindREAL64Stack
         type(RealDim7KindREAL64StackNode), pointer:: head => null()
      end type RealDim7KindREAL64Stack
      type, extends(StackNode):: RealDim7KindREAL64StackNode
         Real(kind=REAL64), dimension(:, :, :, :, :, :, :), allocatable:: val
         type(RealDim7KindREAL64StackNode), pointer:: prev => null()
      end type RealDim7KindREAL64StackNode
      type, extends(Stack), public:: RealDim7KindREAL128Stack
         type(RealDim7KindREAL128StackNode), pointer:: head => null()
      end type RealDim7KindREAL128Stack
      type, extends(StackNode):: RealDim7KindREAL128StackNode
         Real(kind=REAL128), dimension(:, :, :, :, :, :, :), allocatable:: val
         type(RealDim7KindREAL128StackNode), pointer:: prev => null()
      end type RealDim7KindREAL128StackNode
      type, extends(Stack), public:: IntegerDim0KindINT8Stack
         type(IntegerDim0KindINT8StackNode), pointer:: head => null()
      end type IntegerDim0KindINT8Stack
      type, extends(StackNode):: IntegerDim0KindINT8StackNode
         Integer(kind=INT8):: val
         type(IntegerDim0KindINT8StackNode), pointer:: prev => null()
      end type IntegerDim0KindINT8StackNode
      type, extends(Stack), public:: IntegerDim0KindINT16Stack
         type(IntegerDim0KindINT16StackNode), pointer:: head => null()
      end type IntegerDim0KindINT16Stack
      type, extends(StackNode):: IntegerDim0KindINT16StackNode
         Integer(kind=INT16):: val
         type(IntegerDim0KindINT16StackNode), pointer:: prev => null()
      end type IntegerDim0KindINT16StackNode
      type, extends(Stack), public:: IntegerDim0KindINT32Stack
         type(IntegerDim0KindINT32StackNode), pointer:: head => null()
      end type IntegerDim0KindINT32Stack
      type, extends(StackNode):: IntegerDim0KindINT32StackNode
         Integer(kind=INT32):: val
         type(IntegerDim0KindINT32StackNode), pointer:: prev => null()
      end type IntegerDim0KindINT32StackNode
      type, extends(Stack), public:: IntegerDim0KindINT64Stack
         type(IntegerDim0KindINT64StackNode), pointer:: head => null()
      end type IntegerDim0KindINT64Stack
      type, extends(StackNode):: IntegerDim0KindINT64StackNode
         Integer(kind=INT64):: val
         type(IntegerDim0KindINT64StackNode), pointer:: prev => null()
      end type IntegerDim0KindINT64StackNode
      type, extends(Stack), public:: IntegerDim1KindINT8Stack
         type(IntegerDim1KindINT8StackNode), pointer:: head => null()
      end type IntegerDim1KindINT8Stack
      type, extends(StackNode):: IntegerDim1KindINT8StackNode
         Integer(kind=INT8), dimension(:), allocatable:: val
         type(IntegerDim1KindINT8StackNode), pointer:: prev => null()
      end type IntegerDim1KindINT8StackNode
      type, extends(Stack), public:: IntegerDim1KindINT16Stack
         type(IntegerDim1KindINT16StackNode), pointer:: head => null()
      end type IntegerDim1KindINT16Stack
      type, extends(StackNode):: IntegerDim1KindINT16StackNode
         Integer(kind=INT16), dimension(:), allocatable:: val
         type(IntegerDim1KindINT16StackNode), pointer:: prev => null()
      end type IntegerDim1KindINT16StackNode
      type, extends(Stack), public:: IntegerDim1KindINT32Stack
         type(IntegerDim1KindINT32StackNode), pointer:: head => null()
      end type IntegerDim1KindINT32Stack
      type, extends(StackNode):: IntegerDim1KindINT32StackNode
         Integer(kind=INT32), dimension(:), allocatable:: val
         type(IntegerDim1KindINT32StackNode), pointer:: prev => null()
      end type IntegerDim1KindINT32StackNode
      type, extends(Stack), public:: IntegerDim1KindINT64Stack
         type(IntegerDim1KindINT64StackNode), pointer:: head => null()
      end type IntegerDim1KindINT64Stack
      type, extends(StackNode):: IntegerDim1KindINT64StackNode
         Integer(kind=INT64), dimension(:), allocatable:: val
         type(IntegerDim1KindINT64StackNode), pointer:: prev => null()
      end type IntegerDim1KindINT64StackNode
      type, extends(Stack), public:: IntegerDim2KindINT8Stack
         type(IntegerDim2KindINT8StackNode), pointer:: head => null()
      end type IntegerDim2KindINT8Stack
      type, extends(StackNode):: IntegerDim2KindINT8StackNode
         Integer(kind=INT8), dimension(:, :), allocatable:: val
         type(IntegerDim2KindINT8StackNode), pointer:: prev => null()
      end type IntegerDim2KindINT8StackNode
      type, extends(Stack), public:: IntegerDim2KindINT16Stack
         type(IntegerDim2KindINT16StackNode), pointer:: head => null()
      end type IntegerDim2KindINT16Stack
      type, extends(StackNode):: IntegerDim2KindINT16StackNode
         Integer(kind=INT16), dimension(:, :), allocatable:: val
         type(IntegerDim2KindINT16StackNode), pointer:: prev => null()
      end type IntegerDim2KindINT16StackNode
      type, extends(Stack), public:: IntegerDim2KindINT32Stack
         type(IntegerDim2KindINT32StackNode), pointer:: head => null()
      end type IntegerDim2KindINT32Stack
      type, extends(StackNode):: IntegerDim2KindINT32StackNode
         Integer(kind=INT32), dimension(:, :), allocatable:: val
         type(IntegerDim2KindINT32StackNode), pointer:: prev => null()
      end type IntegerDim2KindINT32StackNode
      type, extends(Stack), public:: IntegerDim2KindINT64Stack
         type(IntegerDim2KindINT64StackNode), pointer:: head => null()
      end type IntegerDim2KindINT64Stack
      type, extends(StackNode):: IntegerDim2KindINT64StackNode
         Integer(kind=INT64), dimension(:, :), allocatable:: val
         type(IntegerDim2KindINT64StackNode), pointer:: prev => null()
      end type IntegerDim2KindINT64StackNode
      type, extends(Stack), public:: IntegerDim3KindINT8Stack
         type(IntegerDim3KindINT8StackNode), pointer:: head => null()
      end type IntegerDim3KindINT8Stack
      type, extends(StackNode):: IntegerDim3KindINT8StackNode
         Integer(kind=INT8), dimension(:, :, :), allocatable:: val
         type(IntegerDim3KindINT8StackNode), pointer:: prev => null()
      end type IntegerDim3KindINT8StackNode
      type, extends(Stack), public:: IntegerDim3KindINT16Stack
         type(IntegerDim3KindINT16StackNode), pointer:: head => null()
      end type IntegerDim3KindINT16Stack
      type, extends(StackNode):: IntegerDim3KindINT16StackNode
         Integer(kind=INT16), dimension(:, :, :), allocatable:: val
         type(IntegerDim3KindINT16StackNode), pointer:: prev => null()
      end type IntegerDim3KindINT16StackNode
      type, extends(Stack), public:: IntegerDim3KindINT32Stack
         type(IntegerDim3KindINT32StackNode), pointer:: head => null()
      end type IntegerDim3KindINT32Stack
      type, extends(StackNode):: IntegerDim3KindINT32StackNode
         Integer(kind=INT32), dimension(:, :, :), allocatable:: val
         type(IntegerDim3KindINT32StackNode), pointer:: prev => null()
      end type IntegerDim3KindINT32StackNode
      type, extends(Stack), public:: IntegerDim3KindINT64Stack
         type(IntegerDim3KindINT64StackNode), pointer:: head => null()
      end type IntegerDim3KindINT64Stack
      type, extends(StackNode):: IntegerDim3KindINT64StackNode
         Integer(kind=INT64), dimension(:, :, :), allocatable:: val
         type(IntegerDim3KindINT64StackNode), pointer:: prev => null()
      end type IntegerDim3KindINT64StackNode
      type, extends(Stack), public:: IntegerDim4KindINT8Stack
         type(IntegerDim4KindINT8StackNode), pointer:: head => null()
      end type IntegerDim4KindINT8Stack
      type, extends(StackNode):: IntegerDim4KindINT8StackNode
         Integer(kind=INT8), dimension(:, :, :, :), allocatable:: val
         type(IntegerDim4KindINT8StackNode), pointer:: prev => null()
      end type IntegerDim4KindINT8StackNode
      type, extends(Stack), public:: IntegerDim4KindINT16Stack
         type(IntegerDim4KindINT16StackNode), pointer:: head => null()
      end type IntegerDim4KindINT16Stack
      type, extends(StackNode):: IntegerDim4KindINT16StackNode
         Integer(kind=INT16), dimension(:, :, :, :), allocatable:: val
         type(IntegerDim4KindINT16StackNode), pointer:: prev => null()
      end type IntegerDim4KindINT16StackNode
      type, extends(Stack), public:: IntegerDim4KindINT32Stack
         type(IntegerDim4KindINT32StackNode), pointer:: head => null()
      end type IntegerDim4KindINT32Stack
      type, extends(StackNode):: IntegerDim4KindINT32StackNode
         Integer(kind=INT32), dimension(:, :, :, :), allocatable:: val
         type(IntegerDim4KindINT32StackNode), pointer:: prev => null()
      end type IntegerDim4KindINT32StackNode
      type, extends(Stack), public:: IntegerDim4KindINT64Stack
         type(IntegerDim4KindINT64StackNode), pointer:: head => null()
      end type IntegerDim4KindINT64Stack
      type, extends(StackNode):: IntegerDim4KindINT64StackNode
         Integer(kind=INT64), dimension(:, :, :, :), allocatable:: val
         type(IntegerDim4KindINT64StackNode), pointer:: prev => null()
      end type IntegerDim4KindINT64StackNode
      type, extends(Stack), public:: IntegerDim5KindINT8Stack
         type(IntegerDim5KindINT8StackNode), pointer:: head => null()
      end type IntegerDim5KindINT8Stack
      type, extends(StackNode):: IntegerDim5KindINT8StackNode
         Integer(kind=INT8), dimension(:, :, :, :, :), allocatable:: val
         type(IntegerDim5KindINT8StackNode), pointer:: prev => null()
      end type IntegerDim5KindINT8StackNode
      type, extends(Stack), public:: IntegerDim5KindINT16Stack
         type(IntegerDim5KindINT16StackNode), pointer:: head => null()
      end type IntegerDim5KindINT16Stack
      type, extends(StackNode):: IntegerDim5KindINT16StackNode
         Integer(kind=INT16), dimension(:, :, :, :, :), allocatable:: val
         type(IntegerDim5KindINT16StackNode), pointer:: prev => null()
      end type IntegerDim5KindINT16StackNode
      type, extends(Stack), public:: IntegerDim5KindINT32Stack
         type(IntegerDim5KindINT32StackNode), pointer:: head => null()
      end type IntegerDim5KindINT32Stack
      type, extends(StackNode):: IntegerDim5KindINT32StackNode
         Integer(kind=INT32), dimension(:, :, :, :, :), allocatable:: val
         type(IntegerDim5KindINT32StackNode), pointer:: prev => null()
      end type IntegerDim5KindINT32StackNode
      type, extends(Stack), public:: IntegerDim5KindINT64Stack
         type(IntegerDim5KindINT64StackNode), pointer:: head => null()
      end type IntegerDim5KindINT64Stack
      type, extends(StackNode):: IntegerDim5KindINT64StackNode
         Integer(kind=INT64), dimension(:, :, :, :, :), allocatable:: val
         type(IntegerDim5KindINT64StackNode), pointer:: prev => null()
      end type IntegerDim5KindINT64StackNode
      type, extends(Stack), public:: IntegerDim6KindINT8Stack
         type(IntegerDim6KindINT8StackNode), pointer:: head => null()
      end type IntegerDim6KindINT8Stack
      type, extends(StackNode):: IntegerDim6KindINT8StackNode
         Integer(kind=INT8), dimension(:, :, :, :, :, :), allocatable:: val
         type(IntegerDim6KindINT8StackNode), pointer:: prev => null()
      end type IntegerDim6KindINT8StackNode
      type, extends(Stack), public:: IntegerDim6KindINT16Stack
         type(IntegerDim6KindINT16StackNode), pointer:: head => null()
      end type IntegerDim6KindINT16Stack
      type, extends(StackNode):: IntegerDim6KindINT16StackNode
         Integer(kind=INT16), dimension(:, :, :, :, :, :), allocatable:: val
         type(IntegerDim6KindINT16StackNode), pointer:: prev => null()
      end type IntegerDim6KindINT16StackNode
      type, extends(Stack), public:: IntegerDim6KindINT32Stack
         type(IntegerDim6KindINT32StackNode), pointer:: head => null()
      end type IntegerDim6KindINT32Stack
      type, extends(StackNode):: IntegerDim6KindINT32StackNode
         Integer(kind=INT32), dimension(:, :, :, :, :, :), allocatable:: val
         type(IntegerDim6KindINT32StackNode), pointer:: prev => null()
      end type IntegerDim6KindINT32StackNode
      type, extends(Stack), public:: IntegerDim6KindINT64Stack
         type(IntegerDim6KindINT64StackNode), pointer:: head => null()
      end type IntegerDim6KindINT64Stack
      type, extends(StackNode):: IntegerDim6KindINT64StackNode
         Integer(kind=INT64), dimension(:, :, :, :, :, :), allocatable:: val
         type(IntegerDim6KindINT64StackNode), pointer:: prev => null()
      end type IntegerDim6KindINT64StackNode
      type, extends(Stack), public:: IntegerDim7KindINT8Stack
         type(IntegerDim7KindINT8StackNode), pointer:: head => null()
      end type IntegerDim7KindINT8Stack
      type, extends(StackNode):: IntegerDim7KindINT8StackNode
         Integer(kind=INT8), dimension(:, :, :, :, :, :, :), allocatable:: val
         type(IntegerDim7KindINT8StackNode), pointer:: prev => null()
      end type IntegerDim7KindINT8StackNode
      type, extends(Stack), public:: IntegerDim7KindINT16Stack
         type(IntegerDim7KindINT16StackNode), pointer:: head => null()
      end type IntegerDim7KindINT16Stack
      type, extends(StackNode):: IntegerDim7KindINT16StackNode
         Integer(kind=INT16), dimension(:, :, :, :, :, :, :), allocatable:: val
         type(IntegerDim7KindINT16StackNode), pointer:: prev => null()
      end type IntegerDim7KindINT16StackNode
      type, extends(Stack), public:: IntegerDim7KindINT32Stack
         type(IntegerDim7KindINT32StackNode), pointer:: head => null()
      end type IntegerDim7KindINT32Stack
      type, extends(StackNode):: IntegerDim7KindINT32StackNode
         Integer(kind=INT32), dimension(:, :, :, :, :, :, :), allocatable:: val
         type(IntegerDim7KindINT32StackNode), pointer:: prev => null()
      end type IntegerDim7KindINT32StackNode
      type, extends(Stack), public:: IntegerDim7KindINT64Stack
         type(IntegerDim7KindINT64StackNode), pointer:: head => null()
      end type IntegerDim7KindINT64Stack
      type, extends(StackNode):: IntegerDim7KindINT64StackNode
         Integer(kind=INT64), dimension(:, :, :, :, :, :, :), allocatable:: val
         type(IntegerDim7KindINT64StackNode), pointer:: prev => null()
      end type IntegerDim7KindINT64StackNode
      type, extends(Stack), public:: LogicalDim0KindINT8Stack
         type(LogicalDim0KindINT8StackNode), pointer:: head => null()
      end type LogicalDim0KindINT8Stack
      type, extends(StackNode):: LogicalDim0KindINT8StackNode
         Logical(kind=INT8):: val
         type(LogicalDim0KindINT8StackNode), pointer:: prev => null()
      end type LogicalDim0KindINT8StackNode
      type, extends(Stack), public:: LogicalDim0KindINT16Stack
         type(LogicalDim0KindINT16StackNode), pointer:: head => null()
      end type LogicalDim0KindINT16Stack
      type, extends(StackNode):: LogicalDim0KindINT16StackNode
         Logical(kind=INT16):: val
         type(LogicalDim0KindINT16StackNode), pointer:: prev => null()
      end type LogicalDim0KindINT16StackNode
      type, extends(Stack), public:: LogicalDim0KindINT32Stack
         type(LogicalDim0KindINT32StackNode), pointer:: head => null()
      end type LogicalDim0KindINT32Stack
      type, extends(StackNode):: LogicalDim0KindINT32StackNode
         Logical(kind=INT32):: val
         type(LogicalDim0KindINT32StackNode), pointer:: prev => null()
      end type LogicalDim0KindINT32StackNode
      type, extends(Stack), public:: LogicalDim0KindINT64Stack
         type(LogicalDim0KindINT64StackNode), pointer:: head => null()
      end type LogicalDim0KindINT64Stack
      type, extends(StackNode):: LogicalDim0KindINT64StackNode
         Logical(kind=INT64):: val
         type(LogicalDim0KindINT64StackNode), pointer:: prev => null()
      end type LogicalDim0KindINT64StackNode
      type, extends(Stack), public:: LogicalDim1KindINT8Stack
         type(LogicalDim1KindINT8StackNode), pointer:: head => null()
      end type LogicalDim1KindINT8Stack
      type, extends(StackNode):: LogicalDim1KindINT8StackNode
         Logical(kind=INT8), dimension(:), allocatable:: val
         type(LogicalDim1KindINT8StackNode), pointer:: prev => null()
      end type LogicalDim1KindINT8StackNode
      type, extends(Stack), public:: LogicalDim1KindINT16Stack
         type(LogicalDim1KindINT16StackNode), pointer:: head => null()
      end type LogicalDim1KindINT16Stack
      type, extends(StackNode):: LogicalDim1KindINT16StackNode
         Logical(kind=INT16), dimension(:), allocatable:: val
         type(LogicalDim1KindINT16StackNode), pointer:: prev => null()
      end type LogicalDim1KindINT16StackNode
      type, extends(Stack), public:: LogicalDim1KindINT32Stack
         type(LogicalDim1KindINT32StackNode), pointer:: head => null()
      end type LogicalDim1KindINT32Stack
      type, extends(StackNode):: LogicalDim1KindINT32StackNode
         Logical(kind=INT32), dimension(:), allocatable:: val
         type(LogicalDim1KindINT32StackNode), pointer:: prev => null()
      end type LogicalDim1KindINT32StackNode
      type, extends(Stack), public:: LogicalDim1KindINT64Stack
         type(LogicalDim1KindINT64StackNode), pointer:: head => null()
      end type LogicalDim1KindINT64Stack
      type, extends(StackNode):: LogicalDim1KindINT64StackNode
         Logical(kind=INT64), dimension(:), allocatable:: val
         type(LogicalDim1KindINT64StackNode), pointer:: prev => null()
      end type LogicalDim1KindINT64StackNode
      type, extends(Stack), public:: LogicalDim2KindINT8Stack
         type(LogicalDim2KindINT8StackNode), pointer:: head => null()
      end type LogicalDim2KindINT8Stack
      type, extends(StackNode):: LogicalDim2KindINT8StackNode
         Logical(kind=INT8), dimension(:, :), allocatable:: val
         type(LogicalDim2KindINT8StackNode), pointer:: prev => null()
      end type LogicalDim2KindINT8StackNode
      type, extends(Stack), public:: LogicalDim2KindINT16Stack
         type(LogicalDim2KindINT16StackNode), pointer:: head => null()
      end type LogicalDim2KindINT16Stack
      type, extends(StackNode):: LogicalDim2KindINT16StackNode
         Logical(kind=INT16), dimension(:, :), allocatable:: val
         type(LogicalDim2KindINT16StackNode), pointer:: prev => null()
      end type LogicalDim2KindINT16StackNode
      type, extends(Stack), public:: LogicalDim2KindINT32Stack
         type(LogicalDim2KindINT32StackNode), pointer:: head => null()
      end type LogicalDim2KindINT32Stack
      type, extends(StackNode):: LogicalDim2KindINT32StackNode
         Logical(kind=INT32), dimension(:, :), allocatable:: val
         type(LogicalDim2KindINT32StackNode), pointer:: prev => null()
      end type LogicalDim2KindINT32StackNode
      type, extends(Stack), public:: LogicalDim2KindINT64Stack
         type(LogicalDim2KindINT64StackNode), pointer:: head => null()
      end type LogicalDim2KindINT64Stack
      type, extends(StackNode):: LogicalDim2KindINT64StackNode
         Logical(kind=INT64), dimension(:, :), allocatable:: val
         type(LogicalDim2KindINT64StackNode), pointer:: prev => null()
      end type LogicalDim2KindINT64StackNode
      type, extends(Stack), public:: LogicalDim3KindINT8Stack
         type(LogicalDim3KindINT8StackNode), pointer:: head => null()
      end type LogicalDim3KindINT8Stack
      type, extends(StackNode):: LogicalDim3KindINT8StackNode
         Logical(kind=INT8), dimension(:, :, :), allocatable:: val
         type(LogicalDim3KindINT8StackNode), pointer:: prev => null()
      end type LogicalDim3KindINT8StackNode
      type, extends(Stack), public:: LogicalDim3KindINT16Stack
         type(LogicalDim3KindINT16StackNode), pointer:: head => null()
      end type LogicalDim3KindINT16Stack
      type, extends(StackNode):: LogicalDim3KindINT16StackNode
         Logical(kind=INT16), dimension(:, :, :), allocatable:: val
         type(LogicalDim3KindINT16StackNode), pointer:: prev => null()
      end type LogicalDim3KindINT16StackNode
      type, extends(Stack), public:: LogicalDim3KindINT32Stack
         type(LogicalDim3KindINT32StackNode), pointer:: head => null()
      end type LogicalDim3KindINT32Stack
      type, extends(StackNode):: LogicalDim3KindINT32StackNode
         Logical(kind=INT32), dimension(:, :, :), allocatable:: val
         type(LogicalDim3KindINT32StackNode), pointer:: prev => null()
      end type LogicalDim3KindINT32StackNode
      type, extends(Stack), public:: LogicalDim3KindINT64Stack
         type(LogicalDim3KindINT64StackNode), pointer:: head => null()
      end type LogicalDim3KindINT64Stack
      type, extends(StackNode):: LogicalDim3KindINT64StackNode
         Logical(kind=INT64), dimension(:, :, :), allocatable:: val
         type(LogicalDim3KindINT64StackNode), pointer:: prev => null()
      end type LogicalDim3KindINT64StackNode
      type, extends(Stack), public:: LogicalDim4KindINT8Stack
         type(LogicalDim4KindINT8StackNode), pointer:: head => null()
      end type LogicalDim4KindINT8Stack
      type, extends(StackNode):: LogicalDim4KindINT8StackNode
         Logical(kind=INT8), dimension(:, :, :, :), allocatable:: val
         type(LogicalDim4KindINT8StackNode), pointer:: prev => null()
      end type LogicalDim4KindINT8StackNode
      type, extends(Stack), public:: LogicalDim4KindINT16Stack
         type(LogicalDim4KindINT16StackNode), pointer:: head => null()
      end type LogicalDim4KindINT16Stack
      type, extends(StackNode):: LogicalDim4KindINT16StackNode
         Logical(kind=INT16), dimension(:, :, :, :), allocatable:: val
         type(LogicalDim4KindINT16StackNode), pointer:: prev => null()
      end type LogicalDim4KindINT16StackNode
      type, extends(Stack), public:: LogicalDim4KindINT32Stack
         type(LogicalDim4KindINT32StackNode), pointer:: head => null()
      end type LogicalDim4KindINT32Stack
      type, extends(StackNode):: LogicalDim4KindINT32StackNode
         Logical(kind=INT32), dimension(:, :, :, :), allocatable:: val
         type(LogicalDim4KindINT32StackNode), pointer:: prev => null()
      end type LogicalDim4KindINT32StackNode
      type, extends(Stack), public:: LogicalDim4KindINT64Stack
         type(LogicalDim4KindINT64StackNode), pointer:: head => null()
      end type LogicalDim4KindINT64Stack
      type, extends(StackNode):: LogicalDim4KindINT64StackNode
         Logical(kind=INT64), dimension(:, :, :, :), allocatable:: val
         type(LogicalDim4KindINT64StackNode), pointer:: prev => null()
      end type LogicalDim4KindINT64StackNode
      type, extends(Stack), public:: LogicalDim5KindINT8Stack
         type(LogicalDim5KindINT8StackNode), pointer:: head => null()
      end type LogicalDim5KindINT8Stack
      type, extends(StackNode):: LogicalDim5KindINT8StackNode
         Logical(kind=INT8), dimension(:, :, :, :, :), allocatable:: val
         type(LogicalDim5KindINT8StackNode), pointer:: prev => null()
      end type LogicalDim5KindINT8StackNode
      type, extends(Stack), public:: LogicalDim5KindINT16Stack
         type(LogicalDim5KindINT16StackNode), pointer:: head => null()
      end type LogicalDim5KindINT16Stack
      type, extends(StackNode):: LogicalDim5KindINT16StackNode
         Logical(kind=INT16), dimension(:, :, :, :, :), allocatable:: val
         type(LogicalDim5KindINT16StackNode), pointer:: prev => null()
      end type LogicalDim5KindINT16StackNode
      type, extends(Stack), public:: LogicalDim5KindINT32Stack
         type(LogicalDim5KindINT32StackNode), pointer:: head => null()
      end type LogicalDim5KindINT32Stack
      type, extends(StackNode):: LogicalDim5KindINT32StackNode
         Logical(kind=INT32), dimension(:, :, :, :, :), allocatable:: val
         type(LogicalDim5KindINT32StackNode), pointer:: prev => null()
      end type LogicalDim5KindINT32StackNode
      type, extends(Stack), public:: LogicalDim5KindINT64Stack
         type(LogicalDim5KindINT64StackNode), pointer:: head => null()
      end type LogicalDim5KindINT64Stack
      type, extends(StackNode):: LogicalDim5KindINT64StackNode
         Logical(kind=INT64), dimension(:, :, :, :, :), allocatable:: val
         type(LogicalDim5KindINT64StackNode), pointer:: prev => null()
      end type LogicalDim5KindINT64StackNode
      type, extends(Stack), public:: LogicalDim6KindINT8Stack
         type(LogicalDim6KindINT8StackNode), pointer:: head => null()
      end type LogicalDim6KindINT8Stack
      type, extends(StackNode):: LogicalDim6KindINT8StackNode
         Logical(kind=INT8), dimension(:, :, :, :, :, :), allocatable:: val
         type(LogicalDim6KindINT8StackNode), pointer:: prev => null()
      end type LogicalDim6KindINT8StackNode
      type, extends(Stack), public:: LogicalDim6KindINT16Stack
         type(LogicalDim6KindINT16StackNode), pointer:: head => null()
      end type LogicalDim6KindINT16Stack
      type, extends(StackNode):: LogicalDim6KindINT16StackNode
         Logical(kind=INT16), dimension(:, :, :, :, :, :), allocatable:: val
         type(LogicalDim6KindINT16StackNode), pointer:: prev => null()
      end type LogicalDim6KindINT16StackNode
      type, extends(Stack), public:: LogicalDim6KindINT32Stack
         type(LogicalDim6KindINT32StackNode), pointer:: head => null()
      end type LogicalDim6KindINT32Stack
      type, extends(StackNode):: LogicalDim6KindINT32StackNode
         Logical(kind=INT32), dimension(:, :, :, :, :, :), allocatable:: val
         type(LogicalDim6KindINT32StackNode), pointer:: prev => null()
      end type LogicalDim6KindINT32StackNode
      type, extends(Stack), public:: LogicalDim6KindINT64Stack
         type(LogicalDim6KindINT64StackNode), pointer:: head => null()
      end type LogicalDim6KindINT64Stack
      type, extends(StackNode):: LogicalDim6KindINT64StackNode
         Logical(kind=INT64), dimension(:, :, :, :, :, :), allocatable:: val
         type(LogicalDim6KindINT64StackNode), pointer:: prev => null()
      end type LogicalDim6KindINT64StackNode
      type, extends(Stack), public:: LogicalDim7KindINT8Stack
         type(LogicalDim7KindINT8StackNode), pointer:: head => null()
      end type LogicalDim7KindINT8Stack
      type, extends(StackNode):: LogicalDim7KindINT8StackNode
         Logical(kind=INT8), dimension(:, :, :, :, :, :, :), allocatable:: val
         type(LogicalDim7KindINT8StackNode), pointer:: prev => null()
      end type LogicalDim7KindINT8StackNode
      type, extends(Stack), public:: LogicalDim7KindINT16Stack
         type(LogicalDim7KindINT16StackNode), pointer:: head => null()
      end type LogicalDim7KindINT16Stack
      type, extends(StackNode):: LogicalDim7KindINT16StackNode
         Logical(kind=INT16), dimension(:, :, :, :, :, :, :), allocatable:: val
         type(LogicalDim7KindINT16StackNode), pointer:: prev => null()
      end type LogicalDim7KindINT16StackNode
      type, extends(Stack), public:: LogicalDim7KindINT32Stack
         type(LogicalDim7KindINT32StackNode), pointer:: head => null()
      end type LogicalDim7KindINT32Stack
      type, extends(StackNode):: LogicalDim7KindINT32StackNode
         Logical(kind=INT32), dimension(:, :, :, :, :, :, :), allocatable:: val
         type(LogicalDim7KindINT32StackNode), pointer:: prev => null()
      end type LogicalDim7KindINT32StackNode
      type, extends(Stack), public:: LogicalDim7KindINT64Stack
         type(LogicalDim7KindINT64StackNode), pointer:: head => null()
      end type LogicalDim7KindINT64Stack
      type, extends(StackNode):: LogicalDim7KindINT64StackNode
         Logical(kind=INT64), dimension(:, :, :, :, :, :, :), allocatable:: val
         type(LogicalDim7KindINT64StackNode), pointer:: prev => null()
      end type LogicalDim7KindINT64StackNode
      type, extends(Stack), public:: ComplexDim0KindREAL32Stack
         type(ComplexDim0KindREAL32StackNode), pointer:: head => null()
      end type ComplexDim0KindREAL32Stack
      type, extends(StackNode):: ComplexDim0KindREAL32StackNode
         Complex(kind=REAL32):: val
         type(ComplexDim0KindREAL32StackNode), pointer:: prev => null()
      end type ComplexDim0KindREAL32StackNode
      type, extends(Stack), public:: ComplexDim0KindREAL64Stack
         type(ComplexDim0KindREAL64StackNode), pointer:: head => null()
      end type ComplexDim0KindREAL64Stack
      type, extends(StackNode):: ComplexDim0KindREAL64StackNode
         Complex(kind=REAL64):: val
         type(ComplexDim0KindREAL64StackNode), pointer:: prev => null()
      end type ComplexDim0KindREAL64StackNode
      type, extends(Stack), public:: ComplexDim0KindREAL128Stack
         type(ComplexDim0KindREAL128StackNode), pointer:: head => null()
      end type ComplexDim0KindREAL128Stack
      type, extends(StackNode):: ComplexDim0KindREAL128StackNode
         Complex(kind=REAL128):: val
         type(ComplexDim0KindREAL128StackNode), pointer:: prev => null()
      end type ComplexDim0KindREAL128StackNode
      type, extends(Stack), public:: ComplexDim1KindREAL32Stack
         type(ComplexDim1KindREAL32StackNode), pointer:: head => null()
      end type ComplexDim1KindREAL32Stack
      type, extends(StackNode):: ComplexDim1KindREAL32StackNode
         Complex(kind=REAL32), dimension(:), allocatable:: val
         type(ComplexDim1KindREAL32StackNode), pointer:: prev => null()
      end type ComplexDim1KindREAL32StackNode
      type, extends(Stack), public:: ComplexDim1KindREAL64Stack
         type(ComplexDim1KindREAL64StackNode), pointer:: head => null()
      end type ComplexDim1KindREAL64Stack
      type, extends(StackNode):: ComplexDim1KindREAL64StackNode
         Complex(kind=REAL64), dimension(:), allocatable:: val
         type(ComplexDim1KindREAL64StackNode), pointer:: prev => null()
      end type ComplexDim1KindREAL64StackNode
      type, extends(Stack), public:: ComplexDim1KindREAL128Stack
         type(ComplexDim1KindREAL128StackNode), pointer:: head => null()
      end type ComplexDim1KindREAL128Stack
      type, extends(StackNode):: ComplexDim1KindREAL128StackNode
         Complex(kind=REAL128), dimension(:), allocatable:: val
         type(ComplexDim1KindREAL128StackNode), pointer:: prev => null()
      end type ComplexDim1KindREAL128StackNode
      type, extends(Stack), public:: ComplexDim2KindREAL32Stack
         type(ComplexDim2KindREAL32StackNode), pointer:: head => null()
      end type ComplexDim2KindREAL32Stack
      type, extends(StackNode):: ComplexDim2KindREAL32StackNode
         Complex(kind=REAL32), dimension(:, :), allocatable:: val
         type(ComplexDim2KindREAL32StackNode), pointer:: prev => null()
      end type ComplexDim2KindREAL32StackNode
      type, extends(Stack), public:: ComplexDim2KindREAL64Stack
         type(ComplexDim2KindREAL64StackNode), pointer:: head => null()
      end type ComplexDim2KindREAL64Stack
      type, extends(StackNode):: ComplexDim2KindREAL64StackNode
         Complex(kind=REAL64), dimension(:, :), allocatable:: val
         type(ComplexDim2KindREAL64StackNode), pointer:: prev => null()
      end type ComplexDim2KindREAL64StackNode
      type, extends(Stack), public:: ComplexDim2KindREAL128Stack
         type(ComplexDim2KindREAL128StackNode), pointer:: head => null()
      end type ComplexDim2KindREAL128Stack
      type, extends(StackNode):: ComplexDim2KindREAL128StackNode
         Complex(kind=REAL128), dimension(:, :), allocatable:: val
         type(ComplexDim2KindREAL128StackNode), pointer:: prev => null()
      end type ComplexDim2KindREAL128StackNode
      type, extends(Stack), public:: ComplexDim3KindREAL32Stack
         type(ComplexDim3KindREAL32StackNode), pointer:: head => null()
      end type ComplexDim3KindREAL32Stack
      type, extends(StackNode):: ComplexDim3KindREAL32StackNode
         Complex(kind=REAL32), dimension(:, :, :), allocatable:: val
         type(ComplexDim3KindREAL32StackNode), pointer:: prev => null()
      end type ComplexDim3KindREAL32StackNode
      type, extends(Stack), public:: ComplexDim3KindREAL64Stack
         type(ComplexDim3KindREAL64StackNode), pointer:: head => null()
      end type ComplexDim3KindREAL64Stack
      type, extends(StackNode):: ComplexDim3KindREAL64StackNode
         Complex(kind=REAL64), dimension(:, :, :), allocatable:: val
         type(ComplexDim3KindREAL64StackNode), pointer:: prev => null()
      end type ComplexDim3KindREAL64StackNode
      type, extends(Stack), public:: ComplexDim3KindREAL128Stack
         type(ComplexDim3KindREAL128StackNode), pointer:: head => null()
      end type ComplexDim3KindREAL128Stack
      type, extends(StackNode):: ComplexDim3KindREAL128StackNode
         Complex(kind=REAL128), dimension(:, :, :), allocatable:: val
         type(ComplexDim3KindREAL128StackNode), pointer:: prev => null()
      end type ComplexDim3KindREAL128StackNode
      type, extends(Stack), public:: ComplexDim4KindREAL32Stack
         type(ComplexDim4KindREAL32StackNode), pointer:: head => null()
      end type ComplexDim4KindREAL32Stack
      type, extends(StackNode):: ComplexDim4KindREAL32StackNode
         Complex(kind=REAL32), dimension(:, :, :, :), allocatable:: val
         type(ComplexDim4KindREAL32StackNode), pointer:: prev => null()
      end type ComplexDim4KindREAL32StackNode
      type, extends(Stack), public:: ComplexDim4KindREAL64Stack
         type(ComplexDim4KindREAL64StackNode), pointer:: head => null()
      end type ComplexDim4KindREAL64Stack
      type, extends(StackNode):: ComplexDim4KindREAL64StackNode
         Complex(kind=REAL64), dimension(:, :, :, :), allocatable:: val
         type(ComplexDim4KindREAL64StackNode), pointer:: prev => null()
      end type ComplexDim4KindREAL64StackNode
      type, extends(Stack), public:: ComplexDim4KindREAL128Stack
         type(ComplexDim4KindREAL128StackNode), pointer:: head => null()
      end type ComplexDim4KindREAL128Stack
      type, extends(StackNode):: ComplexDim4KindREAL128StackNode
         Complex(kind=REAL128), dimension(:, :, :, :), allocatable:: val
         type(ComplexDim4KindREAL128StackNode), pointer:: prev => null()
      end type ComplexDim4KindREAL128StackNode
      type, extends(Stack), public:: ComplexDim5KindREAL32Stack
         type(ComplexDim5KindREAL32StackNode), pointer:: head => null()
      end type ComplexDim5KindREAL32Stack
      type, extends(StackNode):: ComplexDim5KindREAL32StackNode
         Complex(kind=REAL32), dimension(:, :, :, :, :), allocatable:: val
         type(ComplexDim5KindREAL32StackNode), pointer:: prev => null()
      end type ComplexDim5KindREAL32StackNode
      type, extends(Stack), public:: ComplexDim5KindREAL64Stack
         type(ComplexDim5KindREAL64StackNode), pointer:: head => null()
      end type ComplexDim5KindREAL64Stack
      type, extends(StackNode):: ComplexDim5KindREAL64StackNode
         Complex(kind=REAL64), dimension(:, :, :, :, :), allocatable:: val
         type(ComplexDim5KindREAL64StackNode), pointer:: prev => null()
      end type ComplexDim5KindREAL64StackNode
      type, extends(Stack), public:: ComplexDim5KindREAL128Stack
         type(ComplexDim5KindREAL128StackNode), pointer:: head => null()
      end type ComplexDim5KindREAL128Stack
      type, extends(StackNode):: ComplexDim5KindREAL128StackNode
         Complex(kind=REAL128), dimension(:, :, :, :, :), allocatable:: val
         type(ComplexDim5KindREAL128StackNode), pointer:: prev => null()
      end type ComplexDim5KindREAL128StackNode
      type, extends(Stack), public:: ComplexDim6KindREAL32Stack
         type(ComplexDim6KindREAL32StackNode), pointer:: head => null()
      end type ComplexDim6KindREAL32Stack
      type, extends(StackNode):: ComplexDim6KindREAL32StackNode
         Complex(kind=REAL32), dimension(:, :, :, :, :, :), allocatable:: val
         type(ComplexDim6KindREAL32StackNode), pointer:: prev => null()
      end type ComplexDim6KindREAL32StackNode
      type, extends(Stack), public:: ComplexDim6KindREAL64Stack
         type(ComplexDim6KindREAL64StackNode), pointer:: head => null()
      end type ComplexDim6KindREAL64Stack
      type, extends(StackNode):: ComplexDim6KindREAL64StackNode
         Complex(kind=REAL64), dimension(:, :, :, :, :, :), allocatable:: val
         type(ComplexDim6KindREAL64StackNode), pointer:: prev => null()
      end type ComplexDim6KindREAL64StackNode
      type, extends(Stack), public:: ComplexDim6KindREAL128Stack
         type(ComplexDim6KindREAL128StackNode), pointer:: head => null()
      end type ComplexDim6KindREAL128Stack
      type, extends(StackNode):: ComplexDim6KindREAL128StackNode
         Complex(kind=REAL128), dimension(:, :, :, :, :, :), allocatable:: val
         type(ComplexDim6KindREAL128StackNode), pointer:: prev => null()
      end type ComplexDim6KindREAL128StackNode
      type, extends(Stack), public:: ComplexDim7KindREAL32Stack
         type(ComplexDim7KindREAL32StackNode), pointer:: head => null()
      end type ComplexDim7KindREAL32Stack
      type, extends(StackNode):: ComplexDim7KindREAL32StackNode
         Complex(kind=REAL32), dimension(:, :, :, :, :, :, :), allocatable:: val
         type(ComplexDim7KindREAL32StackNode), pointer:: prev => null()
      end type ComplexDim7KindREAL32StackNode
      type, extends(Stack), public:: ComplexDim7KindREAL64Stack
         type(ComplexDim7KindREAL64StackNode), pointer:: head => null()
      end type ComplexDim7KindREAL64Stack
      type, extends(StackNode):: ComplexDim7KindREAL64StackNode
         Complex(kind=REAL64), dimension(:, :, :, :, :, :, :), allocatable:: val
         type(ComplexDim7KindREAL64StackNode), pointer:: prev => null()
      end type ComplexDim7KindREAL64StackNode
      type, extends(Stack), public:: ComplexDim7KindREAL128Stack
         type(ComplexDim7KindREAL128StackNode), pointer:: head => null()
      end type ComplexDim7KindREAL128Stack
      type, extends(StackNode):: ComplexDim7KindREAL128StackNode
         Complex(kind=REAL128), dimension(:, :, :, :, :, :, :), allocatable:: val
         type(ComplexDim7KindREAL128StackNode), pointer:: prev => null()
      end type ComplexDim7KindREAL128StackNode
      type, extends(Stack), public:: CharacterDim0Len0Stack
         type(CharacterDim0Len0StackNode), pointer:: head => null()
      end type CharacterDim0Len0Stack
      type, extends(StackNode):: CharacterDim0Len0StackNode
         Character(len=0), allocatable:: val
         type(CharacterDim0Len0StackNode), pointer:: prev => null()
      end type CharacterDim0Len0StackNode
      type, extends(Stack), public:: CharacterDim1Len0Stack
         type(CharacterDim1Len0StackNode), pointer:: head => null()
      end type CharacterDim1Len0Stack
      type, extends(StackNode):: CharacterDim1Len0StackNode
         Character(len=0), dimension(:), allocatable:: val
         type(CharacterDim1Len0StackNode), pointer:: prev => null()
      end type CharacterDim1Len0StackNode
      type, extends(Stack), public:: CharacterDim2Len0Stack
         type(CharacterDim2Len0StackNode), pointer:: head => null()
      end type CharacterDim2Len0Stack
      type, extends(StackNode):: CharacterDim2Len0StackNode
         Character(len=0), dimension(:, :), allocatable:: val
         type(CharacterDim2Len0StackNode), pointer:: prev => null()
      end type CharacterDim2Len0StackNode
      type, extends(Stack), public:: CharacterDim3Len0Stack
         type(CharacterDim3Len0StackNode), pointer:: head => null()
      end type CharacterDim3Len0Stack
      type, extends(StackNode):: CharacterDim3Len0StackNode
         Character(len=0), dimension(:, :, :), allocatable:: val
         type(CharacterDim3Len0StackNode), pointer:: prev => null()
      end type CharacterDim3Len0StackNode
      type, extends(Stack), public:: CharacterDim4Len0Stack
         type(CharacterDim4Len0StackNode), pointer:: head => null()
      end type CharacterDim4Len0Stack
      type, extends(StackNode):: CharacterDim4Len0StackNode
         Character(len=0), dimension(:, :, :, :), allocatable:: val
         type(CharacterDim4Len0StackNode), pointer:: prev => null()
      end type CharacterDim4Len0StackNode
      type, extends(Stack), public:: CharacterDim5Len0Stack
         type(CharacterDim5Len0StackNode), pointer:: head => null()
      end type CharacterDim5Len0Stack
      type, extends(StackNode):: CharacterDim5Len0StackNode
         Character(len=0), dimension(:, :, :, :, :), allocatable:: val
         type(CharacterDim5Len0StackNode), pointer:: prev => null()
      end type CharacterDim5Len0StackNode
      type, extends(Stack), public:: CharacterDim6Len0Stack
         type(CharacterDim6Len0StackNode), pointer:: head => null()
      end type CharacterDim6Len0Stack
      type, extends(StackNode):: CharacterDim6Len0StackNode
         Character(len=0), dimension(:, :, :, :, :, :), allocatable:: val
         type(CharacterDim6Len0StackNode), pointer:: prev => null()
      end type CharacterDim6Len0StackNode
      type, extends(Stack), public:: CharacterDim7Len0Stack
         type(CharacterDim7Len0StackNode), pointer:: head => null()
      end type CharacterDim7Len0Stack
      type, extends(StackNode):: CharacterDim7Len0StackNode
         Character(len=0), dimension(:, :, :, :, :, :, :), allocatable:: val
         type(CharacterDim7Len0StackNode), pointer:: prev => null()
      end type CharacterDim7Len0StackNode
contains
      subroutine pushRealDim0KindREAL32Stack(self, val)
         type(RealDim0KindREAL32Stack), intent(inout):: self
            Real(kind=REAL32), intent(in):: val
         type(RealDim0KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim0KindREAL32Stack
      function popRealDim0KindREAL32Stack(self, val) result(isSuccess)
         type(RealDim0KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), intent(inout):: val
         Logical:: isSuccess
         type(RealDim0KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim0KindREAL32Stack
      function is_emptyRealDim0KindREAL32Stack(self) result(answer)
         type(RealDim0KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim0KindREAL32Stack
      subroutine pushRealDim0KindREAL64Stack(self, val)
         type(RealDim0KindREAL64Stack), intent(inout):: self
            Real(kind=REAL64), intent(in):: val
         type(RealDim0KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim0KindREAL64Stack
      function popRealDim0KindREAL64Stack(self, val) result(isSuccess)
         type(RealDim0KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), intent(inout):: val
         Logical:: isSuccess
         type(RealDim0KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim0KindREAL64Stack
      function is_emptyRealDim0KindREAL64Stack(self) result(answer)
         type(RealDim0KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim0KindREAL64Stack
      subroutine pushRealDim0KindREAL128Stack(self, val)
         type(RealDim0KindREAL128Stack), intent(inout):: self
            Real(kind=REAL128), intent(in):: val
         type(RealDim0KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim0KindREAL128Stack
      function popRealDim0KindREAL128Stack(self, val) result(isSuccess)
         type(RealDim0KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), intent(inout):: val
         Logical:: isSuccess
         type(RealDim0KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim0KindREAL128Stack
      function is_emptyRealDim0KindREAL128Stack(self) result(answer)
         type(RealDim0KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim0KindREAL128Stack
      subroutine pushRealDim1KindREAL32Stack(self, val)
         type(RealDim1KindREAL32Stack), intent(inout):: self
            Real(kind=REAL32), dimension(:), intent(in):: val
         type(RealDim1KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim1KindREAL32Stack
      function popRealDim1KindREAL32Stack(self, val) result(isSuccess)
         type(RealDim1KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), dimension(:), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(RealDim1KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim1KindREAL32Stack
      function is_emptyRealDim1KindREAL32Stack(self) result(answer)
         type(RealDim1KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim1KindREAL32Stack
      subroutine pushRealDim1KindREAL64Stack(self, val)
         type(RealDim1KindREAL64Stack), intent(inout):: self
            Real(kind=REAL64), dimension(:), intent(in):: val
         type(RealDim1KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim1KindREAL64Stack
      function popRealDim1KindREAL64Stack(self, val) result(isSuccess)
         type(RealDim1KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), dimension(:), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(RealDim1KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim1KindREAL64Stack
      function is_emptyRealDim1KindREAL64Stack(self) result(answer)
         type(RealDim1KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim1KindREAL64Stack
      subroutine pushRealDim1KindREAL128Stack(self, val)
         type(RealDim1KindREAL128Stack), intent(inout):: self
            Real(kind=REAL128), dimension(:), intent(in):: val
         type(RealDim1KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim1KindREAL128Stack
      function popRealDim1KindREAL128Stack(self, val) result(isSuccess)
         type(RealDim1KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), dimension(:), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(RealDim1KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim1KindREAL128Stack
      function is_emptyRealDim1KindREAL128Stack(self) result(answer)
         type(RealDim1KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim1KindREAL128Stack
      subroutine pushRealDim2KindREAL32Stack(self, val)
         type(RealDim2KindREAL32Stack), intent(inout):: self
            Real(kind=REAL32), dimension(:, :), intent(in):: val
         type(RealDim2KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim2KindREAL32Stack
      function popRealDim2KindREAL32Stack(self, val) result(isSuccess)
         type(RealDim2KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), dimension(:, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(RealDim2KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim2KindREAL32Stack
      function is_emptyRealDim2KindREAL32Stack(self) result(answer)
         type(RealDim2KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim2KindREAL32Stack
      subroutine pushRealDim2KindREAL64Stack(self, val)
         type(RealDim2KindREAL64Stack), intent(inout):: self
            Real(kind=REAL64), dimension(:, :), intent(in):: val
         type(RealDim2KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim2KindREAL64Stack
      function popRealDim2KindREAL64Stack(self, val) result(isSuccess)
         type(RealDim2KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), dimension(:, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(RealDim2KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim2KindREAL64Stack
      function is_emptyRealDim2KindREAL64Stack(self) result(answer)
         type(RealDim2KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim2KindREAL64Stack
      subroutine pushRealDim2KindREAL128Stack(self, val)
         type(RealDim2KindREAL128Stack), intent(inout):: self
            Real(kind=REAL128), dimension(:, :), intent(in):: val
         type(RealDim2KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim2KindREAL128Stack
      function popRealDim2KindREAL128Stack(self, val) result(isSuccess)
         type(RealDim2KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), dimension(:, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(RealDim2KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim2KindREAL128Stack
      function is_emptyRealDim2KindREAL128Stack(self) result(answer)
         type(RealDim2KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim2KindREAL128Stack
      subroutine pushRealDim3KindREAL32Stack(self, val)
         type(RealDim3KindREAL32Stack), intent(inout):: self
            Real(kind=REAL32), dimension(:, :, :), intent(in):: val
         type(RealDim3KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim3KindREAL32Stack
      function popRealDim3KindREAL32Stack(self, val) result(isSuccess)
         type(RealDim3KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(RealDim3KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim3KindREAL32Stack
      function is_emptyRealDim3KindREAL32Stack(self) result(answer)
         type(RealDim3KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim3KindREAL32Stack
      subroutine pushRealDim3KindREAL64Stack(self, val)
         type(RealDim3KindREAL64Stack), intent(inout):: self
            Real(kind=REAL64), dimension(:, :, :), intent(in):: val
         type(RealDim3KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim3KindREAL64Stack
      function popRealDim3KindREAL64Stack(self, val) result(isSuccess)
         type(RealDim3KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(RealDim3KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim3KindREAL64Stack
      function is_emptyRealDim3KindREAL64Stack(self) result(answer)
         type(RealDim3KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim3KindREAL64Stack
      subroutine pushRealDim3KindREAL128Stack(self, val)
         type(RealDim3KindREAL128Stack), intent(inout):: self
            Real(kind=REAL128), dimension(:, :, :), intent(in):: val
         type(RealDim3KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim3KindREAL128Stack
      function popRealDim3KindREAL128Stack(self, val) result(isSuccess)
         type(RealDim3KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(RealDim3KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim3KindREAL128Stack
      function is_emptyRealDim3KindREAL128Stack(self) result(answer)
         type(RealDim3KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim3KindREAL128Stack
      subroutine pushRealDim4KindREAL32Stack(self, val)
         type(RealDim4KindREAL32Stack), intent(inout):: self
            Real(kind=REAL32), dimension(:, :, :, :), intent(in):: val
         type(RealDim4KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim4KindREAL32Stack
      function popRealDim4KindREAL32Stack(self, val) result(isSuccess)
         type(RealDim4KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(RealDim4KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim4KindREAL32Stack
      function is_emptyRealDim4KindREAL32Stack(self) result(answer)
         type(RealDim4KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim4KindREAL32Stack
      subroutine pushRealDim4KindREAL64Stack(self, val)
         type(RealDim4KindREAL64Stack), intent(inout):: self
            Real(kind=REAL64), dimension(:, :, :, :), intent(in):: val
         type(RealDim4KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim4KindREAL64Stack
      function popRealDim4KindREAL64Stack(self, val) result(isSuccess)
         type(RealDim4KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(RealDim4KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim4KindREAL64Stack
      function is_emptyRealDim4KindREAL64Stack(self) result(answer)
         type(RealDim4KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim4KindREAL64Stack
      subroutine pushRealDim4KindREAL128Stack(self, val)
         type(RealDim4KindREAL128Stack), intent(inout):: self
            Real(kind=REAL128), dimension(:, :, :, :), intent(in):: val
         type(RealDim4KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim4KindREAL128Stack
      function popRealDim4KindREAL128Stack(self, val) result(isSuccess)
         type(RealDim4KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(RealDim4KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim4KindREAL128Stack
      function is_emptyRealDim4KindREAL128Stack(self) result(answer)
         type(RealDim4KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim4KindREAL128Stack
      subroutine pushRealDim5KindREAL32Stack(self, val)
         type(RealDim5KindREAL32Stack), intent(inout):: self
            Real(kind=REAL32), dimension(:, :, :, :, :), intent(in):: val
         type(RealDim5KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim5KindREAL32Stack
      function popRealDim5KindREAL32Stack(self, val) result(isSuccess)
         type(RealDim5KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(RealDim5KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim5KindREAL32Stack
      function is_emptyRealDim5KindREAL32Stack(self) result(answer)
         type(RealDim5KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim5KindREAL32Stack
      subroutine pushRealDim5KindREAL64Stack(self, val)
         type(RealDim5KindREAL64Stack), intent(inout):: self
            Real(kind=REAL64), dimension(:, :, :, :, :), intent(in):: val
         type(RealDim5KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim5KindREAL64Stack
      function popRealDim5KindREAL64Stack(self, val) result(isSuccess)
         type(RealDim5KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(RealDim5KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim5KindREAL64Stack
      function is_emptyRealDim5KindREAL64Stack(self) result(answer)
         type(RealDim5KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim5KindREAL64Stack
      subroutine pushRealDim5KindREAL128Stack(self, val)
         type(RealDim5KindREAL128Stack), intent(inout):: self
            Real(kind=REAL128), dimension(:, :, :, :, :), intent(in):: val
         type(RealDim5KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim5KindREAL128Stack
      function popRealDim5KindREAL128Stack(self, val) result(isSuccess)
         type(RealDim5KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(RealDim5KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim5KindREAL128Stack
      function is_emptyRealDim5KindREAL128Stack(self) result(answer)
         type(RealDim5KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim5KindREAL128Stack
      subroutine pushRealDim6KindREAL32Stack(self, val)
         type(RealDim6KindREAL32Stack), intent(inout):: self
            Real(kind=REAL32), dimension(:, :, :, :, :, :), intent(in):: val
         type(RealDim6KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim6KindREAL32Stack
      function popRealDim6KindREAL32Stack(self, val) result(isSuccess)
         type(RealDim6KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(RealDim6KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim6KindREAL32Stack
      function is_emptyRealDim6KindREAL32Stack(self) result(answer)
         type(RealDim6KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim6KindREAL32Stack
      subroutine pushRealDim6KindREAL64Stack(self, val)
         type(RealDim6KindREAL64Stack), intent(inout):: self
            Real(kind=REAL64), dimension(:, :, :, :, :, :), intent(in):: val
         type(RealDim6KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim6KindREAL64Stack
      function popRealDim6KindREAL64Stack(self, val) result(isSuccess)
         type(RealDim6KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(RealDim6KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim6KindREAL64Stack
      function is_emptyRealDim6KindREAL64Stack(self) result(answer)
         type(RealDim6KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim6KindREAL64Stack
      subroutine pushRealDim6KindREAL128Stack(self, val)
         type(RealDim6KindREAL128Stack), intent(inout):: self
            Real(kind=REAL128), dimension(:, :, :, :, :, :), intent(in):: val
         type(RealDim6KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim6KindREAL128Stack
      function popRealDim6KindREAL128Stack(self, val) result(isSuccess)
         type(RealDim6KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(RealDim6KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim6KindREAL128Stack
      function is_emptyRealDim6KindREAL128Stack(self) result(answer)
         type(RealDim6KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim6KindREAL128Stack
      subroutine pushRealDim7KindREAL32Stack(self, val)
         type(RealDim7KindREAL32Stack), intent(inout):: self
            Real(kind=REAL32), dimension(:, :, :, :, :, :, :), intent(in):: val
         type(RealDim7KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim7KindREAL32Stack
      function popRealDim7KindREAL32Stack(self, val) result(isSuccess)
         type(RealDim7KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(RealDim7KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim7KindREAL32Stack
      function is_emptyRealDim7KindREAL32Stack(self) result(answer)
         type(RealDim7KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim7KindREAL32Stack
      subroutine pushRealDim7KindREAL64Stack(self, val)
         type(RealDim7KindREAL64Stack), intent(inout):: self
            Real(kind=REAL64), dimension(:, :, :, :, :, :, :), intent(in):: val
         type(RealDim7KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim7KindREAL64Stack
      function popRealDim7KindREAL64Stack(self, val) result(isSuccess)
         type(RealDim7KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(RealDim7KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim7KindREAL64Stack
      function is_emptyRealDim7KindREAL64Stack(self) result(answer)
         type(RealDim7KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim7KindREAL64Stack
      subroutine pushRealDim7KindREAL128Stack(self, val)
         type(RealDim7KindREAL128Stack), intent(inout):: self
            Real(kind=REAL128), dimension(:, :, :, :, :, :, :), intent(in):: val
         type(RealDim7KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushRealDim7KindREAL128Stack
      function popRealDim7KindREAL128Stack(self, val) result(isSuccess)
         type(RealDim7KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(RealDim7KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim7KindREAL128Stack
      function is_emptyRealDim7KindREAL128Stack(self) result(answer)
         type(RealDim7KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyRealDim7KindREAL128Stack
      subroutine pushIntegerDim0KindINT8Stack(self, val)
         type(IntegerDim0KindINT8Stack), intent(inout):: self
            Integer(kind=INT8), intent(in):: val
         type(IntegerDim0KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim0KindINT8Stack
      function popIntegerDim0KindINT8Stack(self, val) result(isSuccess)
         type(IntegerDim0KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim0KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim0KindINT8Stack
      function is_emptyIntegerDim0KindINT8Stack(self) result(answer)
         type(IntegerDim0KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim0KindINT8Stack
      subroutine pushIntegerDim0KindINT16Stack(self, val)
         type(IntegerDim0KindINT16Stack), intent(inout):: self
            Integer(kind=INT16), intent(in):: val
         type(IntegerDim0KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim0KindINT16Stack
      function popIntegerDim0KindINT16Stack(self, val) result(isSuccess)
         type(IntegerDim0KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim0KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim0KindINT16Stack
      function is_emptyIntegerDim0KindINT16Stack(self) result(answer)
         type(IntegerDim0KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim0KindINT16Stack
      subroutine pushIntegerDim0KindINT32Stack(self, val)
         type(IntegerDim0KindINT32Stack), intent(inout):: self
            Integer(kind=INT32), intent(in):: val
         type(IntegerDim0KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim0KindINT32Stack
      function popIntegerDim0KindINT32Stack(self, val) result(isSuccess)
         type(IntegerDim0KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim0KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim0KindINT32Stack
      function is_emptyIntegerDim0KindINT32Stack(self) result(answer)
         type(IntegerDim0KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim0KindINT32Stack
      subroutine pushIntegerDim0KindINT64Stack(self, val)
         type(IntegerDim0KindINT64Stack), intent(inout):: self
            Integer(kind=INT64), intent(in):: val
         type(IntegerDim0KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim0KindINT64Stack
      function popIntegerDim0KindINT64Stack(self, val) result(isSuccess)
         type(IntegerDim0KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim0KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim0KindINT64Stack
      function is_emptyIntegerDim0KindINT64Stack(self) result(answer)
         type(IntegerDim0KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim0KindINT64Stack
      subroutine pushIntegerDim1KindINT8Stack(self, val)
         type(IntegerDim1KindINT8Stack), intent(inout):: self
            Integer(kind=INT8), dimension(:), intent(in):: val
         type(IntegerDim1KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim1KindINT8Stack
      function popIntegerDim1KindINT8Stack(self, val) result(isSuccess)
         type(IntegerDim1KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), dimension(:), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim1KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim1KindINT8Stack
      function is_emptyIntegerDim1KindINT8Stack(self) result(answer)
         type(IntegerDim1KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim1KindINT8Stack
      subroutine pushIntegerDim1KindINT16Stack(self, val)
         type(IntegerDim1KindINT16Stack), intent(inout):: self
            Integer(kind=INT16), dimension(:), intent(in):: val
         type(IntegerDim1KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim1KindINT16Stack
      function popIntegerDim1KindINT16Stack(self, val) result(isSuccess)
         type(IntegerDim1KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), dimension(:), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim1KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim1KindINT16Stack
      function is_emptyIntegerDim1KindINT16Stack(self) result(answer)
         type(IntegerDim1KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim1KindINT16Stack
      subroutine pushIntegerDim1KindINT32Stack(self, val)
         type(IntegerDim1KindINT32Stack), intent(inout):: self
            Integer(kind=INT32), dimension(:), intent(in):: val
         type(IntegerDim1KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim1KindINT32Stack
      function popIntegerDim1KindINT32Stack(self, val) result(isSuccess)
         type(IntegerDim1KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), dimension(:), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim1KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim1KindINT32Stack
      function is_emptyIntegerDim1KindINT32Stack(self) result(answer)
         type(IntegerDim1KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim1KindINT32Stack
      subroutine pushIntegerDim1KindINT64Stack(self, val)
         type(IntegerDim1KindINT64Stack), intent(inout):: self
            Integer(kind=INT64), dimension(:), intent(in):: val
         type(IntegerDim1KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim1KindINT64Stack
      function popIntegerDim1KindINT64Stack(self, val) result(isSuccess)
         type(IntegerDim1KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), dimension(:), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim1KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim1KindINT64Stack
      function is_emptyIntegerDim1KindINT64Stack(self) result(answer)
         type(IntegerDim1KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim1KindINT64Stack
      subroutine pushIntegerDim2KindINT8Stack(self, val)
         type(IntegerDim2KindINT8Stack), intent(inout):: self
            Integer(kind=INT8), dimension(:, :), intent(in):: val
         type(IntegerDim2KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim2KindINT8Stack
      function popIntegerDim2KindINT8Stack(self, val) result(isSuccess)
         type(IntegerDim2KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), dimension(:, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim2KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim2KindINT8Stack
      function is_emptyIntegerDim2KindINT8Stack(self) result(answer)
         type(IntegerDim2KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim2KindINT8Stack
      subroutine pushIntegerDim2KindINT16Stack(self, val)
         type(IntegerDim2KindINT16Stack), intent(inout):: self
            Integer(kind=INT16), dimension(:, :), intent(in):: val
         type(IntegerDim2KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim2KindINT16Stack
      function popIntegerDim2KindINT16Stack(self, val) result(isSuccess)
         type(IntegerDim2KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), dimension(:, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim2KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim2KindINT16Stack
      function is_emptyIntegerDim2KindINT16Stack(self) result(answer)
         type(IntegerDim2KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim2KindINT16Stack
      subroutine pushIntegerDim2KindINT32Stack(self, val)
         type(IntegerDim2KindINT32Stack), intent(inout):: self
            Integer(kind=INT32), dimension(:, :), intent(in):: val
         type(IntegerDim2KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim2KindINT32Stack
      function popIntegerDim2KindINT32Stack(self, val) result(isSuccess)
         type(IntegerDim2KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), dimension(:, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim2KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim2KindINT32Stack
      function is_emptyIntegerDim2KindINT32Stack(self) result(answer)
         type(IntegerDim2KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim2KindINT32Stack
      subroutine pushIntegerDim2KindINT64Stack(self, val)
         type(IntegerDim2KindINT64Stack), intent(inout):: self
            Integer(kind=INT64), dimension(:, :), intent(in):: val
         type(IntegerDim2KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim2KindINT64Stack
      function popIntegerDim2KindINT64Stack(self, val) result(isSuccess)
         type(IntegerDim2KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), dimension(:, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim2KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim2KindINT64Stack
      function is_emptyIntegerDim2KindINT64Stack(self) result(answer)
         type(IntegerDim2KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim2KindINT64Stack
      subroutine pushIntegerDim3KindINT8Stack(self, val)
         type(IntegerDim3KindINT8Stack), intent(inout):: self
            Integer(kind=INT8), dimension(:, :, :), intent(in):: val
         type(IntegerDim3KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim3KindINT8Stack
      function popIntegerDim3KindINT8Stack(self, val) result(isSuccess)
         type(IntegerDim3KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim3KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim3KindINT8Stack
      function is_emptyIntegerDim3KindINT8Stack(self) result(answer)
         type(IntegerDim3KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim3KindINT8Stack
      subroutine pushIntegerDim3KindINT16Stack(self, val)
         type(IntegerDim3KindINT16Stack), intent(inout):: self
            Integer(kind=INT16), dimension(:, :, :), intent(in):: val
         type(IntegerDim3KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim3KindINT16Stack
      function popIntegerDim3KindINT16Stack(self, val) result(isSuccess)
         type(IntegerDim3KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim3KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim3KindINT16Stack
      function is_emptyIntegerDim3KindINT16Stack(self) result(answer)
         type(IntegerDim3KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim3KindINT16Stack
      subroutine pushIntegerDim3KindINT32Stack(self, val)
         type(IntegerDim3KindINT32Stack), intent(inout):: self
            Integer(kind=INT32), dimension(:, :, :), intent(in):: val
         type(IntegerDim3KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim3KindINT32Stack
      function popIntegerDim3KindINT32Stack(self, val) result(isSuccess)
         type(IntegerDim3KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim3KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim3KindINT32Stack
      function is_emptyIntegerDim3KindINT32Stack(self) result(answer)
         type(IntegerDim3KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim3KindINT32Stack
      subroutine pushIntegerDim3KindINT64Stack(self, val)
         type(IntegerDim3KindINT64Stack), intent(inout):: self
            Integer(kind=INT64), dimension(:, :, :), intent(in):: val
         type(IntegerDim3KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim3KindINT64Stack
      function popIntegerDim3KindINT64Stack(self, val) result(isSuccess)
         type(IntegerDim3KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim3KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim3KindINT64Stack
      function is_emptyIntegerDim3KindINT64Stack(self) result(answer)
         type(IntegerDim3KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim3KindINT64Stack
      subroutine pushIntegerDim4KindINT8Stack(self, val)
         type(IntegerDim4KindINT8Stack), intent(inout):: self
            Integer(kind=INT8), dimension(:, :, :, :), intent(in):: val
         type(IntegerDim4KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim4KindINT8Stack
      function popIntegerDim4KindINT8Stack(self, val) result(isSuccess)
         type(IntegerDim4KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim4KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim4KindINT8Stack
      function is_emptyIntegerDim4KindINT8Stack(self) result(answer)
         type(IntegerDim4KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim4KindINT8Stack
      subroutine pushIntegerDim4KindINT16Stack(self, val)
         type(IntegerDim4KindINT16Stack), intent(inout):: self
            Integer(kind=INT16), dimension(:, :, :, :), intent(in):: val
         type(IntegerDim4KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim4KindINT16Stack
      function popIntegerDim4KindINT16Stack(self, val) result(isSuccess)
         type(IntegerDim4KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim4KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim4KindINT16Stack
      function is_emptyIntegerDim4KindINT16Stack(self) result(answer)
         type(IntegerDim4KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim4KindINT16Stack
      subroutine pushIntegerDim4KindINT32Stack(self, val)
         type(IntegerDim4KindINT32Stack), intent(inout):: self
            Integer(kind=INT32), dimension(:, :, :, :), intent(in):: val
         type(IntegerDim4KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim4KindINT32Stack
      function popIntegerDim4KindINT32Stack(self, val) result(isSuccess)
         type(IntegerDim4KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim4KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim4KindINT32Stack
      function is_emptyIntegerDim4KindINT32Stack(self) result(answer)
         type(IntegerDim4KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim4KindINT32Stack
      subroutine pushIntegerDim4KindINT64Stack(self, val)
         type(IntegerDim4KindINT64Stack), intent(inout):: self
            Integer(kind=INT64), dimension(:, :, :, :), intent(in):: val
         type(IntegerDim4KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim4KindINT64Stack
      function popIntegerDim4KindINT64Stack(self, val) result(isSuccess)
         type(IntegerDim4KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim4KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim4KindINT64Stack
      function is_emptyIntegerDim4KindINT64Stack(self) result(answer)
         type(IntegerDim4KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim4KindINT64Stack
      subroutine pushIntegerDim5KindINT8Stack(self, val)
         type(IntegerDim5KindINT8Stack), intent(inout):: self
            Integer(kind=INT8), dimension(:, :, :, :, :), intent(in):: val
         type(IntegerDim5KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim5KindINT8Stack
      function popIntegerDim5KindINT8Stack(self, val) result(isSuccess)
         type(IntegerDim5KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim5KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim5KindINT8Stack
      function is_emptyIntegerDim5KindINT8Stack(self) result(answer)
         type(IntegerDim5KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim5KindINT8Stack
      subroutine pushIntegerDim5KindINT16Stack(self, val)
         type(IntegerDim5KindINT16Stack), intent(inout):: self
            Integer(kind=INT16), dimension(:, :, :, :, :), intent(in):: val
         type(IntegerDim5KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim5KindINT16Stack
      function popIntegerDim5KindINT16Stack(self, val) result(isSuccess)
         type(IntegerDim5KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim5KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim5KindINT16Stack
      function is_emptyIntegerDim5KindINT16Stack(self) result(answer)
         type(IntegerDim5KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim5KindINT16Stack
      subroutine pushIntegerDim5KindINT32Stack(self, val)
         type(IntegerDim5KindINT32Stack), intent(inout):: self
            Integer(kind=INT32), dimension(:, :, :, :, :), intent(in):: val
         type(IntegerDim5KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim5KindINT32Stack
      function popIntegerDim5KindINT32Stack(self, val) result(isSuccess)
         type(IntegerDim5KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim5KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim5KindINT32Stack
      function is_emptyIntegerDim5KindINT32Stack(self) result(answer)
         type(IntegerDim5KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim5KindINT32Stack
      subroutine pushIntegerDim5KindINT64Stack(self, val)
         type(IntegerDim5KindINT64Stack), intent(inout):: self
            Integer(kind=INT64), dimension(:, :, :, :, :), intent(in):: val
         type(IntegerDim5KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim5KindINT64Stack
      function popIntegerDim5KindINT64Stack(self, val) result(isSuccess)
         type(IntegerDim5KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim5KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim5KindINT64Stack
      function is_emptyIntegerDim5KindINT64Stack(self) result(answer)
         type(IntegerDim5KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim5KindINT64Stack
      subroutine pushIntegerDim6KindINT8Stack(self, val)
         type(IntegerDim6KindINT8Stack), intent(inout):: self
            Integer(kind=INT8), dimension(:, :, :, :, :, :), intent(in):: val
         type(IntegerDim6KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim6KindINT8Stack
      function popIntegerDim6KindINT8Stack(self, val) result(isSuccess)
         type(IntegerDim6KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim6KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim6KindINT8Stack
      function is_emptyIntegerDim6KindINT8Stack(self) result(answer)
         type(IntegerDim6KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim6KindINT8Stack
      subroutine pushIntegerDim6KindINT16Stack(self, val)
         type(IntegerDim6KindINT16Stack), intent(inout):: self
            Integer(kind=INT16), dimension(:, :, :, :, :, :), intent(in):: val
         type(IntegerDim6KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim6KindINT16Stack
      function popIntegerDim6KindINT16Stack(self, val) result(isSuccess)
         type(IntegerDim6KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim6KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim6KindINT16Stack
      function is_emptyIntegerDim6KindINT16Stack(self) result(answer)
         type(IntegerDim6KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim6KindINT16Stack
      subroutine pushIntegerDim6KindINT32Stack(self, val)
         type(IntegerDim6KindINT32Stack), intent(inout):: self
            Integer(kind=INT32), dimension(:, :, :, :, :, :), intent(in):: val
         type(IntegerDim6KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim6KindINT32Stack
      function popIntegerDim6KindINT32Stack(self, val) result(isSuccess)
         type(IntegerDim6KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim6KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim6KindINT32Stack
      function is_emptyIntegerDim6KindINT32Stack(self) result(answer)
         type(IntegerDim6KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim6KindINT32Stack
      subroutine pushIntegerDim6KindINT64Stack(self, val)
         type(IntegerDim6KindINT64Stack), intent(inout):: self
            Integer(kind=INT64), dimension(:, :, :, :, :, :), intent(in):: val
         type(IntegerDim6KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim6KindINT64Stack
      function popIntegerDim6KindINT64Stack(self, val) result(isSuccess)
         type(IntegerDim6KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim6KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim6KindINT64Stack
      function is_emptyIntegerDim6KindINT64Stack(self) result(answer)
         type(IntegerDim6KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim6KindINT64Stack
      subroutine pushIntegerDim7KindINT8Stack(self, val)
         type(IntegerDim7KindINT8Stack), intent(inout):: self
            Integer(kind=INT8), dimension(:, :, :, :, :, :, :), intent(in):: val
         type(IntegerDim7KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim7KindINT8Stack
      function popIntegerDim7KindINT8Stack(self, val) result(isSuccess)
         type(IntegerDim7KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim7KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim7KindINT8Stack
      function is_emptyIntegerDim7KindINT8Stack(self) result(answer)
         type(IntegerDim7KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim7KindINT8Stack
      subroutine pushIntegerDim7KindINT16Stack(self, val)
         type(IntegerDim7KindINT16Stack), intent(inout):: self
            Integer(kind=INT16), dimension(:, :, :, :, :, :, :), intent(in):: val
         type(IntegerDim7KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim7KindINT16Stack
      function popIntegerDim7KindINT16Stack(self, val) result(isSuccess)
         type(IntegerDim7KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim7KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim7KindINT16Stack
      function is_emptyIntegerDim7KindINT16Stack(self) result(answer)
         type(IntegerDim7KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim7KindINT16Stack
      subroutine pushIntegerDim7KindINT32Stack(self, val)
         type(IntegerDim7KindINT32Stack), intent(inout):: self
            Integer(kind=INT32), dimension(:, :, :, :, :, :, :), intent(in):: val
         type(IntegerDim7KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim7KindINT32Stack
      function popIntegerDim7KindINT32Stack(self, val) result(isSuccess)
         type(IntegerDim7KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim7KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim7KindINT32Stack
      function is_emptyIntegerDim7KindINT32Stack(self) result(answer)
         type(IntegerDim7KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim7KindINT32Stack
      subroutine pushIntegerDim7KindINT64Stack(self, val)
         type(IntegerDim7KindINT64Stack), intent(inout):: self
            Integer(kind=INT64), dimension(:, :, :, :, :, :, :), intent(in):: val
         type(IntegerDim7KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushIntegerDim7KindINT64Stack
      function popIntegerDim7KindINT64Stack(self, val) result(isSuccess)
         type(IntegerDim7KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(IntegerDim7KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim7KindINT64Stack
      function is_emptyIntegerDim7KindINT64Stack(self) result(answer)
         type(IntegerDim7KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyIntegerDim7KindINT64Stack
      subroutine pushLogicalDim0KindINT8Stack(self, val)
         type(LogicalDim0KindINT8Stack), intent(inout):: self
            Logical(kind=INT8), intent(in):: val
         type(LogicalDim0KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim0KindINT8Stack
      function popLogicalDim0KindINT8Stack(self, val) result(isSuccess)
         type(LogicalDim0KindINT8Stack), intent(inout):: self
         Logical(kind=INT8), intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim0KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim0KindINT8Stack
      function is_emptyLogicalDim0KindINT8Stack(self) result(answer)
         type(LogicalDim0KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim0KindINT8Stack
      subroutine pushLogicalDim0KindINT16Stack(self, val)
         type(LogicalDim0KindINT16Stack), intent(inout):: self
            Logical(kind=INT16), intent(in):: val
         type(LogicalDim0KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim0KindINT16Stack
      function popLogicalDim0KindINT16Stack(self, val) result(isSuccess)
         type(LogicalDim0KindINT16Stack), intent(inout):: self
         Logical(kind=INT16), intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim0KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim0KindINT16Stack
      function is_emptyLogicalDim0KindINT16Stack(self) result(answer)
         type(LogicalDim0KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim0KindINT16Stack
      subroutine pushLogicalDim0KindINT32Stack(self, val)
         type(LogicalDim0KindINT32Stack), intent(inout):: self
            Logical(kind=INT32), intent(in):: val
         type(LogicalDim0KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim0KindINT32Stack
      function popLogicalDim0KindINT32Stack(self, val) result(isSuccess)
         type(LogicalDim0KindINT32Stack), intent(inout):: self
         Logical(kind=INT32), intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim0KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim0KindINT32Stack
      function is_emptyLogicalDim0KindINT32Stack(self) result(answer)
         type(LogicalDim0KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim0KindINT32Stack
      subroutine pushLogicalDim0KindINT64Stack(self, val)
         type(LogicalDim0KindINT64Stack), intent(inout):: self
            Logical(kind=INT64), intent(in):: val
         type(LogicalDim0KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim0KindINT64Stack
      function popLogicalDim0KindINT64Stack(self, val) result(isSuccess)
         type(LogicalDim0KindINT64Stack), intent(inout):: self
         Logical(kind=INT64), intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim0KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim0KindINT64Stack
      function is_emptyLogicalDim0KindINT64Stack(self) result(answer)
         type(LogicalDim0KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim0KindINT64Stack
      subroutine pushLogicalDim1KindINT8Stack(self, val)
         type(LogicalDim1KindINT8Stack), intent(inout):: self
            Logical(kind=INT8), dimension(:), intent(in):: val
         type(LogicalDim1KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim1KindINT8Stack
      function popLogicalDim1KindINT8Stack(self, val) result(isSuccess)
         type(LogicalDim1KindINT8Stack), intent(inout):: self
         Logical(kind=INT8), dimension(:), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim1KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim1KindINT8Stack
      function is_emptyLogicalDim1KindINT8Stack(self) result(answer)
         type(LogicalDim1KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim1KindINT8Stack
      subroutine pushLogicalDim1KindINT16Stack(self, val)
         type(LogicalDim1KindINT16Stack), intent(inout):: self
            Logical(kind=INT16), dimension(:), intent(in):: val
         type(LogicalDim1KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim1KindINT16Stack
      function popLogicalDim1KindINT16Stack(self, val) result(isSuccess)
         type(LogicalDim1KindINT16Stack), intent(inout):: self
         Logical(kind=INT16), dimension(:), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim1KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim1KindINT16Stack
      function is_emptyLogicalDim1KindINT16Stack(self) result(answer)
         type(LogicalDim1KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim1KindINT16Stack
      subroutine pushLogicalDim1KindINT32Stack(self, val)
         type(LogicalDim1KindINT32Stack), intent(inout):: self
            Logical(kind=INT32), dimension(:), intent(in):: val
         type(LogicalDim1KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim1KindINT32Stack
      function popLogicalDim1KindINT32Stack(self, val) result(isSuccess)
         type(LogicalDim1KindINT32Stack), intent(inout):: self
         Logical(kind=INT32), dimension(:), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim1KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim1KindINT32Stack
      function is_emptyLogicalDim1KindINT32Stack(self) result(answer)
         type(LogicalDim1KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim1KindINT32Stack
      subroutine pushLogicalDim1KindINT64Stack(self, val)
         type(LogicalDim1KindINT64Stack), intent(inout):: self
            Logical(kind=INT64), dimension(:), intent(in):: val
         type(LogicalDim1KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim1KindINT64Stack
      function popLogicalDim1KindINT64Stack(self, val) result(isSuccess)
         type(LogicalDim1KindINT64Stack), intent(inout):: self
         Logical(kind=INT64), dimension(:), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim1KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim1KindINT64Stack
      function is_emptyLogicalDim1KindINT64Stack(self) result(answer)
         type(LogicalDim1KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim1KindINT64Stack
      subroutine pushLogicalDim2KindINT8Stack(self, val)
         type(LogicalDim2KindINT8Stack), intent(inout):: self
            Logical(kind=INT8), dimension(:, :), intent(in):: val
         type(LogicalDim2KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim2KindINT8Stack
      function popLogicalDim2KindINT8Stack(self, val) result(isSuccess)
         type(LogicalDim2KindINT8Stack), intent(inout):: self
         Logical(kind=INT8), dimension(:, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim2KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim2KindINT8Stack
      function is_emptyLogicalDim2KindINT8Stack(self) result(answer)
         type(LogicalDim2KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim2KindINT8Stack
      subroutine pushLogicalDim2KindINT16Stack(self, val)
         type(LogicalDim2KindINT16Stack), intent(inout):: self
            Logical(kind=INT16), dimension(:, :), intent(in):: val
         type(LogicalDim2KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim2KindINT16Stack
      function popLogicalDim2KindINT16Stack(self, val) result(isSuccess)
         type(LogicalDim2KindINT16Stack), intent(inout):: self
         Logical(kind=INT16), dimension(:, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim2KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim2KindINT16Stack
      function is_emptyLogicalDim2KindINT16Stack(self) result(answer)
         type(LogicalDim2KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim2KindINT16Stack
      subroutine pushLogicalDim2KindINT32Stack(self, val)
         type(LogicalDim2KindINT32Stack), intent(inout):: self
            Logical(kind=INT32), dimension(:, :), intent(in):: val
         type(LogicalDim2KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim2KindINT32Stack
      function popLogicalDim2KindINT32Stack(self, val) result(isSuccess)
         type(LogicalDim2KindINT32Stack), intent(inout):: self
         Logical(kind=INT32), dimension(:, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim2KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim2KindINT32Stack
      function is_emptyLogicalDim2KindINT32Stack(self) result(answer)
         type(LogicalDim2KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim2KindINT32Stack
      subroutine pushLogicalDim2KindINT64Stack(self, val)
         type(LogicalDim2KindINT64Stack), intent(inout):: self
            Logical(kind=INT64), dimension(:, :), intent(in):: val
         type(LogicalDim2KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim2KindINT64Stack
      function popLogicalDim2KindINT64Stack(self, val) result(isSuccess)
         type(LogicalDim2KindINT64Stack), intent(inout):: self
         Logical(kind=INT64), dimension(:, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim2KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim2KindINT64Stack
      function is_emptyLogicalDim2KindINT64Stack(self) result(answer)
         type(LogicalDim2KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim2KindINT64Stack
      subroutine pushLogicalDim3KindINT8Stack(self, val)
         type(LogicalDim3KindINT8Stack), intent(inout):: self
            Logical(kind=INT8), dimension(:, :, :), intent(in):: val
         type(LogicalDim3KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim3KindINT8Stack
      function popLogicalDim3KindINT8Stack(self, val) result(isSuccess)
         type(LogicalDim3KindINT8Stack), intent(inout):: self
         Logical(kind=INT8), dimension(:, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim3KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim3KindINT8Stack
      function is_emptyLogicalDim3KindINT8Stack(self) result(answer)
         type(LogicalDim3KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim3KindINT8Stack
      subroutine pushLogicalDim3KindINT16Stack(self, val)
         type(LogicalDim3KindINT16Stack), intent(inout):: self
            Logical(kind=INT16), dimension(:, :, :), intent(in):: val
         type(LogicalDim3KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim3KindINT16Stack
      function popLogicalDim3KindINT16Stack(self, val) result(isSuccess)
         type(LogicalDim3KindINT16Stack), intent(inout):: self
         Logical(kind=INT16), dimension(:, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim3KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim3KindINT16Stack
      function is_emptyLogicalDim3KindINT16Stack(self) result(answer)
         type(LogicalDim3KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim3KindINT16Stack
      subroutine pushLogicalDim3KindINT32Stack(self, val)
         type(LogicalDim3KindINT32Stack), intent(inout):: self
            Logical(kind=INT32), dimension(:, :, :), intent(in):: val
         type(LogicalDim3KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim3KindINT32Stack
      function popLogicalDim3KindINT32Stack(self, val) result(isSuccess)
         type(LogicalDim3KindINT32Stack), intent(inout):: self
         Logical(kind=INT32), dimension(:, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim3KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim3KindINT32Stack
      function is_emptyLogicalDim3KindINT32Stack(self) result(answer)
         type(LogicalDim3KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim3KindINT32Stack
      subroutine pushLogicalDim3KindINT64Stack(self, val)
         type(LogicalDim3KindINT64Stack), intent(inout):: self
            Logical(kind=INT64), dimension(:, :, :), intent(in):: val
         type(LogicalDim3KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim3KindINT64Stack
      function popLogicalDim3KindINT64Stack(self, val) result(isSuccess)
         type(LogicalDim3KindINT64Stack), intent(inout):: self
         Logical(kind=INT64), dimension(:, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim3KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim3KindINT64Stack
      function is_emptyLogicalDim3KindINT64Stack(self) result(answer)
         type(LogicalDim3KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim3KindINT64Stack
      subroutine pushLogicalDim4KindINT8Stack(self, val)
         type(LogicalDim4KindINT8Stack), intent(inout):: self
            Logical(kind=INT8), dimension(:, :, :, :), intent(in):: val
         type(LogicalDim4KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim4KindINT8Stack
      function popLogicalDim4KindINT8Stack(self, val) result(isSuccess)
         type(LogicalDim4KindINT8Stack), intent(inout):: self
         Logical(kind=INT8), dimension(:, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim4KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim4KindINT8Stack
      function is_emptyLogicalDim4KindINT8Stack(self) result(answer)
         type(LogicalDim4KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim4KindINT8Stack
      subroutine pushLogicalDim4KindINT16Stack(self, val)
         type(LogicalDim4KindINT16Stack), intent(inout):: self
            Logical(kind=INT16), dimension(:, :, :, :), intent(in):: val
         type(LogicalDim4KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim4KindINT16Stack
      function popLogicalDim4KindINT16Stack(self, val) result(isSuccess)
         type(LogicalDim4KindINT16Stack), intent(inout):: self
         Logical(kind=INT16), dimension(:, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim4KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim4KindINT16Stack
      function is_emptyLogicalDim4KindINT16Stack(self) result(answer)
         type(LogicalDim4KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim4KindINT16Stack
      subroutine pushLogicalDim4KindINT32Stack(self, val)
         type(LogicalDim4KindINT32Stack), intent(inout):: self
            Logical(kind=INT32), dimension(:, :, :, :), intent(in):: val
         type(LogicalDim4KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim4KindINT32Stack
      function popLogicalDim4KindINT32Stack(self, val) result(isSuccess)
         type(LogicalDim4KindINT32Stack), intent(inout):: self
         Logical(kind=INT32), dimension(:, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim4KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim4KindINT32Stack
      function is_emptyLogicalDim4KindINT32Stack(self) result(answer)
         type(LogicalDim4KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim4KindINT32Stack
      subroutine pushLogicalDim4KindINT64Stack(self, val)
         type(LogicalDim4KindINT64Stack), intent(inout):: self
            Logical(kind=INT64), dimension(:, :, :, :), intent(in):: val
         type(LogicalDim4KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim4KindINT64Stack
      function popLogicalDim4KindINT64Stack(self, val) result(isSuccess)
         type(LogicalDim4KindINT64Stack), intent(inout):: self
         Logical(kind=INT64), dimension(:, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim4KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim4KindINT64Stack
      function is_emptyLogicalDim4KindINT64Stack(self) result(answer)
         type(LogicalDim4KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim4KindINT64Stack
      subroutine pushLogicalDim5KindINT8Stack(self, val)
         type(LogicalDim5KindINT8Stack), intent(inout):: self
            Logical(kind=INT8), dimension(:, :, :, :, :), intent(in):: val
         type(LogicalDim5KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim5KindINT8Stack
      function popLogicalDim5KindINT8Stack(self, val) result(isSuccess)
         type(LogicalDim5KindINT8Stack), intent(inout):: self
         Logical(kind=INT8), dimension(:, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim5KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim5KindINT8Stack
      function is_emptyLogicalDim5KindINT8Stack(self) result(answer)
         type(LogicalDim5KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim5KindINT8Stack
      subroutine pushLogicalDim5KindINT16Stack(self, val)
         type(LogicalDim5KindINT16Stack), intent(inout):: self
            Logical(kind=INT16), dimension(:, :, :, :, :), intent(in):: val
         type(LogicalDim5KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim5KindINT16Stack
      function popLogicalDim5KindINT16Stack(self, val) result(isSuccess)
         type(LogicalDim5KindINT16Stack), intent(inout):: self
         Logical(kind=INT16), dimension(:, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim5KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim5KindINT16Stack
      function is_emptyLogicalDim5KindINT16Stack(self) result(answer)
         type(LogicalDim5KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim5KindINT16Stack
      subroutine pushLogicalDim5KindINT32Stack(self, val)
         type(LogicalDim5KindINT32Stack), intent(inout):: self
            Logical(kind=INT32), dimension(:, :, :, :, :), intent(in):: val
         type(LogicalDim5KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim5KindINT32Stack
      function popLogicalDim5KindINT32Stack(self, val) result(isSuccess)
         type(LogicalDim5KindINT32Stack), intent(inout):: self
         Logical(kind=INT32), dimension(:, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim5KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim5KindINT32Stack
      function is_emptyLogicalDim5KindINT32Stack(self) result(answer)
         type(LogicalDim5KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim5KindINT32Stack
      subroutine pushLogicalDim5KindINT64Stack(self, val)
         type(LogicalDim5KindINT64Stack), intent(inout):: self
            Logical(kind=INT64), dimension(:, :, :, :, :), intent(in):: val
         type(LogicalDim5KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim5KindINT64Stack
      function popLogicalDim5KindINT64Stack(self, val) result(isSuccess)
         type(LogicalDim5KindINT64Stack), intent(inout):: self
         Logical(kind=INT64), dimension(:, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim5KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim5KindINT64Stack
      function is_emptyLogicalDim5KindINT64Stack(self) result(answer)
         type(LogicalDim5KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim5KindINT64Stack
      subroutine pushLogicalDim6KindINT8Stack(self, val)
         type(LogicalDim6KindINT8Stack), intent(inout):: self
            Logical(kind=INT8), dimension(:, :, :, :, :, :), intent(in):: val
         type(LogicalDim6KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim6KindINT8Stack
      function popLogicalDim6KindINT8Stack(self, val) result(isSuccess)
         type(LogicalDim6KindINT8Stack), intent(inout):: self
         Logical(kind=INT8), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim6KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim6KindINT8Stack
      function is_emptyLogicalDim6KindINT8Stack(self) result(answer)
         type(LogicalDim6KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim6KindINT8Stack
      subroutine pushLogicalDim6KindINT16Stack(self, val)
         type(LogicalDim6KindINT16Stack), intent(inout):: self
            Logical(kind=INT16), dimension(:, :, :, :, :, :), intent(in):: val
         type(LogicalDim6KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim6KindINT16Stack
      function popLogicalDim6KindINT16Stack(self, val) result(isSuccess)
         type(LogicalDim6KindINT16Stack), intent(inout):: self
         Logical(kind=INT16), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim6KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim6KindINT16Stack
      function is_emptyLogicalDim6KindINT16Stack(self) result(answer)
         type(LogicalDim6KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim6KindINT16Stack
      subroutine pushLogicalDim6KindINT32Stack(self, val)
         type(LogicalDim6KindINT32Stack), intent(inout):: self
            Logical(kind=INT32), dimension(:, :, :, :, :, :), intent(in):: val
         type(LogicalDim6KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim6KindINT32Stack
      function popLogicalDim6KindINT32Stack(self, val) result(isSuccess)
         type(LogicalDim6KindINT32Stack), intent(inout):: self
         Logical(kind=INT32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim6KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim6KindINT32Stack
      function is_emptyLogicalDim6KindINT32Stack(self) result(answer)
         type(LogicalDim6KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim6KindINT32Stack
      subroutine pushLogicalDim6KindINT64Stack(self, val)
         type(LogicalDim6KindINT64Stack), intent(inout):: self
            Logical(kind=INT64), dimension(:, :, :, :, :, :), intent(in):: val
         type(LogicalDim6KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim6KindINT64Stack
      function popLogicalDim6KindINT64Stack(self, val) result(isSuccess)
         type(LogicalDim6KindINT64Stack), intent(inout):: self
         Logical(kind=INT64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim6KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim6KindINT64Stack
      function is_emptyLogicalDim6KindINT64Stack(self) result(answer)
         type(LogicalDim6KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim6KindINT64Stack
      subroutine pushLogicalDim7KindINT8Stack(self, val)
         type(LogicalDim7KindINT8Stack), intent(inout):: self
            Logical(kind=INT8), dimension(:, :, :, :, :, :, :), intent(in):: val
         type(LogicalDim7KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim7KindINT8Stack
      function popLogicalDim7KindINT8Stack(self, val) result(isSuccess)
         type(LogicalDim7KindINT8Stack), intent(inout):: self
         Logical(kind=INT8), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim7KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim7KindINT8Stack
      function is_emptyLogicalDim7KindINT8Stack(self) result(answer)
         type(LogicalDim7KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim7KindINT8Stack
      subroutine pushLogicalDim7KindINT16Stack(self, val)
         type(LogicalDim7KindINT16Stack), intent(inout):: self
            Logical(kind=INT16), dimension(:, :, :, :, :, :, :), intent(in):: val
         type(LogicalDim7KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim7KindINT16Stack
      function popLogicalDim7KindINT16Stack(self, val) result(isSuccess)
         type(LogicalDim7KindINT16Stack), intent(inout):: self
         Logical(kind=INT16), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim7KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim7KindINT16Stack
      function is_emptyLogicalDim7KindINT16Stack(self) result(answer)
         type(LogicalDim7KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim7KindINT16Stack
      subroutine pushLogicalDim7KindINT32Stack(self, val)
         type(LogicalDim7KindINT32Stack), intent(inout):: self
            Logical(kind=INT32), dimension(:, :, :, :, :, :, :), intent(in):: val
         type(LogicalDim7KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim7KindINT32Stack
      function popLogicalDim7KindINT32Stack(self, val) result(isSuccess)
         type(LogicalDim7KindINT32Stack), intent(inout):: self
         Logical(kind=INT32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim7KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim7KindINT32Stack
      function is_emptyLogicalDim7KindINT32Stack(self) result(answer)
         type(LogicalDim7KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim7KindINT32Stack
      subroutine pushLogicalDim7KindINT64Stack(self, val)
         type(LogicalDim7KindINT64Stack), intent(inout):: self
            Logical(kind=INT64), dimension(:, :, :, :, :, :, :), intent(in):: val
         type(LogicalDim7KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushLogicalDim7KindINT64Stack
      function popLogicalDim7KindINT64Stack(self, val) result(isSuccess)
         type(LogicalDim7KindINT64Stack), intent(inout):: self
         Logical(kind=INT64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(LogicalDim7KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim7KindINT64Stack
      function is_emptyLogicalDim7KindINT64Stack(self) result(answer)
         type(LogicalDim7KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyLogicalDim7KindINT64Stack
      subroutine pushComplexDim0KindREAL32Stack(self, val)
         type(ComplexDim0KindREAL32Stack), intent(inout):: self
            Complex(kind=REAL32), intent(in):: val
         type(ComplexDim0KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim0KindREAL32Stack
      function popComplexDim0KindREAL32Stack(self, val) result(isSuccess)
         type(ComplexDim0KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim0KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim0KindREAL32Stack
      function is_emptyComplexDim0KindREAL32Stack(self) result(answer)
         type(ComplexDim0KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim0KindREAL32Stack
      subroutine pushComplexDim0KindREAL64Stack(self, val)
         type(ComplexDim0KindREAL64Stack), intent(inout):: self
            Complex(kind=REAL64), intent(in):: val
         type(ComplexDim0KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim0KindREAL64Stack
      function popComplexDim0KindREAL64Stack(self, val) result(isSuccess)
         type(ComplexDim0KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim0KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim0KindREAL64Stack
      function is_emptyComplexDim0KindREAL64Stack(self) result(answer)
         type(ComplexDim0KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim0KindREAL64Stack
      subroutine pushComplexDim0KindREAL128Stack(self, val)
         type(ComplexDim0KindREAL128Stack), intent(inout):: self
            Complex(kind=REAL128), intent(in):: val
         type(ComplexDim0KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim0KindREAL128Stack
      function popComplexDim0KindREAL128Stack(self, val) result(isSuccess)
         type(ComplexDim0KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim0KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim0KindREAL128Stack
      function is_emptyComplexDim0KindREAL128Stack(self) result(answer)
         type(ComplexDim0KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim0KindREAL128Stack
      subroutine pushComplexDim1KindREAL32Stack(self, val)
         type(ComplexDim1KindREAL32Stack), intent(inout):: self
            Complex(kind=REAL32), dimension(:), intent(in):: val
         type(ComplexDim1KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim1KindREAL32Stack
      function popComplexDim1KindREAL32Stack(self, val) result(isSuccess)
         type(ComplexDim1KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), dimension(:), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim1KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim1KindREAL32Stack
      function is_emptyComplexDim1KindREAL32Stack(self) result(answer)
         type(ComplexDim1KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim1KindREAL32Stack
      subroutine pushComplexDim1KindREAL64Stack(self, val)
         type(ComplexDim1KindREAL64Stack), intent(inout):: self
            Complex(kind=REAL64), dimension(:), intent(in):: val
         type(ComplexDim1KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim1KindREAL64Stack
      function popComplexDim1KindREAL64Stack(self, val) result(isSuccess)
         type(ComplexDim1KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), dimension(:), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim1KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim1KindREAL64Stack
      function is_emptyComplexDim1KindREAL64Stack(self) result(answer)
         type(ComplexDim1KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim1KindREAL64Stack
      subroutine pushComplexDim1KindREAL128Stack(self, val)
         type(ComplexDim1KindREAL128Stack), intent(inout):: self
            Complex(kind=REAL128), dimension(:), intent(in):: val
         type(ComplexDim1KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim1KindREAL128Stack
      function popComplexDim1KindREAL128Stack(self, val) result(isSuccess)
         type(ComplexDim1KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), dimension(:), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim1KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim1KindREAL128Stack
      function is_emptyComplexDim1KindREAL128Stack(self) result(answer)
         type(ComplexDim1KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim1KindREAL128Stack
      subroutine pushComplexDim2KindREAL32Stack(self, val)
         type(ComplexDim2KindREAL32Stack), intent(inout):: self
            Complex(kind=REAL32), dimension(:, :), intent(in):: val
         type(ComplexDim2KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim2KindREAL32Stack
      function popComplexDim2KindREAL32Stack(self, val) result(isSuccess)
         type(ComplexDim2KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim2KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim2KindREAL32Stack
      function is_emptyComplexDim2KindREAL32Stack(self) result(answer)
         type(ComplexDim2KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim2KindREAL32Stack
      subroutine pushComplexDim2KindREAL64Stack(self, val)
         type(ComplexDim2KindREAL64Stack), intent(inout):: self
            Complex(kind=REAL64), dimension(:, :), intent(in):: val
         type(ComplexDim2KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim2KindREAL64Stack
      function popComplexDim2KindREAL64Stack(self, val) result(isSuccess)
         type(ComplexDim2KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim2KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim2KindREAL64Stack
      function is_emptyComplexDim2KindREAL64Stack(self) result(answer)
         type(ComplexDim2KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim2KindREAL64Stack
      subroutine pushComplexDim2KindREAL128Stack(self, val)
         type(ComplexDim2KindREAL128Stack), intent(inout):: self
            Complex(kind=REAL128), dimension(:, :), intent(in):: val
         type(ComplexDim2KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim2KindREAL128Stack
      function popComplexDim2KindREAL128Stack(self, val) result(isSuccess)
         type(ComplexDim2KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim2KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim2KindREAL128Stack
      function is_emptyComplexDim2KindREAL128Stack(self) result(answer)
         type(ComplexDim2KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim2KindREAL128Stack
      subroutine pushComplexDim3KindREAL32Stack(self, val)
         type(ComplexDim3KindREAL32Stack), intent(inout):: self
            Complex(kind=REAL32), dimension(:, :, :), intent(in):: val
         type(ComplexDim3KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim3KindREAL32Stack
      function popComplexDim3KindREAL32Stack(self, val) result(isSuccess)
         type(ComplexDim3KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim3KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim3KindREAL32Stack
      function is_emptyComplexDim3KindREAL32Stack(self) result(answer)
         type(ComplexDim3KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim3KindREAL32Stack
      subroutine pushComplexDim3KindREAL64Stack(self, val)
         type(ComplexDim3KindREAL64Stack), intent(inout):: self
            Complex(kind=REAL64), dimension(:, :, :), intent(in):: val
         type(ComplexDim3KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim3KindREAL64Stack
      function popComplexDim3KindREAL64Stack(self, val) result(isSuccess)
         type(ComplexDim3KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim3KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim3KindREAL64Stack
      function is_emptyComplexDim3KindREAL64Stack(self) result(answer)
         type(ComplexDim3KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim3KindREAL64Stack
      subroutine pushComplexDim3KindREAL128Stack(self, val)
         type(ComplexDim3KindREAL128Stack), intent(inout):: self
            Complex(kind=REAL128), dimension(:, :, :), intent(in):: val
         type(ComplexDim3KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim3KindREAL128Stack
      function popComplexDim3KindREAL128Stack(self, val) result(isSuccess)
         type(ComplexDim3KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim3KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim3KindREAL128Stack
      function is_emptyComplexDim3KindREAL128Stack(self) result(answer)
         type(ComplexDim3KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim3KindREAL128Stack
      subroutine pushComplexDim4KindREAL32Stack(self, val)
         type(ComplexDim4KindREAL32Stack), intent(inout):: self
            Complex(kind=REAL32), dimension(:, :, :, :), intent(in):: val
         type(ComplexDim4KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim4KindREAL32Stack
      function popComplexDim4KindREAL32Stack(self, val) result(isSuccess)
         type(ComplexDim4KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim4KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim4KindREAL32Stack
      function is_emptyComplexDim4KindREAL32Stack(self) result(answer)
         type(ComplexDim4KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim4KindREAL32Stack
      subroutine pushComplexDim4KindREAL64Stack(self, val)
         type(ComplexDim4KindREAL64Stack), intent(inout):: self
            Complex(kind=REAL64), dimension(:, :, :, :), intent(in):: val
         type(ComplexDim4KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim4KindREAL64Stack
      function popComplexDim4KindREAL64Stack(self, val) result(isSuccess)
         type(ComplexDim4KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim4KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim4KindREAL64Stack
      function is_emptyComplexDim4KindREAL64Stack(self) result(answer)
         type(ComplexDim4KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim4KindREAL64Stack
      subroutine pushComplexDim4KindREAL128Stack(self, val)
         type(ComplexDim4KindREAL128Stack), intent(inout):: self
            Complex(kind=REAL128), dimension(:, :, :, :), intent(in):: val
         type(ComplexDim4KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim4KindREAL128Stack
      function popComplexDim4KindREAL128Stack(self, val) result(isSuccess)
         type(ComplexDim4KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim4KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim4KindREAL128Stack
      function is_emptyComplexDim4KindREAL128Stack(self) result(answer)
         type(ComplexDim4KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim4KindREAL128Stack
      subroutine pushComplexDim5KindREAL32Stack(self, val)
         type(ComplexDim5KindREAL32Stack), intent(inout):: self
            Complex(kind=REAL32), dimension(:, :, :, :, :), intent(in):: val
         type(ComplexDim5KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim5KindREAL32Stack
      function popComplexDim5KindREAL32Stack(self, val) result(isSuccess)
         type(ComplexDim5KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim5KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim5KindREAL32Stack
      function is_emptyComplexDim5KindREAL32Stack(self) result(answer)
         type(ComplexDim5KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim5KindREAL32Stack
      subroutine pushComplexDim5KindREAL64Stack(self, val)
         type(ComplexDim5KindREAL64Stack), intent(inout):: self
            Complex(kind=REAL64), dimension(:, :, :, :, :), intent(in):: val
         type(ComplexDim5KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim5KindREAL64Stack
      function popComplexDim5KindREAL64Stack(self, val) result(isSuccess)
         type(ComplexDim5KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim5KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim5KindREAL64Stack
      function is_emptyComplexDim5KindREAL64Stack(self) result(answer)
         type(ComplexDim5KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim5KindREAL64Stack
      subroutine pushComplexDim5KindREAL128Stack(self, val)
         type(ComplexDim5KindREAL128Stack), intent(inout):: self
            Complex(kind=REAL128), dimension(:, :, :, :, :), intent(in):: val
         type(ComplexDim5KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim5KindREAL128Stack
      function popComplexDim5KindREAL128Stack(self, val) result(isSuccess)
         type(ComplexDim5KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim5KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim5KindREAL128Stack
      function is_emptyComplexDim5KindREAL128Stack(self) result(answer)
         type(ComplexDim5KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim5KindREAL128Stack
      subroutine pushComplexDim6KindREAL32Stack(self, val)
         type(ComplexDim6KindREAL32Stack), intent(inout):: self
            Complex(kind=REAL32), dimension(:, :, :, :, :, :), intent(in):: val
         type(ComplexDim6KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim6KindREAL32Stack
      function popComplexDim6KindREAL32Stack(self, val) result(isSuccess)
         type(ComplexDim6KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim6KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim6KindREAL32Stack
      function is_emptyComplexDim6KindREAL32Stack(self) result(answer)
         type(ComplexDim6KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim6KindREAL32Stack
      subroutine pushComplexDim6KindREAL64Stack(self, val)
         type(ComplexDim6KindREAL64Stack), intent(inout):: self
            Complex(kind=REAL64), dimension(:, :, :, :, :, :), intent(in):: val
         type(ComplexDim6KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim6KindREAL64Stack
      function popComplexDim6KindREAL64Stack(self, val) result(isSuccess)
         type(ComplexDim6KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim6KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim6KindREAL64Stack
      function is_emptyComplexDim6KindREAL64Stack(self) result(answer)
         type(ComplexDim6KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim6KindREAL64Stack
      subroutine pushComplexDim6KindREAL128Stack(self, val)
         type(ComplexDim6KindREAL128Stack), intent(inout):: self
            Complex(kind=REAL128), dimension(:, :, :, :, :, :), intent(in):: val
         type(ComplexDim6KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim6KindREAL128Stack
      function popComplexDim6KindREAL128Stack(self, val) result(isSuccess)
         type(ComplexDim6KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim6KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim6KindREAL128Stack
      function is_emptyComplexDim6KindREAL128Stack(self) result(answer)
         type(ComplexDim6KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim6KindREAL128Stack
      subroutine pushComplexDim7KindREAL32Stack(self, val)
         type(ComplexDim7KindREAL32Stack), intent(inout):: self
            Complex(kind=REAL32), dimension(:, :, :, :, :, :, :), intent(in):: val
         type(ComplexDim7KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim7KindREAL32Stack
      function popComplexDim7KindREAL32Stack(self, val) result(isSuccess)
         type(ComplexDim7KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim7KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim7KindREAL32Stack
      function is_emptyComplexDim7KindREAL32Stack(self) result(answer)
         type(ComplexDim7KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim7KindREAL32Stack
      subroutine pushComplexDim7KindREAL64Stack(self, val)
         type(ComplexDim7KindREAL64Stack), intent(inout):: self
            Complex(kind=REAL64), dimension(:, :, :, :, :, :, :), intent(in):: val
         type(ComplexDim7KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim7KindREAL64Stack
      function popComplexDim7KindREAL64Stack(self, val) result(isSuccess)
         type(ComplexDim7KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim7KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim7KindREAL64Stack
      function is_emptyComplexDim7KindREAL64Stack(self) result(answer)
         type(ComplexDim7KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim7KindREAL64Stack
      subroutine pushComplexDim7KindREAL128Stack(self, val)
         type(ComplexDim7KindREAL128Stack), intent(inout):: self
            Complex(kind=REAL128), dimension(:, :, :, :, :, :, :), intent(in):: val
         type(ComplexDim7KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushComplexDim7KindREAL128Stack
      function popComplexDim7KindREAL128Stack(self, val) result(isSuccess)
         type(ComplexDim7KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(ComplexDim7KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim7KindREAL128Stack
      function is_emptyComplexDim7KindREAL128Stack(self) result(answer)
         type(ComplexDim7KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyComplexDim7KindREAL128Stack
      subroutine pushCharacterDim0Len0Stack(self, val)
         type(CharacterDim0Len0Stack), intent(inout):: self
            Character(len=*), intent(in):: val
         type(CharacterDim0Len0StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushCharacterDim0Len0Stack
      function popCharacterDim0Len0Stack(self, val) result(isSuccess)
         type(CharacterDim0Len0Stack), intent(inout):: self
         Character(len=0), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(CharacterDim0Len0StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim0Len0Stack
      function is_emptyCharacterDim0Len0Stack(self) result(answer)
         type(CharacterDim0Len0Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyCharacterDim0Len0Stack
      subroutine pushCharacterDim1Len0Stack(self, val)
         type(CharacterDim1Len0Stack), intent(inout):: self
            Character(len=*), intent(in):: val
         type(CharacterDim1Len0StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushCharacterDim1Len0Stack
      function popCharacterDim1Len0Stack(self, val) result(isSuccess)
         type(CharacterDim1Len0Stack), intent(inout):: self
         Character(len=0), dimension(:), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(CharacterDim1Len0StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim1Len0Stack
      function is_emptyCharacterDim1Len0Stack(self) result(answer)
         type(CharacterDim1Len0Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyCharacterDim1Len0Stack
      subroutine pushCharacterDim2Len0Stack(self, val)
         type(CharacterDim2Len0Stack), intent(inout):: self
            Character(len=*), intent(in):: val
         type(CharacterDim2Len0StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushCharacterDim2Len0Stack
      function popCharacterDim2Len0Stack(self, val) result(isSuccess)
         type(CharacterDim2Len0Stack), intent(inout):: self
         Character(len=0), dimension(:, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(CharacterDim2Len0StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim2Len0Stack
      function is_emptyCharacterDim2Len0Stack(self) result(answer)
         type(CharacterDim2Len0Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyCharacterDim2Len0Stack
      subroutine pushCharacterDim3Len0Stack(self, val)
         type(CharacterDim3Len0Stack), intent(inout):: self
            Character(len=*), intent(in):: val
         type(CharacterDim3Len0StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushCharacterDim3Len0Stack
      function popCharacterDim3Len0Stack(self, val) result(isSuccess)
         type(CharacterDim3Len0Stack), intent(inout):: self
         Character(len=0), dimension(:, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(CharacterDim3Len0StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim3Len0Stack
      function is_emptyCharacterDim3Len0Stack(self) result(answer)
         type(CharacterDim3Len0Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyCharacterDim3Len0Stack
      subroutine pushCharacterDim4Len0Stack(self, val)
         type(CharacterDim4Len0Stack), intent(inout):: self
            Character(len=*), intent(in):: val
         type(CharacterDim4Len0StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushCharacterDim4Len0Stack
      function popCharacterDim4Len0Stack(self, val) result(isSuccess)
         type(CharacterDim4Len0Stack), intent(inout):: self
         Character(len=0), dimension(:, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(CharacterDim4Len0StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim4Len0Stack
      function is_emptyCharacterDim4Len0Stack(self) result(answer)
         type(CharacterDim4Len0Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyCharacterDim4Len0Stack
      subroutine pushCharacterDim5Len0Stack(self, val)
         type(CharacterDim5Len0Stack), intent(inout):: self
            Character(len=*), intent(in):: val
         type(CharacterDim5Len0StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushCharacterDim5Len0Stack
      function popCharacterDim5Len0Stack(self, val) result(isSuccess)
         type(CharacterDim5Len0Stack), intent(inout):: self
         Character(len=0), dimension(:, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(CharacterDim5Len0StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim5Len0Stack
      function is_emptyCharacterDim5Len0Stack(self) result(answer)
         type(CharacterDim5Len0Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyCharacterDim5Len0Stack
      subroutine pushCharacterDim6Len0Stack(self, val)
         type(CharacterDim6Len0Stack), intent(inout):: self
            Character(len=*), intent(in):: val
         type(CharacterDim6Len0StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushCharacterDim6Len0Stack
      function popCharacterDim6Len0Stack(self, val) result(isSuccess)
         type(CharacterDim6Len0Stack), intent(inout):: self
         Character(len=0), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(CharacterDim6Len0StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim6Len0Stack
      function is_emptyCharacterDim6Len0Stack(self) result(answer)
         type(CharacterDim6Len0Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyCharacterDim6Len0Stack
      subroutine pushCharacterDim7Len0Stack(self, val)
         type(CharacterDim7Len0Stack), intent(inout):: self
            Character(len=*), intent(in):: val
         type(CharacterDim7Len0StackNode), pointer:: newNode
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%head
         self%head => newNode
      end subroutine pushCharacterDim7Len0Stack
      function popCharacterDim7Len0Stack(self, val) result(isSuccess)
         type(CharacterDim7Len0Stack), intent(inout):: self
         Character(len=0), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
         Logical:: isSuccess
         type(CharacterDim7Len0StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         val = self%head%val
         removedNode => self%head
         self%head => self%head%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim7Len0Stack
      function is_emptyCharacterDim7Len0Stack(self) result(answer)
         type(CharacterDim7Len0Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%head)
      end function is_emptyCharacterDim7Len0Stack
end module stack_lib
