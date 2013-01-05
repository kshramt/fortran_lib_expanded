
module lib_queue
  use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
  implicit none

  private
  public:: push, shift

    public:: RealDim0KindREAL32Queue
    public:: RealDim0KindREAL64Queue
    public:: RealDim0KindREAL128Queue
    public:: RealDim1KindREAL32Queue
    public:: RealDim1KindREAL64Queue
    public:: RealDim1KindREAL128Queue
    public:: RealDim2KindREAL32Queue
    public:: RealDim2KindREAL64Queue
    public:: RealDim2KindREAL128Queue
    public:: RealDim3KindREAL32Queue
    public:: RealDim3KindREAL64Queue
    public:: RealDim3KindREAL128Queue
    public:: RealDim4KindREAL32Queue
    public:: RealDim4KindREAL64Queue
    public:: RealDim4KindREAL128Queue
    public:: RealDim5KindREAL32Queue
    public:: RealDim5KindREAL64Queue
    public:: RealDim5KindREAL128Queue
    public:: RealDim6KindREAL32Queue
    public:: RealDim6KindREAL64Queue
    public:: RealDim6KindREAL128Queue
    public:: RealDim7KindREAL32Queue
    public:: RealDim7KindREAL64Queue
    public:: RealDim7KindREAL128Queue
    public:: IntegerDim0KindINT8Queue
    public:: IntegerDim0KindINT16Queue
    public:: IntegerDim0KindINT32Queue
    public:: IntegerDim0KindINT64Queue
    public:: IntegerDim1KindINT8Queue
    public:: IntegerDim1KindINT16Queue
    public:: IntegerDim1KindINT32Queue
    public:: IntegerDim1KindINT64Queue
    public:: IntegerDim2KindINT8Queue
    public:: IntegerDim2KindINT16Queue
    public:: IntegerDim2KindINT32Queue
    public:: IntegerDim2KindINT64Queue
    public:: IntegerDim3KindINT8Queue
    public:: IntegerDim3KindINT16Queue
    public:: IntegerDim3KindINT32Queue
    public:: IntegerDim3KindINT64Queue
    public:: IntegerDim4KindINT8Queue
    public:: IntegerDim4KindINT16Queue
    public:: IntegerDim4KindINT32Queue
    public:: IntegerDim4KindINT64Queue
    public:: IntegerDim5KindINT8Queue
    public:: IntegerDim5KindINT16Queue
    public:: IntegerDim5KindINT32Queue
    public:: IntegerDim5KindINT64Queue
    public:: IntegerDim6KindINT8Queue
    public:: IntegerDim6KindINT16Queue
    public:: IntegerDim6KindINT32Queue
    public:: IntegerDim6KindINT64Queue
    public:: IntegerDim7KindINT8Queue
    public:: IntegerDim7KindINT16Queue
    public:: IntegerDim7KindINT32Queue
    public:: IntegerDim7KindINT64Queue
    public:: LogicalDim0Queue
    public:: LogicalDim1Queue
    public:: LogicalDim2Queue
    public:: LogicalDim3Queue
    public:: LogicalDim4Queue
    public:: LogicalDim5Queue
    public:: LogicalDim6Queue
    public:: LogicalDim7Queue
    public:: ComplexDim0KindREAL32Queue
    public:: ComplexDim0KindREAL64Queue
    public:: ComplexDim0KindREAL128Queue
    public:: ComplexDim1KindREAL32Queue
    public:: ComplexDim1KindREAL64Queue
    public:: ComplexDim1KindREAL128Queue
    public:: ComplexDim2KindREAL32Queue
    public:: ComplexDim2KindREAL64Queue
    public:: ComplexDim2KindREAL128Queue
    public:: ComplexDim3KindREAL32Queue
    public:: ComplexDim3KindREAL64Queue
    public:: ComplexDim3KindREAL128Queue
    public:: ComplexDim4KindREAL32Queue
    public:: ComplexDim4KindREAL64Queue
    public:: ComplexDim4KindREAL128Queue
    public:: ComplexDim5KindREAL32Queue
    public:: ComplexDim5KindREAL64Queue
    public:: ComplexDim5KindREAL128Queue
    public:: ComplexDim6KindREAL32Queue
    public:: ComplexDim6KindREAL64Queue
    public:: ComplexDim6KindREAL128Queue
    public:: ComplexDim7KindREAL32Queue
    public:: ComplexDim7KindREAL64Queue
    public:: ComplexDim7KindREAL128Queue
    public:: CharacterDim0Len1Queue
    public:: CharacterDim0Len2Queue
    public:: CharacterDim0Len4Queue
    public:: CharacterDim0Len8Queue
    public:: CharacterDim0Len16Queue
    public:: CharacterDim0Len32Queue
    public:: CharacterDim0Len64Queue
    public:: CharacterDim0Len128Queue
    public:: CharacterDim0Len256Queue
    public:: CharacterDim0Len512Queue
    public:: CharacterDim0Len1024Queue
    public:: CharacterDim0Len2048Queue
    public:: CharacterDim0Len4096Queue
    public:: CharacterDim0Len8192Queue
    public:: CharacterDim1Len1Queue
    public:: CharacterDim1Len2Queue
    public:: CharacterDim1Len4Queue
    public:: CharacterDim1Len8Queue
    public:: CharacterDim1Len16Queue
    public:: CharacterDim1Len32Queue
    public:: CharacterDim1Len64Queue
    public:: CharacterDim1Len128Queue
    public:: CharacterDim1Len256Queue
    public:: CharacterDim1Len512Queue
    public:: CharacterDim1Len1024Queue
    public:: CharacterDim1Len2048Queue
    public:: CharacterDim1Len4096Queue
    public:: CharacterDim1Len8192Queue
    public:: CharacterDim2Len1Queue
    public:: CharacterDim2Len2Queue
    public:: CharacterDim2Len4Queue
    public:: CharacterDim2Len8Queue
    public:: CharacterDim2Len16Queue
    public:: CharacterDim2Len32Queue
    public:: CharacterDim2Len64Queue
    public:: CharacterDim2Len128Queue
    public:: CharacterDim2Len256Queue
    public:: CharacterDim2Len512Queue
    public:: CharacterDim2Len1024Queue
    public:: CharacterDim2Len2048Queue
    public:: CharacterDim2Len4096Queue
    public:: CharacterDim2Len8192Queue
    public:: CharacterDim3Len1Queue
    public:: CharacterDim3Len2Queue
    public:: CharacterDim3Len4Queue
    public:: CharacterDim3Len8Queue
    public:: CharacterDim3Len16Queue
    public:: CharacterDim3Len32Queue
    public:: CharacterDim3Len64Queue
    public:: CharacterDim3Len128Queue
    public:: CharacterDim3Len256Queue
    public:: CharacterDim3Len512Queue
    public:: CharacterDim3Len1024Queue
    public:: CharacterDim3Len2048Queue
    public:: CharacterDim3Len4096Queue
    public:: CharacterDim3Len8192Queue
    public:: CharacterDim4Len1Queue
    public:: CharacterDim4Len2Queue
    public:: CharacterDim4Len4Queue
    public:: CharacterDim4Len8Queue
    public:: CharacterDim4Len16Queue
    public:: CharacterDim4Len32Queue
    public:: CharacterDim4Len64Queue
    public:: CharacterDim4Len128Queue
    public:: CharacterDim4Len256Queue
    public:: CharacterDim4Len512Queue
    public:: CharacterDim4Len1024Queue
    public:: CharacterDim4Len2048Queue
    public:: CharacterDim4Len4096Queue
    public:: CharacterDim4Len8192Queue
    public:: CharacterDim5Len1Queue
    public:: CharacterDim5Len2Queue
    public:: CharacterDim5Len4Queue
    public:: CharacterDim5Len8Queue
    public:: CharacterDim5Len16Queue
    public:: CharacterDim5Len32Queue
    public:: CharacterDim5Len64Queue
    public:: CharacterDim5Len128Queue
    public:: CharacterDim5Len256Queue
    public:: CharacterDim5Len512Queue
    public:: CharacterDim5Len1024Queue
    public:: CharacterDim5Len2048Queue
    public:: CharacterDim5Len4096Queue
    public:: CharacterDim5Len8192Queue
    public:: CharacterDim6Len1Queue
    public:: CharacterDim6Len2Queue
    public:: CharacterDim6Len4Queue
    public:: CharacterDim6Len8Queue
    public:: CharacterDim6Len16Queue
    public:: CharacterDim6Len32Queue
    public:: CharacterDim6Len64Queue
    public:: CharacterDim6Len128Queue
    public:: CharacterDim6Len256Queue
    public:: CharacterDim6Len512Queue
    public:: CharacterDim6Len1024Queue
    public:: CharacterDim6Len2048Queue
    public:: CharacterDim6Len4096Queue
    public:: CharacterDim6Len8192Queue
    public:: CharacterDim7Len1Queue
    public:: CharacterDim7Len2Queue
    public:: CharacterDim7Len4Queue
    public:: CharacterDim7Len8Queue
    public:: CharacterDim7Len16Queue
    public:: CharacterDim7Len32Queue
    public:: CharacterDim7Len64Queue
    public:: CharacterDim7Len128Queue
    public:: CharacterDim7Len256Queue
    public:: CharacterDim7Len512Queue
    public:: CharacterDim7Len1024Queue
    public:: CharacterDim7Len2048Queue
    public:: CharacterDim7Len4096Queue
    public:: CharacterDim7Len8192Queue

    interface push
      module procedure pushRealDim0KindREAL32
    end interface push

    interface shift
      module procedure shiftRealDim0KindREAL32
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim0KindREAL32
    end interface is_empty
    interface push
      module procedure pushRealDim0KindREAL64
    end interface push

    interface shift
      module procedure shiftRealDim0KindREAL64
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim0KindREAL64
    end interface is_empty
    interface push
      module procedure pushRealDim0KindREAL128
    end interface push

    interface shift
      module procedure shiftRealDim0KindREAL128
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim0KindREAL128
    end interface is_empty
    interface push
      module procedure pushRealDim1KindREAL32
    end interface push

    interface shift
      module procedure shiftRealDim1KindREAL32
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim1KindREAL32
    end interface is_empty
    interface push
      module procedure pushRealDim1KindREAL64
    end interface push

    interface shift
      module procedure shiftRealDim1KindREAL64
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim1KindREAL64
    end interface is_empty
    interface push
      module procedure pushRealDim1KindREAL128
    end interface push

    interface shift
      module procedure shiftRealDim1KindREAL128
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim1KindREAL128
    end interface is_empty
    interface push
      module procedure pushRealDim2KindREAL32
    end interface push

    interface shift
      module procedure shiftRealDim2KindREAL32
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim2KindREAL32
    end interface is_empty
    interface push
      module procedure pushRealDim2KindREAL64
    end interface push

    interface shift
      module procedure shiftRealDim2KindREAL64
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim2KindREAL64
    end interface is_empty
    interface push
      module procedure pushRealDim2KindREAL128
    end interface push

    interface shift
      module procedure shiftRealDim2KindREAL128
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim2KindREAL128
    end interface is_empty
    interface push
      module procedure pushRealDim3KindREAL32
    end interface push

    interface shift
      module procedure shiftRealDim3KindREAL32
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim3KindREAL32
    end interface is_empty
    interface push
      module procedure pushRealDim3KindREAL64
    end interface push

    interface shift
      module procedure shiftRealDim3KindREAL64
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim3KindREAL64
    end interface is_empty
    interface push
      module procedure pushRealDim3KindREAL128
    end interface push

    interface shift
      module procedure shiftRealDim3KindREAL128
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim3KindREAL128
    end interface is_empty
    interface push
      module procedure pushRealDim4KindREAL32
    end interface push

    interface shift
      module procedure shiftRealDim4KindREAL32
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim4KindREAL32
    end interface is_empty
    interface push
      module procedure pushRealDim4KindREAL64
    end interface push

    interface shift
      module procedure shiftRealDim4KindREAL64
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim4KindREAL64
    end interface is_empty
    interface push
      module procedure pushRealDim4KindREAL128
    end interface push

    interface shift
      module procedure shiftRealDim4KindREAL128
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim4KindREAL128
    end interface is_empty
    interface push
      module procedure pushRealDim5KindREAL32
    end interface push

    interface shift
      module procedure shiftRealDim5KindREAL32
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim5KindREAL32
    end interface is_empty
    interface push
      module procedure pushRealDim5KindREAL64
    end interface push

    interface shift
      module procedure shiftRealDim5KindREAL64
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim5KindREAL64
    end interface is_empty
    interface push
      module procedure pushRealDim5KindREAL128
    end interface push

    interface shift
      module procedure shiftRealDim5KindREAL128
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim5KindREAL128
    end interface is_empty
    interface push
      module procedure pushRealDim6KindREAL32
    end interface push

    interface shift
      module procedure shiftRealDim6KindREAL32
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim6KindREAL32
    end interface is_empty
    interface push
      module procedure pushRealDim6KindREAL64
    end interface push

    interface shift
      module procedure shiftRealDim6KindREAL64
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim6KindREAL64
    end interface is_empty
    interface push
      module procedure pushRealDim6KindREAL128
    end interface push

    interface shift
      module procedure shiftRealDim6KindREAL128
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim6KindREAL128
    end interface is_empty
    interface push
      module procedure pushRealDim7KindREAL32
    end interface push

    interface shift
      module procedure shiftRealDim7KindREAL32
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim7KindREAL32
    end interface is_empty
    interface push
      module procedure pushRealDim7KindREAL64
    end interface push

    interface shift
      module procedure shiftRealDim7KindREAL64
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim7KindREAL64
    end interface is_empty
    interface push
      module procedure pushRealDim7KindREAL128
    end interface push

    interface shift
      module procedure shiftRealDim7KindREAL128
    end interface shift

    interface is_empty
      module procedure is_emptyRealDim7KindREAL128
    end interface is_empty
    interface push
      module procedure pushIntegerDim0KindINT8
    end interface push

    interface shift
      module procedure shiftIntegerDim0KindINT8
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim0KindINT8
    end interface is_empty
    interface push
      module procedure pushIntegerDim0KindINT16
    end interface push

    interface shift
      module procedure shiftIntegerDim0KindINT16
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim0KindINT16
    end interface is_empty
    interface push
      module procedure pushIntegerDim0KindINT32
    end interface push

    interface shift
      module procedure shiftIntegerDim0KindINT32
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim0KindINT32
    end interface is_empty
    interface push
      module procedure pushIntegerDim0KindINT64
    end interface push

    interface shift
      module procedure shiftIntegerDim0KindINT64
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim0KindINT64
    end interface is_empty
    interface push
      module procedure pushIntegerDim1KindINT8
    end interface push

    interface shift
      module procedure shiftIntegerDim1KindINT8
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim1KindINT8
    end interface is_empty
    interface push
      module procedure pushIntegerDim1KindINT16
    end interface push

    interface shift
      module procedure shiftIntegerDim1KindINT16
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim1KindINT16
    end interface is_empty
    interface push
      module procedure pushIntegerDim1KindINT32
    end interface push

    interface shift
      module procedure shiftIntegerDim1KindINT32
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim1KindINT32
    end interface is_empty
    interface push
      module procedure pushIntegerDim1KindINT64
    end interface push

    interface shift
      module procedure shiftIntegerDim1KindINT64
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim1KindINT64
    end interface is_empty
    interface push
      module procedure pushIntegerDim2KindINT8
    end interface push

    interface shift
      module procedure shiftIntegerDim2KindINT8
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim2KindINT8
    end interface is_empty
    interface push
      module procedure pushIntegerDim2KindINT16
    end interface push

    interface shift
      module procedure shiftIntegerDim2KindINT16
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim2KindINT16
    end interface is_empty
    interface push
      module procedure pushIntegerDim2KindINT32
    end interface push

    interface shift
      module procedure shiftIntegerDim2KindINT32
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim2KindINT32
    end interface is_empty
    interface push
      module procedure pushIntegerDim2KindINT64
    end interface push

    interface shift
      module procedure shiftIntegerDim2KindINT64
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim2KindINT64
    end interface is_empty
    interface push
      module procedure pushIntegerDim3KindINT8
    end interface push

    interface shift
      module procedure shiftIntegerDim3KindINT8
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim3KindINT8
    end interface is_empty
    interface push
      module procedure pushIntegerDim3KindINT16
    end interface push

    interface shift
      module procedure shiftIntegerDim3KindINT16
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim3KindINT16
    end interface is_empty
    interface push
      module procedure pushIntegerDim3KindINT32
    end interface push

    interface shift
      module procedure shiftIntegerDim3KindINT32
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim3KindINT32
    end interface is_empty
    interface push
      module procedure pushIntegerDim3KindINT64
    end interface push

    interface shift
      module procedure shiftIntegerDim3KindINT64
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim3KindINT64
    end interface is_empty
    interface push
      module procedure pushIntegerDim4KindINT8
    end interface push

    interface shift
      module procedure shiftIntegerDim4KindINT8
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim4KindINT8
    end interface is_empty
    interface push
      module procedure pushIntegerDim4KindINT16
    end interface push

    interface shift
      module procedure shiftIntegerDim4KindINT16
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim4KindINT16
    end interface is_empty
    interface push
      module procedure pushIntegerDim4KindINT32
    end interface push

    interface shift
      module procedure shiftIntegerDim4KindINT32
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim4KindINT32
    end interface is_empty
    interface push
      module procedure pushIntegerDim4KindINT64
    end interface push

    interface shift
      module procedure shiftIntegerDim4KindINT64
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim4KindINT64
    end interface is_empty
    interface push
      module procedure pushIntegerDim5KindINT8
    end interface push

    interface shift
      module procedure shiftIntegerDim5KindINT8
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim5KindINT8
    end interface is_empty
    interface push
      module procedure pushIntegerDim5KindINT16
    end interface push

    interface shift
      module procedure shiftIntegerDim5KindINT16
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim5KindINT16
    end interface is_empty
    interface push
      module procedure pushIntegerDim5KindINT32
    end interface push

    interface shift
      module procedure shiftIntegerDim5KindINT32
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim5KindINT32
    end interface is_empty
    interface push
      module procedure pushIntegerDim5KindINT64
    end interface push

    interface shift
      module procedure shiftIntegerDim5KindINT64
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim5KindINT64
    end interface is_empty
    interface push
      module procedure pushIntegerDim6KindINT8
    end interface push

    interface shift
      module procedure shiftIntegerDim6KindINT8
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim6KindINT8
    end interface is_empty
    interface push
      module procedure pushIntegerDim6KindINT16
    end interface push

    interface shift
      module procedure shiftIntegerDim6KindINT16
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim6KindINT16
    end interface is_empty
    interface push
      module procedure pushIntegerDim6KindINT32
    end interface push

    interface shift
      module procedure shiftIntegerDim6KindINT32
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim6KindINT32
    end interface is_empty
    interface push
      module procedure pushIntegerDim6KindINT64
    end interface push

    interface shift
      module procedure shiftIntegerDim6KindINT64
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim6KindINT64
    end interface is_empty
    interface push
      module procedure pushIntegerDim7KindINT8
    end interface push

    interface shift
      module procedure shiftIntegerDim7KindINT8
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim7KindINT8
    end interface is_empty
    interface push
      module procedure pushIntegerDim7KindINT16
    end interface push

    interface shift
      module procedure shiftIntegerDim7KindINT16
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim7KindINT16
    end interface is_empty
    interface push
      module procedure pushIntegerDim7KindINT32
    end interface push

    interface shift
      module procedure shiftIntegerDim7KindINT32
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim7KindINT32
    end interface is_empty
    interface push
      module procedure pushIntegerDim7KindINT64
    end interface push

    interface shift
      module procedure shiftIntegerDim7KindINT64
    end interface shift

    interface is_empty
      module procedure is_emptyIntegerDim7KindINT64
    end interface is_empty
    interface push
      module procedure pushLogicalDim0
    end interface push

    interface shift
      module procedure shiftLogicalDim0
    end interface shift

    interface is_empty
      module procedure is_emptyLogicalDim0
    end interface is_empty
    interface push
      module procedure pushLogicalDim1
    end interface push

    interface shift
      module procedure shiftLogicalDim1
    end interface shift

    interface is_empty
      module procedure is_emptyLogicalDim1
    end interface is_empty
    interface push
      module procedure pushLogicalDim2
    end interface push

    interface shift
      module procedure shiftLogicalDim2
    end interface shift

    interface is_empty
      module procedure is_emptyLogicalDim2
    end interface is_empty
    interface push
      module procedure pushLogicalDim3
    end interface push

    interface shift
      module procedure shiftLogicalDim3
    end interface shift

    interface is_empty
      module procedure is_emptyLogicalDim3
    end interface is_empty
    interface push
      module procedure pushLogicalDim4
    end interface push

    interface shift
      module procedure shiftLogicalDim4
    end interface shift

    interface is_empty
      module procedure is_emptyLogicalDim4
    end interface is_empty
    interface push
      module procedure pushLogicalDim5
    end interface push

    interface shift
      module procedure shiftLogicalDim5
    end interface shift

    interface is_empty
      module procedure is_emptyLogicalDim5
    end interface is_empty
    interface push
      module procedure pushLogicalDim6
    end interface push

    interface shift
      module procedure shiftLogicalDim6
    end interface shift

    interface is_empty
      module procedure is_emptyLogicalDim6
    end interface is_empty
    interface push
      module procedure pushLogicalDim7
    end interface push

    interface shift
      module procedure shiftLogicalDim7
    end interface shift

    interface is_empty
      module procedure is_emptyLogicalDim7
    end interface is_empty
    interface push
      module procedure pushComplexDim0KindREAL32
    end interface push

    interface shift
      module procedure shiftComplexDim0KindREAL32
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim0KindREAL32
    end interface is_empty
    interface push
      module procedure pushComplexDim0KindREAL64
    end interface push

    interface shift
      module procedure shiftComplexDim0KindREAL64
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim0KindREAL64
    end interface is_empty
    interface push
      module procedure pushComplexDim0KindREAL128
    end interface push

    interface shift
      module procedure shiftComplexDim0KindREAL128
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim0KindREAL128
    end interface is_empty
    interface push
      module procedure pushComplexDim1KindREAL32
    end interface push

    interface shift
      module procedure shiftComplexDim1KindREAL32
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim1KindREAL32
    end interface is_empty
    interface push
      module procedure pushComplexDim1KindREAL64
    end interface push

    interface shift
      module procedure shiftComplexDim1KindREAL64
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim1KindREAL64
    end interface is_empty
    interface push
      module procedure pushComplexDim1KindREAL128
    end interface push

    interface shift
      module procedure shiftComplexDim1KindREAL128
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim1KindREAL128
    end interface is_empty
    interface push
      module procedure pushComplexDim2KindREAL32
    end interface push

    interface shift
      module procedure shiftComplexDim2KindREAL32
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim2KindREAL32
    end interface is_empty
    interface push
      module procedure pushComplexDim2KindREAL64
    end interface push

    interface shift
      module procedure shiftComplexDim2KindREAL64
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim2KindREAL64
    end interface is_empty
    interface push
      module procedure pushComplexDim2KindREAL128
    end interface push

    interface shift
      module procedure shiftComplexDim2KindREAL128
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim2KindREAL128
    end interface is_empty
    interface push
      module procedure pushComplexDim3KindREAL32
    end interface push

    interface shift
      module procedure shiftComplexDim3KindREAL32
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim3KindREAL32
    end interface is_empty
    interface push
      module procedure pushComplexDim3KindREAL64
    end interface push

    interface shift
      module procedure shiftComplexDim3KindREAL64
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim3KindREAL64
    end interface is_empty
    interface push
      module procedure pushComplexDim3KindREAL128
    end interface push

    interface shift
      module procedure shiftComplexDim3KindREAL128
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim3KindREAL128
    end interface is_empty
    interface push
      module procedure pushComplexDim4KindREAL32
    end interface push

    interface shift
      module procedure shiftComplexDim4KindREAL32
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim4KindREAL32
    end interface is_empty
    interface push
      module procedure pushComplexDim4KindREAL64
    end interface push

    interface shift
      module procedure shiftComplexDim4KindREAL64
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim4KindREAL64
    end interface is_empty
    interface push
      module procedure pushComplexDim4KindREAL128
    end interface push

    interface shift
      module procedure shiftComplexDim4KindREAL128
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim4KindREAL128
    end interface is_empty
    interface push
      module procedure pushComplexDim5KindREAL32
    end interface push

    interface shift
      module procedure shiftComplexDim5KindREAL32
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim5KindREAL32
    end interface is_empty
    interface push
      module procedure pushComplexDim5KindREAL64
    end interface push

    interface shift
      module procedure shiftComplexDim5KindREAL64
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim5KindREAL64
    end interface is_empty
    interface push
      module procedure pushComplexDim5KindREAL128
    end interface push

    interface shift
      module procedure shiftComplexDim5KindREAL128
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim5KindREAL128
    end interface is_empty
    interface push
      module procedure pushComplexDim6KindREAL32
    end interface push

    interface shift
      module procedure shiftComplexDim6KindREAL32
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim6KindREAL32
    end interface is_empty
    interface push
      module procedure pushComplexDim6KindREAL64
    end interface push

    interface shift
      module procedure shiftComplexDim6KindREAL64
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim6KindREAL64
    end interface is_empty
    interface push
      module procedure pushComplexDim6KindREAL128
    end interface push

    interface shift
      module procedure shiftComplexDim6KindREAL128
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim6KindREAL128
    end interface is_empty
    interface push
      module procedure pushComplexDim7KindREAL32
    end interface push

    interface shift
      module procedure shiftComplexDim7KindREAL32
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim7KindREAL32
    end interface is_empty
    interface push
      module procedure pushComplexDim7KindREAL64
    end interface push

    interface shift
      module procedure shiftComplexDim7KindREAL64
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim7KindREAL64
    end interface is_empty
    interface push
      module procedure pushComplexDim7KindREAL128
    end interface push

    interface shift
      module procedure shiftComplexDim7KindREAL128
    end interface shift

    interface is_empty
      module procedure is_emptyComplexDim7KindREAL128
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len1
    end interface push

    interface shift
      module procedure shiftCharacterDim0Len1
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim0Len1
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len2
    end interface push

    interface shift
      module procedure shiftCharacterDim0Len2
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim0Len2
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len4
    end interface push

    interface shift
      module procedure shiftCharacterDim0Len4
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim0Len4
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len8
    end interface push

    interface shift
      module procedure shiftCharacterDim0Len8
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim0Len8
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len16
    end interface push

    interface shift
      module procedure shiftCharacterDim0Len16
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim0Len16
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len32
    end interface push

    interface shift
      module procedure shiftCharacterDim0Len32
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim0Len32
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len64
    end interface push

    interface shift
      module procedure shiftCharacterDim0Len64
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim0Len64
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len128
    end interface push

    interface shift
      module procedure shiftCharacterDim0Len128
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim0Len128
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len256
    end interface push

    interface shift
      module procedure shiftCharacterDim0Len256
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim0Len256
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len512
    end interface push

    interface shift
      module procedure shiftCharacterDim0Len512
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim0Len512
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len1024
    end interface push

    interface shift
      module procedure shiftCharacterDim0Len1024
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim0Len1024
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len2048
    end interface push

    interface shift
      module procedure shiftCharacterDim0Len2048
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim0Len2048
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len4096
    end interface push

    interface shift
      module procedure shiftCharacterDim0Len4096
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim0Len4096
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len8192
    end interface push

    interface shift
      module procedure shiftCharacterDim0Len8192
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim0Len8192
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len1
    end interface push

    interface shift
      module procedure shiftCharacterDim1Len1
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim1Len1
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len2
    end interface push

    interface shift
      module procedure shiftCharacterDim1Len2
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim1Len2
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len4
    end interface push

    interface shift
      module procedure shiftCharacterDim1Len4
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim1Len4
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len8
    end interface push

    interface shift
      module procedure shiftCharacterDim1Len8
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim1Len8
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len16
    end interface push

    interface shift
      module procedure shiftCharacterDim1Len16
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim1Len16
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len32
    end interface push

    interface shift
      module procedure shiftCharacterDim1Len32
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim1Len32
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len64
    end interface push

    interface shift
      module procedure shiftCharacterDim1Len64
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim1Len64
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len128
    end interface push

    interface shift
      module procedure shiftCharacterDim1Len128
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim1Len128
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len256
    end interface push

    interface shift
      module procedure shiftCharacterDim1Len256
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim1Len256
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len512
    end interface push

    interface shift
      module procedure shiftCharacterDim1Len512
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim1Len512
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len1024
    end interface push

    interface shift
      module procedure shiftCharacterDim1Len1024
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim1Len1024
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len2048
    end interface push

    interface shift
      module procedure shiftCharacterDim1Len2048
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim1Len2048
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len4096
    end interface push

    interface shift
      module procedure shiftCharacterDim1Len4096
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim1Len4096
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len8192
    end interface push

    interface shift
      module procedure shiftCharacterDim1Len8192
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim1Len8192
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len1
    end interface push

    interface shift
      module procedure shiftCharacterDim2Len1
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim2Len1
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len2
    end interface push

    interface shift
      module procedure shiftCharacterDim2Len2
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim2Len2
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len4
    end interface push

    interface shift
      module procedure shiftCharacterDim2Len4
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim2Len4
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len8
    end interface push

    interface shift
      module procedure shiftCharacterDim2Len8
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim2Len8
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len16
    end interface push

    interface shift
      module procedure shiftCharacterDim2Len16
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim2Len16
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len32
    end interface push

    interface shift
      module procedure shiftCharacterDim2Len32
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim2Len32
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len64
    end interface push

    interface shift
      module procedure shiftCharacterDim2Len64
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim2Len64
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len128
    end interface push

    interface shift
      module procedure shiftCharacterDim2Len128
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim2Len128
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len256
    end interface push

    interface shift
      module procedure shiftCharacterDim2Len256
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim2Len256
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len512
    end interface push

    interface shift
      module procedure shiftCharacterDim2Len512
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim2Len512
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len1024
    end interface push

    interface shift
      module procedure shiftCharacterDim2Len1024
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim2Len1024
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len2048
    end interface push

    interface shift
      module procedure shiftCharacterDim2Len2048
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim2Len2048
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len4096
    end interface push

    interface shift
      module procedure shiftCharacterDim2Len4096
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim2Len4096
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len8192
    end interface push

    interface shift
      module procedure shiftCharacterDim2Len8192
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim2Len8192
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len1
    end interface push

    interface shift
      module procedure shiftCharacterDim3Len1
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim3Len1
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len2
    end interface push

    interface shift
      module procedure shiftCharacterDim3Len2
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim3Len2
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len4
    end interface push

    interface shift
      module procedure shiftCharacterDim3Len4
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim3Len4
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len8
    end interface push

    interface shift
      module procedure shiftCharacterDim3Len8
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim3Len8
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len16
    end interface push

    interface shift
      module procedure shiftCharacterDim3Len16
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim3Len16
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len32
    end interface push

    interface shift
      module procedure shiftCharacterDim3Len32
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim3Len32
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len64
    end interface push

    interface shift
      module procedure shiftCharacterDim3Len64
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim3Len64
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len128
    end interface push

    interface shift
      module procedure shiftCharacterDim3Len128
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim3Len128
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len256
    end interface push

    interface shift
      module procedure shiftCharacterDim3Len256
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim3Len256
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len512
    end interface push

    interface shift
      module procedure shiftCharacterDim3Len512
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim3Len512
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len1024
    end interface push

    interface shift
      module procedure shiftCharacterDim3Len1024
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim3Len1024
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len2048
    end interface push

    interface shift
      module procedure shiftCharacterDim3Len2048
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim3Len2048
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len4096
    end interface push

    interface shift
      module procedure shiftCharacterDim3Len4096
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim3Len4096
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len8192
    end interface push

    interface shift
      module procedure shiftCharacterDim3Len8192
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim3Len8192
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len1
    end interface push

    interface shift
      module procedure shiftCharacterDim4Len1
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim4Len1
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len2
    end interface push

    interface shift
      module procedure shiftCharacterDim4Len2
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim4Len2
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len4
    end interface push

    interface shift
      module procedure shiftCharacterDim4Len4
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim4Len4
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len8
    end interface push

    interface shift
      module procedure shiftCharacterDim4Len8
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim4Len8
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len16
    end interface push

    interface shift
      module procedure shiftCharacterDim4Len16
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim4Len16
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len32
    end interface push

    interface shift
      module procedure shiftCharacterDim4Len32
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim4Len32
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len64
    end interface push

    interface shift
      module procedure shiftCharacterDim4Len64
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim4Len64
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len128
    end interface push

    interface shift
      module procedure shiftCharacterDim4Len128
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim4Len128
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len256
    end interface push

    interface shift
      module procedure shiftCharacterDim4Len256
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim4Len256
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len512
    end interface push

    interface shift
      module procedure shiftCharacterDim4Len512
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim4Len512
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len1024
    end interface push

    interface shift
      module procedure shiftCharacterDim4Len1024
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim4Len1024
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len2048
    end interface push

    interface shift
      module procedure shiftCharacterDim4Len2048
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim4Len2048
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len4096
    end interface push

    interface shift
      module procedure shiftCharacterDim4Len4096
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim4Len4096
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len8192
    end interface push

    interface shift
      module procedure shiftCharacterDim4Len8192
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim4Len8192
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len1
    end interface push

    interface shift
      module procedure shiftCharacterDim5Len1
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim5Len1
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len2
    end interface push

    interface shift
      module procedure shiftCharacterDim5Len2
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim5Len2
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len4
    end interface push

    interface shift
      module procedure shiftCharacterDim5Len4
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim5Len4
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len8
    end interface push

    interface shift
      module procedure shiftCharacterDim5Len8
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim5Len8
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len16
    end interface push

    interface shift
      module procedure shiftCharacterDim5Len16
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim5Len16
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len32
    end interface push

    interface shift
      module procedure shiftCharacterDim5Len32
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim5Len32
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len64
    end interface push

    interface shift
      module procedure shiftCharacterDim5Len64
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim5Len64
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len128
    end interface push

    interface shift
      module procedure shiftCharacterDim5Len128
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim5Len128
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len256
    end interface push

    interface shift
      module procedure shiftCharacterDim5Len256
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim5Len256
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len512
    end interface push

    interface shift
      module procedure shiftCharacterDim5Len512
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim5Len512
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len1024
    end interface push

    interface shift
      module procedure shiftCharacterDim5Len1024
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim5Len1024
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len2048
    end interface push

    interface shift
      module procedure shiftCharacterDim5Len2048
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim5Len2048
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len4096
    end interface push

    interface shift
      module procedure shiftCharacterDim5Len4096
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim5Len4096
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len8192
    end interface push

    interface shift
      module procedure shiftCharacterDim5Len8192
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim5Len8192
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len1
    end interface push

    interface shift
      module procedure shiftCharacterDim6Len1
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim6Len1
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len2
    end interface push

    interface shift
      module procedure shiftCharacterDim6Len2
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim6Len2
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len4
    end interface push

    interface shift
      module procedure shiftCharacterDim6Len4
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim6Len4
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len8
    end interface push

    interface shift
      module procedure shiftCharacterDim6Len8
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim6Len8
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len16
    end interface push

    interface shift
      module procedure shiftCharacterDim6Len16
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim6Len16
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len32
    end interface push

    interface shift
      module procedure shiftCharacterDim6Len32
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim6Len32
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len64
    end interface push

    interface shift
      module procedure shiftCharacterDim6Len64
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim6Len64
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len128
    end interface push

    interface shift
      module procedure shiftCharacterDim6Len128
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim6Len128
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len256
    end interface push

    interface shift
      module procedure shiftCharacterDim6Len256
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim6Len256
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len512
    end interface push

    interface shift
      module procedure shiftCharacterDim6Len512
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim6Len512
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len1024
    end interface push

    interface shift
      module procedure shiftCharacterDim6Len1024
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim6Len1024
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len2048
    end interface push

    interface shift
      module procedure shiftCharacterDim6Len2048
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim6Len2048
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len4096
    end interface push

    interface shift
      module procedure shiftCharacterDim6Len4096
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim6Len4096
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len8192
    end interface push

    interface shift
      module procedure shiftCharacterDim6Len8192
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim6Len8192
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len1
    end interface push

    interface shift
      module procedure shiftCharacterDim7Len1
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim7Len1
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len2
    end interface push

    interface shift
      module procedure shiftCharacterDim7Len2
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim7Len2
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len4
    end interface push

    interface shift
      module procedure shiftCharacterDim7Len4
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim7Len4
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len8
    end interface push

    interface shift
      module procedure shiftCharacterDim7Len8
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim7Len8
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len16
    end interface push

    interface shift
      module procedure shiftCharacterDim7Len16
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim7Len16
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len32
    end interface push

    interface shift
      module procedure shiftCharacterDim7Len32
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim7Len32
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len64
    end interface push

    interface shift
      module procedure shiftCharacterDim7Len64
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim7Len64
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len128
    end interface push

    interface shift
      module procedure shiftCharacterDim7Len128
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim7Len128
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len256
    end interface push

    interface shift
      module procedure shiftCharacterDim7Len256
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim7Len256
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len512
    end interface push

    interface shift
      module procedure shiftCharacterDim7Len512
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim7Len512
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len1024
    end interface push

    interface shift
      module procedure shiftCharacterDim7Len1024
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim7Len1024
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len2048
    end interface push

    interface shift
      module procedure shiftCharacterDim7Len2048
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim7Len2048
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len4096
    end interface push

    interface shift
      module procedure shiftCharacterDim7Len4096
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim7Len4096
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len8192
    end interface push

    interface shift
      module procedure shiftCharacterDim7Len8192
    end interface shift

    interface is_empty
      module procedure is_emptyCharacterDim7Len8192
    end interface is_empty

    type RealDim0KindREAL32Queue
      type(RealDim0KindREAL32QueueNode), pointer:: tail => null()
      type(RealDim0KindREAL32QueueNode), pointer:: head => null()
    end type RealDim0KindREAL32Queue

    type RealDim0KindREAL32QueueNode
      Real(kind = REAL32):: val
      type(RealDim0KindREAL32QueueNode), pointer:: next => null()
    end type RealDim0KindREAL32QueueNode
    type RealDim0KindREAL64Queue
      type(RealDim0KindREAL64QueueNode), pointer:: tail => null()
      type(RealDim0KindREAL64QueueNode), pointer:: head => null()
    end type RealDim0KindREAL64Queue

    type RealDim0KindREAL64QueueNode
      Real(kind = REAL64):: val
      type(RealDim0KindREAL64QueueNode), pointer:: next => null()
    end type RealDim0KindREAL64QueueNode
    type RealDim0KindREAL128Queue
      type(RealDim0KindREAL128QueueNode), pointer:: tail => null()
      type(RealDim0KindREAL128QueueNode), pointer:: head => null()
    end type RealDim0KindREAL128Queue

    type RealDim0KindREAL128QueueNode
      Real(kind = REAL128):: val
      type(RealDim0KindREAL128QueueNode), pointer:: next => null()
    end type RealDim0KindREAL128QueueNode
    type RealDim1KindREAL32Queue
      type(RealDim1KindREAL32QueueNode), pointer:: tail => null()
      type(RealDim1KindREAL32QueueNode), pointer:: head => null()
    end type RealDim1KindREAL32Queue

    type RealDim1KindREAL32QueueNode
      Real(kind = REAL32), dimension(:), allocatable:: val
      type(RealDim1KindREAL32QueueNode), pointer:: next => null()
    end type RealDim1KindREAL32QueueNode
    type RealDim1KindREAL64Queue
      type(RealDim1KindREAL64QueueNode), pointer:: tail => null()
      type(RealDim1KindREAL64QueueNode), pointer:: head => null()
    end type RealDim1KindREAL64Queue

    type RealDim1KindREAL64QueueNode
      Real(kind = REAL64), dimension(:), allocatable:: val
      type(RealDim1KindREAL64QueueNode), pointer:: next => null()
    end type RealDim1KindREAL64QueueNode
    type RealDim1KindREAL128Queue
      type(RealDim1KindREAL128QueueNode), pointer:: tail => null()
      type(RealDim1KindREAL128QueueNode), pointer:: head => null()
    end type RealDim1KindREAL128Queue

    type RealDim1KindREAL128QueueNode
      Real(kind = REAL128), dimension(:), allocatable:: val
      type(RealDim1KindREAL128QueueNode), pointer:: next => null()
    end type RealDim1KindREAL128QueueNode
    type RealDim2KindREAL32Queue
      type(RealDim2KindREAL32QueueNode), pointer:: tail => null()
      type(RealDim2KindREAL32QueueNode), pointer:: head => null()
    end type RealDim2KindREAL32Queue

    type RealDim2KindREAL32QueueNode
      Real(kind = REAL32), dimension(:, :), allocatable:: val
      type(RealDim2KindREAL32QueueNode), pointer:: next => null()
    end type RealDim2KindREAL32QueueNode
    type RealDim2KindREAL64Queue
      type(RealDim2KindREAL64QueueNode), pointer:: tail => null()
      type(RealDim2KindREAL64QueueNode), pointer:: head => null()
    end type RealDim2KindREAL64Queue

    type RealDim2KindREAL64QueueNode
      Real(kind = REAL64), dimension(:, :), allocatable:: val
      type(RealDim2KindREAL64QueueNode), pointer:: next => null()
    end type RealDim2KindREAL64QueueNode
    type RealDim2KindREAL128Queue
      type(RealDim2KindREAL128QueueNode), pointer:: tail => null()
      type(RealDim2KindREAL128QueueNode), pointer:: head => null()
    end type RealDim2KindREAL128Queue

    type RealDim2KindREAL128QueueNode
      Real(kind = REAL128), dimension(:, :), allocatable:: val
      type(RealDim2KindREAL128QueueNode), pointer:: next => null()
    end type RealDim2KindREAL128QueueNode
    type RealDim3KindREAL32Queue
      type(RealDim3KindREAL32QueueNode), pointer:: tail => null()
      type(RealDim3KindREAL32QueueNode), pointer:: head => null()
    end type RealDim3KindREAL32Queue

    type RealDim3KindREAL32QueueNode
      Real(kind = REAL32), dimension(:, :, :), allocatable:: val
      type(RealDim3KindREAL32QueueNode), pointer:: next => null()
    end type RealDim3KindREAL32QueueNode
    type RealDim3KindREAL64Queue
      type(RealDim3KindREAL64QueueNode), pointer:: tail => null()
      type(RealDim3KindREAL64QueueNode), pointer:: head => null()
    end type RealDim3KindREAL64Queue

    type RealDim3KindREAL64QueueNode
      Real(kind = REAL64), dimension(:, :, :), allocatable:: val
      type(RealDim3KindREAL64QueueNode), pointer:: next => null()
    end type RealDim3KindREAL64QueueNode
    type RealDim3KindREAL128Queue
      type(RealDim3KindREAL128QueueNode), pointer:: tail => null()
      type(RealDim3KindREAL128QueueNode), pointer:: head => null()
    end type RealDim3KindREAL128Queue

    type RealDim3KindREAL128QueueNode
      Real(kind = REAL128), dimension(:, :, :), allocatable:: val
      type(RealDim3KindREAL128QueueNode), pointer:: next => null()
    end type RealDim3KindREAL128QueueNode
    type RealDim4KindREAL32Queue
      type(RealDim4KindREAL32QueueNode), pointer:: tail => null()
      type(RealDim4KindREAL32QueueNode), pointer:: head => null()
    end type RealDim4KindREAL32Queue

    type RealDim4KindREAL32QueueNode
      Real(kind = REAL32), dimension(:, :, :, :), allocatable:: val
      type(RealDim4KindREAL32QueueNode), pointer:: next => null()
    end type RealDim4KindREAL32QueueNode
    type RealDim4KindREAL64Queue
      type(RealDim4KindREAL64QueueNode), pointer:: tail => null()
      type(RealDim4KindREAL64QueueNode), pointer:: head => null()
    end type RealDim4KindREAL64Queue

    type RealDim4KindREAL64QueueNode
      Real(kind = REAL64), dimension(:, :, :, :), allocatable:: val
      type(RealDim4KindREAL64QueueNode), pointer:: next => null()
    end type RealDim4KindREAL64QueueNode
    type RealDim4KindREAL128Queue
      type(RealDim4KindREAL128QueueNode), pointer:: tail => null()
      type(RealDim4KindREAL128QueueNode), pointer:: head => null()
    end type RealDim4KindREAL128Queue

    type RealDim4KindREAL128QueueNode
      Real(kind = REAL128), dimension(:, :, :, :), allocatable:: val
      type(RealDim4KindREAL128QueueNode), pointer:: next => null()
    end type RealDim4KindREAL128QueueNode
    type RealDim5KindREAL32Queue
      type(RealDim5KindREAL32QueueNode), pointer:: tail => null()
      type(RealDim5KindREAL32QueueNode), pointer:: head => null()
    end type RealDim5KindREAL32Queue

    type RealDim5KindREAL32QueueNode
      Real(kind = REAL32), dimension(:, :, :, :, :), allocatable:: val
      type(RealDim5KindREAL32QueueNode), pointer:: next => null()
    end type RealDim5KindREAL32QueueNode
    type RealDim5KindREAL64Queue
      type(RealDim5KindREAL64QueueNode), pointer:: tail => null()
      type(RealDim5KindREAL64QueueNode), pointer:: head => null()
    end type RealDim5KindREAL64Queue

    type RealDim5KindREAL64QueueNode
      Real(kind = REAL64), dimension(:, :, :, :, :), allocatable:: val
      type(RealDim5KindREAL64QueueNode), pointer:: next => null()
    end type RealDim5KindREAL64QueueNode
    type RealDim5KindREAL128Queue
      type(RealDim5KindREAL128QueueNode), pointer:: tail => null()
      type(RealDim5KindREAL128QueueNode), pointer:: head => null()
    end type RealDim5KindREAL128Queue

    type RealDim5KindREAL128QueueNode
      Real(kind = REAL128), dimension(:, :, :, :, :), allocatable:: val
      type(RealDim5KindREAL128QueueNode), pointer:: next => null()
    end type RealDim5KindREAL128QueueNode
    type RealDim6KindREAL32Queue
      type(RealDim6KindREAL32QueueNode), pointer:: tail => null()
      type(RealDim6KindREAL32QueueNode), pointer:: head => null()
    end type RealDim6KindREAL32Queue

    type RealDim6KindREAL32QueueNode
      Real(kind = REAL32), dimension(:, :, :, :, :, :), allocatable:: val
      type(RealDim6KindREAL32QueueNode), pointer:: next => null()
    end type RealDim6KindREAL32QueueNode
    type RealDim6KindREAL64Queue
      type(RealDim6KindREAL64QueueNode), pointer:: tail => null()
      type(RealDim6KindREAL64QueueNode), pointer:: head => null()
    end type RealDim6KindREAL64Queue

    type RealDim6KindREAL64QueueNode
      Real(kind = REAL64), dimension(:, :, :, :, :, :), allocatable:: val
      type(RealDim6KindREAL64QueueNode), pointer:: next => null()
    end type RealDim6KindREAL64QueueNode
    type RealDim6KindREAL128Queue
      type(RealDim6KindREAL128QueueNode), pointer:: tail => null()
      type(RealDim6KindREAL128QueueNode), pointer:: head => null()
    end type RealDim6KindREAL128Queue

    type RealDim6KindREAL128QueueNode
      Real(kind = REAL128), dimension(:, :, :, :, :, :), allocatable:: val
      type(RealDim6KindREAL128QueueNode), pointer:: next => null()
    end type RealDim6KindREAL128QueueNode
    type RealDim7KindREAL32Queue
      type(RealDim7KindREAL32QueueNode), pointer:: tail => null()
      type(RealDim7KindREAL32QueueNode), pointer:: head => null()
    end type RealDim7KindREAL32Queue

    type RealDim7KindREAL32QueueNode
      Real(kind = REAL32), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(RealDim7KindREAL32QueueNode), pointer:: next => null()
    end type RealDim7KindREAL32QueueNode
    type RealDim7KindREAL64Queue
      type(RealDim7KindREAL64QueueNode), pointer:: tail => null()
      type(RealDim7KindREAL64QueueNode), pointer:: head => null()
    end type RealDim7KindREAL64Queue

    type RealDim7KindREAL64QueueNode
      Real(kind = REAL64), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(RealDim7KindREAL64QueueNode), pointer:: next => null()
    end type RealDim7KindREAL64QueueNode
    type RealDim7KindREAL128Queue
      type(RealDim7KindREAL128QueueNode), pointer:: tail => null()
      type(RealDim7KindREAL128QueueNode), pointer:: head => null()
    end type RealDim7KindREAL128Queue

    type RealDim7KindREAL128QueueNode
      Real(kind = REAL128), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(RealDim7KindREAL128QueueNode), pointer:: next => null()
    end type RealDim7KindREAL128QueueNode
    type IntegerDim0KindINT8Queue
      type(IntegerDim0KindINT8QueueNode), pointer:: tail => null()
      type(IntegerDim0KindINT8QueueNode), pointer:: head => null()
    end type IntegerDim0KindINT8Queue

    type IntegerDim0KindINT8QueueNode
      Integer(kind = INT8):: val
      type(IntegerDim0KindINT8QueueNode), pointer:: next => null()
    end type IntegerDim0KindINT8QueueNode
    type IntegerDim0KindINT16Queue
      type(IntegerDim0KindINT16QueueNode), pointer:: tail => null()
      type(IntegerDim0KindINT16QueueNode), pointer:: head => null()
    end type IntegerDim0KindINT16Queue

    type IntegerDim0KindINT16QueueNode
      Integer(kind = INT16):: val
      type(IntegerDim0KindINT16QueueNode), pointer:: next => null()
    end type IntegerDim0KindINT16QueueNode
    type IntegerDim0KindINT32Queue
      type(IntegerDim0KindINT32QueueNode), pointer:: tail => null()
      type(IntegerDim0KindINT32QueueNode), pointer:: head => null()
    end type IntegerDim0KindINT32Queue

    type IntegerDim0KindINT32QueueNode
      Integer(kind = INT32):: val
      type(IntegerDim0KindINT32QueueNode), pointer:: next => null()
    end type IntegerDim0KindINT32QueueNode
    type IntegerDim0KindINT64Queue
      type(IntegerDim0KindINT64QueueNode), pointer:: tail => null()
      type(IntegerDim0KindINT64QueueNode), pointer:: head => null()
    end type IntegerDim0KindINT64Queue

    type IntegerDim0KindINT64QueueNode
      Integer(kind = INT64):: val
      type(IntegerDim0KindINT64QueueNode), pointer:: next => null()
    end type IntegerDim0KindINT64QueueNode
    type IntegerDim1KindINT8Queue
      type(IntegerDim1KindINT8QueueNode), pointer:: tail => null()
      type(IntegerDim1KindINT8QueueNode), pointer:: head => null()
    end type IntegerDim1KindINT8Queue

    type IntegerDim1KindINT8QueueNode
      Integer(kind = INT8), dimension(:), allocatable:: val
      type(IntegerDim1KindINT8QueueNode), pointer:: next => null()
    end type IntegerDim1KindINT8QueueNode
    type IntegerDim1KindINT16Queue
      type(IntegerDim1KindINT16QueueNode), pointer:: tail => null()
      type(IntegerDim1KindINT16QueueNode), pointer:: head => null()
    end type IntegerDim1KindINT16Queue

    type IntegerDim1KindINT16QueueNode
      Integer(kind = INT16), dimension(:), allocatable:: val
      type(IntegerDim1KindINT16QueueNode), pointer:: next => null()
    end type IntegerDim1KindINT16QueueNode
    type IntegerDim1KindINT32Queue
      type(IntegerDim1KindINT32QueueNode), pointer:: tail => null()
      type(IntegerDim1KindINT32QueueNode), pointer:: head => null()
    end type IntegerDim1KindINT32Queue

    type IntegerDim1KindINT32QueueNode
      Integer(kind = INT32), dimension(:), allocatable:: val
      type(IntegerDim1KindINT32QueueNode), pointer:: next => null()
    end type IntegerDim1KindINT32QueueNode
    type IntegerDim1KindINT64Queue
      type(IntegerDim1KindINT64QueueNode), pointer:: tail => null()
      type(IntegerDim1KindINT64QueueNode), pointer:: head => null()
    end type IntegerDim1KindINT64Queue

    type IntegerDim1KindINT64QueueNode
      Integer(kind = INT64), dimension(:), allocatable:: val
      type(IntegerDim1KindINT64QueueNode), pointer:: next => null()
    end type IntegerDim1KindINT64QueueNode
    type IntegerDim2KindINT8Queue
      type(IntegerDim2KindINT8QueueNode), pointer:: tail => null()
      type(IntegerDim2KindINT8QueueNode), pointer:: head => null()
    end type IntegerDim2KindINT8Queue

    type IntegerDim2KindINT8QueueNode
      Integer(kind = INT8), dimension(:, :), allocatable:: val
      type(IntegerDim2KindINT8QueueNode), pointer:: next => null()
    end type IntegerDim2KindINT8QueueNode
    type IntegerDim2KindINT16Queue
      type(IntegerDim2KindINT16QueueNode), pointer:: tail => null()
      type(IntegerDim2KindINT16QueueNode), pointer:: head => null()
    end type IntegerDim2KindINT16Queue

    type IntegerDim2KindINT16QueueNode
      Integer(kind = INT16), dimension(:, :), allocatable:: val
      type(IntegerDim2KindINT16QueueNode), pointer:: next => null()
    end type IntegerDim2KindINT16QueueNode
    type IntegerDim2KindINT32Queue
      type(IntegerDim2KindINT32QueueNode), pointer:: tail => null()
      type(IntegerDim2KindINT32QueueNode), pointer:: head => null()
    end type IntegerDim2KindINT32Queue

    type IntegerDim2KindINT32QueueNode
      Integer(kind = INT32), dimension(:, :), allocatable:: val
      type(IntegerDim2KindINT32QueueNode), pointer:: next => null()
    end type IntegerDim2KindINT32QueueNode
    type IntegerDim2KindINT64Queue
      type(IntegerDim2KindINT64QueueNode), pointer:: tail => null()
      type(IntegerDim2KindINT64QueueNode), pointer:: head => null()
    end type IntegerDim2KindINT64Queue

    type IntegerDim2KindINT64QueueNode
      Integer(kind = INT64), dimension(:, :), allocatable:: val
      type(IntegerDim2KindINT64QueueNode), pointer:: next => null()
    end type IntegerDim2KindINT64QueueNode
    type IntegerDim3KindINT8Queue
      type(IntegerDim3KindINT8QueueNode), pointer:: tail => null()
      type(IntegerDim3KindINT8QueueNode), pointer:: head => null()
    end type IntegerDim3KindINT8Queue

    type IntegerDim3KindINT8QueueNode
      Integer(kind = INT8), dimension(:, :, :), allocatable:: val
      type(IntegerDim3KindINT8QueueNode), pointer:: next => null()
    end type IntegerDim3KindINT8QueueNode
    type IntegerDim3KindINT16Queue
      type(IntegerDim3KindINT16QueueNode), pointer:: tail => null()
      type(IntegerDim3KindINT16QueueNode), pointer:: head => null()
    end type IntegerDim3KindINT16Queue

    type IntegerDim3KindINT16QueueNode
      Integer(kind = INT16), dimension(:, :, :), allocatable:: val
      type(IntegerDim3KindINT16QueueNode), pointer:: next => null()
    end type IntegerDim3KindINT16QueueNode
    type IntegerDim3KindINT32Queue
      type(IntegerDim3KindINT32QueueNode), pointer:: tail => null()
      type(IntegerDim3KindINT32QueueNode), pointer:: head => null()
    end type IntegerDim3KindINT32Queue

    type IntegerDim3KindINT32QueueNode
      Integer(kind = INT32), dimension(:, :, :), allocatable:: val
      type(IntegerDim3KindINT32QueueNode), pointer:: next => null()
    end type IntegerDim3KindINT32QueueNode
    type IntegerDim3KindINT64Queue
      type(IntegerDim3KindINT64QueueNode), pointer:: tail => null()
      type(IntegerDim3KindINT64QueueNode), pointer:: head => null()
    end type IntegerDim3KindINT64Queue

    type IntegerDim3KindINT64QueueNode
      Integer(kind = INT64), dimension(:, :, :), allocatable:: val
      type(IntegerDim3KindINT64QueueNode), pointer:: next => null()
    end type IntegerDim3KindINT64QueueNode
    type IntegerDim4KindINT8Queue
      type(IntegerDim4KindINT8QueueNode), pointer:: tail => null()
      type(IntegerDim4KindINT8QueueNode), pointer:: head => null()
    end type IntegerDim4KindINT8Queue

    type IntegerDim4KindINT8QueueNode
      Integer(kind = INT8), dimension(:, :, :, :), allocatable:: val
      type(IntegerDim4KindINT8QueueNode), pointer:: next => null()
    end type IntegerDim4KindINT8QueueNode
    type IntegerDim4KindINT16Queue
      type(IntegerDim4KindINT16QueueNode), pointer:: tail => null()
      type(IntegerDim4KindINT16QueueNode), pointer:: head => null()
    end type IntegerDim4KindINT16Queue

    type IntegerDim4KindINT16QueueNode
      Integer(kind = INT16), dimension(:, :, :, :), allocatable:: val
      type(IntegerDim4KindINT16QueueNode), pointer:: next => null()
    end type IntegerDim4KindINT16QueueNode
    type IntegerDim4KindINT32Queue
      type(IntegerDim4KindINT32QueueNode), pointer:: tail => null()
      type(IntegerDim4KindINT32QueueNode), pointer:: head => null()
    end type IntegerDim4KindINT32Queue

    type IntegerDim4KindINT32QueueNode
      Integer(kind = INT32), dimension(:, :, :, :), allocatable:: val
      type(IntegerDim4KindINT32QueueNode), pointer:: next => null()
    end type IntegerDim4KindINT32QueueNode
    type IntegerDim4KindINT64Queue
      type(IntegerDim4KindINT64QueueNode), pointer:: tail => null()
      type(IntegerDim4KindINT64QueueNode), pointer:: head => null()
    end type IntegerDim4KindINT64Queue

    type IntegerDim4KindINT64QueueNode
      Integer(kind = INT64), dimension(:, :, :, :), allocatable:: val
      type(IntegerDim4KindINT64QueueNode), pointer:: next => null()
    end type IntegerDim4KindINT64QueueNode
    type IntegerDim5KindINT8Queue
      type(IntegerDim5KindINT8QueueNode), pointer:: tail => null()
      type(IntegerDim5KindINT8QueueNode), pointer:: head => null()
    end type IntegerDim5KindINT8Queue

    type IntegerDim5KindINT8QueueNode
      Integer(kind = INT8), dimension(:, :, :, :, :), allocatable:: val
      type(IntegerDim5KindINT8QueueNode), pointer:: next => null()
    end type IntegerDim5KindINT8QueueNode
    type IntegerDim5KindINT16Queue
      type(IntegerDim5KindINT16QueueNode), pointer:: tail => null()
      type(IntegerDim5KindINT16QueueNode), pointer:: head => null()
    end type IntegerDim5KindINT16Queue

    type IntegerDim5KindINT16QueueNode
      Integer(kind = INT16), dimension(:, :, :, :, :), allocatable:: val
      type(IntegerDim5KindINT16QueueNode), pointer:: next => null()
    end type IntegerDim5KindINT16QueueNode
    type IntegerDim5KindINT32Queue
      type(IntegerDim5KindINT32QueueNode), pointer:: tail => null()
      type(IntegerDim5KindINT32QueueNode), pointer:: head => null()
    end type IntegerDim5KindINT32Queue

    type IntegerDim5KindINT32QueueNode
      Integer(kind = INT32), dimension(:, :, :, :, :), allocatable:: val
      type(IntegerDim5KindINT32QueueNode), pointer:: next => null()
    end type IntegerDim5KindINT32QueueNode
    type IntegerDim5KindINT64Queue
      type(IntegerDim5KindINT64QueueNode), pointer:: tail => null()
      type(IntegerDim5KindINT64QueueNode), pointer:: head => null()
    end type IntegerDim5KindINT64Queue

    type IntegerDim5KindINT64QueueNode
      Integer(kind = INT64), dimension(:, :, :, :, :), allocatable:: val
      type(IntegerDim5KindINT64QueueNode), pointer:: next => null()
    end type IntegerDim5KindINT64QueueNode
    type IntegerDim6KindINT8Queue
      type(IntegerDim6KindINT8QueueNode), pointer:: tail => null()
      type(IntegerDim6KindINT8QueueNode), pointer:: head => null()
    end type IntegerDim6KindINT8Queue

    type IntegerDim6KindINT8QueueNode
      Integer(kind = INT8), dimension(:, :, :, :, :, :), allocatable:: val
      type(IntegerDim6KindINT8QueueNode), pointer:: next => null()
    end type IntegerDim6KindINT8QueueNode
    type IntegerDim6KindINT16Queue
      type(IntegerDim6KindINT16QueueNode), pointer:: tail => null()
      type(IntegerDim6KindINT16QueueNode), pointer:: head => null()
    end type IntegerDim6KindINT16Queue

    type IntegerDim6KindINT16QueueNode
      Integer(kind = INT16), dimension(:, :, :, :, :, :), allocatable:: val
      type(IntegerDim6KindINT16QueueNode), pointer:: next => null()
    end type IntegerDim6KindINT16QueueNode
    type IntegerDim6KindINT32Queue
      type(IntegerDim6KindINT32QueueNode), pointer:: tail => null()
      type(IntegerDim6KindINT32QueueNode), pointer:: head => null()
    end type IntegerDim6KindINT32Queue

    type IntegerDim6KindINT32QueueNode
      Integer(kind = INT32), dimension(:, :, :, :, :, :), allocatable:: val
      type(IntegerDim6KindINT32QueueNode), pointer:: next => null()
    end type IntegerDim6KindINT32QueueNode
    type IntegerDim6KindINT64Queue
      type(IntegerDim6KindINT64QueueNode), pointer:: tail => null()
      type(IntegerDim6KindINT64QueueNode), pointer:: head => null()
    end type IntegerDim6KindINT64Queue

    type IntegerDim6KindINT64QueueNode
      Integer(kind = INT64), dimension(:, :, :, :, :, :), allocatable:: val
      type(IntegerDim6KindINT64QueueNode), pointer:: next => null()
    end type IntegerDim6KindINT64QueueNode
    type IntegerDim7KindINT8Queue
      type(IntegerDim7KindINT8QueueNode), pointer:: tail => null()
      type(IntegerDim7KindINT8QueueNode), pointer:: head => null()
    end type IntegerDim7KindINT8Queue

    type IntegerDim7KindINT8QueueNode
      Integer(kind = INT8), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(IntegerDim7KindINT8QueueNode), pointer:: next => null()
    end type IntegerDim7KindINT8QueueNode
    type IntegerDim7KindINT16Queue
      type(IntegerDim7KindINT16QueueNode), pointer:: tail => null()
      type(IntegerDim7KindINT16QueueNode), pointer:: head => null()
    end type IntegerDim7KindINT16Queue

    type IntegerDim7KindINT16QueueNode
      Integer(kind = INT16), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(IntegerDim7KindINT16QueueNode), pointer:: next => null()
    end type IntegerDim7KindINT16QueueNode
    type IntegerDim7KindINT32Queue
      type(IntegerDim7KindINT32QueueNode), pointer:: tail => null()
      type(IntegerDim7KindINT32QueueNode), pointer:: head => null()
    end type IntegerDim7KindINT32Queue

    type IntegerDim7KindINT32QueueNode
      Integer(kind = INT32), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(IntegerDim7KindINT32QueueNode), pointer:: next => null()
    end type IntegerDim7KindINT32QueueNode
    type IntegerDim7KindINT64Queue
      type(IntegerDim7KindINT64QueueNode), pointer:: tail => null()
      type(IntegerDim7KindINT64QueueNode), pointer:: head => null()
    end type IntegerDim7KindINT64Queue

    type IntegerDim7KindINT64QueueNode
      Integer(kind = INT64), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(IntegerDim7KindINT64QueueNode), pointer:: next => null()
    end type IntegerDim7KindINT64QueueNode
    type LogicalDim0Queue
      type(LogicalDim0QueueNode), pointer:: tail => null()
      type(LogicalDim0QueueNode), pointer:: head => null()
    end type LogicalDim0Queue

    type LogicalDim0QueueNode
      Logical:: val
      type(LogicalDim0QueueNode), pointer:: next => null()
    end type LogicalDim0QueueNode
    type LogicalDim1Queue
      type(LogicalDim1QueueNode), pointer:: tail => null()
      type(LogicalDim1QueueNode), pointer:: head => null()
    end type LogicalDim1Queue

    type LogicalDim1QueueNode
      Logical, dimension(:), allocatable:: val
      type(LogicalDim1QueueNode), pointer:: next => null()
    end type LogicalDim1QueueNode
    type LogicalDim2Queue
      type(LogicalDim2QueueNode), pointer:: tail => null()
      type(LogicalDim2QueueNode), pointer:: head => null()
    end type LogicalDim2Queue

    type LogicalDim2QueueNode
      Logical, dimension(:, :), allocatable:: val
      type(LogicalDim2QueueNode), pointer:: next => null()
    end type LogicalDim2QueueNode
    type LogicalDim3Queue
      type(LogicalDim3QueueNode), pointer:: tail => null()
      type(LogicalDim3QueueNode), pointer:: head => null()
    end type LogicalDim3Queue

    type LogicalDim3QueueNode
      Logical, dimension(:, :, :), allocatable:: val
      type(LogicalDim3QueueNode), pointer:: next => null()
    end type LogicalDim3QueueNode
    type LogicalDim4Queue
      type(LogicalDim4QueueNode), pointer:: tail => null()
      type(LogicalDim4QueueNode), pointer:: head => null()
    end type LogicalDim4Queue

    type LogicalDim4QueueNode
      Logical, dimension(:, :, :, :), allocatable:: val
      type(LogicalDim4QueueNode), pointer:: next => null()
    end type LogicalDim4QueueNode
    type LogicalDim5Queue
      type(LogicalDim5QueueNode), pointer:: tail => null()
      type(LogicalDim5QueueNode), pointer:: head => null()
    end type LogicalDim5Queue

    type LogicalDim5QueueNode
      Logical, dimension(:, :, :, :, :), allocatable:: val
      type(LogicalDim5QueueNode), pointer:: next => null()
    end type LogicalDim5QueueNode
    type LogicalDim6Queue
      type(LogicalDim6QueueNode), pointer:: tail => null()
      type(LogicalDim6QueueNode), pointer:: head => null()
    end type LogicalDim6Queue

    type LogicalDim6QueueNode
      Logical, dimension(:, :, :, :, :, :), allocatable:: val
      type(LogicalDim6QueueNode), pointer:: next => null()
    end type LogicalDim6QueueNode
    type LogicalDim7Queue
      type(LogicalDim7QueueNode), pointer:: tail => null()
      type(LogicalDim7QueueNode), pointer:: head => null()
    end type LogicalDim7Queue

    type LogicalDim7QueueNode
      Logical, dimension(:, :, :, :, :, :, :), allocatable:: val
      type(LogicalDim7QueueNode), pointer:: next => null()
    end type LogicalDim7QueueNode
    type ComplexDim0KindREAL32Queue
      type(ComplexDim0KindREAL32QueueNode), pointer:: tail => null()
      type(ComplexDim0KindREAL32QueueNode), pointer:: head => null()
    end type ComplexDim0KindREAL32Queue

    type ComplexDim0KindREAL32QueueNode
      Complex(kind = REAL32):: val
      type(ComplexDim0KindREAL32QueueNode), pointer:: next => null()
    end type ComplexDim0KindREAL32QueueNode
    type ComplexDim0KindREAL64Queue
      type(ComplexDim0KindREAL64QueueNode), pointer:: tail => null()
      type(ComplexDim0KindREAL64QueueNode), pointer:: head => null()
    end type ComplexDim0KindREAL64Queue

    type ComplexDim0KindREAL64QueueNode
      Complex(kind = REAL64):: val
      type(ComplexDim0KindREAL64QueueNode), pointer:: next => null()
    end type ComplexDim0KindREAL64QueueNode
    type ComplexDim0KindREAL128Queue
      type(ComplexDim0KindREAL128QueueNode), pointer:: tail => null()
      type(ComplexDim0KindREAL128QueueNode), pointer:: head => null()
    end type ComplexDim0KindREAL128Queue

    type ComplexDim0KindREAL128QueueNode
      Complex(kind = REAL128):: val
      type(ComplexDim0KindREAL128QueueNode), pointer:: next => null()
    end type ComplexDim0KindREAL128QueueNode
    type ComplexDim1KindREAL32Queue
      type(ComplexDim1KindREAL32QueueNode), pointer:: tail => null()
      type(ComplexDim1KindREAL32QueueNode), pointer:: head => null()
    end type ComplexDim1KindREAL32Queue

    type ComplexDim1KindREAL32QueueNode
      Complex(kind = REAL32), dimension(:), allocatable:: val
      type(ComplexDim1KindREAL32QueueNode), pointer:: next => null()
    end type ComplexDim1KindREAL32QueueNode
    type ComplexDim1KindREAL64Queue
      type(ComplexDim1KindREAL64QueueNode), pointer:: tail => null()
      type(ComplexDim1KindREAL64QueueNode), pointer:: head => null()
    end type ComplexDim1KindREAL64Queue

    type ComplexDim1KindREAL64QueueNode
      Complex(kind = REAL64), dimension(:), allocatable:: val
      type(ComplexDim1KindREAL64QueueNode), pointer:: next => null()
    end type ComplexDim1KindREAL64QueueNode
    type ComplexDim1KindREAL128Queue
      type(ComplexDim1KindREAL128QueueNode), pointer:: tail => null()
      type(ComplexDim1KindREAL128QueueNode), pointer:: head => null()
    end type ComplexDim1KindREAL128Queue

    type ComplexDim1KindREAL128QueueNode
      Complex(kind = REAL128), dimension(:), allocatable:: val
      type(ComplexDim1KindREAL128QueueNode), pointer:: next => null()
    end type ComplexDim1KindREAL128QueueNode
    type ComplexDim2KindREAL32Queue
      type(ComplexDim2KindREAL32QueueNode), pointer:: tail => null()
      type(ComplexDim2KindREAL32QueueNode), pointer:: head => null()
    end type ComplexDim2KindREAL32Queue

    type ComplexDim2KindREAL32QueueNode
      Complex(kind = REAL32), dimension(:, :), allocatable:: val
      type(ComplexDim2KindREAL32QueueNode), pointer:: next => null()
    end type ComplexDim2KindREAL32QueueNode
    type ComplexDim2KindREAL64Queue
      type(ComplexDim2KindREAL64QueueNode), pointer:: tail => null()
      type(ComplexDim2KindREAL64QueueNode), pointer:: head => null()
    end type ComplexDim2KindREAL64Queue

    type ComplexDim2KindREAL64QueueNode
      Complex(kind = REAL64), dimension(:, :), allocatable:: val
      type(ComplexDim2KindREAL64QueueNode), pointer:: next => null()
    end type ComplexDim2KindREAL64QueueNode
    type ComplexDim2KindREAL128Queue
      type(ComplexDim2KindREAL128QueueNode), pointer:: tail => null()
      type(ComplexDim2KindREAL128QueueNode), pointer:: head => null()
    end type ComplexDim2KindREAL128Queue

    type ComplexDim2KindREAL128QueueNode
      Complex(kind = REAL128), dimension(:, :), allocatable:: val
      type(ComplexDim2KindREAL128QueueNode), pointer:: next => null()
    end type ComplexDim2KindREAL128QueueNode
    type ComplexDim3KindREAL32Queue
      type(ComplexDim3KindREAL32QueueNode), pointer:: tail => null()
      type(ComplexDim3KindREAL32QueueNode), pointer:: head => null()
    end type ComplexDim3KindREAL32Queue

    type ComplexDim3KindREAL32QueueNode
      Complex(kind = REAL32), dimension(:, :, :), allocatable:: val
      type(ComplexDim3KindREAL32QueueNode), pointer:: next => null()
    end type ComplexDim3KindREAL32QueueNode
    type ComplexDim3KindREAL64Queue
      type(ComplexDim3KindREAL64QueueNode), pointer:: tail => null()
      type(ComplexDim3KindREAL64QueueNode), pointer:: head => null()
    end type ComplexDim3KindREAL64Queue

    type ComplexDim3KindREAL64QueueNode
      Complex(kind = REAL64), dimension(:, :, :), allocatable:: val
      type(ComplexDim3KindREAL64QueueNode), pointer:: next => null()
    end type ComplexDim3KindREAL64QueueNode
    type ComplexDim3KindREAL128Queue
      type(ComplexDim3KindREAL128QueueNode), pointer:: tail => null()
      type(ComplexDim3KindREAL128QueueNode), pointer:: head => null()
    end type ComplexDim3KindREAL128Queue

    type ComplexDim3KindREAL128QueueNode
      Complex(kind = REAL128), dimension(:, :, :), allocatable:: val
      type(ComplexDim3KindREAL128QueueNode), pointer:: next => null()
    end type ComplexDim3KindREAL128QueueNode
    type ComplexDim4KindREAL32Queue
      type(ComplexDim4KindREAL32QueueNode), pointer:: tail => null()
      type(ComplexDim4KindREAL32QueueNode), pointer:: head => null()
    end type ComplexDim4KindREAL32Queue

    type ComplexDim4KindREAL32QueueNode
      Complex(kind = REAL32), dimension(:, :, :, :), allocatable:: val
      type(ComplexDim4KindREAL32QueueNode), pointer:: next => null()
    end type ComplexDim4KindREAL32QueueNode
    type ComplexDim4KindREAL64Queue
      type(ComplexDim4KindREAL64QueueNode), pointer:: tail => null()
      type(ComplexDim4KindREAL64QueueNode), pointer:: head => null()
    end type ComplexDim4KindREAL64Queue

    type ComplexDim4KindREAL64QueueNode
      Complex(kind = REAL64), dimension(:, :, :, :), allocatable:: val
      type(ComplexDim4KindREAL64QueueNode), pointer:: next => null()
    end type ComplexDim4KindREAL64QueueNode
    type ComplexDim4KindREAL128Queue
      type(ComplexDim4KindREAL128QueueNode), pointer:: tail => null()
      type(ComplexDim4KindREAL128QueueNode), pointer:: head => null()
    end type ComplexDim4KindREAL128Queue

    type ComplexDim4KindREAL128QueueNode
      Complex(kind = REAL128), dimension(:, :, :, :), allocatable:: val
      type(ComplexDim4KindREAL128QueueNode), pointer:: next => null()
    end type ComplexDim4KindREAL128QueueNode
    type ComplexDim5KindREAL32Queue
      type(ComplexDim5KindREAL32QueueNode), pointer:: tail => null()
      type(ComplexDim5KindREAL32QueueNode), pointer:: head => null()
    end type ComplexDim5KindREAL32Queue

    type ComplexDim5KindREAL32QueueNode
      Complex(kind = REAL32), dimension(:, :, :, :, :), allocatable:: val
      type(ComplexDim5KindREAL32QueueNode), pointer:: next => null()
    end type ComplexDim5KindREAL32QueueNode
    type ComplexDim5KindREAL64Queue
      type(ComplexDim5KindREAL64QueueNode), pointer:: tail => null()
      type(ComplexDim5KindREAL64QueueNode), pointer:: head => null()
    end type ComplexDim5KindREAL64Queue

    type ComplexDim5KindREAL64QueueNode
      Complex(kind = REAL64), dimension(:, :, :, :, :), allocatable:: val
      type(ComplexDim5KindREAL64QueueNode), pointer:: next => null()
    end type ComplexDim5KindREAL64QueueNode
    type ComplexDim5KindREAL128Queue
      type(ComplexDim5KindREAL128QueueNode), pointer:: tail => null()
      type(ComplexDim5KindREAL128QueueNode), pointer:: head => null()
    end type ComplexDim5KindREAL128Queue

    type ComplexDim5KindREAL128QueueNode
      Complex(kind = REAL128), dimension(:, :, :, :, :), allocatable:: val
      type(ComplexDim5KindREAL128QueueNode), pointer:: next => null()
    end type ComplexDim5KindREAL128QueueNode
    type ComplexDim6KindREAL32Queue
      type(ComplexDim6KindREAL32QueueNode), pointer:: tail => null()
      type(ComplexDim6KindREAL32QueueNode), pointer:: head => null()
    end type ComplexDim6KindREAL32Queue

    type ComplexDim6KindREAL32QueueNode
      Complex(kind = REAL32), dimension(:, :, :, :, :, :), allocatable:: val
      type(ComplexDim6KindREAL32QueueNode), pointer:: next => null()
    end type ComplexDim6KindREAL32QueueNode
    type ComplexDim6KindREAL64Queue
      type(ComplexDim6KindREAL64QueueNode), pointer:: tail => null()
      type(ComplexDim6KindREAL64QueueNode), pointer:: head => null()
    end type ComplexDim6KindREAL64Queue

    type ComplexDim6KindREAL64QueueNode
      Complex(kind = REAL64), dimension(:, :, :, :, :, :), allocatable:: val
      type(ComplexDim6KindREAL64QueueNode), pointer:: next => null()
    end type ComplexDim6KindREAL64QueueNode
    type ComplexDim6KindREAL128Queue
      type(ComplexDim6KindREAL128QueueNode), pointer:: tail => null()
      type(ComplexDim6KindREAL128QueueNode), pointer:: head => null()
    end type ComplexDim6KindREAL128Queue

    type ComplexDim6KindREAL128QueueNode
      Complex(kind = REAL128), dimension(:, :, :, :, :, :), allocatable:: val
      type(ComplexDim6KindREAL128QueueNode), pointer:: next => null()
    end type ComplexDim6KindREAL128QueueNode
    type ComplexDim7KindREAL32Queue
      type(ComplexDim7KindREAL32QueueNode), pointer:: tail => null()
      type(ComplexDim7KindREAL32QueueNode), pointer:: head => null()
    end type ComplexDim7KindREAL32Queue

    type ComplexDim7KindREAL32QueueNode
      Complex(kind = REAL32), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(ComplexDim7KindREAL32QueueNode), pointer:: next => null()
    end type ComplexDim7KindREAL32QueueNode
    type ComplexDim7KindREAL64Queue
      type(ComplexDim7KindREAL64QueueNode), pointer:: tail => null()
      type(ComplexDim7KindREAL64QueueNode), pointer:: head => null()
    end type ComplexDim7KindREAL64Queue

    type ComplexDim7KindREAL64QueueNode
      Complex(kind = REAL64), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(ComplexDim7KindREAL64QueueNode), pointer:: next => null()
    end type ComplexDim7KindREAL64QueueNode
    type ComplexDim7KindREAL128Queue
      type(ComplexDim7KindREAL128QueueNode), pointer:: tail => null()
      type(ComplexDim7KindREAL128QueueNode), pointer:: head => null()
    end type ComplexDim7KindREAL128Queue

    type ComplexDim7KindREAL128QueueNode
      Complex(kind = REAL128), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(ComplexDim7KindREAL128QueueNode), pointer:: next => null()
    end type ComplexDim7KindREAL128QueueNode
    type CharacterDim0Len1Queue
      type(CharacterDim0Len1QueueNode), pointer:: tail => null()
      type(CharacterDim0Len1QueueNode), pointer:: head => null()
    end type CharacterDim0Len1Queue

    type CharacterDim0Len1QueueNode
      Character(len = 1):: val
      type(CharacterDim0Len1QueueNode), pointer:: next => null()
    end type CharacterDim0Len1QueueNode
    type CharacterDim0Len2Queue
      type(CharacterDim0Len2QueueNode), pointer:: tail => null()
      type(CharacterDim0Len2QueueNode), pointer:: head => null()
    end type CharacterDim0Len2Queue

    type CharacterDim0Len2QueueNode
      Character(len = 2):: val
      type(CharacterDim0Len2QueueNode), pointer:: next => null()
    end type CharacterDim0Len2QueueNode
    type CharacterDim0Len4Queue
      type(CharacterDim0Len4QueueNode), pointer:: tail => null()
      type(CharacterDim0Len4QueueNode), pointer:: head => null()
    end type CharacterDim0Len4Queue

    type CharacterDim0Len4QueueNode
      Character(len = 4):: val
      type(CharacterDim0Len4QueueNode), pointer:: next => null()
    end type CharacterDim0Len4QueueNode
    type CharacterDim0Len8Queue
      type(CharacterDim0Len8QueueNode), pointer:: tail => null()
      type(CharacterDim0Len8QueueNode), pointer:: head => null()
    end type CharacterDim0Len8Queue

    type CharacterDim0Len8QueueNode
      Character(len = 8):: val
      type(CharacterDim0Len8QueueNode), pointer:: next => null()
    end type CharacterDim0Len8QueueNode
    type CharacterDim0Len16Queue
      type(CharacterDim0Len16QueueNode), pointer:: tail => null()
      type(CharacterDim0Len16QueueNode), pointer:: head => null()
    end type CharacterDim0Len16Queue

    type CharacterDim0Len16QueueNode
      Character(len = 16):: val
      type(CharacterDim0Len16QueueNode), pointer:: next => null()
    end type CharacterDim0Len16QueueNode
    type CharacterDim0Len32Queue
      type(CharacterDim0Len32QueueNode), pointer:: tail => null()
      type(CharacterDim0Len32QueueNode), pointer:: head => null()
    end type CharacterDim0Len32Queue

    type CharacterDim0Len32QueueNode
      Character(len = 32):: val
      type(CharacterDim0Len32QueueNode), pointer:: next => null()
    end type CharacterDim0Len32QueueNode
    type CharacterDim0Len64Queue
      type(CharacterDim0Len64QueueNode), pointer:: tail => null()
      type(CharacterDim0Len64QueueNode), pointer:: head => null()
    end type CharacterDim0Len64Queue

    type CharacterDim0Len64QueueNode
      Character(len = 64):: val
      type(CharacterDim0Len64QueueNode), pointer:: next => null()
    end type CharacterDim0Len64QueueNode
    type CharacterDim0Len128Queue
      type(CharacterDim0Len128QueueNode), pointer:: tail => null()
      type(CharacterDim0Len128QueueNode), pointer:: head => null()
    end type CharacterDim0Len128Queue

    type CharacterDim0Len128QueueNode
      Character(len = 128):: val
      type(CharacterDim0Len128QueueNode), pointer:: next => null()
    end type CharacterDim0Len128QueueNode
    type CharacterDim0Len256Queue
      type(CharacterDim0Len256QueueNode), pointer:: tail => null()
      type(CharacterDim0Len256QueueNode), pointer:: head => null()
    end type CharacterDim0Len256Queue

    type CharacterDim0Len256QueueNode
      Character(len = 256):: val
      type(CharacterDim0Len256QueueNode), pointer:: next => null()
    end type CharacterDim0Len256QueueNode
    type CharacterDim0Len512Queue
      type(CharacterDim0Len512QueueNode), pointer:: tail => null()
      type(CharacterDim0Len512QueueNode), pointer:: head => null()
    end type CharacterDim0Len512Queue

    type CharacterDim0Len512QueueNode
      Character(len = 512):: val
      type(CharacterDim0Len512QueueNode), pointer:: next => null()
    end type CharacterDim0Len512QueueNode
    type CharacterDim0Len1024Queue
      type(CharacterDim0Len1024QueueNode), pointer:: tail => null()
      type(CharacterDim0Len1024QueueNode), pointer:: head => null()
    end type CharacterDim0Len1024Queue

    type CharacterDim0Len1024QueueNode
      Character(len = 1024):: val
      type(CharacterDim0Len1024QueueNode), pointer:: next => null()
    end type CharacterDim0Len1024QueueNode
    type CharacterDim0Len2048Queue
      type(CharacterDim0Len2048QueueNode), pointer:: tail => null()
      type(CharacterDim0Len2048QueueNode), pointer:: head => null()
    end type CharacterDim0Len2048Queue

    type CharacterDim0Len2048QueueNode
      Character(len = 2048):: val
      type(CharacterDim0Len2048QueueNode), pointer:: next => null()
    end type CharacterDim0Len2048QueueNode
    type CharacterDim0Len4096Queue
      type(CharacterDim0Len4096QueueNode), pointer:: tail => null()
      type(CharacterDim0Len4096QueueNode), pointer:: head => null()
    end type CharacterDim0Len4096Queue

    type CharacterDim0Len4096QueueNode
      Character(len = 4096):: val
      type(CharacterDim0Len4096QueueNode), pointer:: next => null()
    end type CharacterDim0Len4096QueueNode
    type CharacterDim0Len8192Queue
      type(CharacterDim0Len8192QueueNode), pointer:: tail => null()
      type(CharacterDim0Len8192QueueNode), pointer:: head => null()
    end type CharacterDim0Len8192Queue

    type CharacterDim0Len8192QueueNode
      Character(len = 8192):: val
      type(CharacterDim0Len8192QueueNode), pointer:: next => null()
    end type CharacterDim0Len8192QueueNode
    type CharacterDim1Len1Queue
      type(CharacterDim1Len1QueueNode), pointer:: tail => null()
      type(CharacterDim1Len1QueueNode), pointer:: head => null()
    end type CharacterDim1Len1Queue

    type CharacterDim1Len1QueueNode
      Character(len = 1), dimension(:), allocatable:: val
      type(CharacterDim1Len1QueueNode), pointer:: next => null()
    end type CharacterDim1Len1QueueNode
    type CharacterDim1Len2Queue
      type(CharacterDim1Len2QueueNode), pointer:: tail => null()
      type(CharacterDim1Len2QueueNode), pointer:: head => null()
    end type CharacterDim1Len2Queue

    type CharacterDim1Len2QueueNode
      Character(len = 2), dimension(:), allocatable:: val
      type(CharacterDim1Len2QueueNode), pointer:: next => null()
    end type CharacterDim1Len2QueueNode
    type CharacterDim1Len4Queue
      type(CharacterDim1Len4QueueNode), pointer:: tail => null()
      type(CharacterDim1Len4QueueNode), pointer:: head => null()
    end type CharacterDim1Len4Queue

    type CharacterDim1Len4QueueNode
      Character(len = 4), dimension(:), allocatable:: val
      type(CharacterDim1Len4QueueNode), pointer:: next => null()
    end type CharacterDim1Len4QueueNode
    type CharacterDim1Len8Queue
      type(CharacterDim1Len8QueueNode), pointer:: tail => null()
      type(CharacterDim1Len8QueueNode), pointer:: head => null()
    end type CharacterDim1Len8Queue

    type CharacterDim1Len8QueueNode
      Character(len = 8), dimension(:), allocatable:: val
      type(CharacterDim1Len8QueueNode), pointer:: next => null()
    end type CharacterDim1Len8QueueNode
    type CharacterDim1Len16Queue
      type(CharacterDim1Len16QueueNode), pointer:: tail => null()
      type(CharacterDim1Len16QueueNode), pointer:: head => null()
    end type CharacterDim1Len16Queue

    type CharacterDim1Len16QueueNode
      Character(len = 16), dimension(:), allocatable:: val
      type(CharacterDim1Len16QueueNode), pointer:: next => null()
    end type CharacterDim1Len16QueueNode
    type CharacterDim1Len32Queue
      type(CharacterDim1Len32QueueNode), pointer:: tail => null()
      type(CharacterDim1Len32QueueNode), pointer:: head => null()
    end type CharacterDim1Len32Queue

    type CharacterDim1Len32QueueNode
      Character(len = 32), dimension(:), allocatable:: val
      type(CharacterDim1Len32QueueNode), pointer:: next => null()
    end type CharacterDim1Len32QueueNode
    type CharacterDim1Len64Queue
      type(CharacterDim1Len64QueueNode), pointer:: tail => null()
      type(CharacterDim1Len64QueueNode), pointer:: head => null()
    end type CharacterDim1Len64Queue

    type CharacterDim1Len64QueueNode
      Character(len = 64), dimension(:), allocatable:: val
      type(CharacterDim1Len64QueueNode), pointer:: next => null()
    end type CharacterDim1Len64QueueNode
    type CharacterDim1Len128Queue
      type(CharacterDim1Len128QueueNode), pointer:: tail => null()
      type(CharacterDim1Len128QueueNode), pointer:: head => null()
    end type CharacterDim1Len128Queue

    type CharacterDim1Len128QueueNode
      Character(len = 128), dimension(:), allocatable:: val
      type(CharacterDim1Len128QueueNode), pointer:: next => null()
    end type CharacterDim1Len128QueueNode
    type CharacterDim1Len256Queue
      type(CharacterDim1Len256QueueNode), pointer:: tail => null()
      type(CharacterDim1Len256QueueNode), pointer:: head => null()
    end type CharacterDim1Len256Queue

    type CharacterDim1Len256QueueNode
      Character(len = 256), dimension(:), allocatable:: val
      type(CharacterDim1Len256QueueNode), pointer:: next => null()
    end type CharacterDim1Len256QueueNode
    type CharacterDim1Len512Queue
      type(CharacterDim1Len512QueueNode), pointer:: tail => null()
      type(CharacterDim1Len512QueueNode), pointer:: head => null()
    end type CharacterDim1Len512Queue

    type CharacterDim1Len512QueueNode
      Character(len = 512), dimension(:), allocatable:: val
      type(CharacterDim1Len512QueueNode), pointer:: next => null()
    end type CharacterDim1Len512QueueNode
    type CharacterDim1Len1024Queue
      type(CharacterDim1Len1024QueueNode), pointer:: tail => null()
      type(CharacterDim1Len1024QueueNode), pointer:: head => null()
    end type CharacterDim1Len1024Queue

    type CharacterDim1Len1024QueueNode
      Character(len = 1024), dimension(:), allocatable:: val
      type(CharacterDim1Len1024QueueNode), pointer:: next => null()
    end type CharacterDim1Len1024QueueNode
    type CharacterDim1Len2048Queue
      type(CharacterDim1Len2048QueueNode), pointer:: tail => null()
      type(CharacterDim1Len2048QueueNode), pointer:: head => null()
    end type CharacterDim1Len2048Queue

    type CharacterDim1Len2048QueueNode
      Character(len = 2048), dimension(:), allocatable:: val
      type(CharacterDim1Len2048QueueNode), pointer:: next => null()
    end type CharacterDim1Len2048QueueNode
    type CharacterDim1Len4096Queue
      type(CharacterDim1Len4096QueueNode), pointer:: tail => null()
      type(CharacterDim1Len4096QueueNode), pointer:: head => null()
    end type CharacterDim1Len4096Queue

    type CharacterDim1Len4096QueueNode
      Character(len = 4096), dimension(:), allocatable:: val
      type(CharacterDim1Len4096QueueNode), pointer:: next => null()
    end type CharacterDim1Len4096QueueNode
    type CharacterDim1Len8192Queue
      type(CharacterDim1Len8192QueueNode), pointer:: tail => null()
      type(CharacterDim1Len8192QueueNode), pointer:: head => null()
    end type CharacterDim1Len8192Queue

    type CharacterDim1Len8192QueueNode
      Character(len = 8192), dimension(:), allocatable:: val
      type(CharacterDim1Len8192QueueNode), pointer:: next => null()
    end type CharacterDim1Len8192QueueNode
    type CharacterDim2Len1Queue
      type(CharacterDim2Len1QueueNode), pointer:: tail => null()
      type(CharacterDim2Len1QueueNode), pointer:: head => null()
    end type CharacterDim2Len1Queue

    type CharacterDim2Len1QueueNode
      Character(len = 1), dimension(:, :), allocatable:: val
      type(CharacterDim2Len1QueueNode), pointer:: next => null()
    end type CharacterDim2Len1QueueNode
    type CharacterDim2Len2Queue
      type(CharacterDim2Len2QueueNode), pointer:: tail => null()
      type(CharacterDim2Len2QueueNode), pointer:: head => null()
    end type CharacterDim2Len2Queue

    type CharacterDim2Len2QueueNode
      Character(len = 2), dimension(:, :), allocatable:: val
      type(CharacterDim2Len2QueueNode), pointer:: next => null()
    end type CharacterDim2Len2QueueNode
    type CharacterDim2Len4Queue
      type(CharacterDim2Len4QueueNode), pointer:: tail => null()
      type(CharacterDim2Len4QueueNode), pointer:: head => null()
    end type CharacterDim2Len4Queue

    type CharacterDim2Len4QueueNode
      Character(len = 4), dimension(:, :), allocatable:: val
      type(CharacterDim2Len4QueueNode), pointer:: next => null()
    end type CharacterDim2Len4QueueNode
    type CharacterDim2Len8Queue
      type(CharacterDim2Len8QueueNode), pointer:: tail => null()
      type(CharacterDim2Len8QueueNode), pointer:: head => null()
    end type CharacterDim2Len8Queue

    type CharacterDim2Len8QueueNode
      Character(len = 8), dimension(:, :), allocatable:: val
      type(CharacterDim2Len8QueueNode), pointer:: next => null()
    end type CharacterDim2Len8QueueNode
    type CharacterDim2Len16Queue
      type(CharacterDim2Len16QueueNode), pointer:: tail => null()
      type(CharacterDim2Len16QueueNode), pointer:: head => null()
    end type CharacterDim2Len16Queue

    type CharacterDim2Len16QueueNode
      Character(len = 16), dimension(:, :), allocatable:: val
      type(CharacterDim2Len16QueueNode), pointer:: next => null()
    end type CharacterDim2Len16QueueNode
    type CharacterDim2Len32Queue
      type(CharacterDim2Len32QueueNode), pointer:: tail => null()
      type(CharacterDim2Len32QueueNode), pointer:: head => null()
    end type CharacterDim2Len32Queue

    type CharacterDim2Len32QueueNode
      Character(len = 32), dimension(:, :), allocatable:: val
      type(CharacterDim2Len32QueueNode), pointer:: next => null()
    end type CharacterDim2Len32QueueNode
    type CharacterDim2Len64Queue
      type(CharacterDim2Len64QueueNode), pointer:: tail => null()
      type(CharacterDim2Len64QueueNode), pointer:: head => null()
    end type CharacterDim2Len64Queue

    type CharacterDim2Len64QueueNode
      Character(len = 64), dimension(:, :), allocatable:: val
      type(CharacterDim2Len64QueueNode), pointer:: next => null()
    end type CharacterDim2Len64QueueNode
    type CharacterDim2Len128Queue
      type(CharacterDim2Len128QueueNode), pointer:: tail => null()
      type(CharacterDim2Len128QueueNode), pointer:: head => null()
    end type CharacterDim2Len128Queue

    type CharacterDim2Len128QueueNode
      Character(len = 128), dimension(:, :), allocatable:: val
      type(CharacterDim2Len128QueueNode), pointer:: next => null()
    end type CharacterDim2Len128QueueNode
    type CharacterDim2Len256Queue
      type(CharacterDim2Len256QueueNode), pointer:: tail => null()
      type(CharacterDim2Len256QueueNode), pointer:: head => null()
    end type CharacterDim2Len256Queue

    type CharacterDim2Len256QueueNode
      Character(len = 256), dimension(:, :), allocatable:: val
      type(CharacterDim2Len256QueueNode), pointer:: next => null()
    end type CharacterDim2Len256QueueNode
    type CharacterDim2Len512Queue
      type(CharacterDim2Len512QueueNode), pointer:: tail => null()
      type(CharacterDim2Len512QueueNode), pointer:: head => null()
    end type CharacterDim2Len512Queue

    type CharacterDim2Len512QueueNode
      Character(len = 512), dimension(:, :), allocatable:: val
      type(CharacterDim2Len512QueueNode), pointer:: next => null()
    end type CharacterDim2Len512QueueNode
    type CharacterDim2Len1024Queue
      type(CharacterDim2Len1024QueueNode), pointer:: tail => null()
      type(CharacterDim2Len1024QueueNode), pointer:: head => null()
    end type CharacterDim2Len1024Queue

    type CharacterDim2Len1024QueueNode
      Character(len = 1024), dimension(:, :), allocatable:: val
      type(CharacterDim2Len1024QueueNode), pointer:: next => null()
    end type CharacterDim2Len1024QueueNode
    type CharacterDim2Len2048Queue
      type(CharacterDim2Len2048QueueNode), pointer:: tail => null()
      type(CharacterDim2Len2048QueueNode), pointer:: head => null()
    end type CharacterDim2Len2048Queue

    type CharacterDim2Len2048QueueNode
      Character(len = 2048), dimension(:, :), allocatable:: val
      type(CharacterDim2Len2048QueueNode), pointer:: next => null()
    end type CharacterDim2Len2048QueueNode
    type CharacterDim2Len4096Queue
      type(CharacterDim2Len4096QueueNode), pointer:: tail => null()
      type(CharacterDim2Len4096QueueNode), pointer:: head => null()
    end type CharacterDim2Len4096Queue

    type CharacterDim2Len4096QueueNode
      Character(len = 4096), dimension(:, :), allocatable:: val
      type(CharacterDim2Len4096QueueNode), pointer:: next => null()
    end type CharacterDim2Len4096QueueNode
    type CharacterDim2Len8192Queue
      type(CharacterDim2Len8192QueueNode), pointer:: tail => null()
      type(CharacterDim2Len8192QueueNode), pointer:: head => null()
    end type CharacterDim2Len8192Queue

    type CharacterDim2Len8192QueueNode
      Character(len = 8192), dimension(:, :), allocatable:: val
      type(CharacterDim2Len8192QueueNode), pointer:: next => null()
    end type CharacterDim2Len8192QueueNode
    type CharacterDim3Len1Queue
      type(CharacterDim3Len1QueueNode), pointer:: tail => null()
      type(CharacterDim3Len1QueueNode), pointer:: head => null()
    end type CharacterDim3Len1Queue

    type CharacterDim3Len1QueueNode
      Character(len = 1), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len1QueueNode), pointer:: next => null()
    end type CharacterDim3Len1QueueNode
    type CharacterDim3Len2Queue
      type(CharacterDim3Len2QueueNode), pointer:: tail => null()
      type(CharacterDim3Len2QueueNode), pointer:: head => null()
    end type CharacterDim3Len2Queue

    type CharacterDim3Len2QueueNode
      Character(len = 2), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len2QueueNode), pointer:: next => null()
    end type CharacterDim3Len2QueueNode
    type CharacterDim3Len4Queue
      type(CharacterDim3Len4QueueNode), pointer:: tail => null()
      type(CharacterDim3Len4QueueNode), pointer:: head => null()
    end type CharacterDim3Len4Queue

    type CharacterDim3Len4QueueNode
      Character(len = 4), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len4QueueNode), pointer:: next => null()
    end type CharacterDim3Len4QueueNode
    type CharacterDim3Len8Queue
      type(CharacterDim3Len8QueueNode), pointer:: tail => null()
      type(CharacterDim3Len8QueueNode), pointer:: head => null()
    end type CharacterDim3Len8Queue

    type CharacterDim3Len8QueueNode
      Character(len = 8), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len8QueueNode), pointer:: next => null()
    end type CharacterDim3Len8QueueNode
    type CharacterDim3Len16Queue
      type(CharacterDim3Len16QueueNode), pointer:: tail => null()
      type(CharacterDim3Len16QueueNode), pointer:: head => null()
    end type CharacterDim3Len16Queue

    type CharacterDim3Len16QueueNode
      Character(len = 16), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len16QueueNode), pointer:: next => null()
    end type CharacterDim3Len16QueueNode
    type CharacterDim3Len32Queue
      type(CharacterDim3Len32QueueNode), pointer:: tail => null()
      type(CharacterDim3Len32QueueNode), pointer:: head => null()
    end type CharacterDim3Len32Queue

    type CharacterDim3Len32QueueNode
      Character(len = 32), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len32QueueNode), pointer:: next => null()
    end type CharacterDim3Len32QueueNode
    type CharacterDim3Len64Queue
      type(CharacterDim3Len64QueueNode), pointer:: tail => null()
      type(CharacterDim3Len64QueueNode), pointer:: head => null()
    end type CharacterDim3Len64Queue

    type CharacterDim3Len64QueueNode
      Character(len = 64), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len64QueueNode), pointer:: next => null()
    end type CharacterDim3Len64QueueNode
    type CharacterDim3Len128Queue
      type(CharacterDim3Len128QueueNode), pointer:: tail => null()
      type(CharacterDim3Len128QueueNode), pointer:: head => null()
    end type CharacterDim3Len128Queue

    type CharacterDim3Len128QueueNode
      Character(len = 128), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len128QueueNode), pointer:: next => null()
    end type CharacterDim3Len128QueueNode
    type CharacterDim3Len256Queue
      type(CharacterDim3Len256QueueNode), pointer:: tail => null()
      type(CharacterDim3Len256QueueNode), pointer:: head => null()
    end type CharacterDim3Len256Queue

    type CharacterDim3Len256QueueNode
      Character(len = 256), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len256QueueNode), pointer:: next => null()
    end type CharacterDim3Len256QueueNode
    type CharacterDim3Len512Queue
      type(CharacterDim3Len512QueueNode), pointer:: tail => null()
      type(CharacterDim3Len512QueueNode), pointer:: head => null()
    end type CharacterDim3Len512Queue

    type CharacterDim3Len512QueueNode
      Character(len = 512), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len512QueueNode), pointer:: next => null()
    end type CharacterDim3Len512QueueNode
    type CharacterDim3Len1024Queue
      type(CharacterDim3Len1024QueueNode), pointer:: tail => null()
      type(CharacterDim3Len1024QueueNode), pointer:: head => null()
    end type CharacterDim3Len1024Queue

    type CharacterDim3Len1024QueueNode
      Character(len = 1024), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len1024QueueNode), pointer:: next => null()
    end type CharacterDim3Len1024QueueNode
    type CharacterDim3Len2048Queue
      type(CharacterDim3Len2048QueueNode), pointer:: tail => null()
      type(CharacterDim3Len2048QueueNode), pointer:: head => null()
    end type CharacterDim3Len2048Queue

    type CharacterDim3Len2048QueueNode
      Character(len = 2048), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len2048QueueNode), pointer:: next => null()
    end type CharacterDim3Len2048QueueNode
    type CharacterDim3Len4096Queue
      type(CharacterDim3Len4096QueueNode), pointer:: tail => null()
      type(CharacterDim3Len4096QueueNode), pointer:: head => null()
    end type CharacterDim3Len4096Queue

    type CharacterDim3Len4096QueueNode
      Character(len = 4096), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len4096QueueNode), pointer:: next => null()
    end type CharacterDim3Len4096QueueNode
    type CharacterDim3Len8192Queue
      type(CharacterDim3Len8192QueueNode), pointer:: tail => null()
      type(CharacterDim3Len8192QueueNode), pointer:: head => null()
    end type CharacterDim3Len8192Queue

    type CharacterDim3Len8192QueueNode
      Character(len = 8192), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len8192QueueNode), pointer:: next => null()
    end type CharacterDim3Len8192QueueNode
    type CharacterDim4Len1Queue
      type(CharacterDim4Len1QueueNode), pointer:: tail => null()
      type(CharacterDim4Len1QueueNode), pointer:: head => null()
    end type CharacterDim4Len1Queue

    type CharacterDim4Len1QueueNode
      Character(len = 1), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len1QueueNode), pointer:: next => null()
    end type CharacterDim4Len1QueueNode
    type CharacterDim4Len2Queue
      type(CharacterDim4Len2QueueNode), pointer:: tail => null()
      type(CharacterDim4Len2QueueNode), pointer:: head => null()
    end type CharacterDim4Len2Queue

    type CharacterDim4Len2QueueNode
      Character(len = 2), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len2QueueNode), pointer:: next => null()
    end type CharacterDim4Len2QueueNode
    type CharacterDim4Len4Queue
      type(CharacterDim4Len4QueueNode), pointer:: tail => null()
      type(CharacterDim4Len4QueueNode), pointer:: head => null()
    end type CharacterDim4Len4Queue

    type CharacterDim4Len4QueueNode
      Character(len = 4), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len4QueueNode), pointer:: next => null()
    end type CharacterDim4Len4QueueNode
    type CharacterDim4Len8Queue
      type(CharacterDim4Len8QueueNode), pointer:: tail => null()
      type(CharacterDim4Len8QueueNode), pointer:: head => null()
    end type CharacterDim4Len8Queue

    type CharacterDim4Len8QueueNode
      Character(len = 8), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len8QueueNode), pointer:: next => null()
    end type CharacterDim4Len8QueueNode
    type CharacterDim4Len16Queue
      type(CharacterDim4Len16QueueNode), pointer:: tail => null()
      type(CharacterDim4Len16QueueNode), pointer:: head => null()
    end type CharacterDim4Len16Queue

    type CharacterDim4Len16QueueNode
      Character(len = 16), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len16QueueNode), pointer:: next => null()
    end type CharacterDim4Len16QueueNode
    type CharacterDim4Len32Queue
      type(CharacterDim4Len32QueueNode), pointer:: tail => null()
      type(CharacterDim4Len32QueueNode), pointer:: head => null()
    end type CharacterDim4Len32Queue

    type CharacterDim4Len32QueueNode
      Character(len = 32), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len32QueueNode), pointer:: next => null()
    end type CharacterDim4Len32QueueNode
    type CharacterDim4Len64Queue
      type(CharacterDim4Len64QueueNode), pointer:: tail => null()
      type(CharacterDim4Len64QueueNode), pointer:: head => null()
    end type CharacterDim4Len64Queue

    type CharacterDim4Len64QueueNode
      Character(len = 64), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len64QueueNode), pointer:: next => null()
    end type CharacterDim4Len64QueueNode
    type CharacterDim4Len128Queue
      type(CharacterDim4Len128QueueNode), pointer:: tail => null()
      type(CharacterDim4Len128QueueNode), pointer:: head => null()
    end type CharacterDim4Len128Queue

    type CharacterDim4Len128QueueNode
      Character(len = 128), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len128QueueNode), pointer:: next => null()
    end type CharacterDim4Len128QueueNode
    type CharacterDim4Len256Queue
      type(CharacterDim4Len256QueueNode), pointer:: tail => null()
      type(CharacterDim4Len256QueueNode), pointer:: head => null()
    end type CharacterDim4Len256Queue

    type CharacterDim4Len256QueueNode
      Character(len = 256), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len256QueueNode), pointer:: next => null()
    end type CharacterDim4Len256QueueNode
    type CharacterDim4Len512Queue
      type(CharacterDim4Len512QueueNode), pointer:: tail => null()
      type(CharacterDim4Len512QueueNode), pointer:: head => null()
    end type CharacterDim4Len512Queue

    type CharacterDim4Len512QueueNode
      Character(len = 512), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len512QueueNode), pointer:: next => null()
    end type CharacterDim4Len512QueueNode
    type CharacterDim4Len1024Queue
      type(CharacterDim4Len1024QueueNode), pointer:: tail => null()
      type(CharacterDim4Len1024QueueNode), pointer:: head => null()
    end type CharacterDim4Len1024Queue

    type CharacterDim4Len1024QueueNode
      Character(len = 1024), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len1024QueueNode), pointer:: next => null()
    end type CharacterDim4Len1024QueueNode
    type CharacterDim4Len2048Queue
      type(CharacterDim4Len2048QueueNode), pointer:: tail => null()
      type(CharacterDim4Len2048QueueNode), pointer:: head => null()
    end type CharacterDim4Len2048Queue

    type CharacterDim4Len2048QueueNode
      Character(len = 2048), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len2048QueueNode), pointer:: next => null()
    end type CharacterDim4Len2048QueueNode
    type CharacterDim4Len4096Queue
      type(CharacterDim4Len4096QueueNode), pointer:: tail => null()
      type(CharacterDim4Len4096QueueNode), pointer:: head => null()
    end type CharacterDim4Len4096Queue

    type CharacterDim4Len4096QueueNode
      Character(len = 4096), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len4096QueueNode), pointer:: next => null()
    end type CharacterDim4Len4096QueueNode
    type CharacterDim4Len8192Queue
      type(CharacterDim4Len8192QueueNode), pointer:: tail => null()
      type(CharacterDim4Len8192QueueNode), pointer:: head => null()
    end type CharacterDim4Len8192Queue

    type CharacterDim4Len8192QueueNode
      Character(len = 8192), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len8192QueueNode), pointer:: next => null()
    end type CharacterDim4Len8192QueueNode
    type CharacterDim5Len1Queue
      type(CharacterDim5Len1QueueNode), pointer:: tail => null()
      type(CharacterDim5Len1QueueNode), pointer:: head => null()
    end type CharacterDim5Len1Queue

    type CharacterDim5Len1QueueNode
      Character(len = 1), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len1QueueNode), pointer:: next => null()
    end type CharacterDim5Len1QueueNode
    type CharacterDim5Len2Queue
      type(CharacterDim5Len2QueueNode), pointer:: tail => null()
      type(CharacterDim5Len2QueueNode), pointer:: head => null()
    end type CharacterDim5Len2Queue

    type CharacterDim5Len2QueueNode
      Character(len = 2), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len2QueueNode), pointer:: next => null()
    end type CharacterDim5Len2QueueNode
    type CharacterDim5Len4Queue
      type(CharacterDim5Len4QueueNode), pointer:: tail => null()
      type(CharacterDim5Len4QueueNode), pointer:: head => null()
    end type CharacterDim5Len4Queue

    type CharacterDim5Len4QueueNode
      Character(len = 4), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len4QueueNode), pointer:: next => null()
    end type CharacterDim5Len4QueueNode
    type CharacterDim5Len8Queue
      type(CharacterDim5Len8QueueNode), pointer:: tail => null()
      type(CharacterDim5Len8QueueNode), pointer:: head => null()
    end type CharacterDim5Len8Queue

    type CharacterDim5Len8QueueNode
      Character(len = 8), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len8QueueNode), pointer:: next => null()
    end type CharacterDim5Len8QueueNode
    type CharacterDim5Len16Queue
      type(CharacterDim5Len16QueueNode), pointer:: tail => null()
      type(CharacterDim5Len16QueueNode), pointer:: head => null()
    end type CharacterDim5Len16Queue

    type CharacterDim5Len16QueueNode
      Character(len = 16), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len16QueueNode), pointer:: next => null()
    end type CharacterDim5Len16QueueNode
    type CharacterDim5Len32Queue
      type(CharacterDim5Len32QueueNode), pointer:: tail => null()
      type(CharacterDim5Len32QueueNode), pointer:: head => null()
    end type CharacterDim5Len32Queue

    type CharacterDim5Len32QueueNode
      Character(len = 32), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len32QueueNode), pointer:: next => null()
    end type CharacterDim5Len32QueueNode
    type CharacterDim5Len64Queue
      type(CharacterDim5Len64QueueNode), pointer:: tail => null()
      type(CharacterDim5Len64QueueNode), pointer:: head => null()
    end type CharacterDim5Len64Queue

    type CharacterDim5Len64QueueNode
      Character(len = 64), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len64QueueNode), pointer:: next => null()
    end type CharacterDim5Len64QueueNode
    type CharacterDim5Len128Queue
      type(CharacterDim5Len128QueueNode), pointer:: tail => null()
      type(CharacterDim5Len128QueueNode), pointer:: head => null()
    end type CharacterDim5Len128Queue

    type CharacterDim5Len128QueueNode
      Character(len = 128), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len128QueueNode), pointer:: next => null()
    end type CharacterDim5Len128QueueNode
    type CharacterDim5Len256Queue
      type(CharacterDim5Len256QueueNode), pointer:: tail => null()
      type(CharacterDim5Len256QueueNode), pointer:: head => null()
    end type CharacterDim5Len256Queue

    type CharacterDim5Len256QueueNode
      Character(len = 256), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len256QueueNode), pointer:: next => null()
    end type CharacterDim5Len256QueueNode
    type CharacterDim5Len512Queue
      type(CharacterDim5Len512QueueNode), pointer:: tail => null()
      type(CharacterDim5Len512QueueNode), pointer:: head => null()
    end type CharacterDim5Len512Queue

    type CharacterDim5Len512QueueNode
      Character(len = 512), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len512QueueNode), pointer:: next => null()
    end type CharacterDim5Len512QueueNode
    type CharacterDim5Len1024Queue
      type(CharacterDim5Len1024QueueNode), pointer:: tail => null()
      type(CharacterDim5Len1024QueueNode), pointer:: head => null()
    end type CharacterDim5Len1024Queue

    type CharacterDim5Len1024QueueNode
      Character(len = 1024), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len1024QueueNode), pointer:: next => null()
    end type CharacterDim5Len1024QueueNode
    type CharacterDim5Len2048Queue
      type(CharacterDim5Len2048QueueNode), pointer:: tail => null()
      type(CharacterDim5Len2048QueueNode), pointer:: head => null()
    end type CharacterDim5Len2048Queue

    type CharacterDim5Len2048QueueNode
      Character(len = 2048), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len2048QueueNode), pointer:: next => null()
    end type CharacterDim5Len2048QueueNode
    type CharacterDim5Len4096Queue
      type(CharacterDim5Len4096QueueNode), pointer:: tail => null()
      type(CharacterDim5Len4096QueueNode), pointer:: head => null()
    end type CharacterDim5Len4096Queue

    type CharacterDim5Len4096QueueNode
      Character(len = 4096), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len4096QueueNode), pointer:: next => null()
    end type CharacterDim5Len4096QueueNode
    type CharacterDim5Len8192Queue
      type(CharacterDim5Len8192QueueNode), pointer:: tail => null()
      type(CharacterDim5Len8192QueueNode), pointer:: head => null()
    end type CharacterDim5Len8192Queue

    type CharacterDim5Len8192QueueNode
      Character(len = 8192), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len8192QueueNode), pointer:: next => null()
    end type CharacterDim5Len8192QueueNode
    type CharacterDim6Len1Queue
      type(CharacterDim6Len1QueueNode), pointer:: tail => null()
      type(CharacterDim6Len1QueueNode), pointer:: head => null()
    end type CharacterDim6Len1Queue

    type CharacterDim6Len1QueueNode
      Character(len = 1), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len1QueueNode), pointer:: next => null()
    end type CharacterDim6Len1QueueNode
    type CharacterDim6Len2Queue
      type(CharacterDim6Len2QueueNode), pointer:: tail => null()
      type(CharacterDim6Len2QueueNode), pointer:: head => null()
    end type CharacterDim6Len2Queue

    type CharacterDim6Len2QueueNode
      Character(len = 2), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len2QueueNode), pointer:: next => null()
    end type CharacterDim6Len2QueueNode
    type CharacterDim6Len4Queue
      type(CharacterDim6Len4QueueNode), pointer:: tail => null()
      type(CharacterDim6Len4QueueNode), pointer:: head => null()
    end type CharacterDim6Len4Queue

    type CharacterDim6Len4QueueNode
      Character(len = 4), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len4QueueNode), pointer:: next => null()
    end type CharacterDim6Len4QueueNode
    type CharacterDim6Len8Queue
      type(CharacterDim6Len8QueueNode), pointer:: tail => null()
      type(CharacterDim6Len8QueueNode), pointer:: head => null()
    end type CharacterDim6Len8Queue

    type CharacterDim6Len8QueueNode
      Character(len = 8), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len8QueueNode), pointer:: next => null()
    end type CharacterDim6Len8QueueNode
    type CharacterDim6Len16Queue
      type(CharacterDim6Len16QueueNode), pointer:: tail => null()
      type(CharacterDim6Len16QueueNode), pointer:: head => null()
    end type CharacterDim6Len16Queue

    type CharacterDim6Len16QueueNode
      Character(len = 16), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len16QueueNode), pointer:: next => null()
    end type CharacterDim6Len16QueueNode
    type CharacterDim6Len32Queue
      type(CharacterDim6Len32QueueNode), pointer:: tail => null()
      type(CharacterDim6Len32QueueNode), pointer:: head => null()
    end type CharacterDim6Len32Queue

    type CharacterDim6Len32QueueNode
      Character(len = 32), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len32QueueNode), pointer:: next => null()
    end type CharacterDim6Len32QueueNode
    type CharacterDim6Len64Queue
      type(CharacterDim6Len64QueueNode), pointer:: tail => null()
      type(CharacterDim6Len64QueueNode), pointer:: head => null()
    end type CharacterDim6Len64Queue

    type CharacterDim6Len64QueueNode
      Character(len = 64), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len64QueueNode), pointer:: next => null()
    end type CharacterDim6Len64QueueNode
    type CharacterDim6Len128Queue
      type(CharacterDim6Len128QueueNode), pointer:: tail => null()
      type(CharacterDim6Len128QueueNode), pointer:: head => null()
    end type CharacterDim6Len128Queue

    type CharacterDim6Len128QueueNode
      Character(len = 128), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len128QueueNode), pointer:: next => null()
    end type CharacterDim6Len128QueueNode
    type CharacterDim6Len256Queue
      type(CharacterDim6Len256QueueNode), pointer:: tail => null()
      type(CharacterDim6Len256QueueNode), pointer:: head => null()
    end type CharacterDim6Len256Queue

    type CharacterDim6Len256QueueNode
      Character(len = 256), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len256QueueNode), pointer:: next => null()
    end type CharacterDim6Len256QueueNode
    type CharacterDim6Len512Queue
      type(CharacterDim6Len512QueueNode), pointer:: tail => null()
      type(CharacterDim6Len512QueueNode), pointer:: head => null()
    end type CharacterDim6Len512Queue

    type CharacterDim6Len512QueueNode
      Character(len = 512), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len512QueueNode), pointer:: next => null()
    end type CharacterDim6Len512QueueNode
    type CharacterDim6Len1024Queue
      type(CharacterDim6Len1024QueueNode), pointer:: tail => null()
      type(CharacterDim6Len1024QueueNode), pointer:: head => null()
    end type CharacterDim6Len1024Queue

    type CharacterDim6Len1024QueueNode
      Character(len = 1024), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len1024QueueNode), pointer:: next => null()
    end type CharacterDim6Len1024QueueNode
    type CharacterDim6Len2048Queue
      type(CharacterDim6Len2048QueueNode), pointer:: tail => null()
      type(CharacterDim6Len2048QueueNode), pointer:: head => null()
    end type CharacterDim6Len2048Queue

    type CharacterDim6Len2048QueueNode
      Character(len = 2048), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len2048QueueNode), pointer:: next => null()
    end type CharacterDim6Len2048QueueNode
    type CharacterDim6Len4096Queue
      type(CharacterDim6Len4096QueueNode), pointer:: tail => null()
      type(CharacterDim6Len4096QueueNode), pointer:: head => null()
    end type CharacterDim6Len4096Queue

    type CharacterDim6Len4096QueueNode
      Character(len = 4096), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len4096QueueNode), pointer:: next => null()
    end type CharacterDim6Len4096QueueNode
    type CharacterDim6Len8192Queue
      type(CharacterDim6Len8192QueueNode), pointer:: tail => null()
      type(CharacterDim6Len8192QueueNode), pointer:: head => null()
    end type CharacterDim6Len8192Queue

    type CharacterDim6Len8192QueueNode
      Character(len = 8192), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len8192QueueNode), pointer:: next => null()
    end type CharacterDim6Len8192QueueNode
    type CharacterDim7Len1Queue
      type(CharacterDim7Len1QueueNode), pointer:: tail => null()
      type(CharacterDim7Len1QueueNode), pointer:: head => null()
    end type CharacterDim7Len1Queue

    type CharacterDim7Len1QueueNode
      Character(len = 1), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len1QueueNode), pointer:: next => null()
    end type CharacterDim7Len1QueueNode
    type CharacterDim7Len2Queue
      type(CharacterDim7Len2QueueNode), pointer:: tail => null()
      type(CharacterDim7Len2QueueNode), pointer:: head => null()
    end type CharacterDim7Len2Queue

    type CharacterDim7Len2QueueNode
      Character(len = 2), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len2QueueNode), pointer:: next => null()
    end type CharacterDim7Len2QueueNode
    type CharacterDim7Len4Queue
      type(CharacterDim7Len4QueueNode), pointer:: tail => null()
      type(CharacterDim7Len4QueueNode), pointer:: head => null()
    end type CharacterDim7Len4Queue

    type CharacterDim7Len4QueueNode
      Character(len = 4), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len4QueueNode), pointer:: next => null()
    end type CharacterDim7Len4QueueNode
    type CharacterDim7Len8Queue
      type(CharacterDim7Len8QueueNode), pointer:: tail => null()
      type(CharacterDim7Len8QueueNode), pointer:: head => null()
    end type CharacterDim7Len8Queue

    type CharacterDim7Len8QueueNode
      Character(len = 8), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len8QueueNode), pointer:: next => null()
    end type CharacterDim7Len8QueueNode
    type CharacterDim7Len16Queue
      type(CharacterDim7Len16QueueNode), pointer:: tail => null()
      type(CharacterDim7Len16QueueNode), pointer:: head => null()
    end type CharacterDim7Len16Queue

    type CharacterDim7Len16QueueNode
      Character(len = 16), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len16QueueNode), pointer:: next => null()
    end type CharacterDim7Len16QueueNode
    type CharacterDim7Len32Queue
      type(CharacterDim7Len32QueueNode), pointer:: tail => null()
      type(CharacterDim7Len32QueueNode), pointer:: head => null()
    end type CharacterDim7Len32Queue

    type CharacterDim7Len32QueueNode
      Character(len = 32), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len32QueueNode), pointer:: next => null()
    end type CharacterDim7Len32QueueNode
    type CharacterDim7Len64Queue
      type(CharacterDim7Len64QueueNode), pointer:: tail => null()
      type(CharacterDim7Len64QueueNode), pointer:: head => null()
    end type CharacterDim7Len64Queue

    type CharacterDim7Len64QueueNode
      Character(len = 64), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len64QueueNode), pointer:: next => null()
    end type CharacterDim7Len64QueueNode
    type CharacterDim7Len128Queue
      type(CharacterDim7Len128QueueNode), pointer:: tail => null()
      type(CharacterDim7Len128QueueNode), pointer:: head => null()
    end type CharacterDim7Len128Queue

    type CharacterDim7Len128QueueNode
      Character(len = 128), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len128QueueNode), pointer:: next => null()
    end type CharacterDim7Len128QueueNode
    type CharacterDim7Len256Queue
      type(CharacterDim7Len256QueueNode), pointer:: tail => null()
      type(CharacterDim7Len256QueueNode), pointer:: head => null()
    end type CharacterDim7Len256Queue

    type CharacterDim7Len256QueueNode
      Character(len = 256), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len256QueueNode), pointer:: next => null()
    end type CharacterDim7Len256QueueNode
    type CharacterDim7Len512Queue
      type(CharacterDim7Len512QueueNode), pointer:: tail => null()
      type(CharacterDim7Len512QueueNode), pointer:: head => null()
    end type CharacterDim7Len512Queue

    type CharacterDim7Len512QueueNode
      Character(len = 512), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len512QueueNode), pointer:: next => null()
    end type CharacterDim7Len512QueueNode
    type CharacterDim7Len1024Queue
      type(CharacterDim7Len1024QueueNode), pointer:: tail => null()
      type(CharacterDim7Len1024QueueNode), pointer:: head => null()
    end type CharacterDim7Len1024Queue

    type CharacterDim7Len1024QueueNode
      Character(len = 1024), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len1024QueueNode), pointer:: next => null()
    end type CharacterDim7Len1024QueueNode
    type CharacterDim7Len2048Queue
      type(CharacterDim7Len2048QueueNode), pointer:: tail => null()
      type(CharacterDim7Len2048QueueNode), pointer:: head => null()
    end type CharacterDim7Len2048Queue

    type CharacterDim7Len2048QueueNode
      Character(len = 2048), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len2048QueueNode), pointer:: next => null()
    end type CharacterDim7Len2048QueueNode
    type CharacterDim7Len4096Queue
      type(CharacterDim7Len4096QueueNode), pointer:: tail => null()
      type(CharacterDim7Len4096QueueNode), pointer:: head => null()
    end type CharacterDim7Len4096Queue

    type CharacterDim7Len4096QueueNode
      Character(len = 4096), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len4096QueueNode), pointer:: next => null()
    end type CharacterDim7Len4096QueueNode
    type CharacterDim7Len8192Queue
      type(CharacterDim7Len8192QueueNode), pointer:: tail => null()
      type(CharacterDim7Len8192QueueNode), pointer:: head => null()
    end type CharacterDim7Len8192Queue

    type CharacterDim7Len8192QueueNode
      Character(len = 8192), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len8192QueueNode), pointer:: next => null()
    end type CharacterDim7Len8192QueueNode

