
module lib_stack
  use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
  implicit none

  private
  public:: push, pop

    public:: RealDim0KindREAL32Stack
    public:: RealDim0KindREAL64Stack
    public:: RealDim0KindREAL128Stack
    public:: RealDim1KindREAL32Stack
    public:: RealDim1KindREAL64Stack
    public:: RealDim1KindREAL128Stack
    public:: RealDim2KindREAL32Stack
    public:: RealDim2KindREAL64Stack
    public:: RealDim2KindREAL128Stack
    public:: RealDim3KindREAL32Stack
    public:: RealDim3KindREAL64Stack
    public:: RealDim3KindREAL128Stack
    public:: RealDim4KindREAL32Stack
    public:: RealDim4KindREAL64Stack
    public:: RealDim4KindREAL128Stack
    public:: RealDim5KindREAL32Stack
    public:: RealDim5KindREAL64Stack
    public:: RealDim5KindREAL128Stack
    public:: RealDim6KindREAL32Stack
    public:: RealDim6KindREAL64Stack
    public:: RealDim6KindREAL128Stack
    public:: RealDim7KindREAL32Stack
    public:: RealDim7KindREAL64Stack
    public:: RealDim7KindREAL128Stack
    public:: IntegerDim0KindINT8Stack
    public:: IntegerDim0KindINT16Stack
    public:: IntegerDim0KindINT32Stack
    public:: IntegerDim0KindINT64Stack
    public:: IntegerDim1KindINT8Stack
    public:: IntegerDim1KindINT16Stack
    public:: IntegerDim1KindINT32Stack
    public:: IntegerDim1KindINT64Stack
    public:: IntegerDim2KindINT8Stack
    public:: IntegerDim2KindINT16Stack
    public:: IntegerDim2KindINT32Stack
    public:: IntegerDim2KindINT64Stack
    public:: IntegerDim3KindINT8Stack
    public:: IntegerDim3KindINT16Stack
    public:: IntegerDim3KindINT32Stack
    public:: IntegerDim3KindINT64Stack
    public:: IntegerDim4KindINT8Stack
    public:: IntegerDim4KindINT16Stack
    public:: IntegerDim4KindINT32Stack
    public:: IntegerDim4KindINT64Stack
    public:: IntegerDim5KindINT8Stack
    public:: IntegerDim5KindINT16Stack
    public:: IntegerDim5KindINT32Stack
    public:: IntegerDim5KindINT64Stack
    public:: IntegerDim6KindINT8Stack
    public:: IntegerDim6KindINT16Stack
    public:: IntegerDim6KindINT32Stack
    public:: IntegerDim6KindINT64Stack
    public:: IntegerDim7KindINT8Stack
    public:: IntegerDim7KindINT16Stack
    public:: IntegerDim7KindINT32Stack
    public:: IntegerDim7KindINT64Stack
    public:: LogicalDim0Stack
    public:: LogicalDim1Stack
    public:: LogicalDim2Stack
    public:: LogicalDim3Stack
    public:: LogicalDim4Stack
    public:: LogicalDim5Stack
    public:: LogicalDim6Stack
    public:: LogicalDim7Stack
    public:: ComplexDim0KindREAL32Stack
    public:: ComplexDim0KindREAL64Stack
    public:: ComplexDim0KindREAL128Stack
    public:: ComplexDim1KindREAL32Stack
    public:: ComplexDim1KindREAL64Stack
    public:: ComplexDim1KindREAL128Stack
    public:: ComplexDim2KindREAL32Stack
    public:: ComplexDim2KindREAL64Stack
    public:: ComplexDim2KindREAL128Stack
    public:: ComplexDim3KindREAL32Stack
    public:: ComplexDim3KindREAL64Stack
    public:: ComplexDim3KindREAL128Stack
    public:: ComplexDim4KindREAL32Stack
    public:: ComplexDim4KindREAL64Stack
    public:: ComplexDim4KindREAL128Stack
    public:: ComplexDim5KindREAL32Stack
    public:: ComplexDim5KindREAL64Stack
    public:: ComplexDim5KindREAL128Stack
    public:: ComplexDim6KindREAL32Stack
    public:: ComplexDim6KindREAL64Stack
    public:: ComplexDim6KindREAL128Stack
    public:: ComplexDim7KindREAL32Stack
    public:: ComplexDim7KindREAL64Stack
    public:: ComplexDim7KindREAL128Stack
    public:: CharacterDim0Len1Stack
    public:: CharacterDim0Len2Stack
    public:: CharacterDim0Len4Stack
    public:: CharacterDim0Len8Stack
    public:: CharacterDim0Len16Stack
    public:: CharacterDim0Len32Stack
    public:: CharacterDim0Len64Stack
    public:: CharacterDim0Len128Stack
    public:: CharacterDim0Len256Stack
    public:: CharacterDim0Len512Stack
    public:: CharacterDim0Len1024Stack
    public:: CharacterDim0Len2048Stack
    public:: CharacterDim0Len4096Stack
    public:: CharacterDim0Len8192Stack
    public:: CharacterDim1Len1Stack
    public:: CharacterDim1Len2Stack
    public:: CharacterDim1Len4Stack
    public:: CharacterDim1Len8Stack
    public:: CharacterDim1Len16Stack
    public:: CharacterDim1Len32Stack
    public:: CharacterDim1Len64Stack
    public:: CharacterDim1Len128Stack
    public:: CharacterDim1Len256Stack
    public:: CharacterDim1Len512Stack
    public:: CharacterDim1Len1024Stack
    public:: CharacterDim1Len2048Stack
    public:: CharacterDim1Len4096Stack
    public:: CharacterDim1Len8192Stack
    public:: CharacterDim2Len1Stack
    public:: CharacterDim2Len2Stack
    public:: CharacterDim2Len4Stack
    public:: CharacterDim2Len8Stack
    public:: CharacterDim2Len16Stack
    public:: CharacterDim2Len32Stack
    public:: CharacterDim2Len64Stack
    public:: CharacterDim2Len128Stack
    public:: CharacterDim2Len256Stack
    public:: CharacterDim2Len512Stack
    public:: CharacterDim2Len1024Stack
    public:: CharacterDim2Len2048Stack
    public:: CharacterDim2Len4096Stack
    public:: CharacterDim2Len8192Stack
    public:: CharacterDim3Len1Stack
    public:: CharacterDim3Len2Stack
    public:: CharacterDim3Len4Stack
    public:: CharacterDim3Len8Stack
    public:: CharacterDim3Len16Stack
    public:: CharacterDim3Len32Stack
    public:: CharacterDim3Len64Stack
    public:: CharacterDim3Len128Stack
    public:: CharacterDim3Len256Stack
    public:: CharacterDim3Len512Stack
    public:: CharacterDim3Len1024Stack
    public:: CharacterDim3Len2048Stack
    public:: CharacterDim3Len4096Stack
    public:: CharacterDim3Len8192Stack
    public:: CharacterDim4Len1Stack
    public:: CharacterDim4Len2Stack
    public:: CharacterDim4Len4Stack
    public:: CharacterDim4Len8Stack
    public:: CharacterDim4Len16Stack
    public:: CharacterDim4Len32Stack
    public:: CharacterDim4Len64Stack
    public:: CharacterDim4Len128Stack
    public:: CharacterDim4Len256Stack
    public:: CharacterDim4Len512Stack
    public:: CharacterDim4Len1024Stack
    public:: CharacterDim4Len2048Stack
    public:: CharacterDim4Len4096Stack
    public:: CharacterDim4Len8192Stack
    public:: CharacterDim5Len1Stack
    public:: CharacterDim5Len2Stack
    public:: CharacterDim5Len4Stack
    public:: CharacterDim5Len8Stack
    public:: CharacterDim5Len16Stack
    public:: CharacterDim5Len32Stack
    public:: CharacterDim5Len64Stack
    public:: CharacterDim5Len128Stack
    public:: CharacterDim5Len256Stack
    public:: CharacterDim5Len512Stack
    public:: CharacterDim5Len1024Stack
    public:: CharacterDim5Len2048Stack
    public:: CharacterDim5Len4096Stack
    public:: CharacterDim5Len8192Stack
    public:: CharacterDim6Len1Stack
    public:: CharacterDim6Len2Stack
    public:: CharacterDim6Len4Stack
    public:: CharacterDim6Len8Stack
    public:: CharacterDim6Len16Stack
    public:: CharacterDim6Len32Stack
    public:: CharacterDim6Len64Stack
    public:: CharacterDim6Len128Stack
    public:: CharacterDim6Len256Stack
    public:: CharacterDim6Len512Stack
    public:: CharacterDim6Len1024Stack
    public:: CharacterDim6Len2048Stack
    public:: CharacterDim6Len4096Stack
    public:: CharacterDim6Len8192Stack
    public:: CharacterDim7Len1Stack
    public:: CharacterDim7Len2Stack
    public:: CharacterDim7Len4Stack
    public:: CharacterDim7Len8Stack
    public:: CharacterDim7Len16Stack
    public:: CharacterDim7Len32Stack
    public:: CharacterDim7Len64Stack
    public:: CharacterDim7Len128Stack
    public:: CharacterDim7Len256Stack
    public:: CharacterDim7Len512Stack
    public:: CharacterDim7Len1024Stack
    public:: CharacterDim7Len2048Stack
    public:: CharacterDim7Len4096Stack
    public:: CharacterDim7Len8192Stack

    interface push
      module procedure pushRealDim0KindREAL32
    end interface push

    interface pop
      module procedure popRealDim0KindREAL32
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim0KindREAL32
    end interface is_empty
    interface push
      module procedure pushRealDim0KindREAL64
    end interface push

    interface pop
      module procedure popRealDim0KindREAL64
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim0KindREAL64
    end interface is_empty
    interface push
      module procedure pushRealDim0KindREAL128
    end interface push

    interface pop
      module procedure popRealDim0KindREAL128
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim0KindREAL128
    end interface is_empty
    interface push
      module procedure pushRealDim1KindREAL32
    end interface push

    interface pop
      module procedure popRealDim1KindREAL32
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim1KindREAL32
    end interface is_empty
    interface push
      module procedure pushRealDim1KindREAL64
    end interface push

    interface pop
      module procedure popRealDim1KindREAL64
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim1KindREAL64
    end interface is_empty
    interface push
      module procedure pushRealDim1KindREAL128
    end interface push

    interface pop
      module procedure popRealDim1KindREAL128
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim1KindREAL128
    end interface is_empty
    interface push
      module procedure pushRealDim2KindREAL32
    end interface push

    interface pop
      module procedure popRealDim2KindREAL32
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim2KindREAL32
    end interface is_empty
    interface push
      module procedure pushRealDim2KindREAL64
    end interface push

    interface pop
      module procedure popRealDim2KindREAL64
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim2KindREAL64
    end interface is_empty
    interface push
      module procedure pushRealDim2KindREAL128
    end interface push

    interface pop
      module procedure popRealDim2KindREAL128
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim2KindREAL128
    end interface is_empty
    interface push
      module procedure pushRealDim3KindREAL32
    end interface push

    interface pop
      module procedure popRealDim3KindREAL32
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim3KindREAL32
    end interface is_empty
    interface push
      module procedure pushRealDim3KindREAL64
    end interface push

    interface pop
      module procedure popRealDim3KindREAL64
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim3KindREAL64
    end interface is_empty
    interface push
      module procedure pushRealDim3KindREAL128
    end interface push

    interface pop
      module procedure popRealDim3KindREAL128
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim3KindREAL128
    end interface is_empty
    interface push
      module procedure pushRealDim4KindREAL32
    end interface push

    interface pop
      module procedure popRealDim4KindREAL32
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim4KindREAL32
    end interface is_empty
    interface push
      module procedure pushRealDim4KindREAL64
    end interface push

    interface pop
      module procedure popRealDim4KindREAL64
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim4KindREAL64
    end interface is_empty
    interface push
      module procedure pushRealDim4KindREAL128
    end interface push

    interface pop
      module procedure popRealDim4KindREAL128
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim4KindREAL128
    end interface is_empty
    interface push
      module procedure pushRealDim5KindREAL32
    end interface push

    interface pop
      module procedure popRealDim5KindREAL32
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim5KindREAL32
    end interface is_empty
    interface push
      module procedure pushRealDim5KindREAL64
    end interface push

    interface pop
      module procedure popRealDim5KindREAL64
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim5KindREAL64
    end interface is_empty
    interface push
      module procedure pushRealDim5KindREAL128
    end interface push

    interface pop
      module procedure popRealDim5KindREAL128
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim5KindREAL128
    end interface is_empty
    interface push
      module procedure pushRealDim6KindREAL32
    end interface push

    interface pop
      module procedure popRealDim6KindREAL32
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim6KindREAL32
    end interface is_empty
    interface push
      module procedure pushRealDim6KindREAL64
    end interface push

    interface pop
      module procedure popRealDim6KindREAL64
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim6KindREAL64
    end interface is_empty
    interface push
      module procedure pushRealDim6KindREAL128
    end interface push

    interface pop
      module procedure popRealDim6KindREAL128
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim6KindREAL128
    end interface is_empty
    interface push
      module procedure pushRealDim7KindREAL32
    end interface push

    interface pop
      module procedure popRealDim7KindREAL32
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim7KindREAL32
    end interface is_empty
    interface push
      module procedure pushRealDim7KindREAL64
    end interface push

    interface pop
      module procedure popRealDim7KindREAL64
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim7KindREAL64
    end interface is_empty
    interface push
      module procedure pushRealDim7KindREAL128
    end interface push

    interface pop
      module procedure popRealDim7KindREAL128
    end interface pop

    interface is_empty
      module procedure is_emptyRealDim7KindREAL128
    end interface is_empty
    interface push
      module procedure pushIntegerDim0KindINT8
    end interface push

    interface pop
      module procedure popIntegerDim0KindINT8
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim0KindINT8
    end interface is_empty
    interface push
      module procedure pushIntegerDim0KindINT16
    end interface push

    interface pop
      module procedure popIntegerDim0KindINT16
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim0KindINT16
    end interface is_empty
    interface push
      module procedure pushIntegerDim0KindINT32
    end interface push

    interface pop
      module procedure popIntegerDim0KindINT32
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim0KindINT32
    end interface is_empty
    interface push
      module procedure pushIntegerDim0KindINT64
    end interface push

    interface pop
      module procedure popIntegerDim0KindINT64
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim0KindINT64
    end interface is_empty
    interface push
      module procedure pushIntegerDim1KindINT8
    end interface push

    interface pop
      module procedure popIntegerDim1KindINT8
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim1KindINT8
    end interface is_empty
    interface push
      module procedure pushIntegerDim1KindINT16
    end interface push

    interface pop
      module procedure popIntegerDim1KindINT16
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim1KindINT16
    end interface is_empty
    interface push
      module procedure pushIntegerDim1KindINT32
    end interface push

    interface pop
      module procedure popIntegerDim1KindINT32
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim1KindINT32
    end interface is_empty
    interface push
      module procedure pushIntegerDim1KindINT64
    end interface push

    interface pop
      module procedure popIntegerDim1KindINT64
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim1KindINT64
    end interface is_empty
    interface push
      module procedure pushIntegerDim2KindINT8
    end interface push

    interface pop
      module procedure popIntegerDim2KindINT8
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim2KindINT8
    end interface is_empty
    interface push
      module procedure pushIntegerDim2KindINT16
    end interface push

    interface pop
      module procedure popIntegerDim2KindINT16
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim2KindINT16
    end interface is_empty
    interface push
      module procedure pushIntegerDim2KindINT32
    end interface push

    interface pop
      module procedure popIntegerDim2KindINT32
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim2KindINT32
    end interface is_empty
    interface push
      module procedure pushIntegerDim2KindINT64
    end interface push

    interface pop
      module procedure popIntegerDim2KindINT64
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim2KindINT64
    end interface is_empty
    interface push
      module procedure pushIntegerDim3KindINT8
    end interface push

    interface pop
      module procedure popIntegerDim3KindINT8
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim3KindINT8
    end interface is_empty
    interface push
      module procedure pushIntegerDim3KindINT16
    end interface push

    interface pop
      module procedure popIntegerDim3KindINT16
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim3KindINT16
    end interface is_empty
    interface push
      module procedure pushIntegerDim3KindINT32
    end interface push

    interface pop
      module procedure popIntegerDim3KindINT32
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim3KindINT32
    end interface is_empty
    interface push
      module procedure pushIntegerDim3KindINT64
    end interface push

    interface pop
      module procedure popIntegerDim3KindINT64
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim3KindINT64
    end interface is_empty
    interface push
      module procedure pushIntegerDim4KindINT8
    end interface push

    interface pop
      module procedure popIntegerDim4KindINT8
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim4KindINT8
    end interface is_empty
    interface push
      module procedure pushIntegerDim4KindINT16
    end interface push

    interface pop
      module procedure popIntegerDim4KindINT16
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim4KindINT16
    end interface is_empty
    interface push
      module procedure pushIntegerDim4KindINT32
    end interface push

    interface pop
      module procedure popIntegerDim4KindINT32
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim4KindINT32
    end interface is_empty
    interface push
      module procedure pushIntegerDim4KindINT64
    end interface push

    interface pop
      module procedure popIntegerDim4KindINT64
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim4KindINT64
    end interface is_empty
    interface push
      module procedure pushIntegerDim5KindINT8
    end interface push

    interface pop
      module procedure popIntegerDim5KindINT8
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim5KindINT8
    end interface is_empty
    interface push
      module procedure pushIntegerDim5KindINT16
    end interface push

    interface pop
      module procedure popIntegerDim5KindINT16
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim5KindINT16
    end interface is_empty
    interface push
      module procedure pushIntegerDim5KindINT32
    end interface push

    interface pop
      module procedure popIntegerDim5KindINT32
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim5KindINT32
    end interface is_empty
    interface push
      module procedure pushIntegerDim5KindINT64
    end interface push

    interface pop
      module procedure popIntegerDim5KindINT64
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim5KindINT64
    end interface is_empty
    interface push
      module procedure pushIntegerDim6KindINT8
    end interface push

    interface pop
      module procedure popIntegerDim6KindINT8
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim6KindINT8
    end interface is_empty
    interface push
      module procedure pushIntegerDim6KindINT16
    end interface push

    interface pop
      module procedure popIntegerDim6KindINT16
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim6KindINT16
    end interface is_empty
    interface push
      module procedure pushIntegerDim6KindINT32
    end interface push

    interface pop
      module procedure popIntegerDim6KindINT32
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim6KindINT32
    end interface is_empty
    interface push
      module procedure pushIntegerDim6KindINT64
    end interface push

    interface pop
      module procedure popIntegerDim6KindINT64
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim6KindINT64
    end interface is_empty
    interface push
      module procedure pushIntegerDim7KindINT8
    end interface push

    interface pop
      module procedure popIntegerDim7KindINT8
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim7KindINT8
    end interface is_empty
    interface push
      module procedure pushIntegerDim7KindINT16
    end interface push

    interface pop
      module procedure popIntegerDim7KindINT16
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim7KindINT16
    end interface is_empty
    interface push
      module procedure pushIntegerDim7KindINT32
    end interface push

    interface pop
      module procedure popIntegerDim7KindINT32
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim7KindINT32
    end interface is_empty
    interface push
      module procedure pushIntegerDim7KindINT64
    end interface push

    interface pop
      module procedure popIntegerDim7KindINT64
    end interface pop

    interface is_empty
      module procedure is_emptyIntegerDim7KindINT64
    end interface is_empty
    interface push
      module procedure pushLogicalDim0
    end interface push

    interface pop
      module procedure popLogicalDim0
    end interface pop

    interface is_empty
      module procedure is_emptyLogicalDim0
    end interface is_empty
    interface push
      module procedure pushLogicalDim1
    end interface push

    interface pop
      module procedure popLogicalDim1
    end interface pop

    interface is_empty
      module procedure is_emptyLogicalDim1
    end interface is_empty
    interface push
      module procedure pushLogicalDim2
    end interface push

    interface pop
      module procedure popLogicalDim2
    end interface pop

    interface is_empty
      module procedure is_emptyLogicalDim2
    end interface is_empty
    interface push
      module procedure pushLogicalDim3
    end interface push

    interface pop
      module procedure popLogicalDim3
    end interface pop

    interface is_empty
      module procedure is_emptyLogicalDim3
    end interface is_empty
    interface push
      module procedure pushLogicalDim4
    end interface push

    interface pop
      module procedure popLogicalDim4
    end interface pop

    interface is_empty
      module procedure is_emptyLogicalDim4
    end interface is_empty
    interface push
      module procedure pushLogicalDim5
    end interface push

    interface pop
      module procedure popLogicalDim5
    end interface pop

    interface is_empty
      module procedure is_emptyLogicalDim5
    end interface is_empty
    interface push
      module procedure pushLogicalDim6
    end interface push

    interface pop
      module procedure popLogicalDim6
    end interface pop

    interface is_empty
      module procedure is_emptyLogicalDim6
    end interface is_empty
    interface push
      module procedure pushLogicalDim7
    end interface push

    interface pop
      module procedure popLogicalDim7
    end interface pop

    interface is_empty
      module procedure is_emptyLogicalDim7
    end interface is_empty
    interface push
      module procedure pushComplexDim0KindREAL32
    end interface push

    interface pop
      module procedure popComplexDim0KindREAL32
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim0KindREAL32
    end interface is_empty
    interface push
      module procedure pushComplexDim0KindREAL64
    end interface push

    interface pop
      module procedure popComplexDim0KindREAL64
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim0KindREAL64
    end interface is_empty
    interface push
      module procedure pushComplexDim0KindREAL128
    end interface push

    interface pop
      module procedure popComplexDim0KindREAL128
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim0KindREAL128
    end interface is_empty
    interface push
      module procedure pushComplexDim1KindREAL32
    end interface push

    interface pop
      module procedure popComplexDim1KindREAL32
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim1KindREAL32
    end interface is_empty
    interface push
      module procedure pushComplexDim1KindREAL64
    end interface push

    interface pop
      module procedure popComplexDim1KindREAL64
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim1KindREAL64
    end interface is_empty
    interface push
      module procedure pushComplexDim1KindREAL128
    end interface push

    interface pop
      module procedure popComplexDim1KindREAL128
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim1KindREAL128
    end interface is_empty
    interface push
      module procedure pushComplexDim2KindREAL32
    end interface push

    interface pop
      module procedure popComplexDim2KindREAL32
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim2KindREAL32
    end interface is_empty
    interface push
      module procedure pushComplexDim2KindREAL64
    end interface push

    interface pop
      module procedure popComplexDim2KindREAL64
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim2KindREAL64
    end interface is_empty
    interface push
      module procedure pushComplexDim2KindREAL128
    end interface push

    interface pop
      module procedure popComplexDim2KindREAL128
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim2KindREAL128
    end interface is_empty
    interface push
      module procedure pushComplexDim3KindREAL32
    end interface push

    interface pop
      module procedure popComplexDim3KindREAL32
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim3KindREAL32
    end interface is_empty
    interface push
      module procedure pushComplexDim3KindREAL64
    end interface push

    interface pop
      module procedure popComplexDim3KindREAL64
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim3KindREAL64
    end interface is_empty
    interface push
      module procedure pushComplexDim3KindREAL128
    end interface push

    interface pop
      module procedure popComplexDim3KindREAL128
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim3KindREAL128
    end interface is_empty
    interface push
      module procedure pushComplexDim4KindREAL32
    end interface push

    interface pop
      module procedure popComplexDim4KindREAL32
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim4KindREAL32
    end interface is_empty
    interface push
      module procedure pushComplexDim4KindREAL64
    end interface push

    interface pop
      module procedure popComplexDim4KindREAL64
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim4KindREAL64
    end interface is_empty
    interface push
      module procedure pushComplexDim4KindREAL128
    end interface push

    interface pop
      module procedure popComplexDim4KindREAL128
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim4KindREAL128
    end interface is_empty
    interface push
      module procedure pushComplexDim5KindREAL32
    end interface push

    interface pop
      module procedure popComplexDim5KindREAL32
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim5KindREAL32
    end interface is_empty
    interface push
      module procedure pushComplexDim5KindREAL64
    end interface push

    interface pop
      module procedure popComplexDim5KindREAL64
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim5KindREAL64
    end interface is_empty
    interface push
      module procedure pushComplexDim5KindREAL128
    end interface push

    interface pop
      module procedure popComplexDim5KindREAL128
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim5KindREAL128
    end interface is_empty
    interface push
      module procedure pushComplexDim6KindREAL32
    end interface push

    interface pop
      module procedure popComplexDim6KindREAL32
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim6KindREAL32
    end interface is_empty
    interface push
      module procedure pushComplexDim6KindREAL64
    end interface push

    interface pop
      module procedure popComplexDim6KindREAL64
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim6KindREAL64
    end interface is_empty
    interface push
      module procedure pushComplexDim6KindREAL128
    end interface push

    interface pop
      module procedure popComplexDim6KindREAL128
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim6KindREAL128
    end interface is_empty
    interface push
      module procedure pushComplexDim7KindREAL32
    end interface push

    interface pop
      module procedure popComplexDim7KindREAL32
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim7KindREAL32
    end interface is_empty
    interface push
      module procedure pushComplexDim7KindREAL64
    end interface push

    interface pop
      module procedure popComplexDim7KindREAL64
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim7KindREAL64
    end interface is_empty
    interface push
      module procedure pushComplexDim7KindREAL128
    end interface push

    interface pop
      module procedure popComplexDim7KindREAL128
    end interface pop

    interface is_empty
      module procedure is_emptyComplexDim7KindREAL128
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len1
    end interface push

    interface pop
      module procedure popCharacterDim0Len1
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim0Len1
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len2
    end interface push

    interface pop
      module procedure popCharacterDim0Len2
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim0Len2
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len4
    end interface push

    interface pop
      module procedure popCharacterDim0Len4
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim0Len4
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len8
    end interface push

    interface pop
      module procedure popCharacterDim0Len8
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim0Len8
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len16
    end interface push

    interface pop
      module procedure popCharacterDim0Len16
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim0Len16
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len32
    end interface push

    interface pop
      module procedure popCharacterDim0Len32
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim0Len32
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len64
    end interface push

    interface pop
      module procedure popCharacterDim0Len64
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim0Len64
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len128
    end interface push

    interface pop
      module procedure popCharacterDim0Len128
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim0Len128
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len256
    end interface push

    interface pop
      module procedure popCharacterDim0Len256
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim0Len256
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len512
    end interface push

    interface pop
      module procedure popCharacterDim0Len512
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim0Len512
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len1024
    end interface push

    interface pop
      module procedure popCharacterDim0Len1024
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim0Len1024
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len2048
    end interface push

    interface pop
      module procedure popCharacterDim0Len2048
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim0Len2048
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len4096
    end interface push

    interface pop
      module procedure popCharacterDim0Len4096
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim0Len4096
    end interface is_empty
    interface push
      module procedure pushCharacterDim0Len8192
    end interface push

    interface pop
      module procedure popCharacterDim0Len8192
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim0Len8192
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len1
    end interface push

    interface pop
      module procedure popCharacterDim1Len1
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim1Len1
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len2
    end interface push

    interface pop
      module procedure popCharacterDim1Len2
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim1Len2
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len4
    end interface push

    interface pop
      module procedure popCharacterDim1Len4
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim1Len4
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len8
    end interface push

    interface pop
      module procedure popCharacterDim1Len8
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim1Len8
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len16
    end interface push

    interface pop
      module procedure popCharacterDim1Len16
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim1Len16
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len32
    end interface push

    interface pop
      module procedure popCharacterDim1Len32
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim1Len32
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len64
    end interface push

    interface pop
      module procedure popCharacterDim1Len64
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim1Len64
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len128
    end interface push

    interface pop
      module procedure popCharacterDim1Len128
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim1Len128
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len256
    end interface push

    interface pop
      module procedure popCharacterDim1Len256
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim1Len256
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len512
    end interface push

    interface pop
      module procedure popCharacterDim1Len512
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim1Len512
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len1024
    end interface push

    interface pop
      module procedure popCharacterDim1Len1024
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim1Len1024
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len2048
    end interface push

    interface pop
      module procedure popCharacterDim1Len2048
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim1Len2048
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len4096
    end interface push

    interface pop
      module procedure popCharacterDim1Len4096
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim1Len4096
    end interface is_empty
    interface push
      module procedure pushCharacterDim1Len8192
    end interface push

    interface pop
      module procedure popCharacterDim1Len8192
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim1Len8192
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len1
    end interface push

    interface pop
      module procedure popCharacterDim2Len1
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim2Len1
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len2
    end interface push

    interface pop
      module procedure popCharacterDim2Len2
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim2Len2
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len4
    end interface push

    interface pop
      module procedure popCharacterDim2Len4
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim2Len4
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len8
    end interface push

    interface pop
      module procedure popCharacterDim2Len8
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim2Len8
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len16
    end interface push

    interface pop
      module procedure popCharacterDim2Len16
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim2Len16
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len32
    end interface push

    interface pop
      module procedure popCharacterDim2Len32
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim2Len32
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len64
    end interface push

    interface pop
      module procedure popCharacterDim2Len64
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim2Len64
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len128
    end interface push

    interface pop
      module procedure popCharacterDim2Len128
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim2Len128
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len256
    end interface push

    interface pop
      module procedure popCharacterDim2Len256
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim2Len256
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len512
    end interface push

    interface pop
      module procedure popCharacterDim2Len512
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim2Len512
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len1024
    end interface push

    interface pop
      module procedure popCharacterDim2Len1024
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim2Len1024
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len2048
    end interface push

    interface pop
      module procedure popCharacterDim2Len2048
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim2Len2048
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len4096
    end interface push

    interface pop
      module procedure popCharacterDim2Len4096
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim2Len4096
    end interface is_empty
    interface push
      module procedure pushCharacterDim2Len8192
    end interface push

    interface pop
      module procedure popCharacterDim2Len8192
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim2Len8192
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len1
    end interface push

    interface pop
      module procedure popCharacterDim3Len1
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim3Len1
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len2
    end interface push

    interface pop
      module procedure popCharacterDim3Len2
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim3Len2
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len4
    end interface push

    interface pop
      module procedure popCharacterDim3Len4
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim3Len4
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len8
    end interface push

    interface pop
      module procedure popCharacterDim3Len8
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim3Len8
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len16
    end interface push

    interface pop
      module procedure popCharacterDim3Len16
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim3Len16
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len32
    end interface push

    interface pop
      module procedure popCharacterDim3Len32
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim3Len32
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len64
    end interface push

    interface pop
      module procedure popCharacterDim3Len64
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim3Len64
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len128
    end interface push

    interface pop
      module procedure popCharacterDim3Len128
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim3Len128
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len256
    end interface push

    interface pop
      module procedure popCharacterDim3Len256
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim3Len256
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len512
    end interface push

    interface pop
      module procedure popCharacterDim3Len512
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim3Len512
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len1024
    end interface push

    interface pop
      module procedure popCharacterDim3Len1024
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim3Len1024
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len2048
    end interface push

    interface pop
      module procedure popCharacterDim3Len2048
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim3Len2048
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len4096
    end interface push

    interface pop
      module procedure popCharacterDim3Len4096
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim3Len4096
    end interface is_empty
    interface push
      module procedure pushCharacterDim3Len8192
    end interface push

    interface pop
      module procedure popCharacterDim3Len8192
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim3Len8192
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len1
    end interface push

    interface pop
      module procedure popCharacterDim4Len1
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim4Len1
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len2
    end interface push

    interface pop
      module procedure popCharacterDim4Len2
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim4Len2
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len4
    end interface push

    interface pop
      module procedure popCharacterDim4Len4
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim4Len4
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len8
    end interface push

    interface pop
      module procedure popCharacterDim4Len8
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim4Len8
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len16
    end interface push

    interface pop
      module procedure popCharacterDim4Len16
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim4Len16
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len32
    end interface push

    interface pop
      module procedure popCharacterDim4Len32
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim4Len32
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len64
    end interface push

    interface pop
      module procedure popCharacterDim4Len64
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim4Len64
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len128
    end interface push

    interface pop
      module procedure popCharacterDim4Len128
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim4Len128
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len256
    end interface push

    interface pop
      module procedure popCharacterDim4Len256
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim4Len256
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len512
    end interface push

    interface pop
      module procedure popCharacterDim4Len512
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim4Len512
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len1024
    end interface push

    interface pop
      module procedure popCharacterDim4Len1024
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim4Len1024
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len2048
    end interface push

    interface pop
      module procedure popCharacterDim4Len2048
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim4Len2048
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len4096
    end interface push

    interface pop
      module procedure popCharacterDim4Len4096
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim4Len4096
    end interface is_empty
    interface push
      module procedure pushCharacterDim4Len8192
    end interface push

    interface pop
      module procedure popCharacterDim4Len8192
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim4Len8192
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len1
    end interface push

    interface pop
      module procedure popCharacterDim5Len1
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim5Len1
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len2
    end interface push

    interface pop
      module procedure popCharacterDim5Len2
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim5Len2
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len4
    end interface push

    interface pop
      module procedure popCharacterDim5Len4
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim5Len4
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len8
    end interface push

    interface pop
      module procedure popCharacterDim5Len8
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim5Len8
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len16
    end interface push

    interface pop
      module procedure popCharacterDim5Len16
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim5Len16
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len32
    end interface push

    interface pop
      module procedure popCharacterDim5Len32
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim5Len32
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len64
    end interface push

    interface pop
      module procedure popCharacterDim5Len64
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim5Len64
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len128
    end interface push

    interface pop
      module procedure popCharacterDim5Len128
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim5Len128
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len256
    end interface push

    interface pop
      module procedure popCharacterDim5Len256
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim5Len256
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len512
    end interface push

    interface pop
      module procedure popCharacterDim5Len512
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim5Len512
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len1024
    end interface push

    interface pop
      module procedure popCharacterDim5Len1024
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim5Len1024
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len2048
    end interface push

    interface pop
      module procedure popCharacterDim5Len2048
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim5Len2048
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len4096
    end interface push

    interface pop
      module procedure popCharacterDim5Len4096
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim5Len4096
    end interface is_empty
    interface push
      module procedure pushCharacterDim5Len8192
    end interface push

    interface pop
      module procedure popCharacterDim5Len8192
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim5Len8192
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len1
    end interface push

    interface pop
      module procedure popCharacterDim6Len1
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim6Len1
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len2
    end interface push

    interface pop
      module procedure popCharacterDim6Len2
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim6Len2
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len4
    end interface push

    interface pop
      module procedure popCharacterDim6Len4
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim6Len4
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len8
    end interface push

    interface pop
      module procedure popCharacterDim6Len8
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim6Len8
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len16
    end interface push

    interface pop
      module procedure popCharacterDim6Len16
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim6Len16
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len32
    end interface push

    interface pop
      module procedure popCharacterDim6Len32
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim6Len32
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len64
    end interface push

    interface pop
      module procedure popCharacterDim6Len64
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim6Len64
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len128
    end interface push

    interface pop
      module procedure popCharacterDim6Len128
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim6Len128
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len256
    end interface push

    interface pop
      module procedure popCharacterDim6Len256
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim6Len256
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len512
    end interface push

    interface pop
      module procedure popCharacterDim6Len512
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim6Len512
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len1024
    end interface push

    interface pop
      module procedure popCharacterDim6Len1024
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim6Len1024
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len2048
    end interface push

    interface pop
      module procedure popCharacterDim6Len2048
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim6Len2048
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len4096
    end interface push

    interface pop
      module procedure popCharacterDim6Len4096
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim6Len4096
    end interface is_empty
    interface push
      module procedure pushCharacterDim6Len8192
    end interface push

    interface pop
      module procedure popCharacterDim6Len8192
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim6Len8192
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len1
    end interface push

    interface pop
      module procedure popCharacterDim7Len1
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim7Len1
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len2
    end interface push

    interface pop
      module procedure popCharacterDim7Len2
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim7Len2
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len4
    end interface push

    interface pop
      module procedure popCharacterDim7Len4
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim7Len4
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len8
    end interface push

    interface pop
      module procedure popCharacterDim7Len8
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim7Len8
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len16
    end interface push

    interface pop
      module procedure popCharacterDim7Len16
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim7Len16
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len32
    end interface push

    interface pop
      module procedure popCharacterDim7Len32
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim7Len32
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len64
    end interface push

    interface pop
      module procedure popCharacterDim7Len64
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim7Len64
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len128
    end interface push

    interface pop
      module procedure popCharacterDim7Len128
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim7Len128
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len256
    end interface push

    interface pop
      module procedure popCharacterDim7Len256
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim7Len256
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len512
    end interface push

    interface pop
      module procedure popCharacterDim7Len512
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim7Len512
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len1024
    end interface push

    interface pop
      module procedure popCharacterDim7Len1024
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim7Len1024
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len2048
    end interface push

    interface pop
      module procedure popCharacterDim7Len2048
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim7Len2048
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len4096
    end interface push

    interface pop
      module procedure popCharacterDim7Len4096
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim7Len4096
    end interface is_empty
    interface push
      module procedure pushCharacterDim7Len8192
    end interface push

    interface pop
      module procedure popCharacterDim7Len8192
    end interface pop

    interface is_empty
      module procedure is_emptyCharacterDim7Len8192
    end interface is_empty

    type RealDim0KindREAL32Stack
      type(RealDim0KindREAL32StackNode), pointer:: entry => null()
    end type RealDim0KindREAL32Stack

    type RealDim0KindREAL32StackNode
      Real(kind = REAL32):: val
      type(RealDim0KindREAL32StackNode), pointer:: prev => null()
    end type RealDim0KindREAL32StackNode
    type RealDim0KindREAL64Stack
      type(RealDim0KindREAL64StackNode), pointer:: entry => null()
    end type RealDim0KindREAL64Stack

    type RealDim0KindREAL64StackNode
      Real(kind = REAL64):: val
      type(RealDim0KindREAL64StackNode), pointer:: prev => null()
    end type RealDim0KindREAL64StackNode
    type RealDim0KindREAL128Stack
      type(RealDim0KindREAL128StackNode), pointer:: entry => null()
    end type RealDim0KindREAL128Stack

    type RealDim0KindREAL128StackNode
      Real(kind = REAL128):: val
      type(RealDim0KindREAL128StackNode), pointer:: prev => null()
    end type RealDim0KindREAL128StackNode
    type RealDim1KindREAL32Stack
      type(RealDim1KindREAL32StackNode), pointer:: entry => null()
    end type RealDim1KindREAL32Stack

    type RealDim1KindREAL32StackNode
      Real(kind = REAL32), dimension(:), allocatable:: val
      type(RealDim1KindREAL32StackNode), pointer:: prev => null()
    end type RealDim1KindREAL32StackNode
    type RealDim1KindREAL64Stack
      type(RealDim1KindREAL64StackNode), pointer:: entry => null()
    end type RealDim1KindREAL64Stack

    type RealDim1KindREAL64StackNode
      Real(kind = REAL64), dimension(:), allocatable:: val
      type(RealDim1KindREAL64StackNode), pointer:: prev => null()
    end type RealDim1KindREAL64StackNode
    type RealDim1KindREAL128Stack
      type(RealDim1KindREAL128StackNode), pointer:: entry => null()
    end type RealDim1KindREAL128Stack

    type RealDim1KindREAL128StackNode
      Real(kind = REAL128), dimension(:), allocatable:: val
      type(RealDim1KindREAL128StackNode), pointer:: prev => null()
    end type RealDim1KindREAL128StackNode
    type RealDim2KindREAL32Stack
      type(RealDim2KindREAL32StackNode), pointer:: entry => null()
    end type RealDim2KindREAL32Stack

    type RealDim2KindREAL32StackNode
      Real(kind = REAL32), dimension(:, :), allocatable:: val
      type(RealDim2KindREAL32StackNode), pointer:: prev => null()
    end type RealDim2KindREAL32StackNode
    type RealDim2KindREAL64Stack
      type(RealDim2KindREAL64StackNode), pointer:: entry => null()
    end type RealDim2KindREAL64Stack

    type RealDim2KindREAL64StackNode
      Real(kind = REAL64), dimension(:, :), allocatable:: val
      type(RealDim2KindREAL64StackNode), pointer:: prev => null()
    end type RealDim2KindREAL64StackNode
    type RealDim2KindREAL128Stack
      type(RealDim2KindREAL128StackNode), pointer:: entry => null()
    end type RealDim2KindREAL128Stack

    type RealDim2KindREAL128StackNode
      Real(kind = REAL128), dimension(:, :), allocatable:: val
      type(RealDim2KindREAL128StackNode), pointer:: prev => null()
    end type RealDim2KindREAL128StackNode
    type RealDim3KindREAL32Stack
      type(RealDim3KindREAL32StackNode), pointer:: entry => null()
    end type RealDim3KindREAL32Stack

    type RealDim3KindREAL32StackNode
      Real(kind = REAL32), dimension(:, :, :), allocatable:: val
      type(RealDim3KindREAL32StackNode), pointer:: prev => null()
    end type RealDim3KindREAL32StackNode
    type RealDim3KindREAL64Stack
      type(RealDim3KindREAL64StackNode), pointer:: entry => null()
    end type RealDim3KindREAL64Stack

    type RealDim3KindREAL64StackNode
      Real(kind = REAL64), dimension(:, :, :), allocatable:: val
      type(RealDim3KindREAL64StackNode), pointer:: prev => null()
    end type RealDim3KindREAL64StackNode
    type RealDim3KindREAL128Stack
      type(RealDim3KindREAL128StackNode), pointer:: entry => null()
    end type RealDim3KindREAL128Stack

    type RealDim3KindREAL128StackNode
      Real(kind = REAL128), dimension(:, :, :), allocatable:: val
      type(RealDim3KindREAL128StackNode), pointer:: prev => null()
    end type RealDim3KindREAL128StackNode
    type RealDim4KindREAL32Stack
      type(RealDim4KindREAL32StackNode), pointer:: entry => null()
    end type RealDim4KindREAL32Stack

    type RealDim4KindREAL32StackNode
      Real(kind = REAL32), dimension(:, :, :, :), allocatable:: val
      type(RealDim4KindREAL32StackNode), pointer:: prev => null()
    end type RealDim4KindREAL32StackNode
    type RealDim4KindREAL64Stack
      type(RealDim4KindREAL64StackNode), pointer:: entry => null()
    end type RealDim4KindREAL64Stack

    type RealDim4KindREAL64StackNode
      Real(kind = REAL64), dimension(:, :, :, :), allocatable:: val
      type(RealDim4KindREAL64StackNode), pointer:: prev => null()
    end type RealDim4KindREAL64StackNode
    type RealDim4KindREAL128Stack
      type(RealDim4KindREAL128StackNode), pointer:: entry => null()
    end type RealDim4KindREAL128Stack

    type RealDim4KindREAL128StackNode
      Real(kind = REAL128), dimension(:, :, :, :), allocatable:: val
      type(RealDim4KindREAL128StackNode), pointer:: prev => null()
    end type RealDim4KindREAL128StackNode
    type RealDim5KindREAL32Stack
      type(RealDim5KindREAL32StackNode), pointer:: entry => null()
    end type RealDim5KindREAL32Stack

    type RealDim5KindREAL32StackNode
      Real(kind = REAL32), dimension(:, :, :, :, :), allocatable:: val
      type(RealDim5KindREAL32StackNode), pointer:: prev => null()
    end type RealDim5KindREAL32StackNode
    type RealDim5KindREAL64Stack
      type(RealDim5KindREAL64StackNode), pointer:: entry => null()
    end type RealDim5KindREAL64Stack

    type RealDim5KindREAL64StackNode
      Real(kind = REAL64), dimension(:, :, :, :, :), allocatable:: val
      type(RealDim5KindREAL64StackNode), pointer:: prev => null()
    end type RealDim5KindREAL64StackNode
    type RealDim5KindREAL128Stack
      type(RealDim5KindREAL128StackNode), pointer:: entry => null()
    end type RealDim5KindREAL128Stack

    type RealDim5KindREAL128StackNode
      Real(kind = REAL128), dimension(:, :, :, :, :), allocatable:: val
      type(RealDim5KindREAL128StackNode), pointer:: prev => null()
    end type RealDim5KindREAL128StackNode
    type RealDim6KindREAL32Stack
      type(RealDim6KindREAL32StackNode), pointer:: entry => null()
    end type RealDim6KindREAL32Stack

    type RealDim6KindREAL32StackNode
      Real(kind = REAL32), dimension(:, :, :, :, :, :), allocatable:: val
      type(RealDim6KindREAL32StackNode), pointer:: prev => null()
    end type RealDim6KindREAL32StackNode
    type RealDim6KindREAL64Stack
      type(RealDim6KindREAL64StackNode), pointer:: entry => null()
    end type RealDim6KindREAL64Stack

    type RealDim6KindREAL64StackNode
      Real(kind = REAL64), dimension(:, :, :, :, :, :), allocatable:: val
      type(RealDim6KindREAL64StackNode), pointer:: prev => null()
    end type RealDim6KindREAL64StackNode
    type RealDim6KindREAL128Stack
      type(RealDim6KindREAL128StackNode), pointer:: entry => null()
    end type RealDim6KindREAL128Stack

    type RealDim6KindREAL128StackNode
      Real(kind = REAL128), dimension(:, :, :, :, :, :), allocatable:: val
      type(RealDim6KindREAL128StackNode), pointer:: prev => null()
    end type RealDim6KindREAL128StackNode
    type RealDim7KindREAL32Stack
      type(RealDim7KindREAL32StackNode), pointer:: entry => null()
    end type RealDim7KindREAL32Stack

    type RealDim7KindREAL32StackNode
      Real(kind = REAL32), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(RealDim7KindREAL32StackNode), pointer:: prev => null()
    end type RealDim7KindREAL32StackNode
    type RealDim7KindREAL64Stack
      type(RealDim7KindREAL64StackNode), pointer:: entry => null()
    end type RealDim7KindREAL64Stack

    type RealDim7KindREAL64StackNode
      Real(kind = REAL64), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(RealDim7KindREAL64StackNode), pointer:: prev => null()
    end type RealDim7KindREAL64StackNode
    type RealDim7KindREAL128Stack
      type(RealDim7KindREAL128StackNode), pointer:: entry => null()
    end type RealDim7KindREAL128Stack

    type RealDim7KindREAL128StackNode
      Real(kind = REAL128), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(RealDim7KindREAL128StackNode), pointer:: prev => null()
    end type RealDim7KindREAL128StackNode
    type IntegerDim0KindINT8Stack
      type(IntegerDim0KindINT8StackNode), pointer:: entry => null()
    end type IntegerDim0KindINT8Stack

    type IntegerDim0KindINT8StackNode
      Integer(kind = INT8):: val
      type(IntegerDim0KindINT8StackNode), pointer:: prev => null()
    end type IntegerDim0KindINT8StackNode
    type IntegerDim0KindINT16Stack
      type(IntegerDim0KindINT16StackNode), pointer:: entry => null()
    end type IntegerDim0KindINT16Stack

    type IntegerDim0KindINT16StackNode
      Integer(kind = INT16):: val
      type(IntegerDim0KindINT16StackNode), pointer:: prev => null()
    end type IntegerDim0KindINT16StackNode
    type IntegerDim0KindINT32Stack
      type(IntegerDim0KindINT32StackNode), pointer:: entry => null()
    end type IntegerDim0KindINT32Stack

    type IntegerDim0KindINT32StackNode
      Integer(kind = INT32):: val
      type(IntegerDim0KindINT32StackNode), pointer:: prev => null()
    end type IntegerDim0KindINT32StackNode
    type IntegerDim0KindINT64Stack
      type(IntegerDim0KindINT64StackNode), pointer:: entry => null()
    end type IntegerDim0KindINT64Stack

    type IntegerDim0KindINT64StackNode
      Integer(kind = INT64):: val
      type(IntegerDim0KindINT64StackNode), pointer:: prev => null()
    end type IntegerDim0KindINT64StackNode
    type IntegerDim1KindINT8Stack
      type(IntegerDim1KindINT8StackNode), pointer:: entry => null()
    end type IntegerDim1KindINT8Stack

    type IntegerDim1KindINT8StackNode
      Integer(kind = INT8), dimension(:), allocatable:: val
      type(IntegerDim1KindINT8StackNode), pointer:: prev => null()
    end type IntegerDim1KindINT8StackNode
    type IntegerDim1KindINT16Stack
      type(IntegerDim1KindINT16StackNode), pointer:: entry => null()
    end type IntegerDim1KindINT16Stack

    type IntegerDim1KindINT16StackNode
      Integer(kind = INT16), dimension(:), allocatable:: val
      type(IntegerDim1KindINT16StackNode), pointer:: prev => null()
    end type IntegerDim1KindINT16StackNode
    type IntegerDim1KindINT32Stack
      type(IntegerDim1KindINT32StackNode), pointer:: entry => null()
    end type IntegerDim1KindINT32Stack

    type IntegerDim1KindINT32StackNode
      Integer(kind = INT32), dimension(:), allocatable:: val
      type(IntegerDim1KindINT32StackNode), pointer:: prev => null()
    end type IntegerDim1KindINT32StackNode
    type IntegerDim1KindINT64Stack
      type(IntegerDim1KindINT64StackNode), pointer:: entry => null()
    end type IntegerDim1KindINT64Stack

    type IntegerDim1KindINT64StackNode
      Integer(kind = INT64), dimension(:), allocatable:: val
      type(IntegerDim1KindINT64StackNode), pointer:: prev => null()
    end type IntegerDim1KindINT64StackNode
    type IntegerDim2KindINT8Stack
      type(IntegerDim2KindINT8StackNode), pointer:: entry => null()
    end type IntegerDim2KindINT8Stack

    type IntegerDim2KindINT8StackNode
      Integer(kind = INT8), dimension(:, :), allocatable:: val
      type(IntegerDim2KindINT8StackNode), pointer:: prev => null()
    end type IntegerDim2KindINT8StackNode
    type IntegerDim2KindINT16Stack
      type(IntegerDim2KindINT16StackNode), pointer:: entry => null()
    end type IntegerDim2KindINT16Stack

    type IntegerDim2KindINT16StackNode
      Integer(kind = INT16), dimension(:, :), allocatable:: val
      type(IntegerDim2KindINT16StackNode), pointer:: prev => null()
    end type IntegerDim2KindINT16StackNode
    type IntegerDim2KindINT32Stack
      type(IntegerDim2KindINT32StackNode), pointer:: entry => null()
    end type IntegerDim2KindINT32Stack

    type IntegerDim2KindINT32StackNode
      Integer(kind = INT32), dimension(:, :), allocatable:: val
      type(IntegerDim2KindINT32StackNode), pointer:: prev => null()
    end type IntegerDim2KindINT32StackNode
    type IntegerDim2KindINT64Stack
      type(IntegerDim2KindINT64StackNode), pointer:: entry => null()
    end type IntegerDim2KindINT64Stack

    type IntegerDim2KindINT64StackNode
      Integer(kind = INT64), dimension(:, :), allocatable:: val
      type(IntegerDim2KindINT64StackNode), pointer:: prev => null()
    end type IntegerDim2KindINT64StackNode
    type IntegerDim3KindINT8Stack
      type(IntegerDim3KindINT8StackNode), pointer:: entry => null()
    end type IntegerDim3KindINT8Stack

    type IntegerDim3KindINT8StackNode
      Integer(kind = INT8), dimension(:, :, :), allocatable:: val
      type(IntegerDim3KindINT8StackNode), pointer:: prev => null()
    end type IntegerDim3KindINT8StackNode
    type IntegerDim3KindINT16Stack
      type(IntegerDim3KindINT16StackNode), pointer:: entry => null()
    end type IntegerDim3KindINT16Stack

    type IntegerDim3KindINT16StackNode
      Integer(kind = INT16), dimension(:, :, :), allocatable:: val
      type(IntegerDim3KindINT16StackNode), pointer:: prev => null()
    end type IntegerDim3KindINT16StackNode
    type IntegerDim3KindINT32Stack
      type(IntegerDim3KindINT32StackNode), pointer:: entry => null()
    end type IntegerDim3KindINT32Stack

    type IntegerDim3KindINT32StackNode
      Integer(kind = INT32), dimension(:, :, :), allocatable:: val
      type(IntegerDim3KindINT32StackNode), pointer:: prev => null()
    end type IntegerDim3KindINT32StackNode
    type IntegerDim3KindINT64Stack
      type(IntegerDim3KindINT64StackNode), pointer:: entry => null()
    end type IntegerDim3KindINT64Stack

    type IntegerDim3KindINT64StackNode
      Integer(kind = INT64), dimension(:, :, :), allocatable:: val
      type(IntegerDim3KindINT64StackNode), pointer:: prev => null()
    end type IntegerDim3KindINT64StackNode
    type IntegerDim4KindINT8Stack
      type(IntegerDim4KindINT8StackNode), pointer:: entry => null()
    end type IntegerDim4KindINT8Stack

    type IntegerDim4KindINT8StackNode
      Integer(kind = INT8), dimension(:, :, :, :), allocatable:: val
      type(IntegerDim4KindINT8StackNode), pointer:: prev => null()
    end type IntegerDim4KindINT8StackNode
    type IntegerDim4KindINT16Stack
      type(IntegerDim4KindINT16StackNode), pointer:: entry => null()
    end type IntegerDim4KindINT16Stack

    type IntegerDim4KindINT16StackNode
      Integer(kind = INT16), dimension(:, :, :, :), allocatable:: val
      type(IntegerDim4KindINT16StackNode), pointer:: prev => null()
    end type IntegerDim4KindINT16StackNode
    type IntegerDim4KindINT32Stack
      type(IntegerDim4KindINT32StackNode), pointer:: entry => null()
    end type IntegerDim4KindINT32Stack

    type IntegerDim4KindINT32StackNode
      Integer(kind = INT32), dimension(:, :, :, :), allocatable:: val
      type(IntegerDim4KindINT32StackNode), pointer:: prev => null()
    end type IntegerDim4KindINT32StackNode
    type IntegerDim4KindINT64Stack
      type(IntegerDim4KindINT64StackNode), pointer:: entry => null()
    end type IntegerDim4KindINT64Stack

    type IntegerDim4KindINT64StackNode
      Integer(kind = INT64), dimension(:, :, :, :), allocatable:: val
      type(IntegerDim4KindINT64StackNode), pointer:: prev => null()
    end type IntegerDim4KindINT64StackNode
    type IntegerDim5KindINT8Stack
      type(IntegerDim5KindINT8StackNode), pointer:: entry => null()
    end type IntegerDim5KindINT8Stack

    type IntegerDim5KindINT8StackNode
      Integer(kind = INT8), dimension(:, :, :, :, :), allocatable:: val
      type(IntegerDim5KindINT8StackNode), pointer:: prev => null()
    end type IntegerDim5KindINT8StackNode
    type IntegerDim5KindINT16Stack
      type(IntegerDim5KindINT16StackNode), pointer:: entry => null()
    end type IntegerDim5KindINT16Stack

    type IntegerDim5KindINT16StackNode
      Integer(kind = INT16), dimension(:, :, :, :, :), allocatable:: val
      type(IntegerDim5KindINT16StackNode), pointer:: prev => null()
    end type IntegerDim5KindINT16StackNode
    type IntegerDim5KindINT32Stack
      type(IntegerDim5KindINT32StackNode), pointer:: entry => null()
    end type IntegerDim5KindINT32Stack

    type IntegerDim5KindINT32StackNode
      Integer(kind = INT32), dimension(:, :, :, :, :), allocatable:: val
      type(IntegerDim5KindINT32StackNode), pointer:: prev => null()
    end type IntegerDim5KindINT32StackNode
    type IntegerDim5KindINT64Stack
      type(IntegerDim5KindINT64StackNode), pointer:: entry => null()
    end type IntegerDim5KindINT64Stack

    type IntegerDim5KindINT64StackNode
      Integer(kind = INT64), dimension(:, :, :, :, :), allocatable:: val
      type(IntegerDim5KindINT64StackNode), pointer:: prev => null()
    end type IntegerDim5KindINT64StackNode
    type IntegerDim6KindINT8Stack
      type(IntegerDim6KindINT8StackNode), pointer:: entry => null()
    end type IntegerDim6KindINT8Stack

    type IntegerDim6KindINT8StackNode
      Integer(kind = INT8), dimension(:, :, :, :, :, :), allocatable:: val
      type(IntegerDim6KindINT8StackNode), pointer:: prev => null()
    end type IntegerDim6KindINT8StackNode
    type IntegerDim6KindINT16Stack
      type(IntegerDim6KindINT16StackNode), pointer:: entry => null()
    end type IntegerDim6KindINT16Stack

    type IntegerDim6KindINT16StackNode
      Integer(kind = INT16), dimension(:, :, :, :, :, :), allocatable:: val
      type(IntegerDim6KindINT16StackNode), pointer:: prev => null()
    end type IntegerDim6KindINT16StackNode
    type IntegerDim6KindINT32Stack
      type(IntegerDim6KindINT32StackNode), pointer:: entry => null()
    end type IntegerDim6KindINT32Stack

    type IntegerDim6KindINT32StackNode
      Integer(kind = INT32), dimension(:, :, :, :, :, :), allocatable:: val
      type(IntegerDim6KindINT32StackNode), pointer:: prev => null()
    end type IntegerDim6KindINT32StackNode
    type IntegerDim6KindINT64Stack
      type(IntegerDim6KindINT64StackNode), pointer:: entry => null()
    end type IntegerDim6KindINT64Stack

    type IntegerDim6KindINT64StackNode
      Integer(kind = INT64), dimension(:, :, :, :, :, :), allocatable:: val
      type(IntegerDim6KindINT64StackNode), pointer:: prev => null()
    end type IntegerDim6KindINT64StackNode
    type IntegerDim7KindINT8Stack
      type(IntegerDim7KindINT8StackNode), pointer:: entry => null()
    end type IntegerDim7KindINT8Stack

    type IntegerDim7KindINT8StackNode
      Integer(kind = INT8), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(IntegerDim7KindINT8StackNode), pointer:: prev => null()
    end type IntegerDim7KindINT8StackNode
    type IntegerDim7KindINT16Stack
      type(IntegerDim7KindINT16StackNode), pointer:: entry => null()
    end type IntegerDim7KindINT16Stack

    type IntegerDim7KindINT16StackNode
      Integer(kind = INT16), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(IntegerDim7KindINT16StackNode), pointer:: prev => null()
    end type IntegerDim7KindINT16StackNode
    type IntegerDim7KindINT32Stack
      type(IntegerDim7KindINT32StackNode), pointer:: entry => null()
    end type IntegerDim7KindINT32Stack

    type IntegerDim7KindINT32StackNode
      Integer(kind = INT32), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(IntegerDim7KindINT32StackNode), pointer:: prev => null()
    end type IntegerDim7KindINT32StackNode
    type IntegerDim7KindINT64Stack
      type(IntegerDim7KindINT64StackNode), pointer:: entry => null()
    end type IntegerDim7KindINT64Stack

    type IntegerDim7KindINT64StackNode
      Integer(kind = INT64), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(IntegerDim7KindINT64StackNode), pointer:: prev => null()
    end type IntegerDim7KindINT64StackNode
    type LogicalDim0Stack
      type(LogicalDim0StackNode), pointer:: entry => null()
    end type LogicalDim0Stack

    type LogicalDim0StackNode
      Logical:: val
      type(LogicalDim0StackNode), pointer:: prev => null()
    end type LogicalDim0StackNode
    type LogicalDim1Stack
      type(LogicalDim1StackNode), pointer:: entry => null()
    end type LogicalDim1Stack

    type LogicalDim1StackNode
      Logical, dimension(:), allocatable:: val
      type(LogicalDim1StackNode), pointer:: prev => null()
    end type LogicalDim1StackNode
    type LogicalDim2Stack
      type(LogicalDim2StackNode), pointer:: entry => null()
    end type LogicalDim2Stack

    type LogicalDim2StackNode
      Logical, dimension(:, :), allocatable:: val
      type(LogicalDim2StackNode), pointer:: prev => null()
    end type LogicalDim2StackNode
    type LogicalDim3Stack
      type(LogicalDim3StackNode), pointer:: entry => null()
    end type LogicalDim3Stack

    type LogicalDim3StackNode
      Logical, dimension(:, :, :), allocatable:: val
      type(LogicalDim3StackNode), pointer:: prev => null()
    end type LogicalDim3StackNode
    type LogicalDim4Stack
      type(LogicalDim4StackNode), pointer:: entry => null()
    end type LogicalDim4Stack

    type LogicalDim4StackNode
      Logical, dimension(:, :, :, :), allocatable:: val
      type(LogicalDim4StackNode), pointer:: prev => null()
    end type LogicalDim4StackNode
    type LogicalDim5Stack
      type(LogicalDim5StackNode), pointer:: entry => null()
    end type LogicalDim5Stack

    type LogicalDim5StackNode
      Logical, dimension(:, :, :, :, :), allocatable:: val
      type(LogicalDim5StackNode), pointer:: prev => null()
    end type LogicalDim5StackNode
    type LogicalDim6Stack
      type(LogicalDim6StackNode), pointer:: entry => null()
    end type LogicalDim6Stack

    type LogicalDim6StackNode
      Logical, dimension(:, :, :, :, :, :), allocatable:: val
      type(LogicalDim6StackNode), pointer:: prev => null()
    end type LogicalDim6StackNode
    type LogicalDim7Stack
      type(LogicalDim7StackNode), pointer:: entry => null()
    end type LogicalDim7Stack

    type LogicalDim7StackNode
      Logical, dimension(:, :, :, :, :, :, :), allocatable:: val
      type(LogicalDim7StackNode), pointer:: prev => null()
    end type LogicalDim7StackNode
    type ComplexDim0KindREAL32Stack
      type(ComplexDim0KindREAL32StackNode), pointer:: entry => null()
    end type ComplexDim0KindREAL32Stack

    type ComplexDim0KindREAL32StackNode
      Complex(kind = REAL32):: val
      type(ComplexDim0KindREAL32StackNode), pointer:: prev => null()
    end type ComplexDim0KindREAL32StackNode
    type ComplexDim0KindREAL64Stack
      type(ComplexDim0KindREAL64StackNode), pointer:: entry => null()
    end type ComplexDim0KindREAL64Stack

    type ComplexDim0KindREAL64StackNode
      Complex(kind = REAL64):: val
      type(ComplexDim0KindREAL64StackNode), pointer:: prev => null()
    end type ComplexDim0KindREAL64StackNode
    type ComplexDim0KindREAL128Stack
      type(ComplexDim0KindREAL128StackNode), pointer:: entry => null()
    end type ComplexDim0KindREAL128Stack

    type ComplexDim0KindREAL128StackNode
      Complex(kind = REAL128):: val
      type(ComplexDim0KindREAL128StackNode), pointer:: prev => null()
    end type ComplexDim0KindREAL128StackNode
    type ComplexDim1KindREAL32Stack
      type(ComplexDim1KindREAL32StackNode), pointer:: entry => null()
    end type ComplexDim1KindREAL32Stack

    type ComplexDim1KindREAL32StackNode
      Complex(kind = REAL32), dimension(:), allocatable:: val
      type(ComplexDim1KindREAL32StackNode), pointer:: prev => null()
    end type ComplexDim1KindREAL32StackNode
    type ComplexDim1KindREAL64Stack
      type(ComplexDim1KindREAL64StackNode), pointer:: entry => null()
    end type ComplexDim1KindREAL64Stack

    type ComplexDim1KindREAL64StackNode
      Complex(kind = REAL64), dimension(:), allocatable:: val
      type(ComplexDim1KindREAL64StackNode), pointer:: prev => null()
    end type ComplexDim1KindREAL64StackNode
    type ComplexDim1KindREAL128Stack
      type(ComplexDim1KindREAL128StackNode), pointer:: entry => null()
    end type ComplexDim1KindREAL128Stack

    type ComplexDim1KindREAL128StackNode
      Complex(kind = REAL128), dimension(:), allocatable:: val
      type(ComplexDim1KindREAL128StackNode), pointer:: prev => null()
    end type ComplexDim1KindREAL128StackNode
    type ComplexDim2KindREAL32Stack
      type(ComplexDim2KindREAL32StackNode), pointer:: entry => null()
    end type ComplexDim2KindREAL32Stack

    type ComplexDim2KindREAL32StackNode
      Complex(kind = REAL32), dimension(:, :), allocatable:: val
      type(ComplexDim2KindREAL32StackNode), pointer:: prev => null()
    end type ComplexDim2KindREAL32StackNode
    type ComplexDim2KindREAL64Stack
      type(ComplexDim2KindREAL64StackNode), pointer:: entry => null()
    end type ComplexDim2KindREAL64Stack

    type ComplexDim2KindREAL64StackNode
      Complex(kind = REAL64), dimension(:, :), allocatable:: val
      type(ComplexDim2KindREAL64StackNode), pointer:: prev => null()
    end type ComplexDim2KindREAL64StackNode
    type ComplexDim2KindREAL128Stack
      type(ComplexDim2KindREAL128StackNode), pointer:: entry => null()
    end type ComplexDim2KindREAL128Stack

    type ComplexDim2KindREAL128StackNode
      Complex(kind = REAL128), dimension(:, :), allocatable:: val
      type(ComplexDim2KindREAL128StackNode), pointer:: prev => null()
    end type ComplexDim2KindREAL128StackNode
    type ComplexDim3KindREAL32Stack
      type(ComplexDim3KindREAL32StackNode), pointer:: entry => null()
    end type ComplexDim3KindREAL32Stack

    type ComplexDim3KindREAL32StackNode
      Complex(kind = REAL32), dimension(:, :, :), allocatable:: val
      type(ComplexDim3KindREAL32StackNode), pointer:: prev => null()
    end type ComplexDim3KindREAL32StackNode
    type ComplexDim3KindREAL64Stack
      type(ComplexDim3KindREAL64StackNode), pointer:: entry => null()
    end type ComplexDim3KindREAL64Stack

    type ComplexDim3KindREAL64StackNode
      Complex(kind = REAL64), dimension(:, :, :), allocatable:: val
      type(ComplexDim3KindREAL64StackNode), pointer:: prev => null()
    end type ComplexDim3KindREAL64StackNode
    type ComplexDim3KindREAL128Stack
      type(ComplexDim3KindREAL128StackNode), pointer:: entry => null()
    end type ComplexDim3KindREAL128Stack

    type ComplexDim3KindREAL128StackNode
      Complex(kind = REAL128), dimension(:, :, :), allocatable:: val
      type(ComplexDim3KindREAL128StackNode), pointer:: prev => null()
    end type ComplexDim3KindREAL128StackNode
    type ComplexDim4KindREAL32Stack
      type(ComplexDim4KindREAL32StackNode), pointer:: entry => null()
    end type ComplexDim4KindREAL32Stack

    type ComplexDim4KindREAL32StackNode
      Complex(kind = REAL32), dimension(:, :, :, :), allocatable:: val
      type(ComplexDim4KindREAL32StackNode), pointer:: prev => null()
    end type ComplexDim4KindREAL32StackNode
    type ComplexDim4KindREAL64Stack
      type(ComplexDim4KindREAL64StackNode), pointer:: entry => null()
    end type ComplexDim4KindREAL64Stack

    type ComplexDim4KindREAL64StackNode
      Complex(kind = REAL64), dimension(:, :, :, :), allocatable:: val
      type(ComplexDim4KindREAL64StackNode), pointer:: prev => null()
    end type ComplexDim4KindREAL64StackNode
    type ComplexDim4KindREAL128Stack
      type(ComplexDim4KindREAL128StackNode), pointer:: entry => null()
    end type ComplexDim4KindREAL128Stack

    type ComplexDim4KindREAL128StackNode
      Complex(kind = REAL128), dimension(:, :, :, :), allocatable:: val
      type(ComplexDim4KindREAL128StackNode), pointer:: prev => null()
    end type ComplexDim4KindREAL128StackNode
    type ComplexDim5KindREAL32Stack
      type(ComplexDim5KindREAL32StackNode), pointer:: entry => null()
    end type ComplexDim5KindREAL32Stack

    type ComplexDim5KindREAL32StackNode
      Complex(kind = REAL32), dimension(:, :, :, :, :), allocatable:: val
      type(ComplexDim5KindREAL32StackNode), pointer:: prev => null()
    end type ComplexDim5KindREAL32StackNode
    type ComplexDim5KindREAL64Stack
      type(ComplexDim5KindREAL64StackNode), pointer:: entry => null()
    end type ComplexDim5KindREAL64Stack

    type ComplexDim5KindREAL64StackNode
      Complex(kind = REAL64), dimension(:, :, :, :, :), allocatable:: val
      type(ComplexDim5KindREAL64StackNode), pointer:: prev => null()
    end type ComplexDim5KindREAL64StackNode
    type ComplexDim5KindREAL128Stack
      type(ComplexDim5KindREAL128StackNode), pointer:: entry => null()
    end type ComplexDim5KindREAL128Stack

    type ComplexDim5KindREAL128StackNode
      Complex(kind = REAL128), dimension(:, :, :, :, :), allocatable:: val
      type(ComplexDim5KindREAL128StackNode), pointer:: prev => null()
    end type ComplexDim5KindREAL128StackNode
    type ComplexDim6KindREAL32Stack
      type(ComplexDim6KindREAL32StackNode), pointer:: entry => null()
    end type ComplexDim6KindREAL32Stack

    type ComplexDim6KindREAL32StackNode
      Complex(kind = REAL32), dimension(:, :, :, :, :, :), allocatable:: val
      type(ComplexDim6KindREAL32StackNode), pointer:: prev => null()
    end type ComplexDim6KindREAL32StackNode
    type ComplexDim6KindREAL64Stack
      type(ComplexDim6KindREAL64StackNode), pointer:: entry => null()
    end type ComplexDim6KindREAL64Stack

    type ComplexDim6KindREAL64StackNode
      Complex(kind = REAL64), dimension(:, :, :, :, :, :), allocatable:: val
      type(ComplexDim6KindREAL64StackNode), pointer:: prev => null()
    end type ComplexDim6KindREAL64StackNode
    type ComplexDim6KindREAL128Stack
      type(ComplexDim6KindREAL128StackNode), pointer:: entry => null()
    end type ComplexDim6KindREAL128Stack

    type ComplexDim6KindREAL128StackNode
      Complex(kind = REAL128), dimension(:, :, :, :, :, :), allocatable:: val
      type(ComplexDim6KindREAL128StackNode), pointer:: prev => null()
    end type ComplexDim6KindREAL128StackNode
    type ComplexDim7KindREAL32Stack
      type(ComplexDim7KindREAL32StackNode), pointer:: entry => null()
    end type ComplexDim7KindREAL32Stack

    type ComplexDim7KindREAL32StackNode
      Complex(kind = REAL32), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(ComplexDim7KindREAL32StackNode), pointer:: prev => null()
    end type ComplexDim7KindREAL32StackNode
    type ComplexDim7KindREAL64Stack
      type(ComplexDim7KindREAL64StackNode), pointer:: entry => null()
    end type ComplexDim7KindREAL64Stack

    type ComplexDim7KindREAL64StackNode
      Complex(kind = REAL64), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(ComplexDim7KindREAL64StackNode), pointer:: prev => null()
    end type ComplexDim7KindREAL64StackNode
    type ComplexDim7KindREAL128Stack
      type(ComplexDim7KindREAL128StackNode), pointer:: entry => null()
    end type ComplexDim7KindREAL128Stack

    type ComplexDim7KindREAL128StackNode
      Complex(kind = REAL128), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(ComplexDim7KindREAL128StackNode), pointer:: prev => null()
    end type ComplexDim7KindREAL128StackNode
    type CharacterDim0Len1Stack
      type(CharacterDim0Len1StackNode), pointer:: entry => null()
    end type CharacterDim0Len1Stack

    type CharacterDim0Len1StackNode
      Character(len = 1):: val
      type(CharacterDim0Len1StackNode), pointer:: prev => null()
    end type CharacterDim0Len1StackNode
    type CharacterDim0Len2Stack
      type(CharacterDim0Len2StackNode), pointer:: entry => null()
    end type CharacterDim0Len2Stack

    type CharacterDim0Len2StackNode
      Character(len = 2):: val
      type(CharacterDim0Len2StackNode), pointer:: prev => null()
    end type CharacterDim0Len2StackNode
    type CharacterDim0Len4Stack
      type(CharacterDim0Len4StackNode), pointer:: entry => null()
    end type CharacterDim0Len4Stack

    type CharacterDim0Len4StackNode
      Character(len = 4):: val
      type(CharacterDim0Len4StackNode), pointer:: prev => null()
    end type CharacterDim0Len4StackNode
    type CharacterDim0Len8Stack
      type(CharacterDim0Len8StackNode), pointer:: entry => null()
    end type CharacterDim0Len8Stack

    type CharacterDim0Len8StackNode
      Character(len = 8):: val
      type(CharacterDim0Len8StackNode), pointer:: prev => null()
    end type CharacterDim0Len8StackNode
    type CharacterDim0Len16Stack
      type(CharacterDim0Len16StackNode), pointer:: entry => null()
    end type CharacterDim0Len16Stack

    type CharacterDim0Len16StackNode
      Character(len = 16):: val
      type(CharacterDim0Len16StackNode), pointer:: prev => null()
    end type CharacterDim0Len16StackNode
    type CharacterDim0Len32Stack
      type(CharacterDim0Len32StackNode), pointer:: entry => null()
    end type CharacterDim0Len32Stack

    type CharacterDim0Len32StackNode
      Character(len = 32):: val
      type(CharacterDim0Len32StackNode), pointer:: prev => null()
    end type CharacterDim0Len32StackNode
    type CharacterDim0Len64Stack
      type(CharacterDim0Len64StackNode), pointer:: entry => null()
    end type CharacterDim0Len64Stack

    type CharacterDim0Len64StackNode
      Character(len = 64):: val
      type(CharacterDim0Len64StackNode), pointer:: prev => null()
    end type CharacterDim0Len64StackNode
    type CharacterDim0Len128Stack
      type(CharacterDim0Len128StackNode), pointer:: entry => null()
    end type CharacterDim0Len128Stack

    type CharacterDim0Len128StackNode
      Character(len = 128):: val
      type(CharacterDim0Len128StackNode), pointer:: prev => null()
    end type CharacterDim0Len128StackNode
    type CharacterDim0Len256Stack
      type(CharacterDim0Len256StackNode), pointer:: entry => null()
    end type CharacterDim0Len256Stack

    type CharacterDim0Len256StackNode
      Character(len = 256):: val
      type(CharacterDim0Len256StackNode), pointer:: prev => null()
    end type CharacterDim0Len256StackNode
    type CharacterDim0Len512Stack
      type(CharacterDim0Len512StackNode), pointer:: entry => null()
    end type CharacterDim0Len512Stack

    type CharacterDim0Len512StackNode
      Character(len = 512):: val
      type(CharacterDim0Len512StackNode), pointer:: prev => null()
    end type CharacterDim0Len512StackNode
    type CharacterDim0Len1024Stack
      type(CharacterDim0Len1024StackNode), pointer:: entry => null()
    end type CharacterDim0Len1024Stack

    type CharacterDim0Len1024StackNode
      Character(len = 1024):: val
      type(CharacterDim0Len1024StackNode), pointer:: prev => null()
    end type CharacterDim0Len1024StackNode
    type CharacterDim0Len2048Stack
      type(CharacterDim0Len2048StackNode), pointer:: entry => null()
    end type CharacterDim0Len2048Stack

    type CharacterDim0Len2048StackNode
      Character(len = 2048):: val
      type(CharacterDim0Len2048StackNode), pointer:: prev => null()
    end type CharacterDim0Len2048StackNode
    type CharacterDim0Len4096Stack
      type(CharacterDim0Len4096StackNode), pointer:: entry => null()
    end type CharacterDim0Len4096Stack

    type CharacterDim0Len4096StackNode
      Character(len = 4096):: val
      type(CharacterDim0Len4096StackNode), pointer:: prev => null()
    end type CharacterDim0Len4096StackNode
    type CharacterDim0Len8192Stack
      type(CharacterDim0Len8192StackNode), pointer:: entry => null()
    end type CharacterDim0Len8192Stack

    type CharacterDim0Len8192StackNode
      Character(len = 8192):: val
      type(CharacterDim0Len8192StackNode), pointer:: prev => null()
    end type CharacterDim0Len8192StackNode
    type CharacterDim1Len1Stack
      type(CharacterDim1Len1StackNode), pointer:: entry => null()
    end type CharacterDim1Len1Stack

    type CharacterDim1Len1StackNode
      Character(len = 1), dimension(:), allocatable:: val
      type(CharacterDim1Len1StackNode), pointer:: prev => null()
    end type CharacterDim1Len1StackNode
    type CharacterDim1Len2Stack
      type(CharacterDim1Len2StackNode), pointer:: entry => null()
    end type CharacterDim1Len2Stack

    type CharacterDim1Len2StackNode
      Character(len = 2), dimension(:), allocatable:: val
      type(CharacterDim1Len2StackNode), pointer:: prev => null()
    end type CharacterDim1Len2StackNode
    type CharacterDim1Len4Stack
      type(CharacterDim1Len4StackNode), pointer:: entry => null()
    end type CharacterDim1Len4Stack

    type CharacterDim1Len4StackNode
      Character(len = 4), dimension(:), allocatable:: val
      type(CharacterDim1Len4StackNode), pointer:: prev => null()
    end type CharacterDim1Len4StackNode
    type CharacterDim1Len8Stack
      type(CharacterDim1Len8StackNode), pointer:: entry => null()
    end type CharacterDim1Len8Stack

    type CharacterDim1Len8StackNode
      Character(len = 8), dimension(:), allocatable:: val
      type(CharacterDim1Len8StackNode), pointer:: prev => null()
    end type CharacterDim1Len8StackNode
    type CharacterDim1Len16Stack
      type(CharacterDim1Len16StackNode), pointer:: entry => null()
    end type CharacterDim1Len16Stack

    type CharacterDim1Len16StackNode
      Character(len = 16), dimension(:), allocatable:: val
      type(CharacterDim1Len16StackNode), pointer:: prev => null()
    end type CharacterDim1Len16StackNode
    type CharacterDim1Len32Stack
      type(CharacterDim1Len32StackNode), pointer:: entry => null()
    end type CharacterDim1Len32Stack

    type CharacterDim1Len32StackNode
      Character(len = 32), dimension(:), allocatable:: val
      type(CharacterDim1Len32StackNode), pointer:: prev => null()
    end type CharacterDim1Len32StackNode
    type CharacterDim1Len64Stack
      type(CharacterDim1Len64StackNode), pointer:: entry => null()
    end type CharacterDim1Len64Stack

    type CharacterDim1Len64StackNode
      Character(len = 64), dimension(:), allocatable:: val
      type(CharacterDim1Len64StackNode), pointer:: prev => null()
    end type CharacterDim1Len64StackNode
    type CharacterDim1Len128Stack
      type(CharacterDim1Len128StackNode), pointer:: entry => null()
    end type CharacterDim1Len128Stack

    type CharacterDim1Len128StackNode
      Character(len = 128), dimension(:), allocatable:: val
      type(CharacterDim1Len128StackNode), pointer:: prev => null()
    end type CharacterDim1Len128StackNode
    type CharacterDim1Len256Stack
      type(CharacterDim1Len256StackNode), pointer:: entry => null()
    end type CharacterDim1Len256Stack

    type CharacterDim1Len256StackNode
      Character(len = 256), dimension(:), allocatable:: val
      type(CharacterDim1Len256StackNode), pointer:: prev => null()
    end type CharacterDim1Len256StackNode
    type CharacterDim1Len512Stack
      type(CharacterDim1Len512StackNode), pointer:: entry => null()
    end type CharacterDim1Len512Stack

    type CharacterDim1Len512StackNode
      Character(len = 512), dimension(:), allocatable:: val
      type(CharacterDim1Len512StackNode), pointer:: prev => null()
    end type CharacterDim1Len512StackNode
    type CharacterDim1Len1024Stack
      type(CharacterDim1Len1024StackNode), pointer:: entry => null()
    end type CharacterDim1Len1024Stack

    type CharacterDim1Len1024StackNode
      Character(len = 1024), dimension(:), allocatable:: val
      type(CharacterDim1Len1024StackNode), pointer:: prev => null()
    end type CharacterDim1Len1024StackNode
    type CharacterDim1Len2048Stack
      type(CharacterDim1Len2048StackNode), pointer:: entry => null()
    end type CharacterDim1Len2048Stack

    type CharacterDim1Len2048StackNode
      Character(len = 2048), dimension(:), allocatable:: val
      type(CharacterDim1Len2048StackNode), pointer:: prev => null()
    end type CharacterDim1Len2048StackNode
    type CharacterDim1Len4096Stack
      type(CharacterDim1Len4096StackNode), pointer:: entry => null()
    end type CharacterDim1Len4096Stack

    type CharacterDim1Len4096StackNode
      Character(len = 4096), dimension(:), allocatable:: val
      type(CharacterDim1Len4096StackNode), pointer:: prev => null()
    end type CharacterDim1Len4096StackNode
    type CharacterDim1Len8192Stack
      type(CharacterDim1Len8192StackNode), pointer:: entry => null()
    end type CharacterDim1Len8192Stack

    type CharacterDim1Len8192StackNode
      Character(len = 8192), dimension(:), allocatable:: val
      type(CharacterDim1Len8192StackNode), pointer:: prev => null()
    end type CharacterDim1Len8192StackNode
    type CharacterDim2Len1Stack
      type(CharacterDim2Len1StackNode), pointer:: entry => null()
    end type CharacterDim2Len1Stack

    type CharacterDim2Len1StackNode
      Character(len = 1), dimension(:, :), allocatable:: val
      type(CharacterDim2Len1StackNode), pointer:: prev => null()
    end type CharacterDim2Len1StackNode
    type CharacterDim2Len2Stack
      type(CharacterDim2Len2StackNode), pointer:: entry => null()
    end type CharacterDim2Len2Stack

    type CharacterDim2Len2StackNode
      Character(len = 2), dimension(:, :), allocatable:: val
      type(CharacterDim2Len2StackNode), pointer:: prev => null()
    end type CharacterDim2Len2StackNode
    type CharacterDim2Len4Stack
      type(CharacterDim2Len4StackNode), pointer:: entry => null()
    end type CharacterDim2Len4Stack

    type CharacterDim2Len4StackNode
      Character(len = 4), dimension(:, :), allocatable:: val
      type(CharacterDim2Len4StackNode), pointer:: prev => null()
    end type CharacterDim2Len4StackNode
    type CharacterDim2Len8Stack
      type(CharacterDim2Len8StackNode), pointer:: entry => null()
    end type CharacterDim2Len8Stack

    type CharacterDim2Len8StackNode
      Character(len = 8), dimension(:, :), allocatable:: val
      type(CharacterDim2Len8StackNode), pointer:: prev => null()
    end type CharacterDim2Len8StackNode
    type CharacterDim2Len16Stack
      type(CharacterDim2Len16StackNode), pointer:: entry => null()
    end type CharacterDim2Len16Stack

    type CharacterDim2Len16StackNode
      Character(len = 16), dimension(:, :), allocatable:: val
      type(CharacterDim2Len16StackNode), pointer:: prev => null()
    end type CharacterDim2Len16StackNode
    type CharacterDim2Len32Stack
      type(CharacterDim2Len32StackNode), pointer:: entry => null()
    end type CharacterDim2Len32Stack

    type CharacterDim2Len32StackNode
      Character(len = 32), dimension(:, :), allocatable:: val
      type(CharacterDim2Len32StackNode), pointer:: prev => null()
    end type CharacterDim2Len32StackNode
    type CharacterDim2Len64Stack
      type(CharacterDim2Len64StackNode), pointer:: entry => null()
    end type CharacterDim2Len64Stack

    type CharacterDim2Len64StackNode
      Character(len = 64), dimension(:, :), allocatable:: val
      type(CharacterDim2Len64StackNode), pointer:: prev => null()
    end type CharacterDim2Len64StackNode
    type CharacterDim2Len128Stack
      type(CharacterDim2Len128StackNode), pointer:: entry => null()
    end type CharacterDim2Len128Stack

    type CharacterDim2Len128StackNode
      Character(len = 128), dimension(:, :), allocatable:: val
      type(CharacterDim2Len128StackNode), pointer:: prev => null()
    end type CharacterDim2Len128StackNode
    type CharacterDim2Len256Stack
      type(CharacterDim2Len256StackNode), pointer:: entry => null()
    end type CharacterDim2Len256Stack

    type CharacterDim2Len256StackNode
      Character(len = 256), dimension(:, :), allocatable:: val
      type(CharacterDim2Len256StackNode), pointer:: prev => null()
    end type CharacterDim2Len256StackNode
    type CharacterDim2Len512Stack
      type(CharacterDim2Len512StackNode), pointer:: entry => null()
    end type CharacterDim2Len512Stack

    type CharacterDim2Len512StackNode
      Character(len = 512), dimension(:, :), allocatable:: val
      type(CharacterDim2Len512StackNode), pointer:: prev => null()
    end type CharacterDim2Len512StackNode
    type CharacterDim2Len1024Stack
      type(CharacterDim2Len1024StackNode), pointer:: entry => null()
    end type CharacterDim2Len1024Stack

    type CharacterDim2Len1024StackNode
      Character(len = 1024), dimension(:, :), allocatable:: val
      type(CharacterDim2Len1024StackNode), pointer:: prev => null()
    end type CharacterDim2Len1024StackNode
    type CharacterDim2Len2048Stack
      type(CharacterDim2Len2048StackNode), pointer:: entry => null()
    end type CharacterDim2Len2048Stack

    type CharacterDim2Len2048StackNode
      Character(len = 2048), dimension(:, :), allocatable:: val
      type(CharacterDim2Len2048StackNode), pointer:: prev => null()
    end type CharacterDim2Len2048StackNode
    type CharacterDim2Len4096Stack
      type(CharacterDim2Len4096StackNode), pointer:: entry => null()
    end type CharacterDim2Len4096Stack

    type CharacterDim2Len4096StackNode
      Character(len = 4096), dimension(:, :), allocatable:: val
      type(CharacterDim2Len4096StackNode), pointer:: prev => null()
    end type CharacterDim2Len4096StackNode
    type CharacterDim2Len8192Stack
      type(CharacterDim2Len8192StackNode), pointer:: entry => null()
    end type CharacterDim2Len8192Stack

    type CharacterDim2Len8192StackNode
      Character(len = 8192), dimension(:, :), allocatable:: val
      type(CharacterDim2Len8192StackNode), pointer:: prev => null()
    end type CharacterDim2Len8192StackNode
    type CharacterDim3Len1Stack
      type(CharacterDim3Len1StackNode), pointer:: entry => null()
    end type CharacterDim3Len1Stack

    type CharacterDim3Len1StackNode
      Character(len = 1), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len1StackNode), pointer:: prev => null()
    end type CharacterDim3Len1StackNode
    type CharacterDim3Len2Stack
      type(CharacterDim3Len2StackNode), pointer:: entry => null()
    end type CharacterDim3Len2Stack

    type CharacterDim3Len2StackNode
      Character(len = 2), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len2StackNode), pointer:: prev => null()
    end type CharacterDim3Len2StackNode
    type CharacterDim3Len4Stack
      type(CharacterDim3Len4StackNode), pointer:: entry => null()
    end type CharacterDim3Len4Stack

    type CharacterDim3Len4StackNode
      Character(len = 4), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len4StackNode), pointer:: prev => null()
    end type CharacterDim3Len4StackNode
    type CharacterDim3Len8Stack
      type(CharacterDim3Len8StackNode), pointer:: entry => null()
    end type CharacterDim3Len8Stack

    type CharacterDim3Len8StackNode
      Character(len = 8), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len8StackNode), pointer:: prev => null()
    end type CharacterDim3Len8StackNode
    type CharacterDim3Len16Stack
      type(CharacterDim3Len16StackNode), pointer:: entry => null()
    end type CharacterDim3Len16Stack

    type CharacterDim3Len16StackNode
      Character(len = 16), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len16StackNode), pointer:: prev => null()
    end type CharacterDim3Len16StackNode
    type CharacterDim3Len32Stack
      type(CharacterDim3Len32StackNode), pointer:: entry => null()
    end type CharacterDim3Len32Stack

    type CharacterDim3Len32StackNode
      Character(len = 32), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len32StackNode), pointer:: prev => null()
    end type CharacterDim3Len32StackNode
    type CharacterDim3Len64Stack
      type(CharacterDim3Len64StackNode), pointer:: entry => null()
    end type CharacterDim3Len64Stack

    type CharacterDim3Len64StackNode
      Character(len = 64), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len64StackNode), pointer:: prev => null()
    end type CharacterDim3Len64StackNode
    type CharacterDim3Len128Stack
      type(CharacterDim3Len128StackNode), pointer:: entry => null()
    end type CharacterDim3Len128Stack

    type CharacterDim3Len128StackNode
      Character(len = 128), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len128StackNode), pointer:: prev => null()
    end type CharacterDim3Len128StackNode
    type CharacterDim3Len256Stack
      type(CharacterDim3Len256StackNode), pointer:: entry => null()
    end type CharacterDim3Len256Stack

    type CharacterDim3Len256StackNode
      Character(len = 256), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len256StackNode), pointer:: prev => null()
    end type CharacterDim3Len256StackNode
    type CharacterDim3Len512Stack
      type(CharacterDim3Len512StackNode), pointer:: entry => null()
    end type CharacterDim3Len512Stack

    type CharacterDim3Len512StackNode
      Character(len = 512), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len512StackNode), pointer:: prev => null()
    end type CharacterDim3Len512StackNode
    type CharacterDim3Len1024Stack
      type(CharacterDim3Len1024StackNode), pointer:: entry => null()
    end type CharacterDim3Len1024Stack

    type CharacterDim3Len1024StackNode
      Character(len = 1024), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len1024StackNode), pointer:: prev => null()
    end type CharacterDim3Len1024StackNode
    type CharacterDim3Len2048Stack
      type(CharacterDim3Len2048StackNode), pointer:: entry => null()
    end type CharacterDim3Len2048Stack

    type CharacterDim3Len2048StackNode
      Character(len = 2048), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len2048StackNode), pointer:: prev => null()
    end type CharacterDim3Len2048StackNode
    type CharacterDim3Len4096Stack
      type(CharacterDim3Len4096StackNode), pointer:: entry => null()
    end type CharacterDim3Len4096Stack

    type CharacterDim3Len4096StackNode
      Character(len = 4096), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len4096StackNode), pointer:: prev => null()
    end type CharacterDim3Len4096StackNode
    type CharacterDim3Len8192Stack
      type(CharacterDim3Len8192StackNode), pointer:: entry => null()
    end type CharacterDim3Len8192Stack

    type CharacterDim3Len8192StackNode
      Character(len = 8192), dimension(:, :, :), allocatable:: val
      type(CharacterDim3Len8192StackNode), pointer:: prev => null()
    end type CharacterDim3Len8192StackNode
    type CharacterDim4Len1Stack
      type(CharacterDim4Len1StackNode), pointer:: entry => null()
    end type CharacterDim4Len1Stack

    type CharacterDim4Len1StackNode
      Character(len = 1), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len1StackNode), pointer:: prev => null()
    end type CharacterDim4Len1StackNode
    type CharacterDim4Len2Stack
      type(CharacterDim4Len2StackNode), pointer:: entry => null()
    end type CharacterDim4Len2Stack

    type CharacterDim4Len2StackNode
      Character(len = 2), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len2StackNode), pointer:: prev => null()
    end type CharacterDim4Len2StackNode
    type CharacterDim4Len4Stack
      type(CharacterDim4Len4StackNode), pointer:: entry => null()
    end type CharacterDim4Len4Stack

    type CharacterDim4Len4StackNode
      Character(len = 4), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len4StackNode), pointer:: prev => null()
    end type CharacterDim4Len4StackNode
    type CharacterDim4Len8Stack
      type(CharacterDim4Len8StackNode), pointer:: entry => null()
    end type CharacterDim4Len8Stack

    type CharacterDim4Len8StackNode
      Character(len = 8), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len8StackNode), pointer:: prev => null()
    end type CharacterDim4Len8StackNode
    type CharacterDim4Len16Stack
      type(CharacterDim4Len16StackNode), pointer:: entry => null()
    end type CharacterDim4Len16Stack

    type CharacterDim4Len16StackNode
      Character(len = 16), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len16StackNode), pointer:: prev => null()
    end type CharacterDim4Len16StackNode
    type CharacterDim4Len32Stack
      type(CharacterDim4Len32StackNode), pointer:: entry => null()
    end type CharacterDim4Len32Stack

    type CharacterDim4Len32StackNode
      Character(len = 32), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len32StackNode), pointer:: prev => null()
    end type CharacterDim4Len32StackNode
    type CharacterDim4Len64Stack
      type(CharacterDim4Len64StackNode), pointer:: entry => null()
    end type CharacterDim4Len64Stack

    type CharacterDim4Len64StackNode
      Character(len = 64), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len64StackNode), pointer:: prev => null()
    end type CharacterDim4Len64StackNode
    type CharacterDim4Len128Stack
      type(CharacterDim4Len128StackNode), pointer:: entry => null()
    end type CharacterDim4Len128Stack

    type CharacterDim4Len128StackNode
      Character(len = 128), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len128StackNode), pointer:: prev => null()
    end type CharacterDim4Len128StackNode
    type CharacterDim4Len256Stack
      type(CharacterDim4Len256StackNode), pointer:: entry => null()
    end type CharacterDim4Len256Stack

    type CharacterDim4Len256StackNode
      Character(len = 256), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len256StackNode), pointer:: prev => null()
    end type CharacterDim4Len256StackNode
    type CharacterDim4Len512Stack
      type(CharacterDim4Len512StackNode), pointer:: entry => null()
    end type CharacterDim4Len512Stack

    type CharacterDim4Len512StackNode
      Character(len = 512), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len512StackNode), pointer:: prev => null()
    end type CharacterDim4Len512StackNode
    type CharacterDim4Len1024Stack
      type(CharacterDim4Len1024StackNode), pointer:: entry => null()
    end type CharacterDim4Len1024Stack

    type CharacterDim4Len1024StackNode
      Character(len = 1024), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len1024StackNode), pointer:: prev => null()
    end type CharacterDim4Len1024StackNode
    type CharacterDim4Len2048Stack
      type(CharacterDim4Len2048StackNode), pointer:: entry => null()
    end type CharacterDim4Len2048Stack

    type CharacterDim4Len2048StackNode
      Character(len = 2048), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len2048StackNode), pointer:: prev => null()
    end type CharacterDim4Len2048StackNode
    type CharacterDim4Len4096Stack
      type(CharacterDim4Len4096StackNode), pointer:: entry => null()
    end type CharacterDim4Len4096Stack

    type CharacterDim4Len4096StackNode
      Character(len = 4096), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len4096StackNode), pointer:: prev => null()
    end type CharacterDim4Len4096StackNode
    type CharacterDim4Len8192Stack
      type(CharacterDim4Len8192StackNode), pointer:: entry => null()
    end type CharacterDim4Len8192Stack

    type CharacterDim4Len8192StackNode
      Character(len = 8192), dimension(:, :, :, :), allocatable:: val
      type(CharacterDim4Len8192StackNode), pointer:: prev => null()
    end type CharacterDim4Len8192StackNode
    type CharacterDim5Len1Stack
      type(CharacterDim5Len1StackNode), pointer:: entry => null()
    end type CharacterDim5Len1Stack

    type CharacterDim5Len1StackNode
      Character(len = 1), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len1StackNode), pointer:: prev => null()
    end type CharacterDim5Len1StackNode
    type CharacterDim5Len2Stack
      type(CharacterDim5Len2StackNode), pointer:: entry => null()
    end type CharacterDim5Len2Stack

    type CharacterDim5Len2StackNode
      Character(len = 2), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len2StackNode), pointer:: prev => null()
    end type CharacterDim5Len2StackNode
    type CharacterDim5Len4Stack
      type(CharacterDim5Len4StackNode), pointer:: entry => null()
    end type CharacterDim5Len4Stack

    type CharacterDim5Len4StackNode
      Character(len = 4), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len4StackNode), pointer:: prev => null()
    end type CharacterDim5Len4StackNode
    type CharacterDim5Len8Stack
      type(CharacterDim5Len8StackNode), pointer:: entry => null()
    end type CharacterDim5Len8Stack

    type CharacterDim5Len8StackNode
      Character(len = 8), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len8StackNode), pointer:: prev => null()
    end type CharacterDim5Len8StackNode
    type CharacterDim5Len16Stack
      type(CharacterDim5Len16StackNode), pointer:: entry => null()
    end type CharacterDim5Len16Stack

    type CharacterDim5Len16StackNode
      Character(len = 16), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len16StackNode), pointer:: prev => null()
    end type CharacterDim5Len16StackNode
    type CharacterDim5Len32Stack
      type(CharacterDim5Len32StackNode), pointer:: entry => null()
    end type CharacterDim5Len32Stack

    type CharacterDim5Len32StackNode
      Character(len = 32), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len32StackNode), pointer:: prev => null()
    end type CharacterDim5Len32StackNode
    type CharacterDim5Len64Stack
      type(CharacterDim5Len64StackNode), pointer:: entry => null()
    end type CharacterDim5Len64Stack

    type CharacterDim5Len64StackNode
      Character(len = 64), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len64StackNode), pointer:: prev => null()
    end type CharacterDim5Len64StackNode
    type CharacterDim5Len128Stack
      type(CharacterDim5Len128StackNode), pointer:: entry => null()
    end type CharacterDim5Len128Stack

    type CharacterDim5Len128StackNode
      Character(len = 128), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len128StackNode), pointer:: prev => null()
    end type CharacterDim5Len128StackNode
    type CharacterDim5Len256Stack
      type(CharacterDim5Len256StackNode), pointer:: entry => null()
    end type CharacterDim5Len256Stack

    type CharacterDim5Len256StackNode
      Character(len = 256), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len256StackNode), pointer:: prev => null()
    end type CharacterDim5Len256StackNode
    type CharacterDim5Len512Stack
      type(CharacterDim5Len512StackNode), pointer:: entry => null()
    end type CharacterDim5Len512Stack

    type CharacterDim5Len512StackNode
      Character(len = 512), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len512StackNode), pointer:: prev => null()
    end type CharacterDim5Len512StackNode
    type CharacterDim5Len1024Stack
      type(CharacterDim5Len1024StackNode), pointer:: entry => null()
    end type CharacterDim5Len1024Stack

    type CharacterDim5Len1024StackNode
      Character(len = 1024), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len1024StackNode), pointer:: prev => null()
    end type CharacterDim5Len1024StackNode
    type CharacterDim5Len2048Stack
      type(CharacterDim5Len2048StackNode), pointer:: entry => null()
    end type CharacterDim5Len2048Stack

    type CharacterDim5Len2048StackNode
      Character(len = 2048), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len2048StackNode), pointer:: prev => null()
    end type CharacterDim5Len2048StackNode
    type CharacterDim5Len4096Stack
      type(CharacterDim5Len4096StackNode), pointer:: entry => null()
    end type CharacterDim5Len4096Stack

    type CharacterDim5Len4096StackNode
      Character(len = 4096), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len4096StackNode), pointer:: prev => null()
    end type CharacterDim5Len4096StackNode
    type CharacterDim5Len8192Stack
      type(CharacterDim5Len8192StackNode), pointer:: entry => null()
    end type CharacterDim5Len8192Stack

    type CharacterDim5Len8192StackNode
      Character(len = 8192), dimension(:, :, :, :, :), allocatable:: val
      type(CharacterDim5Len8192StackNode), pointer:: prev => null()
    end type CharacterDim5Len8192StackNode
    type CharacterDim6Len1Stack
      type(CharacterDim6Len1StackNode), pointer:: entry => null()
    end type CharacterDim6Len1Stack

    type CharacterDim6Len1StackNode
      Character(len = 1), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len1StackNode), pointer:: prev => null()
    end type CharacterDim6Len1StackNode
    type CharacterDim6Len2Stack
      type(CharacterDim6Len2StackNode), pointer:: entry => null()
    end type CharacterDim6Len2Stack

    type CharacterDim6Len2StackNode
      Character(len = 2), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len2StackNode), pointer:: prev => null()
    end type CharacterDim6Len2StackNode
    type CharacterDim6Len4Stack
      type(CharacterDim6Len4StackNode), pointer:: entry => null()
    end type CharacterDim6Len4Stack

    type CharacterDim6Len4StackNode
      Character(len = 4), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len4StackNode), pointer:: prev => null()
    end type CharacterDim6Len4StackNode
    type CharacterDim6Len8Stack
      type(CharacterDim6Len8StackNode), pointer:: entry => null()
    end type CharacterDim6Len8Stack

    type CharacterDim6Len8StackNode
      Character(len = 8), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len8StackNode), pointer:: prev => null()
    end type CharacterDim6Len8StackNode
    type CharacterDim6Len16Stack
      type(CharacterDim6Len16StackNode), pointer:: entry => null()
    end type CharacterDim6Len16Stack

    type CharacterDim6Len16StackNode
      Character(len = 16), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len16StackNode), pointer:: prev => null()
    end type CharacterDim6Len16StackNode
    type CharacterDim6Len32Stack
      type(CharacterDim6Len32StackNode), pointer:: entry => null()
    end type CharacterDim6Len32Stack

    type CharacterDim6Len32StackNode
      Character(len = 32), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len32StackNode), pointer:: prev => null()
    end type CharacterDim6Len32StackNode
    type CharacterDim6Len64Stack
      type(CharacterDim6Len64StackNode), pointer:: entry => null()
    end type CharacterDim6Len64Stack

    type CharacterDim6Len64StackNode
      Character(len = 64), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len64StackNode), pointer:: prev => null()
    end type CharacterDim6Len64StackNode
    type CharacterDim6Len128Stack
      type(CharacterDim6Len128StackNode), pointer:: entry => null()
    end type CharacterDim6Len128Stack

    type CharacterDim6Len128StackNode
      Character(len = 128), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len128StackNode), pointer:: prev => null()
    end type CharacterDim6Len128StackNode
    type CharacterDim6Len256Stack
      type(CharacterDim6Len256StackNode), pointer:: entry => null()
    end type CharacterDim6Len256Stack

    type CharacterDim6Len256StackNode
      Character(len = 256), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len256StackNode), pointer:: prev => null()
    end type CharacterDim6Len256StackNode
    type CharacterDim6Len512Stack
      type(CharacterDim6Len512StackNode), pointer:: entry => null()
    end type CharacterDim6Len512Stack

    type CharacterDim6Len512StackNode
      Character(len = 512), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len512StackNode), pointer:: prev => null()
    end type CharacterDim6Len512StackNode
    type CharacterDim6Len1024Stack
      type(CharacterDim6Len1024StackNode), pointer:: entry => null()
    end type CharacterDim6Len1024Stack

    type CharacterDim6Len1024StackNode
      Character(len = 1024), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len1024StackNode), pointer:: prev => null()
    end type CharacterDim6Len1024StackNode
    type CharacterDim6Len2048Stack
      type(CharacterDim6Len2048StackNode), pointer:: entry => null()
    end type CharacterDim6Len2048Stack

    type CharacterDim6Len2048StackNode
      Character(len = 2048), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len2048StackNode), pointer:: prev => null()
    end type CharacterDim6Len2048StackNode
    type CharacterDim6Len4096Stack
      type(CharacterDim6Len4096StackNode), pointer:: entry => null()
    end type CharacterDim6Len4096Stack

    type CharacterDim6Len4096StackNode
      Character(len = 4096), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len4096StackNode), pointer:: prev => null()
    end type CharacterDim6Len4096StackNode
    type CharacterDim6Len8192Stack
      type(CharacterDim6Len8192StackNode), pointer:: entry => null()
    end type CharacterDim6Len8192Stack

    type CharacterDim6Len8192StackNode
      Character(len = 8192), dimension(:, :, :, :, :, :), allocatable:: val
      type(CharacterDim6Len8192StackNode), pointer:: prev => null()
    end type CharacterDim6Len8192StackNode
    type CharacterDim7Len1Stack
      type(CharacterDim7Len1StackNode), pointer:: entry => null()
    end type CharacterDim7Len1Stack

    type CharacterDim7Len1StackNode
      Character(len = 1), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len1StackNode), pointer:: prev => null()
    end type CharacterDim7Len1StackNode
    type CharacterDim7Len2Stack
      type(CharacterDim7Len2StackNode), pointer:: entry => null()
    end type CharacterDim7Len2Stack

    type CharacterDim7Len2StackNode
      Character(len = 2), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len2StackNode), pointer:: prev => null()
    end type CharacterDim7Len2StackNode
    type CharacterDim7Len4Stack
      type(CharacterDim7Len4StackNode), pointer:: entry => null()
    end type CharacterDim7Len4Stack

    type CharacterDim7Len4StackNode
      Character(len = 4), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len4StackNode), pointer:: prev => null()
    end type CharacterDim7Len4StackNode
    type CharacterDim7Len8Stack
      type(CharacterDim7Len8StackNode), pointer:: entry => null()
    end type CharacterDim7Len8Stack

    type CharacterDim7Len8StackNode
      Character(len = 8), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len8StackNode), pointer:: prev => null()
    end type CharacterDim7Len8StackNode
    type CharacterDim7Len16Stack
      type(CharacterDim7Len16StackNode), pointer:: entry => null()
    end type CharacterDim7Len16Stack

    type CharacterDim7Len16StackNode
      Character(len = 16), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len16StackNode), pointer:: prev => null()
    end type CharacterDim7Len16StackNode
    type CharacterDim7Len32Stack
      type(CharacterDim7Len32StackNode), pointer:: entry => null()
    end type CharacterDim7Len32Stack

    type CharacterDim7Len32StackNode
      Character(len = 32), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len32StackNode), pointer:: prev => null()
    end type CharacterDim7Len32StackNode
    type CharacterDim7Len64Stack
      type(CharacterDim7Len64StackNode), pointer:: entry => null()
    end type CharacterDim7Len64Stack

    type CharacterDim7Len64StackNode
      Character(len = 64), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len64StackNode), pointer:: prev => null()
    end type CharacterDim7Len64StackNode
    type CharacterDim7Len128Stack
      type(CharacterDim7Len128StackNode), pointer:: entry => null()
    end type CharacterDim7Len128Stack

    type CharacterDim7Len128StackNode
      Character(len = 128), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len128StackNode), pointer:: prev => null()
    end type CharacterDim7Len128StackNode
    type CharacterDim7Len256Stack
      type(CharacterDim7Len256StackNode), pointer:: entry => null()
    end type CharacterDim7Len256Stack

    type CharacterDim7Len256StackNode
      Character(len = 256), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len256StackNode), pointer:: prev => null()
    end type CharacterDim7Len256StackNode
    type CharacterDim7Len512Stack
      type(CharacterDim7Len512StackNode), pointer:: entry => null()
    end type CharacterDim7Len512Stack

    type CharacterDim7Len512StackNode
      Character(len = 512), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len512StackNode), pointer:: prev => null()
    end type CharacterDim7Len512StackNode
    type CharacterDim7Len1024Stack
      type(CharacterDim7Len1024StackNode), pointer:: entry => null()
    end type CharacterDim7Len1024Stack

    type CharacterDim7Len1024StackNode
      Character(len = 1024), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len1024StackNode), pointer:: prev => null()
    end type CharacterDim7Len1024StackNode
    type CharacterDim7Len2048Stack
      type(CharacterDim7Len2048StackNode), pointer:: entry => null()
    end type CharacterDim7Len2048Stack

    type CharacterDim7Len2048StackNode
      Character(len = 2048), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len2048StackNode), pointer:: prev => null()
    end type CharacterDim7Len2048StackNode
    type CharacterDim7Len4096Stack
      type(CharacterDim7Len4096StackNode), pointer:: entry => null()
    end type CharacterDim7Len4096Stack

    type CharacterDim7Len4096StackNode
      Character(len = 4096), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len4096StackNode), pointer:: prev => null()
    end type CharacterDim7Len4096StackNode
    type CharacterDim7Len8192Stack
      type(CharacterDim7Len8192StackNode), pointer:: entry => null()
    end type CharacterDim7Len8192Stack

    type CharacterDim7Len8192StackNode
      Character(len = 8192), dimension(:, :, :, :, :, :, :), allocatable:: val
      type(CharacterDim7Len8192StackNode), pointer:: prev => null()
    end type CharacterDim7Len8192StackNode

