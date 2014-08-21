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
         module procedure pushLogicalDim0Stack
      end interface push
      interface pop
         module procedure popLogicalDim0Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim0Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim1Stack
      end interface push
      interface pop
         module procedure popLogicalDim1Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim1Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim2Stack
      end interface push
      interface pop
         module procedure popLogicalDim2Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim2Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim3Stack
      end interface push
      interface pop
         module procedure popLogicalDim3Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim3Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim4Stack
      end interface push
      interface pop
         module procedure popLogicalDim4Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim4Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim5Stack
      end interface push
      interface pop
         module procedure popLogicalDim5Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim5Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim6Stack
      end interface push
      interface pop
         module procedure popLogicalDim6Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim6Stack
      end interface is_empty
      interface push
         module procedure pushLogicalDim7Stack
      end interface push
      interface pop
         module procedure popLogicalDim7Stack
      end interface pop
      interface is_empty
         module procedure is_emptyLogicalDim7Stack
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
         module procedure pushCharacterDim0Len1Stack
      end interface push
      interface pop
         module procedure popCharacterDim0Len1Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim0Len1Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim0Len2Stack
      end interface push
      interface pop
         module procedure popCharacterDim0Len2Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim0Len2Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim0Len4Stack
      end interface push
      interface pop
         module procedure popCharacterDim0Len4Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim0Len4Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim0Len8Stack
      end interface push
      interface pop
         module procedure popCharacterDim0Len8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim0Len8Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim0Len16Stack
      end interface push
      interface pop
         module procedure popCharacterDim0Len16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim0Len16Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim0Len32Stack
      end interface push
      interface pop
         module procedure popCharacterDim0Len32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim0Len32Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim0Len64Stack
      end interface push
      interface pop
         module procedure popCharacterDim0Len64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim0Len64Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim0Len128Stack
      end interface push
      interface pop
         module procedure popCharacterDim0Len128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim0Len128Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim0Len256Stack
      end interface push
      interface pop
         module procedure popCharacterDim0Len256Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim0Len256Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim0Len512Stack
      end interface push
      interface pop
         module procedure popCharacterDim0Len512Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim0Len512Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim0Len1024Stack
      end interface push
      interface pop
         module procedure popCharacterDim0Len1024Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim0Len1024Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim1Len1Stack
      end interface push
      interface pop
         module procedure popCharacterDim1Len1Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim1Len1Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim1Len2Stack
      end interface push
      interface pop
         module procedure popCharacterDim1Len2Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim1Len2Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim1Len4Stack
      end interface push
      interface pop
         module procedure popCharacterDim1Len4Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim1Len4Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim1Len8Stack
      end interface push
      interface pop
         module procedure popCharacterDim1Len8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim1Len8Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim1Len16Stack
      end interface push
      interface pop
         module procedure popCharacterDim1Len16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim1Len16Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim1Len32Stack
      end interface push
      interface pop
         module procedure popCharacterDim1Len32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim1Len32Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim1Len64Stack
      end interface push
      interface pop
         module procedure popCharacterDim1Len64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim1Len64Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim1Len128Stack
      end interface push
      interface pop
         module procedure popCharacterDim1Len128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim1Len128Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim1Len256Stack
      end interface push
      interface pop
         module procedure popCharacterDim1Len256Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim1Len256Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim1Len512Stack
      end interface push
      interface pop
         module procedure popCharacterDim1Len512Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim1Len512Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim1Len1024Stack
      end interface push
      interface pop
         module procedure popCharacterDim1Len1024Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim1Len1024Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim2Len1Stack
      end interface push
      interface pop
         module procedure popCharacterDim2Len1Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim2Len1Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim2Len2Stack
      end interface push
      interface pop
         module procedure popCharacterDim2Len2Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim2Len2Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim2Len4Stack
      end interface push
      interface pop
         module procedure popCharacterDim2Len4Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim2Len4Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim2Len8Stack
      end interface push
      interface pop
         module procedure popCharacterDim2Len8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim2Len8Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim2Len16Stack
      end interface push
      interface pop
         module procedure popCharacterDim2Len16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim2Len16Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim2Len32Stack
      end interface push
      interface pop
         module procedure popCharacterDim2Len32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim2Len32Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim2Len64Stack
      end interface push
      interface pop
         module procedure popCharacterDim2Len64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim2Len64Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim2Len128Stack
      end interface push
      interface pop
         module procedure popCharacterDim2Len128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim2Len128Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim2Len256Stack
      end interface push
      interface pop
         module procedure popCharacterDim2Len256Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim2Len256Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim2Len512Stack
      end interface push
      interface pop
         module procedure popCharacterDim2Len512Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim2Len512Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim2Len1024Stack
      end interface push
      interface pop
         module procedure popCharacterDim2Len1024Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim2Len1024Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim3Len1Stack
      end interface push
      interface pop
         module procedure popCharacterDim3Len1Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim3Len1Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim3Len2Stack
      end interface push
      interface pop
         module procedure popCharacterDim3Len2Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim3Len2Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim3Len4Stack
      end interface push
      interface pop
         module procedure popCharacterDim3Len4Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim3Len4Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim3Len8Stack
      end interface push
      interface pop
         module procedure popCharacterDim3Len8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim3Len8Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim3Len16Stack
      end interface push
      interface pop
         module procedure popCharacterDim3Len16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim3Len16Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim3Len32Stack
      end interface push
      interface pop
         module procedure popCharacterDim3Len32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim3Len32Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim3Len64Stack
      end interface push
      interface pop
         module procedure popCharacterDim3Len64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim3Len64Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim3Len128Stack
      end interface push
      interface pop
         module procedure popCharacterDim3Len128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim3Len128Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim3Len256Stack
      end interface push
      interface pop
         module procedure popCharacterDim3Len256Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim3Len256Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim3Len512Stack
      end interface push
      interface pop
         module procedure popCharacterDim3Len512Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim3Len512Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim3Len1024Stack
      end interface push
      interface pop
         module procedure popCharacterDim3Len1024Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim3Len1024Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim4Len1Stack
      end interface push
      interface pop
         module procedure popCharacterDim4Len1Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim4Len1Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim4Len2Stack
      end interface push
      interface pop
         module procedure popCharacterDim4Len2Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim4Len2Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim4Len4Stack
      end interface push
      interface pop
         module procedure popCharacterDim4Len4Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim4Len4Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim4Len8Stack
      end interface push
      interface pop
         module procedure popCharacterDim4Len8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim4Len8Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim4Len16Stack
      end interface push
      interface pop
         module procedure popCharacterDim4Len16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim4Len16Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim4Len32Stack
      end interface push
      interface pop
         module procedure popCharacterDim4Len32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim4Len32Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim4Len64Stack
      end interface push
      interface pop
         module procedure popCharacterDim4Len64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim4Len64Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim4Len128Stack
      end interface push
      interface pop
         module procedure popCharacterDim4Len128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim4Len128Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim4Len256Stack
      end interface push
      interface pop
         module procedure popCharacterDim4Len256Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim4Len256Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim4Len512Stack
      end interface push
      interface pop
         module procedure popCharacterDim4Len512Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim4Len512Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim4Len1024Stack
      end interface push
      interface pop
         module procedure popCharacterDim4Len1024Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim4Len1024Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim5Len1Stack
      end interface push
      interface pop
         module procedure popCharacterDim5Len1Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim5Len1Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim5Len2Stack
      end interface push
      interface pop
         module procedure popCharacterDim5Len2Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim5Len2Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim5Len4Stack
      end interface push
      interface pop
         module procedure popCharacterDim5Len4Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim5Len4Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim5Len8Stack
      end interface push
      interface pop
         module procedure popCharacterDim5Len8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim5Len8Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim5Len16Stack
      end interface push
      interface pop
         module procedure popCharacterDim5Len16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim5Len16Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim5Len32Stack
      end interface push
      interface pop
         module procedure popCharacterDim5Len32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim5Len32Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim5Len64Stack
      end interface push
      interface pop
         module procedure popCharacterDim5Len64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim5Len64Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim5Len128Stack
      end interface push
      interface pop
         module procedure popCharacterDim5Len128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim5Len128Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim5Len256Stack
      end interface push
      interface pop
         module procedure popCharacterDim5Len256Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim5Len256Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim5Len512Stack
      end interface push
      interface pop
         module procedure popCharacterDim5Len512Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim5Len512Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim5Len1024Stack
      end interface push
      interface pop
         module procedure popCharacterDim5Len1024Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim5Len1024Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim6Len1Stack
      end interface push
      interface pop
         module procedure popCharacterDim6Len1Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim6Len1Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim6Len2Stack
      end interface push
      interface pop
         module procedure popCharacterDim6Len2Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim6Len2Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim6Len4Stack
      end interface push
      interface pop
         module procedure popCharacterDim6Len4Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim6Len4Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim6Len8Stack
      end interface push
      interface pop
         module procedure popCharacterDim6Len8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim6Len8Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim6Len16Stack
      end interface push
      interface pop
         module procedure popCharacterDim6Len16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim6Len16Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim6Len32Stack
      end interface push
      interface pop
         module procedure popCharacterDim6Len32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim6Len32Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim6Len64Stack
      end interface push
      interface pop
         module procedure popCharacterDim6Len64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim6Len64Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim6Len128Stack
      end interface push
      interface pop
         module procedure popCharacterDim6Len128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim6Len128Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim6Len256Stack
      end interface push
      interface pop
         module procedure popCharacterDim6Len256Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim6Len256Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim6Len512Stack
      end interface push
      interface pop
         module procedure popCharacterDim6Len512Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim6Len512Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim6Len1024Stack
      end interface push
      interface pop
         module procedure popCharacterDim6Len1024Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim6Len1024Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim7Len1Stack
      end interface push
      interface pop
         module procedure popCharacterDim7Len1Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim7Len1Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim7Len2Stack
      end interface push
      interface pop
         module procedure popCharacterDim7Len2Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim7Len2Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim7Len4Stack
      end interface push
      interface pop
         module procedure popCharacterDim7Len4Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim7Len4Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim7Len8Stack
      end interface push
      interface pop
         module procedure popCharacterDim7Len8Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim7Len8Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim7Len16Stack
      end interface push
      interface pop
         module procedure popCharacterDim7Len16Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim7Len16Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim7Len32Stack
      end interface push
      interface pop
         module procedure popCharacterDim7Len32Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim7Len32Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim7Len64Stack
      end interface push
      interface pop
         module procedure popCharacterDim7Len64Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim7Len64Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim7Len128Stack
      end interface push
      interface pop
         module procedure popCharacterDim7Len128Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim7Len128Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim7Len256Stack
      end interface push
      interface pop
         module procedure popCharacterDim7Len256Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim7Len256Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim7Len512Stack
      end interface push
      interface pop
         module procedure popCharacterDim7Len512Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim7Len512Stack
      end interface is_empty
      interface push
         module procedure pushCharacterDim7Len1024Stack
      end interface push
      interface pop
         module procedure popCharacterDim7Len1024Stack
      end interface pop
      interface is_empty
         module procedure is_emptyCharacterDim7Len1024Stack
      end interface is_empty
   type, public:: Stack
   end type Stack
   type:: StackNode
   end type StackNode
      type, extends(Stack), public:: RealDim0KindREAL32Stack
         type(RealDim0KindREAL32StackNode), pointer:: entry => null()
      end type RealDim0KindREAL32Stack
      type, extends(StackNode):: RealDim0KindREAL32StackNode
         Real(kind=REAL32):: value
         type(RealDim0KindREAL32StackNode), pointer:: prev => null()
      end type RealDim0KindREAL32StackNode
      type, extends(Stack), public:: RealDim0KindREAL64Stack
         type(RealDim0KindREAL64StackNode), pointer:: entry => null()
      end type RealDim0KindREAL64Stack
      type, extends(StackNode):: RealDim0KindREAL64StackNode
         Real(kind=REAL64):: value
         type(RealDim0KindREAL64StackNode), pointer:: prev => null()
      end type RealDim0KindREAL64StackNode
      type, extends(Stack), public:: RealDim0KindREAL128Stack
         type(RealDim0KindREAL128StackNode), pointer:: entry => null()
      end type RealDim0KindREAL128Stack
      type, extends(StackNode):: RealDim0KindREAL128StackNode
         Real(kind=REAL128):: value
         type(RealDim0KindREAL128StackNode), pointer:: prev => null()
      end type RealDim0KindREAL128StackNode
      type, extends(Stack), public:: RealDim1KindREAL32Stack
         type(RealDim1KindREAL32StackNode), pointer:: entry => null()
      end type RealDim1KindREAL32Stack
      type, extends(StackNode):: RealDim1KindREAL32StackNode
         Real(kind=REAL32), dimension(:), allocatable:: value
         type(RealDim1KindREAL32StackNode), pointer:: prev => null()
      end type RealDim1KindREAL32StackNode
      type, extends(Stack), public:: RealDim1KindREAL64Stack
         type(RealDim1KindREAL64StackNode), pointer:: entry => null()
      end type RealDim1KindREAL64Stack
      type, extends(StackNode):: RealDim1KindREAL64StackNode
         Real(kind=REAL64), dimension(:), allocatable:: value
         type(RealDim1KindREAL64StackNode), pointer:: prev => null()
      end type RealDim1KindREAL64StackNode
      type, extends(Stack), public:: RealDim1KindREAL128Stack
         type(RealDim1KindREAL128StackNode), pointer:: entry => null()
      end type RealDim1KindREAL128Stack
      type, extends(StackNode):: RealDim1KindREAL128StackNode
         Real(kind=REAL128), dimension(:), allocatable:: value
         type(RealDim1KindREAL128StackNode), pointer:: prev => null()
      end type RealDim1KindREAL128StackNode
      type, extends(Stack), public:: RealDim2KindREAL32Stack
         type(RealDim2KindREAL32StackNode), pointer:: entry => null()
      end type RealDim2KindREAL32Stack
      type, extends(StackNode):: RealDim2KindREAL32StackNode
         Real(kind=REAL32), dimension(:, :), allocatable:: value
         type(RealDim2KindREAL32StackNode), pointer:: prev => null()
      end type RealDim2KindREAL32StackNode
      type, extends(Stack), public:: RealDim2KindREAL64Stack
         type(RealDim2KindREAL64StackNode), pointer:: entry => null()
      end type RealDim2KindREAL64Stack
      type, extends(StackNode):: RealDim2KindREAL64StackNode
         Real(kind=REAL64), dimension(:, :), allocatable:: value
         type(RealDim2KindREAL64StackNode), pointer:: prev => null()
      end type RealDim2KindREAL64StackNode
      type, extends(Stack), public:: RealDim2KindREAL128Stack
         type(RealDim2KindREAL128StackNode), pointer:: entry => null()
      end type RealDim2KindREAL128Stack
      type, extends(StackNode):: RealDim2KindREAL128StackNode
         Real(kind=REAL128), dimension(:, :), allocatable:: value
         type(RealDim2KindREAL128StackNode), pointer:: prev => null()
      end type RealDim2KindREAL128StackNode
      type, extends(Stack), public:: RealDim3KindREAL32Stack
         type(RealDim3KindREAL32StackNode), pointer:: entry => null()
      end type RealDim3KindREAL32Stack
      type, extends(StackNode):: RealDim3KindREAL32StackNode
         Real(kind=REAL32), dimension(:, :, :), allocatable:: value
         type(RealDim3KindREAL32StackNode), pointer:: prev => null()
      end type RealDim3KindREAL32StackNode
      type, extends(Stack), public:: RealDim3KindREAL64Stack
         type(RealDim3KindREAL64StackNode), pointer:: entry => null()
      end type RealDim3KindREAL64Stack
      type, extends(StackNode):: RealDim3KindREAL64StackNode
         Real(kind=REAL64), dimension(:, :, :), allocatable:: value
         type(RealDim3KindREAL64StackNode), pointer:: prev => null()
      end type RealDim3KindREAL64StackNode
      type, extends(Stack), public:: RealDim3KindREAL128Stack
         type(RealDim3KindREAL128StackNode), pointer:: entry => null()
      end type RealDim3KindREAL128Stack
      type, extends(StackNode):: RealDim3KindREAL128StackNode
         Real(kind=REAL128), dimension(:, :, :), allocatable:: value
         type(RealDim3KindREAL128StackNode), pointer:: prev => null()
      end type RealDim3KindREAL128StackNode
      type, extends(Stack), public:: RealDim4KindREAL32Stack
         type(RealDim4KindREAL32StackNode), pointer:: entry => null()
      end type RealDim4KindREAL32Stack
      type, extends(StackNode):: RealDim4KindREAL32StackNode
         Real(kind=REAL32), dimension(:, :, :, :), allocatable:: value
         type(RealDim4KindREAL32StackNode), pointer:: prev => null()
      end type RealDim4KindREAL32StackNode
      type, extends(Stack), public:: RealDim4KindREAL64Stack
         type(RealDim4KindREAL64StackNode), pointer:: entry => null()
      end type RealDim4KindREAL64Stack
      type, extends(StackNode):: RealDim4KindREAL64StackNode
         Real(kind=REAL64), dimension(:, :, :, :), allocatable:: value
         type(RealDim4KindREAL64StackNode), pointer:: prev => null()
      end type RealDim4KindREAL64StackNode
      type, extends(Stack), public:: RealDim4KindREAL128Stack
         type(RealDim4KindREAL128StackNode), pointer:: entry => null()
      end type RealDim4KindREAL128Stack
      type, extends(StackNode):: RealDim4KindREAL128StackNode
         Real(kind=REAL128), dimension(:, :, :, :), allocatable:: value
         type(RealDim4KindREAL128StackNode), pointer:: prev => null()
      end type RealDim4KindREAL128StackNode
      type, extends(Stack), public:: RealDim5KindREAL32Stack
         type(RealDim5KindREAL32StackNode), pointer:: entry => null()
      end type RealDim5KindREAL32Stack
      type, extends(StackNode):: RealDim5KindREAL32StackNode
         Real(kind=REAL32), dimension(:, :, :, :, :), allocatable:: value
         type(RealDim5KindREAL32StackNode), pointer:: prev => null()
      end type RealDim5KindREAL32StackNode
      type, extends(Stack), public:: RealDim5KindREAL64Stack
         type(RealDim5KindREAL64StackNode), pointer:: entry => null()
      end type RealDim5KindREAL64Stack
      type, extends(StackNode):: RealDim5KindREAL64StackNode
         Real(kind=REAL64), dimension(:, :, :, :, :), allocatable:: value
         type(RealDim5KindREAL64StackNode), pointer:: prev => null()
      end type RealDim5KindREAL64StackNode
      type, extends(Stack), public:: RealDim5KindREAL128Stack
         type(RealDim5KindREAL128StackNode), pointer:: entry => null()
      end type RealDim5KindREAL128Stack
      type, extends(StackNode):: RealDim5KindREAL128StackNode
         Real(kind=REAL128), dimension(:, :, :, :, :), allocatable:: value
         type(RealDim5KindREAL128StackNode), pointer:: prev => null()
      end type RealDim5KindREAL128StackNode
      type, extends(Stack), public:: RealDim6KindREAL32Stack
         type(RealDim6KindREAL32StackNode), pointer:: entry => null()
      end type RealDim6KindREAL32Stack
      type, extends(StackNode):: RealDim6KindREAL32StackNode
         Real(kind=REAL32), dimension(:, :, :, :, :, :), allocatable:: value
         type(RealDim6KindREAL32StackNode), pointer:: prev => null()
      end type RealDim6KindREAL32StackNode
      type, extends(Stack), public:: RealDim6KindREAL64Stack
         type(RealDim6KindREAL64StackNode), pointer:: entry => null()
      end type RealDim6KindREAL64Stack
      type, extends(StackNode):: RealDim6KindREAL64StackNode
         Real(kind=REAL64), dimension(:, :, :, :, :, :), allocatable:: value
         type(RealDim6KindREAL64StackNode), pointer:: prev => null()
      end type RealDim6KindREAL64StackNode
      type, extends(Stack), public:: RealDim6KindREAL128Stack
         type(RealDim6KindREAL128StackNode), pointer:: entry => null()
      end type RealDim6KindREAL128Stack
      type, extends(StackNode):: RealDim6KindREAL128StackNode
         Real(kind=REAL128), dimension(:, :, :, :, :, :), allocatable:: value
         type(RealDim6KindREAL128StackNode), pointer:: prev => null()
      end type RealDim6KindREAL128StackNode
      type, extends(Stack), public:: RealDim7KindREAL32Stack
         type(RealDim7KindREAL32StackNode), pointer:: entry => null()
      end type RealDim7KindREAL32Stack
      type, extends(StackNode):: RealDim7KindREAL32StackNode
         Real(kind=REAL32), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(RealDim7KindREAL32StackNode), pointer:: prev => null()
      end type RealDim7KindREAL32StackNode
      type, extends(Stack), public:: RealDim7KindREAL64Stack
         type(RealDim7KindREAL64StackNode), pointer:: entry => null()
      end type RealDim7KindREAL64Stack
      type, extends(StackNode):: RealDim7KindREAL64StackNode
         Real(kind=REAL64), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(RealDim7KindREAL64StackNode), pointer:: prev => null()
      end type RealDim7KindREAL64StackNode
      type, extends(Stack), public:: RealDim7KindREAL128Stack
         type(RealDim7KindREAL128StackNode), pointer:: entry => null()
      end type RealDim7KindREAL128Stack
      type, extends(StackNode):: RealDim7KindREAL128StackNode
         Real(kind=REAL128), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(RealDim7KindREAL128StackNode), pointer:: prev => null()
      end type RealDim7KindREAL128StackNode
      type, extends(Stack), public:: IntegerDim0KindINT8Stack
         type(IntegerDim0KindINT8StackNode), pointer:: entry => null()
      end type IntegerDim0KindINT8Stack
      type, extends(StackNode):: IntegerDim0KindINT8StackNode
         Integer(kind=INT8):: value
         type(IntegerDim0KindINT8StackNode), pointer:: prev => null()
      end type IntegerDim0KindINT8StackNode
      type, extends(Stack), public:: IntegerDim0KindINT16Stack
         type(IntegerDim0KindINT16StackNode), pointer:: entry => null()
      end type IntegerDim0KindINT16Stack
      type, extends(StackNode):: IntegerDim0KindINT16StackNode
         Integer(kind=INT16):: value
         type(IntegerDim0KindINT16StackNode), pointer:: prev => null()
      end type IntegerDim0KindINT16StackNode
      type, extends(Stack), public:: IntegerDim0KindINT32Stack
         type(IntegerDim0KindINT32StackNode), pointer:: entry => null()
      end type IntegerDim0KindINT32Stack
      type, extends(StackNode):: IntegerDim0KindINT32StackNode
         Integer(kind=INT32):: value
         type(IntegerDim0KindINT32StackNode), pointer:: prev => null()
      end type IntegerDim0KindINT32StackNode
      type, extends(Stack), public:: IntegerDim0KindINT64Stack
         type(IntegerDim0KindINT64StackNode), pointer:: entry => null()
      end type IntegerDim0KindINT64Stack
      type, extends(StackNode):: IntegerDim0KindINT64StackNode
         Integer(kind=INT64):: value
         type(IntegerDim0KindINT64StackNode), pointer:: prev => null()
      end type IntegerDim0KindINT64StackNode
      type, extends(Stack), public:: IntegerDim1KindINT8Stack
         type(IntegerDim1KindINT8StackNode), pointer:: entry => null()
      end type IntegerDim1KindINT8Stack
      type, extends(StackNode):: IntegerDim1KindINT8StackNode
         Integer(kind=INT8), dimension(:), allocatable:: value
         type(IntegerDim1KindINT8StackNode), pointer:: prev => null()
      end type IntegerDim1KindINT8StackNode
      type, extends(Stack), public:: IntegerDim1KindINT16Stack
         type(IntegerDim1KindINT16StackNode), pointer:: entry => null()
      end type IntegerDim1KindINT16Stack
      type, extends(StackNode):: IntegerDim1KindINT16StackNode
         Integer(kind=INT16), dimension(:), allocatable:: value
         type(IntegerDim1KindINT16StackNode), pointer:: prev => null()
      end type IntegerDim1KindINT16StackNode
      type, extends(Stack), public:: IntegerDim1KindINT32Stack
         type(IntegerDim1KindINT32StackNode), pointer:: entry => null()
      end type IntegerDim1KindINT32Stack
      type, extends(StackNode):: IntegerDim1KindINT32StackNode
         Integer(kind=INT32), dimension(:), allocatable:: value
         type(IntegerDim1KindINT32StackNode), pointer:: prev => null()
      end type IntegerDim1KindINT32StackNode
      type, extends(Stack), public:: IntegerDim1KindINT64Stack
         type(IntegerDim1KindINT64StackNode), pointer:: entry => null()
      end type IntegerDim1KindINT64Stack
      type, extends(StackNode):: IntegerDim1KindINT64StackNode
         Integer(kind=INT64), dimension(:), allocatable:: value
         type(IntegerDim1KindINT64StackNode), pointer:: prev => null()
      end type IntegerDim1KindINT64StackNode
      type, extends(Stack), public:: IntegerDim2KindINT8Stack
         type(IntegerDim2KindINT8StackNode), pointer:: entry => null()
      end type IntegerDim2KindINT8Stack
      type, extends(StackNode):: IntegerDim2KindINT8StackNode
         Integer(kind=INT8), dimension(:, :), allocatable:: value
         type(IntegerDim2KindINT8StackNode), pointer:: prev => null()
      end type IntegerDim2KindINT8StackNode
      type, extends(Stack), public:: IntegerDim2KindINT16Stack
         type(IntegerDim2KindINT16StackNode), pointer:: entry => null()
      end type IntegerDim2KindINT16Stack
      type, extends(StackNode):: IntegerDim2KindINT16StackNode
         Integer(kind=INT16), dimension(:, :), allocatable:: value
         type(IntegerDim2KindINT16StackNode), pointer:: prev => null()
      end type IntegerDim2KindINT16StackNode
      type, extends(Stack), public:: IntegerDim2KindINT32Stack
         type(IntegerDim2KindINT32StackNode), pointer:: entry => null()
      end type IntegerDim2KindINT32Stack
      type, extends(StackNode):: IntegerDim2KindINT32StackNode
         Integer(kind=INT32), dimension(:, :), allocatable:: value
         type(IntegerDim2KindINT32StackNode), pointer:: prev => null()
      end type IntegerDim2KindINT32StackNode
      type, extends(Stack), public:: IntegerDim2KindINT64Stack
         type(IntegerDim2KindINT64StackNode), pointer:: entry => null()
      end type IntegerDim2KindINT64Stack
      type, extends(StackNode):: IntegerDim2KindINT64StackNode
         Integer(kind=INT64), dimension(:, :), allocatable:: value
         type(IntegerDim2KindINT64StackNode), pointer:: prev => null()
      end type IntegerDim2KindINT64StackNode
      type, extends(Stack), public:: IntegerDim3KindINT8Stack
         type(IntegerDim3KindINT8StackNode), pointer:: entry => null()
      end type IntegerDim3KindINT8Stack
      type, extends(StackNode):: IntegerDim3KindINT8StackNode
         Integer(kind=INT8), dimension(:, :, :), allocatable:: value
         type(IntegerDim3KindINT8StackNode), pointer:: prev => null()
      end type IntegerDim3KindINT8StackNode
      type, extends(Stack), public:: IntegerDim3KindINT16Stack
         type(IntegerDim3KindINT16StackNode), pointer:: entry => null()
      end type IntegerDim3KindINT16Stack
      type, extends(StackNode):: IntegerDim3KindINT16StackNode
         Integer(kind=INT16), dimension(:, :, :), allocatable:: value
         type(IntegerDim3KindINT16StackNode), pointer:: prev => null()
      end type IntegerDim3KindINT16StackNode
      type, extends(Stack), public:: IntegerDim3KindINT32Stack
         type(IntegerDim3KindINT32StackNode), pointer:: entry => null()
      end type IntegerDim3KindINT32Stack
      type, extends(StackNode):: IntegerDim3KindINT32StackNode
         Integer(kind=INT32), dimension(:, :, :), allocatable:: value
         type(IntegerDim3KindINT32StackNode), pointer:: prev => null()
      end type IntegerDim3KindINT32StackNode
      type, extends(Stack), public:: IntegerDim3KindINT64Stack
         type(IntegerDim3KindINT64StackNode), pointer:: entry => null()
      end type IntegerDim3KindINT64Stack
      type, extends(StackNode):: IntegerDim3KindINT64StackNode
         Integer(kind=INT64), dimension(:, :, :), allocatable:: value
         type(IntegerDim3KindINT64StackNode), pointer:: prev => null()
      end type IntegerDim3KindINT64StackNode
      type, extends(Stack), public:: IntegerDim4KindINT8Stack
         type(IntegerDim4KindINT8StackNode), pointer:: entry => null()
      end type IntegerDim4KindINT8Stack
      type, extends(StackNode):: IntegerDim4KindINT8StackNode
         Integer(kind=INT8), dimension(:, :, :, :), allocatable:: value
         type(IntegerDim4KindINT8StackNode), pointer:: prev => null()
      end type IntegerDim4KindINT8StackNode
      type, extends(Stack), public:: IntegerDim4KindINT16Stack
         type(IntegerDim4KindINT16StackNode), pointer:: entry => null()
      end type IntegerDim4KindINT16Stack
      type, extends(StackNode):: IntegerDim4KindINT16StackNode
         Integer(kind=INT16), dimension(:, :, :, :), allocatable:: value
         type(IntegerDim4KindINT16StackNode), pointer:: prev => null()
      end type IntegerDim4KindINT16StackNode
      type, extends(Stack), public:: IntegerDim4KindINT32Stack
         type(IntegerDim4KindINT32StackNode), pointer:: entry => null()
      end type IntegerDim4KindINT32Stack
      type, extends(StackNode):: IntegerDim4KindINT32StackNode
         Integer(kind=INT32), dimension(:, :, :, :), allocatable:: value
         type(IntegerDim4KindINT32StackNode), pointer:: prev => null()
      end type IntegerDim4KindINT32StackNode
      type, extends(Stack), public:: IntegerDim4KindINT64Stack
         type(IntegerDim4KindINT64StackNode), pointer:: entry => null()
      end type IntegerDim4KindINT64Stack
      type, extends(StackNode):: IntegerDim4KindINT64StackNode
         Integer(kind=INT64), dimension(:, :, :, :), allocatable:: value
         type(IntegerDim4KindINT64StackNode), pointer:: prev => null()
      end type IntegerDim4KindINT64StackNode
      type, extends(Stack), public:: IntegerDim5KindINT8Stack
         type(IntegerDim5KindINT8StackNode), pointer:: entry => null()
      end type IntegerDim5KindINT8Stack
      type, extends(StackNode):: IntegerDim5KindINT8StackNode
         Integer(kind=INT8), dimension(:, :, :, :, :), allocatable:: value
         type(IntegerDim5KindINT8StackNode), pointer:: prev => null()
      end type IntegerDim5KindINT8StackNode
      type, extends(Stack), public:: IntegerDim5KindINT16Stack
         type(IntegerDim5KindINT16StackNode), pointer:: entry => null()
      end type IntegerDim5KindINT16Stack
      type, extends(StackNode):: IntegerDim5KindINT16StackNode
         Integer(kind=INT16), dimension(:, :, :, :, :), allocatable:: value
         type(IntegerDim5KindINT16StackNode), pointer:: prev => null()
      end type IntegerDim5KindINT16StackNode
      type, extends(Stack), public:: IntegerDim5KindINT32Stack
         type(IntegerDim5KindINT32StackNode), pointer:: entry => null()
      end type IntegerDim5KindINT32Stack
      type, extends(StackNode):: IntegerDim5KindINT32StackNode
         Integer(kind=INT32), dimension(:, :, :, :, :), allocatable:: value
         type(IntegerDim5KindINT32StackNode), pointer:: prev => null()
      end type IntegerDim5KindINT32StackNode
      type, extends(Stack), public:: IntegerDim5KindINT64Stack
         type(IntegerDim5KindINT64StackNode), pointer:: entry => null()
      end type IntegerDim5KindINT64Stack
      type, extends(StackNode):: IntegerDim5KindINT64StackNode
         Integer(kind=INT64), dimension(:, :, :, :, :), allocatable:: value
         type(IntegerDim5KindINT64StackNode), pointer:: prev => null()
      end type IntegerDim5KindINT64StackNode
      type, extends(Stack), public:: IntegerDim6KindINT8Stack
         type(IntegerDim6KindINT8StackNode), pointer:: entry => null()
      end type IntegerDim6KindINT8Stack
      type, extends(StackNode):: IntegerDim6KindINT8StackNode
         Integer(kind=INT8), dimension(:, :, :, :, :, :), allocatable:: value
         type(IntegerDim6KindINT8StackNode), pointer:: prev => null()
      end type IntegerDim6KindINT8StackNode
      type, extends(Stack), public:: IntegerDim6KindINT16Stack
         type(IntegerDim6KindINT16StackNode), pointer:: entry => null()
      end type IntegerDim6KindINT16Stack
      type, extends(StackNode):: IntegerDim6KindINT16StackNode
         Integer(kind=INT16), dimension(:, :, :, :, :, :), allocatable:: value
         type(IntegerDim6KindINT16StackNode), pointer:: prev => null()
      end type IntegerDim6KindINT16StackNode
      type, extends(Stack), public:: IntegerDim6KindINT32Stack
         type(IntegerDim6KindINT32StackNode), pointer:: entry => null()
      end type IntegerDim6KindINT32Stack
      type, extends(StackNode):: IntegerDim6KindINT32StackNode
         Integer(kind=INT32), dimension(:, :, :, :, :, :), allocatable:: value
         type(IntegerDim6KindINT32StackNode), pointer:: prev => null()
      end type IntegerDim6KindINT32StackNode
      type, extends(Stack), public:: IntegerDim6KindINT64Stack
         type(IntegerDim6KindINT64StackNode), pointer:: entry => null()
      end type IntegerDim6KindINT64Stack
      type, extends(StackNode):: IntegerDim6KindINT64StackNode
         Integer(kind=INT64), dimension(:, :, :, :, :, :), allocatable:: value
         type(IntegerDim6KindINT64StackNode), pointer:: prev => null()
      end type IntegerDim6KindINT64StackNode
      type, extends(Stack), public:: IntegerDim7KindINT8Stack
         type(IntegerDim7KindINT8StackNode), pointer:: entry => null()
      end type IntegerDim7KindINT8Stack
      type, extends(StackNode):: IntegerDim7KindINT8StackNode
         Integer(kind=INT8), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(IntegerDim7KindINT8StackNode), pointer:: prev => null()
      end type IntegerDim7KindINT8StackNode
      type, extends(Stack), public:: IntegerDim7KindINT16Stack
         type(IntegerDim7KindINT16StackNode), pointer:: entry => null()
      end type IntegerDim7KindINT16Stack
      type, extends(StackNode):: IntegerDim7KindINT16StackNode
         Integer(kind=INT16), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(IntegerDim7KindINT16StackNode), pointer:: prev => null()
      end type IntegerDim7KindINT16StackNode
      type, extends(Stack), public:: IntegerDim7KindINT32Stack
         type(IntegerDim7KindINT32StackNode), pointer:: entry => null()
      end type IntegerDim7KindINT32Stack
      type, extends(StackNode):: IntegerDim7KindINT32StackNode
         Integer(kind=INT32), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(IntegerDim7KindINT32StackNode), pointer:: prev => null()
      end type IntegerDim7KindINT32StackNode
      type, extends(Stack), public:: IntegerDim7KindINT64Stack
         type(IntegerDim7KindINT64StackNode), pointer:: entry => null()
      end type IntegerDim7KindINT64Stack
      type, extends(StackNode):: IntegerDim7KindINT64StackNode
         Integer(kind=INT64), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(IntegerDim7KindINT64StackNode), pointer:: prev => null()
      end type IntegerDim7KindINT64StackNode
      type, extends(Stack), public:: LogicalDim0Stack
         type(LogicalDim0StackNode), pointer:: entry => null()
      end type LogicalDim0Stack
      type, extends(StackNode):: LogicalDim0StackNode
         Logical:: value
         type(LogicalDim0StackNode), pointer:: prev => null()
      end type LogicalDim0StackNode
      type, extends(Stack), public:: LogicalDim1Stack
         type(LogicalDim1StackNode), pointer:: entry => null()
      end type LogicalDim1Stack
      type, extends(StackNode):: LogicalDim1StackNode
         Logical, dimension(:), allocatable:: value
         type(LogicalDim1StackNode), pointer:: prev => null()
      end type LogicalDim1StackNode
      type, extends(Stack), public:: LogicalDim2Stack
         type(LogicalDim2StackNode), pointer:: entry => null()
      end type LogicalDim2Stack
      type, extends(StackNode):: LogicalDim2StackNode
         Logical, dimension(:, :), allocatable:: value
         type(LogicalDim2StackNode), pointer:: prev => null()
      end type LogicalDim2StackNode
      type, extends(Stack), public:: LogicalDim3Stack
         type(LogicalDim3StackNode), pointer:: entry => null()
      end type LogicalDim3Stack
      type, extends(StackNode):: LogicalDim3StackNode
         Logical, dimension(:, :, :), allocatable:: value
         type(LogicalDim3StackNode), pointer:: prev => null()
      end type LogicalDim3StackNode
      type, extends(Stack), public:: LogicalDim4Stack
         type(LogicalDim4StackNode), pointer:: entry => null()
      end type LogicalDim4Stack
      type, extends(StackNode):: LogicalDim4StackNode
         Logical, dimension(:, :, :, :), allocatable:: value
         type(LogicalDim4StackNode), pointer:: prev => null()
      end type LogicalDim4StackNode
      type, extends(Stack), public:: LogicalDim5Stack
         type(LogicalDim5StackNode), pointer:: entry => null()
      end type LogicalDim5Stack
      type, extends(StackNode):: LogicalDim5StackNode
         Logical, dimension(:, :, :, :, :), allocatable:: value
         type(LogicalDim5StackNode), pointer:: prev => null()
      end type LogicalDim5StackNode
      type, extends(Stack), public:: LogicalDim6Stack
         type(LogicalDim6StackNode), pointer:: entry => null()
      end type LogicalDim6Stack
      type, extends(StackNode):: LogicalDim6StackNode
         Logical, dimension(:, :, :, :, :, :), allocatable:: value
         type(LogicalDim6StackNode), pointer:: prev => null()
      end type LogicalDim6StackNode
      type, extends(Stack), public:: LogicalDim7Stack
         type(LogicalDim7StackNode), pointer:: entry => null()
      end type LogicalDim7Stack
      type, extends(StackNode):: LogicalDim7StackNode
         Logical, dimension(:, :, :, :, :, :, :), allocatable:: value
         type(LogicalDim7StackNode), pointer:: prev => null()
      end type LogicalDim7StackNode
      type, extends(Stack), public:: ComplexDim0KindREAL32Stack
         type(ComplexDim0KindREAL32StackNode), pointer:: entry => null()
      end type ComplexDim0KindREAL32Stack
      type, extends(StackNode):: ComplexDim0KindREAL32StackNode
         Complex(kind=REAL32):: value
         type(ComplexDim0KindREAL32StackNode), pointer:: prev => null()
      end type ComplexDim0KindREAL32StackNode
      type, extends(Stack), public:: ComplexDim0KindREAL64Stack
         type(ComplexDim0KindREAL64StackNode), pointer:: entry => null()
      end type ComplexDim0KindREAL64Stack
      type, extends(StackNode):: ComplexDim0KindREAL64StackNode
         Complex(kind=REAL64):: value
         type(ComplexDim0KindREAL64StackNode), pointer:: prev => null()
      end type ComplexDim0KindREAL64StackNode
      type, extends(Stack), public:: ComplexDim0KindREAL128Stack
         type(ComplexDim0KindREAL128StackNode), pointer:: entry => null()
      end type ComplexDim0KindREAL128Stack
      type, extends(StackNode):: ComplexDim0KindREAL128StackNode
         Complex(kind=REAL128):: value
         type(ComplexDim0KindREAL128StackNode), pointer:: prev => null()
      end type ComplexDim0KindREAL128StackNode
      type, extends(Stack), public:: ComplexDim1KindREAL32Stack
         type(ComplexDim1KindREAL32StackNode), pointer:: entry => null()
      end type ComplexDim1KindREAL32Stack
      type, extends(StackNode):: ComplexDim1KindREAL32StackNode
         Complex(kind=REAL32), dimension(:), allocatable:: value
         type(ComplexDim1KindREAL32StackNode), pointer:: prev => null()
      end type ComplexDim1KindREAL32StackNode
      type, extends(Stack), public:: ComplexDim1KindREAL64Stack
         type(ComplexDim1KindREAL64StackNode), pointer:: entry => null()
      end type ComplexDim1KindREAL64Stack
      type, extends(StackNode):: ComplexDim1KindREAL64StackNode
         Complex(kind=REAL64), dimension(:), allocatable:: value
         type(ComplexDim1KindREAL64StackNode), pointer:: prev => null()
      end type ComplexDim1KindREAL64StackNode
      type, extends(Stack), public:: ComplexDim1KindREAL128Stack
         type(ComplexDim1KindREAL128StackNode), pointer:: entry => null()
      end type ComplexDim1KindREAL128Stack
      type, extends(StackNode):: ComplexDim1KindREAL128StackNode
         Complex(kind=REAL128), dimension(:), allocatable:: value
         type(ComplexDim1KindREAL128StackNode), pointer:: prev => null()
      end type ComplexDim1KindREAL128StackNode
      type, extends(Stack), public:: ComplexDim2KindREAL32Stack
         type(ComplexDim2KindREAL32StackNode), pointer:: entry => null()
      end type ComplexDim2KindREAL32Stack
      type, extends(StackNode):: ComplexDim2KindREAL32StackNode
         Complex(kind=REAL32), dimension(:, :), allocatable:: value
         type(ComplexDim2KindREAL32StackNode), pointer:: prev => null()
      end type ComplexDim2KindREAL32StackNode
      type, extends(Stack), public:: ComplexDim2KindREAL64Stack
         type(ComplexDim2KindREAL64StackNode), pointer:: entry => null()
      end type ComplexDim2KindREAL64Stack
      type, extends(StackNode):: ComplexDim2KindREAL64StackNode
         Complex(kind=REAL64), dimension(:, :), allocatable:: value
         type(ComplexDim2KindREAL64StackNode), pointer:: prev => null()
      end type ComplexDim2KindREAL64StackNode
      type, extends(Stack), public:: ComplexDim2KindREAL128Stack
         type(ComplexDim2KindREAL128StackNode), pointer:: entry => null()
      end type ComplexDim2KindREAL128Stack
      type, extends(StackNode):: ComplexDim2KindREAL128StackNode
         Complex(kind=REAL128), dimension(:, :), allocatable:: value
         type(ComplexDim2KindREAL128StackNode), pointer:: prev => null()
      end type ComplexDim2KindREAL128StackNode
      type, extends(Stack), public:: ComplexDim3KindREAL32Stack
         type(ComplexDim3KindREAL32StackNode), pointer:: entry => null()
      end type ComplexDim3KindREAL32Stack
      type, extends(StackNode):: ComplexDim3KindREAL32StackNode
         Complex(kind=REAL32), dimension(:, :, :), allocatable:: value
         type(ComplexDim3KindREAL32StackNode), pointer:: prev => null()
      end type ComplexDim3KindREAL32StackNode
      type, extends(Stack), public:: ComplexDim3KindREAL64Stack
         type(ComplexDim3KindREAL64StackNode), pointer:: entry => null()
      end type ComplexDim3KindREAL64Stack
      type, extends(StackNode):: ComplexDim3KindREAL64StackNode
         Complex(kind=REAL64), dimension(:, :, :), allocatable:: value
         type(ComplexDim3KindREAL64StackNode), pointer:: prev => null()
      end type ComplexDim3KindREAL64StackNode
      type, extends(Stack), public:: ComplexDim3KindREAL128Stack
         type(ComplexDim3KindREAL128StackNode), pointer:: entry => null()
      end type ComplexDim3KindREAL128Stack
      type, extends(StackNode):: ComplexDim3KindREAL128StackNode
         Complex(kind=REAL128), dimension(:, :, :), allocatable:: value
         type(ComplexDim3KindREAL128StackNode), pointer:: prev => null()
      end type ComplexDim3KindREAL128StackNode
      type, extends(Stack), public:: ComplexDim4KindREAL32Stack
         type(ComplexDim4KindREAL32StackNode), pointer:: entry => null()
      end type ComplexDim4KindREAL32Stack
      type, extends(StackNode):: ComplexDim4KindREAL32StackNode
         Complex(kind=REAL32), dimension(:, :, :, :), allocatable:: value
         type(ComplexDim4KindREAL32StackNode), pointer:: prev => null()
      end type ComplexDim4KindREAL32StackNode
      type, extends(Stack), public:: ComplexDim4KindREAL64Stack
         type(ComplexDim4KindREAL64StackNode), pointer:: entry => null()
      end type ComplexDim4KindREAL64Stack
      type, extends(StackNode):: ComplexDim4KindREAL64StackNode
         Complex(kind=REAL64), dimension(:, :, :, :), allocatable:: value
         type(ComplexDim4KindREAL64StackNode), pointer:: prev => null()
      end type ComplexDim4KindREAL64StackNode
      type, extends(Stack), public:: ComplexDim4KindREAL128Stack
         type(ComplexDim4KindREAL128StackNode), pointer:: entry => null()
      end type ComplexDim4KindREAL128Stack
      type, extends(StackNode):: ComplexDim4KindREAL128StackNode
         Complex(kind=REAL128), dimension(:, :, :, :), allocatable:: value
         type(ComplexDim4KindREAL128StackNode), pointer:: prev => null()
      end type ComplexDim4KindREAL128StackNode
      type, extends(Stack), public:: ComplexDim5KindREAL32Stack
         type(ComplexDim5KindREAL32StackNode), pointer:: entry => null()
      end type ComplexDim5KindREAL32Stack
      type, extends(StackNode):: ComplexDim5KindREAL32StackNode
         Complex(kind=REAL32), dimension(:, :, :, :, :), allocatable:: value
         type(ComplexDim5KindREAL32StackNode), pointer:: prev => null()
      end type ComplexDim5KindREAL32StackNode
      type, extends(Stack), public:: ComplexDim5KindREAL64Stack
         type(ComplexDim5KindREAL64StackNode), pointer:: entry => null()
      end type ComplexDim5KindREAL64Stack
      type, extends(StackNode):: ComplexDim5KindREAL64StackNode
         Complex(kind=REAL64), dimension(:, :, :, :, :), allocatable:: value
         type(ComplexDim5KindREAL64StackNode), pointer:: prev => null()
      end type ComplexDim5KindREAL64StackNode
      type, extends(Stack), public:: ComplexDim5KindREAL128Stack
         type(ComplexDim5KindREAL128StackNode), pointer:: entry => null()
      end type ComplexDim5KindREAL128Stack
      type, extends(StackNode):: ComplexDim5KindREAL128StackNode
         Complex(kind=REAL128), dimension(:, :, :, :, :), allocatable:: value
         type(ComplexDim5KindREAL128StackNode), pointer:: prev => null()
      end type ComplexDim5KindREAL128StackNode
      type, extends(Stack), public:: ComplexDim6KindREAL32Stack
         type(ComplexDim6KindREAL32StackNode), pointer:: entry => null()
      end type ComplexDim6KindREAL32Stack
      type, extends(StackNode):: ComplexDim6KindREAL32StackNode
         Complex(kind=REAL32), dimension(:, :, :, :, :, :), allocatable:: value
         type(ComplexDim6KindREAL32StackNode), pointer:: prev => null()
      end type ComplexDim6KindREAL32StackNode
      type, extends(Stack), public:: ComplexDim6KindREAL64Stack
         type(ComplexDim6KindREAL64StackNode), pointer:: entry => null()
      end type ComplexDim6KindREAL64Stack
      type, extends(StackNode):: ComplexDim6KindREAL64StackNode
         Complex(kind=REAL64), dimension(:, :, :, :, :, :), allocatable:: value
         type(ComplexDim6KindREAL64StackNode), pointer:: prev => null()
      end type ComplexDim6KindREAL64StackNode
      type, extends(Stack), public:: ComplexDim6KindREAL128Stack
         type(ComplexDim6KindREAL128StackNode), pointer:: entry => null()
      end type ComplexDim6KindREAL128Stack
      type, extends(StackNode):: ComplexDim6KindREAL128StackNode
         Complex(kind=REAL128), dimension(:, :, :, :, :, :), allocatable:: value
         type(ComplexDim6KindREAL128StackNode), pointer:: prev => null()
      end type ComplexDim6KindREAL128StackNode
      type, extends(Stack), public:: ComplexDim7KindREAL32Stack
         type(ComplexDim7KindREAL32StackNode), pointer:: entry => null()
      end type ComplexDim7KindREAL32Stack
      type, extends(StackNode):: ComplexDim7KindREAL32StackNode
         Complex(kind=REAL32), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(ComplexDim7KindREAL32StackNode), pointer:: prev => null()
      end type ComplexDim7KindREAL32StackNode
      type, extends(Stack), public:: ComplexDim7KindREAL64Stack
         type(ComplexDim7KindREAL64StackNode), pointer:: entry => null()
      end type ComplexDim7KindREAL64Stack
      type, extends(StackNode):: ComplexDim7KindREAL64StackNode
         Complex(kind=REAL64), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(ComplexDim7KindREAL64StackNode), pointer:: prev => null()
      end type ComplexDim7KindREAL64StackNode
      type, extends(Stack), public:: ComplexDim7KindREAL128Stack
         type(ComplexDim7KindREAL128StackNode), pointer:: entry => null()
      end type ComplexDim7KindREAL128Stack
      type, extends(StackNode):: ComplexDim7KindREAL128StackNode
         Complex(kind=REAL128), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(ComplexDim7KindREAL128StackNode), pointer:: prev => null()
      end type ComplexDim7KindREAL128StackNode
      type, extends(Stack), public:: CharacterDim0Len1Stack
         type(CharacterDim0Len1StackNode), pointer:: entry => null()
      end type CharacterDim0Len1Stack
      type, extends(StackNode):: CharacterDim0Len1StackNode
         Character(len=1):: value
         type(CharacterDim0Len1StackNode), pointer:: prev => null()
      end type CharacterDim0Len1StackNode
      type, extends(Stack), public:: CharacterDim0Len2Stack
         type(CharacterDim0Len2StackNode), pointer:: entry => null()
      end type CharacterDim0Len2Stack
      type, extends(StackNode):: CharacterDim0Len2StackNode
         Character(len=2):: value
         type(CharacterDim0Len2StackNode), pointer:: prev => null()
      end type CharacterDim0Len2StackNode
      type, extends(Stack), public:: CharacterDim0Len4Stack
         type(CharacterDim0Len4StackNode), pointer:: entry => null()
      end type CharacterDim0Len4Stack
      type, extends(StackNode):: CharacterDim0Len4StackNode
         Character(len=4):: value
         type(CharacterDim0Len4StackNode), pointer:: prev => null()
      end type CharacterDim0Len4StackNode
      type, extends(Stack), public:: CharacterDim0Len8Stack
         type(CharacterDim0Len8StackNode), pointer:: entry => null()
      end type CharacterDim0Len8Stack
      type, extends(StackNode):: CharacterDim0Len8StackNode
         Character(len=8):: value
         type(CharacterDim0Len8StackNode), pointer:: prev => null()
      end type CharacterDim0Len8StackNode
      type, extends(Stack), public:: CharacterDim0Len16Stack
         type(CharacterDim0Len16StackNode), pointer:: entry => null()
      end type CharacterDim0Len16Stack
      type, extends(StackNode):: CharacterDim0Len16StackNode
         Character(len=16):: value
         type(CharacterDim0Len16StackNode), pointer:: prev => null()
      end type CharacterDim0Len16StackNode
      type, extends(Stack), public:: CharacterDim0Len32Stack
         type(CharacterDim0Len32StackNode), pointer:: entry => null()
      end type CharacterDim0Len32Stack
      type, extends(StackNode):: CharacterDim0Len32StackNode
         Character(len=32):: value
         type(CharacterDim0Len32StackNode), pointer:: prev => null()
      end type CharacterDim0Len32StackNode
      type, extends(Stack), public:: CharacterDim0Len64Stack
         type(CharacterDim0Len64StackNode), pointer:: entry => null()
      end type CharacterDim0Len64Stack
      type, extends(StackNode):: CharacterDim0Len64StackNode
         Character(len=64):: value
         type(CharacterDim0Len64StackNode), pointer:: prev => null()
      end type CharacterDim0Len64StackNode
      type, extends(Stack), public:: CharacterDim0Len128Stack
         type(CharacterDim0Len128StackNode), pointer:: entry => null()
      end type CharacterDim0Len128Stack
      type, extends(StackNode):: CharacterDim0Len128StackNode
         Character(len=128):: value
         type(CharacterDim0Len128StackNode), pointer:: prev => null()
      end type CharacterDim0Len128StackNode
      type, extends(Stack), public:: CharacterDim0Len256Stack
         type(CharacterDim0Len256StackNode), pointer:: entry => null()
      end type CharacterDim0Len256Stack
      type, extends(StackNode):: CharacterDim0Len256StackNode
         Character(len=256):: value
         type(CharacterDim0Len256StackNode), pointer:: prev => null()
      end type CharacterDim0Len256StackNode
      type, extends(Stack), public:: CharacterDim0Len512Stack
         type(CharacterDim0Len512StackNode), pointer:: entry => null()
      end type CharacterDim0Len512Stack
      type, extends(StackNode):: CharacterDim0Len512StackNode
         Character(len=512):: value
         type(CharacterDim0Len512StackNode), pointer:: prev => null()
      end type CharacterDim0Len512StackNode
      type, extends(Stack), public:: CharacterDim0Len1024Stack
         type(CharacterDim0Len1024StackNode), pointer:: entry => null()
      end type CharacterDim0Len1024Stack
      type, extends(StackNode):: CharacterDim0Len1024StackNode
         Character(len=1024):: value
         type(CharacterDim0Len1024StackNode), pointer:: prev => null()
      end type CharacterDim0Len1024StackNode
      type, extends(Stack), public:: CharacterDim1Len1Stack
         type(CharacterDim1Len1StackNode), pointer:: entry => null()
      end type CharacterDim1Len1Stack
      type, extends(StackNode):: CharacterDim1Len1StackNode
         Character(len=1), dimension(:), allocatable:: value
         type(CharacterDim1Len1StackNode), pointer:: prev => null()
      end type CharacterDim1Len1StackNode
      type, extends(Stack), public:: CharacterDim1Len2Stack
         type(CharacterDim1Len2StackNode), pointer:: entry => null()
      end type CharacterDim1Len2Stack
      type, extends(StackNode):: CharacterDim1Len2StackNode
         Character(len=2), dimension(:), allocatable:: value
         type(CharacterDim1Len2StackNode), pointer:: prev => null()
      end type CharacterDim1Len2StackNode
      type, extends(Stack), public:: CharacterDim1Len4Stack
         type(CharacterDim1Len4StackNode), pointer:: entry => null()
      end type CharacterDim1Len4Stack
      type, extends(StackNode):: CharacterDim1Len4StackNode
         Character(len=4), dimension(:), allocatable:: value
         type(CharacterDim1Len4StackNode), pointer:: prev => null()
      end type CharacterDim1Len4StackNode
      type, extends(Stack), public:: CharacterDim1Len8Stack
         type(CharacterDim1Len8StackNode), pointer:: entry => null()
      end type CharacterDim1Len8Stack
      type, extends(StackNode):: CharacterDim1Len8StackNode
         Character(len=8), dimension(:), allocatable:: value
         type(CharacterDim1Len8StackNode), pointer:: prev => null()
      end type CharacterDim1Len8StackNode
      type, extends(Stack), public:: CharacterDim1Len16Stack
         type(CharacterDim1Len16StackNode), pointer:: entry => null()
      end type CharacterDim1Len16Stack
      type, extends(StackNode):: CharacterDim1Len16StackNode
         Character(len=16), dimension(:), allocatable:: value
         type(CharacterDim1Len16StackNode), pointer:: prev => null()
      end type CharacterDim1Len16StackNode
      type, extends(Stack), public:: CharacterDim1Len32Stack
         type(CharacterDim1Len32StackNode), pointer:: entry => null()
      end type CharacterDim1Len32Stack
      type, extends(StackNode):: CharacterDim1Len32StackNode
         Character(len=32), dimension(:), allocatable:: value
         type(CharacterDim1Len32StackNode), pointer:: prev => null()
      end type CharacterDim1Len32StackNode
      type, extends(Stack), public:: CharacterDim1Len64Stack
         type(CharacterDim1Len64StackNode), pointer:: entry => null()
      end type CharacterDim1Len64Stack
      type, extends(StackNode):: CharacterDim1Len64StackNode
         Character(len=64), dimension(:), allocatable:: value
         type(CharacterDim1Len64StackNode), pointer:: prev => null()
      end type CharacterDim1Len64StackNode
      type, extends(Stack), public:: CharacterDim1Len128Stack
         type(CharacterDim1Len128StackNode), pointer:: entry => null()
      end type CharacterDim1Len128Stack
      type, extends(StackNode):: CharacterDim1Len128StackNode
         Character(len=128), dimension(:), allocatable:: value
         type(CharacterDim1Len128StackNode), pointer:: prev => null()
      end type CharacterDim1Len128StackNode
      type, extends(Stack), public:: CharacterDim1Len256Stack
         type(CharacterDim1Len256StackNode), pointer:: entry => null()
      end type CharacterDim1Len256Stack
      type, extends(StackNode):: CharacterDim1Len256StackNode
         Character(len=256), dimension(:), allocatable:: value
         type(CharacterDim1Len256StackNode), pointer:: prev => null()
      end type CharacterDim1Len256StackNode
      type, extends(Stack), public:: CharacterDim1Len512Stack
         type(CharacterDim1Len512StackNode), pointer:: entry => null()
      end type CharacterDim1Len512Stack
      type, extends(StackNode):: CharacterDim1Len512StackNode
         Character(len=512), dimension(:), allocatable:: value
         type(CharacterDim1Len512StackNode), pointer:: prev => null()
      end type CharacterDim1Len512StackNode
      type, extends(Stack), public:: CharacterDim1Len1024Stack
         type(CharacterDim1Len1024StackNode), pointer:: entry => null()
      end type CharacterDim1Len1024Stack
      type, extends(StackNode):: CharacterDim1Len1024StackNode
         Character(len=1024), dimension(:), allocatable:: value
         type(CharacterDim1Len1024StackNode), pointer:: prev => null()
      end type CharacterDim1Len1024StackNode
      type, extends(Stack), public:: CharacterDim2Len1Stack
         type(CharacterDim2Len1StackNode), pointer:: entry => null()
      end type CharacterDim2Len1Stack
      type, extends(StackNode):: CharacterDim2Len1StackNode
         Character(len=1), dimension(:, :), allocatable:: value
         type(CharacterDim2Len1StackNode), pointer:: prev => null()
      end type CharacterDim2Len1StackNode
      type, extends(Stack), public:: CharacterDim2Len2Stack
         type(CharacterDim2Len2StackNode), pointer:: entry => null()
      end type CharacterDim2Len2Stack
      type, extends(StackNode):: CharacterDim2Len2StackNode
         Character(len=2), dimension(:, :), allocatable:: value
         type(CharacterDim2Len2StackNode), pointer:: prev => null()
      end type CharacterDim2Len2StackNode
      type, extends(Stack), public:: CharacterDim2Len4Stack
         type(CharacterDim2Len4StackNode), pointer:: entry => null()
      end type CharacterDim2Len4Stack
      type, extends(StackNode):: CharacterDim2Len4StackNode
         Character(len=4), dimension(:, :), allocatable:: value
         type(CharacterDim2Len4StackNode), pointer:: prev => null()
      end type CharacterDim2Len4StackNode
      type, extends(Stack), public:: CharacterDim2Len8Stack
         type(CharacterDim2Len8StackNode), pointer:: entry => null()
      end type CharacterDim2Len8Stack
      type, extends(StackNode):: CharacterDim2Len8StackNode
         Character(len=8), dimension(:, :), allocatable:: value
         type(CharacterDim2Len8StackNode), pointer:: prev => null()
      end type CharacterDim2Len8StackNode
      type, extends(Stack), public:: CharacterDim2Len16Stack
         type(CharacterDim2Len16StackNode), pointer:: entry => null()
      end type CharacterDim2Len16Stack
      type, extends(StackNode):: CharacterDim2Len16StackNode
         Character(len=16), dimension(:, :), allocatable:: value
         type(CharacterDim2Len16StackNode), pointer:: prev => null()
      end type CharacterDim2Len16StackNode
      type, extends(Stack), public:: CharacterDim2Len32Stack
         type(CharacterDim2Len32StackNode), pointer:: entry => null()
      end type CharacterDim2Len32Stack
      type, extends(StackNode):: CharacterDim2Len32StackNode
         Character(len=32), dimension(:, :), allocatable:: value
         type(CharacterDim2Len32StackNode), pointer:: prev => null()
      end type CharacterDim2Len32StackNode
      type, extends(Stack), public:: CharacterDim2Len64Stack
         type(CharacterDim2Len64StackNode), pointer:: entry => null()
      end type CharacterDim2Len64Stack
      type, extends(StackNode):: CharacterDim2Len64StackNode
         Character(len=64), dimension(:, :), allocatable:: value
         type(CharacterDim2Len64StackNode), pointer:: prev => null()
      end type CharacterDim2Len64StackNode
      type, extends(Stack), public:: CharacterDim2Len128Stack
         type(CharacterDim2Len128StackNode), pointer:: entry => null()
      end type CharacterDim2Len128Stack
      type, extends(StackNode):: CharacterDim2Len128StackNode
         Character(len=128), dimension(:, :), allocatable:: value
         type(CharacterDim2Len128StackNode), pointer:: prev => null()
      end type CharacterDim2Len128StackNode
      type, extends(Stack), public:: CharacterDim2Len256Stack
         type(CharacterDim2Len256StackNode), pointer:: entry => null()
      end type CharacterDim2Len256Stack
      type, extends(StackNode):: CharacterDim2Len256StackNode
         Character(len=256), dimension(:, :), allocatable:: value
         type(CharacterDim2Len256StackNode), pointer:: prev => null()
      end type CharacterDim2Len256StackNode
      type, extends(Stack), public:: CharacterDim2Len512Stack
         type(CharacterDim2Len512StackNode), pointer:: entry => null()
      end type CharacterDim2Len512Stack
      type, extends(StackNode):: CharacterDim2Len512StackNode
         Character(len=512), dimension(:, :), allocatable:: value
         type(CharacterDim2Len512StackNode), pointer:: prev => null()
      end type CharacterDim2Len512StackNode
      type, extends(Stack), public:: CharacterDim2Len1024Stack
         type(CharacterDim2Len1024StackNode), pointer:: entry => null()
      end type CharacterDim2Len1024Stack
      type, extends(StackNode):: CharacterDim2Len1024StackNode
         Character(len=1024), dimension(:, :), allocatable:: value
         type(CharacterDim2Len1024StackNode), pointer:: prev => null()
      end type CharacterDim2Len1024StackNode
      type, extends(Stack), public:: CharacterDim3Len1Stack
         type(CharacterDim3Len1StackNode), pointer:: entry => null()
      end type CharacterDim3Len1Stack
      type, extends(StackNode):: CharacterDim3Len1StackNode
         Character(len=1), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len1StackNode), pointer:: prev => null()
      end type CharacterDim3Len1StackNode
      type, extends(Stack), public:: CharacterDim3Len2Stack
         type(CharacterDim3Len2StackNode), pointer:: entry => null()
      end type CharacterDim3Len2Stack
      type, extends(StackNode):: CharacterDim3Len2StackNode
         Character(len=2), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len2StackNode), pointer:: prev => null()
      end type CharacterDim3Len2StackNode
      type, extends(Stack), public:: CharacterDim3Len4Stack
         type(CharacterDim3Len4StackNode), pointer:: entry => null()
      end type CharacterDim3Len4Stack
      type, extends(StackNode):: CharacterDim3Len4StackNode
         Character(len=4), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len4StackNode), pointer:: prev => null()
      end type CharacterDim3Len4StackNode
      type, extends(Stack), public:: CharacterDim3Len8Stack
         type(CharacterDim3Len8StackNode), pointer:: entry => null()
      end type CharacterDim3Len8Stack
      type, extends(StackNode):: CharacterDim3Len8StackNode
         Character(len=8), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len8StackNode), pointer:: prev => null()
      end type CharacterDim3Len8StackNode
      type, extends(Stack), public:: CharacterDim3Len16Stack
         type(CharacterDim3Len16StackNode), pointer:: entry => null()
      end type CharacterDim3Len16Stack
      type, extends(StackNode):: CharacterDim3Len16StackNode
         Character(len=16), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len16StackNode), pointer:: prev => null()
      end type CharacterDim3Len16StackNode
      type, extends(Stack), public:: CharacterDim3Len32Stack
         type(CharacterDim3Len32StackNode), pointer:: entry => null()
      end type CharacterDim3Len32Stack
      type, extends(StackNode):: CharacterDim3Len32StackNode
         Character(len=32), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len32StackNode), pointer:: prev => null()
      end type CharacterDim3Len32StackNode
      type, extends(Stack), public:: CharacterDim3Len64Stack
         type(CharacterDim3Len64StackNode), pointer:: entry => null()
      end type CharacterDim3Len64Stack
      type, extends(StackNode):: CharacterDim3Len64StackNode
         Character(len=64), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len64StackNode), pointer:: prev => null()
      end type CharacterDim3Len64StackNode
      type, extends(Stack), public:: CharacterDim3Len128Stack
         type(CharacterDim3Len128StackNode), pointer:: entry => null()
      end type CharacterDim3Len128Stack
      type, extends(StackNode):: CharacterDim3Len128StackNode
         Character(len=128), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len128StackNode), pointer:: prev => null()
      end type CharacterDim3Len128StackNode
      type, extends(Stack), public:: CharacterDim3Len256Stack
         type(CharacterDim3Len256StackNode), pointer:: entry => null()
      end type CharacterDim3Len256Stack
      type, extends(StackNode):: CharacterDim3Len256StackNode
         Character(len=256), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len256StackNode), pointer:: prev => null()
      end type CharacterDim3Len256StackNode
      type, extends(Stack), public:: CharacterDim3Len512Stack
         type(CharacterDim3Len512StackNode), pointer:: entry => null()
      end type CharacterDim3Len512Stack
      type, extends(StackNode):: CharacterDim3Len512StackNode
         Character(len=512), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len512StackNode), pointer:: prev => null()
      end type CharacterDim3Len512StackNode
      type, extends(Stack), public:: CharacterDim3Len1024Stack
         type(CharacterDim3Len1024StackNode), pointer:: entry => null()
      end type CharacterDim3Len1024Stack
      type, extends(StackNode):: CharacterDim3Len1024StackNode
         Character(len=1024), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len1024StackNode), pointer:: prev => null()
      end type CharacterDim3Len1024StackNode
      type, extends(Stack), public:: CharacterDim4Len1Stack
         type(CharacterDim4Len1StackNode), pointer:: entry => null()
      end type CharacterDim4Len1Stack
      type, extends(StackNode):: CharacterDim4Len1StackNode
         Character(len=1), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len1StackNode), pointer:: prev => null()
      end type CharacterDim4Len1StackNode
      type, extends(Stack), public:: CharacterDim4Len2Stack
         type(CharacterDim4Len2StackNode), pointer:: entry => null()
      end type CharacterDim4Len2Stack
      type, extends(StackNode):: CharacterDim4Len2StackNode
         Character(len=2), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len2StackNode), pointer:: prev => null()
      end type CharacterDim4Len2StackNode
      type, extends(Stack), public:: CharacterDim4Len4Stack
         type(CharacterDim4Len4StackNode), pointer:: entry => null()
      end type CharacterDim4Len4Stack
      type, extends(StackNode):: CharacterDim4Len4StackNode
         Character(len=4), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len4StackNode), pointer:: prev => null()
      end type CharacterDim4Len4StackNode
      type, extends(Stack), public:: CharacterDim4Len8Stack
         type(CharacterDim4Len8StackNode), pointer:: entry => null()
      end type CharacterDim4Len8Stack
      type, extends(StackNode):: CharacterDim4Len8StackNode
         Character(len=8), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len8StackNode), pointer:: prev => null()
      end type CharacterDim4Len8StackNode
      type, extends(Stack), public:: CharacterDim4Len16Stack
         type(CharacterDim4Len16StackNode), pointer:: entry => null()
      end type CharacterDim4Len16Stack
      type, extends(StackNode):: CharacterDim4Len16StackNode
         Character(len=16), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len16StackNode), pointer:: prev => null()
      end type CharacterDim4Len16StackNode
      type, extends(Stack), public:: CharacterDim4Len32Stack
         type(CharacterDim4Len32StackNode), pointer:: entry => null()
      end type CharacterDim4Len32Stack
      type, extends(StackNode):: CharacterDim4Len32StackNode
         Character(len=32), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len32StackNode), pointer:: prev => null()
      end type CharacterDim4Len32StackNode
      type, extends(Stack), public:: CharacterDim4Len64Stack
         type(CharacterDim4Len64StackNode), pointer:: entry => null()
      end type CharacterDim4Len64Stack
      type, extends(StackNode):: CharacterDim4Len64StackNode
         Character(len=64), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len64StackNode), pointer:: prev => null()
      end type CharacterDim4Len64StackNode
      type, extends(Stack), public:: CharacterDim4Len128Stack
         type(CharacterDim4Len128StackNode), pointer:: entry => null()
      end type CharacterDim4Len128Stack
      type, extends(StackNode):: CharacterDim4Len128StackNode
         Character(len=128), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len128StackNode), pointer:: prev => null()
      end type CharacterDim4Len128StackNode
      type, extends(Stack), public:: CharacterDim4Len256Stack
         type(CharacterDim4Len256StackNode), pointer:: entry => null()
      end type CharacterDim4Len256Stack
      type, extends(StackNode):: CharacterDim4Len256StackNode
         Character(len=256), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len256StackNode), pointer:: prev => null()
      end type CharacterDim4Len256StackNode
      type, extends(Stack), public:: CharacterDim4Len512Stack
         type(CharacterDim4Len512StackNode), pointer:: entry => null()
      end type CharacterDim4Len512Stack
      type, extends(StackNode):: CharacterDim4Len512StackNode
         Character(len=512), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len512StackNode), pointer:: prev => null()
      end type CharacterDim4Len512StackNode
      type, extends(Stack), public:: CharacterDim4Len1024Stack
         type(CharacterDim4Len1024StackNode), pointer:: entry => null()
      end type CharacterDim4Len1024Stack
      type, extends(StackNode):: CharacterDim4Len1024StackNode
         Character(len=1024), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len1024StackNode), pointer:: prev => null()
      end type CharacterDim4Len1024StackNode
      type, extends(Stack), public:: CharacterDim5Len1Stack
         type(CharacterDim5Len1StackNode), pointer:: entry => null()
      end type CharacterDim5Len1Stack
      type, extends(StackNode):: CharacterDim5Len1StackNode
         Character(len=1), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len1StackNode), pointer:: prev => null()
      end type CharacterDim5Len1StackNode
      type, extends(Stack), public:: CharacterDim5Len2Stack
         type(CharacterDim5Len2StackNode), pointer:: entry => null()
      end type CharacterDim5Len2Stack
      type, extends(StackNode):: CharacterDim5Len2StackNode
         Character(len=2), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len2StackNode), pointer:: prev => null()
      end type CharacterDim5Len2StackNode
      type, extends(Stack), public:: CharacterDim5Len4Stack
         type(CharacterDim5Len4StackNode), pointer:: entry => null()
      end type CharacterDim5Len4Stack
      type, extends(StackNode):: CharacterDim5Len4StackNode
         Character(len=4), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len4StackNode), pointer:: prev => null()
      end type CharacterDim5Len4StackNode
      type, extends(Stack), public:: CharacterDim5Len8Stack
         type(CharacterDim5Len8StackNode), pointer:: entry => null()
      end type CharacterDim5Len8Stack
      type, extends(StackNode):: CharacterDim5Len8StackNode
         Character(len=8), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len8StackNode), pointer:: prev => null()
      end type CharacterDim5Len8StackNode
      type, extends(Stack), public:: CharacterDim5Len16Stack
         type(CharacterDim5Len16StackNode), pointer:: entry => null()
      end type CharacterDim5Len16Stack
      type, extends(StackNode):: CharacterDim5Len16StackNode
         Character(len=16), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len16StackNode), pointer:: prev => null()
      end type CharacterDim5Len16StackNode
      type, extends(Stack), public:: CharacterDim5Len32Stack
         type(CharacterDim5Len32StackNode), pointer:: entry => null()
      end type CharacterDim5Len32Stack
      type, extends(StackNode):: CharacterDim5Len32StackNode
         Character(len=32), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len32StackNode), pointer:: prev => null()
      end type CharacterDim5Len32StackNode
      type, extends(Stack), public:: CharacterDim5Len64Stack
         type(CharacterDim5Len64StackNode), pointer:: entry => null()
      end type CharacterDim5Len64Stack
      type, extends(StackNode):: CharacterDim5Len64StackNode
         Character(len=64), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len64StackNode), pointer:: prev => null()
      end type CharacterDim5Len64StackNode
      type, extends(Stack), public:: CharacterDim5Len128Stack
         type(CharacterDim5Len128StackNode), pointer:: entry => null()
      end type CharacterDim5Len128Stack
      type, extends(StackNode):: CharacterDim5Len128StackNode
         Character(len=128), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len128StackNode), pointer:: prev => null()
      end type CharacterDim5Len128StackNode
      type, extends(Stack), public:: CharacterDim5Len256Stack
         type(CharacterDim5Len256StackNode), pointer:: entry => null()
      end type CharacterDim5Len256Stack
      type, extends(StackNode):: CharacterDim5Len256StackNode
         Character(len=256), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len256StackNode), pointer:: prev => null()
      end type CharacterDim5Len256StackNode
      type, extends(Stack), public:: CharacterDim5Len512Stack
         type(CharacterDim5Len512StackNode), pointer:: entry => null()
      end type CharacterDim5Len512Stack
      type, extends(StackNode):: CharacterDim5Len512StackNode
         Character(len=512), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len512StackNode), pointer:: prev => null()
      end type CharacterDim5Len512StackNode
      type, extends(Stack), public:: CharacterDim5Len1024Stack
         type(CharacterDim5Len1024StackNode), pointer:: entry => null()
      end type CharacterDim5Len1024Stack
      type, extends(StackNode):: CharacterDim5Len1024StackNode
         Character(len=1024), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len1024StackNode), pointer:: prev => null()
      end type CharacterDim5Len1024StackNode
      type, extends(Stack), public:: CharacterDim6Len1Stack
         type(CharacterDim6Len1StackNode), pointer:: entry => null()
      end type CharacterDim6Len1Stack
      type, extends(StackNode):: CharacterDim6Len1StackNode
         Character(len=1), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len1StackNode), pointer:: prev => null()
      end type CharacterDim6Len1StackNode
      type, extends(Stack), public:: CharacterDim6Len2Stack
         type(CharacterDim6Len2StackNode), pointer:: entry => null()
      end type CharacterDim6Len2Stack
      type, extends(StackNode):: CharacterDim6Len2StackNode
         Character(len=2), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len2StackNode), pointer:: prev => null()
      end type CharacterDim6Len2StackNode
      type, extends(Stack), public:: CharacterDim6Len4Stack
         type(CharacterDim6Len4StackNode), pointer:: entry => null()
      end type CharacterDim6Len4Stack
      type, extends(StackNode):: CharacterDim6Len4StackNode
         Character(len=4), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len4StackNode), pointer:: prev => null()
      end type CharacterDim6Len4StackNode
      type, extends(Stack), public:: CharacterDim6Len8Stack
         type(CharacterDim6Len8StackNode), pointer:: entry => null()
      end type CharacterDim6Len8Stack
      type, extends(StackNode):: CharacterDim6Len8StackNode
         Character(len=8), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len8StackNode), pointer:: prev => null()
      end type CharacterDim6Len8StackNode
      type, extends(Stack), public:: CharacterDim6Len16Stack
         type(CharacterDim6Len16StackNode), pointer:: entry => null()
      end type CharacterDim6Len16Stack
      type, extends(StackNode):: CharacterDim6Len16StackNode
         Character(len=16), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len16StackNode), pointer:: prev => null()
      end type CharacterDim6Len16StackNode
      type, extends(Stack), public:: CharacterDim6Len32Stack
         type(CharacterDim6Len32StackNode), pointer:: entry => null()
      end type CharacterDim6Len32Stack
      type, extends(StackNode):: CharacterDim6Len32StackNode
         Character(len=32), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len32StackNode), pointer:: prev => null()
      end type CharacterDim6Len32StackNode
      type, extends(Stack), public:: CharacterDim6Len64Stack
         type(CharacterDim6Len64StackNode), pointer:: entry => null()
      end type CharacterDim6Len64Stack
      type, extends(StackNode):: CharacterDim6Len64StackNode
         Character(len=64), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len64StackNode), pointer:: prev => null()
      end type CharacterDim6Len64StackNode
      type, extends(Stack), public:: CharacterDim6Len128Stack
         type(CharacterDim6Len128StackNode), pointer:: entry => null()
      end type CharacterDim6Len128Stack
      type, extends(StackNode):: CharacterDim6Len128StackNode
         Character(len=128), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len128StackNode), pointer:: prev => null()
      end type CharacterDim6Len128StackNode
      type, extends(Stack), public:: CharacterDim6Len256Stack
         type(CharacterDim6Len256StackNode), pointer:: entry => null()
      end type CharacterDim6Len256Stack
      type, extends(StackNode):: CharacterDim6Len256StackNode
         Character(len=256), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len256StackNode), pointer:: prev => null()
      end type CharacterDim6Len256StackNode
      type, extends(Stack), public:: CharacterDim6Len512Stack
         type(CharacterDim6Len512StackNode), pointer:: entry => null()
      end type CharacterDim6Len512Stack
      type, extends(StackNode):: CharacterDim6Len512StackNode
         Character(len=512), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len512StackNode), pointer:: prev => null()
      end type CharacterDim6Len512StackNode
      type, extends(Stack), public:: CharacterDim6Len1024Stack
         type(CharacterDim6Len1024StackNode), pointer:: entry => null()
      end type CharacterDim6Len1024Stack
      type, extends(StackNode):: CharacterDim6Len1024StackNode
         Character(len=1024), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len1024StackNode), pointer:: prev => null()
      end type CharacterDim6Len1024StackNode
      type, extends(Stack), public:: CharacterDim7Len1Stack
         type(CharacterDim7Len1StackNode), pointer:: entry => null()
      end type CharacterDim7Len1Stack
      type, extends(StackNode):: CharacterDim7Len1StackNode
         Character(len=1), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len1StackNode), pointer:: prev => null()
      end type CharacterDim7Len1StackNode
      type, extends(Stack), public:: CharacterDim7Len2Stack
         type(CharacterDim7Len2StackNode), pointer:: entry => null()
      end type CharacterDim7Len2Stack
      type, extends(StackNode):: CharacterDim7Len2StackNode
         Character(len=2), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len2StackNode), pointer:: prev => null()
      end type CharacterDim7Len2StackNode
      type, extends(Stack), public:: CharacterDim7Len4Stack
         type(CharacterDim7Len4StackNode), pointer:: entry => null()
      end type CharacterDim7Len4Stack
      type, extends(StackNode):: CharacterDim7Len4StackNode
         Character(len=4), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len4StackNode), pointer:: prev => null()
      end type CharacterDim7Len4StackNode
      type, extends(Stack), public:: CharacterDim7Len8Stack
         type(CharacterDim7Len8StackNode), pointer:: entry => null()
      end type CharacterDim7Len8Stack
      type, extends(StackNode):: CharacterDim7Len8StackNode
         Character(len=8), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len8StackNode), pointer:: prev => null()
      end type CharacterDim7Len8StackNode
      type, extends(Stack), public:: CharacterDim7Len16Stack
         type(CharacterDim7Len16StackNode), pointer:: entry => null()
      end type CharacterDim7Len16Stack
      type, extends(StackNode):: CharacterDim7Len16StackNode
         Character(len=16), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len16StackNode), pointer:: prev => null()
      end type CharacterDim7Len16StackNode
      type, extends(Stack), public:: CharacterDim7Len32Stack
         type(CharacterDim7Len32StackNode), pointer:: entry => null()
      end type CharacterDim7Len32Stack
      type, extends(StackNode):: CharacterDim7Len32StackNode
         Character(len=32), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len32StackNode), pointer:: prev => null()
      end type CharacterDim7Len32StackNode
      type, extends(Stack), public:: CharacterDim7Len64Stack
         type(CharacterDim7Len64StackNode), pointer:: entry => null()
      end type CharacterDim7Len64Stack
      type, extends(StackNode):: CharacterDim7Len64StackNode
         Character(len=64), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len64StackNode), pointer:: prev => null()
      end type CharacterDim7Len64StackNode
      type, extends(Stack), public:: CharacterDim7Len128Stack
         type(CharacterDim7Len128StackNode), pointer:: entry => null()
      end type CharacterDim7Len128Stack
      type, extends(StackNode):: CharacterDim7Len128StackNode
         Character(len=128), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len128StackNode), pointer:: prev => null()
      end type CharacterDim7Len128StackNode
      type, extends(Stack), public:: CharacterDim7Len256Stack
         type(CharacterDim7Len256StackNode), pointer:: entry => null()
      end type CharacterDim7Len256Stack
      type, extends(StackNode):: CharacterDim7Len256StackNode
         Character(len=256), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len256StackNode), pointer:: prev => null()
      end type CharacterDim7Len256StackNode
      type, extends(Stack), public:: CharacterDim7Len512Stack
         type(CharacterDim7Len512StackNode), pointer:: entry => null()
      end type CharacterDim7Len512Stack
      type, extends(StackNode):: CharacterDim7Len512StackNode
         Character(len=512), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len512StackNode), pointer:: prev => null()
      end type CharacterDim7Len512StackNode
      type, extends(Stack), public:: CharacterDim7Len1024Stack
         type(CharacterDim7Len1024StackNode), pointer:: entry => null()
      end type CharacterDim7Len1024Stack
      type, extends(StackNode):: CharacterDim7Len1024StackNode
         Character(len=1024), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len1024StackNode), pointer:: prev => null()
      end type CharacterDim7Len1024StackNode
