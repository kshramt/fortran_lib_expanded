
module lib_stack
  use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
  implicit none

  private
  public:: push, pop

    public:: RealDim0KindREAL32Stack
    public:: RealDim0KindREAL64Stack
    public:: RealDim0KindREAL128Stack
    public:: IntegerDim0KindINT8Stack
    public:: IntegerDim0KindINT16Stack
    public:: IntegerDim0KindINT32Stack
    public:: IntegerDim0KindINT64Stack
    public:: LogicalDim0Stack
    public:: ComplexDim0KindREAL32Stack
    public:: ComplexDim0KindREAL64Stack
    public:: ComplexDim0KindREAL128Stack
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
      module procedure pushLogicalDim0
    end interface push

    interface pop
      module procedure popLogicalDim0
    end interface pop

    interface is_empty
      module procedure is_emptyLogicalDim0
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
    type LogicalDim0Stack
      type(LogicalDim0StackNode), pointer:: entry => null()
    end type LogicalDim0Stack

    type LogicalDim0StackNode
      Logical:: val
      type(LogicalDim0StackNode), pointer:: prev => null()
    end type LogicalDim0StackNode
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
      Real(kind = REAL32), intent(out):: val
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
      Real(kind = REAL64), intent(out):: val
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
      Real(kind = REAL128), intent(out):: val
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
      Integer(kind = INT8), intent(out):: val
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
      Integer(kind = INT16), intent(out):: val
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
      Integer(kind = INT32), intent(out):: val
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
      Integer(kind = INT64), intent(out):: val
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
      Logical, intent(out):: val
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
      Complex(kind = REAL32), intent(out):: val
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
      Complex(kind = REAL64), intent(out):: val
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
      Complex(kind = REAL128), intent(out):: val
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
      Character(len = 1), intent(out):: val
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
      Character(len = 2), intent(out):: val
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
      Character(len = 4), intent(out):: val
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
      Character(len = 8), intent(out):: val
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
      Character(len = 16), intent(out):: val
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
      Character(len = 32), intent(out):: val
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
      Character(len = 64), intent(out):: val
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
      Character(len = 128), intent(out):: val
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
      Character(len = 256), intent(out):: val
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
      Character(len = 512), intent(out):: val
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
      Character(len = 1024), intent(out):: val
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
      Character(len = 2048), intent(out):: val
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
      Character(len = 4096), intent(out):: val
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
      Character(len = 8192), intent(out):: val
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
end module lib_stack