contains

    subroutine pushRealDim0KindREAL32(queue, val)
      type(RealDim0KindREAL32Queue), intent(inout):: queue
      Real(kind = REAL32), intent(in):: val
      type(RealDim0KindREAL32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim0KindREAL32Queue
      !   type(RealDim0KindREAL32QueueNode), target:: root
      !   type(RealDim0KindREAL32QueueNode), pointer:: tail => root
      !   type(RealDim0KindREAL32QueueNode), pointer:: head => root%next
      ! end type RealDim0KindREAL32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim0KindREAL32

    function shiftRealDim0KindREAL32(queue, val) result(isSuccess)
      type(RealDim0KindREAL32Queue), intent(inout):: queue
      Real(kind = REAL32), intent(inout):: val
      Logical:: isSuccess
      type(RealDim0KindREAL32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim0KindREAL32

    function is_emptyRealDim0KindREAL32(queue) result(answer)
      type(RealDim0KindREAL32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim0KindREAL32
    subroutine pushRealDim0KindREAL64(queue, val)
      type(RealDim0KindREAL64Queue), intent(inout):: queue
      Real(kind = REAL64), intent(in):: val
      type(RealDim0KindREAL64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim0KindREAL64Queue
      !   type(RealDim0KindREAL64QueueNode), target:: root
      !   type(RealDim0KindREAL64QueueNode), pointer:: tail => root
      !   type(RealDim0KindREAL64QueueNode), pointer:: head => root%next
      ! end type RealDim0KindREAL64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim0KindREAL64

    function shiftRealDim0KindREAL64(queue, val) result(isSuccess)
      type(RealDim0KindREAL64Queue), intent(inout):: queue
      Real(kind = REAL64), intent(inout):: val
      Logical:: isSuccess
      type(RealDim0KindREAL64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim0KindREAL64

    function is_emptyRealDim0KindREAL64(queue) result(answer)
      type(RealDim0KindREAL64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim0KindREAL64
    subroutine pushRealDim0KindREAL128(queue, val)
      type(RealDim0KindREAL128Queue), intent(inout):: queue
      Real(kind = REAL128), intent(in):: val
      type(RealDim0KindREAL128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim0KindREAL128Queue
      !   type(RealDim0KindREAL128QueueNode), target:: root
      !   type(RealDim0KindREAL128QueueNode), pointer:: tail => root
      !   type(RealDim0KindREAL128QueueNode), pointer:: head => root%next
      ! end type RealDim0KindREAL128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim0KindREAL128

    function shiftRealDim0KindREAL128(queue, val) result(isSuccess)
      type(RealDim0KindREAL128Queue), intent(inout):: queue
      Real(kind = REAL128), intent(inout):: val
      Logical:: isSuccess
      type(RealDim0KindREAL128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim0KindREAL128

    function is_emptyRealDim0KindREAL128(queue) result(answer)
      type(RealDim0KindREAL128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim0KindREAL128
    subroutine pushRealDim1KindREAL32(queue, val)
      type(RealDim1KindREAL32Queue), intent(inout):: queue
      Real(kind = REAL32), dimension(:), intent(in):: val
      type(RealDim1KindREAL32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim1KindREAL32Queue
      !   type(RealDim1KindREAL32QueueNode), target:: root
      !   type(RealDim1KindREAL32QueueNode), pointer:: tail => root
      !   type(RealDim1KindREAL32QueueNode), pointer:: head => root%next
      ! end type RealDim1KindREAL32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim1KindREAL32

    function shiftRealDim1KindREAL32(queue, val) result(isSuccess)
      type(RealDim1KindREAL32Queue), intent(inout):: queue
      Real(kind = REAL32), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim1KindREAL32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim1KindREAL32

    function is_emptyRealDim1KindREAL32(queue) result(answer)
      type(RealDim1KindREAL32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim1KindREAL32
    subroutine pushRealDim1KindREAL64(queue, val)
      type(RealDim1KindREAL64Queue), intent(inout):: queue
      Real(kind = REAL64), dimension(:), intent(in):: val
      type(RealDim1KindREAL64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim1KindREAL64Queue
      !   type(RealDim1KindREAL64QueueNode), target:: root
      !   type(RealDim1KindREAL64QueueNode), pointer:: tail => root
      !   type(RealDim1KindREAL64QueueNode), pointer:: head => root%next
      ! end type RealDim1KindREAL64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim1KindREAL64

    function shiftRealDim1KindREAL64(queue, val) result(isSuccess)
      type(RealDim1KindREAL64Queue), intent(inout):: queue
      Real(kind = REAL64), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim1KindREAL64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim1KindREAL64

    function is_emptyRealDim1KindREAL64(queue) result(answer)
      type(RealDim1KindREAL64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim1KindREAL64
    subroutine pushRealDim1KindREAL128(queue, val)
      type(RealDim1KindREAL128Queue), intent(inout):: queue
      Real(kind = REAL128), dimension(:), intent(in):: val
      type(RealDim1KindREAL128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim1KindREAL128Queue
      !   type(RealDim1KindREAL128QueueNode), target:: root
      !   type(RealDim1KindREAL128QueueNode), pointer:: tail => root
      !   type(RealDim1KindREAL128QueueNode), pointer:: head => root%next
      ! end type RealDim1KindREAL128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim1KindREAL128

    function shiftRealDim1KindREAL128(queue, val) result(isSuccess)
      type(RealDim1KindREAL128Queue), intent(inout):: queue
      Real(kind = REAL128), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim1KindREAL128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim1KindREAL128

    function is_emptyRealDim1KindREAL128(queue) result(answer)
      type(RealDim1KindREAL128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim1KindREAL128
    subroutine pushRealDim2KindREAL32(queue, val)
      type(RealDim2KindREAL32Queue), intent(inout):: queue
      Real(kind = REAL32), dimension(:, :), intent(in):: val
      type(RealDim2KindREAL32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim2KindREAL32Queue
      !   type(RealDim2KindREAL32QueueNode), target:: root
      !   type(RealDim2KindREAL32QueueNode), pointer:: tail => root
      !   type(RealDim2KindREAL32QueueNode), pointer:: head => root%next
      ! end type RealDim2KindREAL32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim2KindREAL32

    function shiftRealDim2KindREAL32(queue, val) result(isSuccess)
      type(RealDim2KindREAL32Queue), intent(inout):: queue
      Real(kind = REAL32), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim2KindREAL32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim2KindREAL32

    function is_emptyRealDim2KindREAL32(queue) result(answer)
      type(RealDim2KindREAL32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim2KindREAL32
    subroutine pushRealDim2KindREAL64(queue, val)
      type(RealDim2KindREAL64Queue), intent(inout):: queue
      Real(kind = REAL64), dimension(:, :), intent(in):: val
      type(RealDim2KindREAL64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim2KindREAL64Queue
      !   type(RealDim2KindREAL64QueueNode), target:: root
      !   type(RealDim2KindREAL64QueueNode), pointer:: tail => root
      !   type(RealDim2KindREAL64QueueNode), pointer:: head => root%next
      ! end type RealDim2KindREAL64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim2KindREAL64

    function shiftRealDim2KindREAL64(queue, val) result(isSuccess)
      type(RealDim2KindREAL64Queue), intent(inout):: queue
      Real(kind = REAL64), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim2KindREAL64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim2KindREAL64

    function is_emptyRealDim2KindREAL64(queue) result(answer)
      type(RealDim2KindREAL64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim2KindREAL64
    subroutine pushRealDim2KindREAL128(queue, val)
      type(RealDim2KindREAL128Queue), intent(inout):: queue
      Real(kind = REAL128), dimension(:, :), intent(in):: val
      type(RealDim2KindREAL128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim2KindREAL128Queue
      !   type(RealDim2KindREAL128QueueNode), target:: root
      !   type(RealDim2KindREAL128QueueNode), pointer:: tail => root
      !   type(RealDim2KindREAL128QueueNode), pointer:: head => root%next
      ! end type RealDim2KindREAL128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim2KindREAL128

    function shiftRealDim2KindREAL128(queue, val) result(isSuccess)
      type(RealDim2KindREAL128Queue), intent(inout):: queue
      Real(kind = REAL128), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim2KindREAL128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim2KindREAL128

    function is_emptyRealDim2KindREAL128(queue) result(answer)
      type(RealDim2KindREAL128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim2KindREAL128
    subroutine pushRealDim3KindREAL32(queue, val)
      type(RealDim3KindREAL32Queue), intent(inout):: queue
      Real(kind = REAL32), dimension(:, :, :), intent(in):: val
      type(RealDim3KindREAL32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim3KindREAL32Queue
      !   type(RealDim3KindREAL32QueueNode), target:: root
      !   type(RealDim3KindREAL32QueueNode), pointer:: tail => root
      !   type(RealDim3KindREAL32QueueNode), pointer:: head => root%next
      ! end type RealDim3KindREAL32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim3KindREAL32

    function shiftRealDim3KindREAL32(queue, val) result(isSuccess)
      type(RealDim3KindREAL32Queue), intent(inout):: queue
      Real(kind = REAL32), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim3KindREAL32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim3KindREAL32

    function is_emptyRealDim3KindREAL32(queue) result(answer)
      type(RealDim3KindREAL32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim3KindREAL32
    subroutine pushRealDim3KindREAL64(queue, val)
      type(RealDim3KindREAL64Queue), intent(inout):: queue
      Real(kind = REAL64), dimension(:, :, :), intent(in):: val
      type(RealDim3KindREAL64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim3KindREAL64Queue
      !   type(RealDim3KindREAL64QueueNode), target:: root
      !   type(RealDim3KindREAL64QueueNode), pointer:: tail => root
      !   type(RealDim3KindREAL64QueueNode), pointer:: head => root%next
      ! end type RealDim3KindREAL64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim3KindREAL64

    function shiftRealDim3KindREAL64(queue, val) result(isSuccess)
      type(RealDim3KindREAL64Queue), intent(inout):: queue
      Real(kind = REAL64), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim3KindREAL64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim3KindREAL64

    function is_emptyRealDim3KindREAL64(queue) result(answer)
      type(RealDim3KindREAL64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim3KindREAL64
    subroutine pushRealDim3KindREAL128(queue, val)
      type(RealDim3KindREAL128Queue), intent(inout):: queue
      Real(kind = REAL128), dimension(:, :, :), intent(in):: val
      type(RealDim3KindREAL128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim3KindREAL128Queue
      !   type(RealDim3KindREAL128QueueNode), target:: root
      !   type(RealDim3KindREAL128QueueNode), pointer:: tail => root
      !   type(RealDim3KindREAL128QueueNode), pointer:: head => root%next
      ! end type RealDim3KindREAL128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim3KindREAL128

    function shiftRealDim3KindREAL128(queue, val) result(isSuccess)
      type(RealDim3KindREAL128Queue), intent(inout):: queue
      Real(kind = REAL128), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim3KindREAL128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim3KindREAL128

    function is_emptyRealDim3KindREAL128(queue) result(answer)
      type(RealDim3KindREAL128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim3KindREAL128
    subroutine pushRealDim4KindREAL32(queue, val)
      type(RealDim4KindREAL32Queue), intent(inout):: queue
      Real(kind = REAL32), dimension(:, :, :, :), intent(in):: val
      type(RealDim4KindREAL32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim4KindREAL32Queue
      !   type(RealDim4KindREAL32QueueNode), target:: root
      !   type(RealDim4KindREAL32QueueNode), pointer:: tail => root
      !   type(RealDim4KindREAL32QueueNode), pointer:: head => root%next
      ! end type RealDim4KindREAL32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim4KindREAL32

    function shiftRealDim4KindREAL32(queue, val) result(isSuccess)
      type(RealDim4KindREAL32Queue), intent(inout):: queue
      Real(kind = REAL32), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim4KindREAL32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim4KindREAL32

    function is_emptyRealDim4KindREAL32(queue) result(answer)
      type(RealDim4KindREAL32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim4KindREAL32
    subroutine pushRealDim4KindREAL64(queue, val)
      type(RealDim4KindREAL64Queue), intent(inout):: queue
      Real(kind = REAL64), dimension(:, :, :, :), intent(in):: val
      type(RealDim4KindREAL64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim4KindREAL64Queue
      !   type(RealDim4KindREAL64QueueNode), target:: root
      !   type(RealDim4KindREAL64QueueNode), pointer:: tail => root
      !   type(RealDim4KindREAL64QueueNode), pointer:: head => root%next
      ! end type RealDim4KindREAL64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim4KindREAL64

    function shiftRealDim4KindREAL64(queue, val) result(isSuccess)
      type(RealDim4KindREAL64Queue), intent(inout):: queue
      Real(kind = REAL64), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim4KindREAL64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim4KindREAL64

    function is_emptyRealDim4KindREAL64(queue) result(answer)
      type(RealDim4KindREAL64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim4KindREAL64
    subroutine pushRealDim4KindREAL128(queue, val)
      type(RealDim4KindREAL128Queue), intent(inout):: queue
      Real(kind = REAL128), dimension(:, :, :, :), intent(in):: val
      type(RealDim4KindREAL128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim4KindREAL128Queue
      !   type(RealDim4KindREAL128QueueNode), target:: root
      !   type(RealDim4KindREAL128QueueNode), pointer:: tail => root
      !   type(RealDim4KindREAL128QueueNode), pointer:: head => root%next
      ! end type RealDim4KindREAL128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim4KindREAL128

    function shiftRealDim4KindREAL128(queue, val) result(isSuccess)
      type(RealDim4KindREAL128Queue), intent(inout):: queue
      Real(kind = REAL128), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim4KindREAL128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim4KindREAL128

    function is_emptyRealDim4KindREAL128(queue) result(answer)
      type(RealDim4KindREAL128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim4KindREAL128
    subroutine pushRealDim5KindREAL32(queue, val)
      type(RealDim5KindREAL32Queue), intent(inout):: queue
      Real(kind = REAL32), dimension(:, :, :, :, :), intent(in):: val
      type(RealDim5KindREAL32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim5KindREAL32Queue
      !   type(RealDim5KindREAL32QueueNode), target:: root
      !   type(RealDim5KindREAL32QueueNode), pointer:: tail => root
      !   type(RealDim5KindREAL32QueueNode), pointer:: head => root%next
      ! end type RealDim5KindREAL32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim5KindREAL32

    function shiftRealDim5KindREAL32(queue, val) result(isSuccess)
      type(RealDim5KindREAL32Queue), intent(inout):: queue
      Real(kind = REAL32), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim5KindREAL32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim5KindREAL32

    function is_emptyRealDim5KindREAL32(queue) result(answer)
      type(RealDim5KindREAL32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim5KindREAL32
    subroutine pushRealDim5KindREAL64(queue, val)
      type(RealDim5KindREAL64Queue), intent(inout):: queue
      Real(kind = REAL64), dimension(:, :, :, :, :), intent(in):: val
      type(RealDim5KindREAL64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim5KindREAL64Queue
      !   type(RealDim5KindREAL64QueueNode), target:: root
      !   type(RealDim5KindREAL64QueueNode), pointer:: tail => root
      !   type(RealDim5KindREAL64QueueNode), pointer:: head => root%next
      ! end type RealDim5KindREAL64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim5KindREAL64

    function shiftRealDim5KindREAL64(queue, val) result(isSuccess)
      type(RealDim5KindREAL64Queue), intent(inout):: queue
      Real(kind = REAL64), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim5KindREAL64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim5KindREAL64

    function is_emptyRealDim5KindREAL64(queue) result(answer)
      type(RealDim5KindREAL64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim5KindREAL64
    subroutine pushRealDim5KindREAL128(queue, val)
      type(RealDim5KindREAL128Queue), intent(inout):: queue
      Real(kind = REAL128), dimension(:, :, :, :, :), intent(in):: val
      type(RealDim5KindREAL128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim5KindREAL128Queue
      !   type(RealDim5KindREAL128QueueNode), target:: root
      !   type(RealDim5KindREAL128QueueNode), pointer:: tail => root
      !   type(RealDim5KindREAL128QueueNode), pointer:: head => root%next
      ! end type RealDim5KindREAL128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim5KindREAL128

    function shiftRealDim5KindREAL128(queue, val) result(isSuccess)
      type(RealDim5KindREAL128Queue), intent(inout):: queue
      Real(kind = REAL128), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim5KindREAL128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim5KindREAL128

    function is_emptyRealDim5KindREAL128(queue) result(answer)
      type(RealDim5KindREAL128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim5KindREAL128
    subroutine pushRealDim6KindREAL32(queue, val)
      type(RealDim6KindREAL32Queue), intent(inout):: queue
      Real(kind = REAL32), dimension(:, :, :, :, :, :), intent(in):: val
      type(RealDim6KindREAL32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim6KindREAL32Queue
      !   type(RealDim6KindREAL32QueueNode), target:: root
      !   type(RealDim6KindREAL32QueueNode), pointer:: tail => root
      !   type(RealDim6KindREAL32QueueNode), pointer:: head => root%next
      ! end type RealDim6KindREAL32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim6KindREAL32

    function shiftRealDim6KindREAL32(queue, val) result(isSuccess)
      type(RealDim6KindREAL32Queue), intent(inout):: queue
      Real(kind = REAL32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim6KindREAL32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim6KindREAL32

    function is_emptyRealDim6KindREAL32(queue) result(answer)
      type(RealDim6KindREAL32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim6KindREAL32
    subroutine pushRealDim6KindREAL64(queue, val)
      type(RealDim6KindREAL64Queue), intent(inout):: queue
      Real(kind = REAL64), dimension(:, :, :, :, :, :), intent(in):: val
      type(RealDim6KindREAL64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim6KindREAL64Queue
      !   type(RealDim6KindREAL64QueueNode), target:: root
      !   type(RealDim6KindREAL64QueueNode), pointer:: tail => root
      !   type(RealDim6KindREAL64QueueNode), pointer:: head => root%next
      ! end type RealDim6KindREAL64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim6KindREAL64

    function shiftRealDim6KindREAL64(queue, val) result(isSuccess)
      type(RealDim6KindREAL64Queue), intent(inout):: queue
      Real(kind = REAL64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim6KindREAL64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim6KindREAL64

    function is_emptyRealDim6KindREAL64(queue) result(answer)
      type(RealDim6KindREAL64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim6KindREAL64
    subroutine pushRealDim6KindREAL128(queue, val)
      type(RealDim6KindREAL128Queue), intent(inout):: queue
      Real(kind = REAL128), dimension(:, :, :, :, :, :), intent(in):: val
      type(RealDim6KindREAL128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim6KindREAL128Queue
      !   type(RealDim6KindREAL128QueueNode), target:: root
      !   type(RealDim6KindREAL128QueueNode), pointer:: tail => root
      !   type(RealDim6KindREAL128QueueNode), pointer:: head => root%next
      ! end type RealDim6KindREAL128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim6KindREAL128

    function shiftRealDim6KindREAL128(queue, val) result(isSuccess)
      type(RealDim6KindREAL128Queue), intent(inout):: queue
      Real(kind = REAL128), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim6KindREAL128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim6KindREAL128

    function is_emptyRealDim6KindREAL128(queue) result(answer)
      type(RealDim6KindREAL128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim6KindREAL128
    subroutine pushRealDim7KindREAL32(queue, val)
      type(RealDim7KindREAL32Queue), intent(inout):: queue
      Real(kind = REAL32), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(RealDim7KindREAL32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim7KindREAL32Queue
      !   type(RealDim7KindREAL32QueueNode), target:: root
      !   type(RealDim7KindREAL32QueueNode), pointer:: tail => root
      !   type(RealDim7KindREAL32QueueNode), pointer:: head => root%next
      ! end type RealDim7KindREAL32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim7KindREAL32

    function shiftRealDim7KindREAL32(queue, val) result(isSuccess)
      type(RealDim7KindREAL32Queue), intent(inout):: queue
      Real(kind = REAL32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim7KindREAL32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim7KindREAL32

    function is_emptyRealDim7KindREAL32(queue) result(answer)
      type(RealDim7KindREAL32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim7KindREAL32
    subroutine pushRealDim7KindREAL64(queue, val)
      type(RealDim7KindREAL64Queue), intent(inout):: queue
      Real(kind = REAL64), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(RealDim7KindREAL64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim7KindREAL64Queue
      !   type(RealDim7KindREAL64QueueNode), target:: root
      !   type(RealDim7KindREAL64QueueNode), pointer:: tail => root
      !   type(RealDim7KindREAL64QueueNode), pointer:: head => root%next
      ! end type RealDim7KindREAL64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim7KindREAL64

    function shiftRealDim7KindREAL64(queue, val) result(isSuccess)
      type(RealDim7KindREAL64Queue), intent(inout):: queue
      Real(kind = REAL64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim7KindREAL64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim7KindREAL64

    function is_emptyRealDim7KindREAL64(queue) result(answer)
      type(RealDim7KindREAL64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim7KindREAL64
    subroutine pushRealDim7KindREAL128(queue, val)
      type(RealDim7KindREAL128Queue), intent(inout):: queue
      Real(kind = REAL128), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(RealDim7KindREAL128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type RealDim7KindREAL128Queue
      !   type(RealDim7KindREAL128QueueNode), target:: root
      !   type(RealDim7KindREAL128QueueNode), pointer:: tail => root
      !   type(RealDim7KindREAL128QueueNode), pointer:: head => root%next
      ! end type RealDim7KindREAL128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushRealDim7KindREAL128

    function shiftRealDim7KindREAL128(queue, val) result(isSuccess)
      type(RealDim7KindREAL128Queue), intent(inout):: queue
      Real(kind = REAL128), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim7KindREAL128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftRealDim7KindREAL128

    function is_emptyRealDim7KindREAL128(queue) result(answer)
      type(RealDim7KindREAL128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyRealDim7KindREAL128
    subroutine pushIntegerDim0KindINT8(queue, val)
      type(IntegerDim0KindINT8Queue), intent(inout):: queue
      Integer(kind = INT8), intent(in):: val
      type(IntegerDim0KindINT8QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim0KindINT8Queue
      !   type(IntegerDim0KindINT8QueueNode), target:: root
      !   type(IntegerDim0KindINT8QueueNode), pointer:: tail => root
      !   type(IntegerDim0KindINT8QueueNode), pointer:: head => root%next
      ! end type IntegerDim0KindINT8Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim0KindINT8

    function shiftIntegerDim0KindINT8(queue, val) result(isSuccess)
      type(IntegerDim0KindINT8Queue), intent(inout):: queue
      Integer(kind = INT8), intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim0KindINT8QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim0KindINT8

    function is_emptyIntegerDim0KindINT8(queue) result(answer)
      type(IntegerDim0KindINT8Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim0KindINT8
    subroutine pushIntegerDim0KindINT16(queue, val)
      type(IntegerDim0KindINT16Queue), intent(inout):: queue
      Integer(kind = INT16), intent(in):: val
      type(IntegerDim0KindINT16QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim0KindINT16Queue
      !   type(IntegerDim0KindINT16QueueNode), target:: root
      !   type(IntegerDim0KindINT16QueueNode), pointer:: tail => root
      !   type(IntegerDim0KindINT16QueueNode), pointer:: head => root%next
      ! end type IntegerDim0KindINT16Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim0KindINT16

    function shiftIntegerDim0KindINT16(queue, val) result(isSuccess)
      type(IntegerDim0KindINT16Queue), intent(inout):: queue
      Integer(kind = INT16), intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim0KindINT16QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim0KindINT16

    function is_emptyIntegerDim0KindINT16(queue) result(answer)
      type(IntegerDim0KindINT16Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim0KindINT16
    subroutine pushIntegerDim0KindINT32(queue, val)
      type(IntegerDim0KindINT32Queue), intent(inout):: queue
      Integer(kind = INT32), intent(in):: val
      type(IntegerDim0KindINT32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim0KindINT32Queue
      !   type(IntegerDim0KindINT32QueueNode), target:: root
      !   type(IntegerDim0KindINT32QueueNode), pointer:: tail => root
      !   type(IntegerDim0KindINT32QueueNode), pointer:: head => root%next
      ! end type IntegerDim0KindINT32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim0KindINT32

    function shiftIntegerDim0KindINT32(queue, val) result(isSuccess)
      type(IntegerDim0KindINT32Queue), intent(inout):: queue
      Integer(kind = INT32), intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim0KindINT32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim0KindINT32

    function is_emptyIntegerDim0KindINT32(queue) result(answer)
      type(IntegerDim0KindINT32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim0KindINT32
    subroutine pushIntegerDim0KindINT64(queue, val)
      type(IntegerDim0KindINT64Queue), intent(inout):: queue
      Integer(kind = INT64), intent(in):: val
      type(IntegerDim0KindINT64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim0KindINT64Queue
      !   type(IntegerDim0KindINT64QueueNode), target:: root
      !   type(IntegerDim0KindINT64QueueNode), pointer:: tail => root
      !   type(IntegerDim0KindINT64QueueNode), pointer:: head => root%next
      ! end type IntegerDim0KindINT64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim0KindINT64

    function shiftIntegerDim0KindINT64(queue, val) result(isSuccess)
      type(IntegerDim0KindINT64Queue), intent(inout):: queue
      Integer(kind = INT64), intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim0KindINT64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim0KindINT64

    function is_emptyIntegerDim0KindINT64(queue) result(answer)
      type(IntegerDim0KindINT64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim0KindINT64
    subroutine pushIntegerDim1KindINT8(queue, val)
      type(IntegerDim1KindINT8Queue), intent(inout):: queue
      Integer(kind = INT8), dimension(:), intent(in):: val
      type(IntegerDim1KindINT8QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim1KindINT8Queue
      !   type(IntegerDim1KindINT8QueueNode), target:: root
      !   type(IntegerDim1KindINT8QueueNode), pointer:: tail => root
      !   type(IntegerDim1KindINT8QueueNode), pointer:: head => root%next
      ! end type IntegerDim1KindINT8Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim1KindINT8

    function shiftIntegerDim1KindINT8(queue, val) result(isSuccess)
      type(IntegerDim1KindINT8Queue), intent(inout):: queue
      Integer(kind = INT8), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim1KindINT8QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim1KindINT8

    function is_emptyIntegerDim1KindINT8(queue) result(answer)
      type(IntegerDim1KindINT8Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim1KindINT8
    subroutine pushIntegerDim1KindINT16(queue, val)
      type(IntegerDim1KindINT16Queue), intent(inout):: queue
      Integer(kind = INT16), dimension(:), intent(in):: val
      type(IntegerDim1KindINT16QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim1KindINT16Queue
      !   type(IntegerDim1KindINT16QueueNode), target:: root
      !   type(IntegerDim1KindINT16QueueNode), pointer:: tail => root
      !   type(IntegerDim1KindINT16QueueNode), pointer:: head => root%next
      ! end type IntegerDim1KindINT16Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim1KindINT16

    function shiftIntegerDim1KindINT16(queue, val) result(isSuccess)
      type(IntegerDim1KindINT16Queue), intent(inout):: queue
      Integer(kind = INT16), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim1KindINT16QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim1KindINT16

    function is_emptyIntegerDim1KindINT16(queue) result(answer)
      type(IntegerDim1KindINT16Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim1KindINT16
    subroutine pushIntegerDim1KindINT32(queue, val)
      type(IntegerDim1KindINT32Queue), intent(inout):: queue
      Integer(kind = INT32), dimension(:), intent(in):: val
      type(IntegerDim1KindINT32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim1KindINT32Queue
      !   type(IntegerDim1KindINT32QueueNode), target:: root
      !   type(IntegerDim1KindINT32QueueNode), pointer:: tail => root
      !   type(IntegerDim1KindINT32QueueNode), pointer:: head => root%next
      ! end type IntegerDim1KindINT32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim1KindINT32

    function shiftIntegerDim1KindINT32(queue, val) result(isSuccess)
      type(IntegerDim1KindINT32Queue), intent(inout):: queue
      Integer(kind = INT32), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim1KindINT32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim1KindINT32

    function is_emptyIntegerDim1KindINT32(queue) result(answer)
      type(IntegerDim1KindINT32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim1KindINT32
    subroutine pushIntegerDim1KindINT64(queue, val)
      type(IntegerDim1KindINT64Queue), intent(inout):: queue
      Integer(kind = INT64), dimension(:), intent(in):: val
      type(IntegerDim1KindINT64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim1KindINT64Queue
      !   type(IntegerDim1KindINT64QueueNode), target:: root
      !   type(IntegerDim1KindINT64QueueNode), pointer:: tail => root
      !   type(IntegerDim1KindINT64QueueNode), pointer:: head => root%next
      ! end type IntegerDim1KindINT64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim1KindINT64

    function shiftIntegerDim1KindINT64(queue, val) result(isSuccess)
      type(IntegerDim1KindINT64Queue), intent(inout):: queue
      Integer(kind = INT64), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim1KindINT64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim1KindINT64

    function is_emptyIntegerDim1KindINT64(queue) result(answer)
      type(IntegerDim1KindINT64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim1KindINT64
    subroutine pushIntegerDim2KindINT8(queue, val)
      type(IntegerDim2KindINT8Queue), intent(inout):: queue
      Integer(kind = INT8), dimension(:, :), intent(in):: val
      type(IntegerDim2KindINT8QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim2KindINT8Queue
      !   type(IntegerDim2KindINT8QueueNode), target:: root
      !   type(IntegerDim2KindINT8QueueNode), pointer:: tail => root
      !   type(IntegerDim2KindINT8QueueNode), pointer:: head => root%next
      ! end type IntegerDim2KindINT8Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim2KindINT8

    function shiftIntegerDim2KindINT8(queue, val) result(isSuccess)
      type(IntegerDim2KindINT8Queue), intent(inout):: queue
      Integer(kind = INT8), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim2KindINT8QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim2KindINT8

    function is_emptyIntegerDim2KindINT8(queue) result(answer)
      type(IntegerDim2KindINT8Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim2KindINT8
    subroutine pushIntegerDim2KindINT16(queue, val)
      type(IntegerDim2KindINT16Queue), intent(inout):: queue
      Integer(kind = INT16), dimension(:, :), intent(in):: val
      type(IntegerDim2KindINT16QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim2KindINT16Queue
      !   type(IntegerDim2KindINT16QueueNode), target:: root
      !   type(IntegerDim2KindINT16QueueNode), pointer:: tail => root
      !   type(IntegerDim2KindINT16QueueNode), pointer:: head => root%next
      ! end type IntegerDim2KindINT16Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim2KindINT16

    function shiftIntegerDim2KindINT16(queue, val) result(isSuccess)
      type(IntegerDim2KindINT16Queue), intent(inout):: queue
      Integer(kind = INT16), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim2KindINT16QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim2KindINT16

    function is_emptyIntegerDim2KindINT16(queue) result(answer)
      type(IntegerDim2KindINT16Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim2KindINT16
    subroutine pushIntegerDim2KindINT32(queue, val)
      type(IntegerDim2KindINT32Queue), intent(inout):: queue
      Integer(kind = INT32), dimension(:, :), intent(in):: val
      type(IntegerDim2KindINT32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim2KindINT32Queue
      !   type(IntegerDim2KindINT32QueueNode), target:: root
      !   type(IntegerDim2KindINT32QueueNode), pointer:: tail => root
      !   type(IntegerDim2KindINT32QueueNode), pointer:: head => root%next
      ! end type IntegerDim2KindINT32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim2KindINT32

    function shiftIntegerDim2KindINT32(queue, val) result(isSuccess)
      type(IntegerDim2KindINT32Queue), intent(inout):: queue
      Integer(kind = INT32), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim2KindINT32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim2KindINT32

    function is_emptyIntegerDim2KindINT32(queue) result(answer)
      type(IntegerDim2KindINT32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim2KindINT32
    subroutine pushIntegerDim2KindINT64(queue, val)
      type(IntegerDim2KindINT64Queue), intent(inout):: queue
      Integer(kind = INT64), dimension(:, :), intent(in):: val
      type(IntegerDim2KindINT64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim2KindINT64Queue
      !   type(IntegerDim2KindINT64QueueNode), target:: root
      !   type(IntegerDim2KindINT64QueueNode), pointer:: tail => root
      !   type(IntegerDim2KindINT64QueueNode), pointer:: head => root%next
      ! end type IntegerDim2KindINT64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim2KindINT64

    function shiftIntegerDim2KindINT64(queue, val) result(isSuccess)
      type(IntegerDim2KindINT64Queue), intent(inout):: queue
      Integer(kind = INT64), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim2KindINT64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim2KindINT64

    function is_emptyIntegerDim2KindINT64(queue) result(answer)
      type(IntegerDim2KindINT64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim2KindINT64
    subroutine pushIntegerDim3KindINT8(queue, val)
      type(IntegerDim3KindINT8Queue), intent(inout):: queue
      Integer(kind = INT8), dimension(:, :, :), intent(in):: val
      type(IntegerDim3KindINT8QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim3KindINT8Queue
      !   type(IntegerDim3KindINT8QueueNode), target:: root
      !   type(IntegerDim3KindINT8QueueNode), pointer:: tail => root
      !   type(IntegerDim3KindINT8QueueNode), pointer:: head => root%next
      ! end type IntegerDim3KindINT8Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim3KindINT8

    function shiftIntegerDim3KindINT8(queue, val) result(isSuccess)
      type(IntegerDim3KindINT8Queue), intent(inout):: queue
      Integer(kind = INT8), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim3KindINT8QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim3KindINT8

    function is_emptyIntegerDim3KindINT8(queue) result(answer)
      type(IntegerDim3KindINT8Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim3KindINT8
    subroutine pushIntegerDim3KindINT16(queue, val)
      type(IntegerDim3KindINT16Queue), intent(inout):: queue
      Integer(kind = INT16), dimension(:, :, :), intent(in):: val
      type(IntegerDim3KindINT16QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim3KindINT16Queue
      !   type(IntegerDim3KindINT16QueueNode), target:: root
      !   type(IntegerDim3KindINT16QueueNode), pointer:: tail => root
      !   type(IntegerDim3KindINT16QueueNode), pointer:: head => root%next
      ! end type IntegerDim3KindINT16Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim3KindINT16

    function shiftIntegerDim3KindINT16(queue, val) result(isSuccess)
      type(IntegerDim3KindINT16Queue), intent(inout):: queue
      Integer(kind = INT16), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim3KindINT16QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim3KindINT16

    function is_emptyIntegerDim3KindINT16(queue) result(answer)
      type(IntegerDim3KindINT16Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim3KindINT16
    subroutine pushIntegerDim3KindINT32(queue, val)
      type(IntegerDim3KindINT32Queue), intent(inout):: queue
      Integer(kind = INT32), dimension(:, :, :), intent(in):: val
      type(IntegerDim3KindINT32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim3KindINT32Queue
      !   type(IntegerDim3KindINT32QueueNode), target:: root
      !   type(IntegerDim3KindINT32QueueNode), pointer:: tail => root
      !   type(IntegerDim3KindINT32QueueNode), pointer:: head => root%next
      ! end type IntegerDim3KindINT32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim3KindINT32

    function shiftIntegerDim3KindINT32(queue, val) result(isSuccess)
      type(IntegerDim3KindINT32Queue), intent(inout):: queue
      Integer(kind = INT32), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim3KindINT32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim3KindINT32

    function is_emptyIntegerDim3KindINT32(queue) result(answer)
      type(IntegerDim3KindINT32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim3KindINT32
    subroutine pushIntegerDim3KindINT64(queue, val)
      type(IntegerDim3KindINT64Queue), intent(inout):: queue
      Integer(kind = INT64), dimension(:, :, :), intent(in):: val
      type(IntegerDim3KindINT64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim3KindINT64Queue
      !   type(IntegerDim3KindINT64QueueNode), target:: root
      !   type(IntegerDim3KindINT64QueueNode), pointer:: tail => root
      !   type(IntegerDim3KindINT64QueueNode), pointer:: head => root%next
      ! end type IntegerDim3KindINT64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim3KindINT64

    function shiftIntegerDim3KindINT64(queue, val) result(isSuccess)
      type(IntegerDim3KindINT64Queue), intent(inout):: queue
      Integer(kind = INT64), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim3KindINT64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim3KindINT64

    function is_emptyIntegerDim3KindINT64(queue) result(answer)
      type(IntegerDim3KindINT64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim3KindINT64
    subroutine pushIntegerDim4KindINT8(queue, val)
      type(IntegerDim4KindINT8Queue), intent(inout):: queue
      Integer(kind = INT8), dimension(:, :, :, :), intent(in):: val
      type(IntegerDim4KindINT8QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim4KindINT8Queue
      !   type(IntegerDim4KindINT8QueueNode), target:: root
      !   type(IntegerDim4KindINT8QueueNode), pointer:: tail => root
      !   type(IntegerDim4KindINT8QueueNode), pointer:: head => root%next
      ! end type IntegerDim4KindINT8Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim4KindINT8

    function shiftIntegerDim4KindINT8(queue, val) result(isSuccess)
      type(IntegerDim4KindINT8Queue), intent(inout):: queue
      Integer(kind = INT8), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim4KindINT8QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim4KindINT8

    function is_emptyIntegerDim4KindINT8(queue) result(answer)
      type(IntegerDim4KindINT8Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim4KindINT8
    subroutine pushIntegerDim4KindINT16(queue, val)
      type(IntegerDim4KindINT16Queue), intent(inout):: queue
      Integer(kind = INT16), dimension(:, :, :, :), intent(in):: val
      type(IntegerDim4KindINT16QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim4KindINT16Queue
      !   type(IntegerDim4KindINT16QueueNode), target:: root
      !   type(IntegerDim4KindINT16QueueNode), pointer:: tail => root
      !   type(IntegerDim4KindINT16QueueNode), pointer:: head => root%next
      ! end type IntegerDim4KindINT16Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim4KindINT16

    function shiftIntegerDim4KindINT16(queue, val) result(isSuccess)
      type(IntegerDim4KindINT16Queue), intent(inout):: queue
      Integer(kind = INT16), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim4KindINT16QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim4KindINT16

    function is_emptyIntegerDim4KindINT16(queue) result(answer)
      type(IntegerDim4KindINT16Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim4KindINT16
    subroutine pushIntegerDim4KindINT32(queue, val)
      type(IntegerDim4KindINT32Queue), intent(inout):: queue
      Integer(kind = INT32), dimension(:, :, :, :), intent(in):: val
      type(IntegerDim4KindINT32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim4KindINT32Queue
      !   type(IntegerDim4KindINT32QueueNode), target:: root
      !   type(IntegerDim4KindINT32QueueNode), pointer:: tail => root
      !   type(IntegerDim4KindINT32QueueNode), pointer:: head => root%next
      ! end type IntegerDim4KindINT32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim4KindINT32

    function shiftIntegerDim4KindINT32(queue, val) result(isSuccess)
      type(IntegerDim4KindINT32Queue), intent(inout):: queue
      Integer(kind = INT32), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim4KindINT32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim4KindINT32

    function is_emptyIntegerDim4KindINT32(queue) result(answer)
      type(IntegerDim4KindINT32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim4KindINT32
    subroutine pushIntegerDim4KindINT64(queue, val)
      type(IntegerDim4KindINT64Queue), intent(inout):: queue
      Integer(kind = INT64), dimension(:, :, :, :), intent(in):: val
      type(IntegerDim4KindINT64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim4KindINT64Queue
      !   type(IntegerDim4KindINT64QueueNode), target:: root
      !   type(IntegerDim4KindINT64QueueNode), pointer:: tail => root
      !   type(IntegerDim4KindINT64QueueNode), pointer:: head => root%next
      ! end type IntegerDim4KindINT64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim4KindINT64

    function shiftIntegerDim4KindINT64(queue, val) result(isSuccess)
      type(IntegerDim4KindINT64Queue), intent(inout):: queue
      Integer(kind = INT64), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim4KindINT64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim4KindINT64

    function is_emptyIntegerDim4KindINT64(queue) result(answer)
      type(IntegerDim4KindINT64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim4KindINT64
    subroutine pushIntegerDim5KindINT8(queue, val)
      type(IntegerDim5KindINT8Queue), intent(inout):: queue
      Integer(kind = INT8), dimension(:, :, :, :, :), intent(in):: val
      type(IntegerDim5KindINT8QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim5KindINT8Queue
      !   type(IntegerDim5KindINT8QueueNode), target:: root
      !   type(IntegerDim5KindINT8QueueNode), pointer:: tail => root
      !   type(IntegerDim5KindINT8QueueNode), pointer:: head => root%next
      ! end type IntegerDim5KindINT8Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim5KindINT8

    function shiftIntegerDim5KindINT8(queue, val) result(isSuccess)
      type(IntegerDim5KindINT8Queue), intent(inout):: queue
      Integer(kind = INT8), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim5KindINT8QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim5KindINT8

    function is_emptyIntegerDim5KindINT8(queue) result(answer)
      type(IntegerDim5KindINT8Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim5KindINT8
    subroutine pushIntegerDim5KindINT16(queue, val)
      type(IntegerDim5KindINT16Queue), intent(inout):: queue
      Integer(kind = INT16), dimension(:, :, :, :, :), intent(in):: val
      type(IntegerDim5KindINT16QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim5KindINT16Queue
      !   type(IntegerDim5KindINT16QueueNode), target:: root
      !   type(IntegerDim5KindINT16QueueNode), pointer:: tail => root
      !   type(IntegerDim5KindINT16QueueNode), pointer:: head => root%next
      ! end type IntegerDim5KindINT16Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim5KindINT16

    function shiftIntegerDim5KindINT16(queue, val) result(isSuccess)
      type(IntegerDim5KindINT16Queue), intent(inout):: queue
      Integer(kind = INT16), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim5KindINT16QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim5KindINT16

    function is_emptyIntegerDim5KindINT16(queue) result(answer)
      type(IntegerDim5KindINT16Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim5KindINT16
    subroutine pushIntegerDim5KindINT32(queue, val)
      type(IntegerDim5KindINT32Queue), intent(inout):: queue
      Integer(kind = INT32), dimension(:, :, :, :, :), intent(in):: val
      type(IntegerDim5KindINT32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim5KindINT32Queue
      !   type(IntegerDim5KindINT32QueueNode), target:: root
      !   type(IntegerDim5KindINT32QueueNode), pointer:: tail => root
      !   type(IntegerDim5KindINT32QueueNode), pointer:: head => root%next
      ! end type IntegerDim5KindINT32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim5KindINT32

    function shiftIntegerDim5KindINT32(queue, val) result(isSuccess)
      type(IntegerDim5KindINT32Queue), intent(inout):: queue
      Integer(kind = INT32), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim5KindINT32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim5KindINT32

    function is_emptyIntegerDim5KindINT32(queue) result(answer)
      type(IntegerDim5KindINT32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim5KindINT32
    subroutine pushIntegerDim5KindINT64(queue, val)
      type(IntegerDim5KindINT64Queue), intent(inout):: queue
      Integer(kind = INT64), dimension(:, :, :, :, :), intent(in):: val
      type(IntegerDim5KindINT64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim5KindINT64Queue
      !   type(IntegerDim5KindINT64QueueNode), target:: root
      !   type(IntegerDim5KindINT64QueueNode), pointer:: tail => root
      !   type(IntegerDim5KindINT64QueueNode), pointer:: head => root%next
      ! end type IntegerDim5KindINT64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim5KindINT64

    function shiftIntegerDim5KindINT64(queue, val) result(isSuccess)
      type(IntegerDim5KindINT64Queue), intent(inout):: queue
      Integer(kind = INT64), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim5KindINT64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim5KindINT64

    function is_emptyIntegerDim5KindINT64(queue) result(answer)
      type(IntegerDim5KindINT64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim5KindINT64
    subroutine pushIntegerDim6KindINT8(queue, val)
      type(IntegerDim6KindINT8Queue), intent(inout):: queue
      Integer(kind = INT8), dimension(:, :, :, :, :, :), intent(in):: val
      type(IntegerDim6KindINT8QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim6KindINT8Queue
      !   type(IntegerDim6KindINT8QueueNode), target:: root
      !   type(IntegerDim6KindINT8QueueNode), pointer:: tail => root
      !   type(IntegerDim6KindINT8QueueNode), pointer:: head => root%next
      ! end type IntegerDim6KindINT8Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim6KindINT8

    function shiftIntegerDim6KindINT8(queue, val) result(isSuccess)
      type(IntegerDim6KindINT8Queue), intent(inout):: queue
      Integer(kind = INT8), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim6KindINT8QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim6KindINT8

    function is_emptyIntegerDim6KindINT8(queue) result(answer)
      type(IntegerDim6KindINT8Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim6KindINT8
    subroutine pushIntegerDim6KindINT16(queue, val)
      type(IntegerDim6KindINT16Queue), intent(inout):: queue
      Integer(kind = INT16), dimension(:, :, :, :, :, :), intent(in):: val
      type(IntegerDim6KindINT16QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim6KindINT16Queue
      !   type(IntegerDim6KindINT16QueueNode), target:: root
      !   type(IntegerDim6KindINT16QueueNode), pointer:: tail => root
      !   type(IntegerDim6KindINT16QueueNode), pointer:: head => root%next
      ! end type IntegerDim6KindINT16Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim6KindINT16

    function shiftIntegerDim6KindINT16(queue, val) result(isSuccess)
      type(IntegerDim6KindINT16Queue), intent(inout):: queue
      Integer(kind = INT16), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim6KindINT16QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim6KindINT16

    function is_emptyIntegerDim6KindINT16(queue) result(answer)
      type(IntegerDim6KindINT16Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim6KindINT16
    subroutine pushIntegerDim6KindINT32(queue, val)
      type(IntegerDim6KindINT32Queue), intent(inout):: queue
      Integer(kind = INT32), dimension(:, :, :, :, :, :), intent(in):: val
      type(IntegerDim6KindINT32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim6KindINT32Queue
      !   type(IntegerDim6KindINT32QueueNode), target:: root
      !   type(IntegerDim6KindINT32QueueNode), pointer:: tail => root
      !   type(IntegerDim6KindINT32QueueNode), pointer:: head => root%next
      ! end type IntegerDim6KindINT32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim6KindINT32

    function shiftIntegerDim6KindINT32(queue, val) result(isSuccess)
      type(IntegerDim6KindINT32Queue), intent(inout):: queue
      Integer(kind = INT32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim6KindINT32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim6KindINT32

    function is_emptyIntegerDim6KindINT32(queue) result(answer)
      type(IntegerDim6KindINT32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim6KindINT32
    subroutine pushIntegerDim6KindINT64(queue, val)
      type(IntegerDim6KindINT64Queue), intent(inout):: queue
      Integer(kind = INT64), dimension(:, :, :, :, :, :), intent(in):: val
      type(IntegerDim6KindINT64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim6KindINT64Queue
      !   type(IntegerDim6KindINT64QueueNode), target:: root
      !   type(IntegerDim6KindINT64QueueNode), pointer:: tail => root
      !   type(IntegerDim6KindINT64QueueNode), pointer:: head => root%next
      ! end type IntegerDim6KindINT64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim6KindINT64

    function shiftIntegerDim6KindINT64(queue, val) result(isSuccess)
      type(IntegerDim6KindINT64Queue), intent(inout):: queue
      Integer(kind = INT64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim6KindINT64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim6KindINT64

    function is_emptyIntegerDim6KindINT64(queue) result(answer)
      type(IntegerDim6KindINT64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim6KindINT64
    subroutine pushIntegerDim7KindINT8(queue, val)
      type(IntegerDim7KindINT8Queue), intent(inout):: queue
      Integer(kind = INT8), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(IntegerDim7KindINT8QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim7KindINT8Queue
      !   type(IntegerDim7KindINT8QueueNode), target:: root
      !   type(IntegerDim7KindINT8QueueNode), pointer:: tail => root
      !   type(IntegerDim7KindINT8QueueNode), pointer:: head => root%next
      ! end type IntegerDim7KindINT8Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim7KindINT8

    function shiftIntegerDim7KindINT8(queue, val) result(isSuccess)
      type(IntegerDim7KindINT8Queue), intent(inout):: queue
      Integer(kind = INT8), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim7KindINT8QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim7KindINT8

    function is_emptyIntegerDim7KindINT8(queue) result(answer)
      type(IntegerDim7KindINT8Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim7KindINT8
    subroutine pushIntegerDim7KindINT16(queue, val)
      type(IntegerDim7KindINT16Queue), intent(inout):: queue
      Integer(kind = INT16), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(IntegerDim7KindINT16QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim7KindINT16Queue
      !   type(IntegerDim7KindINT16QueueNode), target:: root
      !   type(IntegerDim7KindINT16QueueNode), pointer:: tail => root
      !   type(IntegerDim7KindINT16QueueNode), pointer:: head => root%next
      ! end type IntegerDim7KindINT16Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim7KindINT16

    function shiftIntegerDim7KindINT16(queue, val) result(isSuccess)
      type(IntegerDim7KindINT16Queue), intent(inout):: queue
      Integer(kind = INT16), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim7KindINT16QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim7KindINT16

    function is_emptyIntegerDim7KindINT16(queue) result(answer)
      type(IntegerDim7KindINT16Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim7KindINT16
    subroutine pushIntegerDim7KindINT32(queue, val)
      type(IntegerDim7KindINT32Queue), intent(inout):: queue
      Integer(kind = INT32), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(IntegerDim7KindINT32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim7KindINT32Queue
      !   type(IntegerDim7KindINT32QueueNode), target:: root
      !   type(IntegerDim7KindINT32QueueNode), pointer:: tail => root
      !   type(IntegerDim7KindINT32QueueNode), pointer:: head => root%next
      ! end type IntegerDim7KindINT32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim7KindINT32

    function shiftIntegerDim7KindINT32(queue, val) result(isSuccess)
      type(IntegerDim7KindINT32Queue), intent(inout):: queue
      Integer(kind = INT32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim7KindINT32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim7KindINT32

    function is_emptyIntegerDim7KindINT32(queue) result(answer)
      type(IntegerDim7KindINT32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim7KindINT32
    subroutine pushIntegerDim7KindINT64(queue, val)
      type(IntegerDim7KindINT64Queue), intent(inout):: queue
      Integer(kind = INT64), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(IntegerDim7KindINT64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type IntegerDim7KindINT64Queue
      !   type(IntegerDim7KindINT64QueueNode), target:: root
      !   type(IntegerDim7KindINT64QueueNode), pointer:: tail => root
      !   type(IntegerDim7KindINT64QueueNode), pointer:: head => root%next
      ! end type IntegerDim7KindINT64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushIntegerDim7KindINT64

    function shiftIntegerDim7KindINT64(queue, val) result(isSuccess)
      type(IntegerDim7KindINT64Queue), intent(inout):: queue
      Integer(kind = INT64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim7KindINT64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftIntegerDim7KindINT64

    function is_emptyIntegerDim7KindINT64(queue) result(answer)
      type(IntegerDim7KindINT64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyIntegerDim7KindINT64
    subroutine pushLogicalDim0(queue, val)
      type(LogicalDim0Queue), intent(inout):: queue
      Logical, intent(in):: val
      type(LogicalDim0QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type LogicalDim0Queue
      !   type(LogicalDim0QueueNode), target:: root
      !   type(LogicalDim0QueueNode), pointer:: tail => root
      !   type(LogicalDim0QueueNode), pointer:: head => root%next
      ! end type LogicalDim0Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushLogicalDim0

    function shiftLogicalDim0(queue, val) result(isSuccess)
      type(LogicalDim0Queue), intent(inout):: queue
      Logical, intent(inout):: val
      Logical:: isSuccess
      type(LogicalDim0QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftLogicalDim0

    function is_emptyLogicalDim0(queue) result(answer)
      type(LogicalDim0Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyLogicalDim0
    subroutine pushLogicalDim1(queue, val)
      type(LogicalDim1Queue), intent(inout):: queue
      Logical, dimension(:), intent(in):: val
      type(LogicalDim1QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type LogicalDim1Queue
      !   type(LogicalDim1QueueNode), target:: root
      !   type(LogicalDim1QueueNode), pointer:: tail => root
      !   type(LogicalDim1QueueNode), pointer:: head => root%next
      ! end type LogicalDim1Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushLogicalDim1

    function shiftLogicalDim1(queue, val) result(isSuccess)
      type(LogicalDim1Queue), intent(inout):: queue
      Logical, dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(LogicalDim1QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftLogicalDim1

    function is_emptyLogicalDim1(queue) result(answer)
      type(LogicalDim1Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyLogicalDim1
    subroutine pushLogicalDim2(queue, val)
      type(LogicalDim2Queue), intent(inout):: queue
      Logical, dimension(:, :), intent(in):: val
      type(LogicalDim2QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type LogicalDim2Queue
      !   type(LogicalDim2QueueNode), target:: root
      !   type(LogicalDim2QueueNode), pointer:: tail => root
      !   type(LogicalDim2QueueNode), pointer:: head => root%next
      ! end type LogicalDim2Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushLogicalDim2

    function shiftLogicalDim2(queue, val) result(isSuccess)
      type(LogicalDim2Queue), intent(inout):: queue
      Logical, dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(LogicalDim2QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftLogicalDim2

    function is_emptyLogicalDim2(queue) result(answer)
      type(LogicalDim2Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyLogicalDim2
    subroutine pushLogicalDim3(queue, val)
      type(LogicalDim3Queue), intent(inout):: queue
      Logical, dimension(:, :, :), intent(in):: val
      type(LogicalDim3QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type LogicalDim3Queue
      !   type(LogicalDim3QueueNode), target:: root
      !   type(LogicalDim3QueueNode), pointer:: tail => root
      !   type(LogicalDim3QueueNode), pointer:: head => root%next
      ! end type LogicalDim3Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushLogicalDim3

    function shiftLogicalDim3(queue, val) result(isSuccess)
      type(LogicalDim3Queue), intent(inout):: queue
      Logical, dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(LogicalDim3QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftLogicalDim3

    function is_emptyLogicalDim3(queue) result(answer)
      type(LogicalDim3Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyLogicalDim3
    subroutine pushLogicalDim4(queue, val)
      type(LogicalDim4Queue), intent(inout):: queue
      Logical, dimension(:, :, :, :), intent(in):: val
      type(LogicalDim4QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type LogicalDim4Queue
      !   type(LogicalDim4QueueNode), target:: root
      !   type(LogicalDim4QueueNode), pointer:: tail => root
      !   type(LogicalDim4QueueNode), pointer:: head => root%next
      ! end type LogicalDim4Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushLogicalDim4

    function shiftLogicalDim4(queue, val) result(isSuccess)
      type(LogicalDim4Queue), intent(inout):: queue
      Logical, dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(LogicalDim4QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftLogicalDim4

    function is_emptyLogicalDim4(queue) result(answer)
      type(LogicalDim4Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyLogicalDim4
    subroutine pushLogicalDim5(queue, val)
      type(LogicalDim5Queue), intent(inout):: queue
      Logical, dimension(:, :, :, :, :), intent(in):: val
      type(LogicalDim5QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type LogicalDim5Queue
      !   type(LogicalDim5QueueNode), target:: root
      !   type(LogicalDim5QueueNode), pointer:: tail => root
      !   type(LogicalDim5QueueNode), pointer:: head => root%next
      ! end type LogicalDim5Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushLogicalDim5

    function shiftLogicalDim5(queue, val) result(isSuccess)
      type(LogicalDim5Queue), intent(inout):: queue
      Logical, dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(LogicalDim5QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftLogicalDim5

    function is_emptyLogicalDim5(queue) result(answer)
      type(LogicalDim5Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyLogicalDim5
    subroutine pushLogicalDim6(queue, val)
      type(LogicalDim6Queue), intent(inout):: queue
      Logical, dimension(:, :, :, :, :, :), intent(in):: val
      type(LogicalDim6QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type LogicalDim6Queue
      !   type(LogicalDim6QueueNode), target:: root
      !   type(LogicalDim6QueueNode), pointer:: tail => root
      !   type(LogicalDim6QueueNode), pointer:: head => root%next
      ! end type LogicalDim6Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushLogicalDim6

    function shiftLogicalDim6(queue, val) result(isSuccess)
      type(LogicalDim6Queue), intent(inout):: queue
      Logical, dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(LogicalDim6QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftLogicalDim6

    function is_emptyLogicalDim6(queue) result(answer)
      type(LogicalDim6Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyLogicalDim6
    subroutine pushLogicalDim7(queue, val)
      type(LogicalDim7Queue), intent(inout):: queue
      Logical, dimension(:, :, :, :, :, :, :), intent(in):: val
      type(LogicalDim7QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type LogicalDim7Queue
      !   type(LogicalDim7QueueNode), target:: root
      !   type(LogicalDim7QueueNode), pointer:: tail => root
      !   type(LogicalDim7QueueNode), pointer:: head => root%next
      ! end type LogicalDim7Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushLogicalDim7

    function shiftLogicalDim7(queue, val) result(isSuccess)
      type(LogicalDim7Queue), intent(inout):: queue
      Logical, dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(LogicalDim7QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftLogicalDim7

    function is_emptyLogicalDim7(queue) result(answer)
      type(LogicalDim7Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyLogicalDim7
    subroutine pushComplexDim0KindREAL32(queue, val)
      type(ComplexDim0KindREAL32Queue), intent(inout):: queue
      Complex(kind = REAL32), intent(in):: val
      type(ComplexDim0KindREAL32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim0KindREAL32Queue
      !   type(ComplexDim0KindREAL32QueueNode), target:: root
      !   type(ComplexDim0KindREAL32QueueNode), pointer:: tail => root
      !   type(ComplexDim0KindREAL32QueueNode), pointer:: head => root%next
      ! end type ComplexDim0KindREAL32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim0KindREAL32

    function shiftComplexDim0KindREAL32(queue, val) result(isSuccess)
      type(ComplexDim0KindREAL32Queue), intent(inout):: queue
      Complex(kind = REAL32), intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim0KindREAL32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim0KindREAL32

    function is_emptyComplexDim0KindREAL32(queue) result(answer)
      type(ComplexDim0KindREAL32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim0KindREAL32
    subroutine pushComplexDim0KindREAL64(queue, val)
      type(ComplexDim0KindREAL64Queue), intent(inout):: queue
      Complex(kind = REAL64), intent(in):: val
      type(ComplexDim0KindREAL64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim0KindREAL64Queue
      !   type(ComplexDim0KindREAL64QueueNode), target:: root
      !   type(ComplexDim0KindREAL64QueueNode), pointer:: tail => root
      !   type(ComplexDim0KindREAL64QueueNode), pointer:: head => root%next
      ! end type ComplexDim0KindREAL64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim0KindREAL64

    function shiftComplexDim0KindREAL64(queue, val) result(isSuccess)
      type(ComplexDim0KindREAL64Queue), intent(inout):: queue
      Complex(kind = REAL64), intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim0KindREAL64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim0KindREAL64

    function is_emptyComplexDim0KindREAL64(queue) result(answer)
      type(ComplexDim0KindREAL64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim0KindREAL64
    subroutine pushComplexDim0KindREAL128(queue, val)
      type(ComplexDim0KindREAL128Queue), intent(inout):: queue
      Complex(kind = REAL128), intent(in):: val
      type(ComplexDim0KindREAL128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim0KindREAL128Queue
      !   type(ComplexDim0KindREAL128QueueNode), target:: root
      !   type(ComplexDim0KindREAL128QueueNode), pointer:: tail => root
      !   type(ComplexDim0KindREAL128QueueNode), pointer:: head => root%next
      ! end type ComplexDim0KindREAL128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim0KindREAL128

    function shiftComplexDim0KindREAL128(queue, val) result(isSuccess)
      type(ComplexDim0KindREAL128Queue), intent(inout):: queue
      Complex(kind = REAL128), intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim0KindREAL128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim0KindREAL128

    function is_emptyComplexDim0KindREAL128(queue) result(answer)
      type(ComplexDim0KindREAL128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim0KindREAL128
    subroutine pushComplexDim1KindREAL32(queue, val)
      type(ComplexDim1KindREAL32Queue), intent(inout):: queue
      Complex(kind = REAL32), dimension(:), intent(in):: val
      type(ComplexDim1KindREAL32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim1KindREAL32Queue
      !   type(ComplexDim1KindREAL32QueueNode), target:: root
      !   type(ComplexDim1KindREAL32QueueNode), pointer:: tail => root
      !   type(ComplexDim1KindREAL32QueueNode), pointer:: head => root%next
      ! end type ComplexDim1KindREAL32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim1KindREAL32

    function shiftComplexDim1KindREAL32(queue, val) result(isSuccess)
      type(ComplexDim1KindREAL32Queue), intent(inout):: queue
      Complex(kind = REAL32), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim1KindREAL32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim1KindREAL32

    function is_emptyComplexDim1KindREAL32(queue) result(answer)
      type(ComplexDim1KindREAL32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim1KindREAL32
    subroutine pushComplexDim1KindREAL64(queue, val)
      type(ComplexDim1KindREAL64Queue), intent(inout):: queue
      Complex(kind = REAL64), dimension(:), intent(in):: val
      type(ComplexDim1KindREAL64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim1KindREAL64Queue
      !   type(ComplexDim1KindREAL64QueueNode), target:: root
      !   type(ComplexDim1KindREAL64QueueNode), pointer:: tail => root
      !   type(ComplexDim1KindREAL64QueueNode), pointer:: head => root%next
      ! end type ComplexDim1KindREAL64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim1KindREAL64

    function shiftComplexDim1KindREAL64(queue, val) result(isSuccess)
      type(ComplexDim1KindREAL64Queue), intent(inout):: queue
      Complex(kind = REAL64), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim1KindREAL64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim1KindREAL64

    function is_emptyComplexDim1KindREAL64(queue) result(answer)
      type(ComplexDim1KindREAL64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim1KindREAL64
    subroutine pushComplexDim1KindREAL128(queue, val)
      type(ComplexDim1KindREAL128Queue), intent(inout):: queue
      Complex(kind = REAL128), dimension(:), intent(in):: val
      type(ComplexDim1KindREAL128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim1KindREAL128Queue
      !   type(ComplexDim1KindREAL128QueueNode), target:: root
      !   type(ComplexDim1KindREAL128QueueNode), pointer:: tail => root
      !   type(ComplexDim1KindREAL128QueueNode), pointer:: head => root%next
      ! end type ComplexDim1KindREAL128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim1KindREAL128

    function shiftComplexDim1KindREAL128(queue, val) result(isSuccess)
      type(ComplexDim1KindREAL128Queue), intent(inout):: queue
      Complex(kind = REAL128), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim1KindREAL128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim1KindREAL128

    function is_emptyComplexDim1KindREAL128(queue) result(answer)
      type(ComplexDim1KindREAL128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim1KindREAL128
    subroutine pushComplexDim2KindREAL32(queue, val)
      type(ComplexDim2KindREAL32Queue), intent(inout):: queue
      Complex(kind = REAL32), dimension(:, :), intent(in):: val
      type(ComplexDim2KindREAL32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim2KindREAL32Queue
      !   type(ComplexDim2KindREAL32QueueNode), target:: root
      !   type(ComplexDim2KindREAL32QueueNode), pointer:: tail => root
      !   type(ComplexDim2KindREAL32QueueNode), pointer:: head => root%next
      ! end type ComplexDim2KindREAL32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim2KindREAL32

    function shiftComplexDim2KindREAL32(queue, val) result(isSuccess)
      type(ComplexDim2KindREAL32Queue), intent(inout):: queue
      Complex(kind = REAL32), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim2KindREAL32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim2KindREAL32

    function is_emptyComplexDim2KindREAL32(queue) result(answer)
      type(ComplexDim2KindREAL32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim2KindREAL32
    subroutine pushComplexDim2KindREAL64(queue, val)
      type(ComplexDim2KindREAL64Queue), intent(inout):: queue
      Complex(kind = REAL64), dimension(:, :), intent(in):: val
      type(ComplexDim2KindREAL64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim2KindREAL64Queue
      !   type(ComplexDim2KindREAL64QueueNode), target:: root
      !   type(ComplexDim2KindREAL64QueueNode), pointer:: tail => root
      !   type(ComplexDim2KindREAL64QueueNode), pointer:: head => root%next
      ! end type ComplexDim2KindREAL64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim2KindREAL64

    function shiftComplexDim2KindREAL64(queue, val) result(isSuccess)
      type(ComplexDim2KindREAL64Queue), intent(inout):: queue
      Complex(kind = REAL64), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim2KindREAL64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim2KindREAL64

    function is_emptyComplexDim2KindREAL64(queue) result(answer)
      type(ComplexDim2KindREAL64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim2KindREAL64
    subroutine pushComplexDim2KindREAL128(queue, val)
      type(ComplexDim2KindREAL128Queue), intent(inout):: queue
      Complex(kind = REAL128), dimension(:, :), intent(in):: val
      type(ComplexDim2KindREAL128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim2KindREAL128Queue
      !   type(ComplexDim2KindREAL128QueueNode), target:: root
      !   type(ComplexDim2KindREAL128QueueNode), pointer:: tail => root
      !   type(ComplexDim2KindREAL128QueueNode), pointer:: head => root%next
      ! end type ComplexDim2KindREAL128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim2KindREAL128

    function shiftComplexDim2KindREAL128(queue, val) result(isSuccess)
      type(ComplexDim2KindREAL128Queue), intent(inout):: queue
      Complex(kind = REAL128), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim2KindREAL128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim2KindREAL128

    function is_emptyComplexDim2KindREAL128(queue) result(answer)
      type(ComplexDim2KindREAL128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim2KindREAL128
    subroutine pushComplexDim3KindREAL32(queue, val)
      type(ComplexDim3KindREAL32Queue), intent(inout):: queue
      Complex(kind = REAL32), dimension(:, :, :), intent(in):: val
      type(ComplexDim3KindREAL32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim3KindREAL32Queue
      !   type(ComplexDim3KindREAL32QueueNode), target:: root
      !   type(ComplexDim3KindREAL32QueueNode), pointer:: tail => root
      !   type(ComplexDim3KindREAL32QueueNode), pointer:: head => root%next
      ! end type ComplexDim3KindREAL32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim3KindREAL32

    function shiftComplexDim3KindREAL32(queue, val) result(isSuccess)
      type(ComplexDim3KindREAL32Queue), intent(inout):: queue
      Complex(kind = REAL32), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim3KindREAL32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim3KindREAL32

    function is_emptyComplexDim3KindREAL32(queue) result(answer)
      type(ComplexDim3KindREAL32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim3KindREAL32
    subroutine pushComplexDim3KindREAL64(queue, val)
      type(ComplexDim3KindREAL64Queue), intent(inout):: queue
      Complex(kind = REAL64), dimension(:, :, :), intent(in):: val
      type(ComplexDim3KindREAL64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim3KindREAL64Queue
      !   type(ComplexDim3KindREAL64QueueNode), target:: root
      !   type(ComplexDim3KindREAL64QueueNode), pointer:: tail => root
      !   type(ComplexDim3KindREAL64QueueNode), pointer:: head => root%next
      ! end type ComplexDim3KindREAL64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim3KindREAL64

    function shiftComplexDim3KindREAL64(queue, val) result(isSuccess)
      type(ComplexDim3KindREAL64Queue), intent(inout):: queue
      Complex(kind = REAL64), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim3KindREAL64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim3KindREAL64

    function is_emptyComplexDim3KindREAL64(queue) result(answer)
      type(ComplexDim3KindREAL64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim3KindREAL64
    subroutine pushComplexDim3KindREAL128(queue, val)
      type(ComplexDim3KindREAL128Queue), intent(inout):: queue
      Complex(kind = REAL128), dimension(:, :, :), intent(in):: val
      type(ComplexDim3KindREAL128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim3KindREAL128Queue
      !   type(ComplexDim3KindREAL128QueueNode), target:: root
      !   type(ComplexDim3KindREAL128QueueNode), pointer:: tail => root
      !   type(ComplexDim3KindREAL128QueueNode), pointer:: head => root%next
      ! end type ComplexDim3KindREAL128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim3KindREAL128

    function shiftComplexDim3KindREAL128(queue, val) result(isSuccess)
      type(ComplexDim3KindREAL128Queue), intent(inout):: queue
      Complex(kind = REAL128), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim3KindREAL128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim3KindREAL128

    function is_emptyComplexDim3KindREAL128(queue) result(answer)
      type(ComplexDim3KindREAL128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim3KindREAL128
    subroutine pushComplexDim4KindREAL32(queue, val)
      type(ComplexDim4KindREAL32Queue), intent(inout):: queue
      Complex(kind = REAL32), dimension(:, :, :, :), intent(in):: val
      type(ComplexDim4KindREAL32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim4KindREAL32Queue
      !   type(ComplexDim4KindREAL32QueueNode), target:: root
      !   type(ComplexDim4KindREAL32QueueNode), pointer:: tail => root
      !   type(ComplexDim4KindREAL32QueueNode), pointer:: head => root%next
      ! end type ComplexDim4KindREAL32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim4KindREAL32

    function shiftComplexDim4KindREAL32(queue, val) result(isSuccess)
      type(ComplexDim4KindREAL32Queue), intent(inout):: queue
      Complex(kind = REAL32), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim4KindREAL32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim4KindREAL32

    function is_emptyComplexDim4KindREAL32(queue) result(answer)
      type(ComplexDim4KindREAL32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim4KindREAL32
    subroutine pushComplexDim4KindREAL64(queue, val)
      type(ComplexDim4KindREAL64Queue), intent(inout):: queue
      Complex(kind = REAL64), dimension(:, :, :, :), intent(in):: val
      type(ComplexDim4KindREAL64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim4KindREAL64Queue
      !   type(ComplexDim4KindREAL64QueueNode), target:: root
      !   type(ComplexDim4KindREAL64QueueNode), pointer:: tail => root
      !   type(ComplexDim4KindREAL64QueueNode), pointer:: head => root%next
      ! end type ComplexDim4KindREAL64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim4KindREAL64

    function shiftComplexDim4KindREAL64(queue, val) result(isSuccess)
      type(ComplexDim4KindREAL64Queue), intent(inout):: queue
      Complex(kind = REAL64), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim4KindREAL64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim4KindREAL64

    function is_emptyComplexDim4KindREAL64(queue) result(answer)
      type(ComplexDim4KindREAL64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim4KindREAL64
    subroutine pushComplexDim4KindREAL128(queue, val)
      type(ComplexDim4KindREAL128Queue), intent(inout):: queue
      Complex(kind = REAL128), dimension(:, :, :, :), intent(in):: val
      type(ComplexDim4KindREAL128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim4KindREAL128Queue
      !   type(ComplexDim4KindREAL128QueueNode), target:: root
      !   type(ComplexDim4KindREAL128QueueNode), pointer:: tail => root
      !   type(ComplexDim4KindREAL128QueueNode), pointer:: head => root%next
      ! end type ComplexDim4KindREAL128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim4KindREAL128

    function shiftComplexDim4KindREAL128(queue, val) result(isSuccess)
      type(ComplexDim4KindREAL128Queue), intent(inout):: queue
      Complex(kind = REAL128), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim4KindREAL128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim4KindREAL128

    function is_emptyComplexDim4KindREAL128(queue) result(answer)
      type(ComplexDim4KindREAL128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim4KindREAL128
    subroutine pushComplexDim5KindREAL32(queue, val)
      type(ComplexDim5KindREAL32Queue), intent(inout):: queue
      Complex(kind = REAL32), dimension(:, :, :, :, :), intent(in):: val
      type(ComplexDim5KindREAL32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim5KindREAL32Queue
      !   type(ComplexDim5KindREAL32QueueNode), target:: root
      !   type(ComplexDim5KindREAL32QueueNode), pointer:: tail => root
      !   type(ComplexDim5KindREAL32QueueNode), pointer:: head => root%next
      ! end type ComplexDim5KindREAL32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim5KindREAL32

    function shiftComplexDim5KindREAL32(queue, val) result(isSuccess)
      type(ComplexDim5KindREAL32Queue), intent(inout):: queue
      Complex(kind = REAL32), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim5KindREAL32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim5KindREAL32

    function is_emptyComplexDim5KindREAL32(queue) result(answer)
      type(ComplexDim5KindREAL32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim5KindREAL32
    subroutine pushComplexDim5KindREAL64(queue, val)
      type(ComplexDim5KindREAL64Queue), intent(inout):: queue
      Complex(kind = REAL64), dimension(:, :, :, :, :), intent(in):: val
      type(ComplexDim5KindREAL64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim5KindREAL64Queue
      !   type(ComplexDim5KindREAL64QueueNode), target:: root
      !   type(ComplexDim5KindREAL64QueueNode), pointer:: tail => root
      !   type(ComplexDim5KindREAL64QueueNode), pointer:: head => root%next
      ! end type ComplexDim5KindREAL64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim5KindREAL64

    function shiftComplexDim5KindREAL64(queue, val) result(isSuccess)
      type(ComplexDim5KindREAL64Queue), intent(inout):: queue
      Complex(kind = REAL64), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim5KindREAL64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim5KindREAL64

    function is_emptyComplexDim5KindREAL64(queue) result(answer)
      type(ComplexDim5KindREAL64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim5KindREAL64
    subroutine pushComplexDim5KindREAL128(queue, val)
      type(ComplexDim5KindREAL128Queue), intent(inout):: queue
      Complex(kind = REAL128), dimension(:, :, :, :, :), intent(in):: val
      type(ComplexDim5KindREAL128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim5KindREAL128Queue
      !   type(ComplexDim5KindREAL128QueueNode), target:: root
      !   type(ComplexDim5KindREAL128QueueNode), pointer:: tail => root
      !   type(ComplexDim5KindREAL128QueueNode), pointer:: head => root%next
      ! end type ComplexDim5KindREAL128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim5KindREAL128

    function shiftComplexDim5KindREAL128(queue, val) result(isSuccess)
      type(ComplexDim5KindREAL128Queue), intent(inout):: queue
      Complex(kind = REAL128), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim5KindREAL128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim5KindREAL128

    function is_emptyComplexDim5KindREAL128(queue) result(answer)
      type(ComplexDim5KindREAL128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim5KindREAL128
    subroutine pushComplexDim6KindREAL32(queue, val)
      type(ComplexDim6KindREAL32Queue), intent(inout):: queue
      Complex(kind = REAL32), dimension(:, :, :, :, :, :), intent(in):: val
      type(ComplexDim6KindREAL32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim6KindREAL32Queue
      !   type(ComplexDim6KindREAL32QueueNode), target:: root
      !   type(ComplexDim6KindREAL32QueueNode), pointer:: tail => root
      !   type(ComplexDim6KindREAL32QueueNode), pointer:: head => root%next
      ! end type ComplexDim6KindREAL32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim6KindREAL32

    function shiftComplexDim6KindREAL32(queue, val) result(isSuccess)
      type(ComplexDim6KindREAL32Queue), intent(inout):: queue
      Complex(kind = REAL32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim6KindREAL32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim6KindREAL32

    function is_emptyComplexDim6KindREAL32(queue) result(answer)
      type(ComplexDim6KindREAL32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim6KindREAL32
    subroutine pushComplexDim6KindREAL64(queue, val)
      type(ComplexDim6KindREAL64Queue), intent(inout):: queue
      Complex(kind = REAL64), dimension(:, :, :, :, :, :), intent(in):: val
      type(ComplexDim6KindREAL64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim6KindREAL64Queue
      !   type(ComplexDim6KindREAL64QueueNode), target:: root
      !   type(ComplexDim6KindREAL64QueueNode), pointer:: tail => root
      !   type(ComplexDim6KindREAL64QueueNode), pointer:: head => root%next
      ! end type ComplexDim6KindREAL64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim6KindREAL64

    function shiftComplexDim6KindREAL64(queue, val) result(isSuccess)
      type(ComplexDim6KindREAL64Queue), intent(inout):: queue
      Complex(kind = REAL64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim6KindREAL64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim6KindREAL64

    function is_emptyComplexDim6KindREAL64(queue) result(answer)
      type(ComplexDim6KindREAL64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim6KindREAL64
    subroutine pushComplexDim6KindREAL128(queue, val)
      type(ComplexDim6KindREAL128Queue), intent(inout):: queue
      Complex(kind = REAL128), dimension(:, :, :, :, :, :), intent(in):: val
      type(ComplexDim6KindREAL128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim6KindREAL128Queue
      !   type(ComplexDim6KindREAL128QueueNode), target:: root
      !   type(ComplexDim6KindREAL128QueueNode), pointer:: tail => root
      !   type(ComplexDim6KindREAL128QueueNode), pointer:: head => root%next
      ! end type ComplexDim6KindREAL128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim6KindREAL128

    function shiftComplexDim6KindREAL128(queue, val) result(isSuccess)
      type(ComplexDim6KindREAL128Queue), intent(inout):: queue
      Complex(kind = REAL128), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim6KindREAL128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim6KindREAL128

    function is_emptyComplexDim6KindREAL128(queue) result(answer)
      type(ComplexDim6KindREAL128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim6KindREAL128
    subroutine pushComplexDim7KindREAL32(queue, val)
      type(ComplexDim7KindREAL32Queue), intent(inout):: queue
      Complex(kind = REAL32), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(ComplexDim7KindREAL32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim7KindREAL32Queue
      !   type(ComplexDim7KindREAL32QueueNode), target:: root
      !   type(ComplexDim7KindREAL32QueueNode), pointer:: tail => root
      !   type(ComplexDim7KindREAL32QueueNode), pointer:: head => root%next
      ! end type ComplexDim7KindREAL32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim7KindREAL32

    function shiftComplexDim7KindREAL32(queue, val) result(isSuccess)
      type(ComplexDim7KindREAL32Queue), intent(inout):: queue
      Complex(kind = REAL32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim7KindREAL32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim7KindREAL32

    function is_emptyComplexDim7KindREAL32(queue) result(answer)
      type(ComplexDim7KindREAL32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim7KindREAL32
    subroutine pushComplexDim7KindREAL64(queue, val)
      type(ComplexDim7KindREAL64Queue), intent(inout):: queue
      Complex(kind = REAL64), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(ComplexDim7KindREAL64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim7KindREAL64Queue
      !   type(ComplexDim7KindREAL64QueueNode), target:: root
      !   type(ComplexDim7KindREAL64QueueNode), pointer:: tail => root
      !   type(ComplexDim7KindREAL64QueueNode), pointer:: head => root%next
      ! end type ComplexDim7KindREAL64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim7KindREAL64

    function shiftComplexDim7KindREAL64(queue, val) result(isSuccess)
      type(ComplexDim7KindREAL64Queue), intent(inout):: queue
      Complex(kind = REAL64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim7KindREAL64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim7KindREAL64

    function is_emptyComplexDim7KindREAL64(queue) result(answer)
      type(ComplexDim7KindREAL64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim7KindREAL64
    subroutine pushComplexDim7KindREAL128(queue, val)
      type(ComplexDim7KindREAL128Queue), intent(inout):: queue
      Complex(kind = REAL128), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(ComplexDim7KindREAL128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type ComplexDim7KindREAL128Queue
      !   type(ComplexDim7KindREAL128QueueNode), target:: root
      !   type(ComplexDim7KindREAL128QueueNode), pointer:: tail => root
      !   type(ComplexDim7KindREAL128QueueNode), pointer:: head => root%next
      ! end type ComplexDim7KindREAL128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushComplexDim7KindREAL128

    function shiftComplexDim7KindREAL128(queue, val) result(isSuccess)
      type(ComplexDim7KindREAL128Queue), intent(inout):: queue
      Complex(kind = REAL128), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim7KindREAL128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftComplexDim7KindREAL128

    function is_emptyComplexDim7KindREAL128(queue) result(answer)
      type(ComplexDim7KindREAL128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyComplexDim7KindREAL128
    subroutine pushCharacterDim0Len1(queue, val)
      type(CharacterDim0Len1Queue), intent(inout):: queue
      Character(len = 1), intent(in):: val
      type(CharacterDim0Len1QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim0Len1Queue
      !   type(CharacterDim0Len1QueueNode), target:: root
      !   type(CharacterDim0Len1QueueNode), pointer:: tail => root
      !   type(CharacterDim0Len1QueueNode), pointer:: head => root%next
      ! end type CharacterDim0Len1Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim0Len1

    function shiftCharacterDim0Len1(queue, val) result(isSuccess)
      type(CharacterDim0Len1Queue), intent(inout):: queue
      Character(len = 1), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len1QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim0Len1

    function is_emptyCharacterDim0Len1(queue) result(answer)
      type(CharacterDim0Len1Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim0Len1
    subroutine pushCharacterDim0Len2(queue, val)
      type(CharacterDim0Len2Queue), intent(inout):: queue
      Character(len = 2), intent(in):: val
      type(CharacterDim0Len2QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim0Len2Queue
      !   type(CharacterDim0Len2QueueNode), target:: root
      !   type(CharacterDim0Len2QueueNode), pointer:: tail => root
      !   type(CharacterDim0Len2QueueNode), pointer:: head => root%next
      ! end type CharacterDim0Len2Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim0Len2

    function shiftCharacterDim0Len2(queue, val) result(isSuccess)
      type(CharacterDim0Len2Queue), intent(inout):: queue
      Character(len = 2), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len2QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim0Len2

    function is_emptyCharacterDim0Len2(queue) result(answer)
      type(CharacterDim0Len2Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim0Len2
    subroutine pushCharacterDim0Len4(queue, val)
      type(CharacterDim0Len4Queue), intent(inout):: queue
      Character(len = 4), intent(in):: val
      type(CharacterDim0Len4QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim0Len4Queue
      !   type(CharacterDim0Len4QueueNode), target:: root
      !   type(CharacterDim0Len4QueueNode), pointer:: tail => root
      !   type(CharacterDim0Len4QueueNode), pointer:: head => root%next
      ! end type CharacterDim0Len4Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim0Len4

    function shiftCharacterDim0Len4(queue, val) result(isSuccess)
      type(CharacterDim0Len4Queue), intent(inout):: queue
      Character(len = 4), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len4QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim0Len4

    function is_emptyCharacterDim0Len4(queue) result(answer)
      type(CharacterDim0Len4Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim0Len4
    subroutine pushCharacterDim0Len8(queue, val)
      type(CharacterDim0Len8Queue), intent(inout):: queue
      Character(len = 8), intent(in):: val
      type(CharacterDim0Len8QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim0Len8Queue
      !   type(CharacterDim0Len8QueueNode), target:: root
      !   type(CharacterDim0Len8QueueNode), pointer:: tail => root
      !   type(CharacterDim0Len8QueueNode), pointer:: head => root%next
      ! end type CharacterDim0Len8Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim0Len8

    function shiftCharacterDim0Len8(queue, val) result(isSuccess)
      type(CharacterDim0Len8Queue), intent(inout):: queue
      Character(len = 8), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len8QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim0Len8

    function is_emptyCharacterDim0Len8(queue) result(answer)
      type(CharacterDim0Len8Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim0Len8
    subroutine pushCharacterDim0Len16(queue, val)
      type(CharacterDim0Len16Queue), intent(inout):: queue
      Character(len = 16), intent(in):: val
      type(CharacterDim0Len16QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim0Len16Queue
      !   type(CharacterDim0Len16QueueNode), target:: root
      !   type(CharacterDim0Len16QueueNode), pointer:: tail => root
      !   type(CharacterDim0Len16QueueNode), pointer:: head => root%next
      ! end type CharacterDim0Len16Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim0Len16

    function shiftCharacterDim0Len16(queue, val) result(isSuccess)
      type(CharacterDim0Len16Queue), intent(inout):: queue
      Character(len = 16), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len16QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim0Len16

    function is_emptyCharacterDim0Len16(queue) result(answer)
      type(CharacterDim0Len16Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim0Len16
    subroutine pushCharacterDim0Len32(queue, val)
      type(CharacterDim0Len32Queue), intent(inout):: queue
      Character(len = 32), intent(in):: val
      type(CharacterDim0Len32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim0Len32Queue
      !   type(CharacterDim0Len32QueueNode), target:: root
      !   type(CharacterDim0Len32QueueNode), pointer:: tail => root
      !   type(CharacterDim0Len32QueueNode), pointer:: head => root%next
      ! end type CharacterDim0Len32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim0Len32

    function shiftCharacterDim0Len32(queue, val) result(isSuccess)
      type(CharacterDim0Len32Queue), intent(inout):: queue
      Character(len = 32), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim0Len32

    function is_emptyCharacterDim0Len32(queue) result(answer)
      type(CharacterDim0Len32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim0Len32
    subroutine pushCharacterDim0Len64(queue, val)
      type(CharacterDim0Len64Queue), intent(inout):: queue
      Character(len = 64), intent(in):: val
      type(CharacterDim0Len64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim0Len64Queue
      !   type(CharacterDim0Len64QueueNode), target:: root
      !   type(CharacterDim0Len64QueueNode), pointer:: tail => root
      !   type(CharacterDim0Len64QueueNode), pointer:: head => root%next
      ! end type CharacterDim0Len64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim0Len64

    function shiftCharacterDim0Len64(queue, val) result(isSuccess)
      type(CharacterDim0Len64Queue), intent(inout):: queue
      Character(len = 64), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim0Len64

    function is_emptyCharacterDim0Len64(queue) result(answer)
      type(CharacterDim0Len64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim0Len64
    subroutine pushCharacterDim0Len128(queue, val)
      type(CharacterDim0Len128Queue), intent(inout):: queue
      Character(len = 128), intent(in):: val
      type(CharacterDim0Len128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim0Len128Queue
      !   type(CharacterDim0Len128QueueNode), target:: root
      !   type(CharacterDim0Len128QueueNode), pointer:: tail => root
      !   type(CharacterDim0Len128QueueNode), pointer:: head => root%next
      ! end type CharacterDim0Len128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim0Len128

    function shiftCharacterDim0Len128(queue, val) result(isSuccess)
      type(CharacterDim0Len128Queue), intent(inout):: queue
      Character(len = 128), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim0Len128

    function is_emptyCharacterDim0Len128(queue) result(answer)
      type(CharacterDim0Len128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim0Len128
    subroutine pushCharacterDim0Len256(queue, val)
      type(CharacterDim0Len256Queue), intent(inout):: queue
      Character(len = 256), intent(in):: val
      type(CharacterDim0Len256QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim0Len256Queue
      !   type(CharacterDim0Len256QueueNode), target:: root
      !   type(CharacterDim0Len256QueueNode), pointer:: tail => root
      !   type(CharacterDim0Len256QueueNode), pointer:: head => root%next
      ! end type CharacterDim0Len256Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim0Len256

    function shiftCharacterDim0Len256(queue, val) result(isSuccess)
      type(CharacterDim0Len256Queue), intent(inout):: queue
      Character(len = 256), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len256QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim0Len256

    function is_emptyCharacterDim0Len256(queue) result(answer)
      type(CharacterDim0Len256Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim0Len256
    subroutine pushCharacterDim0Len512(queue, val)
      type(CharacterDim0Len512Queue), intent(inout):: queue
      Character(len = 512), intent(in):: val
      type(CharacterDim0Len512QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim0Len512Queue
      !   type(CharacterDim0Len512QueueNode), target:: root
      !   type(CharacterDim0Len512QueueNode), pointer:: tail => root
      !   type(CharacterDim0Len512QueueNode), pointer:: head => root%next
      ! end type CharacterDim0Len512Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim0Len512

    function shiftCharacterDim0Len512(queue, val) result(isSuccess)
      type(CharacterDim0Len512Queue), intent(inout):: queue
      Character(len = 512), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len512QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim0Len512

    function is_emptyCharacterDim0Len512(queue) result(answer)
      type(CharacterDim0Len512Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim0Len512
    subroutine pushCharacterDim0Len1024(queue, val)
      type(CharacterDim0Len1024Queue), intent(inout):: queue
      Character(len = 1024), intent(in):: val
      type(CharacterDim0Len1024QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim0Len1024Queue
      !   type(CharacterDim0Len1024QueueNode), target:: root
      !   type(CharacterDim0Len1024QueueNode), pointer:: tail => root
      !   type(CharacterDim0Len1024QueueNode), pointer:: head => root%next
      ! end type CharacterDim0Len1024Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim0Len1024

    function shiftCharacterDim0Len1024(queue, val) result(isSuccess)
      type(CharacterDim0Len1024Queue), intent(inout):: queue
      Character(len = 1024), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len1024QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim0Len1024

    function is_emptyCharacterDim0Len1024(queue) result(answer)
      type(CharacterDim0Len1024Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim0Len1024
    subroutine pushCharacterDim0Len2048(queue, val)
      type(CharacterDim0Len2048Queue), intent(inout):: queue
      Character(len = 2048), intent(in):: val
      type(CharacterDim0Len2048QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim0Len2048Queue
      !   type(CharacterDim0Len2048QueueNode), target:: root
      !   type(CharacterDim0Len2048QueueNode), pointer:: tail => root
      !   type(CharacterDim0Len2048QueueNode), pointer:: head => root%next
      ! end type CharacterDim0Len2048Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim0Len2048

    function shiftCharacterDim0Len2048(queue, val) result(isSuccess)
      type(CharacterDim0Len2048Queue), intent(inout):: queue
      Character(len = 2048), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len2048QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim0Len2048

    function is_emptyCharacterDim0Len2048(queue) result(answer)
      type(CharacterDim0Len2048Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim0Len2048
    subroutine pushCharacterDim0Len4096(queue, val)
      type(CharacterDim0Len4096Queue), intent(inout):: queue
      Character(len = 4096), intent(in):: val
      type(CharacterDim0Len4096QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim0Len4096Queue
      !   type(CharacterDim0Len4096QueueNode), target:: root
      !   type(CharacterDim0Len4096QueueNode), pointer:: tail => root
      !   type(CharacterDim0Len4096QueueNode), pointer:: head => root%next
      ! end type CharacterDim0Len4096Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim0Len4096

    function shiftCharacterDim0Len4096(queue, val) result(isSuccess)
      type(CharacterDim0Len4096Queue), intent(inout):: queue
      Character(len = 4096), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len4096QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim0Len4096

    function is_emptyCharacterDim0Len4096(queue) result(answer)
      type(CharacterDim0Len4096Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim0Len4096
    subroutine pushCharacterDim0Len8192(queue, val)
      type(CharacterDim0Len8192Queue), intent(inout):: queue
      Character(len = 8192), intent(in):: val
      type(CharacterDim0Len8192QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim0Len8192Queue
      !   type(CharacterDim0Len8192QueueNode), target:: root
      !   type(CharacterDim0Len8192QueueNode), pointer:: tail => root
      !   type(CharacterDim0Len8192QueueNode), pointer:: head => root%next
      ! end type CharacterDim0Len8192Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim0Len8192

    function shiftCharacterDim0Len8192(queue, val) result(isSuccess)
      type(CharacterDim0Len8192Queue), intent(inout):: queue
      Character(len = 8192), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len8192QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim0Len8192

    function is_emptyCharacterDim0Len8192(queue) result(answer)
      type(CharacterDim0Len8192Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim0Len8192
    subroutine pushCharacterDim1Len1(queue, val)
      type(CharacterDim1Len1Queue), intent(inout):: queue
      Character(len = 1), dimension(:), intent(in):: val
      type(CharacterDim1Len1QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim1Len1Queue
      !   type(CharacterDim1Len1QueueNode), target:: root
      !   type(CharacterDim1Len1QueueNode), pointer:: tail => root
      !   type(CharacterDim1Len1QueueNode), pointer:: head => root%next
      ! end type CharacterDim1Len1Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim1Len1

    function shiftCharacterDim1Len1(queue, val) result(isSuccess)
      type(CharacterDim1Len1Queue), intent(inout):: queue
      Character(len = 1), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len1QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim1Len1

    function is_emptyCharacterDim1Len1(queue) result(answer)
      type(CharacterDim1Len1Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim1Len1
    subroutine pushCharacterDim1Len2(queue, val)
      type(CharacterDim1Len2Queue), intent(inout):: queue
      Character(len = 2), dimension(:), intent(in):: val
      type(CharacterDim1Len2QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim1Len2Queue
      !   type(CharacterDim1Len2QueueNode), target:: root
      !   type(CharacterDim1Len2QueueNode), pointer:: tail => root
      !   type(CharacterDim1Len2QueueNode), pointer:: head => root%next
      ! end type CharacterDim1Len2Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim1Len2

    function shiftCharacterDim1Len2(queue, val) result(isSuccess)
      type(CharacterDim1Len2Queue), intent(inout):: queue
      Character(len = 2), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len2QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim1Len2

    function is_emptyCharacterDim1Len2(queue) result(answer)
      type(CharacterDim1Len2Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim1Len2
    subroutine pushCharacterDim1Len4(queue, val)
      type(CharacterDim1Len4Queue), intent(inout):: queue
      Character(len = 4), dimension(:), intent(in):: val
      type(CharacterDim1Len4QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim1Len4Queue
      !   type(CharacterDim1Len4QueueNode), target:: root
      !   type(CharacterDim1Len4QueueNode), pointer:: tail => root
      !   type(CharacterDim1Len4QueueNode), pointer:: head => root%next
      ! end type CharacterDim1Len4Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim1Len4

    function shiftCharacterDim1Len4(queue, val) result(isSuccess)
      type(CharacterDim1Len4Queue), intent(inout):: queue
      Character(len = 4), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len4QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim1Len4

    function is_emptyCharacterDim1Len4(queue) result(answer)
      type(CharacterDim1Len4Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim1Len4
    subroutine pushCharacterDim1Len8(queue, val)
      type(CharacterDim1Len8Queue), intent(inout):: queue
      Character(len = 8), dimension(:), intent(in):: val
      type(CharacterDim1Len8QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim1Len8Queue
      !   type(CharacterDim1Len8QueueNode), target:: root
      !   type(CharacterDim1Len8QueueNode), pointer:: tail => root
      !   type(CharacterDim1Len8QueueNode), pointer:: head => root%next
      ! end type CharacterDim1Len8Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim1Len8

    function shiftCharacterDim1Len8(queue, val) result(isSuccess)
      type(CharacterDim1Len8Queue), intent(inout):: queue
      Character(len = 8), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len8QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim1Len8

    function is_emptyCharacterDim1Len8(queue) result(answer)
      type(CharacterDim1Len8Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim1Len8
    subroutine pushCharacterDim1Len16(queue, val)
      type(CharacterDim1Len16Queue), intent(inout):: queue
      Character(len = 16), dimension(:), intent(in):: val
      type(CharacterDim1Len16QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim1Len16Queue
      !   type(CharacterDim1Len16QueueNode), target:: root
      !   type(CharacterDim1Len16QueueNode), pointer:: tail => root
      !   type(CharacterDim1Len16QueueNode), pointer:: head => root%next
      ! end type CharacterDim1Len16Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim1Len16

    function shiftCharacterDim1Len16(queue, val) result(isSuccess)
      type(CharacterDim1Len16Queue), intent(inout):: queue
      Character(len = 16), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len16QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim1Len16

    function is_emptyCharacterDim1Len16(queue) result(answer)
      type(CharacterDim1Len16Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim1Len16
    subroutine pushCharacterDim1Len32(queue, val)
      type(CharacterDim1Len32Queue), intent(inout):: queue
      Character(len = 32), dimension(:), intent(in):: val
      type(CharacterDim1Len32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim1Len32Queue
      !   type(CharacterDim1Len32QueueNode), target:: root
      !   type(CharacterDim1Len32QueueNode), pointer:: tail => root
      !   type(CharacterDim1Len32QueueNode), pointer:: head => root%next
      ! end type CharacterDim1Len32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim1Len32

    function shiftCharacterDim1Len32(queue, val) result(isSuccess)
      type(CharacterDim1Len32Queue), intent(inout):: queue
      Character(len = 32), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim1Len32

    function is_emptyCharacterDim1Len32(queue) result(answer)
      type(CharacterDim1Len32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim1Len32
    subroutine pushCharacterDim1Len64(queue, val)
      type(CharacterDim1Len64Queue), intent(inout):: queue
      Character(len = 64), dimension(:), intent(in):: val
      type(CharacterDim1Len64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim1Len64Queue
      !   type(CharacterDim1Len64QueueNode), target:: root
      !   type(CharacterDim1Len64QueueNode), pointer:: tail => root
      !   type(CharacterDim1Len64QueueNode), pointer:: head => root%next
      ! end type CharacterDim1Len64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim1Len64

    function shiftCharacterDim1Len64(queue, val) result(isSuccess)
      type(CharacterDim1Len64Queue), intent(inout):: queue
      Character(len = 64), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim1Len64

    function is_emptyCharacterDim1Len64(queue) result(answer)
      type(CharacterDim1Len64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim1Len64
    subroutine pushCharacterDim1Len128(queue, val)
      type(CharacterDim1Len128Queue), intent(inout):: queue
      Character(len = 128), dimension(:), intent(in):: val
      type(CharacterDim1Len128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim1Len128Queue
      !   type(CharacterDim1Len128QueueNode), target:: root
      !   type(CharacterDim1Len128QueueNode), pointer:: tail => root
      !   type(CharacterDim1Len128QueueNode), pointer:: head => root%next
      ! end type CharacterDim1Len128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim1Len128

    function shiftCharacterDim1Len128(queue, val) result(isSuccess)
      type(CharacterDim1Len128Queue), intent(inout):: queue
      Character(len = 128), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim1Len128

    function is_emptyCharacterDim1Len128(queue) result(answer)
      type(CharacterDim1Len128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim1Len128
    subroutine pushCharacterDim1Len256(queue, val)
      type(CharacterDim1Len256Queue), intent(inout):: queue
      Character(len = 256), dimension(:), intent(in):: val
      type(CharacterDim1Len256QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim1Len256Queue
      !   type(CharacterDim1Len256QueueNode), target:: root
      !   type(CharacterDim1Len256QueueNode), pointer:: tail => root
      !   type(CharacterDim1Len256QueueNode), pointer:: head => root%next
      ! end type CharacterDim1Len256Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim1Len256

    function shiftCharacterDim1Len256(queue, val) result(isSuccess)
      type(CharacterDim1Len256Queue), intent(inout):: queue
      Character(len = 256), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len256QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim1Len256

    function is_emptyCharacterDim1Len256(queue) result(answer)
      type(CharacterDim1Len256Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim1Len256
    subroutine pushCharacterDim1Len512(queue, val)
      type(CharacterDim1Len512Queue), intent(inout):: queue
      Character(len = 512), dimension(:), intent(in):: val
      type(CharacterDim1Len512QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim1Len512Queue
      !   type(CharacterDim1Len512QueueNode), target:: root
      !   type(CharacterDim1Len512QueueNode), pointer:: tail => root
      !   type(CharacterDim1Len512QueueNode), pointer:: head => root%next
      ! end type CharacterDim1Len512Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim1Len512

    function shiftCharacterDim1Len512(queue, val) result(isSuccess)
      type(CharacterDim1Len512Queue), intent(inout):: queue
      Character(len = 512), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len512QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim1Len512

    function is_emptyCharacterDim1Len512(queue) result(answer)
      type(CharacterDim1Len512Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim1Len512
    subroutine pushCharacterDim1Len1024(queue, val)
      type(CharacterDim1Len1024Queue), intent(inout):: queue
      Character(len = 1024), dimension(:), intent(in):: val
      type(CharacterDim1Len1024QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim1Len1024Queue
      !   type(CharacterDim1Len1024QueueNode), target:: root
      !   type(CharacterDim1Len1024QueueNode), pointer:: tail => root
      !   type(CharacterDim1Len1024QueueNode), pointer:: head => root%next
      ! end type CharacterDim1Len1024Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim1Len1024

    function shiftCharacterDim1Len1024(queue, val) result(isSuccess)
      type(CharacterDim1Len1024Queue), intent(inout):: queue
      Character(len = 1024), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len1024QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim1Len1024

    function is_emptyCharacterDim1Len1024(queue) result(answer)
      type(CharacterDim1Len1024Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim1Len1024
    subroutine pushCharacterDim1Len2048(queue, val)
      type(CharacterDim1Len2048Queue), intent(inout):: queue
      Character(len = 2048), dimension(:), intent(in):: val
      type(CharacterDim1Len2048QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim1Len2048Queue
      !   type(CharacterDim1Len2048QueueNode), target:: root
      !   type(CharacterDim1Len2048QueueNode), pointer:: tail => root
      !   type(CharacterDim1Len2048QueueNode), pointer:: head => root%next
      ! end type CharacterDim1Len2048Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim1Len2048

    function shiftCharacterDim1Len2048(queue, val) result(isSuccess)
      type(CharacterDim1Len2048Queue), intent(inout):: queue
      Character(len = 2048), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len2048QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim1Len2048

    function is_emptyCharacterDim1Len2048(queue) result(answer)
      type(CharacterDim1Len2048Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim1Len2048
    subroutine pushCharacterDim1Len4096(queue, val)
      type(CharacterDim1Len4096Queue), intent(inout):: queue
      Character(len = 4096), dimension(:), intent(in):: val
      type(CharacterDim1Len4096QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim1Len4096Queue
      !   type(CharacterDim1Len4096QueueNode), target:: root
      !   type(CharacterDim1Len4096QueueNode), pointer:: tail => root
      !   type(CharacterDim1Len4096QueueNode), pointer:: head => root%next
      ! end type CharacterDim1Len4096Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim1Len4096

    function shiftCharacterDim1Len4096(queue, val) result(isSuccess)
      type(CharacterDim1Len4096Queue), intent(inout):: queue
      Character(len = 4096), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len4096QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim1Len4096

    function is_emptyCharacterDim1Len4096(queue) result(answer)
      type(CharacterDim1Len4096Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim1Len4096
    subroutine pushCharacterDim1Len8192(queue, val)
      type(CharacterDim1Len8192Queue), intent(inout):: queue
      Character(len = 8192), dimension(:), intent(in):: val
      type(CharacterDim1Len8192QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim1Len8192Queue
      !   type(CharacterDim1Len8192QueueNode), target:: root
      !   type(CharacterDim1Len8192QueueNode), pointer:: tail => root
      !   type(CharacterDim1Len8192QueueNode), pointer:: head => root%next
      ! end type CharacterDim1Len8192Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim1Len8192

    function shiftCharacterDim1Len8192(queue, val) result(isSuccess)
      type(CharacterDim1Len8192Queue), intent(inout):: queue
      Character(len = 8192), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len8192QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim1Len8192

    function is_emptyCharacterDim1Len8192(queue) result(answer)
      type(CharacterDim1Len8192Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim1Len8192
    subroutine pushCharacterDim2Len1(queue, val)
      type(CharacterDim2Len1Queue), intent(inout):: queue
      Character(len = 1), dimension(:, :), intent(in):: val
      type(CharacterDim2Len1QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim2Len1Queue
      !   type(CharacterDim2Len1QueueNode), target:: root
      !   type(CharacterDim2Len1QueueNode), pointer:: tail => root
      !   type(CharacterDim2Len1QueueNode), pointer:: head => root%next
      ! end type CharacterDim2Len1Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim2Len1

    function shiftCharacterDim2Len1(queue, val) result(isSuccess)
      type(CharacterDim2Len1Queue), intent(inout):: queue
      Character(len = 1), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len1QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim2Len1

    function is_emptyCharacterDim2Len1(queue) result(answer)
      type(CharacterDim2Len1Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim2Len1
    subroutine pushCharacterDim2Len2(queue, val)
      type(CharacterDim2Len2Queue), intent(inout):: queue
      Character(len = 2), dimension(:, :), intent(in):: val
      type(CharacterDim2Len2QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim2Len2Queue
      !   type(CharacterDim2Len2QueueNode), target:: root
      !   type(CharacterDim2Len2QueueNode), pointer:: tail => root
      !   type(CharacterDim2Len2QueueNode), pointer:: head => root%next
      ! end type CharacterDim2Len2Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim2Len2

    function shiftCharacterDim2Len2(queue, val) result(isSuccess)
      type(CharacterDim2Len2Queue), intent(inout):: queue
      Character(len = 2), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len2QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim2Len2

    function is_emptyCharacterDim2Len2(queue) result(answer)
      type(CharacterDim2Len2Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim2Len2
    subroutine pushCharacterDim2Len4(queue, val)
      type(CharacterDim2Len4Queue), intent(inout):: queue
      Character(len = 4), dimension(:, :), intent(in):: val
      type(CharacterDim2Len4QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim2Len4Queue
      !   type(CharacterDim2Len4QueueNode), target:: root
      !   type(CharacterDim2Len4QueueNode), pointer:: tail => root
      !   type(CharacterDim2Len4QueueNode), pointer:: head => root%next
      ! end type CharacterDim2Len4Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim2Len4

    function shiftCharacterDim2Len4(queue, val) result(isSuccess)
      type(CharacterDim2Len4Queue), intent(inout):: queue
      Character(len = 4), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len4QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim2Len4

    function is_emptyCharacterDim2Len4(queue) result(answer)
      type(CharacterDim2Len4Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim2Len4
    subroutine pushCharacterDim2Len8(queue, val)
      type(CharacterDim2Len8Queue), intent(inout):: queue
      Character(len = 8), dimension(:, :), intent(in):: val
      type(CharacterDim2Len8QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim2Len8Queue
      !   type(CharacterDim2Len8QueueNode), target:: root
      !   type(CharacterDim2Len8QueueNode), pointer:: tail => root
      !   type(CharacterDim2Len8QueueNode), pointer:: head => root%next
      ! end type CharacterDim2Len8Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim2Len8

    function shiftCharacterDim2Len8(queue, val) result(isSuccess)
      type(CharacterDim2Len8Queue), intent(inout):: queue
      Character(len = 8), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len8QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim2Len8

    function is_emptyCharacterDim2Len8(queue) result(answer)
      type(CharacterDim2Len8Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim2Len8
    subroutine pushCharacterDim2Len16(queue, val)
      type(CharacterDim2Len16Queue), intent(inout):: queue
      Character(len = 16), dimension(:, :), intent(in):: val
      type(CharacterDim2Len16QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim2Len16Queue
      !   type(CharacterDim2Len16QueueNode), target:: root
      !   type(CharacterDim2Len16QueueNode), pointer:: tail => root
      !   type(CharacterDim2Len16QueueNode), pointer:: head => root%next
      ! end type CharacterDim2Len16Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim2Len16

    function shiftCharacterDim2Len16(queue, val) result(isSuccess)
      type(CharacterDim2Len16Queue), intent(inout):: queue
      Character(len = 16), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len16QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim2Len16

    function is_emptyCharacterDim2Len16(queue) result(answer)
      type(CharacterDim2Len16Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim2Len16
    subroutine pushCharacterDim2Len32(queue, val)
      type(CharacterDim2Len32Queue), intent(inout):: queue
      Character(len = 32), dimension(:, :), intent(in):: val
      type(CharacterDim2Len32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim2Len32Queue
      !   type(CharacterDim2Len32QueueNode), target:: root
      !   type(CharacterDim2Len32QueueNode), pointer:: tail => root
      !   type(CharacterDim2Len32QueueNode), pointer:: head => root%next
      ! end type CharacterDim2Len32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim2Len32

    function shiftCharacterDim2Len32(queue, val) result(isSuccess)
      type(CharacterDim2Len32Queue), intent(inout):: queue
      Character(len = 32), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim2Len32

    function is_emptyCharacterDim2Len32(queue) result(answer)
      type(CharacterDim2Len32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim2Len32
    subroutine pushCharacterDim2Len64(queue, val)
      type(CharacterDim2Len64Queue), intent(inout):: queue
      Character(len = 64), dimension(:, :), intent(in):: val
      type(CharacterDim2Len64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim2Len64Queue
      !   type(CharacterDim2Len64QueueNode), target:: root
      !   type(CharacterDim2Len64QueueNode), pointer:: tail => root
      !   type(CharacterDim2Len64QueueNode), pointer:: head => root%next
      ! end type CharacterDim2Len64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim2Len64

    function shiftCharacterDim2Len64(queue, val) result(isSuccess)
      type(CharacterDim2Len64Queue), intent(inout):: queue
      Character(len = 64), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim2Len64

    function is_emptyCharacterDim2Len64(queue) result(answer)
      type(CharacterDim2Len64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim2Len64
    subroutine pushCharacterDim2Len128(queue, val)
      type(CharacterDim2Len128Queue), intent(inout):: queue
      Character(len = 128), dimension(:, :), intent(in):: val
      type(CharacterDim2Len128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim2Len128Queue
      !   type(CharacterDim2Len128QueueNode), target:: root
      !   type(CharacterDim2Len128QueueNode), pointer:: tail => root
      !   type(CharacterDim2Len128QueueNode), pointer:: head => root%next
      ! end type CharacterDim2Len128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim2Len128

    function shiftCharacterDim2Len128(queue, val) result(isSuccess)
      type(CharacterDim2Len128Queue), intent(inout):: queue
      Character(len = 128), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim2Len128

    function is_emptyCharacterDim2Len128(queue) result(answer)
      type(CharacterDim2Len128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim2Len128
    subroutine pushCharacterDim2Len256(queue, val)
      type(CharacterDim2Len256Queue), intent(inout):: queue
      Character(len = 256), dimension(:, :), intent(in):: val
      type(CharacterDim2Len256QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim2Len256Queue
      !   type(CharacterDim2Len256QueueNode), target:: root
      !   type(CharacterDim2Len256QueueNode), pointer:: tail => root
      !   type(CharacterDim2Len256QueueNode), pointer:: head => root%next
      ! end type CharacterDim2Len256Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim2Len256

    function shiftCharacterDim2Len256(queue, val) result(isSuccess)
      type(CharacterDim2Len256Queue), intent(inout):: queue
      Character(len = 256), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len256QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim2Len256

    function is_emptyCharacterDim2Len256(queue) result(answer)
      type(CharacterDim2Len256Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim2Len256
    subroutine pushCharacterDim2Len512(queue, val)
      type(CharacterDim2Len512Queue), intent(inout):: queue
      Character(len = 512), dimension(:, :), intent(in):: val
      type(CharacterDim2Len512QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim2Len512Queue
      !   type(CharacterDim2Len512QueueNode), target:: root
      !   type(CharacterDim2Len512QueueNode), pointer:: tail => root
      !   type(CharacterDim2Len512QueueNode), pointer:: head => root%next
      ! end type CharacterDim2Len512Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim2Len512

    function shiftCharacterDim2Len512(queue, val) result(isSuccess)
      type(CharacterDim2Len512Queue), intent(inout):: queue
      Character(len = 512), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len512QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim2Len512

    function is_emptyCharacterDim2Len512(queue) result(answer)
      type(CharacterDim2Len512Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim2Len512
    subroutine pushCharacterDim2Len1024(queue, val)
      type(CharacterDim2Len1024Queue), intent(inout):: queue
      Character(len = 1024), dimension(:, :), intent(in):: val
      type(CharacterDim2Len1024QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim2Len1024Queue
      !   type(CharacterDim2Len1024QueueNode), target:: root
      !   type(CharacterDim2Len1024QueueNode), pointer:: tail => root
      !   type(CharacterDim2Len1024QueueNode), pointer:: head => root%next
      ! end type CharacterDim2Len1024Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim2Len1024

    function shiftCharacterDim2Len1024(queue, val) result(isSuccess)
      type(CharacterDim2Len1024Queue), intent(inout):: queue
      Character(len = 1024), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len1024QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim2Len1024

    function is_emptyCharacterDim2Len1024(queue) result(answer)
      type(CharacterDim2Len1024Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim2Len1024
    subroutine pushCharacterDim2Len2048(queue, val)
      type(CharacterDim2Len2048Queue), intent(inout):: queue
      Character(len = 2048), dimension(:, :), intent(in):: val
      type(CharacterDim2Len2048QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim2Len2048Queue
      !   type(CharacterDim2Len2048QueueNode), target:: root
      !   type(CharacterDim2Len2048QueueNode), pointer:: tail => root
      !   type(CharacterDim2Len2048QueueNode), pointer:: head => root%next
      ! end type CharacterDim2Len2048Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim2Len2048

    function shiftCharacterDim2Len2048(queue, val) result(isSuccess)
      type(CharacterDim2Len2048Queue), intent(inout):: queue
      Character(len = 2048), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len2048QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim2Len2048

    function is_emptyCharacterDim2Len2048(queue) result(answer)
      type(CharacterDim2Len2048Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim2Len2048
    subroutine pushCharacterDim2Len4096(queue, val)
      type(CharacterDim2Len4096Queue), intent(inout):: queue
      Character(len = 4096), dimension(:, :), intent(in):: val
      type(CharacterDim2Len4096QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim2Len4096Queue
      !   type(CharacterDim2Len4096QueueNode), target:: root
      !   type(CharacterDim2Len4096QueueNode), pointer:: tail => root
      !   type(CharacterDim2Len4096QueueNode), pointer:: head => root%next
      ! end type CharacterDim2Len4096Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim2Len4096

    function shiftCharacterDim2Len4096(queue, val) result(isSuccess)
      type(CharacterDim2Len4096Queue), intent(inout):: queue
      Character(len = 4096), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len4096QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim2Len4096

    function is_emptyCharacterDim2Len4096(queue) result(answer)
      type(CharacterDim2Len4096Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim2Len4096
    subroutine pushCharacterDim2Len8192(queue, val)
      type(CharacterDim2Len8192Queue), intent(inout):: queue
      Character(len = 8192), dimension(:, :), intent(in):: val
      type(CharacterDim2Len8192QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim2Len8192Queue
      !   type(CharacterDim2Len8192QueueNode), target:: root
      !   type(CharacterDim2Len8192QueueNode), pointer:: tail => root
      !   type(CharacterDim2Len8192QueueNode), pointer:: head => root%next
      ! end type CharacterDim2Len8192Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim2Len8192

    function shiftCharacterDim2Len8192(queue, val) result(isSuccess)
      type(CharacterDim2Len8192Queue), intent(inout):: queue
      Character(len = 8192), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len8192QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim2Len8192

    function is_emptyCharacterDim2Len8192(queue) result(answer)
      type(CharacterDim2Len8192Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim2Len8192
    subroutine pushCharacterDim3Len1(queue, val)
      type(CharacterDim3Len1Queue), intent(inout):: queue
      Character(len = 1), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len1QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim3Len1Queue
      !   type(CharacterDim3Len1QueueNode), target:: root
      !   type(CharacterDim3Len1QueueNode), pointer:: tail => root
      !   type(CharacterDim3Len1QueueNode), pointer:: head => root%next
      ! end type CharacterDim3Len1Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim3Len1

    function shiftCharacterDim3Len1(queue, val) result(isSuccess)
      type(CharacterDim3Len1Queue), intent(inout):: queue
      Character(len = 1), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len1QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim3Len1

    function is_emptyCharacterDim3Len1(queue) result(answer)
      type(CharacterDim3Len1Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim3Len1
    subroutine pushCharacterDim3Len2(queue, val)
      type(CharacterDim3Len2Queue), intent(inout):: queue
      Character(len = 2), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len2QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim3Len2Queue
      !   type(CharacterDim3Len2QueueNode), target:: root
      !   type(CharacterDim3Len2QueueNode), pointer:: tail => root
      !   type(CharacterDim3Len2QueueNode), pointer:: head => root%next
      ! end type CharacterDim3Len2Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim3Len2

    function shiftCharacterDim3Len2(queue, val) result(isSuccess)
      type(CharacterDim3Len2Queue), intent(inout):: queue
      Character(len = 2), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len2QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim3Len2

    function is_emptyCharacterDim3Len2(queue) result(answer)
      type(CharacterDim3Len2Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim3Len2
    subroutine pushCharacterDim3Len4(queue, val)
      type(CharacterDim3Len4Queue), intent(inout):: queue
      Character(len = 4), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len4QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim3Len4Queue
      !   type(CharacterDim3Len4QueueNode), target:: root
      !   type(CharacterDim3Len4QueueNode), pointer:: tail => root
      !   type(CharacterDim3Len4QueueNode), pointer:: head => root%next
      ! end type CharacterDim3Len4Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim3Len4

    function shiftCharacterDim3Len4(queue, val) result(isSuccess)
      type(CharacterDim3Len4Queue), intent(inout):: queue
      Character(len = 4), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len4QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim3Len4

    function is_emptyCharacterDim3Len4(queue) result(answer)
      type(CharacterDim3Len4Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim3Len4
    subroutine pushCharacterDim3Len8(queue, val)
      type(CharacterDim3Len8Queue), intent(inout):: queue
      Character(len = 8), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len8QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim3Len8Queue
      !   type(CharacterDim3Len8QueueNode), target:: root
      !   type(CharacterDim3Len8QueueNode), pointer:: tail => root
      !   type(CharacterDim3Len8QueueNode), pointer:: head => root%next
      ! end type CharacterDim3Len8Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim3Len8

    function shiftCharacterDim3Len8(queue, val) result(isSuccess)
      type(CharacterDim3Len8Queue), intent(inout):: queue
      Character(len = 8), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len8QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim3Len8

    function is_emptyCharacterDim3Len8(queue) result(answer)
      type(CharacterDim3Len8Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim3Len8
    subroutine pushCharacterDim3Len16(queue, val)
      type(CharacterDim3Len16Queue), intent(inout):: queue
      Character(len = 16), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len16QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim3Len16Queue
      !   type(CharacterDim3Len16QueueNode), target:: root
      !   type(CharacterDim3Len16QueueNode), pointer:: tail => root
      !   type(CharacterDim3Len16QueueNode), pointer:: head => root%next
      ! end type CharacterDim3Len16Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim3Len16

    function shiftCharacterDim3Len16(queue, val) result(isSuccess)
      type(CharacterDim3Len16Queue), intent(inout):: queue
      Character(len = 16), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len16QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim3Len16

    function is_emptyCharacterDim3Len16(queue) result(answer)
      type(CharacterDim3Len16Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim3Len16
    subroutine pushCharacterDim3Len32(queue, val)
      type(CharacterDim3Len32Queue), intent(inout):: queue
      Character(len = 32), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim3Len32Queue
      !   type(CharacterDim3Len32QueueNode), target:: root
      !   type(CharacterDim3Len32QueueNode), pointer:: tail => root
      !   type(CharacterDim3Len32QueueNode), pointer:: head => root%next
      ! end type CharacterDim3Len32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim3Len32

    function shiftCharacterDim3Len32(queue, val) result(isSuccess)
      type(CharacterDim3Len32Queue), intent(inout):: queue
      Character(len = 32), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim3Len32

    function is_emptyCharacterDim3Len32(queue) result(answer)
      type(CharacterDim3Len32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim3Len32
    subroutine pushCharacterDim3Len64(queue, val)
      type(CharacterDim3Len64Queue), intent(inout):: queue
      Character(len = 64), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim3Len64Queue
      !   type(CharacterDim3Len64QueueNode), target:: root
      !   type(CharacterDim3Len64QueueNode), pointer:: tail => root
      !   type(CharacterDim3Len64QueueNode), pointer:: head => root%next
      ! end type CharacterDim3Len64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim3Len64

    function shiftCharacterDim3Len64(queue, val) result(isSuccess)
      type(CharacterDim3Len64Queue), intent(inout):: queue
      Character(len = 64), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim3Len64

    function is_emptyCharacterDim3Len64(queue) result(answer)
      type(CharacterDim3Len64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim3Len64
    subroutine pushCharacterDim3Len128(queue, val)
      type(CharacterDim3Len128Queue), intent(inout):: queue
      Character(len = 128), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim3Len128Queue
      !   type(CharacterDim3Len128QueueNode), target:: root
      !   type(CharacterDim3Len128QueueNode), pointer:: tail => root
      !   type(CharacterDim3Len128QueueNode), pointer:: head => root%next
      ! end type CharacterDim3Len128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim3Len128

    function shiftCharacterDim3Len128(queue, val) result(isSuccess)
      type(CharacterDim3Len128Queue), intent(inout):: queue
      Character(len = 128), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim3Len128

    function is_emptyCharacterDim3Len128(queue) result(answer)
      type(CharacterDim3Len128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim3Len128
    subroutine pushCharacterDim3Len256(queue, val)
      type(CharacterDim3Len256Queue), intent(inout):: queue
      Character(len = 256), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len256QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim3Len256Queue
      !   type(CharacterDim3Len256QueueNode), target:: root
      !   type(CharacterDim3Len256QueueNode), pointer:: tail => root
      !   type(CharacterDim3Len256QueueNode), pointer:: head => root%next
      ! end type CharacterDim3Len256Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim3Len256

    function shiftCharacterDim3Len256(queue, val) result(isSuccess)
      type(CharacterDim3Len256Queue), intent(inout):: queue
      Character(len = 256), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len256QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim3Len256

    function is_emptyCharacterDim3Len256(queue) result(answer)
      type(CharacterDim3Len256Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim3Len256
    subroutine pushCharacterDim3Len512(queue, val)
      type(CharacterDim3Len512Queue), intent(inout):: queue
      Character(len = 512), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len512QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim3Len512Queue
      !   type(CharacterDim3Len512QueueNode), target:: root
      !   type(CharacterDim3Len512QueueNode), pointer:: tail => root
      !   type(CharacterDim3Len512QueueNode), pointer:: head => root%next
      ! end type CharacterDim3Len512Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim3Len512

    function shiftCharacterDim3Len512(queue, val) result(isSuccess)
      type(CharacterDim3Len512Queue), intent(inout):: queue
      Character(len = 512), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len512QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim3Len512

    function is_emptyCharacterDim3Len512(queue) result(answer)
      type(CharacterDim3Len512Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim3Len512
    subroutine pushCharacterDim3Len1024(queue, val)
      type(CharacterDim3Len1024Queue), intent(inout):: queue
      Character(len = 1024), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len1024QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim3Len1024Queue
      !   type(CharacterDim3Len1024QueueNode), target:: root
      !   type(CharacterDim3Len1024QueueNode), pointer:: tail => root
      !   type(CharacterDim3Len1024QueueNode), pointer:: head => root%next
      ! end type CharacterDim3Len1024Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim3Len1024

    function shiftCharacterDim3Len1024(queue, val) result(isSuccess)
      type(CharacterDim3Len1024Queue), intent(inout):: queue
      Character(len = 1024), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len1024QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim3Len1024

    function is_emptyCharacterDim3Len1024(queue) result(answer)
      type(CharacterDim3Len1024Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim3Len1024
    subroutine pushCharacterDim3Len2048(queue, val)
      type(CharacterDim3Len2048Queue), intent(inout):: queue
      Character(len = 2048), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len2048QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim3Len2048Queue
      !   type(CharacterDim3Len2048QueueNode), target:: root
      !   type(CharacterDim3Len2048QueueNode), pointer:: tail => root
      !   type(CharacterDim3Len2048QueueNode), pointer:: head => root%next
      ! end type CharacterDim3Len2048Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim3Len2048

    function shiftCharacterDim3Len2048(queue, val) result(isSuccess)
      type(CharacterDim3Len2048Queue), intent(inout):: queue
      Character(len = 2048), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len2048QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim3Len2048

    function is_emptyCharacterDim3Len2048(queue) result(answer)
      type(CharacterDim3Len2048Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim3Len2048
    subroutine pushCharacterDim3Len4096(queue, val)
      type(CharacterDim3Len4096Queue), intent(inout):: queue
      Character(len = 4096), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len4096QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim3Len4096Queue
      !   type(CharacterDim3Len4096QueueNode), target:: root
      !   type(CharacterDim3Len4096QueueNode), pointer:: tail => root
      !   type(CharacterDim3Len4096QueueNode), pointer:: head => root%next
      ! end type CharacterDim3Len4096Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim3Len4096

    function shiftCharacterDim3Len4096(queue, val) result(isSuccess)
      type(CharacterDim3Len4096Queue), intent(inout):: queue
      Character(len = 4096), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len4096QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim3Len4096

    function is_emptyCharacterDim3Len4096(queue) result(answer)
      type(CharacterDim3Len4096Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim3Len4096
    subroutine pushCharacterDim3Len8192(queue, val)
      type(CharacterDim3Len8192Queue), intent(inout):: queue
      Character(len = 8192), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len8192QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim3Len8192Queue
      !   type(CharacterDim3Len8192QueueNode), target:: root
      !   type(CharacterDim3Len8192QueueNode), pointer:: tail => root
      !   type(CharacterDim3Len8192QueueNode), pointer:: head => root%next
      ! end type CharacterDim3Len8192Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim3Len8192

    function shiftCharacterDim3Len8192(queue, val) result(isSuccess)
      type(CharacterDim3Len8192Queue), intent(inout):: queue
      Character(len = 8192), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len8192QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim3Len8192

    function is_emptyCharacterDim3Len8192(queue) result(answer)
      type(CharacterDim3Len8192Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim3Len8192
    subroutine pushCharacterDim4Len1(queue, val)
      type(CharacterDim4Len1Queue), intent(inout):: queue
      Character(len = 1), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len1QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim4Len1Queue
      !   type(CharacterDim4Len1QueueNode), target:: root
      !   type(CharacterDim4Len1QueueNode), pointer:: tail => root
      !   type(CharacterDim4Len1QueueNode), pointer:: head => root%next
      ! end type CharacterDim4Len1Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim4Len1

    function shiftCharacterDim4Len1(queue, val) result(isSuccess)
      type(CharacterDim4Len1Queue), intent(inout):: queue
      Character(len = 1), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len1QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim4Len1

    function is_emptyCharacterDim4Len1(queue) result(answer)
      type(CharacterDim4Len1Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim4Len1
    subroutine pushCharacterDim4Len2(queue, val)
      type(CharacterDim4Len2Queue), intent(inout):: queue
      Character(len = 2), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len2QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim4Len2Queue
      !   type(CharacterDim4Len2QueueNode), target:: root
      !   type(CharacterDim4Len2QueueNode), pointer:: tail => root
      !   type(CharacterDim4Len2QueueNode), pointer:: head => root%next
      ! end type CharacterDim4Len2Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim4Len2

    function shiftCharacterDim4Len2(queue, val) result(isSuccess)
      type(CharacterDim4Len2Queue), intent(inout):: queue
      Character(len = 2), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len2QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim4Len2

    function is_emptyCharacterDim4Len2(queue) result(answer)
      type(CharacterDim4Len2Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim4Len2
    subroutine pushCharacterDim4Len4(queue, val)
      type(CharacterDim4Len4Queue), intent(inout):: queue
      Character(len = 4), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len4QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim4Len4Queue
      !   type(CharacterDim4Len4QueueNode), target:: root
      !   type(CharacterDim4Len4QueueNode), pointer:: tail => root
      !   type(CharacterDim4Len4QueueNode), pointer:: head => root%next
      ! end type CharacterDim4Len4Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim4Len4

    function shiftCharacterDim4Len4(queue, val) result(isSuccess)
      type(CharacterDim4Len4Queue), intent(inout):: queue
      Character(len = 4), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len4QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim4Len4

    function is_emptyCharacterDim4Len4(queue) result(answer)
      type(CharacterDim4Len4Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim4Len4
    subroutine pushCharacterDim4Len8(queue, val)
      type(CharacterDim4Len8Queue), intent(inout):: queue
      Character(len = 8), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len8QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim4Len8Queue
      !   type(CharacterDim4Len8QueueNode), target:: root
      !   type(CharacterDim4Len8QueueNode), pointer:: tail => root
      !   type(CharacterDim4Len8QueueNode), pointer:: head => root%next
      ! end type CharacterDim4Len8Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim4Len8

    function shiftCharacterDim4Len8(queue, val) result(isSuccess)
      type(CharacterDim4Len8Queue), intent(inout):: queue
      Character(len = 8), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len8QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim4Len8

    function is_emptyCharacterDim4Len8(queue) result(answer)
      type(CharacterDim4Len8Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim4Len8
    subroutine pushCharacterDim4Len16(queue, val)
      type(CharacterDim4Len16Queue), intent(inout):: queue
      Character(len = 16), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len16QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim4Len16Queue
      !   type(CharacterDim4Len16QueueNode), target:: root
      !   type(CharacterDim4Len16QueueNode), pointer:: tail => root
      !   type(CharacterDim4Len16QueueNode), pointer:: head => root%next
      ! end type CharacterDim4Len16Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim4Len16

    function shiftCharacterDim4Len16(queue, val) result(isSuccess)
      type(CharacterDim4Len16Queue), intent(inout):: queue
      Character(len = 16), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len16QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim4Len16

    function is_emptyCharacterDim4Len16(queue) result(answer)
      type(CharacterDim4Len16Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim4Len16
    subroutine pushCharacterDim4Len32(queue, val)
      type(CharacterDim4Len32Queue), intent(inout):: queue
      Character(len = 32), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim4Len32Queue
      !   type(CharacterDim4Len32QueueNode), target:: root
      !   type(CharacterDim4Len32QueueNode), pointer:: tail => root
      !   type(CharacterDim4Len32QueueNode), pointer:: head => root%next
      ! end type CharacterDim4Len32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim4Len32

    function shiftCharacterDim4Len32(queue, val) result(isSuccess)
      type(CharacterDim4Len32Queue), intent(inout):: queue
      Character(len = 32), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim4Len32

    function is_emptyCharacterDim4Len32(queue) result(answer)
      type(CharacterDim4Len32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim4Len32
    subroutine pushCharacterDim4Len64(queue, val)
      type(CharacterDim4Len64Queue), intent(inout):: queue
      Character(len = 64), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim4Len64Queue
      !   type(CharacterDim4Len64QueueNode), target:: root
      !   type(CharacterDim4Len64QueueNode), pointer:: tail => root
      !   type(CharacterDim4Len64QueueNode), pointer:: head => root%next
      ! end type CharacterDim4Len64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim4Len64

    function shiftCharacterDim4Len64(queue, val) result(isSuccess)
      type(CharacterDim4Len64Queue), intent(inout):: queue
      Character(len = 64), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim4Len64

    function is_emptyCharacterDim4Len64(queue) result(answer)
      type(CharacterDim4Len64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim4Len64
    subroutine pushCharacterDim4Len128(queue, val)
      type(CharacterDim4Len128Queue), intent(inout):: queue
      Character(len = 128), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim4Len128Queue
      !   type(CharacterDim4Len128QueueNode), target:: root
      !   type(CharacterDim4Len128QueueNode), pointer:: tail => root
      !   type(CharacterDim4Len128QueueNode), pointer:: head => root%next
      ! end type CharacterDim4Len128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim4Len128

    function shiftCharacterDim4Len128(queue, val) result(isSuccess)
      type(CharacterDim4Len128Queue), intent(inout):: queue
      Character(len = 128), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim4Len128

    function is_emptyCharacterDim4Len128(queue) result(answer)
      type(CharacterDim4Len128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim4Len128
    subroutine pushCharacterDim4Len256(queue, val)
      type(CharacterDim4Len256Queue), intent(inout):: queue
      Character(len = 256), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len256QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim4Len256Queue
      !   type(CharacterDim4Len256QueueNode), target:: root
      !   type(CharacterDim4Len256QueueNode), pointer:: tail => root
      !   type(CharacterDim4Len256QueueNode), pointer:: head => root%next
      ! end type CharacterDim4Len256Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim4Len256

    function shiftCharacterDim4Len256(queue, val) result(isSuccess)
      type(CharacterDim4Len256Queue), intent(inout):: queue
      Character(len = 256), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len256QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim4Len256

    function is_emptyCharacterDim4Len256(queue) result(answer)
      type(CharacterDim4Len256Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim4Len256
    subroutine pushCharacterDim4Len512(queue, val)
      type(CharacterDim4Len512Queue), intent(inout):: queue
      Character(len = 512), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len512QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim4Len512Queue
      !   type(CharacterDim4Len512QueueNode), target:: root
      !   type(CharacterDim4Len512QueueNode), pointer:: tail => root
      !   type(CharacterDim4Len512QueueNode), pointer:: head => root%next
      ! end type CharacterDim4Len512Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim4Len512

    function shiftCharacterDim4Len512(queue, val) result(isSuccess)
      type(CharacterDim4Len512Queue), intent(inout):: queue
      Character(len = 512), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len512QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim4Len512

    function is_emptyCharacterDim4Len512(queue) result(answer)
      type(CharacterDim4Len512Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim4Len512
    subroutine pushCharacterDim4Len1024(queue, val)
      type(CharacterDim4Len1024Queue), intent(inout):: queue
      Character(len = 1024), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len1024QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim4Len1024Queue
      !   type(CharacterDim4Len1024QueueNode), target:: root
      !   type(CharacterDim4Len1024QueueNode), pointer:: tail => root
      !   type(CharacterDim4Len1024QueueNode), pointer:: head => root%next
      ! end type CharacterDim4Len1024Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim4Len1024

    function shiftCharacterDim4Len1024(queue, val) result(isSuccess)
      type(CharacterDim4Len1024Queue), intent(inout):: queue
      Character(len = 1024), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len1024QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim4Len1024

    function is_emptyCharacterDim4Len1024(queue) result(answer)
      type(CharacterDim4Len1024Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim4Len1024
    subroutine pushCharacterDim4Len2048(queue, val)
      type(CharacterDim4Len2048Queue), intent(inout):: queue
      Character(len = 2048), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len2048QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim4Len2048Queue
      !   type(CharacterDim4Len2048QueueNode), target:: root
      !   type(CharacterDim4Len2048QueueNode), pointer:: tail => root
      !   type(CharacterDim4Len2048QueueNode), pointer:: head => root%next
      ! end type CharacterDim4Len2048Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim4Len2048

    function shiftCharacterDim4Len2048(queue, val) result(isSuccess)
      type(CharacterDim4Len2048Queue), intent(inout):: queue
      Character(len = 2048), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len2048QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim4Len2048

    function is_emptyCharacterDim4Len2048(queue) result(answer)
      type(CharacterDim4Len2048Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim4Len2048
    subroutine pushCharacterDim4Len4096(queue, val)
      type(CharacterDim4Len4096Queue), intent(inout):: queue
      Character(len = 4096), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len4096QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim4Len4096Queue
      !   type(CharacterDim4Len4096QueueNode), target:: root
      !   type(CharacterDim4Len4096QueueNode), pointer:: tail => root
      !   type(CharacterDim4Len4096QueueNode), pointer:: head => root%next
      ! end type CharacterDim4Len4096Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim4Len4096

    function shiftCharacterDim4Len4096(queue, val) result(isSuccess)
      type(CharacterDim4Len4096Queue), intent(inout):: queue
      Character(len = 4096), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len4096QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim4Len4096

    function is_emptyCharacterDim4Len4096(queue) result(answer)
      type(CharacterDim4Len4096Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim4Len4096
    subroutine pushCharacterDim4Len8192(queue, val)
      type(CharacterDim4Len8192Queue), intent(inout):: queue
      Character(len = 8192), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len8192QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim4Len8192Queue
      !   type(CharacterDim4Len8192QueueNode), target:: root
      !   type(CharacterDim4Len8192QueueNode), pointer:: tail => root
      !   type(CharacterDim4Len8192QueueNode), pointer:: head => root%next
      ! end type CharacterDim4Len8192Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim4Len8192

    function shiftCharacterDim4Len8192(queue, val) result(isSuccess)
      type(CharacterDim4Len8192Queue), intent(inout):: queue
      Character(len = 8192), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len8192QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim4Len8192

    function is_emptyCharacterDim4Len8192(queue) result(answer)
      type(CharacterDim4Len8192Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim4Len8192
    subroutine pushCharacterDim5Len1(queue, val)
      type(CharacterDim5Len1Queue), intent(inout):: queue
      Character(len = 1), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len1QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim5Len1Queue
      !   type(CharacterDim5Len1QueueNode), target:: root
      !   type(CharacterDim5Len1QueueNode), pointer:: tail => root
      !   type(CharacterDim5Len1QueueNode), pointer:: head => root%next
      ! end type CharacterDim5Len1Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim5Len1

    function shiftCharacterDim5Len1(queue, val) result(isSuccess)
      type(CharacterDim5Len1Queue), intent(inout):: queue
      Character(len = 1), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len1QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim5Len1

    function is_emptyCharacterDim5Len1(queue) result(answer)
      type(CharacterDim5Len1Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim5Len1
    subroutine pushCharacterDim5Len2(queue, val)
      type(CharacterDim5Len2Queue), intent(inout):: queue
      Character(len = 2), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len2QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim5Len2Queue
      !   type(CharacterDim5Len2QueueNode), target:: root
      !   type(CharacterDim5Len2QueueNode), pointer:: tail => root
      !   type(CharacterDim5Len2QueueNode), pointer:: head => root%next
      ! end type CharacterDim5Len2Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim5Len2

    function shiftCharacterDim5Len2(queue, val) result(isSuccess)
      type(CharacterDim5Len2Queue), intent(inout):: queue
      Character(len = 2), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len2QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim5Len2

    function is_emptyCharacterDim5Len2(queue) result(answer)
      type(CharacterDim5Len2Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim5Len2
    subroutine pushCharacterDim5Len4(queue, val)
      type(CharacterDim5Len4Queue), intent(inout):: queue
      Character(len = 4), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len4QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim5Len4Queue
      !   type(CharacterDim5Len4QueueNode), target:: root
      !   type(CharacterDim5Len4QueueNode), pointer:: tail => root
      !   type(CharacterDim5Len4QueueNode), pointer:: head => root%next
      ! end type CharacterDim5Len4Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim5Len4

    function shiftCharacterDim5Len4(queue, val) result(isSuccess)
      type(CharacterDim5Len4Queue), intent(inout):: queue
      Character(len = 4), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len4QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim5Len4

    function is_emptyCharacterDim5Len4(queue) result(answer)
      type(CharacterDim5Len4Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim5Len4
    subroutine pushCharacterDim5Len8(queue, val)
      type(CharacterDim5Len8Queue), intent(inout):: queue
      Character(len = 8), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len8QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim5Len8Queue
      !   type(CharacterDim5Len8QueueNode), target:: root
      !   type(CharacterDim5Len8QueueNode), pointer:: tail => root
      !   type(CharacterDim5Len8QueueNode), pointer:: head => root%next
      ! end type CharacterDim5Len8Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim5Len8

    function shiftCharacterDim5Len8(queue, val) result(isSuccess)
      type(CharacterDim5Len8Queue), intent(inout):: queue
      Character(len = 8), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len8QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim5Len8

    function is_emptyCharacterDim5Len8(queue) result(answer)
      type(CharacterDim5Len8Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim5Len8
    subroutine pushCharacterDim5Len16(queue, val)
      type(CharacterDim5Len16Queue), intent(inout):: queue
      Character(len = 16), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len16QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim5Len16Queue
      !   type(CharacterDim5Len16QueueNode), target:: root
      !   type(CharacterDim5Len16QueueNode), pointer:: tail => root
      !   type(CharacterDim5Len16QueueNode), pointer:: head => root%next
      ! end type CharacterDim5Len16Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim5Len16

    function shiftCharacterDim5Len16(queue, val) result(isSuccess)
      type(CharacterDim5Len16Queue), intent(inout):: queue
      Character(len = 16), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len16QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim5Len16

    function is_emptyCharacterDim5Len16(queue) result(answer)
      type(CharacterDim5Len16Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim5Len16
    subroutine pushCharacterDim5Len32(queue, val)
      type(CharacterDim5Len32Queue), intent(inout):: queue
      Character(len = 32), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim5Len32Queue
      !   type(CharacterDim5Len32QueueNode), target:: root
      !   type(CharacterDim5Len32QueueNode), pointer:: tail => root
      !   type(CharacterDim5Len32QueueNode), pointer:: head => root%next
      ! end type CharacterDim5Len32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim5Len32

    function shiftCharacterDim5Len32(queue, val) result(isSuccess)
      type(CharacterDim5Len32Queue), intent(inout):: queue
      Character(len = 32), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim5Len32

    function is_emptyCharacterDim5Len32(queue) result(answer)
      type(CharacterDim5Len32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim5Len32
    subroutine pushCharacterDim5Len64(queue, val)
      type(CharacterDim5Len64Queue), intent(inout):: queue
      Character(len = 64), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim5Len64Queue
      !   type(CharacterDim5Len64QueueNode), target:: root
      !   type(CharacterDim5Len64QueueNode), pointer:: tail => root
      !   type(CharacterDim5Len64QueueNode), pointer:: head => root%next
      ! end type CharacterDim5Len64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim5Len64

    function shiftCharacterDim5Len64(queue, val) result(isSuccess)
      type(CharacterDim5Len64Queue), intent(inout):: queue
      Character(len = 64), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim5Len64

    function is_emptyCharacterDim5Len64(queue) result(answer)
      type(CharacterDim5Len64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim5Len64
    subroutine pushCharacterDim5Len128(queue, val)
      type(CharacterDim5Len128Queue), intent(inout):: queue
      Character(len = 128), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim5Len128Queue
      !   type(CharacterDim5Len128QueueNode), target:: root
      !   type(CharacterDim5Len128QueueNode), pointer:: tail => root
      !   type(CharacterDim5Len128QueueNode), pointer:: head => root%next
      ! end type CharacterDim5Len128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim5Len128

    function shiftCharacterDim5Len128(queue, val) result(isSuccess)
      type(CharacterDim5Len128Queue), intent(inout):: queue
      Character(len = 128), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim5Len128

    function is_emptyCharacterDim5Len128(queue) result(answer)
      type(CharacterDim5Len128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim5Len128
    subroutine pushCharacterDim5Len256(queue, val)
      type(CharacterDim5Len256Queue), intent(inout):: queue
      Character(len = 256), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len256QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim5Len256Queue
      !   type(CharacterDim5Len256QueueNode), target:: root
      !   type(CharacterDim5Len256QueueNode), pointer:: tail => root
      !   type(CharacterDim5Len256QueueNode), pointer:: head => root%next
      ! end type CharacterDim5Len256Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim5Len256

    function shiftCharacterDim5Len256(queue, val) result(isSuccess)
      type(CharacterDim5Len256Queue), intent(inout):: queue
      Character(len = 256), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len256QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim5Len256

    function is_emptyCharacterDim5Len256(queue) result(answer)
      type(CharacterDim5Len256Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim5Len256
    subroutine pushCharacterDim5Len512(queue, val)
      type(CharacterDim5Len512Queue), intent(inout):: queue
      Character(len = 512), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len512QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim5Len512Queue
      !   type(CharacterDim5Len512QueueNode), target:: root
      !   type(CharacterDim5Len512QueueNode), pointer:: tail => root
      !   type(CharacterDim5Len512QueueNode), pointer:: head => root%next
      ! end type CharacterDim5Len512Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim5Len512

    function shiftCharacterDim5Len512(queue, val) result(isSuccess)
      type(CharacterDim5Len512Queue), intent(inout):: queue
      Character(len = 512), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len512QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim5Len512

    function is_emptyCharacterDim5Len512(queue) result(answer)
      type(CharacterDim5Len512Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim5Len512
    subroutine pushCharacterDim5Len1024(queue, val)
      type(CharacterDim5Len1024Queue), intent(inout):: queue
      Character(len = 1024), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len1024QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim5Len1024Queue
      !   type(CharacterDim5Len1024QueueNode), target:: root
      !   type(CharacterDim5Len1024QueueNode), pointer:: tail => root
      !   type(CharacterDim5Len1024QueueNode), pointer:: head => root%next
      ! end type CharacterDim5Len1024Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim5Len1024

    function shiftCharacterDim5Len1024(queue, val) result(isSuccess)
      type(CharacterDim5Len1024Queue), intent(inout):: queue
      Character(len = 1024), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len1024QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim5Len1024

    function is_emptyCharacterDim5Len1024(queue) result(answer)
      type(CharacterDim5Len1024Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim5Len1024
    subroutine pushCharacterDim5Len2048(queue, val)
      type(CharacterDim5Len2048Queue), intent(inout):: queue
      Character(len = 2048), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len2048QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim5Len2048Queue
      !   type(CharacterDim5Len2048QueueNode), target:: root
      !   type(CharacterDim5Len2048QueueNode), pointer:: tail => root
      !   type(CharacterDim5Len2048QueueNode), pointer:: head => root%next
      ! end type CharacterDim5Len2048Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim5Len2048

    function shiftCharacterDim5Len2048(queue, val) result(isSuccess)
      type(CharacterDim5Len2048Queue), intent(inout):: queue
      Character(len = 2048), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len2048QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim5Len2048

    function is_emptyCharacterDim5Len2048(queue) result(answer)
      type(CharacterDim5Len2048Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim5Len2048
    subroutine pushCharacterDim5Len4096(queue, val)
      type(CharacterDim5Len4096Queue), intent(inout):: queue
      Character(len = 4096), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len4096QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim5Len4096Queue
      !   type(CharacterDim5Len4096QueueNode), target:: root
      !   type(CharacterDim5Len4096QueueNode), pointer:: tail => root
      !   type(CharacterDim5Len4096QueueNode), pointer:: head => root%next
      ! end type CharacterDim5Len4096Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim5Len4096

    function shiftCharacterDim5Len4096(queue, val) result(isSuccess)
      type(CharacterDim5Len4096Queue), intent(inout):: queue
      Character(len = 4096), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len4096QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim5Len4096

    function is_emptyCharacterDim5Len4096(queue) result(answer)
      type(CharacterDim5Len4096Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim5Len4096
    subroutine pushCharacterDim5Len8192(queue, val)
      type(CharacterDim5Len8192Queue), intent(inout):: queue
      Character(len = 8192), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len8192QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim5Len8192Queue
      !   type(CharacterDim5Len8192QueueNode), target:: root
      !   type(CharacterDim5Len8192QueueNode), pointer:: tail => root
      !   type(CharacterDim5Len8192QueueNode), pointer:: head => root%next
      ! end type CharacterDim5Len8192Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim5Len8192

    function shiftCharacterDim5Len8192(queue, val) result(isSuccess)
      type(CharacterDim5Len8192Queue), intent(inout):: queue
      Character(len = 8192), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len8192QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim5Len8192

    function is_emptyCharacterDim5Len8192(queue) result(answer)
      type(CharacterDim5Len8192Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim5Len8192
    subroutine pushCharacterDim6Len1(queue, val)
      type(CharacterDim6Len1Queue), intent(inout):: queue
      Character(len = 1), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len1QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim6Len1Queue
      !   type(CharacterDim6Len1QueueNode), target:: root
      !   type(CharacterDim6Len1QueueNode), pointer:: tail => root
      !   type(CharacterDim6Len1QueueNode), pointer:: head => root%next
      ! end type CharacterDim6Len1Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim6Len1

    function shiftCharacterDim6Len1(queue, val) result(isSuccess)
      type(CharacterDim6Len1Queue), intent(inout):: queue
      Character(len = 1), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len1QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim6Len1

    function is_emptyCharacterDim6Len1(queue) result(answer)
      type(CharacterDim6Len1Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim6Len1
    subroutine pushCharacterDim6Len2(queue, val)
      type(CharacterDim6Len2Queue), intent(inout):: queue
      Character(len = 2), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len2QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim6Len2Queue
      !   type(CharacterDim6Len2QueueNode), target:: root
      !   type(CharacterDim6Len2QueueNode), pointer:: tail => root
      !   type(CharacterDim6Len2QueueNode), pointer:: head => root%next
      ! end type CharacterDim6Len2Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim6Len2

    function shiftCharacterDim6Len2(queue, val) result(isSuccess)
      type(CharacterDim6Len2Queue), intent(inout):: queue
      Character(len = 2), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len2QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim6Len2

    function is_emptyCharacterDim6Len2(queue) result(answer)
      type(CharacterDim6Len2Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim6Len2
    subroutine pushCharacterDim6Len4(queue, val)
      type(CharacterDim6Len4Queue), intent(inout):: queue
      Character(len = 4), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len4QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim6Len4Queue
      !   type(CharacterDim6Len4QueueNode), target:: root
      !   type(CharacterDim6Len4QueueNode), pointer:: tail => root
      !   type(CharacterDim6Len4QueueNode), pointer:: head => root%next
      ! end type CharacterDim6Len4Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim6Len4

    function shiftCharacterDim6Len4(queue, val) result(isSuccess)
      type(CharacterDim6Len4Queue), intent(inout):: queue
      Character(len = 4), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len4QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim6Len4

    function is_emptyCharacterDim6Len4(queue) result(answer)
      type(CharacterDim6Len4Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim6Len4
    subroutine pushCharacterDim6Len8(queue, val)
      type(CharacterDim6Len8Queue), intent(inout):: queue
      Character(len = 8), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len8QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim6Len8Queue
      !   type(CharacterDim6Len8QueueNode), target:: root
      !   type(CharacterDim6Len8QueueNode), pointer:: tail => root
      !   type(CharacterDim6Len8QueueNode), pointer:: head => root%next
      ! end type CharacterDim6Len8Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim6Len8

    function shiftCharacterDim6Len8(queue, val) result(isSuccess)
      type(CharacterDim6Len8Queue), intent(inout):: queue
      Character(len = 8), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len8QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim6Len8

    function is_emptyCharacterDim6Len8(queue) result(answer)
      type(CharacterDim6Len8Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim6Len8
    subroutine pushCharacterDim6Len16(queue, val)
      type(CharacterDim6Len16Queue), intent(inout):: queue
      Character(len = 16), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len16QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim6Len16Queue
      !   type(CharacterDim6Len16QueueNode), target:: root
      !   type(CharacterDim6Len16QueueNode), pointer:: tail => root
      !   type(CharacterDim6Len16QueueNode), pointer:: head => root%next
      ! end type CharacterDim6Len16Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim6Len16

    function shiftCharacterDim6Len16(queue, val) result(isSuccess)
      type(CharacterDim6Len16Queue), intent(inout):: queue
      Character(len = 16), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len16QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim6Len16

    function is_emptyCharacterDim6Len16(queue) result(answer)
      type(CharacterDim6Len16Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim6Len16
    subroutine pushCharacterDim6Len32(queue, val)
      type(CharacterDim6Len32Queue), intent(inout):: queue
      Character(len = 32), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim6Len32Queue
      !   type(CharacterDim6Len32QueueNode), target:: root
      !   type(CharacterDim6Len32QueueNode), pointer:: tail => root
      !   type(CharacterDim6Len32QueueNode), pointer:: head => root%next
      ! end type CharacterDim6Len32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim6Len32

    function shiftCharacterDim6Len32(queue, val) result(isSuccess)
      type(CharacterDim6Len32Queue), intent(inout):: queue
      Character(len = 32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim6Len32

    function is_emptyCharacterDim6Len32(queue) result(answer)
      type(CharacterDim6Len32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim6Len32
    subroutine pushCharacterDim6Len64(queue, val)
      type(CharacterDim6Len64Queue), intent(inout):: queue
      Character(len = 64), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim6Len64Queue
      !   type(CharacterDim6Len64QueueNode), target:: root
      !   type(CharacterDim6Len64QueueNode), pointer:: tail => root
      !   type(CharacterDim6Len64QueueNode), pointer:: head => root%next
      ! end type CharacterDim6Len64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim6Len64

    function shiftCharacterDim6Len64(queue, val) result(isSuccess)
      type(CharacterDim6Len64Queue), intent(inout):: queue
      Character(len = 64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim6Len64

    function is_emptyCharacterDim6Len64(queue) result(answer)
      type(CharacterDim6Len64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim6Len64
    subroutine pushCharacterDim6Len128(queue, val)
      type(CharacterDim6Len128Queue), intent(inout):: queue
      Character(len = 128), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim6Len128Queue
      !   type(CharacterDim6Len128QueueNode), target:: root
      !   type(CharacterDim6Len128QueueNode), pointer:: tail => root
      !   type(CharacterDim6Len128QueueNode), pointer:: head => root%next
      ! end type CharacterDim6Len128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim6Len128

    function shiftCharacterDim6Len128(queue, val) result(isSuccess)
      type(CharacterDim6Len128Queue), intent(inout):: queue
      Character(len = 128), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim6Len128

    function is_emptyCharacterDim6Len128(queue) result(answer)
      type(CharacterDim6Len128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim6Len128
    subroutine pushCharacterDim6Len256(queue, val)
      type(CharacterDim6Len256Queue), intent(inout):: queue
      Character(len = 256), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len256QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim6Len256Queue
      !   type(CharacterDim6Len256QueueNode), target:: root
      !   type(CharacterDim6Len256QueueNode), pointer:: tail => root
      !   type(CharacterDim6Len256QueueNode), pointer:: head => root%next
      ! end type CharacterDim6Len256Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim6Len256

    function shiftCharacterDim6Len256(queue, val) result(isSuccess)
      type(CharacterDim6Len256Queue), intent(inout):: queue
      Character(len = 256), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len256QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim6Len256

    function is_emptyCharacterDim6Len256(queue) result(answer)
      type(CharacterDim6Len256Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim6Len256
    subroutine pushCharacterDim6Len512(queue, val)
      type(CharacterDim6Len512Queue), intent(inout):: queue
      Character(len = 512), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len512QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim6Len512Queue
      !   type(CharacterDim6Len512QueueNode), target:: root
      !   type(CharacterDim6Len512QueueNode), pointer:: tail => root
      !   type(CharacterDim6Len512QueueNode), pointer:: head => root%next
      ! end type CharacterDim6Len512Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim6Len512

    function shiftCharacterDim6Len512(queue, val) result(isSuccess)
      type(CharacterDim6Len512Queue), intent(inout):: queue
      Character(len = 512), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len512QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim6Len512

    function is_emptyCharacterDim6Len512(queue) result(answer)
      type(CharacterDim6Len512Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim6Len512
    subroutine pushCharacterDim6Len1024(queue, val)
      type(CharacterDim6Len1024Queue), intent(inout):: queue
      Character(len = 1024), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len1024QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim6Len1024Queue
      !   type(CharacterDim6Len1024QueueNode), target:: root
      !   type(CharacterDim6Len1024QueueNode), pointer:: tail => root
      !   type(CharacterDim6Len1024QueueNode), pointer:: head => root%next
      ! end type CharacterDim6Len1024Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim6Len1024

    function shiftCharacterDim6Len1024(queue, val) result(isSuccess)
      type(CharacterDim6Len1024Queue), intent(inout):: queue
      Character(len = 1024), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len1024QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim6Len1024

    function is_emptyCharacterDim6Len1024(queue) result(answer)
      type(CharacterDim6Len1024Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim6Len1024
    subroutine pushCharacterDim6Len2048(queue, val)
      type(CharacterDim6Len2048Queue), intent(inout):: queue
      Character(len = 2048), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len2048QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim6Len2048Queue
      !   type(CharacterDim6Len2048QueueNode), target:: root
      !   type(CharacterDim6Len2048QueueNode), pointer:: tail => root
      !   type(CharacterDim6Len2048QueueNode), pointer:: head => root%next
      ! end type CharacterDim6Len2048Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim6Len2048

    function shiftCharacterDim6Len2048(queue, val) result(isSuccess)
      type(CharacterDim6Len2048Queue), intent(inout):: queue
      Character(len = 2048), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len2048QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim6Len2048

    function is_emptyCharacterDim6Len2048(queue) result(answer)
      type(CharacterDim6Len2048Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim6Len2048
    subroutine pushCharacterDim6Len4096(queue, val)
      type(CharacterDim6Len4096Queue), intent(inout):: queue
      Character(len = 4096), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len4096QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim6Len4096Queue
      !   type(CharacterDim6Len4096QueueNode), target:: root
      !   type(CharacterDim6Len4096QueueNode), pointer:: tail => root
      !   type(CharacterDim6Len4096QueueNode), pointer:: head => root%next
      ! end type CharacterDim6Len4096Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim6Len4096

    function shiftCharacterDim6Len4096(queue, val) result(isSuccess)
      type(CharacterDim6Len4096Queue), intent(inout):: queue
      Character(len = 4096), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len4096QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim6Len4096

    function is_emptyCharacterDim6Len4096(queue) result(answer)
      type(CharacterDim6Len4096Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim6Len4096
    subroutine pushCharacterDim6Len8192(queue, val)
      type(CharacterDim6Len8192Queue), intent(inout):: queue
      Character(len = 8192), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len8192QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim6Len8192Queue
      !   type(CharacterDim6Len8192QueueNode), target:: root
      !   type(CharacterDim6Len8192QueueNode), pointer:: tail => root
      !   type(CharacterDim6Len8192QueueNode), pointer:: head => root%next
      ! end type CharacterDim6Len8192Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim6Len8192

    function shiftCharacterDim6Len8192(queue, val) result(isSuccess)
      type(CharacterDim6Len8192Queue), intent(inout):: queue
      Character(len = 8192), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len8192QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim6Len8192

    function is_emptyCharacterDim6Len8192(queue) result(answer)
      type(CharacterDim6Len8192Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim6Len8192
    subroutine pushCharacterDim7Len1(queue, val)
      type(CharacterDim7Len1Queue), intent(inout):: queue
      Character(len = 1), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len1QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim7Len1Queue
      !   type(CharacterDim7Len1QueueNode), target:: root
      !   type(CharacterDim7Len1QueueNode), pointer:: tail => root
      !   type(CharacterDim7Len1QueueNode), pointer:: head => root%next
      ! end type CharacterDim7Len1Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim7Len1

    function shiftCharacterDim7Len1(queue, val) result(isSuccess)
      type(CharacterDim7Len1Queue), intent(inout):: queue
      Character(len = 1), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len1QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim7Len1

    function is_emptyCharacterDim7Len1(queue) result(answer)
      type(CharacterDim7Len1Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim7Len1
    subroutine pushCharacterDim7Len2(queue, val)
      type(CharacterDim7Len2Queue), intent(inout):: queue
      Character(len = 2), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len2QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim7Len2Queue
      !   type(CharacterDim7Len2QueueNode), target:: root
      !   type(CharacterDim7Len2QueueNode), pointer:: tail => root
      !   type(CharacterDim7Len2QueueNode), pointer:: head => root%next
      ! end type CharacterDim7Len2Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim7Len2

    function shiftCharacterDim7Len2(queue, val) result(isSuccess)
      type(CharacterDim7Len2Queue), intent(inout):: queue
      Character(len = 2), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len2QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim7Len2

    function is_emptyCharacterDim7Len2(queue) result(answer)
      type(CharacterDim7Len2Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim7Len2
    subroutine pushCharacterDim7Len4(queue, val)
      type(CharacterDim7Len4Queue), intent(inout):: queue
      Character(len = 4), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len4QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim7Len4Queue
      !   type(CharacterDim7Len4QueueNode), target:: root
      !   type(CharacterDim7Len4QueueNode), pointer:: tail => root
      !   type(CharacterDim7Len4QueueNode), pointer:: head => root%next
      ! end type CharacterDim7Len4Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim7Len4

    function shiftCharacterDim7Len4(queue, val) result(isSuccess)
      type(CharacterDim7Len4Queue), intent(inout):: queue
      Character(len = 4), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len4QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim7Len4

    function is_emptyCharacterDim7Len4(queue) result(answer)
      type(CharacterDim7Len4Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim7Len4
    subroutine pushCharacterDim7Len8(queue, val)
      type(CharacterDim7Len8Queue), intent(inout):: queue
      Character(len = 8), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len8QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim7Len8Queue
      !   type(CharacterDim7Len8QueueNode), target:: root
      !   type(CharacterDim7Len8QueueNode), pointer:: tail => root
      !   type(CharacterDim7Len8QueueNode), pointer:: head => root%next
      ! end type CharacterDim7Len8Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim7Len8

    function shiftCharacterDim7Len8(queue, val) result(isSuccess)
      type(CharacterDim7Len8Queue), intent(inout):: queue
      Character(len = 8), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len8QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim7Len8

    function is_emptyCharacterDim7Len8(queue) result(answer)
      type(CharacterDim7Len8Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim7Len8
    subroutine pushCharacterDim7Len16(queue, val)
      type(CharacterDim7Len16Queue), intent(inout):: queue
      Character(len = 16), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len16QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim7Len16Queue
      !   type(CharacterDim7Len16QueueNode), target:: root
      !   type(CharacterDim7Len16QueueNode), pointer:: tail => root
      !   type(CharacterDim7Len16QueueNode), pointer:: head => root%next
      ! end type CharacterDim7Len16Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim7Len16

    function shiftCharacterDim7Len16(queue, val) result(isSuccess)
      type(CharacterDim7Len16Queue), intent(inout):: queue
      Character(len = 16), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len16QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim7Len16

    function is_emptyCharacterDim7Len16(queue) result(answer)
      type(CharacterDim7Len16Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim7Len16
    subroutine pushCharacterDim7Len32(queue, val)
      type(CharacterDim7Len32Queue), intent(inout):: queue
      Character(len = 32), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len32QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim7Len32Queue
      !   type(CharacterDim7Len32QueueNode), target:: root
      !   type(CharacterDim7Len32QueueNode), pointer:: tail => root
      !   type(CharacterDim7Len32QueueNode), pointer:: head => root%next
      ! end type CharacterDim7Len32Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim7Len32

    function shiftCharacterDim7Len32(queue, val) result(isSuccess)
      type(CharacterDim7Len32Queue), intent(inout):: queue
      Character(len = 32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len32QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim7Len32

    function is_emptyCharacterDim7Len32(queue) result(answer)
      type(CharacterDim7Len32Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim7Len32
    subroutine pushCharacterDim7Len64(queue, val)
      type(CharacterDim7Len64Queue), intent(inout):: queue
      Character(len = 64), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len64QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim7Len64Queue
      !   type(CharacterDim7Len64QueueNode), target:: root
      !   type(CharacterDim7Len64QueueNode), pointer:: tail => root
      !   type(CharacterDim7Len64QueueNode), pointer:: head => root%next
      ! end type CharacterDim7Len64Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim7Len64

    function shiftCharacterDim7Len64(queue, val) result(isSuccess)
      type(CharacterDim7Len64Queue), intent(inout):: queue
      Character(len = 64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len64QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim7Len64

    function is_emptyCharacterDim7Len64(queue) result(answer)
      type(CharacterDim7Len64Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim7Len64
    subroutine pushCharacterDim7Len128(queue, val)
      type(CharacterDim7Len128Queue), intent(inout):: queue
      Character(len = 128), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len128QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim7Len128Queue
      !   type(CharacterDim7Len128QueueNode), target:: root
      !   type(CharacterDim7Len128QueueNode), pointer:: tail => root
      !   type(CharacterDim7Len128QueueNode), pointer:: head => root%next
      ! end type CharacterDim7Len128Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim7Len128

    function shiftCharacterDim7Len128(queue, val) result(isSuccess)
      type(CharacterDim7Len128Queue), intent(inout):: queue
      Character(len = 128), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len128QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim7Len128

    function is_emptyCharacterDim7Len128(queue) result(answer)
      type(CharacterDim7Len128Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim7Len128
    subroutine pushCharacterDim7Len256(queue, val)
      type(CharacterDim7Len256Queue), intent(inout):: queue
      Character(len = 256), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len256QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim7Len256Queue
      !   type(CharacterDim7Len256QueueNode), target:: root
      !   type(CharacterDim7Len256QueueNode), pointer:: tail => root
      !   type(CharacterDim7Len256QueueNode), pointer:: head => root%next
      ! end type CharacterDim7Len256Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim7Len256

    function shiftCharacterDim7Len256(queue, val) result(isSuccess)
      type(CharacterDim7Len256Queue), intent(inout):: queue
      Character(len = 256), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len256QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim7Len256

    function is_emptyCharacterDim7Len256(queue) result(answer)
      type(CharacterDim7Len256Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim7Len256
    subroutine pushCharacterDim7Len512(queue, val)
      type(CharacterDim7Len512Queue), intent(inout):: queue
      Character(len = 512), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len512QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim7Len512Queue
      !   type(CharacterDim7Len512QueueNode), target:: root
      !   type(CharacterDim7Len512QueueNode), pointer:: tail => root
      !   type(CharacterDim7Len512QueueNode), pointer:: head => root%next
      ! end type CharacterDim7Len512Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim7Len512

    function shiftCharacterDim7Len512(queue, val) result(isSuccess)
      type(CharacterDim7Len512Queue), intent(inout):: queue
      Character(len = 512), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len512QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim7Len512

    function is_emptyCharacterDim7Len512(queue) result(answer)
      type(CharacterDim7Len512Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim7Len512
    subroutine pushCharacterDim7Len1024(queue, val)
      type(CharacterDim7Len1024Queue), intent(inout):: queue
      Character(len = 1024), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len1024QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim7Len1024Queue
      !   type(CharacterDim7Len1024QueueNode), target:: root
      !   type(CharacterDim7Len1024QueueNode), pointer:: tail => root
      !   type(CharacterDim7Len1024QueueNode), pointer:: head => root%next
      ! end type CharacterDim7Len1024Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim7Len1024

    function shiftCharacterDim7Len1024(queue, val) result(isSuccess)
      type(CharacterDim7Len1024Queue), intent(inout):: queue
      Character(len = 1024), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len1024QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim7Len1024

    function is_emptyCharacterDim7Len1024(queue) result(answer)
      type(CharacterDim7Len1024Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim7Len1024
    subroutine pushCharacterDim7Len2048(queue, val)
      type(CharacterDim7Len2048Queue), intent(inout):: queue
      Character(len = 2048), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len2048QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim7Len2048Queue
      !   type(CharacterDim7Len2048QueueNode), target:: root
      !   type(CharacterDim7Len2048QueueNode), pointer:: tail => root
      !   type(CharacterDim7Len2048QueueNode), pointer:: head => root%next
      ! end type CharacterDim7Len2048Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim7Len2048

    function shiftCharacterDim7Len2048(queue, val) result(isSuccess)
      type(CharacterDim7Len2048Queue), intent(inout):: queue
      Character(len = 2048), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len2048QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim7Len2048

    function is_emptyCharacterDim7Len2048(queue) result(answer)
      type(CharacterDim7Len2048Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim7Len2048
    subroutine pushCharacterDim7Len4096(queue, val)
      type(CharacterDim7Len4096Queue), intent(inout):: queue
      Character(len = 4096), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len4096QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim7Len4096Queue
      !   type(CharacterDim7Len4096QueueNode), target:: root
      !   type(CharacterDim7Len4096QueueNode), pointer:: tail => root
      !   type(CharacterDim7Len4096QueueNode), pointer:: head => root%next
      ! end type CharacterDim7Len4096Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim7Len4096

    function shiftCharacterDim7Len4096(queue, val) result(isSuccess)
      type(CharacterDim7Len4096Queue), intent(inout):: queue
      Character(len = 4096), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len4096QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim7Len4096

    function is_emptyCharacterDim7Len4096(queue) result(answer)
      type(CharacterDim7Len4096Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim7Len4096
    subroutine pushCharacterDim7Len8192(queue, val)
      type(CharacterDim7Len8192Queue), intent(inout):: queue
      Character(len = 8192), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len8192QueueNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val

      ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
      ! type CharacterDim7Len8192Queue
      !   type(CharacterDim7Len8192QueueNode), target:: root
      !   type(CharacterDim7Len8192QueueNode), pointer:: tail => root
      !   type(CharacterDim7Len8192QueueNode), pointer:: head => root%next
      ! end type CharacterDim7Len8192Queue
      ! ! and the following if-statement could be simplified as:
      ! queue%tail%next => newNode
      if(is_empty(queue))then
        queue%head => newNode
      else
        queue%tail%next => newNode
      end if
      queue%tail => newNode
    end subroutine pushCharacterDim7Len8192

    function shiftCharacterDim7Len8192(queue, val) result(isSuccess)
      type(CharacterDim7Len8192Queue), intent(inout):: queue
      Character(len = 8192), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len8192QueueNode), pointer:: tmpNodeHolder => null()

      if(is_empty(queue))then
        isSuccess = .false.
        return
      end if

      val = queue%head%val
      tmpNodeHolder => queue%head
      queue%head => queue%head%next
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function shiftCharacterDim7Len8192

    function is_emptyCharacterDim7Len8192(queue) result(answer)
      type(CharacterDim7Len8192Queue), intent(in):: queue
      Logical:: answer

      answer = .not.associated(queue%head)
    end function is_emptyCharacterDim7Len8192
end module lib_queue