contains

    subroutine pushRealDim0KindREAL32(stack, val)
      type(RealDim0KindREAL32Stack), intent(inout):: stack
      Real(kind = REAL32), intent(in):: val
      type(RealDim0KindREAL32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim0KindREAL32

    function popRealDim0KindREAL32(stack, val) result(isSuccess)
      type(RealDim0KindREAL32Stack), intent(inout):: stack
      Real(kind = REAL32), intent(inout):: val
      Logical:: isSuccess
      type(RealDim0KindREAL32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim0KindREAL32

    function is_emptyRealDim0KindREAL32(stack) result(answer)
      type(RealDim0KindREAL32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim0KindREAL32
    subroutine pushRealDim0KindREAL64(stack, val)
      type(RealDim0KindREAL64Stack), intent(inout):: stack
      Real(kind = REAL64), intent(in):: val
      type(RealDim0KindREAL64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim0KindREAL64

    function popRealDim0KindREAL64(stack, val) result(isSuccess)
      type(RealDim0KindREAL64Stack), intent(inout):: stack
      Real(kind = REAL64), intent(inout):: val
      Logical:: isSuccess
      type(RealDim0KindREAL64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim0KindREAL64

    function is_emptyRealDim0KindREAL64(stack) result(answer)
      type(RealDim0KindREAL64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim0KindREAL64
    subroutine pushRealDim0KindREAL128(stack, val)
      type(RealDim0KindREAL128Stack), intent(inout):: stack
      Real(kind = REAL128), intent(in):: val
      type(RealDim0KindREAL128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim0KindREAL128

    function popRealDim0KindREAL128(stack, val) result(isSuccess)
      type(RealDim0KindREAL128Stack), intent(inout):: stack
      Real(kind = REAL128), intent(inout):: val
      Logical:: isSuccess
      type(RealDim0KindREAL128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim0KindREAL128

    function is_emptyRealDim0KindREAL128(stack) result(answer)
      type(RealDim0KindREAL128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim0KindREAL128
    subroutine pushRealDim1KindREAL32(stack, val)
      type(RealDim1KindREAL32Stack), intent(inout):: stack
      Real(kind = REAL32), dimension(:), intent(in):: val
      type(RealDim1KindREAL32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim1KindREAL32

    function popRealDim1KindREAL32(stack, val) result(isSuccess)
      type(RealDim1KindREAL32Stack), intent(inout):: stack
      Real(kind = REAL32), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim1KindREAL32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim1KindREAL32

    function is_emptyRealDim1KindREAL32(stack) result(answer)
      type(RealDim1KindREAL32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim1KindREAL32
    subroutine pushRealDim1KindREAL64(stack, val)
      type(RealDim1KindREAL64Stack), intent(inout):: stack
      Real(kind = REAL64), dimension(:), intent(in):: val
      type(RealDim1KindREAL64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim1KindREAL64

    function popRealDim1KindREAL64(stack, val) result(isSuccess)
      type(RealDim1KindREAL64Stack), intent(inout):: stack
      Real(kind = REAL64), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim1KindREAL64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim1KindREAL64

    function is_emptyRealDim1KindREAL64(stack) result(answer)
      type(RealDim1KindREAL64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim1KindREAL64
    subroutine pushRealDim1KindREAL128(stack, val)
      type(RealDim1KindREAL128Stack), intent(inout):: stack
      Real(kind = REAL128), dimension(:), intent(in):: val
      type(RealDim1KindREAL128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim1KindREAL128

    function popRealDim1KindREAL128(stack, val) result(isSuccess)
      type(RealDim1KindREAL128Stack), intent(inout):: stack
      Real(kind = REAL128), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim1KindREAL128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim1KindREAL128

    function is_emptyRealDim1KindREAL128(stack) result(answer)
      type(RealDim1KindREAL128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim1KindREAL128
    subroutine pushRealDim2KindREAL32(stack, val)
      type(RealDim2KindREAL32Stack), intent(inout):: stack
      Real(kind = REAL32), dimension(:, :), intent(in):: val
      type(RealDim2KindREAL32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim2KindREAL32

    function popRealDim2KindREAL32(stack, val) result(isSuccess)
      type(RealDim2KindREAL32Stack), intent(inout):: stack
      Real(kind = REAL32), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim2KindREAL32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim2KindREAL32

    function is_emptyRealDim2KindREAL32(stack) result(answer)
      type(RealDim2KindREAL32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim2KindREAL32
    subroutine pushRealDim2KindREAL64(stack, val)
      type(RealDim2KindREAL64Stack), intent(inout):: stack
      Real(kind = REAL64), dimension(:, :), intent(in):: val
      type(RealDim2KindREAL64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim2KindREAL64

    function popRealDim2KindREAL64(stack, val) result(isSuccess)
      type(RealDim2KindREAL64Stack), intent(inout):: stack
      Real(kind = REAL64), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim2KindREAL64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim2KindREAL64

    function is_emptyRealDim2KindREAL64(stack) result(answer)
      type(RealDim2KindREAL64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim2KindREAL64
    subroutine pushRealDim2KindREAL128(stack, val)
      type(RealDim2KindREAL128Stack), intent(inout):: stack
      Real(kind = REAL128), dimension(:, :), intent(in):: val
      type(RealDim2KindREAL128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim2KindREAL128

    function popRealDim2KindREAL128(stack, val) result(isSuccess)
      type(RealDim2KindREAL128Stack), intent(inout):: stack
      Real(kind = REAL128), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim2KindREAL128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim2KindREAL128

    function is_emptyRealDim2KindREAL128(stack) result(answer)
      type(RealDim2KindREAL128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim2KindREAL128
    subroutine pushRealDim3KindREAL32(stack, val)
      type(RealDim3KindREAL32Stack), intent(inout):: stack
      Real(kind = REAL32), dimension(:, :, :), intent(in):: val
      type(RealDim3KindREAL32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim3KindREAL32

    function popRealDim3KindREAL32(stack, val) result(isSuccess)
      type(RealDim3KindREAL32Stack), intent(inout):: stack
      Real(kind = REAL32), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim3KindREAL32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim3KindREAL32

    function is_emptyRealDim3KindREAL32(stack) result(answer)
      type(RealDim3KindREAL32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim3KindREAL32
    subroutine pushRealDim3KindREAL64(stack, val)
      type(RealDim3KindREAL64Stack), intent(inout):: stack
      Real(kind = REAL64), dimension(:, :, :), intent(in):: val
      type(RealDim3KindREAL64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim3KindREAL64

    function popRealDim3KindREAL64(stack, val) result(isSuccess)
      type(RealDim3KindREAL64Stack), intent(inout):: stack
      Real(kind = REAL64), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim3KindREAL64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim3KindREAL64

    function is_emptyRealDim3KindREAL64(stack) result(answer)
      type(RealDim3KindREAL64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim3KindREAL64
    subroutine pushRealDim3KindREAL128(stack, val)
      type(RealDim3KindREAL128Stack), intent(inout):: stack
      Real(kind = REAL128), dimension(:, :, :), intent(in):: val
      type(RealDim3KindREAL128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim3KindREAL128

    function popRealDim3KindREAL128(stack, val) result(isSuccess)
      type(RealDim3KindREAL128Stack), intent(inout):: stack
      Real(kind = REAL128), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim3KindREAL128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim3KindREAL128

    function is_emptyRealDim3KindREAL128(stack) result(answer)
      type(RealDim3KindREAL128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim3KindREAL128
    subroutine pushRealDim4KindREAL32(stack, val)
      type(RealDim4KindREAL32Stack), intent(inout):: stack
      Real(kind = REAL32), dimension(:, :, :, :), intent(in):: val
      type(RealDim4KindREAL32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim4KindREAL32

    function popRealDim4KindREAL32(stack, val) result(isSuccess)
      type(RealDim4KindREAL32Stack), intent(inout):: stack
      Real(kind = REAL32), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim4KindREAL32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim4KindREAL32

    function is_emptyRealDim4KindREAL32(stack) result(answer)
      type(RealDim4KindREAL32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim4KindREAL32
    subroutine pushRealDim4KindREAL64(stack, val)
      type(RealDim4KindREAL64Stack), intent(inout):: stack
      Real(kind = REAL64), dimension(:, :, :, :), intent(in):: val
      type(RealDim4KindREAL64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim4KindREAL64

    function popRealDim4KindREAL64(stack, val) result(isSuccess)
      type(RealDim4KindREAL64Stack), intent(inout):: stack
      Real(kind = REAL64), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim4KindREAL64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim4KindREAL64

    function is_emptyRealDim4KindREAL64(stack) result(answer)
      type(RealDim4KindREAL64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim4KindREAL64
    subroutine pushRealDim4KindREAL128(stack, val)
      type(RealDim4KindREAL128Stack), intent(inout):: stack
      Real(kind = REAL128), dimension(:, :, :, :), intent(in):: val
      type(RealDim4KindREAL128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim4KindREAL128

    function popRealDim4KindREAL128(stack, val) result(isSuccess)
      type(RealDim4KindREAL128Stack), intent(inout):: stack
      Real(kind = REAL128), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim4KindREAL128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim4KindREAL128

    function is_emptyRealDim4KindREAL128(stack) result(answer)
      type(RealDim4KindREAL128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim4KindREAL128
    subroutine pushRealDim5KindREAL32(stack, val)
      type(RealDim5KindREAL32Stack), intent(inout):: stack
      Real(kind = REAL32), dimension(:, :, :, :, :), intent(in):: val
      type(RealDim5KindREAL32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim5KindREAL32

    function popRealDim5KindREAL32(stack, val) result(isSuccess)
      type(RealDim5KindREAL32Stack), intent(inout):: stack
      Real(kind = REAL32), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim5KindREAL32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim5KindREAL32

    function is_emptyRealDim5KindREAL32(stack) result(answer)
      type(RealDim5KindREAL32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim5KindREAL32
    subroutine pushRealDim5KindREAL64(stack, val)
      type(RealDim5KindREAL64Stack), intent(inout):: stack
      Real(kind = REAL64), dimension(:, :, :, :, :), intent(in):: val
      type(RealDim5KindREAL64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim5KindREAL64

    function popRealDim5KindREAL64(stack, val) result(isSuccess)
      type(RealDim5KindREAL64Stack), intent(inout):: stack
      Real(kind = REAL64), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim5KindREAL64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim5KindREAL64

    function is_emptyRealDim5KindREAL64(stack) result(answer)
      type(RealDim5KindREAL64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim5KindREAL64
    subroutine pushRealDim5KindREAL128(stack, val)
      type(RealDim5KindREAL128Stack), intent(inout):: stack
      Real(kind = REAL128), dimension(:, :, :, :, :), intent(in):: val
      type(RealDim5KindREAL128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim5KindREAL128

    function popRealDim5KindREAL128(stack, val) result(isSuccess)
      type(RealDim5KindREAL128Stack), intent(inout):: stack
      Real(kind = REAL128), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim5KindREAL128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim5KindREAL128

    function is_emptyRealDim5KindREAL128(stack) result(answer)
      type(RealDim5KindREAL128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim5KindREAL128
    subroutine pushRealDim6KindREAL32(stack, val)
      type(RealDim6KindREAL32Stack), intent(inout):: stack
      Real(kind = REAL32), dimension(:, :, :, :, :, :), intent(in):: val
      type(RealDim6KindREAL32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim6KindREAL32

    function popRealDim6KindREAL32(stack, val) result(isSuccess)
      type(RealDim6KindREAL32Stack), intent(inout):: stack
      Real(kind = REAL32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim6KindREAL32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim6KindREAL32

    function is_emptyRealDim6KindREAL32(stack) result(answer)
      type(RealDim6KindREAL32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim6KindREAL32
    subroutine pushRealDim6KindREAL64(stack, val)
      type(RealDim6KindREAL64Stack), intent(inout):: stack
      Real(kind = REAL64), dimension(:, :, :, :, :, :), intent(in):: val
      type(RealDim6KindREAL64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim6KindREAL64

    function popRealDim6KindREAL64(stack, val) result(isSuccess)
      type(RealDim6KindREAL64Stack), intent(inout):: stack
      Real(kind = REAL64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim6KindREAL64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim6KindREAL64

    function is_emptyRealDim6KindREAL64(stack) result(answer)
      type(RealDim6KindREAL64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim6KindREAL64
    subroutine pushRealDim6KindREAL128(stack, val)
      type(RealDim6KindREAL128Stack), intent(inout):: stack
      Real(kind = REAL128), dimension(:, :, :, :, :, :), intent(in):: val
      type(RealDim6KindREAL128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim6KindREAL128

    function popRealDim6KindREAL128(stack, val) result(isSuccess)
      type(RealDim6KindREAL128Stack), intent(inout):: stack
      Real(kind = REAL128), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim6KindREAL128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim6KindREAL128

    function is_emptyRealDim6KindREAL128(stack) result(answer)
      type(RealDim6KindREAL128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim6KindREAL128
    subroutine pushRealDim7KindREAL32(stack, val)
      type(RealDim7KindREAL32Stack), intent(inout):: stack
      Real(kind = REAL32), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(RealDim7KindREAL32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim7KindREAL32

    function popRealDim7KindREAL32(stack, val) result(isSuccess)
      type(RealDim7KindREAL32Stack), intent(inout):: stack
      Real(kind = REAL32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim7KindREAL32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim7KindREAL32

    function is_emptyRealDim7KindREAL32(stack) result(answer)
      type(RealDim7KindREAL32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim7KindREAL32
    subroutine pushRealDim7KindREAL64(stack, val)
      type(RealDim7KindREAL64Stack), intent(inout):: stack
      Real(kind = REAL64), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(RealDim7KindREAL64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim7KindREAL64

    function popRealDim7KindREAL64(stack, val) result(isSuccess)
      type(RealDim7KindREAL64Stack), intent(inout):: stack
      Real(kind = REAL64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim7KindREAL64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim7KindREAL64

    function is_emptyRealDim7KindREAL64(stack) result(answer)
      type(RealDim7KindREAL64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim7KindREAL64
    subroutine pushRealDim7KindREAL128(stack, val)
      type(RealDim7KindREAL128Stack), intent(inout):: stack
      Real(kind = REAL128), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(RealDim7KindREAL128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushRealDim7KindREAL128

    function popRealDim7KindREAL128(stack, val) result(isSuccess)
      type(RealDim7KindREAL128Stack), intent(inout):: stack
      Real(kind = REAL128), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(RealDim7KindREAL128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popRealDim7KindREAL128

    function is_emptyRealDim7KindREAL128(stack) result(answer)
      type(RealDim7KindREAL128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyRealDim7KindREAL128
    subroutine pushIntegerDim0KindINT8(stack, val)
      type(IntegerDim0KindINT8Stack), intent(inout):: stack
      Integer(kind = INT8), intent(in):: val
      type(IntegerDim0KindINT8StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim0KindINT8

    function popIntegerDim0KindINT8(stack, val) result(isSuccess)
      type(IntegerDim0KindINT8Stack), intent(inout):: stack
      Integer(kind = INT8), intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim0KindINT8StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim0KindINT8

    function is_emptyIntegerDim0KindINT8(stack) result(answer)
      type(IntegerDim0KindINT8Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim0KindINT8
    subroutine pushIntegerDim0KindINT16(stack, val)
      type(IntegerDim0KindINT16Stack), intent(inout):: stack
      Integer(kind = INT16), intent(in):: val
      type(IntegerDim0KindINT16StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim0KindINT16

    function popIntegerDim0KindINT16(stack, val) result(isSuccess)
      type(IntegerDim0KindINT16Stack), intent(inout):: stack
      Integer(kind = INT16), intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim0KindINT16StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim0KindINT16

    function is_emptyIntegerDim0KindINT16(stack) result(answer)
      type(IntegerDim0KindINT16Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim0KindINT16
    subroutine pushIntegerDim0KindINT32(stack, val)
      type(IntegerDim0KindINT32Stack), intent(inout):: stack
      Integer(kind = INT32), intent(in):: val
      type(IntegerDim0KindINT32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim0KindINT32

    function popIntegerDim0KindINT32(stack, val) result(isSuccess)
      type(IntegerDim0KindINT32Stack), intent(inout):: stack
      Integer(kind = INT32), intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim0KindINT32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim0KindINT32

    function is_emptyIntegerDim0KindINT32(stack) result(answer)
      type(IntegerDim0KindINT32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim0KindINT32
    subroutine pushIntegerDim0KindINT64(stack, val)
      type(IntegerDim0KindINT64Stack), intent(inout):: stack
      Integer(kind = INT64), intent(in):: val
      type(IntegerDim0KindINT64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim0KindINT64

    function popIntegerDim0KindINT64(stack, val) result(isSuccess)
      type(IntegerDim0KindINT64Stack), intent(inout):: stack
      Integer(kind = INT64), intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim0KindINT64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim0KindINT64

    function is_emptyIntegerDim0KindINT64(stack) result(answer)
      type(IntegerDim0KindINT64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim0KindINT64
    subroutine pushIntegerDim1KindINT8(stack, val)
      type(IntegerDim1KindINT8Stack), intent(inout):: stack
      Integer(kind = INT8), dimension(:), intent(in):: val
      type(IntegerDim1KindINT8StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim1KindINT8

    function popIntegerDim1KindINT8(stack, val) result(isSuccess)
      type(IntegerDim1KindINT8Stack), intent(inout):: stack
      Integer(kind = INT8), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim1KindINT8StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim1KindINT8

    function is_emptyIntegerDim1KindINT8(stack) result(answer)
      type(IntegerDim1KindINT8Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim1KindINT8
    subroutine pushIntegerDim1KindINT16(stack, val)
      type(IntegerDim1KindINT16Stack), intent(inout):: stack
      Integer(kind = INT16), dimension(:), intent(in):: val
      type(IntegerDim1KindINT16StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim1KindINT16

    function popIntegerDim1KindINT16(stack, val) result(isSuccess)
      type(IntegerDim1KindINT16Stack), intent(inout):: stack
      Integer(kind = INT16), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim1KindINT16StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim1KindINT16

    function is_emptyIntegerDim1KindINT16(stack) result(answer)
      type(IntegerDim1KindINT16Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim1KindINT16
    subroutine pushIntegerDim1KindINT32(stack, val)
      type(IntegerDim1KindINT32Stack), intent(inout):: stack
      Integer(kind = INT32), dimension(:), intent(in):: val
      type(IntegerDim1KindINT32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim1KindINT32

    function popIntegerDim1KindINT32(stack, val) result(isSuccess)
      type(IntegerDim1KindINT32Stack), intent(inout):: stack
      Integer(kind = INT32), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim1KindINT32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim1KindINT32

    function is_emptyIntegerDim1KindINT32(stack) result(answer)
      type(IntegerDim1KindINT32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim1KindINT32
    subroutine pushIntegerDim1KindINT64(stack, val)
      type(IntegerDim1KindINT64Stack), intent(inout):: stack
      Integer(kind = INT64), dimension(:), intent(in):: val
      type(IntegerDim1KindINT64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim1KindINT64

    function popIntegerDim1KindINT64(stack, val) result(isSuccess)
      type(IntegerDim1KindINT64Stack), intent(inout):: stack
      Integer(kind = INT64), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim1KindINT64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim1KindINT64

    function is_emptyIntegerDim1KindINT64(stack) result(answer)
      type(IntegerDim1KindINT64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim1KindINT64
    subroutine pushIntegerDim2KindINT8(stack, val)
      type(IntegerDim2KindINT8Stack), intent(inout):: stack
      Integer(kind = INT8), dimension(:, :), intent(in):: val
      type(IntegerDim2KindINT8StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim2KindINT8

    function popIntegerDim2KindINT8(stack, val) result(isSuccess)
      type(IntegerDim2KindINT8Stack), intent(inout):: stack
      Integer(kind = INT8), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim2KindINT8StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim2KindINT8

    function is_emptyIntegerDim2KindINT8(stack) result(answer)
      type(IntegerDim2KindINT8Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim2KindINT8
    subroutine pushIntegerDim2KindINT16(stack, val)
      type(IntegerDim2KindINT16Stack), intent(inout):: stack
      Integer(kind = INT16), dimension(:, :), intent(in):: val
      type(IntegerDim2KindINT16StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim2KindINT16

    function popIntegerDim2KindINT16(stack, val) result(isSuccess)
      type(IntegerDim2KindINT16Stack), intent(inout):: stack
      Integer(kind = INT16), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim2KindINT16StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim2KindINT16

    function is_emptyIntegerDim2KindINT16(stack) result(answer)
      type(IntegerDim2KindINT16Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim2KindINT16
    subroutine pushIntegerDim2KindINT32(stack, val)
      type(IntegerDim2KindINT32Stack), intent(inout):: stack
      Integer(kind = INT32), dimension(:, :), intent(in):: val
      type(IntegerDim2KindINT32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim2KindINT32

    function popIntegerDim2KindINT32(stack, val) result(isSuccess)
      type(IntegerDim2KindINT32Stack), intent(inout):: stack
      Integer(kind = INT32), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim2KindINT32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim2KindINT32

    function is_emptyIntegerDim2KindINT32(stack) result(answer)
      type(IntegerDim2KindINT32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim2KindINT32
    subroutine pushIntegerDim2KindINT64(stack, val)
      type(IntegerDim2KindINT64Stack), intent(inout):: stack
      Integer(kind = INT64), dimension(:, :), intent(in):: val
      type(IntegerDim2KindINT64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim2KindINT64

    function popIntegerDim2KindINT64(stack, val) result(isSuccess)
      type(IntegerDim2KindINT64Stack), intent(inout):: stack
      Integer(kind = INT64), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim2KindINT64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim2KindINT64

    function is_emptyIntegerDim2KindINT64(stack) result(answer)
      type(IntegerDim2KindINT64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim2KindINT64
    subroutine pushIntegerDim3KindINT8(stack, val)
      type(IntegerDim3KindINT8Stack), intent(inout):: stack
      Integer(kind = INT8), dimension(:, :, :), intent(in):: val
      type(IntegerDim3KindINT8StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim3KindINT8

    function popIntegerDim3KindINT8(stack, val) result(isSuccess)
      type(IntegerDim3KindINT8Stack), intent(inout):: stack
      Integer(kind = INT8), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim3KindINT8StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim3KindINT8

    function is_emptyIntegerDim3KindINT8(stack) result(answer)
      type(IntegerDim3KindINT8Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim3KindINT8
    subroutine pushIntegerDim3KindINT16(stack, val)
      type(IntegerDim3KindINT16Stack), intent(inout):: stack
      Integer(kind = INT16), dimension(:, :, :), intent(in):: val
      type(IntegerDim3KindINT16StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim3KindINT16

    function popIntegerDim3KindINT16(stack, val) result(isSuccess)
      type(IntegerDim3KindINT16Stack), intent(inout):: stack
      Integer(kind = INT16), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim3KindINT16StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim3KindINT16

    function is_emptyIntegerDim3KindINT16(stack) result(answer)
      type(IntegerDim3KindINT16Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim3KindINT16
    subroutine pushIntegerDim3KindINT32(stack, val)
      type(IntegerDim3KindINT32Stack), intent(inout):: stack
      Integer(kind = INT32), dimension(:, :, :), intent(in):: val
      type(IntegerDim3KindINT32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim3KindINT32

    function popIntegerDim3KindINT32(stack, val) result(isSuccess)
      type(IntegerDim3KindINT32Stack), intent(inout):: stack
      Integer(kind = INT32), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim3KindINT32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim3KindINT32

    function is_emptyIntegerDim3KindINT32(stack) result(answer)
      type(IntegerDim3KindINT32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim3KindINT32
    subroutine pushIntegerDim3KindINT64(stack, val)
      type(IntegerDim3KindINT64Stack), intent(inout):: stack
      Integer(kind = INT64), dimension(:, :, :), intent(in):: val
      type(IntegerDim3KindINT64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim3KindINT64

    function popIntegerDim3KindINT64(stack, val) result(isSuccess)
      type(IntegerDim3KindINT64Stack), intent(inout):: stack
      Integer(kind = INT64), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim3KindINT64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim3KindINT64

    function is_emptyIntegerDim3KindINT64(stack) result(answer)
      type(IntegerDim3KindINT64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim3KindINT64
    subroutine pushIntegerDim4KindINT8(stack, val)
      type(IntegerDim4KindINT8Stack), intent(inout):: stack
      Integer(kind = INT8), dimension(:, :, :, :), intent(in):: val
      type(IntegerDim4KindINT8StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim4KindINT8

    function popIntegerDim4KindINT8(stack, val) result(isSuccess)
      type(IntegerDim4KindINT8Stack), intent(inout):: stack
      Integer(kind = INT8), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim4KindINT8StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim4KindINT8

    function is_emptyIntegerDim4KindINT8(stack) result(answer)
      type(IntegerDim4KindINT8Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim4KindINT8
    subroutine pushIntegerDim4KindINT16(stack, val)
      type(IntegerDim4KindINT16Stack), intent(inout):: stack
      Integer(kind = INT16), dimension(:, :, :, :), intent(in):: val
      type(IntegerDim4KindINT16StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim4KindINT16

    function popIntegerDim4KindINT16(stack, val) result(isSuccess)
      type(IntegerDim4KindINT16Stack), intent(inout):: stack
      Integer(kind = INT16), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim4KindINT16StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim4KindINT16

    function is_emptyIntegerDim4KindINT16(stack) result(answer)
      type(IntegerDim4KindINT16Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim4KindINT16
    subroutine pushIntegerDim4KindINT32(stack, val)
      type(IntegerDim4KindINT32Stack), intent(inout):: stack
      Integer(kind = INT32), dimension(:, :, :, :), intent(in):: val
      type(IntegerDim4KindINT32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim4KindINT32

    function popIntegerDim4KindINT32(stack, val) result(isSuccess)
      type(IntegerDim4KindINT32Stack), intent(inout):: stack
      Integer(kind = INT32), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim4KindINT32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim4KindINT32

    function is_emptyIntegerDim4KindINT32(stack) result(answer)
      type(IntegerDim4KindINT32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim4KindINT32
    subroutine pushIntegerDim4KindINT64(stack, val)
      type(IntegerDim4KindINT64Stack), intent(inout):: stack
      Integer(kind = INT64), dimension(:, :, :, :), intent(in):: val
      type(IntegerDim4KindINT64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim4KindINT64

    function popIntegerDim4KindINT64(stack, val) result(isSuccess)
      type(IntegerDim4KindINT64Stack), intent(inout):: stack
      Integer(kind = INT64), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim4KindINT64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim4KindINT64

    function is_emptyIntegerDim4KindINT64(stack) result(answer)
      type(IntegerDim4KindINT64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim4KindINT64
    subroutine pushIntegerDim5KindINT8(stack, val)
      type(IntegerDim5KindINT8Stack), intent(inout):: stack
      Integer(kind = INT8), dimension(:, :, :, :, :), intent(in):: val
      type(IntegerDim5KindINT8StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim5KindINT8

    function popIntegerDim5KindINT8(stack, val) result(isSuccess)
      type(IntegerDim5KindINT8Stack), intent(inout):: stack
      Integer(kind = INT8), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim5KindINT8StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim5KindINT8

    function is_emptyIntegerDim5KindINT8(stack) result(answer)
      type(IntegerDim5KindINT8Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim5KindINT8
    subroutine pushIntegerDim5KindINT16(stack, val)
      type(IntegerDim5KindINT16Stack), intent(inout):: stack
      Integer(kind = INT16), dimension(:, :, :, :, :), intent(in):: val
      type(IntegerDim5KindINT16StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim5KindINT16

    function popIntegerDim5KindINT16(stack, val) result(isSuccess)
      type(IntegerDim5KindINT16Stack), intent(inout):: stack
      Integer(kind = INT16), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim5KindINT16StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim5KindINT16

    function is_emptyIntegerDim5KindINT16(stack) result(answer)
      type(IntegerDim5KindINT16Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim5KindINT16
    subroutine pushIntegerDim5KindINT32(stack, val)
      type(IntegerDim5KindINT32Stack), intent(inout):: stack
      Integer(kind = INT32), dimension(:, :, :, :, :), intent(in):: val
      type(IntegerDim5KindINT32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim5KindINT32

    function popIntegerDim5KindINT32(stack, val) result(isSuccess)
      type(IntegerDim5KindINT32Stack), intent(inout):: stack
      Integer(kind = INT32), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim5KindINT32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim5KindINT32

    function is_emptyIntegerDim5KindINT32(stack) result(answer)
      type(IntegerDim5KindINT32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim5KindINT32
    subroutine pushIntegerDim5KindINT64(stack, val)
      type(IntegerDim5KindINT64Stack), intent(inout):: stack
      Integer(kind = INT64), dimension(:, :, :, :, :), intent(in):: val
      type(IntegerDim5KindINT64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim5KindINT64

    function popIntegerDim5KindINT64(stack, val) result(isSuccess)
      type(IntegerDim5KindINT64Stack), intent(inout):: stack
      Integer(kind = INT64), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim5KindINT64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim5KindINT64

    function is_emptyIntegerDim5KindINT64(stack) result(answer)
      type(IntegerDim5KindINT64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim5KindINT64
    subroutine pushIntegerDim6KindINT8(stack, val)
      type(IntegerDim6KindINT8Stack), intent(inout):: stack
      Integer(kind = INT8), dimension(:, :, :, :, :, :), intent(in):: val
      type(IntegerDim6KindINT8StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim6KindINT8

    function popIntegerDim6KindINT8(stack, val) result(isSuccess)
      type(IntegerDim6KindINT8Stack), intent(inout):: stack
      Integer(kind = INT8), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim6KindINT8StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim6KindINT8

    function is_emptyIntegerDim6KindINT8(stack) result(answer)
      type(IntegerDim6KindINT8Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim6KindINT8
    subroutine pushIntegerDim6KindINT16(stack, val)
      type(IntegerDim6KindINT16Stack), intent(inout):: stack
      Integer(kind = INT16), dimension(:, :, :, :, :, :), intent(in):: val
      type(IntegerDim6KindINT16StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim6KindINT16

    function popIntegerDim6KindINT16(stack, val) result(isSuccess)
      type(IntegerDim6KindINT16Stack), intent(inout):: stack
      Integer(kind = INT16), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim6KindINT16StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim6KindINT16

    function is_emptyIntegerDim6KindINT16(stack) result(answer)
      type(IntegerDim6KindINT16Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim6KindINT16
    subroutine pushIntegerDim6KindINT32(stack, val)
      type(IntegerDim6KindINT32Stack), intent(inout):: stack
      Integer(kind = INT32), dimension(:, :, :, :, :, :), intent(in):: val
      type(IntegerDim6KindINT32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim6KindINT32

    function popIntegerDim6KindINT32(stack, val) result(isSuccess)
      type(IntegerDim6KindINT32Stack), intent(inout):: stack
      Integer(kind = INT32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim6KindINT32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim6KindINT32

    function is_emptyIntegerDim6KindINT32(stack) result(answer)
      type(IntegerDim6KindINT32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim6KindINT32
    subroutine pushIntegerDim6KindINT64(stack, val)
      type(IntegerDim6KindINT64Stack), intent(inout):: stack
      Integer(kind = INT64), dimension(:, :, :, :, :, :), intent(in):: val
      type(IntegerDim6KindINT64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim6KindINT64

    function popIntegerDim6KindINT64(stack, val) result(isSuccess)
      type(IntegerDim6KindINT64Stack), intent(inout):: stack
      Integer(kind = INT64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim6KindINT64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim6KindINT64

    function is_emptyIntegerDim6KindINT64(stack) result(answer)
      type(IntegerDim6KindINT64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim6KindINT64
    subroutine pushIntegerDim7KindINT8(stack, val)
      type(IntegerDim7KindINT8Stack), intent(inout):: stack
      Integer(kind = INT8), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(IntegerDim7KindINT8StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim7KindINT8

    function popIntegerDim7KindINT8(stack, val) result(isSuccess)
      type(IntegerDim7KindINT8Stack), intent(inout):: stack
      Integer(kind = INT8), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim7KindINT8StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim7KindINT8

    function is_emptyIntegerDim7KindINT8(stack) result(answer)
      type(IntegerDim7KindINT8Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim7KindINT8
    subroutine pushIntegerDim7KindINT16(stack, val)
      type(IntegerDim7KindINT16Stack), intent(inout):: stack
      Integer(kind = INT16), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(IntegerDim7KindINT16StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim7KindINT16

    function popIntegerDim7KindINT16(stack, val) result(isSuccess)
      type(IntegerDim7KindINT16Stack), intent(inout):: stack
      Integer(kind = INT16), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim7KindINT16StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim7KindINT16

    function is_emptyIntegerDim7KindINT16(stack) result(answer)
      type(IntegerDim7KindINT16Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim7KindINT16
    subroutine pushIntegerDim7KindINT32(stack, val)
      type(IntegerDim7KindINT32Stack), intent(inout):: stack
      Integer(kind = INT32), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(IntegerDim7KindINT32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim7KindINT32

    function popIntegerDim7KindINT32(stack, val) result(isSuccess)
      type(IntegerDim7KindINT32Stack), intent(inout):: stack
      Integer(kind = INT32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim7KindINT32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim7KindINT32

    function is_emptyIntegerDim7KindINT32(stack) result(answer)
      type(IntegerDim7KindINT32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim7KindINT32
    subroutine pushIntegerDim7KindINT64(stack, val)
      type(IntegerDim7KindINT64Stack), intent(inout):: stack
      Integer(kind = INT64), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(IntegerDim7KindINT64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushIntegerDim7KindINT64

    function popIntegerDim7KindINT64(stack, val) result(isSuccess)
      type(IntegerDim7KindINT64Stack), intent(inout):: stack
      Integer(kind = INT64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(IntegerDim7KindINT64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popIntegerDim7KindINT64

    function is_emptyIntegerDim7KindINT64(stack) result(answer)
      type(IntegerDim7KindINT64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyIntegerDim7KindINT64
    subroutine pushLogicalDim0(stack, val)
      type(LogicalDim0Stack), intent(inout):: stack
      Logical, intent(in):: val
      type(LogicalDim0StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushLogicalDim0

    function popLogicalDim0(stack, val) result(isSuccess)
      type(LogicalDim0Stack), intent(inout):: stack
      Logical, intent(inout):: val
      Logical:: isSuccess
      type(LogicalDim0StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popLogicalDim0

    function is_emptyLogicalDim0(stack) result(answer)
      type(LogicalDim0Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyLogicalDim0
    subroutine pushLogicalDim1(stack, val)
      type(LogicalDim1Stack), intent(inout):: stack
      Logical, dimension(:), intent(in):: val
      type(LogicalDim1StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushLogicalDim1

    function popLogicalDim1(stack, val) result(isSuccess)
      type(LogicalDim1Stack), intent(inout):: stack
      Logical, dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(LogicalDim1StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popLogicalDim1

    function is_emptyLogicalDim1(stack) result(answer)
      type(LogicalDim1Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyLogicalDim1
    subroutine pushLogicalDim2(stack, val)
      type(LogicalDim2Stack), intent(inout):: stack
      Logical, dimension(:, :), intent(in):: val
      type(LogicalDim2StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushLogicalDim2

    function popLogicalDim2(stack, val) result(isSuccess)
      type(LogicalDim2Stack), intent(inout):: stack
      Logical, dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(LogicalDim2StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popLogicalDim2

    function is_emptyLogicalDim2(stack) result(answer)
      type(LogicalDim2Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyLogicalDim2
    subroutine pushLogicalDim3(stack, val)
      type(LogicalDim3Stack), intent(inout):: stack
      Logical, dimension(:, :, :), intent(in):: val
      type(LogicalDim3StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushLogicalDim3

    function popLogicalDim3(stack, val) result(isSuccess)
      type(LogicalDim3Stack), intent(inout):: stack
      Logical, dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(LogicalDim3StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popLogicalDim3

    function is_emptyLogicalDim3(stack) result(answer)
      type(LogicalDim3Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyLogicalDim3
    subroutine pushLogicalDim4(stack, val)
      type(LogicalDim4Stack), intent(inout):: stack
      Logical, dimension(:, :, :, :), intent(in):: val
      type(LogicalDim4StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushLogicalDim4

    function popLogicalDim4(stack, val) result(isSuccess)
      type(LogicalDim4Stack), intent(inout):: stack
      Logical, dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(LogicalDim4StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popLogicalDim4

    function is_emptyLogicalDim4(stack) result(answer)
      type(LogicalDim4Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyLogicalDim4
    subroutine pushLogicalDim5(stack, val)
      type(LogicalDim5Stack), intent(inout):: stack
      Logical, dimension(:, :, :, :, :), intent(in):: val
      type(LogicalDim5StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushLogicalDim5

    function popLogicalDim5(stack, val) result(isSuccess)
      type(LogicalDim5Stack), intent(inout):: stack
      Logical, dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(LogicalDim5StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popLogicalDim5

    function is_emptyLogicalDim5(stack) result(answer)
      type(LogicalDim5Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyLogicalDim5
    subroutine pushLogicalDim6(stack, val)
      type(LogicalDim6Stack), intent(inout):: stack
      Logical, dimension(:, :, :, :, :, :), intent(in):: val
      type(LogicalDim6StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushLogicalDim6

    function popLogicalDim6(stack, val) result(isSuccess)
      type(LogicalDim6Stack), intent(inout):: stack
      Logical, dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(LogicalDim6StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popLogicalDim6

    function is_emptyLogicalDim6(stack) result(answer)
      type(LogicalDim6Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyLogicalDim6
    subroutine pushLogicalDim7(stack, val)
      type(LogicalDim7Stack), intent(inout):: stack
      Logical, dimension(:, :, :, :, :, :, :), intent(in):: val
      type(LogicalDim7StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushLogicalDim7

    function popLogicalDim7(stack, val) result(isSuccess)
      type(LogicalDim7Stack), intent(inout):: stack
      Logical, dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(LogicalDim7StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popLogicalDim7

    function is_emptyLogicalDim7(stack) result(answer)
      type(LogicalDim7Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyLogicalDim7
    subroutine pushComplexDim0KindREAL32(stack, val)
      type(ComplexDim0KindREAL32Stack), intent(inout):: stack
      Complex(kind = REAL32), intent(in):: val
      type(ComplexDim0KindREAL32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim0KindREAL32

    function popComplexDim0KindREAL32(stack, val) result(isSuccess)
      type(ComplexDim0KindREAL32Stack), intent(inout):: stack
      Complex(kind = REAL32), intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim0KindREAL32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim0KindREAL32

    function is_emptyComplexDim0KindREAL32(stack) result(answer)
      type(ComplexDim0KindREAL32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim0KindREAL32
    subroutine pushComplexDim0KindREAL64(stack, val)
      type(ComplexDim0KindREAL64Stack), intent(inout):: stack
      Complex(kind = REAL64), intent(in):: val
      type(ComplexDim0KindREAL64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim0KindREAL64

    function popComplexDim0KindREAL64(stack, val) result(isSuccess)
      type(ComplexDim0KindREAL64Stack), intent(inout):: stack
      Complex(kind = REAL64), intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim0KindREAL64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim0KindREAL64

    function is_emptyComplexDim0KindREAL64(stack) result(answer)
      type(ComplexDim0KindREAL64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim0KindREAL64
    subroutine pushComplexDim0KindREAL128(stack, val)
      type(ComplexDim0KindREAL128Stack), intent(inout):: stack
      Complex(kind = REAL128), intent(in):: val
      type(ComplexDim0KindREAL128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim0KindREAL128

    function popComplexDim0KindREAL128(stack, val) result(isSuccess)
      type(ComplexDim0KindREAL128Stack), intent(inout):: stack
      Complex(kind = REAL128), intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim0KindREAL128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim0KindREAL128

    function is_emptyComplexDim0KindREAL128(stack) result(answer)
      type(ComplexDim0KindREAL128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim0KindREAL128
    subroutine pushComplexDim1KindREAL32(stack, val)
      type(ComplexDim1KindREAL32Stack), intent(inout):: stack
      Complex(kind = REAL32), dimension(:), intent(in):: val
      type(ComplexDim1KindREAL32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim1KindREAL32

    function popComplexDim1KindREAL32(stack, val) result(isSuccess)
      type(ComplexDim1KindREAL32Stack), intent(inout):: stack
      Complex(kind = REAL32), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim1KindREAL32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim1KindREAL32

    function is_emptyComplexDim1KindREAL32(stack) result(answer)
      type(ComplexDim1KindREAL32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim1KindREAL32
    subroutine pushComplexDim1KindREAL64(stack, val)
      type(ComplexDim1KindREAL64Stack), intent(inout):: stack
      Complex(kind = REAL64), dimension(:), intent(in):: val
      type(ComplexDim1KindREAL64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim1KindREAL64

    function popComplexDim1KindREAL64(stack, val) result(isSuccess)
      type(ComplexDim1KindREAL64Stack), intent(inout):: stack
      Complex(kind = REAL64), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim1KindREAL64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim1KindREAL64

    function is_emptyComplexDim1KindREAL64(stack) result(answer)
      type(ComplexDim1KindREAL64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim1KindREAL64
    subroutine pushComplexDim1KindREAL128(stack, val)
      type(ComplexDim1KindREAL128Stack), intent(inout):: stack
      Complex(kind = REAL128), dimension(:), intent(in):: val
      type(ComplexDim1KindREAL128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim1KindREAL128

    function popComplexDim1KindREAL128(stack, val) result(isSuccess)
      type(ComplexDim1KindREAL128Stack), intent(inout):: stack
      Complex(kind = REAL128), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim1KindREAL128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim1KindREAL128

    function is_emptyComplexDim1KindREAL128(stack) result(answer)
      type(ComplexDim1KindREAL128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim1KindREAL128
    subroutine pushComplexDim2KindREAL32(stack, val)
      type(ComplexDim2KindREAL32Stack), intent(inout):: stack
      Complex(kind = REAL32), dimension(:, :), intent(in):: val
      type(ComplexDim2KindREAL32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim2KindREAL32

    function popComplexDim2KindREAL32(stack, val) result(isSuccess)
      type(ComplexDim2KindREAL32Stack), intent(inout):: stack
      Complex(kind = REAL32), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim2KindREAL32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim2KindREAL32

    function is_emptyComplexDim2KindREAL32(stack) result(answer)
      type(ComplexDim2KindREAL32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim2KindREAL32
    subroutine pushComplexDim2KindREAL64(stack, val)
      type(ComplexDim2KindREAL64Stack), intent(inout):: stack
      Complex(kind = REAL64), dimension(:, :), intent(in):: val
      type(ComplexDim2KindREAL64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim2KindREAL64

    function popComplexDim2KindREAL64(stack, val) result(isSuccess)
      type(ComplexDim2KindREAL64Stack), intent(inout):: stack
      Complex(kind = REAL64), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim2KindREAL64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim2KindREAL64

    function is_emptyComplexDim2KindREAL64(stack) result(answer)
      type(ComplexDim2KindREAL64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim2KindREAL64
    subroutine pushComplexDim2KindREAL128(stack, val)
      type(ComplexDim2KindREAL128Stack), intent(inout):: stack
      Complex(kind = REAL128), dimension(:, :), intent(in):: val
      type(ComplexDim2KindREAL128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim2KindREAL128

    function popComplexDim2KindREAL128(stack, val) result(isSuccess)
      type(ComplexDim2KindREAL128Stack), intent(inout):: stack
      Complex(kind = REAL128), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim2KindREAL128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim2KindREAL128

    function is_emptyComplexDim2KindREAL128(stack) result(answer)
      type(ComplexDim2KindREAL128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim2KindREAL128
    subroutine pushComplexDim3KindREAL32(stack, val)
      type(ComplexDim3KindREAL32Stack), intent(inout):: stack
      Complex(kind = REAL32), dimension(:, :, :), intent(in):: val
      type(ComplexDim3KindREAL32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim3KindREAL32

    function popComplexDim3KindREAL32(stack, val) result(isSuccess)
      type(ComplexDim3KindREAL32Stack), intent(inout):: stack
      Complex(kind = REAL32), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim3KindREAL32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim3KindREAL32

    function is_emptyComplexDim3KindREAL32(stack) result(answer)
      type(ComplexDim3KindREAL32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim3KindREAL32
    subroutine pushComplexDim3KindREAL64(stack, val)
      type(ComplexDim3KindREAL64Stack), intent(inout):: stack
      Complex(kind = REAL64), dimension(:, :, :), intent(in):: val
      type(ComplexDim3KindREAL64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim3KindREAL64

    function popComplexDim3KindREAL64(stack, val) result(isSuccess)
      type(ComplexDim3KindREAL64Stack), intent(inout):: stack
      Complex(kind = REAL64), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim3KindREAL64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim3KindREAL64

    function is_emptyComplexDim3KindREAL64(stack) result(answer)
      type(ComplexDim3KindREAL64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim3KindREAL64
    subroutine pushComplexDim3KindREAL128(stack, val)
      type(ComplexDim3KindREAL128Stack), intent(inout):: stack
      Complex(kind = REAL128), dimension(:, :, :), intent(in):: val
      type(ComplexDim3KindREAL128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim3KindREAL128

    function popComplexDim3KindREAL128(stack, val) result(isSuccess)
      type(ComplexDim3KindREAL128Stack), intent(inout):: stack
      Complex(kind = REAL128), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim3KindREAL128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim3KindREAL128

    function is_emptyComplexDim3KindREAL128(stack) result(answer)
      type(ComplexDim3KindREAL128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim3KindREAL128
    subroutine pushComplexDim4KindREAL32(stack, val)
      type(ComplexDim4KindREAL32Stack), intent(inout):: stack
      Complex(kind = REAL32), dimension(:, :, :, :), intent(in):: val
      type(ComplexDim4KindREAL32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim4KindREAL32

    function popComplexDim4KindREAL32(stack, val) result(isSuccess)
      type(ComplexDim4KindREAL32Stack), intent(inout):: stack
      Complex(kind = REAL32), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim4KindREAL32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim4KindREAL32

    function is_emptyComplexDim4KindREAL32(stack) result(answer)
      type(ComplexDim4KindREAL32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim4KindREAL32
    subroutine pushComplexDim4KindREAL64(stack, val)
      type(ComplexDim4KindREAL64Stack), intent(inout):: stack
      Complex(kind = REAL64), dimension(:, :, :, :), intent(in):: val
      type(ComplexDim4KindREAL64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim4KindREAL64

    function popComplexDim4KindREAL64(stack, val) result(isSuccess)
      type(ComplexDim4KindREAL64Stack), intent(inout):: stack
      Complex(kind = REAL64), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim4KindREAL64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim4KindREAL64

    function is_emptyComplexDim4KindREAL64(stack) result(answer)
      type(ComplexDim4KindREAL64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim4KindREAL64
    subroutine pushComplexDim4KindREAL128(stack, val)
      type(ComplexDim4KindREAL128Stack), intent(inout):: stack
      Complex(kind = REAL128), dimension(:, :, :, :), intent(in):: val
      type(ComplexDim4KindREAL128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim4KindREAL128

    function popComplexDim4KindREAL128(stack, val) result(isSuccess)
      type(ComplexDim4KindREAL128Stack), intent(inout):: stack
      Complex(kind = REAL128), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim4KindREAL128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim4KindREAL128

    function is_emptyComplexDim4KindREAL128(stack) result(answer)
      type(ComplexDim4KindREAL128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim4KindREAL128
    subroutine pushComplexDim5KindREAL32(stack, val)
      type(ComplexDim5KindREAL32Stack), intent(inout):: stack
      Complex(kind = REAL32), dimension(:, :, :, :, :), intent(in):: val
      type(ComplexDim5KindREAL32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim5KindREAL32

    function popComplexDim5KindREAL32(stack, val) result(isSuccess)
      type(ComplexDim5KindREAL32Stack), intent(inout):: stack
      Complex(kind = REAL32), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim5KindREAL32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim5KindREAL32

    function is_emptyComplexDim5KindREAL32(stack) result(answer)
      type(ComplexDim5KindREAL32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim5KindREAL32
    subroutine pushComplexDim5KindREAL64(stack, val)
      type(ComplexDim5KindREAL64Stack), intent(inout):: stack
      Complex(kind = REAL64), dimension(:, :, :, :, :), intent(in):: val
      type(ComplexDim5KindREAL64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim5KindREAL64

    function popComplexDim5KindREAL64(stack, val) result(isSuccess)
      type(ComplexDim5KindREAL64Stack), intent(inout):: stack
      Complex(kind = REAL64), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim5KindREAL64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim5KindREAL64

    function is_emptyComplexDim5KindREAL64(stack) result(answer)
      type(ComplexDim5KindREAL64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim5KindREAL64
    subroutine pushComplexDim5KindREAL128(stack, val)
      type(ComplexDim5KindREAL128Stack), intent(inout):: stack
      Complex(kind = REAL128), dimension(:, :, :, :, :), intent(in):: val
      type(ComplexDim5KindREAL128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim5KindREAL128

    function popComplexDim5KindREAL128(stack, val) result(isSuccess)
      type(ComplexDim5KindREAL128Stack), intent(inout):: stack
      Complex(kind = REAL128), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim5KindREAL128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim5KindREAL128

    function is_emptyComplexDim5KindREAL128(stack) result(answer)
      type(ComplexDim5KindREAL128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim5KindREAL128
    subroutine pushComplexDim6KindREAL32(stack, val)
      type(ComplexDim6KindREAL32Stack), intent(inout):: stack
      Complex(kind = REAL32), dimension(:, :, :, :, :, :), intent(in):: val
      type(ComplexDim6KindREAL32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim6KindREAL32

    function popComplexDim6KindREAL32(stack, val) result(isSuccess)
      type(ComplexDim6KindREAL32Stack), intent(inout):: stack
      Complex(kind = REAL32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim6KindREAL32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim6KindREAL32

    function is_emptyComplexDim6KindREAL32(stack) result(answer)
      type(ComplexDim6KindREAL32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim6KindREAL32
    subroutine pushComplexDim6KindREAL64(stack, val)
      type(ComplexDim6KindREAL64Stack), intent(inout):: stack
      Complex(kind = REAL64), dimension(:, :, :, :, :, :), intent(in):: val
      type(ComplexDim6KindREAL64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim6KindREAL64

    function popComplexDim6KindREAL64(stack, val) result(isSuccess)
      type(ComplexDim6KindREAL64Stack), intent(inout):: stack
      Complex(kind = REAL64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim6KindREAL64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim6KindREAL64

    function is_emptyComplexDim6KindREAL64(stack) result(answer)
      type(ComplexDim6KindREAL64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim6KindREAL64
    subroutine pushComplexDim6KindREAL128(stack, val)
      type(ComplexDim6KindREAL128Stack), intent(inout):: stack
      Complex(kind = REAL128), dimension(:, :, :, :, :, :), intent(in):: val
      type(ComplexDim6KindREAL128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim6KindREAL128

    function popComplexDim6KindREAL128(stack, val) result(isSuccess)
      type(ComplexDim6KindREAL128Stack), intent(inout):: stack
      Complex(kind = REAL128), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim6KindREAL128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim6KindREAL128

    function is_emptyComplexDim6KindREAL128(stack) result(answer)
      type(ComplexDim6KindREAL128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim6KindREAL128
    subroutine pushComplexDim7KindREAL32(stack, val)
      type(ComplexDim7KindREAL32Stack), intent(inout):: stack
      Complex(kind = REAL32), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(ComplexDim7KindREAL32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim7KindREAL32

    function popComplexDim7KindREAL32(stack, val) result(isSuccess)
      type(ComplexDim7KindREAL32Stack), intent(inout):: stack
      Complex(kind = REAL32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim7KindREAL32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim7KindREAL32

    function is_emptyComplexDim7KindREAL32(stack) result(answer)
      type(ComplexDim7KindREAL32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim7KindREAL32
    subroutine pushComplexDim7KindREAL64(stack, val)
      type(ComplexDim7KindREAL64Stack), intent(inout):: stack
      Complex(kind = REAL64), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(ComplexDim7KindREAL64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim7KindREAL64

    function popComplexDim7KindREAL64(stack, val) result(isSuccess)
      type(ComplexDim7KindREAL64Stack), intent(inout):: stack
      Complex(kind = REAL64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim7KindREAL64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim7KindREAL64

    function is_emptyComplexDim7KindREAL64(stack) result(answer)
      type(ComplexDim7KindREAL64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim7KindREAL64
    subroutine pushComplexDim7KindREAL128(stack, val)
      type(ComplexDim7KindREAL128Stack), intent(inout):: stack
      Complex(kind = REAL128), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(ComplexDim7KindREAL128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushComplexDim7KindREAL128

    function popComplexDim7KindREAL128(stack, val) result(isSuccess)
      type(ComplexDim7KindREAL128Stack), intent(inout):: stack
      Complex(kind = REAL128), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(ComplexDim7KindREAL128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popComplexDim7KindREAL128

    function is_emptyComplexDim7KindREAL128(stack) result(answer)
      type(ComplexDim7KindREAL128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyComplexDim7KindREAL128
    subroutine pushCharacterDim0Len1(stack, val)
      type(CharacterDim0Len1Stack), intent(inout):: stack
      Character(len = 1), intent(in):: val
      type(CharacterDim0Len1StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim0Len1

    function popCharacterDim0Len1(stack, val) result(isSuccess)
      type(CharacterDim0Len1Stack), intent(inout):: stack
      Character(len = 1), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len1StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim0Len1

    function is_emptyCharacterDim0Len1(stack) result(answer)
      type(CharacterDim0Len1Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim0Len1
    subroutine pushCharacterDim0Len2(stack, val)
      type(CharacterDim0Len2Stack), intent(inout):: stack
      Character(len = 2), intent(in):: val
      type(CharacterDim0Len2StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim0Len2

    function popCharacterDim0Len2(stack, val) result(isSuccess)
      type(CharacterDim0Len2Stack), intent(inout):: stack
      Character(len = 2), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len2StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim0Len2

    function is_emptyCharacterDim0Len2(stack) result(answer)
      type(CharacterDim0Len2Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim0Len2
    subroutine pushCharacterDim0Len4(stack, val)
      type(CharacterDim0Len4Stack), intent(inout):: stack
      Character(len = 4), intent(in):: val
      type(CharacterDim0Len4StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim0Len4

    function popCharacterDim0Len4(stack, val) result(isSuccess)
      type(CharacterDim0Len4Stack), intent(inout):: stack
      Character(len = 4), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len4StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim0Len4

    function is_emptyCharacterDim0Len4(stack) result(answer)
      type(CharacterDim0Len4Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim0Len4
    subroutine pushCharacterDim0Len8(stack, val)
      type(CharacterDim0Len8Stack), intent(inout):: stack
      Character(len = 8), intent(in):: val
      type(CharacterDim0Len8StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim0Len8

    function popCharacterDim0Len8(stack, val) result(isSuccess)
      type(CharacterDim0Len8Stack), intent(inout):: stack
      Character(len = 8), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len8StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim0Len8

    function is_emptyCharacterDim0Len8(stack) result(answer)
      type(CharacterDim0Len8Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim0Len8
    subroutine pushCharacterDim0Len16(stack, val)
      type(CharacterDim0Len16Stack), intent(inout):: stack
      Character(len = 16), intent(in):: val
      type(CharacterDim0Len16StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim0Len16

    function popCharacterDim0Len16(stack, val) result(isSuccess)
      type(CharacterDim0Len16Stack), intent(inout):: stack
      Character(len = 16), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len16StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim0Len16

    function is_emptyCharacterDim0Len16(stack) result(answer)
      type(CharacterDim0Len16Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim0Len16
    subroutine pushCharacterDim0Len32(stack, val)
      type(CharacterDim0Len32Stack), intent(inout):: stack
      Character(len = 32), intent(in):: val
      type(CharacterDim0Len32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim0Len32

    function popCharacterDim0Len32(stack, val) result(isSuccess)
      type(CharacterDim0Len32Stack), intent(inout):: stack
      Character(len = 32), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim0Len32

    function is_emptyCharacterDim0Len32(stack) result(answer)
      type(CharacterDim0Len32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim0Len32
    subroutine pushCharacterDim0Len64(stack, val)
      type(CharacterDim0Len64Stack), intent(inout):: stack
      Character(len = 64), intent(in):: val
      type(CharacterDim0Len64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim0Len64

    function popCharacterDim0Len64(stack, val) result(isSuccess)
      type(CharacterDim0Len64Stack), intent(inout):: stack
      Character(len = 64), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim0Len64

    function is_emptyCharacterDim0Len64(stack) result(answer)
      type(CharacterDim0Len64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim0Len64
    subroutine pushCharacterDim0Len128(stack, val)
      type(CharacterDim0Len128Stack), intent(inout):: stack
      Character(len = 128), intent(in):: val
      type(CharacterDim0Len128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim0Len128

    function popCharacterDim0Len128(stack, val) result(isSuccess)
      type(CharacterDim0Len128Stack), intent(inout):: stack
      Character(len = 128), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim0Len128

    function is_emptyCharacterDim0Len128(stack) result(answer)
      type(CharacterDim0Len128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim0Len128
    subroutine pushCharacterDim0Len256(stack, val)
      type(CharacterDim0Len256Stack), intent(inout):: stack
      Character(len = 256), intent(in):: val
      type(CharacterDim0Len256StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim0Len256

    function popCharacterDim0Len256(stack, val) result(isSuccess)
      type(CharacterDim0Len256Stack), intent(inout):: stack
      Character(len = 256), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len256StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim0Len256

    function is_emptyCharacterDim0Len256(stack) result(answer)
      type(CharacterDim0Len256Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim0Len256
    subroutine pushCharacterDim0Len512(stack, val)
      type(CharacterDim0Len512Stack), intent(inout):: stack
      Character(len = 512), intent(in):: val
      type(CharacterDim0Len512StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim0Len512

    function popCharacterDim0Len512(stack, val) result(isSuccess)
      type(CharacterDim0Len512Stack), intent(inout):: stack
      Character(len = 512), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len512StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim0Len512

    function is_emptyCharacterDim0Len512(stack) result(answer)
      type(CharacterDim0Len512Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim0Len512
    subroutine pushCharacterDim0Len1024(stack, val)
      type(CharacterDim0Len1024Stack), intent(inout):: stack
      Character(len = 1024), intent(in):: val
      type(CharacterDim0Len1024StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim0Len1024

    function popCharacterDim0Len1024(stack, val) result(isSuccess)
      type(CharacterDim0Len1024Stack), intent(inout):: stack
      Character(len = 1024), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len1024StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim0Len1024

    function is_emptyCharacterDim0Len1024(stack) result(answer)
      type(CharacterDim0Len1024Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim0Len1024
    subroutine pushCharacterDim0Len2048(stack, val)
      type(CharacterDim0Len2048Stack), intent(inout):: stack
      Character(len = 2048), intent(in):: val
      type(CharacterDim0Len2048StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim0Len2048

    function popCharacterDim0Len2048(stack, val) result(isSuccess)
      type(CharacterDim0Len2048Stack), intent(inout):: stack
      Character(len = 2048), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len2048StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim0Len2048

    function is_emptyCharacterDim0Len2048(stack) result(answer)
      type(CharacterDim0Len2048Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim0Len2048
    subroutine pushCharacterDim0Len4096(stack, val)
      type(CharacterDim0Len4096Stack), intent(inout):: stack
      Character(len = 4096), intent(in):: val
      type(CharacterDim0Len4096StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim0Len4096

    function popCharacterDim0Len4096(stack, val) result(isSuccess)
      type(CharacterDim0Len4096Stack), intent(inout):: stack
      Character(len = 4096), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len4096StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim0Len4096

    function is_emptyCharacterDim0Len4096(stack) result(answer)
      type(CharacterDim0Len4096Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim0Len4096
    subroutine pushCharacterDim0Len8192(stack, val)
      type(CharacterDim0Len8192Stack), intent(inout):: stack
      Character(len = 8192), intent(in):: val
      type(CharacterDim0Len8192StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim0Len8192

    function popCharacterDim0Len8192(stack, val) result(isSuccess)
      type(CharacterDim0Len8192Stack), intent(inout):: stack
      Character(len = 8192), intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim0Len8192StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim0Len8192

    function is_emptyCharacterDim0Len8192(stack) result(answer)
      type(CharacterDim0Len8192Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim0Len8192
    subroutine pushCharacterDim1Len1(stack, val)
      type(CharacterDim1Len1Stack), intent(inout):: stack
      Character(len = 1), dimension(:), intent(in):: val
      type(CharacterDim1Len1StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim1Len1

    function popCharacterDim1Len1(stack, val) result(isSuccess)
      type(CharacterDim1Len1Stack), intent(inout):: stack
      Character(len = 1), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len1StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim1Len1

    function is_emptyCharacterDim1Len1(stack) result(answer)
      type(CharacterDim1Len1Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim1Len1
    subroutine pushCharacterDim1Len2(stack, val)
      type(CharacterDim1Len2Stack), intent(inout):: stack
      Character(len = 2), dimension(:), intent(in):: val
      type(CharacterDim1Len2StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim1Len2

    function popCharacterDim1Len2(stack, val) result(isSuccess)
      type(CharacterDim1Len2Stack), intent(inout):: stack
      Character(len = 2), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len2StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim1Len2

    function is_emptyCharacterDim1Len2(stack) result(answer)
      type(CharacterDim1Len2Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim1Len2
    subroutine pushCharacterDim1Len4(stack, val)
      type(CharacterDim1Len4Stack), intent(inout):: stack
      Character(len = 4), dimension(:), intent(in):: val
      type(CharacterDim1Len4StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim1Len4

    function popCharacterDim1Len4(stack, val) result(isSuccess)
      type(CharacterDim1Len4Stack), intent(inout):: stack
      Character(len = 4), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len4StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim1Len4

    function is_emptyCharacterDim1Len4(stack) result(answer)
      type(CharacterDim1Len4Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim1Len4
    subroutine pushCharacterDim1Len8(stack, val)
      type(CharacterDim1Len8Stack), intent(inout):: stack
      Character(len = 8), dimension(:), intent(in):: val
      type(CharacterDim1Len8StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim1Len8

    function popCharacterDim1Len8(stack, val) result(isSuccess)
      type(CharacterDim1Len8Stack), intent(inout):: stack
      Character(len = 8), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len8StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim1Len8

    function is_emptyCharacterDim1Len8(stack) result(answer)
      type(CharacterDim1Len8Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim1Len8
    subroutine pushCharacterDim1Len16(stack, val)
      type(CharacterDim1Len16Stack), intent(inout):: stack
      Character(len = 16), dimension(:), intent(in):: val
      type(CharacterDim1Len16StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim1Len16

    function popCharacterDim1Len16(stack, val) result(isSuccess)
      type(CharacterDim1Len16Stack), intent(inout):: stack
      Character(len = 16), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len16StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim1Len16

    function is_emptyCharacterDim1Len16(stack) result(answer)
      type(CharacterDim1Len16Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim1Len16
    subroutine pushCharacterDim1Len32(stack, val)
      type(CharacterDim1Len32Stack), intent(inout):: stack
      Character(len = 32), dimension(:), intent(in):: val
      type(CharacterDim1Len32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim1Len32

    function popCharacterDim1Len32(stack, val) result(isSuccess)
      type(CharacterDim1Len32Stack), intent(inout):: stack
      Character(len = 32), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim1Len32

    function is_emptyCharacterDim1Len32(stack) result(answer)
      type(CharacterDim1Len32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim1Len32
    subroutine pushCharacterDim1Len64(stack, val)
      type(CharacterDim1Len64Stack), intent(inout):: stack
      Character(len = 64), dimension(:), intent(in):: val
      type(CharacterDim1Len64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim1Len64

    function popCharacterDim1Len64(stack, val) result(isSuccess)
      type(CharacterDim1Len64Stack), intent(inout):: stack
      Character(len = 64), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim1Len64

    function is_emptyCharacterDim1Len64(stack) result(answer)
      type(CharacterDim1Len64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim1Len64
    subroutine pushCharacterDim1Len128(stack, val)
      type(CharacterDim1Len128Stack), intent(inout):: stack
      Character(len = 128), dimension(:), intent(in):: val
      type(CharacterDim1Len128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim1Len128

    function popCharacterDim1Len128(stack, val) result(isSuccess)
      type(CharacterDim1Len128Stack), intent(inout):: stack
      Character(len = 128), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim1Len128

    function is_emptyCharacterDim1Len128(stack) result(answer)
      type(CharacterDim1Len128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim1Len128
    subroutine pushCharacterDim1Len256(stack, val)
      type(CharacterDim1Len256Stack), intent(inout):: stack
      Character(len = 256), dimension(:), intent(in):: val
      type(CharacterDim1Len256StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim1Len256

    function popCharacterDim1Len256(stack, val) result(isSuccess)
      type(CharacterDim1Len256Stack), intent(inout):: stack
      Character(len = 256), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len256StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim1Len256

    function is_emptyCharacterDim1Len256(stack) result(answer)
      type(CharacterDim1Len256Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim1Len256
    subroutine pushCharacterDim1Len512(stack, val)
      type(CharacterDim1Len512Stack), intent(inout):: stack
      Character(len = 512), dimension(:), intent(in):: val
      type(CharacterDim1Len512StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim1Len512

    function popCharacterDim1Len512(stack, val) result(isSuccess)
      type(CharacterDim1Len512Stack), intent(inout):: stack
      Character(len = 512), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len512StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim1Len512

    function is_emptyCharacterDim1Len512(stack) result(answer)
      type(CharacterDim1Len512Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim1Len512
    subroutine pushCharacterDim1Len1024(stack, val)
      type(CharacterDim1Len1024Stack), intent(inout):: stack
      Character(len = 1024), dimension(:), intent(in):: val
      type(CharacterDim1Len1024StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim1Len1024

    function popCharacterDim1Len1024(stack, val) result(isSuccess)
      type(CharacterDim1Len1024Stack), intent(inout):: stack
      Character(len = 1024), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len1024StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim1Len1024

    function is_emptyCharacterDim1Len1024(stack) result(answer)
      type(CharacterDim1Len1024Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim1Len1024
    subroutine pushCharacterDim1Len2048(stack, val)
      type(CharacterDim1Len2048Stack), intent(inout):: stack
      Character(len = 2048), dimension(:), intent(in):: val
      type(CharacterDim1Len2048StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim1Len2048

    function popCharacterDim1Len2048(stack, val) result(isSuccess)
      type(CharacterDim1Len2048Stack), intent(inout):: stack
      Character(len = 2048), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len2048StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim1Len2048

    function is_emptyCharacterDim1Len2048(stack) result(answer)
      type(CharacterDim1Len2048Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim1Len2048
    subroutine pushCharacterDim1Len4096(stack, val)
      type(CharacterDim1Len4096Stack), intent(inout):: stack
      Character(len = 4096), dimension(:), intent(in):: val
      type(CharacterDim1Len4096StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim1Len4096

    function popCharacterDim1Len4096(stack, val) result(isSuccess)
      type(CharacterDim1Len4096Stack), intent(inout):: stack
      Character(len = 4096), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len4096StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim1Len4096

    function is_emptyCharacterDim1Len4096(stack) result(answer)
      type(CharacterDim1Len4096Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim1Len4096
    subroutine pushCharacterDim1Len8192(stack, val)
      type(CharacterDim1Len8192Stack), intent(inout):: stack
      Character(len = 8192), dimension(:), intent(in):: val
      type(CharacterDim1Len8192StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim1Len8192

    function popCharacterDim1Len8192(stack, val) result(isSuccess)
      type(CharacterDim1Len8192Stack), intent(inout):: stack
      Character(len = 8192), dimension(:), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim1Len8192StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim1Len8192

    function is_emptyCharacterDim1Len8192(stack) result(answer)
      type(CharacterDim1Len8192Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim1Len8192
    subroutine pushCharacterDim2Len1(stack, val)
      type(CharacterDim2Len1Stack), intent(inout):: stack
      Character(len = 1), dimension(:, :), intent(in):: val
      type(CharacterDim2Len1StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim2Len1

    function popCharacterDim2Len1(stack, val) result(isSuccess)
      type(CharacterDim2Len1Stack), intent(inout):: stack
      Character(len = 1), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len1StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim2Len1

    function is_emptyCharacterDim2Len1(stack) result(answer)
      type(CharacterDim2Len1Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim2Len1
    subroutine pushCharacterDim2Len2(stack, val)
      type(CharacterDim2Len2Stack), intent(inout):: stack
      Character(len = 2), dimension(:, :), intent(in):: val
      type(CharacterDim2Len2StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim2Len2

    function popCharacterDim2Len2(stack, val) result(isSuccess)
      type(CharacterDim2Len2Stack), intent(inout):: stack
      Character(len = 2), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len2StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim2Len2

    function is_emptyCharacterDim2Len2(stack) result(answer)
      type(CharacterDim2Len2Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim2Len2
    subroutine pushCharacterDim2Len4(stack, val)
      type(CharacterDim2Len4Stack), intent(inout):: stack
      Character(len = 4), dimension(:, :), intent(in):: val
      type(CharacterDim2Len4StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim2Len4

    function popCharacterDim2Len4(stack, val) result(isSuccess)
      type(CharacterDim2Len4Stack), intent(inout):: stack
      Character(len = 4), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len4StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim2Len4

    function is_emptyCharacterDim2Len4(stack) result(answer)
      type(CharacterDim2Len4Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim2Len4
    subroutine pushCharacterDim2Len8(stack, val)
      type(CharacterDim2Len8Stack), intent(inout):: stack
      Character(len = 8), dimension(:, :), intent(in):: val
      type(CharacterDim2Len8StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim2Len8

    function popCharacterDim2Len8(stack, val) result(isSuccess)
      type(CharacterDim2Len8Stack), intent(inout):: stack
      Character(len = 8), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len8StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim2Len8

    function is_emptyCharacterDim2Len8(stack) result(answer)
      type(CharacterDim2Len8Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim2Len8
    subroutine pushCharacterDim2Len16(stack, val)
      type(CharacterDim2Len16Stack), intent(inout):: stack
      Character(len = 16), dimension(:, :), intent(in):: val
      type(CharacterDim2Len16StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim2Len16

    function popCharacterDim2Len16(stack, val) result(isSuccess)
      type(CharacterDim2Len16Stack), intent(inout):: stack
      Character(len = 16), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len16StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim2Len16

    function is_emptyCharacterDim2Len16(stack) result(answer)
      type(CharacterDim2Len16Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim2Len16
    subroutine pushCharacterDim2Len32(stack, val)
      type(CharacterDim2Len32Stack), intent(inout):: stack
      Character(len = 32), dimension(:, :), intent(in):: val
      type(CharacterDim2Len32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim2Len32

    function popCharacterDim2Len32(stack, val) result(isSuccess)
      type(CharacterDim2Len32Stack), intent(inout):: stack
      Character(len = 32), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim2Len32

    function is_emptyCharacterDim2Len32(stack) result(answer)
      type(CharacterDim2Len32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim2Len32
    subroutine pushCharacterDim2Len64(stack, val)
      type(CharacterDim2Len64Stack), intent(inout):: stack
      Character(len = 64), dimension(:, :), intent(in):: val
      type(CharacterDim2Len64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim2Len64

    function popCharacterDim2Len64(stack, val) result(isSuccess)
      type(CharacterDim2Len64Stack), intent(inout):: stack
      Character(len = 64), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim2Len64

    function is_emptyCharacterDim2Len64(stack) result(answer)
      type(CharacterDim2Len64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim2Len64
    subroutine pushCharacterDim2Len128(stack, val)
      type(CharacterDim2Len128Stack), intent(inout):: stack
      Character(len = 128), dimension(:, :), intent(in):: val
      type(CharacterDim2Len128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim2Len128

    function popCharacterDim2Len128(stack, val) result(isSuccess)
      type(CharacterDim2Len128Stack), intent(inout):: stack
      Character(len = 128), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim2Len128

    function is_emptyCharacterDim2Len128(stack) result(answer)
      type(CharacterDim2Len128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim2Len128
    subroutine pushCharacterDim2Len256(stack, val)
      type(CharacterDim2Len256Stack), intent(inout):: stack
      Character(len = 256), dimension(:, :), intent(in):: val
      type(CharacterDim2Len256StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim2Len256

    function popCharacterDim2Len256(stack, val) result(isSuccess)
      type(CharacterDim2Len256Stack), intent(inout):: stack
      Character(len = 256), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len256StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim2Len256

    function is_emptyCharacterDim2Len256(stack) result(answer)
      type(CharacterDim2Len256Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim2Len256
    subroutine pushCharacterDim2Len512(stack, val)
      type(CharacterDim2Len512Stack), intent(inout):: stack
      Character(len = 512), dimension(:, :), intent(in):: val
      type(CharacterDim2Len512StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim2Len512

    function popCharacterDim2Len512(stack, val) result(isSuccess)
      type(CharacterDim2Len512Stack), intent(inout):: stack
      Character(len = 512), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len512StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim2Len512

    function is_emptyCharacterDim2Len512(stack) result(answer)
      type(CharacterDim2Len512Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim2Len512
    subroutine pushCharacterDim2Len1024(stack, val)
      type(CharacterDim2Len1024Stack), intent(inout):: stack
      Character(len = 1024), dimension(:, :), intent(in):: val
      type(CharacterDim2Len1024StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim2Len1024

    function popCharacterDim2Len1024(stack, val) result(isSuccess)
      type(CharacterDim2Len1024Stack), intent(inout):: stack
      Character(len = 1024), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len1024StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim2Len1024

    function is_emptyCharacterDim2Len1024(stack) result(answer)
      type(CharacterDim2Len1024Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim2Len1024
    subroutine pushCharacterDim2Len2048(stack, val)
      type(CharacterDim2Len2048Stack), intent(inout):: stack
      Character(len = 2048), dimension(:, :), intent(in):: val
      type(CharacterDim2Len2048StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim2Len2048

    function popCharacterDim2Len2048(stack, val) result(isSuccess)
      type(CharacterDim2Len2048Stack), intent(inout):: stack
      Character(len = 2048), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len2048StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim2Len2048

    function is_emptyCharacterDim2Len2048(stack) result(answer)
      type(CharacterDim2Len2048Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim2Len2048
    subroutine pushCharacterDim2Len4096(stack, val)
      type(CharacterDim2Len4096Stack), intent(inout):: stack
      Character(len = 4096), dimension(:, :), intent(in):: val
      type(CharacterDim2Len4096StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim2Len4096

    function popCharacterDim2Len4096(stack, val) result(isSuccess)
      type(CharacterDim2Len4096Stack), intent(inout):: stack
      Character(len = 4096), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len4096StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim2Len4096

    function is_emptyCharacterDim2Len4096(stack) result(answer)
      type(CharacterDim2Len4096Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim2Len4096
    subroutine pushCharacterDim2Len8192(stack, val)
      type(CharacterDim2Len8192Stack), intent(inout):: stack
      Character(len = 8192), dimension(:, :), intent(in):: val
      type(CharacterDim2Len8192StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim2Len8192

    function popCharacterDim2Len8192(stack, val) result(isSuccess)
      type(CharacterDim2Len8192Stack), intent(inout):: stack
      Character(len = 8192), dimension(:, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim2Len8192StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim2Len8192

    function is_emptyCharacterDim2Len8192(stack) result(answer)
      type(CharacterDim2Len8192Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim2Len8192
    subroutine pushCharacterDim3Len1(stack, val)
      type(CharacterDim3Len1Stack), intent(inout):: stack
      Character(len = 1), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len1StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim3Len1

    function popCharacterDim3Len1(stack, val) result(isSuccess)
      type(CharacterDim3Len1Stack), intent(inout):: stack
      Character(len = 1), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len1StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim3Len1

    function is_emptyCharacterDim3Len1(stack) result(answer)
      type(CharacterDim3Len1Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim3Len1
    subroutine pushCharacterDim3Len2(stack, val)
      type(CharacterDim3Len2Stack), intent(inout):: stack
      Character(len = 2), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len2StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim3Len2

    function popCharacterDim3Len2(stack, val) result(isSuccess)
      type(CharacterDim3Len2Stack), intent(inout):: stack
      Character(len = 2), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len2StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim3Len2

    function is_emptyCharacterDim3Len2(stack) result(answer)
      type(CharacterDim3Len2Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim3Len2
    subroutine pushCharacterDim3Len4(stack, val)
      type(CharacterDim3Len4Stack), intent(inout):: stack
      Character(len = 4), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len4StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim3Len4

    function popCharacterDim3Len4(stack, val) result(isSuccess)
      type(CharacterDim3Len4Stack), intent(inout):: stack
      Character(len = 4), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len4StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim3Len4

    function is_emptyCharacterDim3Len4(stack) result(answer)
      type(CharacterDim3Len4Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim3Len4
    subroutine pushCharacterDim3Len8(stack, val)
      type(CharacterDim3Len8Stack), intent(inout):: stack
      Character(len = 8), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len8StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim3Len8

    function popCharacterDim3Len8(stack, val) result(isSuccess)
      type(CharacterDim3Len8Stack), intent(inout):: stack
      Character(len = 8), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len8StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim3Len8

    function is_emptyCharacterDim3Len8(stack) result(answer)
      type(CharacterDim3Len8Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim3Len8
    subroutine pushCharacterDim3Len16(stack, val)
      type(CharacterDim3Len16Stack), intent(inout):: stack
      Character(len = 16), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len16StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim3Len16

    function popCharacterDim3Len16(stack, val) result(isSuccess)
      type(CharacterDim3Len16Stack), intent(inout):: stack
      Character(len = 16), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len16StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim3Len16

    function is_emptyCharacterDim3Len16(stack) result(answer)
      type(CharacterDim3Len16Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim3Len16
    subroutine pushCharacterDim3Len32(stack, val)
      type(CharacterDim3Len32Stack), intent(inout):: stack
      Character(len = 32), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim3Len32

    function popCharacterDim3Len32(stack, val) result(isSuccess)
      type(CharacterDim3Len32Stack), intent(inout):: stack
      Character(len = 32), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim3Len32

    function is_emptyCharacterDim3Len32(stack) result(answer)
      type(CharacterDim3Len32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim3Len32
    subroutine pushCharacterDim3Len64(stack, val)
      type(CharacterDim3Len64Stack), intent(inout):: stack
      Character(len = 64), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim3Len64

    function popCharacterDim3Len64(stack, val) result(isSuccess)
      type(CharacterDim3Len64Stack), intent(inout):: stack
      Character(len = 64), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim3Len64

    function is_emptyCharacterDim3Len64(stack) result(answer)
      type(CharacterDim3Len64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim3Len64
    subroutine pushCharacterDim3Len128(stack, val)
      type(CharacterDim3Len128Stack), intent(inout):: stack
      Character(len = 128), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim3Len128

    function popCharacterDim3Len128(stack, val) result(isSuccess)
      type(CharacterDim3Len128Stack), intent(inout):: stack
      Character(len = 128), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim3Len128

    function is_emptyCharacterDim3Len128(stack) result(answer)
      type(CharacterDim3Len128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim3Len128
    subroutine pushCharacterDim3Len256(stack, val)
      type(CharacterDim3Len256Stack), intent(inout):: stack
      Character(len = 256), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len256StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim3Len256

    function popCharacterDim3Len256(stack, val) result(isSuccess)
      type(CharacterDim3Len256Stack), intent(inout):: stack
      Character(len = 256), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len256StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim3Len256

    function is_emptyCharacterDim3Len256(stack) result(answer)
      type(CharacterDim3Len256Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim3Len256
    subroutine pushCharacterDim3Len512(stack, val)
      type(CharacterDim3Len512Stack), intent(inout):: stack
      Character(len = 512), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len512StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim3Len512

    function popCharacterDim3Len512(stack, val) result(isSuccess)
      type(CharacterDim3Len512Stack), intent(inout):: stack
      Character(len = 512), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len512StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim3Len512

    function is_emptyCharacterDim3Len512(stack) result(answer)
      type(CharacterDim3Len512Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim3Len512
    subroutine pushCharacterDim3Len1024(stack, val)
      type(CharacterDim3Len1024Stack), intent(inout):: stack
      Character(len = 1024), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len1024StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim3Len1024

    function popCharacterDim3Len1024(stack, val) result(isSuccess)
      type(CharacterDim3Len1024Stack), intent(inout):: stack
      Character(len = 1024), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len1024StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim3Len1024

    function is_emptyCharacterDim3Len1024(stack) result(answer)
      type(CharacterDim3Len1024Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim3Len1024
    subroutine pushCharacterDim3Len2048(stack, val)
      type(CharacterDim3Len2048Stack), intent(inout):: stack
      Character(len = 2048), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len2048StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim3Len2048

    function popCharacterDim3Len2048(stack, val) result(isSuccess)
      type(CharacterDim3Len2048Stack), intent(inout):: stack
      Character(len = 2048), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len2048StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim3Len2048

    function is_emptyCharacterDim3Len2048(stack) result(answer)
      type(CharacterDim3Len2048Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim3Len2048
    subroutine pushCharacterDim3Len4096(stack, val)
      type(CharacterDim3Len4096Stack), intent(inout):: stack
      Character(len = 4096), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len4096StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim3Len4096

    function popCharacterDim3Len4096(stack, val) result(isSuccess)
      type(CharacterDim3Len4096Stack), intent(inout):: stack
      Character(len = 4096), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len4096StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim3Len4096

    function is_emptyCharacterDim3Len4096(stack) result(answer)
      type(CharacterDim3Len4096Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim3Len4096
    subroutine pushCharacterDim3Len8192(stack, val)
      type(CharacterDim3Len8192Stack), intent(inout):: stack
      Character(len = 8192), dimension(:, :, :), intent(in):: val
      type(CharacterDim3Len8192StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim3Len8192

    function popCharacterDim3Len8192(stack, val) result(isSuccess)
      type(CharacterDim3Len8192Stack), intent(inout):: stack
      Character(len = 8192), dimension(:, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim3Len8192StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim3Len8192

    function is_emptyCharacterDim3Len8192(stack) result(answer)
      type(CharacterDim3Len8192Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim3Len8192
    subroutine pushCharacterDim4Len1(stack, val)
      type(CharacterDim4Len1Stack), intent(inout):: stack
      Character(len = 1), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len1StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim4Len1

    function popCharacterDim4Len1(stack, val) result(isSuccess)
      type(CharacterDim4Len1Stack), intent(inout):: stack
      Character(len = 1), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len1StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim4Len1

    function is_emptyCharacterDim4Len1(stack) result(answer)
      type(CharacterDim4Len1Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim4Len1
    subroutine pushCharacterDim4Len2(stack, val)
      type(CharacterDim4Len2Stack), intent(inout):: stack
      Character(len = 2), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len2StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim4Len2

    function popCharacterDim4Len2(stack, val) result(isSuccess)
      type(CharacterDim4Len2Stack), intent(inout):: stack
      Character(len = 2), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len2StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim4Len2

    function is_emptyCharacterDim4Len2(stack) result(answer)
      type(CharacterDim4Len2Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim4Len2
    subroutine pushCharacterDim4Len4(stack, val)
      type(CharacterDim4Len4Stack), intent(inout):: stack
      Character(len = 4), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len4StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim4Len4

    function popCharacterDim4Len4(stack, val) result(isSuccess)
      type(CharacterDim4Len4Stack), intent(inout):: stack
      Character(len = 4), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len4StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim4Len4

    function is_emptyCharacterDim4Len4(stack) result(answer)
      type(CharacterDim4Len4Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim4Len4
    subroutine pushCharacterDim4Len8(stack, val)
      type(CharacterDim4Len8Stack), intent(inout):: stack
      Character(len = 8), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len8StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim4Len8

    function popCharacterDim4Len8(stack, val) result(isSuccess)
      type(CharacterDim4Len8Stack), intent(inout):: stack
      Character(len = 8), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len8StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim4Len8

    function is_emptyCharacterDim4Len8(stack) result(answer)
      type(CharacterDim4Len8Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim4Len8
    subroutine pushCharacterDim4Len16(stack, val)
      type(CharacterDim4Len16Stack), intent(inout):: stack
      Character(len = 16), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len16StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim4Len16

    function popCharacterDim4Len16(stack, val) result(isSuccess)
      type(CharacterDim4Len16Stack), intent(inout):: stack
      Character(len = 16), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len16StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim4Len16

    function is_emptyCharacterDim4Len16(stack) result(answer)
      type(CharacterDim4Len16Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim4Len16
    subroutine pushCharacterDim4Len32(stack, val)
      type(CharacterDim4Len32Stack), intent(inout):: stack
      Character(len = 32), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim4Len32

    function popCharacterDim4Len32(stack, val) result(isSuccess)
      type(CharacterDim4Len32Stack), intent(inout):: stack
      Character(len = 32), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim4Len32

    function is_emptyCharacterDim4Len32(stack) result(answer)
      type(CharacterDim4Len32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim4Len32
    subroutine pushCharacterDim4Len64(stack, val)
      type(CharacterDim4Len64Stack), intent(inout):: stack
      Character(len = 64), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim4Len64

    function popCharacterDim4Len64(stack, val) result(isSuccess)
      type(CharacterDim4Len64Stack), intent(inout):: stack
      Character(len = 64), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim4Len64

    function is_emptyCharacterDim4Len64(stack) result(answer)
      type(CharacterDim4Len64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim4Len64
    subroutine pushCharacterDim4Len128(stack, val)
      type(CharacterDim4Len128Stack), intent(inout):: stack
      Character(len = 128), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim4Len128

    function popCharacterDim4Len128(stack, val) result(isSuccess)
      type(CharacterDim4Len128Stack), intent(inout):: stack
      Character(len = 128), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim4Len128

    function is_emptyCharacterDim4Len128(stack) result(answer)
      type(CharacterDim4Len128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim4Len128
    subroutine pushCharacterDim4Len256(stack, val)
      type(CharacterDim4Len256Stack), intent(inout):: stack
      Character(len = 256), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len256StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim4Len256

    function popCharacterDim4Len256(stack, val) result(isSuccess)
      type(CharacterDim4Len256Stack), intent(inout):: stack
      Character(len = 256), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len256StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim4Len256

    function is_emptyCharacterDim4Len256(stack) result(answer)
      type(CharacterDim4Len256Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim4Len256
    subroutine pushCharacterDim4Len512(stack, val)
      type(CharacterDim4Len512Stack), intent(inout):: stack
      Character(len = 512), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len512StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim4Len512

    function popCharacterDim4Len512(stack, val) result(isSuccess)
      type(CharacterDim4Len512Stack), intent(inout):: stack
      Character(len = 512), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len512StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim4Len512

    function is_emptyCharacterDim4Len512(stack) result(answer)
      type(CharacterDim4Len512Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim4Len512
    subroutine pushCharacterDim4Len1024(stack, val)
      type(CharacterDim4Len1024Stack), intent(inout):: stack
      Character(len = 1024), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len1024StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim4Len1024

    function popCharacterDim4Len1024(stack, val) result(isSuccess)
      type(CharacterDim4Len1024Stack), intent(inout):: stack
      Character(len = 1024), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len1024StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim4Len1024

    function is_emptyCharacterDim4Len1024(stack) result(answer)
      type(CharacterDim4Len1024Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim4Len1024
    subroutine pushCharacterDim4Len2048(stack, val)
      type(CharacterDim4Len2048Stack), intent(inout):: stack
      Character(len = 2048), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len2048StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim4Len2048

    function popCharacterDim4Len2048(stack, val) result(isSuccess)
      type(CharacterDim4Len2048Stack), intent(inout):: stack
      Character(len = 2048), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len2048StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim4Len2048

    function is_emptyCharacterDim4Len2048(stack) result(answer)
      type(CharacterDim4Len2048Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim4Len2048
    subroutine pushCharacterDim4Len4096(stack, val)
      type(CharacterDim4Len4096Stack), intent(inout):: stack
      Character(len = 4096), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len4096StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim4Len4096

    function popCharacterDim4Len4096(stack, val) result(isSuccess)
      type(CharacterDim4Len4096Stack), intent(inout):: stack
      Character(len = 4096), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len4096StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim4Len4096

    function is_emptyCharacterDim4Len4096(stack) result(answer)
      type(CharacterDim4Len4096Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim4Len4096
    subroutine pushCharacterDim4Len8192(stack, val)
      type(CharacterDim4Len8192Stack), intent(inout):: stack
      Character(len = 8192), dimension(:, :, :, :), intent(in):: val
      type(CharacterDim4Len8192StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim4Len8192

    function popCharacterDim4Len8192(stack, val) result(isSuccess)
      type(CharacterDim4Len8192Stack), intent(inout):: stack
      Character(len = 8192), dimension(:, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim4Len8192StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim4Len8192

    function is_emptyCharacterDim4Len8192(stack) result(answer)
      type(CharacterDim4Len8192Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim4Len8192
    subroutine pushCharacterDim5Len1(stack, val)
      type(CharacterDim5Len1Stack), intent(inout):: stack
      Character(len = 1), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len1StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim5Len1

    function popCharacterDim5Len1(stack, val) result(isSuccess)
      type(CharacterDim5Len1Stack), intent(inout):: stack
      Character(len = 1), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len1StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim5Len1

    function is_emptyCharacterDim5Len1(stack) result(answer)
      type(CharacterDim5Len1Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim5Len1
    subroutine pushCharacterDim5Len2(stack, val)
      type(CharacterDim5Len2Stack), intent(inout):: stack
      Character(len = 2), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len2StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim5Len2

    function popCharacterDim5Len2(stack, val) result(isSuccess)
      type(CharacterDim5Len2Stack), intent(inout):: stack
      Character(len = 2), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len2StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim5Len2

    function is_emptyCharacterDim5Len2(stack) result(answer)
      type(CharacterDim5Len2Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim5Len2
    subroutine pushCharacterDim5Len4(stack, val)
      type(CharacterDim5Len4Stack), intent(inout):: stack
      Character(len = 4), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len4StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim5Len4

    function popCharacterDim5Len4(stack, val) result(isSuccess)
      type(CharacterDim5Len4Stack), intent(inout):: stack
      Character(len = 4), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len4StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim5Len4

    function is_emptyCharacterDim5Len4(stack) result(answer)
      type(CharacterDim5Len4Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim5Len4
    subroutine pushCharacterDim5Len8(stack, val)
      type(CharacterDim5Len8Stack), intent(inout):: stack
      Character(len = 8), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len8StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim5Len8

    function popCharacterDim5Len8(stack, val) result(isSuccess)
      type(CharacterDim5Len8Stack), intent(inout):: stack
      Character(len = 8), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len8StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim5Len8

    function is_emptyCharacterDim5Len8(stack) result(answer)
      type(CharacterDim5Len8Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim5Len8
    subroutine pushCharacterDim5Len16(stack, val)
      type(CharacterDim5Len16Stack), intent(inout):: stack
      Character(len = 16), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len16StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim5Len16

    function popCharacterDim5Len16(stack, val) result(isSuccess)
      type(CharacterDim5Len16Stack), intent(inout):: stack
      Character(len = 16), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len16StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim5Len16

    function is_emptyCharacterDim5Len16(stack) result(answer)
      type(CharacterDim5Len16Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim5Len16
    subroutine pushCharacterDim5Len32(stack, val)
      type(CharacterDim5Len32Stack), intent(inout):: stack
      Character(len = 32), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim5Len32

    function popCharacterDim5Len32(stack, val) result(isSuccess)
      type(CharacterDim5Len32Stack), intent(inout):: stack
      Character(len = 32), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim5Len32

    function is_emptyCharacterDim5Len32(stack) result(answer)
      type(CharacterDim5Len32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim5Len32
    subroutine pushCharacterDim5Len64(stack, val)
      type(CharacterDim5Len64Stack), intent(inout):: stack
      Character(len = 64), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim5Len64

    function popCharacterDim5Len64(stack, val) result(isSuccess)
      type(CharacterDim5Len64Stack), intent(inout):: stack
      Character(len = 64), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim5Len64

    function is_emptyCharacterDim5Len64(stack) result(answer)
      type(CharacterDim5Len64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim5Len64
    subroutine pushCharacterDim5Len128(stack, val)
      type(CharacterDim5Len128Stack), intent(inout):: stack
      Character(len = 128), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim5Len128

    function popCharacterDim5Len128(stack, val) result(isSuccess)
      type(CharacterDim5Len128Stack), intent(inout):: stack
      Character(len = 128), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim5Len128

    function is_emptyCharacterDim5Len128(stack) result(answer)
      type(CharacterDim5Len128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim5Len128
    subroutine pushCharacterDim5Len256(stack, val)
      type(CharacterDim5Len256Stack), intent(inout):: stack
      Character(len = 256), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len256StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim5Len256

    function popCharacterDim5Len256(stack, val) result(isSuccess)
      type(CharacterDim5Len256Stack), intent(inout):: stack
      Character(len = 256), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len256StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim5Len256

    function is_emptyCharacterDim5Len256(stack) result(answer)
      type(CharacterDim5Len256Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim5Len256
    subroutine pushCharacterDim5Len512(stack, val)
      type(CharacterDim5Len512Stack), intent(inout):: stack
      Character(len = 512), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len512StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim5Len512

    function popCharacterDim5Len512(stack, val) result(isSuccess)
      type(CharacterDim5Len512Stack), intent(inout):: stack
      Character(len = 512), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len512StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim5Len512

    function is_emptyCharacterDim5Len512(stack) result(answer)
      type(CharacterDim5Len512Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim5Len512
    subroutine pushCharacterDim5Len1024(stack, val)
      type(CharacterDim5Len1024Stack), intent(inout):: stack
      Character(len = 1024), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len1024StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim5Len1024

    function popCharacterDim5Len1024(stack, val) result(isSuccess)
      type(CharacterDim5Len1024Stack), intent(inout):: stack
      Character(len = 1024), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len1024StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim5Len1024

    function is_emptyCharacterDim5Len1024(stack) result(answer)
      type(CharacterDim5Len1024Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim5Len1024
    subroutine pushCharacterDim5Len2048(stack, val)
      type(CharacterDim5Len2048Stack), intent(inout):: stack
      Character(len = 2048), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len2048StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim5Len2048

    function popCharacterDim5Len2048(stack, val) result(isSuccess)
      type(CharacterDim5Len2048Stack), intent(inout):: stack
      Character(len = 2048), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len2048StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim5Len2048

    function is_emptyCharacterDim5Len2048(stack) result(answer)
      type(CharacterDim5Len2048Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim5Len2048
    subroutine pushCharacterDim5Len4096(stack, val)
      type(CharacterDim5Len4096Stack), intent(inout):: stack
      Character(len = 4096), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len4096StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim5Len4096

    function popCharacterDim5Len4096(stack, val) result(isSuccess)
      type(CharacterDim5Len4096Stack), intent(inout):: stack
      Character(len = 4096), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len4096StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim5Len4096

    function is_emptyCharacterDim5Len4096(stack) result(answer)
      type(CharacterDim5Len4096Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim5Len4096
    subroutine pushCharacterDim5Len8192(stack, val)
      type(CharacterDim5Len8192Stack), intent(inout):: stack
      Character(len = 8192), dimension(:, :, :, :, :), intent(in):: val
      type(CharacterDim5Len8192StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim5Len8192

    function popCharacterDim5Len8192(stack, val) result(isSuccess)
      type(CharacterDim5Len8192Stack), intent(inout):: stack
      Character(len = 8192), dimension(:, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim5Len8192StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim5Len8192

    function is_emptyCharacterDim5Len8192(stack) result(answer)
      type(CharacterDim5Len8192Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim5Len8192
    subroutine pushCharacterDim6Len1(stack, val)
      type(CharacterDim6Len1Stack), intent(inout):: stack
      Character(len = 1), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len1StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim6Len1

    function popCharacterDim6Len1(stack, val) result(isSuccess)
      type(CharacterDim6Len1Stack), intent(inout):: stack
      Character(len = 1), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len1StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim6Len1

    function is_emptyCharacterDim6Len1(stack) result(answer)
      type(CharacterDim6Len1Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim6Len1
    subroutine pushCharacterDim6Len2(stack, val)
      type(CharacterDim6Len2Stack), intent(inout):: stack
      Character(len = 2), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len2StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim6Len2

    function popCharacterDim6Len2(stack, val) result(isSuccess)
      type(CharacterDim6Len2Stack), intent(inout):: stack
      Character(len = 2), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len2StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim6Len2

    function is_emptyCharacterDim6Len2(stack) result(answer)
      type(CharacterDim6Len2Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim6Len2
    subroutine pushCharacterDim6Len4(stack, val)
      type(CharacterDim6Len4Stack), intent(inout):: stack
      Character(len = 4), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len4StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim6Len4

    function popCharacterDim6Len4(stack, val) result(isSuccess)
      type(CharacterDim6Len4Stack), intent(inout):: stack
      Character(len = 4), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len4StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim6Len4

    function is_emptyCharacterDim6Len4(stack) result(answer)
      type(CharacterDim6Len4Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim6Len4
    subroutine pushCharacterDim6Len8(stack, val)
      type(CharacterDim6Len8Stack), intent(inout):: stack
      Character(len = 8), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len8StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim6Len8

    function popCharacterDim6Len8(stack, val) result(isSuccess)
      type(CharacterDim6Len8Stack), intent(inout):: stack
      Character(len = 8), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len8StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim6Len8

    function is_emptyCharacterDim6Len8(stack) result(answer)
      type(CharacterDim6Len8Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim6Len8
    subroutine pushCharacterDim6Len16(stack, val)
      type(CharacterDim6Len16Stack), intent(inout):: stack
      Character(len = 16), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len16StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim6Len16

    function popCharacterDim6Len16(stack, val) result(isSuccess)
      type(CharacterDim6Len16Stack), intent(inout):: stack
      Character(len = 16), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len16StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim6Len16

    function is_emptyCharacterDim6Len16(stack) result(answer)
      type(CharacterDim6Len16Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim6Len16
    subroutine pushCharacterDim6Len32(stack, val)
      type(CharacterDim6Len32Stack), intent(inout):: stack
      Character(len = 32), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim6Len32

    function popCharacterDim6Len32(stack, val) result(isSuccess)
      type(CharacterDim6Len32Stack), intent(inout):: stack
      Character(len = 32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim6Len32

    function is_emptyCharacterDim6Len32(stack) result(answer)
      type(CharacterDim6Len32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim6Len32
    subroutine pushCharacterDim6Len64(stack, val)
      type(CharacterDim6Len64Stack), intent(inout):: stack
      Character(len = 64), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim6Len64

    function popCharacterDim6Len64(stack, val) result(isSuccess)
      type(CharacterDim6Len64Stack), intent(inout):: stack
      Character(len = 64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim6Len64

    function is_emptyCharacterDim6Len64(stack) result(answer)
      type(CharacterDim6Len64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim6Len64
    subroutine pushCharacterDim6Len128(stack, val)
      type(CharacterDim6Len128Stack), intent(inout):: stack
      Character(len = 128), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim6Len128

    function popCharacterDim6Len128(stack, val) result(isSuccess)
      type(CharacterDim6Len128Stack), intent(inout):: stack
      Character(len = 128), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim6Len128

    function is_emptyCharacterDim6Len128(stack) result(answer)
      type(CharacterDim6Len128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim6Len128
    subroutine pushCharacterDim6Len256(stack, val)
      type(CharacterDim6Len256Stack), intent(inout):: stack
      Character(len = 256), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len256StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim6Len256

    function popCharacterDim6Len256(stack, val) result(isSuccess)
      type(CharacterDim6Len256Stack), intent(inout):: stack
      Character(len = 256), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len256StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim6Len256

    function is_emptyCharacterDim6Len256(stack) result(answer)
      type(CharacterDim6Len256Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim6Len256
    subroutine pushCharacterDim6Len512(stack, val)
      type(CharacterDim6Len512Stack), intent(inout):: stack
      Character(len = 512), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len512StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim6Len512

    function popCharacterDim6Len512(stack, val) result(isSuccess)
      type(CharacterDim6Len512Stack), intent(inout):: stack
      Character(len = 512), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len512StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim6Len512

    function is_emptyCharacterDim6Len512(stack) result(answer)
      type(CharacterDim6Len512Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim6Len512
    subroutine pushCharacterDim6Len1024(stack, val)
      type(CharacterDim6Len1024Stack), intent(inout):: stack
      Character(len = 1024), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len1024StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim6Len1024

    function popCharacterDim6Len1024(stack, val) result(isSuccess)
      type(CharacterDim6Len1024Stack), intent(inout):: stack
      Character(len = 1024), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len1024StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim6Len1024

    function is_emptyCharacterDim6Len1024(stack) result(answer)
      type(CharacterDim6Len1024Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim6Len1024
    subroutine pushCharacterDim6Len2048(stack, val)
      type(CharacterDim6Len2048Stack), intent(inout):: stack
      Character(len = 2048), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len2048StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim6Len2048

    function popCharacterDim6Len2048(stack, val) result(isSuccess)
      type(CharacterDim6Len2048Stack), intent(inout):: stack
      Character(len = 2048), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len2048StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim6Len2048

    function is_emptyCharacterDim6Len2048(stack) result(answer)
      type(CharacterDim6Len2048Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim6Len2048
    subroutine pushCharacterDim6Len4096(stack, val)
      type(CharacterDim6Len4096Stack), intent(inout):: stack
      Character(len = 4096), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len4096StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim6Len4096

    function popCharacterDim6Len4096(stack, val) result(isSuccess)
      type(CharacterDim6Len4096Stack), intent(inout):: stack
      Character(len = 4096), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len4096StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim6Len4096

    function is_emptyCharacterDim6Len4096(stack) result(answer)
      type(CharacterDim6Len4096Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim6Len4096
    subroutine pushCharacterDim6Len8192(stack, val)
      type(CharacterDim6Len8192Stack), intent(inout):: stack
      Character(len = 8192), dimension(:, :, :, :, :, :), intent(in):: val
      type(CharacterDim6Len8192StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim6Len8192

    function popCharacterDim6Len8192(stack, val) result(isSuccess)
      type(CharacterDim6Len8192Stack), intent(inout):: stack
      Character(len = 8192), dimension(:, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim6Len8192StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim6Len8192

    function is_emptyCharacterDim6Len8192(stack) result(answer)
      type(CharacterDim6Len8192Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim6Len8192
    subroutine pushCharacterDim7Len1(stack, val)
      type(CharacterDim7Len1Stack), intent(inout):: stack
      Character(len = 1), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len1StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim7Len1

    function popCharacterDim7Len1(stack, val) result(isSuccess)
      type(CharacterDim7Len1Stack), intent(inout):: stack
      Character(len = 1), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len1StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim7Len1

    function is_emptyCharacterDim7Len1(stack) result(answer)
      type(CharacterDim7Len1Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim7Len1
    subroutine pushCharacterDim7Len2(stack, val)
      type(CharacterDim7Len2Stack), intent(inout):: stack
      Character(len = 2), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len2StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim7Len2

    function popCharacterDim7Len2(stack, val) result(isSuccess)
      type(CharacterDim7Len2Stack), intent(inout):: stack
      Character(len = 2), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len2StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim7Len2

    function is_emptyCharacterDim7Len2(stack) result(answer)
      type(CharacterDim7Len2Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim7Len2
    subroutine pushCharacterDim7Len4(stack, val)
      type(CharacterDim7Len4Stack), intent(inout):: stack
      Character(len = 4), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len4StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim7Len4

    function popCharacterDim7Len4(stack, val) result(isSuccess)
      type(CharacterDim7Len4Stack), intent(inout):: stack
      Character(len = 4), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len4StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim7Len4

    function is_emptyCharacterDim7Len4(stack) result(answer)
      type(CharacterDim7Len4Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim7Len4
    subroutine pushCharacterDim7Len8(stack, val)
      type(CharacterDim7Len8Stack), intent(inout):: stack
      Character(len = 8), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len8StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim7Len8

    function popCharacterDim7Len8(stack, val) result(isSuccess)
      type(CharacterDim7Len8Stack), intent(inout):: stack
      Character(len = 8), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len8StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim7Len8

    function is_emptyCharacterDim7Len8(stack) result(answer)
      type(CharacterDim7Len8Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim7Len8
    subroutine pushCharacterDim7Len16(stack, val)
      type(CharacterDim7Len16Stack), intent(inout):: stack
      Character(len = 16), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len16StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim7Len16

    function popCharacterDim7Len16(stack, val) result(isSuccess)
      type(CharacterDim7Len16Stack), intent(inout):: stack
      Character(len = 16), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len16StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim7Len16

    function is_emptyCharacterDim7Len16(stack) result(answer)
      type(CharacterDim7Len16Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim7Len16
    subroutine pushCharacterDim7Len32(stack, val)
      type(CharacterDim7Len32Stack), intent(inout):: stack
      Character(len = 32), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len32StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim7Len32

    function popCharacterDim7Len32(stack, val) result(isSuccess)
      type(CharacterDim7Len32Stack), intent(inout):: stack
      Character(len = 32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len32StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim7Len32

    function is_emptyCharacterDim7Len32(stack) result(answer)
      type(CharacterDim7Len32Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim7Len32
    subroutine pushCharacterDim7Len64(stack, val)
      type(CharacterDim7Len64Stack), intent(inout):: stack
      Character(len = 64), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len64StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim7Len64

    function popCharacterDim7Len64(stack, val) result(isSuccess)
      type(CharacterDim7Len64Stack), intent(inout):: stack
      Character(len = 64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len64StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim7Len64

    function is_emptyCharacterDim7Len64(stack) result(answer)
      type(CharacterDim7Len64Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim7Len64
    subroutine pushCharacterDim7Len128(stack, val)
      type(CharacterDim7Len128Stack), intent(inout):: stack
      Character(len = 128), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len128StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim7Len128

    function popCharacterDim7Len128(stack, val) result(isSuccess)
      type(CharacterDim7Len128Stack), intent(inout):: stack
      Character(len = 128), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len128StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim7Len128

    function is_emptyCharacterDim7Len128(stack) result(answer)
      type(CharacterDim7Len128Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim7Len128
    subroutine pushCharacterDim7Len256(stack, val)
      type(CharacterDim7Len256Stack), intent(inout):: stack
      Character(len = 256), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len256StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim7Len256

    function popCharacterDim7Len256(stack, val) result(isSuccess)
      type(CharacterDim7Len256Stack), intent(inout):: stack
      Character(len = 256), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len256StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim7Len256

    function is_emptyCharacterDim7Len256(stack) result(answer)
      type(CharacterDim7Len256Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim7Len256
    subroutine pushCharacterDim7Len512(stack, val)
      type(CharacterDim7Len512Stack), intent(inout):: stack
      Character(len = 512), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len512StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim7Len512

    function popCharacterDim7Len512(stack, val) result(isSuccess)
      type(CharacterDim7Len512Stack), intent(inout):: stack
      Character(len = 512), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len512StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim7Len512

    function is_emptyCharacterDim7Len512(stack) result(answer)
      type(CharacterDim7Len512Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim7Len512
    subroutine pushCharacterDim7Len1024(stack, val)
      type(CharacterDim7Len1024Stack), intent(inout):: stack
      Character(len = 1024), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len1024StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim7Len1024

    function popCharacterDim7Len1024(stack, val) result(isSuccess)
      type(CharacterDim7Len1024Stack), intent(inout):: stack
      Character(len = 1024), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len1024StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim7Len1024

    function is_emptyCharacterDim7Len1024(stack) result(answer)
      type(CharacterDim7Len1024Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim7Len1024
    subroutine pushCharacterDim7Len2048(stack, val)
      type(CharacterDim7Len2048Stack), intent(inout):: stack
      Character(len = 2048), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len2048StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim7Len2048

    function popCharacterDim7Len2048(stack, val) result(isSuccess)
      type(CharacterDim7Len2048Stack), intent(inout):: stack
      Character(len = 2048), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len2048StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim7Len2048

    function is_emptyCharacterDim7Len2048(stack) result(answer)
      type(CharacterDim7Len2048Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim7Len2048
    subroutine pushCharacterDim7Len4096(stack, val)
      type(CharacterDim7Len4096Stack), intent(inout):: stack
      Character(len = 4096), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len4096StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim7Len4096

    function popCharacterDim7Len4096(stack, val) result(isSuccess)
      type(CharacterDim7Len4096Stack), intent(inout):: stack
      Character(len = 4096), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len4096StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim7Len4096

    function is_emptyCharacterDim7Len4096(stack) result(answer)
      type(CharacterDim7Len4096Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim7Len4096
    subroutine pushCharacterDim7Len8192(stack, val)
      type(CharacterDim7Len8192Stack), intent(inout):: stack
      Character(len = 8192), dimension(:, :, :, :, :, :, :), intent(in):: val
      type(CharacterDim7Len8192StackNode), pointer:: newNode

      allocate(newNode)
      newNode%val = val
      newNode%prev => stack%entry
      stack%entry => newNode
    end subroutine pushCharacterDim7Len8192

    function popCharacterDim7Len8192(stack, val) result(isSuccess)
      type(CharacterDim7Len8192Stack), intent(inout):: stack
      Character(len = 8192), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: val
      Logical:: isSuccess
      type(CharacterDim7Len8192StackNode), pointer:: tmpNodeHolder => null()

      if(is_empty(stack))then
        isSuccess = .false.
        return
      end if

      val = stack%entry%val
      tmpNodeHolder => stack%entry
      stack%entry => stack%entry%prev
      deallocate(tmpNodeHolder)
      isSuccess = .true.
    end function popCharacterDim7Len8192

    function is_emptyCharacterDim7Len8192(stack) result(answer)
      type(CharacterDim7Len8192Stack), intent(in):: stack
      Logical:: answer

      answer = .not.associated(stack%entry)
    end function is_emptyCharacterDim7Len8192
end module lib_stack