contains
      subroutine pushRealDim0KindREAL32Stack(self, value)
         type(RealDim0KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), intent(in):: value
         type(RealDim0KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim0KindREAL32Stack
      function popRealDim0KindREAL32Stack(self, value) result(isSuccess)
         type(RealDim0KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), intent(inout):: value
         Logical:: isSuccess
         type(RealDim0KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim0KindREAL32Stack
      function is_emptyRealDim0KindREAL32Stack(self) result(answer)
         type(RealDim0KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim0KindREAL32Stack
      subroutine pushRealDim0KindREAL64Stack(self, value)
         type(RealDim0KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), intent(in):: value
         type(RealDim0KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim0KindREAL64Stack
      function popRealDim0KindREAL64Stack(self, value) result(isSuccess)
         type(RealDim0KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), intent(inout):: value
         Logical:: isSuccess
         type(RealDim0KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim0KindREAL64Stack
      function is_emptyRealDim0KindREAL64Stack(self) result(answer)
         type(RealDim0KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim0KindREAL64Stack
      subroutine pushRealDim0KindREAL128Stack(self, value)
         type(RealDim0KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), intent(in):: value
         type(RealDim0KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim0KindREAL128Stack
      function popRealDim0KindREAL128Stack(self, value) result(isSuccess)
         type(RealDim0KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), intent(inout):: value
         Logical:: isSuccess
         type(RealDim0KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim0KindREAL128Stack
      function is_emptyRealDim0KindREAL128Stack(self) result(answer)
         type(RealDim0KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim0KindREAL128Stack
      subroutine pushRealDim1KindREAL32Stack(self, value)
         type(RealDim1KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), dimension(:), intent(in):: value
         type(RealDim1KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim1KindREAL32Stack
      function popRealDim1KindREAL32Stack(self, value) result(isSuccess)
         type(RealDim1KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim1KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim1KindREAL32Stack
      function is_emptyRealDim1KindREAL32Stack(self) result(answer)
         type(RealDim1KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim1KindREAL32Stack
      subroutine pushRealDim1KindREAL64Stack(self, value)
         type(RealDim1KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), dimension(:), intent(in):: value
         type(RealDim1KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim1KindREAL64Stack
      function popRealDim1KindREAL64Stack(self, value) result(isSuccess)
         type(RealDim1KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim1KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim1KindREAL64Stack
      function is_emptyRealDim1KindREAL64Stack(self) result(answer)
         type(RealDim1KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim1KindREAL64Stack
      subroutine pushRealDim1KindREAL128Stack(self, value)
         type(RealDim1KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), dimension(:), intent(in):: value
         type(RealDim1KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim1KindREAL128Stack
      function popRealDim1KindREAL128Stack(self, value) result(isSuccess)
         type(RealDim1KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim1KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim1KindREAL128Stack
      function is_emptyRealDim1KindREAL128Stack(self) result(answer)
         type(RealDim1KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim1KindREAL128Stack
      subroutine pushRealDim2KindREAL32Stack(self, value)
         type(RealDim2KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), dimension(:, :), intent(in):: value
         type(RealDim2KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim2KindREAL32Stack
      function popRealDim2KindREAL32Stack(self, value) result(isSuccess)
         type(RealDim2KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim2KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim2KindREAL32Stack
      function is_emptyRealDim2KindREAL32Stack(self) result(answer)
         type(RealDim2KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim2KindREAL32Stack
      subroutine pushRealDim2KindREAL64Stack(self, value)
         type(RealDim2KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), dimension(:, :), intent(in):: value
         type(RealDim2KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim2KindREAL64Stack
      function popRealDim2KindREAL64Stack(self, value) result(isSuccess)
         type(RealDim2KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim2KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim2KindREAL64Stack
      function is_emptyRealDim2KindREAL64Stack(self) result(answer)
         type(RealDim2KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim2KindREAL64Stack
      subroutine pushRealDim2KindREAL128Stack(self, value)
         type(RealDim2KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), dimension(:, :), intent(in):: value
         type(RealDim2KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim2KindREAL128Stack
      function popRealDim2KindREAL128Stack(self, value) result(isSuccess)
         type(RealDim2KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim2KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim2KindREAL128Stack
      function is_emptyRealDim2KindREAL128Stack(self) result(answer)
         type(RealDim2KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim2KindREAL128Stack
      subroutine pushRealDim3KindREAL32Stack(self, value)
         type(RealDim3KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :), intent(in):: value
         type(RealDim3KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim3KindREAL32Stack
      function popRealDim3KindREAL32Stack(self, value) result(isSuccess)
         type(RealDim3KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim3KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim3KindREAL32Stack
      function is_emptyRealDim3KindREAL32Stack(self) result(answer)
         type(RealDim3KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim3KindREAL32Stack
      subroutine pushRealDim3KindREAL64Stack(self, value)
         type(RealDim3KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :), intent(in):: value
         type(RealDim3KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim3KindREAL64Stack
      function popRealDim3KindREAL64Stack(self, value) result(isSuccess)
         type(RealDim3KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim3KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim3KindREAL64Stack
      function is_emptyRealDim3KindREAL64Stack(self) result(answer)
         type(RealDim3KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim3KindREAL64Stack
      subroutine pushRealDim3KindREAL128Stack(self, value)
         type(RealDim3KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :), intent(in):: value
         type(RealDim3KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim3KindREAL128Stack
      function popRealDim3KindREAL128Stack(self, value) result(isSuccess)
         type(RealDim3KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim3KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim3KindREAL128Stack
      function is_emptyRealDim3KindREAL128Stack(self) result(answer)
         type(RealDim3KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim3KindREAL128Stack
      subroutine pushRealDim4KindREAL32Stack(self, value)
         type(RealDim4KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :, :), intent(in):: value
         type(RealDim4KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim4KindREAL32Stack
      function popRealDim4KindREAL32Stack(self, value) result(isSuccess)
         type(RealDim4KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim4KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim4KindREAL32Stack
      function is_emptyRealDim4KindREAL32Stack(self) result(answer)
         type(RealDim4KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim4KindREAL32Stack
      subroutine pushRealDim4KindREAL64Stack(self, value)
         type(RealDim4KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :, :), intent(in):: value
         type(RealDim4KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim4KindREAL64Stack
      function popRealDim4KindREAL64Stack(self, value) result(isSuccess)
         type(RealDim4KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim4KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim4KindREAL64Stack
      function is_emptyRealDim4KindREAL64Stack(self) result(answer)
         type(RealDim4KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim4KindREAL64Stack
      subroutine pushRealDim4KindREAL128Stack(self, value)
         type(RealDim4KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :, :), intent(in):: value
         type(RealDim4KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim4KindREAL128Stack
      function popRealDim4KindREAL128Stack(self, value) result(isSuccess)
         type(RealDim4KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim4KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim4KindREAL128Stack
      function is_emptyRealDim4KindREAL128Stack(self) result(answer)
         type(RealDim4KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim4KindREAL128Stack
      subroutine pushRealDim5KindREAL32Stack(self, value)
         type(RealDim5KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :, :, :), intent(in):: value
         type(RealDim5KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim5KindREAL32Stack
      function popRealDim5KindREAL32Stack(self, value) result(isSuccess)
         type(RealDim5KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim5KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim5KindREAL32Stack
      function is_emptyRealDim5KindREAL32Stack(self) result(answer)
         type(RealDim5KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim5KindREAL32Stack
      subroutine pushRealDim5KindREAL64Stack(self, value)
         type(RealDim5KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :, :, :), intent(in):: value
         type(RealDim5KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim5KindREAL64Stack
      function popRealDim5KindREAL64Stack(self, value) result(isSuccess)
         type(RealDim5KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim5KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim5KindREAL64Stack
      function is_emptyRealDim5KindREAL64Stack(self) result(answer)
         type(RealDim5KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim5KindREAL64Stack
      subroutine pushRealDim5KindREAL128Stack(self, value)
         type(RealDim5KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :, :, :), intent(in):: value
         type(RealDim5KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim5KindREAL128Stack
      function popRealDim5KindREAL128Stack(self, value) result(isSuccess)
         type(RealDim5KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim5KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim5KindREAL128Stack
      function is_emptyRealDim5KindREAL128Stack(self) result(answer)
         type(RealDim5KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim5KindREAL128Stack
      subroutine pushRealDim6KindREAL32Stack(self, value)
         type(RealDim6KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :, :, :, :), intent(in):: value
         type(RealDim6KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim6KindREAL32Stack
      function popRealDim6KindREAL32Stack(self, value) result(isSuccess)
         type(RealDim6KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim6KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim6KindREAL32Stack
      function is_emptyRealDim6KindREAL32Stack(self) result(answer)
         type(RealDim6KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim6KindREAL32Stack
      subroutine pushRealDim6KindREAL64Stack(self, value)
         type(RealDim6KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :, :, :, :), intent(in):: value
         type(RealDim6KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim6KindREAL64Stack
      function popRealDim6KindREAL64Stack(self, value) result(isSuccess)
         type(RealDim6KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim6KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim6KindREAL64Stack
      function is_emptyRealDim6KindREAL64Stack(self) result(answer)
         type(RealDim6KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim6KindREAL64Stack
      subroutine pushRealDim6KindREAL128Stack(self, value)
         type(RealDim6KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :, :, :, :), intent(in):: value
         type(RealDim6KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim6KindREAL128Stack
      function popRealDim6KindREAL128Stack(self, value) result(isSuccess)
         type(RealDim6KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim6KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim6KindREAL128Stack
      function is_emptyRealDim6KindREAL128Stack(self) result(answer)
         type(RealDim6KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim6KindREAL128Stack
      subroutine pushRealDim7KindREAL32Stack(self, value)
         type(RealDim7KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(RealDim7KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim7KindREAL32Stack
      function popRealDim7KindREAL32Stack(self, value) result(isSuccess)
         type(RealDim7KindREAL32Stack), intent(inout):: self
         Real(kind=REAL32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim7KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim7KindREAL32Stack
      function is_emptyRealDim7KindREAL32Stack(self) result(answer)
         type(RealDim7KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim7KindREAL32Stack
      subroutine pushRealDim7KindREAL64Stack(self, value)
         type(RealDim7KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(RealDim7KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim7KindREAL64Stack
      function popRealDim7KindREAL64Stack(self, value) result(isSuccess)
         type(RealDim7KindREAL64Stack), intent(inout):: self
         Real(kind=REAL64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim7KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim7KindREAL64Stack
      function is_emptyRealDim7KindREAL64Stack(self) result(answer)
         type(RealDim7KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim7KindREAL64Stack
      subroutine pushRealDim7KindREAL128Stack(self, value)
         type(RealDim7KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(RealDim7KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushRealDim7KindREAL128Stack
      function popRealDim7KindREAL128Stack(self, value) result(isSuccess)
         type(RealDim7KindREAL128Stack), intent(inout):: self
         Real(kind=REAL128), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim7KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popRealDim7KindREAL128Stack
      function is_emptyRealDim7KindREAL128Stack(self) result(answer)
         type(RealDim7KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyRealDim7KindREAL128Stack
      subroutine pushIntegerDim0KindINT8Stack(self, value)
         type(IntegerDim0KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), intent(in):: value
         type(IntegerDim0KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim0KindINT8Stack
      function popIntegerDim0KindINT8Stack(self, value) result(isSuccess)
         type(IntegerDim0KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim0KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim0KindINT8Stack
      function is_emptyIntegerDim0KindINT8Stack(self) result(answer)
         type(IntegerDim0KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim0KindINT8Stack
      subroutine pushIntegerDim0KindINT16Stack(self, value)
         type(IntegerDim0KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), intent(in):: value
         type(IntegerDim0KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim0KindINT16Stack
      function popIntegerDim0KindINT16Stack(self, value) result(isSuccess)
         type(IntegerDim0KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim0KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim0KindINT16Stack
      function is_emptyIntegerDim0KindINT16Stack(self) result(answer)
         type(IntegerDim0KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim0KindINT16Stack
      subroutine pushIntegerDim0KindINT32Stack(self, value)
         type(IntegerDim0KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), intent(in):: value
         type(IntegerDim0KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim0KindINT32Stack
      function popIntegerDim0KindINT32Stack(self, value) result(isSuccess)
         type(IntegerDim0KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim0KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim0KindINT32Stack
      function is_emptyIntegerDim0KindINT32Stack(self) result(answer)
         type(IntegerDim0KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim0KindINT32Stack
      subroutine pushIntegerDim0KindINT64Stack(self, value)
         type(IntegerDim0KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), intent(in):: value
         type(IntegerDim0KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim0KindINT64Stack
      function popIntegerDim0KindINT64Stack(self, value) result(isSuccess)
         type(IntegerDim0KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim0KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim0KindINT64Stack
      function is_emptyIntegerDim0KindINT64Stack(self) result(answer)
         type(IntegerDim0KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim0KindINT64Stack
      subroutine pushIntegerDim1KindINT8Stack(self, value)
         type(IntegerDim1KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), dimension(:), intent(in):: value
         type(IntegerDim1KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim1KindINT8Stack
      function popIntegerDim1KindINT8Stack(self, value) result(isSuccess)
         type(IntegerDim1KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim1KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim1KindINT8Stack
      function is_emptyIntegerDim1KindINT8Stack(self) result(answer)
         type(IntegerDim1KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim1KindINT8Stack
      subroutine pushIntegerDim1KindINT16Stack(self, value)
         type(IntegerDim1KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), dimension(:), intent(in):: value
         type(IntegerDim1KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim1KindINT16Stack
      function popIntegerDim1KindINT16Stack(self, value) result(isSuccess)
         type(IntegerDim1KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim1KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim1KindINT16Stack
      function is_emptyIntegerDim1KindINT16Stack(self) result(answer)
         type(IntegerDim1KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim1KindINT16Stack
      subroutine pushIntegerDim1KindINT32Stack(self, value)
         type(IntegerDim1KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), dimension(:), intent(in):: value
         type(IntegerDim1KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim1KindINT32Stack
      function popIntegerDim1KindINT32Stack(self, value) result(isSuccess)
         type(IntegerDim1KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim1KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim1KindINT32Stack
      function is_emptyIntegerDim1KindINT32Stack(self) result(answer)
         type(IntegerDim1KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim1KindINT32Stack
      subroutine pushIntegerDim1KindINT64Stack(self, value)
         type(IntegerDim1KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), dimension(:), intent(in):: value
         type(IntegerDim1KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim1KindINT64Stack
      function popIntegerDim1KindINT64Stack(self, value) result(isSuccess)
         type(IntegerDim1KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim1KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim1KindINT64Stack
      function is_emptyIntegerDim1KindINT64Stack(self) result(answer)
         type(IntegerDim1KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim1KindINT64Stack
      subroutine pushIntegerDim2KindINT8Stack(self, value)
         type(IntegerDim2KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), dimension(:, :), intent(in):: value
         type(IntegerDim2KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim2KindINT8Stack
      function popIntegerDim2KindINT8Stack(self, value) result(isSuccess)
         type(IntegerDim2KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim2KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim2KindINT8Stack
      function is_emptyIntegerDim2KindINT8Stack(self) result(answer)
         type(IntegerDim2KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim2KindINT8Stack
      subroutine pushIntegerDim2KindINT16Stack(self, value)
         type(IntegerDim2KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), dimension(:, :), intent(in):: value
         type(IntegerDim2KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim2KindINT16Stack
      function popIntegerDim2KindINT16Stack(self, value) result(isSuccess)
         type(IntegerDim2KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim2KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim2KindINT16Stack
      function is_emptyIntegerDim2KindINT16Stack(self) result(answer)
         type(IntegerDim2KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim2KindINT16Stack
      subroutine pushIntegerDim2KindINT32Stack(self, value)
         type(IntegerDim2KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), dimension(:, :), intent(in):: value
         type(IntegerDim2KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim2KindINT32Stack
      function popIntegerDim2KindINT32Stack(self, value) result(isSuccess)
         type(IntegerDim2KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim2KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim2KindINT32Stack
      function is_emptyIntegerDim2KindINT32Stack(self) result(answer)
         type(IntegerDim2KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim2KindINT32Stack
      subroutine pushIntegerDim2KindINT64Stack(self, value)
         type(IntegerDim2KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), dimension(:, :), intent(in):: value
         type(IntegerDim2KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim2KindINT64Stack
      function popIntegerDim2KindINT64Stack(self, value) result(isSuccess)
         type(IntegerDim2KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim2KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim2KindINT64Stack
      function is_emptyIntegerDim2KindINT64Stack(self) result(answer)
         type(IntegerDim2KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim2KindINT64Stack
      subroutine pushIntegerDim3KindINT8Stack(self, value)
         type(IntegerDim3KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :), intent(in):: value
         type(IntegerDim3KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim3KindINT8Stack
      function popIntegerDim3KindINT8Stack(self, value) result(isSuccess)
         type(IntegerDim3KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim3KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim3KindINT8Stack
      function is_emptyIntegerDim3KindINT8Stack(self) result(answer)
         type(IntegerDim3KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim3KindINT8Stack
      subroutine pushIntegerDim3KindINT16Stack(self, value)
         type(IntegerDim3KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :), intent(in):: value
         type(IntegerDim3KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim3KindINT16Stack
      function popIntegerDim3KindINT16Stack(self, value) result(isSuccess)
         type(IntegerDim3KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim3KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim3KindINT16Stack
      function is_emptyIntegerDim3KindINT16Stack(self) result(answer)
         type(IntegerDim3KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim3KindINT16Stack
      subroutine pushIntegerDim3KindINT32Stack(self, value)
         type(IntegerDim3KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :), intent(in):: value
         type(IntegerDim3KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim3KindINT32Stack
      function popIntegerDim3KindINT32Stack(self, value) result(isSuccess)
         type(IntegerDim3KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim3KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim3KindINT32Stack
      function is_emptyIntegerDim3KindINT32Stack(self) result(answer)
         type(IntegerDim3KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim3KindINT32Stack
      subroutine pushIntegerDim3KindINT64Stack(self, value)
         type(IntegerDim3KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :), intent(in):: value
         type(IntegerDim3KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim3KindINT64Stack
      function popIntegerDim3KindINT64Stack(self, value) result(isSuccess)
         type(IntegerDim3KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim3KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim3KindINT64Stack
      function is_emptyIntegerDim3KindINT64Stack(self) result(answer)
         type(IntegerDim3KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim3KindINT64Stack
      subroutine pushIntegerDim4KindINT8Stack(self, value)
         type(IntegerDim4KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :, :), intent(in):: value
         type(IntegerDim4KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim4KindINT8Stack
      function popIntegerDim4KindINT8Stack(self, value) result(isSuccess)
         type(IntegerDim4KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim4KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim4KindINT8Stack
      function is_emptyIntegerDim4KindINT8Stack(self) result(answer)
         type(IntegerDim4KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim4KindINT8Stack
      subroutine pushIntegerDim4KindINT16Stack(self, value)
         type(IntegerDim4KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :, :), intent(in):: value
         type(IntegerDim4KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim4KindINT16Stack
      function popIntegerDim4KindINT16Stack(self, value) result(isSuccess)
         type(IntegerDim4KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim4KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim4KindINT16Stack
      function is_emptyIntegerDim4KindINT16Stack(self) result(answer)
         type(IntegerDim4KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim4KindINT16Stack
      subroutine pushIntegerDim4KindINT32Stack(self, value)
         type(IntegerDim4KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :, :), intent(in):: value
         type(IntegerDim4KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim4KindINT32Stack
      function popIntegerDim4KindINT32Stack(self, value) result(isSuccess)
         type(IntegerDim4KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim4KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim4KindINT32Stack
      function is_emptyIntegerDim4KindINT32Stack(self) result(answer)
         type(IntegerDim4KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim4KindINT32Stack
      subroutine pushIntegerDim4KindINT64Stack(self, value)
         type(IntegerDim4KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :, :), intent(in):: value
         type(IntegerDim4KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim4KindINT64Stack
      function popIntegerDim4KindINT64Stack(self, value) result(isSuccess)
         type(IntegerDim4KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim4KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim4KindINT64Stack
      function is_emptyIntegerDim4KindINT64Stack(self) result(answer)
         type(IntegerDim4KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim4KindINT64Stack
      subroutine pushIntegerDim5KindINT8Stack(self, value)
         type(IntegerDim5KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :, :, :), intent(in):: value
         type(IntegerDim5KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim5KindINT8Stack
      function popIntegerDim5KindINT8Stack(self, value) result(isSuccess)
         type(IntegerDim5KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim5KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim5KindINT8Stack
      function is_emptyIntegerDim5KindINT8Stack(self) result(answer)
         type(IntegerDim5KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim5KindINT8Stack
      subroutine pushIntegerDim5KindINT16Stack(self, value)
         type(IntegerDim5KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :, :, :), intent(in):: value
         type(IntegerDim5KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim5KindINT16Stack
      function popIntegerDim5KindINT16Stack(self, value) result(isSuccess)
         type(IntegerDim5KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim5KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim5KindINT16Stack
      function is_emptyIntegerDim5KindINT16Stack(self) result(answer)
         type(IntegerDim5KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim5KindINT16Stack
      subroutine pushIntegerDim5KindINT32Stack(self, value)
         type(IntegerDim5KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :, :, :), intent(in):: value
         type(IntegerDim5KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim5KindINT32Stack
      function popIntegerDim5KindINT32Stack(self, value) result(isSuccess)
         type(IntegerDim5KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim5KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim5KindINT32Stack
      function is_emptyIntegerDim5KindINT32Stack(self) result(answer)
         type(IntegerDim5KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim5KindINT32Stack
      subroutine pushIntegerDim5KindINT64Stack(self, value)
         type(IntegerDim5KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :, :, :), intent(in):: value
         type(IntegerDim5KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim5KindINT64Stack
      function popIntegerDim5KindINT64Stack(self, value) result(isSuccess)
         type(IntegerDim5KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim5KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim5KindINT64Stack
      function is_emptyIntegerDim5KindINT64Stack(self) result(answer)
         type(IntegerDim5KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim5KindINT64Stack
      subroutine pushIntegerDim6KindINT8Stack(self, value)
         type(IntegerDim6KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :, :, :, :), intent(in):: value
         type(IntegerDim6KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim6KindINT8Stack
      function popIntegerDim6KindINT8Stack(self, value) result(isSuccess)
         type(IntegerDim6KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim6KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim6KindINT8Stack
      function is_emptyIntegerDim6KindINT8Stack(self) result(answer)
         type(IntegerDim6KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim6KindINT8Stack
      subroutine pushIntegerDim6KindINT16Stack(self, value)
         type(IntegerDim6KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :, :, :, :), intent(in):: value
         type(IntegerDim6KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim6KindINT16Stack
      function popIntegerDim6KindINT16Stack(self, value) result(isSuccess)
         type(IntegerDim6KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim6KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim6KindINT16Stack
      function is_emptyIntegerDim6KindINT16Stack(self) result(answer)
         type(IntegerDim6KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim6KindINT16Stack
      subroutine pushIntegerDim6KindINT32Stack(self, value)
         type(IntegerDim6KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :, :, :, :), intent(in):: value
         type(IntegerDim6KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim6KindINT32Stack
      function popIntegerDim6KindINT32Stack(self, value) result(isSuccess)
         type(IntegerDim6KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim6KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim6KindINT32Stack
      function is_emptyIntegerDim6KindINT32Stack(self) result(answer)
         type(IntegerDim6KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim6KindINT32Stack
      subroutine pushIntegerDim6KindINT64Stack(self, value)
         type(IntegerDim6KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :, :, :, :), intent(in):: value
         type(IntegerDim6KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim6KindINT64Stack
      function popIntegerDim6KindINT64Stack(self, value) result(isSuccess)
         type(IntegerDim6KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim6KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim6KindINT64Stack
      function is_emptyIntegerDim6KindINT64Stack(self) result(answer)
         type(IntegerDim6KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim6KindINT64Stack
      subroutine pushIntegerDim7KindINT8Stack(self, value)
         type(IntegerDim7KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(IntegerDim7KindINT8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim7KindINT8Stack
      function popIntegerDim7KindINT8Stack(self, value) result(isSuccess)
         type(IntegerDim7KindINT8Stack), intent(inout):: self
         Integer(kind=INT8), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim7KindINT8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim7KindINT8Stack
      function is_emptyIntegerDim7KindINT8Stack(self) result(answer)
         type(IntegerDim7KindINT8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim7KindINT8Stack
      subroutine pushIntegerDim7KindINT16Stack(self, value)
         type(IntegerDim7KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(IntegerDim7KindINT16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim7KindINT16Stack
      function popIntegerDim7KindINT16Stack(self, value) result(isSuccess)
         type(IntegerDim7KindINT16Stack), intent(inout):: self
         Integer(kind=INT16), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim7KindINT16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim7KindINT16Stack
      function is_emptyIntegerDim7KindINT16Stack(self) result(answer)
         type(IntegerDim7KindINT16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim7KindINT16Stack
      subroutine pushIntegerDim7KindINT32Stack(self, value)
         type(IntegerDim7KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(IntegerDim7KindINT32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim7KindINT32Stack
      function popIntegerDim7KindINT32Stack(self, value) result(isSuccess)
         type(IntegerDim7KindINT32Stack), intent(inout):: self
         Integer(kind=INT32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim7KindINT32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim7KindINT32Stack
      function is_emptyIntegerDim7KindINT32Stack(self) result(answer)
         type(IntegerDim7KindINT32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim7KindINT32Stack
      subroutine pushIntegerDim7KindINT64Stack(self, value)
         type(IntegerDim7KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(IntegerDim7KindINT64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushIntegerDim7KindINT64Stack
      function popIntegerDim7KindINT64Stack(self, value) result(isSuccess)
         type(IntegerDim7KindINT64Stack), intent(inout):: self
         Integer(kind=INT64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim7KindINT64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popIntegerDim7KindINT64Stack
      function is_emptyIntegerDim7KindINT64Stack(self) result(answer)
         type(IntegerDim7KindINT64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim7KindINT64Stack
      subroutine pushLogicalDim0Stack(self, value)
         type(LogicalDim0Stack), intent(inout):: self
         Logical, intent(in):: value
         type(LogicalDim0StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushLogicalDim0Stack
      function popLogicalDim0Stack(self, value) result(isSuccess)
         type(LogicalDim0Stack), intent(inout):: self
         Logical, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim0StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim0Stack
      function is_emptyLogicalDim0Stack(self) result(answer)
         type(LogicalDim0Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyLogicalDim0Stack
      subroutine pushLogicalDim1Stack(self, value)
         type(LogicalDim1Stack), intent(inout):: self
         Logical, dimension(:), intent(in):: value
         type(LogicalDim1StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushLogicalDim1Stack
      function popLogicalDim1Stack(self, value) result(isSuccess)
         type(LogicalDim1Stack), intent(inout):: self
         Logical, dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim1StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim1Stack
      function is_emptyLogicalDim1Stack(self) result(answer)
         type(LogicalDim1Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyLogicalDim1Stack
      subroutine pushLogicalDim2Stack(self, value)
         type(LogicalDim2Stack), intent(inout):: self
         Logical, dimension(:, :), intent(in):: value
         type(LogicalDim2StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushLogicalDim2Stack
      function popLogicalDim2Stack(self, value) result(isSuccess)
         type(LogicalDim2Stack), intent(inout):: self
         Logical, dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim2StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim2Stack
      function is_emptyLogicalDim2Stack(self) result(answer)
         type(LogicalDim2Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyLogicalDim2Stack
      subroutine pushLogicalDim3Stack(self, value)
         type(LogicalDim3Stack), intent(inout):: self
         Logical, dimension(:, :, :), intent(in):: value
         type(LogicalDim3StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushLogicalDim3Stack
      function popLogicalDim3Stack(self, value) result(isSuccess)
         type(LogicalDim3Stack), intent(inout):: self
         Logical, dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim3StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim3Stack
      function is_emptyLogicalDim3Stack(self) result(answer)
         type(LogicalDim3Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyLogicalDim3Stack
      subroutine pushLogicalDim4Stack(self, value)
         type(LogicalDim4Stack), intent(inout):: self
         Logical, dimension(:, :, :, :), intent(in):: value
         type(LogicalDim4StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushLogicalDim4Stack
      function popLogicalDim4Stack(self, value) result(isSuccess)
         type(LogicalDim4Stack), intent(inout):: self
         Logical, dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim4StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim4Stack
      function is_emptyLogicalDim4Stack(self) result(answer)
         type(LogicalDim4Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyLogicalDim4Stack
      subroutine pushLogicalDim5Stack(self, value)
         type(LogicalDim5Stack), intent(inout):: self
         Logical, dimension(:, :, :, :, :), intent(in):: value
         type(LogicalDim5StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushLogicalDim5Stack
      function popLogicalDim5Stack(self, value) result(isSuccess)
         type(LogicalDim5Stack), intent(inout):: self
         Logical, dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim5StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim5Stack
      function is_emptyLogicalDim5Stack(self) result(answer)
         type(LogicalDim5Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyLogicalDim5Stack
      subroutine pushLogicalDim6Stack(self, value)
         type(LogicalDim6Stack), intent(inout):: self
         Logical, dimension(:, :, :, :, :, :), intent(in):: value
         type(LogicalDim6StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushLogicalDim6Stack
      function popLogicalDim6Stack(self, value) result(isSuccess)
         type(LogicalDim6Stack), intent(inout):: self
         Logical, dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim6StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim6Stack
      function is_emptyLogicalDim6Stack(self) result(answer)
         type(LogicalDim6Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyLogicalDim6Stack
      subroutine pushLogicalDim7Stack(self, value)
         type(LogicalDim7Stack), intent(inout):: self
         Logical, dimension(:, :, :, :, :, :, :), intent(in):: value
         type(LogicalDim7StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushLogicalDim7Stack
      function popLogicalDim7Stack(self, value) result(isSuccess)
         type(LogicalDim7Stack), intent(inout):: self
         Logical, dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim7StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popLogicalDim7Stack
      function is_emptyLogicalDim7Stack(self) result(answer)
         type(LogicalDim7Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyLogicalDim7Stack
      subroutine pushComplexDim0KindREAL32Stack(self, value)
         type(ComplexDim0KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), intent(in):: value
         type(ComplexDim0KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim0KindREAL32Stack
      function popComplexDim0KindREAL32Stack(self, value) result(isSuccess)
         type(ComplexDim0KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim0KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim0KindREAL32Stack
      function is_emptyComplexDim0KindREAL32Stack(self) result(answer)
         type(ComplexDim0KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim0KindREAL32Stack
      subroutine pushComplexDim0KindREAL64Stack(self, value)
         type(ComplexDim0KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), intent(in):: value
         type(ComplexDim0KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim0KindREAL64Stack
      function popComplexDim0KindREAL64Stack(self, value) result(isSuccess)
         type(ComplexDim0KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim0KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim0KindREAL64Stack
      function is_emptyComplexDim0KindREAL64Stack(self) result(answer)
         type(ComplexDim0KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim0KindREAL64Stack
      subroutine pushComplexDim0KindREAL128Stack(self, value)
         type(ComplexDim0KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), intent(in):: value
         type(ComplexDim0KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim0KindREAL128Stack
      function popComplexDim0KindREAL128Stack(self, value) result(isSuccess)
         type(ComplexDim0KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim0KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim0KindREAL128Stack
      function is_emptyComplexDim0KindREAL128Stack(self) result(answer)
         type(ComplexDim0KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim0KindREAL128Stack
      subroutine pushComplexDim1KindREAL32Stack(self, value)
         type(ComplexDim1KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), dimension(:), intent(in):: value
         type(ComplexDim1KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim1KindREAL32Stack
      function popComplexDim1KindREAL32Stack(self, value) result(isSuccess)
         type(ComplexDim1KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim1KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim1KindREAL32Stack
      function is_emptyComplexDim1KindREAL32Stack(self) result(answer)
         type(ComplexDim1KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim1KindREAL32Stack
      subroutine pushComplexDim1KindREAL64Stack(self, value)
         type(ComplexDim1KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), dimension(:), intent(in):: value
         type(ComplexDim1KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim1KindREAL64Stack
      function popComplexDim1KindREAL64Stack(self, value) result(isSuccess)
         type(ComplexDim1KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim1KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim1KindREAL64Stack
      function is_emptyComplexDim1KindREAL64Stack(self) result(answer)
         type(ComplexDim1KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim1KindREAL64Stack
      subroutine pushComplexDim1KindREAL128Stack(self, value)
         type(ComplexDim1KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), dimension(:), intent(in):: value
         type(ComplexDim1KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim1KindREAL128Stack
      function popComplexDim1KindREAL128Stack(self, value) result(isSuccess)
         type(ComplexDim1KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim1KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim1KindREAL128Stack
      function is_emptyComplexDim1KindREAL128Stack(self) result(answer)
         type(ComplexDim1KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim1KindREAL128Stack
      subroutine pushComplexDim2KindREAL32Stack(self, value)
         type(ComplexDim2KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :), intent(in):: value
         type(ComplexDim2KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim2KindREAL32Stack
      function popComplexDim2KindREAL32Stack(self, value) result(isSuccess)
         type(ComplexDim2KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim2KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim2KindREAL32Stack
      function is_emptyComplexDim2KindREAL32Stack(self) result(answer)
         type(ComplexDim2KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim2KindREAL32Stack
      subroutine pushComplexDim2KindREAL64Stack(self, value)
         type(ComplexDim2KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :), intent(in):: value
         type(ComplexDim2KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim2KindREAL64Stack
      function popComplexDim2KindREAL64Stack(self, value) result(isSuccess)
         type(ComplexDim2KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim2KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim2KindREAL64Stack
      function is_emptyComplexDim2KindREAL64Stack(self) result(answer)
         type(ComplexDim2KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim2KindREAL64Stack
      subroutine pushComplexDim2KindREAL128Stack(self, value)
         type(ComplexDim2KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :), intent(in):: value
         type(ComplexDim2KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim2KindREAL128Stack
      function popComplexDim2KindREAL128Stack(self, value) result(isSuccess)
         type(ComplexDim2KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim2KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim2KindREAL128Stack
      function is_emptyComplexDim2KindREAL128Stack(self) result(answer)
         type(ComplexDim2KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim2KindREAL128Stack
      subroutine pushComplexDim3KindREAL32Stack(self, value)
         type(ComplexDim3KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :), intent(in):: value
         type(ComplexDim3KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim3KindREAL32Stack
      function popComplexDim3KindREAL32Stack(self, value) result(isSuccess)
         type(ComplexDim3KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim3KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim3KindREAL32Stack
      function is_emptyComplexDim3KindREAL32Stack(self) result(answer)
         type(ComplexDim3KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim3KindREAL32Stack
      subroutine pushComplexDim3KindREAL64Stack(self, value)
         type(ComplexDim3KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :), intent(in):: value
         type(ComplexDim3KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim3KindREAL64Stack
      function popComplexDim3KindREAL64Stack(self, value) result(isSuccess)
         type(ComplexDim3KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim3KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim3KindREAL64Stack
      function is_emptyComplexDim3KindREAL64Stack(self) result(answer)
         type(ComplexDim3KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim3KindREAL64Stack
      subroutine pushComplexDim3KindREAL128Stack(self, value)
         type(ComplexDim3KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :), intent(in):: value
         type(ComplexDim3KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim3KindREAL128Stack
      function popComplexDim3KindREAL128Stack(self, value) result(isSuccess)
         type(ComplexDim3KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim3KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim3KindREAL128Stack
      function is_emptyComplexDim3KindREAL128Stack(self) result(answer)
         type(ComplexDim3KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim3KindREAL128Stack
      subroutine pushComplexDim4KindREAL32Stack(self, value)
         type(ComplexDim4KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :, :), intent(in):: value
         type(ComplexDim4KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim4KindREAL32Stack
      function popComplexDim4KindREAL32Stack(self, value) result(isSuccess)
         type(ComplexDim4KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim4KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim4KindREAL32Stack
      function is_emptyComplexDim4KindREAL32Stack(self) result(answer)
         type(ComplexDim4KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim4KindREAL32Stack
      subroutine pushComplexDim4KindREAL64Stack(self, value)
         type(ComplexDim4KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :, :), intent(in):: value
         type(ComplexDim4KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim4KindREAL64Stack
      function popComplexDim4KindREAL64Stack(self, value) result(isSuccess)
         type(ComplexDim4KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim4KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim4KindREAL64Stack
      function is_emptyComplexDim4KindREAL64Stack(self) result(answer)
         type(ComplexDim4KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim4KindREAL64Stack
      subroutine pushComplexDim4KindREAL128Stack(self, value)
         type(ComplexDim4KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :, :), intent(in):: value
         type(ComplexDim4KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim4KindREAL128Stack
      function popComplexDim4KindREAL128Stack(self, value) result(isSuccess)
         type(ComplexDim4KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim4KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim4KindREAL128Stack
      function is_emptyComplexDim4KindREAL128Stack(self) result(answer)
         type(ComplexDim4KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim4KindREAL128Stack
      subroutine pushComplexDim5KindREAL32Stack(self, value)
         type(ComplexDim5KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :, :, :), intent(in):: value
         type(ComplexDim5KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim5KindREAL32Stack
      function popComplexDim5KindREAL32Stack(self, value) result(isSuccess)
         type(ComplexDim5KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim5KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim5KindREAL32Stack
      function is_emptyComplexDim5KindREAL32Stack(self) result(answer)
         type(ComplexDim5KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim5KindREAL32Stack
      subroutine pushComplexDim5KindREAL64Stack(self, value)
         type(ComplexDim5KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :, :, :), intent(in):: value
         type(ComplexDim5KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim5KindREAL64Stack
      function popComplexDim5KindREAL64Stack(self, value) result(isSuccess)
         type(ComplexDim5KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim5KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim5KindREAL64Stack
      function is_emptyComplexDim5KindREAL64Stack(self) result(answer)
         type(ComplexDim5KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim5KindREAL64Stack
      subroutine pushComplexDim5KindREAL128Stack(self, value)
         type(ComplexDim5KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :, :, :), intent(in):: value
         type(ComplexDim5KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim5KindREAL128Stack
      function popComplexDim5KindREAL128Stack(self, value) result(isSuccess)
         type(ComplexDim5KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim5KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim5KindREAL128Stack
      function is_emptyComplexDim5KindREAL128Stack(self) result(answer)
         type(ComplexDim5KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim5KindREAL128Stack
      subroutine pushComplexDim6KindREAL32Stack(self, value)
         type(ComplexDim6KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :, :, :, :), intent(in):: value
         type(ComplexDim6KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim6KindREAL32Stack
      function popComplexDim6KindREAL32Stack(self, value) result(isSuccess)
         type(ComplexDim6KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim6KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim6KindREAL32Stack
      function is_emptyComplexDim6KindREAL32Stack(self) result(answer)
         type(ComplexDim6KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim6KindREAL32Stack
      subroutine pushComplexDim6KindREAL64Stack(self, value)
         type(ComplexDim6KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :, :, :, :), intent(in):: value
         type(ComplexDim6KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim6KindREAL64Stack
      function popComplexDim6KindREAL64Stack(self, value) result(isSuccess)
         type(ComplexDim6KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim6KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim6KindREAL64Stack
      function is_emptyComplexDim6KindREAL64Stack(self) result(answer)
         type(ComplexDim6KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim6KindREAL64Stack
      subroutine pushComplexDim6KindREAL128Stack(self, value)
         type(ComplexDim6KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :, :, :, :), intent(in):: value
         type(ComplexDim6KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim6KindREAL128Stack
      function popComplexDim6KindREAL128Stack(self, value) result(isSuccess)
         type(ComplexDim6KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim6KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim6KindREAL128Stack
      function is_emptyComplexDim6KindREAL128Stack(self) result(answer)
         type(ComplexDim6KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim6KindREAL128Stack
      subroutine pushComplexDim7KindREAL32Stack(self, value)
         type(ComplexDim7KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(ComplexDim7KindREAL32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim7KindREAL32Stack
      function popComplexDim7KindREAL32Stack(self, value) result(isSuccess)
         type(ComplexDim7KindREAL32Stack), intent(inout):: self
         Complex(kind=REAL32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim7KindREAL32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim7KindREAL32Stack
      function is_emptyComplexDim7KindREAL32Stack(self) result(answer)
         type(ComplexDim7KindREAL32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim7KindREAL32Stack
      subroutine pushComplexDim7KindREAL64Stack(self, value)
         type(ComplexDim7KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(ComplexDim7KindREAL64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim7KindREAL64Stack
      function popComplexDim7KindREAL64Stack(self, value) result(isSuccess)
         type(ComplexDim7KindREAL64Stack), intent(inout):: self
         Complex(kind=REAL64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim7KindREAL64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim7KindREAL64Stack
      function is_emptyComplexDim7KindREAL64Stack(self) result(answer)
         type(ComplexDim7KindREAL64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim7KindREAL64Stack
      subroutine pushComplexDim7KindREAL128Stack(self, value)
         type(ComplexDim7KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(ComplexDim7KindREAL128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushComplexDim7KindREAL128Stack
      function popComplexDim7KindREAL128Stack(self, value) result(isSuccess)
         type(ComplexDim7KindREAL128Stack), intent(inout):: self
         Complex(kind=REAL128), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim7KindREAL128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popComplexDim7KindREAL128Stack
      function is_emptyComplexDim7KindREAL128Stack(self) result(answer)
         type(ComplexDim7KindREAL128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim7KindREAL128Stack
      subroutine pushCharacterDim0Len1Stack(self, value)
         type(CharacterDim0Len1Stack), intent(inout):: self
         Character(len=1), intent(in):: value
         type(CharacterDim0Len1StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim0Len1Stack
      function popCharacterDim0Len1Stack(self, value) result(isSuccess)
         type(CharacterDim0Len1Stack), intent(inout):: self
         Character(len=1), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len1StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim0Len1Stack
      function is_emptyCharacterDim0Len1Stack(self) result(answer)
         type(CharacterDim0Len1Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len1Stack
      subroutine pushCharacterDim0Len2Stack(self, value)
         type(CharacterDim0Len2Stack), intent(inout):: self
         Character(len=2), intent(in):: value
         type(CharacterDim0Len2StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim0Len2Stack
      function popCharacterDim0Len2Stack(self, value) result(isSuccess)
         type(CharacterDim0Len2Stack), intent(inout):: self
         Character(len=2), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len2StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim0Len2Stack
      function is_emptyCharacterDim0Len2Stack(self) result(answer)
         type(CharacterDim0Len2Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len2Stack
      subroutine pushCharacterDim0Len4Stack(self, value)
         type(CharacterDim0Len4Stack), intent(inout):: self
         Character(len=4), intent(in):: value
         type(CharacterDim0Len4StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim0Len4Stack
      function popCharacterDim0Len4Stack(self, value) result(isSuccess)
         type(CharacterDim0Len4Stack), intent(inout):: self
         Character(len=4), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len4StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim0Len4Stack
      function is_emptyCharacterDim0Len4Stack(self) result(answer)
         type(CharacterDim0Len4Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len4Stack
      subroutine pushCharacterDim0Len8Stack(self, value)
         type(CharacterDim0Len8Stack), intent(inout):: self
         Character(len=8), intent(in):: value
         type(CharacterDim0Len8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim0Len8Stack
      function popCharacterDim0Len8Stack(self, value) result(isSuccess)
         type(CharacterDim0Len8Stack), intent(inout):: self
         Character(len=8), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim0Len8Stack
      function is_emptyCharacterDim0Len8Stack(self) result(answer)
         type(CharacterDim0Len8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len8Stack
      subroutine pushCharacterDim0Len16Stack(self, value)
         type(CharacterDim0Len16Stack), intent(inout):: self
         Character(len=16), intent(in):: value
         type(CharacterDim0Len16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim0Len16Stack
      function popCharacterDim0Len16Stack(self, value) result(isSuccess)
         type(CharacterDim0Len16Stack), intent(inout):: self
         Character(len=16), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim0Len16Stack
      function is_emptyCharacterDim0Len16Stack(self) result(answer)
         type(CharacterDim0Len16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len16Stack
      subroutine pushCharacterDim0Len32Stack(self, value)
         type(CharacterDim0Len32Stack), intent(inout):: self
         Character(len=32), intent(in):: value
         type(CharacterDim0Len32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim0Len32Stack
      function popCharacterDim0Len32Stack(self, value) result(isSuccess)
         type(CharacterDim0Len32Stack), intent(inout):: self
         Character(len=32), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim0Len32Stack
      function is_emptyCharacterDim0Len32Stack(self) result(answer)
         type(CharacterDim0Len32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len32Stack
      subroutine pushCharacterDim0Len64Stack(self, value)
         type(CharacterDim0Len64Stack), intent(inout):: self
         Character(len=64), intent(in):: value
         type(CharacterDim0Len64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim0Len64Stack
      function popCharacterDim0Len64Stack(self, value) result(isSuccess)
         type(CharacterDim0Len64Stack), intent(inout):: self
         Character(len=64), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim0Len64Stack
      function is_emptyCharacterDim0Len64Stack(self) result(answer)
         type(CharacterDim0Len64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len64Stack
      subroutine pushCharacterDim0Len128Stack(self, value)
         type(CharacterDim0Len128Stack), intent(inout):: self
         Character(len=128), intent(in):: value
         type(CharacterDim0Len128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim0Len128Stack
      function popCharacterDim0Len128Stack(self, value) result(isSuccess)
         type(CharacterDim0Len128Stack), intent(inout):: self
         Character(len=128), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim0Len128Stack
      function is_emptyCharacterDim0Len128Stack(self) result(answer)
         type(CharacterDim0Len128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len128Stack
      subroutine pushCharacterDim0Len256Stack(self, value)
         type(CharacterDim0Len256Stack), intent(inout):: self
         Character(len=256), intent(in):: value
         type(CharacterDim0Len256StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim0Len256Stack
      function popCharacterDim0Len256Stack(self, value) result(isSuccess)
         type(CharacterDim0Len256Stack), intent(inout):: self
         Character(len=256), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len256StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim0Len256Stack
      function is_emptyCharacterDim0Len256Stack(self) result(answer)
         type(CharacterDim0Len256Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len256Stack
      subroutine pushCharacterDim0Len512Stack(self, value)
         type(CharacterDim0Len512Stack), intent(inout):: self
         Character(len=512), intent(in):: value
         type(CharacterDim0Len512StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim0Len512Stack
      function popCharacterDim0Len512Stack(self, value) result(isSuccess)
         type(CharacterDim0Len512Stack), intent(inout):: self
         Character(len=512), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len512StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim0Len512Stack
      function is_emptyCharacterDim0Len512Stack(self) result(answer)
         type(CharacterDim0Len512Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len512Stack
      subroutine pushCharacterDim0Len1024Stack(self, value)
         type(CharacterDim0Len1024Stack), intent(inout):: self
         Character(len=1024), intent(in):: value
         type(CharacterDim0Len1024StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim0Len1024Stack
      function popCharacterDim0Len1024Stack(self, value) result(isSuccess)
         type(CharacterDim0Len1024Stack), intent(inout):: self
         Character(len=1024), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len1024StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim0Len1024Stack
      function is_emptyCharacterDim0Len1024Stack(self) result(answer)
         type(CharacterDim0Len1024Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len1024Stack
      subroutine pushCharacterDim1Len1Stack(self, value)
         type(CharacterDim1Len1Stack), intent(inout):: self
         Character(len=1), dimension(:), intent(in):: value
         type(CharacterDim1Len1StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim1Len1Stack
      function popCharacterDim1Len1Stack(self, value) result(isSuccess)
         type(CharacterDim1Len1Stack), intent(inout):: self
         Character(len=1), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len1StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim1Len1Stack
      function is_emptyCharacterDim1Len1Stack(self) result(answer)
         type(CharacterDim1Len1Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim1Len1Stack
      subroutine pushCharacterDim1Len2Stack(self, value)
         type(CharacterDim1Len2Stack), intent(inout):: self
         Character(len=2), dimension(:), intent(in):: value
         type(CharacterDim1Len2StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim1Len2Stack
      function popCharacterDim1Len2Stack(self, value) result(isSuccess)
         type(CharacterDim1Len2Stack), intent(inout):: self
         Character(len=2), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len2StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim1Len2Stack
      function is_emptyCharacterDim1Len2Stack(self) result(answer)
         type(CharacterDim1Len2Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim1Len2Stack
      subroutine pushCharacterDim1Len4Stack(self, value)
         type(CharacterDim1Len4Stack), intent(inout):: self
         Character(len=4), dimension(:), intent(in):: value
         type(CharacterDim1Len4StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim1Len4Stack
      function popCharacterDim1Len4Stack(self, value) result(isSuccess)
         type(CharacterDim1Len4Stack), intent(inout):: self
         Character(len=4), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len4StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim1Len4Stack
      function is_emptyCharacterDim1Len4Stack(self) result(answer)
         type(CharacterDim1Len4Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim1Len4Stack
      subroutine pushCharacterDim1Len8Stack(self, value)
         type(CharacterDim1Len8Stack), intent(inout):: self
         Character(len=8), dimension(:), intent(in):: value
         type(CharacterDim1Len8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim1Len8Stack
      function popCharacterDim1Len8Stack(self, value) result(isSuccess)
         type(CharacterDim1Len8Stack), intent(inout):: self
         Character(len=8), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim1Len8Stack
      function is_emptyCharacterDim1Len8Stack(self) result(answer)
         type(CharacterDim1Len8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim1Len8Stack
      subroutine pushCharacterDim1Len16Stack(self, value)
         type(CharacterDim1Len16Stack), intent(inout):: self
         Character(len=16), dimension(:), intent(in):: value
         type(CharacterDim1Len16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim1Len16Stack
      function popCharacterDim1Len16Stack(self, value) result(isSuccess)
         type(CharacterDim1Len16Stack), intent(inout):: self
         Character(len=16), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim1Len16Stack
      function is_emptyCharacterDim1Len16Stack(self) result(answer)
         type(CharacterDim1Len16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim1Len16Stack
      subroutine pushCharacterDim1Len32Stack(self, value)
         type(CharacterDim1Len32Stack), intent(inout):: self
         Character(len=32), dimension(:), intent(in):: value
         type(CharacterDim1Len32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim1Len32Stack
      function popCharacterDim1Len32Stack(self, value) result(isSuccess)
         type(CharacterDim1Len32Stack), intent(inout):: self
         Character(len=32), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim1Len32Stack
      function is_emptyCharacterDim1Len32Stack(self) result(answer)
         type(CharacterDim1Len32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim1Len32Stack
      subroutine pushCharacterDim1Len64Stack(self, value)
         type(CharacterDim1Len64Stack), intent(inout):: self
         Character(len=64), dimension(:), intent(in):: value
         type(CharacterDim1Len64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim1Len64Stack
      function popCharacterDim1Len64Stack(self, value) result(isSuccess)
         type(CharacterDim1Len64Stack), intent(inout):: self
         Character(len=64), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim1Len64Stack
      function is_emptyCharacterDim1Len64Stack(self) result(answer)
         type(CharacterDim1Len64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim1Len64Stack
      subroutine pushCharacterDim1Len128Stack(self, value)
         type(CharacterDim1Len128Stack), intent(inout):: self
         Character(len=128), dimension(:), intent(in):: value
         type(CharacterDim1Len128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim1Len128Stack
      function popCharacterDim1Len128Stack(self, value) result(isSuccess)
         type(CharacterDim1Len128Stack), intent(inout):: self
         Character(len=128), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim1Len128Stack
      function is_emptyCharacterDim1Len128Stack(self) result(answer)
         type(CharacterDim1Len128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim1Len128Stack
      subroutine pushCharacterDim1Len256Stack(self, value)
         type(CharacterDim1Len256Stack), intent(inout):: self
         Character(len=256), dimension(:), intent(in):: value
         type(CharacterDim1Len256StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim1Len256Stack
      function popCharacterDim1Len256Stack(self, value) result(isSuccess)
         type(CharacterDim1Len256Stack), intent(inout):: self
         Character(len=256), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len256StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim1Len256Stack
      function is_emptyCharacterDim1Len256Stack(self) result(answer)
         type(CharacterDim1Len256Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim1Len256Stack
      subroutine pushCharacterDim1Len512Stack(self, value)
         type(CharacterDim1Len512Stack), intent(inout):: self
         Character(len=512), dimension(:), intent(in):: value
         type(CharacterDim1Len512StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim1Len512Stack
      function popCharacterDim1Len512Stack(self, value) result(isSuccess)
         type(CharacterDim1Len512Stack), intent(inout):: self
         Character(len=512), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len512StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim1Len512Stack
      function is_emptyCharacterDim1Len512Stack(self) result(answer)
         type(CharacterDim1Len512Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim1Len512Stack
      subroutine pushCharacterDim1Len1024Stack(self, value)
         type(CharacterDim1Len1024Stack), intent(inout):: self
         Character(len=1024), dimension(:), intent(in):: value
         type(CharacterDim1Len1024StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim1Len1024Stack
      function popCharacterDim1Len1024Stack(self, value) result(isSuccess)
         type(CharacterDim1Len1024Stack), intent(inout):: self
         Character(len=1024), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len1024StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim1Len1024Stack
      function is_emptyCharacterDim1Len1024Stack(self) result(answer)
         type(CharacterDim1Len1024Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim1Len1024Stack
      subroutine pushCharacterDim2Len1Stack(self, value)
         type(CharacterDim2Len1Stack), intent(inout):: self
         Character(len=1), dimension(:, :), intent(in):: value
         type(CharacterDim2Len1StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim2Len1Stack
      function popCharacterDim2Len1Stack(self, value) result(isSuccess)
         type(CharacterDim2Len1Stack), intent(inout):: self
         Character(len=1), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len1StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim2Len1Stack
      function is_emptyCharacterDim2Len1Stack(self) result(answer)
         type(CharacterDim2Len1Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim2Len1Stack
      subroutine pushCharacterDim2Len2Stack(self, value)
         type(CharacterDim2Len2Stack), intent(inout):: self
         Character(len=2), dimension(:, :), intent(in):: value
         type(CharacterDim2Len2StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim2Len2Stack
      function popCharacterDim2Len2Stack(self, value) result(isSuccess)
         type(CharacterDim2Len2Stack), intent(inout):: self
         Character(len=2), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len2StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim2Len2Stack
      function is_emptyCharacterDim2Len2Stack(self) result(answer)
         type(CharacterDim2Len2Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim2Len2Stack
      subroutine pushCharacterDim2Len4Stack(self, value)
         type(CharacterDim2Len4Stack), intent(inout):: self
         Character(len=4), dimension(:, :), intent(in):: value
         type(CharacterDim2Len4StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim2Len4Stack
      function popCharacterDim2Len4Stack(self, value) result(isSuccess)
         type(CharacterDim2Len4Stack), intent(inout):: self
         Character(len=4), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len4StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim2Len4Stack
      function is_emptyCharacterDim2Len4Stack(self) result(answer)
         type(CharacterDim2Len4Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim2Len4Stack
      subroutine pushCharacterDim2Len8Stack(self, value)
         type(CharacterDim2Len8Stack), intent(inout):: self
         Character(len=8), dimension(:, :), intent(in):: value
         type(CharacterDim2Len8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim2Len8Stack
      function popCharacterDim2Len8Stack(self, value) result(isSuccess)
         type(CharacterDim2Len8Stack), intent(inout):: self
         Character(len=8), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim2Len8Stack
      function is_emptyCharacterDim2Len8Stack(self) result(answer)
         type(CharacterDim2Len8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim2Len8Stack
      subroutine pushCharacterDim2Len16Stack(self, value)
         type(CharacterDim2Len16Stack), intent(inout):: self
         Character(len=16), dimension(:, :), intent(in):: value
         type(CharacterDim2Len16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim2Len16Stack
      function popCharacterDim2Len16Stack(self, value) result(isSuccess)
         type(CharacterDim2Len16Stack), intent(inout):: self
         Character(len=16), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim2Len16Stack
      function is_emptyCharacterDim2Len16Stack(self) result(answer)
         type(CharacterDim2Len16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim2Len16Stack
      subroutine pushCharacterDim2Len32Stack(self, value)
         type(CharacterDim2Len32Stack), intent(inout):: self
         Character(len=32), dimension(:, :), intent(in):: value
         type(CharacterDim2Len32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim2Len32Stack
      function popCharacterDim2Len32Stack(self, value) result(isSuccess)
         type(CharacterDim2Len32Stack), intent(inout):: self
         Character(len=32), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim2Len32Stack
      function is_emptyCharacterDim2Len32Stack(self) result(answer)
         type(CharacterDim2Len32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim2Len32Stack
      subroutine pushCharacterDim2Len64Stack(self, value)
         type(CharacterDim2Len64Stack), intent(inout):: self
         Character(len=64), dimension(:, :), intent(in):: value
         type(CharacterDim2Len64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim2Len64Stack
      function popCharacterDim2Len64Stack(self, value) result(isSuccess)
         type(CharacterDim2Len64Stack), intent(inout):: self
         Character(len=64), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim2Len64Stack
      function is_emptyCharacterDim2Len64Stack(self) result(answer)
         type(CharacterDim2Len64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim2Len64Stack
      subroutine pushCharacterDim2Len128Stack(self, value)
         type(CharacterDim2Len128Stack), intent(inout):: self
         Character(len=128), dimension(:, :), intent(in):: value
         type(CharacterDim2Len128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim2Len128Stack
      function popCharacterDim2Len128Stack(self, value) result(isSuccess)
         type(CharacterDim2Len128Stack), intent(inout):: self
         Character(len=128), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim2Len128Stack
      function is_emptyCharacterDim2Len128Stack(self) result(answer)
         type(CharacterDim2Len128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim2Len128Stack
      subroutine pushCharacterDim2Len256Stack(self, value)
         type(CharacterDim2Len256Stack), intent(inout):: self
         Character(len=256), dimension(:, :), intent(in):: value
         type(CharacterDim2Len256StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim2Len256Stack
      function popCharacterDim2Len256Stack(self, value) result(isSuccess)
         type(CharacterDim2Len256Stack), intent(inout):: self
         Character(len=256), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len256StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim2Len256Stack
      function is_emptyCharacterDim2Len256Stack(self) result(answer)
         type(CharacterDim2Len256Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim2Len256Stack
      subroutine pushCharacterDim2Len512Stack(self, value)
         type(CharacterDim2Len512Stack), intent(inout):: self
         Character(len=512), dimension(:, :), intent(in):: value
         type(CharacterDim2Len512StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim2Len512Stack
      function popCharacterDim2Len512Stack(self, value) result(isSuccess)
         type(CharacterDim2Len512Stack), intent(inout):: self
         Character(len=512), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len512StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim2Len512Stack
      function is_emptyCharacterDim2Len512Stack(self) result(answer)
         type(CharacterDim2Len512Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim2Len512Stack
      subroutine pushCharacterDim2Len1024Stack(self, value)
         type(CharacterDim2Len1024Stack), intent(inout):: self
         Character(len=1024), dimension(:, :), intent(in):: value
         type(CharacterDim2Len1024StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim2Len1024Stack
      function popCharacterDim2Len1024Stack(self, value) result(isSuccess)
         type(CharacterDim2Len1024Stack), intent(inout):: self
         Character(len=1024), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len1024StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim2Len1024Stack
      function is_emptyCharacterDim2Len1024Stack(self) result(answer)
         type(CharacterDim2Len1024Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim2Len1024Stack
      subroutine pushCharacterDim3Len1Stack(self, value)
         type(CharacterDim3Len1Stack), intent(inout):: self
         Character(len=1), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len1StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim3Len1Stack
      function popCharacterDim3Len1Stack(self, value) result(isSuccess)
         type(CharacterDim3Len1Stack), intent(inout):: self
         Character(len=1), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len1StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim3Len1Stack
      function is_emptyCharacterDim3Len1Stack(self) result(answer)
         type(CharacterDim3Len1Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim3Len1Stack
      subroutine pushCharacterDim3Len2Stack(self, value)
         type(CharacterDim3Len2Stack), intent(inout):: self
         Character(len=2), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len2StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim3Len2Stack
      function popCharacterDim3Len2Stack(self, value) result(isSuccess)
         type(CharacterDim3Len2Stack), intent(inout):: self
         Character(len=2), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len2StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim3Len2Stack
      function is_emptyCharacterDim3Len2Stack(self) result(answer)
         type(CharacterDim3Len2Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim3Len2Stack
      subroutine pushCharacterDim3Len4Stack(self, value)
         type(CharacterDim3Len4Stack), intent(inout):: self
         Character(len=4), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len4StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim3Len4Stack
      function popCharacterDim3Len4Stack(self, value) result(isSuccess)
         type(CharacterDim3Len4Stack), intent(inout):: self
         Character(len=4), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len4StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim3Len4Stack
      function is_emptyCharacterDim3Len4Stack(self) result(answer)
         type(CharacterDim3Len4Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim3Len4Stack
      subroutine pushCharacterDim3Len8Stack(self, value)
         type(CharacterDim3Len8Stack), intent(inout):: self
         Character(len=8), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim3Len8Stack
      function popCharacterDim3Len8Stack(self, value) result(isSuccess)
         type(CharacterDim3Len8Stack), intent(inout):: self
         Character(len=8), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim3Len8Stack
      function is_emptyCharacterDim3Len8Stack(self) result(answer)
         type(CharacterDim3Len8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim3Len8Stack
      subroutine pushCharacterDim3Len16Stack(self, value)
         type(CharacterDim3Len16Stack), intent(inout):: self
         Character(len=16), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim3Len16Stack
      function popCharacterDim3Len16Stack(self, value) result(isSuccess)
         type(CharacterDim3Len16Stack), intent(inout):: self
         Character(len=16), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim3Len16Stack
      function is_emptyCharacterDim3Len16Stack(self) result(answer)
         type(CharacterDim3Len16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim3Len16Stack
      subroutine pushCharacterDim3Len32Stack(self, value)
         type(CharacterDim3Len32Stack), intent(inout):: self
         Character(len=32), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim3Len32Stack
      function popCharacterDim3Len32Stack(self, value) result(isSuccess)
         type(CharacterDim3Len32Stack), intent(inout):: self
         Character(len=32), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim3Len32Stack
      function is_emptyCharacterDim3Len32Stack(self) result(answer)
         type(CharacterDim3Len32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim3Len32Stack
      subroutine pushCharacterDim3Len64Stack(self, value)
         type(CharacterDim3Len64Stack), intent(inout):: self
         Character(len=64), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim3Len64Stack
      function popCharacterDim3Len64Stack(self, value) result(isSuccess)
         type(CharacterDim3Len64Stack), intent(inout):: self
         Character(len=64), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim3Len64Stack
      function is_emptyCharacterDim3Len64Stack(self) result(answer)
         type(CharacterDim3Len64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim3Len64Stack
      subroutine pushCharacterDim3Len128Stack(self, value)
         type(CharacterDim3Len128Stack), intent(inout):: self
         Character(len=128), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim3Len128Stack
      function popCharacterDim3Len128Stack(self, value) result(isSuccess)
         type(CharacterDim3Len128Stack), intent(inout):: self
         Character(len=128), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim3Len128Stack
      function is_emptyCharacterDim3Len128Stack(self) result(answer)
         type(CharacterDim3Len128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim3Len128Stack
      subroutine pushCharacterDim3Len256Stack(self, value)
         type(CharacterDim3Len256Stack), intent(inout):: self
         Character(len=256), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len256StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim3Len256Stack
      function popCharacterDim3Len256Stack(self, value) result(isSuccess)
         type(CharacterDim3Len256Stack), intent(inout):: self
         Character(len=256), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len256StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim3Len256Stack
      function is_emptyCharacterDim3Len256Stack(self) result(answer)
         type(CharacterDim3Len256Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim3Len256Stack
      subroutine pushCharacterDim3Len512Stack(self, value)
         type(CharacterDim3Len512Stack), intent(inout):: self
         Character(len=512), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len512StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim3Len512Stack
      function popCharacterDim3Len512Stack(self, value) result(isSuccess)
         type(CharacterDim3Len512Stack), intent(inout):: self
         Character(len=512), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len512StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim3Len512Stack
      function is_emptyCharacterDim3Len512Stack(self) result(answer)
         type(CharacterDim3Len512Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim3Len512Stack
      subroutine pushCharacterDim3Len1024Stack(self, value)
         type(CharacterDim3Len1024Stack), intent(inout):: self
         Character(len=1024), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len1024StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim3Len1024Stack
      function popCharacterDim3Len1024Stack(self, value) result(isSuccess)
         type(CharacterDim3Len1024Stack), intent(inout):: self
         Character(len=1024), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len1024StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim3Len1024Stack
      function is_emptyCharacterDim3Len1024Stack(self) result(answer)
         type(CharacterDim3Len1024Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim3Len1024Stack
      subroutine pushCharacterDim4Len1Stack(self, value)
         type(CharacterDim4Len1Stack), intent(inout):: self
         Character(len=1), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len1StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim4Len1Stack
      function popCharacterDim4Len1Stack(self, value) result(isSuccess)
         type(CharacterDim4Len1Stack), intent(inout):: self
         Character(len=1), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len1StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim4Len1Stack
      function is_emptyCharacterDim4Len1Stack(self) result(answer)
         type(CharacterDim4Len1Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim4Len1Stack
      subroutine pushCharacterDim4Len2Stack(self, value)
         type(CharacterDim4Len2Stack), intent(inout):: self
         Character(len=2), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len2StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim4Len2Stack
      function popCharacterDim4Len2Stack(self, value) result(isSuccess)
         type(CharacterDim4Len2Stack), intent(inout):: self
         Character(len=2), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len2StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim4Len2Stack
      function is_emptyCharacterDim4Len2Stack(self) result(answer)
         type(CharacterDim4Len2Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim4Len2Stack
      subroutine pushCharacterDim4Len4Stack(self, value)
         type(CharacterDim4Len4Stack), intent(inout):: self
         Character(len=4), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len4StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim4Len4Stack
      function popCharacterDim4Len4Stack(self, value) result(isSuccess)
         type(CharacterDim4Len4Stack), intent(inout):: self
         Character(len=4), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len4StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim4Len4Stack
      function is_emptyCharacterDim4Len4Stack(self) result(answer)
         type(CharacterDim4Len4Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim4Len4Stack
      subroutine pushCharacterDim4Len8Stack(self, value)
         type(CharacterDim4Len8Stack), intent(inout):: self
         Character(len=8), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim4Len8Stack
      function popCharacterDim4Len8Stack(self, value) result(isSuccess)
         type(CharacterDim4Len8Stack), intent(inout):: self
         Character(len=8), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim4Len8Stack
      function is_emptyCharacterDim4Len8Stack(self) result(answer)
         type(CharacterDim4Len8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim4Len8Stack
      subroutine pushCharacterDim4Len16Stack(self, value)
         type(CharacterDim4Len16Stack), intent(inout):: self
         Character(len=16), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim4Len16Stack
      function popCharacterDim4Len16Stack(self, value) result(isSuccess)
         type(CharacterDim4Len16Stack), intent(inout):: self
         Character(len=16), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim4Len16Stack
      function is_emptyCharacterDim4Len16Stack(self) result(answer)
         type(CharacterDim4Len16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim4Len16Stack
      subroutine pushCharacterDim4Len32Stack(self, value)
         type(CharacterDim4Len32Stack), intent(inout):: self
         Character(len=32), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim4Len32Stack
      function popCharacterDim4Len32Stack(self, value) result(isSuccess)
         type(CharacterDim4Len32Stack), intent(inout):: self
         Character(len=32), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim4Len32Stack
      function is_emptyCharacterDim4Len32Stack(self) result(answer)
         type(CharacterDim4Len32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim4Len32Stack
      subroutine pushCharacterDim4Len64Stack(self, value)
         type(CharacterDim4Len64Stack), intent(inout):: self
         Character(len=64), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim4Len64Stack
      function popCharacterDim4Len64Stack(self, value) result(isSuccess)
         type(CharacterDim4Len64Stack), intent(inout):: self
         Character(len=64), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim4Len64Stack
      function is_emptyCharacterDim4Len64Stack(self) result(answer)
         type(CharacterDim4Len64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim4Len64Stack
      subroutine pushCharacterDim4Len128Stack(self, value)
         type(CharacterDim4Len128Stack), intent(inout):: self
         Character(len=128), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim4Len128Stack
      function popCharacterDim4Len128Stack(self, value) result(isSuccess)
         type(CharacterDim4Len128Stack), intent(inout):: self
         Character(len=128), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim4Len128Stack
      function is_emptyCharacterDim4Len128Stack(self) result(answer)
         type(CharacterDim4Len128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim4Len128Stack
      subroutine pushCharacterDim4Len256Stack(self, value)
         type(CharacterDim4Len256Stack), intent(inout):: self
         Character(len=256), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len256StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim4Len256Stack
      function popCharacterDim4Len256Stack(self, value) result(isSuccess)
         type(CharacterDim4Len256Stack), intent(inout):: self
         Character(len=256), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len256StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim4Len256Stack
      function is_emptyCharacterDim4Len256Stack(self) result(answer)
         type(CharacterDim4Len256Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim4Len256Stack
      subroutine pushCharacterDim4Len512Stack(self, value)
         type(CharacterDim4Len512Stack), intent(inout):: self
         Character(len=512), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len512StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim4Len512Stack
      function popCharacterDim4Len512Stack(self, value) result(isSuccess)
         type(CharacterDim4Len512Stack), intent(inout):: self
         Character(len=512), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len512StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim4Len512Stack
      function is_emptyCharacterDim4Len512Stack(self) result(answer)
         type(CharacterDim4Len512Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim4Len512Stack
      subroutine pushCharacterDim4Len1024Stack(self, value)
         type(CharacterDim4Len1024Stack), intent(inout):: self
         Character(len=1024), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len1024StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim4Len1024Stack
      function popCharacterDim4Len1024Stack(self, value) result(isSuccess)
         type(CharacterDim4Len1024Stack), intent(inout):: self
         Character(len=1024), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len1024StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim4Len1024Stack
      function is_emptyCharacterDim4Len1024Stack(self) result(answer)
         type(CharacterDim4Len1024Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim4Len1024Stack
      subroutine pushCharacterDim5Len1Stack(self, value)
         type(CharacterDim5Len1Stack), intent(inout):: self
         Character(len=1), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len1StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim5Len1Stack
      function popCharacterDim5Len1Stack(self, value) result(isSuccess)
         type(CharacterDim5Len1Stack), intent(inout):: self
         Character(len=1), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len1StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim5Len1Stack
      function is_emptyCharacterDim5Len1Stack(self) result(answer)
         type(CharacterDim5Len1Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim5Len1Stack
      subroutine pushCharacterDim5Len2Stack(self, value)
         type(CharacterDim5Len2Stack), intent(inout):: self
         Character(len=2), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len2StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim5Len2Stack
      function popCharacterDim5Len2Stack(self, value) result(isSuccess)
         type(CharacterDim5Len2Stack), intent(inout):: self
         Character(len=2), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len2StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim5Len2Stack
      function is_emptyCharacterDim5Len2Stack(self) result(answer)
         type(CharacterDim5Len2Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim5Len2Stack
      subroutine pushCharacterDim5Len4Stack(self, value)
         type(CharacterDim5Len4Stack), intent(inout):: self
         Character(len=4), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len4StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim5Len4Stack
      function popCharacterDim5Len4Stack(self, value) result(isSuccess)
         type(CharacterDim5Len4Stack), intent(inout):: self
         Character(len=4), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len4StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim5Len4Stack
      function is_emptyCharacterDim5Len4Stack(self) result(answer)
         type(CharacterDim5Len4Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim5Len4Stack
      subroutine pushCharacterDim5Len8Stack(self, value)
         type(CharacterDim5Len8Stack), intent(inout):: self
         Character(len=8), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim5Len8Stack
      function popCharacterDim5Len8Stack(self, value) result(isSuccess)
         type(CharacterDim5Len8Stack), intent(inout):: self
         Character(len=8), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim5Len8Stack
      function is_emptyCharacterDim5Len8Stack(self) result(answer)
         type(CharacterDim5Len8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim5Len8Stack
      subroutine pushCharacterDim5Len16Stack(self, value)
         type(CharacterDim5Len16Stack), intent(inout):: self
         Character(len=16), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim5Len16Stack
      function popCharacterDim5Len16Stack(self, value) result(isSuccess)
         type(CharacterDim5Len16Stack), intent(inout):: self
         Character(len=16), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim5Len16Stack
      function is_emptyCharacterDim5Len16Stack(self) result(answer)
         type(CharacterDim5Len16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim5Len16Stack
      subroutine pushCharacterDim5Len32Stack(self, value)
         type(CharacterDim5Len32Stack), intent(inout):: self
         Character(len=32), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim5Len32Stack
      function popCharacterDim5Len32Stack(self, value) result(isSuccess)
         type(CharacterDim5Len32Stack), intent(inout):: self
         Character(len=32), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim5Len32Stack
      function is_emptyCharacterDim5Len32Stack(self) result(answer)
         type(CharacterDim5Len32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim5Len32Stack
      subroutine pushCharacterDim5Len64Stack(self, value)
         type(CharacterDim5Len64Stack), intent(inout):: self
         Character(len=64), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim5Len64Stack
      function popCharacterDim5Len64Stack(self, value) result(isSuccess)
         type(CharacterDim5Len64Stack), intent(inout):: self
         Character(len=64), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim5Len64Stack
      function is_emptyCharacterDim5Len64Stack(self) result(answer)
         type(CharacterDim5Len64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim5Len64Stack
      subroutine pushCharacterDim5Len128Stack(self, value)
         type(CharacterDim5Len128Stack), intent(inout):: self
         Character(len=128), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim5Len128Stack
      function popCharacterDim5Len128Stack(self, value) result(isSuccess)
         type(CharacterDim5Len128Stack), intent(inout):: self
         Character(len=128), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim5Len128Stack
      function is_emptyCharacterDim5Len128Stack(self) result(answer)
         type(CharacterDim5Len128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim5Len128Stack
      subroutine pushCharacterDim5Len256Stack(self, value)
         type(CharacterDim5Len256Stack), intent(inout):: self
         Character(len=256), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len256StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim5Len256Stack
      function popCharacterDim5Len256Stack(self, value) result(isSuccess)
         type(CharacterDim5Len256Stack), intent(inout):: self
         Character(len=256), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len256StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim5Len256Stack
      function is_emptyCharacterDim5Len256Stack(self) result(answer)
         type(CharacterDim5Len256Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim5Len256Stack
      subroutine pushCharacterDim5Len512Stack(self, value)
         type(CharacterDim5Len512Stack), intent(inout):: self
         Character(len=512), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len512StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim5Len512Stack
      function popCharacterDim5Len512Stack(self, value) result(isSuccess)
         type(CharacterDim5Len512Stack), intent(inout):: self
         Character(len=512), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len512StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim5Len512Stack
      function is_emptyCharacterDim5Len512Stack(self) result(answer)
         type(CharacterDim5Len512Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim5Len512Stack
      subroutine pushCharacterDim5Len1024Stack(self, value)
         type(CharacterDim5Len1024Stack), intent(inout):: self
         Character(len=1024), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len1024StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim5Len1024Stack
      function popCharacterDim5Len1024Stack(self, value) result(isSuccess)
         type(CharacterDim5Len1024Stack), intent(inout):: self
         Character(len=1024), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len1024StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim5Len1024Stack
      function is_emptyCharacterDim5Len1024Stack(self) result(answer)
         type(CharacterDim5Len1024Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim5Len1024Stack
      subroutine pushCharacterDim6Len1Stack(self, value)
         type(CharacterDim6Len1Stack), intent(inout):: self
         Character(len=1), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len1StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim6Len1Stack
      function popCharacterDim6Len1Stack(self, value) result(isSuccess)
         type(CharacterDim6Len1Stack), intent(inout):: self
         Character(len=1), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len1StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim6Len1Stack
      function is_emptyCharacterDim6Len1Stack(self) result(answer)
         type(CharacterDim6Len1Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim6Len1Stack
      subroutine pushCharacterDim6Len2Stack(self, value)
         type(CharacterDim6Len2Stack), intent(inout):: self
         Character(len=2), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len2StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim6Len2Stack
      function popCharacterDim6Len2Stack(self, value) result(isSuccess)
         type(CharacterDim6Len2Stack), intent(inout):: self
         Character(len=2), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len2StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim6Len2Stack
      function is_emptyCharacterDim6Len2Stack(self) result(answer)
         type(CharacterDim6Len2Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim6Len2Stack
      subroutine pushCharacterDim6Len4Stack(self, value)
         type(CharacterDim6Len4Stack), intent(inout):: self
         Character(len=4), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len4StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim6Len4Stack
      function popCharacterDim6Len4Stack(self, value) result(isSuccess)
         type(CharacterDim6Len4Stack), intent(inout):: self
         Character(len=4), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len4StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim6Len4Stack
      function is_emptyCharacterDim6Len4Stack(self) result(answer)
         type(CharacterDim6Len4Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim6Len4Stack
      subroutine pushCharacterDim6Len8Stack(self, value)
         type(CharacterDim6Len8Stack), intent(inout):: self
         Character(len=8), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim6Len8Stack
      function popCharacterDim6Len8Stack(self, value) result(isSuccess)
         type(CharacterDim6Len8Stack), intent(inout):: self
         Character(len=8), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim6Len8Stack
      function is_emptyCharacterDim6Len8Stack(self) result(answer)
         type(CharacterDim6Len8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim6Len8Stack
      subroutine pushCharacterDim6Len16Stack(self, value)
         type(CharacterDim6Len16Stack), intent(inout):: self
         Character(len=16), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim6Len16Stack
      function popCharacterDim6Len16Stack(self, value) result(isSuccess)
         type(CharacterDim6Len16Stack), intent(inout):: self
         Character(len=16), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim6Len16Stack
      function is_emptyCharacterDim6Len16Stack(self) result(answer)
         type(CharacterDim6Len16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim6Len16Stack
      subroutine pushCharacterDim6Len32Stack(self, value)
         type(CharacterDim6Len32Stack), intent(inout):: self
         Character(len=32), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim6Len32Stack
      function popCharacterDim6Len32Stack(self, value) result(isSuccess)
         type(CharacterDim6Len32Stack), intent(inout):: self
         Character(len=32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim6Len32Stack
      function is_emptyCharacterDim6Len32Stack(self) result(answer)
         type(CharacterDim6Len32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim6Len32Stack
      subroutine pushCharacterDim6Len64Stack(self, value)
         type(CharacterDim6Len64Stack), intent(inout):: self
         Character(len=64), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim6Len64Stack
      function popCharacterDim6Len64Stack(self, value) result(isSuccess)
         type(CharacterDim6Len64Stack), intent(inout):: self
         Character(len=64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim6Len64Stack
      function is_emptyCharacterDim6Len64Stack(self) result(answer)
         type(CharacterDim6Len64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim6Len64Stack
      subroutine pushCharacterDim6Len128Stack(self, value)
         type(CharacterDim6Len128Stack), intent(inout):: self
         Character(len=128), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim6Len128Stack
      function popCharacterDim6Len128Stack(self, value) result(isSuccess)
         type(CharacterDim6Len128Stack), intent(inout):: self
         Character(len=128), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim6Len128Stack
      function is_emptyCharacterDim6Len128Stack(self) result(answer)
         type(CharacterDim6Len128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim6Len128Stack
      subroutine pushCharacterDim6Len256Stack(self, value)
         type(CharacterDim6Len256Stack), intent(inout):: self
         Character(len=256), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len256StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim6Len256Stack
      function popCharacterDim6Len256Stack(self, value) result(isSuccess)
         type(CharacterDim6Len256Stack), intent(inout):: self
         Character(len=256), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len256StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim6Len256Stack
      function is_emptyCharacterDim6Len256Stack(self) result(answer)
         type(CharacterDim6Len256Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim6Len256Stack
      subroutine pushCharacterDim6Len512Stack(self, value)
         type(CharacterDim6Len512Stack), intent(inout):: self
         Character(len=512), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len512StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim6Len512Stack
      function popCharacterDim6Len512Stack(self, value) result(isSuccess)
         type(CharacterDim6Len512Stack), intent(inout):: self
         Character(len=512), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len512StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim6Len512Stack
      function is_emptyCharacterDim6Len512Stack(self) result(answer)
         type(CharacterDim6Len512Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim6Len512Stack
      subroutine pushCharacterDim6Len1024Stack(self, value)
         type(CharacterDim6Len1024Stack), intent(inout):: self
         Character(len=1024), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len1024StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim6Len1024Stack
      function popCharacterDim6Len1024Stack(self, value) result(isSuccess)
         type(CharacterDim6Len1024Stack), intent(inout):: self
         Character(len=1024), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len1024StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim6Len1024Stack
      function is_emptyCharacterDim6Len1024Stack(self) result(answer)
         type(CharacterDim6Len1024Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim6Len1024Stack
      subroutine pushCharacterDim7Len1Stack(self, value)
         type(CharacterDim7Len1Stack), intent(inout):: self
         Character(len=1), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len1StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim7Len1Stack
      function popCharacterDim7Len1Stack(self, value) result(isSuccess)
         type(CharacterDim7Len1Stack), intent(inout):: self
         Character(len=1), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len1StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim7Len1Stack
      function is_emptyCharacterDim7Len1Stack(self) result(answer)
         type(CharacterDim7Len1Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim7Len1Stack
      subroutine pushCharacterDim7Len2Stack(self, value)
         type(CharacterDim7Len2Stack), intent(inout):: self
         Character(len=2), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len2StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim7Len2Stack
      function popCharacterDim7Len2Stack(self, value) result(isSuccess)
         type(CharacterDim7Len2Stack), intent(inout):: self
         Character(len=2), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len2StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim7Len2Stack
      function is_emptyCharacterDim7Len2Stack(self) result(answer)
         type(CharacterDim7Len2Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim7Len2Stack
      subroutine pushCharacterDim7Len4Stack(self, value)
         type(CharacterDim7Len4Stack), intent(inout):: self
         Character(len=4), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len4StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim7Len4Stack
      function popCharacterDim7Len4Stack(self, value) result(isSuccess)
         type(CharacterDim7Len4Stack), intent(inout):: self
         Character(len=4), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len4StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim7Len4Stack
      function is_emptyCharacterDim7Len4Stack(self) result(answer)
         type(CharacterDim7Len4Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim7Len4Stack
      subroutine pushCharacterDim7Len8Stack(self, value)
         type(CharacterDim7Len8Stack), intent(inout):: self
         Character(len=8), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len8StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim7Len8Stack
      function popCharacterDim7Len8Stack(self, value) result(isSuccess)
         type(CharacterDim7Len8Stack), intent(inout):: self
         Character(len=8), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len8StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim7Len8Stack
      function is_emptyCharacterDim7Len8Stack(self) result(answer)
         type(CharacterDim7Len8Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim7Len8Stack
      subroutine pushCharacterDim7Len16Stack(self, value)
         type(CharacterDim7Len16Stack), intent(inout):: self
         Character(len=16), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len16StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim7Len16Stack
      function popCharacterDim7Len16Stack(self, value) result(isSuccess)
         type(CharacterDim7Len16Stack), intent(inout):: self
         Character(len=16), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len16StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim7Len16Stack
      function is_emptyCharacterDim7Len16Stack(self) result(answer)
         type(CharacterDim7Len16Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim7Len16Stack
      subroutine pushCharacterDim7Len32Stack(self, value)
         type(CharacterDim7Len32Stack), intent(inout):: self
         Character(len=32), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len32StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim7Len32Stack
      function popCharacterDim7Len32Stack(self, value) result(isSuccess)
         type(CharacterDim7Len32Stack), intent(inout):: self
         Character(len=32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len32StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim7Len32Stack
      function is_emptyCharacterDim7Len32Stack(self) result(answer)
         type(CharacterDim7Len32Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim7Len32Stack
      subroutine pushCharacterDim7Len64Stack(self, value)
         type(CharacterDim7Len64Stack), intent(inout):: self
         Character(len=64), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len64StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim7Len64Stack
      function popCharacterDim7Len64Stack(self, value) result(isSuccess)
         type(CharacterDim7Len64Stack), intent(inout):: self
         Character(len=64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len64StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim7Len64Stack
      function is_emptyCharacterDim7Len64Stack(self) result(answer)
         type(CharacterDim7Len64Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim7Len64Stack
      subroutine pushCharacterDim7Len128Stack(self, value)
         type(CharacterDim7Len128Stack), intent(inout):: self
         Character(len=128), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len128StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim7Len128Stack
      function popCharacterDim7Len128Stack(self, value) result(isSuccess)
         type(CharacterDim7Len128Stack), intent(inout):: self
         Character(len=128), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len128StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim7Len128Stack
      function is_emptyCharacterDim7Len128Stack(self) result(answer)
         type(CharacterDim7Len128Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim7Len128Stack
      subroutine pushCharacterDim7Len256Stack(self, value)
         type(CharacterDim7Len256Stack), intent(inout):: self
         Character(len=256), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len256StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim7Len256Stack
      function popCharacterDim7Len256Stack(self, value) result(isSuccess)
         type(CharacterDim7Len256Stack), intent(inout):: self
         Character(len=256), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len256StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim7Len256Stack
      function is_emptyCharacterDim7Len256Stack(self) result(answer)
         type(CharacterDim7Len256Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim7Len256Stack
      subroutine pushCharacterDim7Len512Stack(self, value)
         type(CharacterDim7Len512Stack), intent(inout):: self
         Character(len=512), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len512StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim7Len512Stack
      function popCharacterDim7Len512Stack(self, value) result(isSuccess)
         type(CharacterDim7Len512Stack), intent(inout):: self
         Character(len=512), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len512StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim7Len512Stack
      function is_emptyCharacterDim7Len512Stack(self) result(answer)
         type(CharacterDim7Len512Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim7Len512Stack
      subroutine pushCharacterDim7Len1024Stack(self, value)
         type(CharacterDim7Len1024Stack), intent(inout):: self
         Character(len=1024), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len1024StackNode), pointer:: newNode
         allocate(newNode)
         newNode%value = value
         newNode%prev => self%entry
         self%entry => newNode
      end subroutine pushCharacterDim7Len1024Stack
      function popCharacterDim7Len1024Stack(self, value) result(isSuccess)
         type(CharacterDim7Len1024Stack), intent(inout):: self
         Character(len=1024), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len1024StackNode), pointer:: removedNode => null()
         if(is_empty(self))then
            isSuccess = .false.
            return
         end if
         value = self%entry%value
         removedNode => self%entry
         self%entry => self%entry%prev
         deallocate(removedNode)
         isSuccess = .true.
      end function popCharacterDim7Len1024Stack
      function is_emptyCharacterDim7Len1024Stack(self) result(answer)
         type(CharacterDim7Len1024Stack), intent(in):: self
         Logical:: answer
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim7Len1024Stack
end module stack_lib
