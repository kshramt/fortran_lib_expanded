module list_lib
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: int8, int16, int32, int64, real32, real64, real128
   use, non_intrinsic:: comparable_lib, only: almost_equal
   implicit none
   private
   public:: size ! Size of a list.
   public:: delete_at ! Delete the N-th node and return a value of the node.
   public:: insert_at ! Insert a node to N-th position.
   ! list: -(1)-(2)-(3)-(4)-
   ! N: 1 2 3 4 5
   public:: val_at ! Value at N-th node.
   public:: operator(.val.) ! Same to val_at.
   public:: shift ! Delete the head node and return a value of the node.
   public:: unshift ! Insert a node to the head.
   public:: push ! Insert a node to the tail.
   public:: pop ! Delete the tail node and return a value of the node.
   public:: clear ! Delete all nodes.
   public:: swap ! Swap nodes in a list.
   public:: assignment(=) ! List to array, array to list, deep copy of list.
   public:: is_size_one ! .true. if size of list is one.
   public:: is_empty ! .true. if size of list is zero.
   public:: array_from_list ! List to array converter.
   public:: almost_equal ! .true. if size and components are almost_equal.
                                 ! XXX: More array like interface?
   type:: ListNode
   end type ListNode
   type, public:: List
   end type List
      type, extends(ListNode):: LogicalDim0Kindint8ListNode
         Logical(kind=int8):: val
         type(LogicalDim0Kindint8ListNode), pointer:: prev => null()
         type(LogicalDim0Kindint8ListNode), pointer:: next => null()
      end type LogicalDim0Kindint8ListNode
      type, extends(List), public:: LogicalDim0Kindint8List
         type(LogicalDim0Kindint8ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type LogicalDim0Kindint8List
      type, extends(ListNode):: LogicalDim0Kindint16ListNode
         Logical(kind=int16):: val
         type(LogicalDim0Kindint16ListNode), pointer:: prev => null()
         type(LogicalDim0Kindint16ListNode), pointer:: next => null()
      end type LogicalDim0Kindint16ListNode
      type, extends(List), public:: LogicalDim0Kindint16List
         type(LogicalDim0Kindint16ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type LogicalDim0Kindint16List
      type, extends(ListNode):: LogicalDim0Kindint32ListNode
         Logical(kind=int32):: val
         type(LogicalDim0Kindint32ListNode), pointer:: prev => null()
         type(LogicalDim0Kindint32ListNode), pointer:: next => null()
      end type LogicalDim0Kindint32ListNode
      type, extends(List), public:: LogicalDim0Kindint32List
         type(LogicalDim0Kindint32ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type LogicalDim0Kindint32List
      type, extends(ListNode):: LogicalDim0Kindint64ListNode
         Logical(kind=int64):: val
         type(LogicalDim0Kindint64ListNode), pointer:: prev => null()
         type(LogicalDim0Kindint64ListNode), pointer:: next => null()
      end type LogicalDim0Kindint64ListNode
      type, extends(List), public:: LogicalDim0Kindint64List
         type(LogicalDim0Kindint64ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type LogicalDim0Kindint64List
      type, extends(ListNode):: CharacterDim0Len1ListNode
         Character(len=1):: val
         type(CharacterDim0Len1ListNode), pointer:: prev => null()
         type(CharacterDim0Len1ListNode), pointer:: next => null()
      end type CharacterDim0Len1ListNode
      type, extends(List), public:: CharacterDim0Len1List
         type(CharacterDim0Len1ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type CharacterDim0Len1List
      type, extends(ListNode):: CharacterDim0Len2ListNode
         Character(len=2):: val
         type(CharacterDim0Len2ListNode), pointer:: prev => null()
         type(CharacterDim0Len2ListNode), pointer:: next => null()
      end type CharacterDim0Len2ListNode
      type, extends(List), public:: CharacterDim0Len2List
         type(CharacterDim0Len2ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type CharacterDim0Len2List
      type, extends(ListNode):: CharacterDim0Len4ListNode
         Character(len=4):: val
         type(CharacterDim0Len4ListNode), pointer:: prev => null()
         type(CharacterDim0Len4ListNode), pointer:: next => null()
      end type CharacterDim0Len4ListNode
      type, extends(List), public:: CharacterDim0Len4List
         type(CharacterDim0Len4ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type CharacterDim0Len4List
      type, extends(ListNode):: CharacterDim0Len8ListNode
         Character(len=8):: val
         type(CharacterDim0Len8ListNode), pointer:: prev => null()
         type(CharacterDim0Len8ListNode), pointer:: next => null()
      end type CharacterDim0Len8ListNode
      type, extends(List), public:: CharacterDim0Len8List
         type(CharacterDim0Len8ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type CharacterDim0Len8List
      type, extends(ListNode):: CharacterDim0Len16ListNode
         Character(len=16):: val
         type(CharacterDim0Len16ListNode), pointer:: prev => null()
         type(CharacterDim0Len16ListNode), pointer:: next => null()
      end type CharacterDim0Len16ListNode
      type, extends(List), public:: CharacterDim0Len16List
         type(CharacterDim0Len16ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type CharacterDim0Len16List
      type, extends(ListNode):: CharacterDim0Len32ListNode
         Character(len=32):: val
         type(CharacterDim0Len32ListNode), pointer:: prev => null()
         type(CharacterDim0Len32ListNode), pointer:: next => null()
      end type CharacterDim0Len32ListNode
      type, extends(List), public:: CharacterDim0Len32List
         type(CharacterDim0Len32ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type CharacterDim0Len32List
      type, extends(ListNode):: CharacterDim0Len64ListNode
         Character(len=64):: val
         type(CharacterDim0Len64ListNode), pointer:: prev => null()
         type(CharacterDim0Len64ListNode), pointer:: next => null()
      end type CharacterDim0Len64ListNode
      type, extends(List), public:: CharacterDim0Len64List
         type(CharacterDim0Len64ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type CharacterDim0Len64List
      type, extends(ListNode):: CharacterDim0Len128ListNode
         Character(len=128):: val
         type(CharacterDim0Len128ListNode), pointer:: prev => null()
         type(CharacterDim0Len128ListNode), pointer:: next => null()
      end type CharacterDim0Len128ListNode
      type, extends(List), public:: CharacterDim0Len128List
         type(CharacterDim0Len128ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type CharacterDim0Len128List
      type, extends(ListNode):: CharacterDim0Len256ListNode
         Character(len=256):: val
         type(CharacterDim0Len256ListNode), pointer:: prev => null()
         type(CharacterDim0Len256ListNode), pointer:: next => null()
      end type CharacterDim0Len256ListNode
      type, extends(List), public:: CharacterDim0Len256List
         type(CharacterDim0Len256ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type CharacterDim0Len256List
      type, extends(ListNode):: CharacterDim0Len512ListNode
         Character(len=512):: val
         type(CharacterDim0Len512ListNode), pointer:: prev => null()
         type(CharacterDim0Len512ListNode), pointer:: next => null()
      end type CharacterDim0Len512ListNode
      type, extends(List), public:: CharacterDim0Len512List
         type(CharacterDim0Len512ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type CharacterDim0Len512List
      type, extends(ListNode):: CharacterDim0Len1024ListNode
         Character(len=1024):: val
         type(CharacterDim0Len1024ListNode), pointer:: prev => null()
         type(CharacterDim0Len1024ListNode), pointer:: next => null()
      end type CharacterDim0Len1024ListNode
      type, extends(List), public:: CharacterDim0Len1024List
         type(CharacterDim0Len1024ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type CharacterDim0Len1024List
      type, extends(ListNode):: CharacterDim0Len2048ListNode
         Character(len=2048):: val
         type(CharacterDim0Len2048ListNode), pointer:: prev => null()
         type(CharacterDim0Len2048ListNode), pointer:: next => null()
      end type CharacterDim0Len2048ListNode
      type, extends(List), public:: CharacterDim0Len2048List
         type(CharacterDim0Len2048ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type CharacterDim0Len2048List
      type, extends(ListNode):: CharacterDim0Len4096ListNode
         Character(len=4096):: val
         type(CharacterDim0Len4096ListNode), pointer:: prev => null()
         type(CharacterDim0Len4096ListNode), pointer:: next => null()
      end type CharacterDim0Len4096ListNode
      type, extends(List), public:: CharacterDim0Len4096List
         type(CharacterDim0Len4096ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type CharacterDim0Len4096List
      type, extends(ListNode):: CharacterDim0Len8192ListNode
         Character(len=8192):: val
         type(CharacterDim0Len8192ListNode), pointer:: prev => null()
         type(CharacterDim0Len8192ListNode), pointer:: next => null()
      end type CharacterDim0Len8192ListNode
      type, extends(List), public:: CharacterDim0Len8192List
         type(CharacterDim0Len8192ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type CharacterDim0Len8192List
      type, extends(ListNode):: IntegerDim0Kindint8ListNode
         Integer(kind=int8):: val
         type(IntegerDim0Kindint8ListNode), pointer:: prev => null()
         type(IntegerDim0Kindint8ListNode), pointer:: next => null()
      end type IntegerDim0Kindint8ListNode
      type, extends(List), public:: IntegerDim0Kindint8List
         type(IntegerDim0Kindint8ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type IntegerDim0Kindint8List
      type, extends(ListNode):: IntegerDim0Kindint16ListNode
         Integer(kind=int16):: val
         type(IntegerDim0Kindint16ListNode), pointer:: prev => null()
         type(IntegerDim0Kindint16ListNode), pointer:: next => null()
      end type IntegerDim0Kindint16ListNode
      type, extends(List), public:: IntegerDim0Kindint16List
         type(IntegerDim0Kindint16ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type IntegerDim0Kindint16List
      type, extends(ListNode):: IntegerDim0Kindint32ListNode
         Integer(kind=int32):: val
         type(IntegerDim0Kindint32ListNode), pointer:: prev => null()
         type(IntegerDim0Kindint32ListNode), pointer:: next => null()
      end type IntegerDim0Kindint32ListNode
      type, extends(List), public:: IntegerDim0Kindint32List
         type(IntegerDim0Kindint32ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type IntegerDim0Kindint32List
      type, extends(ListNode):: IntegerDim0Kindint64ListNode
         Integer(kind=int64):: val
         type(IntegerDim0Kindint64ListNode), pointer:: prev => null()
         type(IntegerDim0Kindint64ListNode), pointer:: next => null()
      end type IntegerDim0Kindint64ListNode
      type, extends(List), public:: IntegerDim0Kindint64List
         type(IntegerDim0Kindint64ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type IntegerDim0Kindint64List
      type, extends(ListNode):: RealDim0Kindreal32ListNode
         Real(kind=real32):: val
         type(RealDim0Kindreal32ListNode), pointer:: prev => null()
         type(RealDim0Kindreal32ListNode), pointer:: next => null()
      end type RealDim0Kindreal32ListNode
      type, extends(List), public:: RealDim0Kindreal32List
         type(RealDim0Kindreal32ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type RealDim0Kindreal32List
      type, extends(ListNode):: RealDim0Kindreal64ListNode
         Real(kind=real64):: val
         type(RealDim0Kindreal64ListNode), pointer:: prev => null()
         type(RealDim0Kindreal64ListNode), pointer:: next => null()
      end type RealDim0Kindreal64ListNode
      type, extends(List), public:: RealDim0Kindreal64List
         type(RealDim0Kindreal64ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type RealDim0Kindreal64List
      type, extends(ListNode):: RealDim0Kindreal128ListNode
         Real(kind=real128):: val
         type(RealDim0Kindreal128ListNode), pointer:: prev => null()
         type(RealDim0Kindreal128ListNode), pointer:: next => null()
      end type RealDim0Kindreal128ListNode
      type, extends(List), public:: RealDim0Kindreal128List
         type(RealDim0Kindreal128ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type RealDim0Kindreal128List
      type, extends(ListNode):: ComplexDim0Kindreal32ListNode
         Complex(kind=real32):: val
         type(ComplexDim0Kindreal32ListNode), pointer:: prev => null()
         type(ComplexDim0Kindreal32ListNode), pointer:: next => null()
      end type ComplexDim0Kindreal32ListNode
      type, extends(List), public:: ComplexDim0Kindreal32List
         type(ComplexDim0Kindreal32ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type ComplexDim0Kindreal32List
      type, extends(ListNode):: ComplexDim0Kindreal64ListNode
         Complex(kind=real64):: val
         type(ComplexDim0Kindreal64ListNode), pointer:: prev => null()
         type(ComplexDim0Kindreal64ListNode), pointer:: next => null()
      end type ComplexDim0Kindreal64ListNode
      type, extends(List), public:: ComplexDim0Kindreal64List
         type(ComplexDim0Kindreal64ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type ComplexDim0Kindreal64List
      type, extends(ListNode):: ComplexDim0Kindreal128ListNode
         Complex(kind=real128):: val
         type(ComplexDim0Kindreal128ListNode), pointer:: prev => null()
         type(ComplexDim0Kindreal128ListNode), pointer:: next => null()
      end type ComplexDim0Kindreal128ListNode
      type, extends(List), public:: ComplexDim0Kindreal128List
         type(ComplexDim0Kindreal128ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type ComplexDim0Kindreal128List
      interface size
         module procedure sizeLogicalDim0Kindint8
      end interface size
      interface delete_at
         module procedure delete_atLogicalDim0Kindint8
      end interface delete_at
      interface insert_at
         module procedure insert_atLogicalDim0Kindint8
      end interface insert_at
      interface val_at
         module procedure val_atLogicalDim0Kindint8
      end interface val_at
      interface operator(.val.)
         module procedure val_atLogicalDim0Kindint8
      end interface operator(.val.)
      interface shift
         module procedure shiftLogicalDim0Kindint8
      end interface shift
      interface unshift
         module procedure unshiftLogicalDim0Kindint8
      end interface unshift
      interface push
         module procedure pushLogicalDim0Kindint8
      end interface push
      interface pop
         module procedure popLogicalDim0Kindint8
      end interface pop
      interface clear
         module procedure clearLogicalDim0Kindint8
      end interface clear
      interface swap
         module procedure swapLogicalDim0Kindint8
      end interface swap
      interface assignment(=)
         module procedure copyLogicalDim0Kindint8
         module procedure list_from_array_coercionLogicalDim0Kindint8
         module procedure array_from_list_coercionLogicalDim0Kindint8
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneLogicalDim0Kindint8
      end interface is_size_one
      interface is_empty
         module procedure is_emptyLogicalDim0Kindint8
      end interface is_empty
      interface array_from_list
         module procedure array_from_listLogicalDim0Kindint8
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalLogicalDim0Kindint8
      end interface almost_equal
      ! Internal
      interface new
         module procedure newLogicalDim0Kindint8
      end interface new
      interface node_at
         module procedure node_atLogicalDim0Kindint8
      end interface node_at
      interface copy
         module procedure copyLogicalDim0Kindint8
      end interface copy
      interface size
         module procedure sizeLogicalDim0Kindint16
      end interface size
      interface delete_at
         module procedure delete_atLogicalDim0Kindint16
      end interface delete_at
      interface insert_at
         module procedure insert_atLogicalDim0Kindint16
      end interface insert_at
      interface val_at
         module procedure val_atLogicalDim0Kindint16
      end interface val_at
      interface operator(.val.)
         module procedure val_atLogicalDim0Kindint16
      end interface operator(.val.)
      interface shift
         module procedure shiftLogicalDim0Kindint16
      end interface shift
      interface unshift
         module procedure unshiftLogicalDim0Kindint16
      end interface unshift
      interface push
         module procedure pushLogicalDim0Kindint16
      end interface push
      interface pop
         module procedure popLogicalDim0Kindint16
      end interface pop
      interface clear
         module procedure clearLogicalDim0Kindint16
      end interface clear
      interface swap
         module procedure swapLogicalDim0Kindint16
      end interface swap
      interface assignment(=)
         module procedure copyLogicalDim0Kindint16
         module procedure list_from_array_coercionLogicalDim0Kindint16
         module procedure array_from_list_coercionLogicalDim0Kindint16
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneLogicalDim0Kindint16
      end interface is_size_one
      interface is_empty
         module procedure is_emptyLogicalDim0Kindint16
      end interface is_empty
      interface array_from_list
         module procedure array_from_listLogicalDim0Kindint16
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalLogicalDim0Kindint16
      end interface almost_equal
      ! Internal
      interface new
         module procedure newLogicalDim0Kindint16
      end interface new
      interface node_at
         module procedure node_atLogicalDim0Kindint16
      end interface node_at
      interface copy
         module procedure copyLogicalDim0Kindint16
      end interface copy
      interface size
         module procedure sizeLogicalDim0Kindint32
      end interface size
      interface delete_at
         module procedure delete_atLogicalDim0Kindint32
      end interface delete_at
      interface insert_at
         module procedure insert_atLogicalDim0Kindint32
      end interface insert_at
      interface val_at
         module procedure val_atLogicalDim0Kindint32
      end interface val_at
      interface operator(.val.)
         module procedure val_atLogicalDim0Kindint32
      end interface operator(.val.)
      interface shift
         module procedure shiftLogicalDim0Kindint32
      end interface shift
      interface unshift
         module procedure unshiftLogicalDim0Kindint32
      end interface unshift
      interface push
         module procedure pushLogicalDim0Kindint32
      end interface push
      interface pop
         module procedure popLogicalDim0Kindint32
      end interface pop
      interface clear
         module procedure clearLogicalDim0Kindint32
      end interface clear
      interface swap
         module procedure swapLogicalDim0Kindint32
      end interface swap
      interface assignment(=)
         module procedure copyLogicalDim0Kindint32
         module procedure list_from_array_coercionLogicalDim0Kindint32
         module procedure array_from_list_coercionLogicalDim0Kindint32
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneLogicalDim0Kindint32
      end interface is_size_one
      interface is_empty
         module procedure is_emptyLogicalDim0Kindint32
      end interface is_empty
      interface array_from_list
         module procedure array_from_listLogicalDim0Kindint32
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalLogicalDim0Kindint32
      end interface almost_equal
      ! Internal
      interface new
         module procedure newLogicalDim0Kindint32
      end interface new
      interface node_at
         module procedure node_atLogicalDim0Kindint32
      end interface node_at
      interface copy
         module procedure copyLogicalDim0Kindint32
      end interface copy
      interface size
         module procedure sizeLogicalDim0Kindint64
      end interface size
      interface delete_at
         module procedure delete_atLogicalDim0Kindint64
      end interface delete_at
      interface insert_at
         module procedure insert_atLogicalDim0Kindint64
      end interface insert_at
      interface val_at
         module procedure val_atLogicalDim0Kindint64
      end interface val_at
      interface operator(.val.)
         module procedure val_atLogicalDim0Kindint64
      end interface operator(.val.)
      interface shift
         module procedure shiftLogicalDim0Kindint64
      end interface shift
      interface unshift
         module procedure unshiftLogicalDim0Kindint64
      end interface unshift
      interface push
         module procedure pushLogicalDim0Kindint64
      end interface push
      interface pop
         module procedure popLogicalDim0Kindint64
      end interface pop
      interface clear
         module procedure clearLogicalDim0Kindint64
      end interface clear
      interface swap
         module procedure swapLogicalDim0Kindint64
      end interface swap
      interface assignment(=)
         module procedure copyLogicalDim0Kindint64
         module procedure list_from_array_coercionLogicalDim0Kindint64
         module procedure array_from_list_coercionLogicalDim0Kindint64
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneLogicalDim0Kindint64
      end interface is_size_one
      interface is_empty
         module procedure is_emptyLogicalDim0Kindint64
      end interface is_empty
      interface array_from_list
         module procedure array_from_listLogicalDim0Kindint64
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalLogicalDim0Kindint64
      end interface almost_equal
      ! Internal
      interface new
         module procedure newLogicalDim0Kindint64
      end interface new
      interface node_at
         module procedure node_atLogicalDim0Kindint64
      end interface node_at
      interface copy
         module procedure copyLogicalDim0Kindint64
      end interface copy
      interface size
         module procedure sizeCharacterDim0Len1
      end interface size
      interface delete_at
         module procedure delete_atCharacterDim0Len1
      end interface delete_at
      interface insert_at
         module procedure insert_atCharacterDim0Len1
      end interface insert_at
      interface val_at
         module procedure val_atCharacterDim0Len1
      end interface val_at
      interface operator(.val.)
         module procedure val_atCharacterDim0Len1
      end interface operator(.val.)
      interface shift
         module procedure shiftCharacterDim0Len1
      end interface shift
      interface unshift
         module procedure unshiftCharacterDim0Len1
      end interface unshift
      interface push
         module procedure pushCharacterDim0Len1
      end interface push
      interface pop
         module procedure popCharacterDim0Len1
      end interface pop
      interface clear
         module procedure clearCharacterDim0Len1
      end interface clear
      interface swap
         module procedure swapCharacterDim0Len1
      end interface swap
      interface assignment(=)
         module procedure copyCharacterDim0Len1
         module procedure list_from_array_coercionCharacterDim0Len1
         module procedure array_from_list_coercionCharacterDim0Len1
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneCharacterDim0Len1
      end interface is_size_one
      interface is_empty
         module procedure is_emptyCharacterDim0Len1
      end interface is_empty
      interface array_from_list
         module procedure array_from_listCharacterDim0Len1
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalCharacterDim0Len1
      end interface almost_equal
      ! Internal
      interface new
         module procedure newCharacterDim0Len1
      end interface new
      interface node_at
         module procedure node_atCharacterDim0Len1
      end interface node_at
      interface copy
         module procedure copyCharacterDim0Len1
      end interface copy
      interface size
         module procedure sizeCharacterDim0Len2
      end interface size
      interface delete_at
         module procedure delete_atCharacterDim0Len2
      end interface delete_at
      interface insert_at
         module procedure insert_atCharacterDim0Len2
      end interface insert_at
      interface val_at
         module procedure val_atCharacterDim0Len2
      end interface val_at
      interface operator(.val.)
         module procedure val_atCharacterDim0Len2
      end interface operator(.val.)
      interface shift
         module procedure shiftCharacterDim0Len2
      end interface shift
      interface unshift
         module procedure unshiftCharacterDim0Len2
      end interface unshift
      interface push
         module procedure pushCharacterDim0Len2
      end interface push
      interface pop
         module procedure popCharacterDim0Len2
      end interface pop
      interface clear
         module procedure clearCharacterDim0Len2
      end interface clear
      interface swap
         module procedure swapCharacterDim0Len2
      end interface swap
      interface assignment(=)
         module procedure copyCharacterDim0Len2
         module procedure list_from_array_coercionCharacterDim0Len2
         module procedure array_from_list_coercionCharacterDim0Len2
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneCharacterDim0Len2
      end interface is_size_one
      interface is_empty
         module procedure is_emptyCharacterDim0Len2
      end interface is_empty
      interface array_from_list
         module procedure array_from_listCharacterDim0Len2
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalCharacterDim0Len2
      end interface almost_equal
      ! Internal
      interface new
         module procedure newCharacterDim0Len2
      end interface new
      interface node_at
         module procedure node_atCharacterDim0Len2
      end interface node_at
      interface copy
         module procedure copyCharacterDim0Len2
      end interface copy
      interface size
         module procedure sizeCharacterDim0Len4
      end interface size
      interface delete_at
         module procedure delete_atCharacterDim0Len4
      end interface delete_at
      interface insert_at
         module procedure insert_atCharacterDim0Len4
      end interface insert_at
      interface val_at
         module procedure val_atCharacterDim0Len4
      end interface val_at
      interface operator(.val.)
         module procedure val_atCharacterDim0Len4
      end interface operator(.val.)
      interface shift
         module procedure shiftCharacterDim0Len4
      end interface shift
      interface unshift
         module procedure unshiftCharacterDim0Len4
      end interface unshift
      interface push
         module procedure pushCharacterDim0Len4
      end interface push
      interface pop
         module procedure popCharacterDim0Len4
      end interface pop
      interface clear
         module procedure clearCharacterDim0Len4
      end interface clear
      interface swap
         module procedure swapCharacterDim0Len4
      end interface swap
      interface assignment(=)
         module procedure copyCharacterDim0Len4
         module procedure list_from_array_coercionCharacterDim0Len4
         module procedure array_from_list_coercionCharacterDim0Len4
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneCharacterDim0Len4
      end interface is_size_one
      interface is_empty
         module procedure is_emptyCharacterDim0Len4
      end interface is_empty
      interface array_from_list
         module procedure array_from_listCharacterDim0Len4
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalCharacterDim0Len4
      end interface almost_equal
      ! Internal
      interface new
         module procedure newCharacterDim0Len4
      end interface new
      interface node_at
         module procedure node_atCharacterDim0Len4
      end interface node_at
      interface copy
         module procedure copyCharacterDim0Len4
      end interface copy
      interface size
         module procedure sizeCharacterDim0Len8
      end interface size
      interface delete_at
         module procedure delete_atCharacterDim0Len8
      end interface delete_at
      interface insert_at
         module procedure insert_atCharacterDim0Len8
      end interface insert_at
      interface val_at
         module procedure val_atCharacterDim0Len8
      end interface val_at
      interface operator(.val.)
         module procedure val_atCharacterDim0Len8
      end interface operator(.val.)
      interface shift
         module procedure shiftCharacterDim0Len8
      end interface shift
      interface unshift
         module procedure unshiftCharacterDim0Len8
      end interface unshift
      interface push
         module procedure pushCharacterDim0Len8
      end interface push
      interface pop
         module procedure popCharacterDim0Len8
      end interface pop
      interface clear
         module procedure clearCharacterDim0Len8
      end interface clear
      interface swap
         module procedure swapCharacterDim0Len8
      end interface swap
      interface assignment(=)
         module procedure copyCharacterDim0Len8
         module procedure list_from_array_coercionCharacterDim0Len8
         module procedure array_from_list_coercionCharacterDim0Len8
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneCharacterDim0Len8
      end interface is_size_one
      interface is_empty
         module procedure is_emptyCharacterDim0Len8
      end interface is_empty
      interface array_from_list
         module procedure array_from_listCharacterDim0Len8
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalCharacterDim0Len8
      end interface almost_equal
      ! Internal
      interface new
         module procedure newCharacterDim0Len8
      end interface new
      interface node_at
         module procedure node_atCharacterDim0Len8
      end interface node_at
      interface copy
         module procedure copyCharacterDim0Len8
      end interface copy
      interface size
         module procedure sizeCharacterDim0Len16
      end interface size
      interface delete_at
         module procedure delete_atCharacterDim0Len16
      end interface delete_at
      interface insert_at
         module procedure insert_atCharacterDim0Len16
      end interface insert_at
      interface val_at
         module procedure val_atCharacterDim0Len16
      end interface val_at
      interface operator(.val.)
         module procedure val_atCharacterDim0Len16
      end interface operator(.val.)
      interface shift
         module procedure shiftCharacterDim0Len16
      end interface shift
      interface unshift
         module procedure unshiftCharacterDim0Len16
      end interface unshift
      interface push
         module procedure pushCharacterDim0Len16
      end interface push
      interface pop
         module procedure popCharacterDim0Len16
      end interface pop
      interface clear
         module procedure clearCharacterDim0Len16
      end interface clear
      interface swap
         module procedure swapCharacterDim0Len16
      end interface swap
      interface assignment(=)
         module procedure copyCharacterDim0Len16
         module procedure list_from_array_coercionCharacterDim0Len16
         module procedure array_from_list_coercionCharacterDim0Len16
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneCharacterDim0Len16
      end interface is_size_one
      interface is_empty
         module procedure is_emptyCharacterDim0Len16
      end interface is_empty
      interface array_from_list
         module procedure array_from_listCharacterDim0Len16
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalCharacterDim0Len16
      end interface almost_equal
      ! Internal
      interface new
         module procedure newCharacterDim0Len16
      end interface new
      interface node_at
         module procedure node_atCharacterDim0Len16
      end interface node_at
      interface copy
         module procedure copyCharacterDim0Len16
      end interface copy
      interface size
         module procedure sizeCharacterDim0Len32
      end interface size
      interface delete_at
         module procedure delete_atCharacterDim0Len32
      end interface delete_at
      interface insert_at
         module procedure insert_atCharacterDim0Len32
      end interface insert_at
      interface val_at
         module procedure val_atCharacterDim0Len32
      end interface val_at
      interface operator(.val.)
         module procedure val_atCharacterDim0Len32
      end interface operator(.val.)
      interface shift
         module procedure shiftCharacterDim0Len32
      end interface shift
      interface unshift
         module procedure unshiftCharacterDim0Len32
      end interface unshift
      interface push
         module procedure pushCharacterDim0Len32
      end interface push
      interface pop
         module procedure popCharacterDim0Len32
      end interface pop
      interface clear
         module procedure clearCharacterDim0Len32
      end interface clear
      interface swap
         module procedure swapCharacterDim0Len32
      end interface swap
      interface assignment(=)
         module procedure copyCharacterDim0Len32
         module procedure list_from_array_coercionCharacterDim0Len32
         module procedure array_from_list_coercionCharacterDim0Len32
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneCharacterDim0Len32
      end interface is_size_one
      interface is_empty
         module procedure is_emptyCharacterDim0Len32
      end interface is_empty
      interface array_from_list
         module procedure array_from_listCharacterDim0Len32
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalCharacterDim0Len32
      end interface almost_equal
      ! Internal
      interface new
         module procedure newCharacterDim0Len32
      end interface new
      interface node_at
         module procedure node_atCharacterDim0Len32
      end interface node_at
      interface copy
         module procedure copyCharacterDim0Len32
      end interface copy
      interface size
         module procedure sizeCharacterDim0Len64
      end interface size
      interface delete_at
         module procedure delete_atCharacterDim0Len64
      end interface delete_at
      interface insert_at
         module procedure insert_atCharacterDim0Len64
      end interface insert_at
      interface val_at
         module procedure val_atCharacterDim0Len64
      end interface val_at
      interface operator(.val.)
         module procedure val_atCharacterDim0Len64
      end interface operator(.val.)
      interface shift
         module procedure shiftCharacterDim0Len64
      end interface shift
      interface unshift
         module procedure unshiftCharacterDim0Len64
      end interface unshift
      interface push
         module procedure pushCharacterDim0Len64
      end interface push
      interface pop
         module procedure popCharacterDim0Len64
      end interface pop
      interface clear
         module procedure clearCharacterDim0Len64
      end interface clear
      interface swap
         module procedure swapCharacterDim0Len64
      end interface swap
      interface assignment(=)
         module procedure copyCharacterDim0Len64
         module procedure list_from_array_coercionCharacterDim0Len64
         module procedure array_from_list_coercionCharacterDim0Len64
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneCharacterDim0Len64
      end interface is_size_one
      interface is_empty
         module procedure is_emptyCharacterDim0Len64
      end interface is_empty
      interface array_from_list
         module procedure array_from_listCharacterDim0Len64
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalCharacterDim0Len64
      end interface almost_equal
      ! Internal
      interface new
         module procedure newCharacterDim0Len64
      end interface new
      interface node_at
         module procedure node_atCharacterDim0Len64
      end interface node_at
      interface copy
         module procedure copyCharacterDim0Len64
      end interface copy
      interface size
         module procedure sizeCharacterDim0Len128
      end interface size
      interface delete_at
         module procedure delete_atCharacterDim0Len128
      end interface delete_at
      interface insert_at
         module procedure insert_atCharacterDim0Len128
      end interface insert_at
      interface val_at
         module procedure val_atCharacterDim0Len128
      end interface val_at
      interface operator(.val.)
         module procedure val_atCharacterDim0Len128
      end interface operator(.val.)
      interface shift
         module procedure shiftCharacterDim0Len128
      end interface shift
      interface unshift
         module procedure unshiftCharacterDim0Len128
      end interface unshift
      interface push
         module procedure pushCharacterDim0Len128
      end interface push
      interface pop
         module procedure popCharacterDim0Len128
      end interface pop
      interface clear
         module procedure clearCharacterDim0Len128
      end interface clear
      interface swap
         module procedure swapCharacterDim0Len128
      end interface swap
      interface assignment(=)
         module procedure copyCharacterDim0Len128
         module procedure list_from_array_coercionCharacterDim0Len128
         module procedure array_from_list_coercionCharacterDim0Len128
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneCharacterDim0Len128
      end interface is_size_one
      interface is_empty
         module procedure is_emptyCharacterDim0Len128
      end interface is_empty
      interface array_from_list
         module procedure array_from_listCharacterDim0Len128
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalCharacterDim0Len128
      end interface almost_equal
      ! Internal
      interface new
         module procedure newCharacterDim0Len128
      end interface new
      interface node_at
         module procedure node_atCharacterDim0Len128
      end interface node_at
      interface copy
         module procedure copyCharacterDim0Len128
      end interface copy
      interface size
         module procedure sizeCharacterDim0Len256
      end interface size
      interface delete_at
         module procedure delete_atCharacterDim0Len256
      end interface delete_at
      interface insert_at
         module procedure insert_atCharacterDim0Len256
      end interface insert_at
      interface val_at
         module procedure val_atCharacterDim0Len256
      end interface val_at
      interface operator(.val.)
         module procedure val_atCharacterDim0Len256
      end interface operator(.val.)
      interface shift
         module procedure shiftCharacterDim0Len256
      end interface shift
      interface unshift
         module procedure unshiftCharacterDim0Len256
      end interface unshift
      interface push
         module procedure pushCharacterDim0Len256
      end interface push
      interface pop
         module procedure popCharacterDim0Len256
      end interface pop
      interface clear
         module procedure clearCharacterDim0Len256
      end interface clear
      interface swap
         module procedure swapCharacterDim0Len256
      end interface swap
      interface assignment(=)
         module procedure copyCharacterDim0Len256
         module procedure list_from_array_coercionCharacterDim0Len256
         module procedure array_from_list_coercionCharacterDim0Len256
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneCharacterDim0Len256
      end interface is_size_one
      interface is_empty
         module procedure is_emptyCharacterDim0Len256
      end interface is_empty
      interface array_from_list
         module procedure array_from_listCharacterDim0Len256
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalCharacterDim0Len256
      end interface almost_equal
      ! Internal
      interface new
         module procedure newCharacterDim0Len256
      end interface new
      interface node_at
         module procedure node_atCharacterDim0Len256
      end interface node_at
      interface copy
         module procedure copyCharacterDim0Len256
      end interface copy
      interface size
         module procedure sizeCharacterDim0Len512
      end interface size
      interface delete_at
         module procedure delete_atCharacterDim0Len512
      end interface delete_at
      interface insert_at
         module procedure insert_atCharacterDim0Len512
      end interface insert_at
      interface val_at
         module procedure val_atCharacterDim0Len512
      end interface val_at
      interface operator(.val.)
         module procedure val_atCharacterDim0Len512
      end interface operator(.val.)
      interface shift
         module procedure shiftCharacterDim0Len512
      end interface shift
      interface unshift
         module procedure unshiftCharacterDim0Len512
      end interface unshift
      interface push
         module procedure pushCharacterDim0Len512
      end interface push
      interface pop
         module procedure popCharacterDim0Len512
      end interface pop
      interface clear
         module procedure clearCharacterDim0Len512
      end interface clear
      interface swap
         module procedure swapCharacterDim0Len512
      end interface swap
      interface assignment(=)
         module procedure copyCharacterDim0Len512
         module procedure list_from_array_coercionCharacterDim0Len512
         module procedure array_from_list_coercionCharacterDim0Len512
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneCharacterDim0Len512
      end interface is_size_one
      interface is_empty
         module procedure is_emptyCharacterDim0Len512
      end interface is_empty
      interface array_from_list
         module procedure array_from_listCharacterDim0Len512
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalCharacterDim0Len512
      end interface almost_equal
      ! Internal
      interface new
         module procedure newCharacterDim0Len512
      end interface new
      interface node_at
         module procedure node_atCharacterDim0Len512
      end interface node_at
      interface copy
         module procedure copyCharacterDim0Len512
      end interface copy
      interface size
         module procedure sizeCharacterDim0Len1024
      end interface size
      interface delete_at
         module procedure delete_atCharacterDim0Len1024
      end interface delete_at
      interface insert_at
         module procedure insert_atCharacterDim0Len1024
      end interface insert_at
      interface val_at
         module procedure val_atCharacterDim0Len1024
      end interface val_at
      interface operator(.val.)
         module procedure val_atCharacterDim0Len1024
      end interface operator(.val.)
      interface shift
         module procedure shiftCharacterDim0Len1024
      end interface shift
      interface unshift
         module procedure unshiftCharacterDim0Len1024
      end interface unshift
      interface push
         module procedure pushCharacterDim0Len1024
      end interface push
      interface pop
         module procedure popCharacterDim0Len1024
      end interface pop
      interface clear
         module procedure clearCharacterDim0Len1024
      end interface clear
      interface swap
         module procedure swapCharacterDim0Len1024
      end interface swap
      interface assignment(=)
         module procedure copyCharacterDim0Len1024
         module procedure list_from_array_coercionCharacterDim0Len1024
         module procedure array_from_list_coercionCharacterDim0Len1024
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneCharacterDim0Len1024
      end interface is_size_one
      interface is_empty
         module procedure is_emptyCharacterDim0Len1024
      end interface is_empty
      interface array_from_list
         module procedure array_from_listCharacterDim0Len1024
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalCharacterDim0Len1024
      end interface almost_equal
      ! Internal
      interface new
         module procedure newCharacterDim0Len1024
      end interface new
      interface node_at
         module procedure node_atCharacterDim0Len1024
      end interface node_at
      interface copy
         module procedure copyCharacterDim0Len1024
      end interface copy
      interface size
         module procedure sizeCharacterDim0Len2048
      end interface size
      interface delete_at
         module procedure delete_atCharacterDim0Len2048
      end interface delete_at
      interface insert_at
         module procedure insert_atCharacterDim0Len2048
      end interface insert_at
      interface val_at
         module procedure val_atCharacterDim0Len2048
      end interface val_at
      interface operator(.val.)
         module procedure val_atCharacterDim0Len2048
      end interface operator(.val.)
      interface shift
         module procedure shiftCharacterDim0Len2048
      end interface shift
      interface unshift
         module procedure unshiftCharacterDim0Len2048
      end interface unshift
      interface push
         module procedure pushCharacterDim0Len2048
      end interface push
      interface pop
         module procedure popCharacterDim0Len2048
      end interface pop
      interface clear
         module procedure clearCharacterDim0Len2048
      end interface clear
      interface swap
         module procedure swapCharacterDim0Len2048
      end interface swap
      interface assignment(=)
         module procedure copyCharacterDim0Len2048
         module procedure list_from_array_coercionCharacterDim0Len2048
         module procedure array_from_list_coercionCharacterDim0Len2048
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneCharacterDim0Len2048
      end interface is_size_one
      interface is_empty
         module procedure is_emptyCharacterDim0Len2048
      end interface is_empty
      interface array_from_list
         module procedure array_from_listCharacterDim0Len2048
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalCharacterDim0Len2048
      end interface almost_equal
      ! Internal
      interface new
         module procedure newCharacterDim0Len2048
      end interface new
      interface node_at
         module procedure node_atCharacterDim0Len2048
      end interface node_at
      interface copy
         module procedure copyCharacterDim0Len2048
      end interface copy
      interface size
         module procedure sizeCharacterDim0Len4096
      end interface size
      interface delete_at
         module procedure delete_atCharacterDim0Len4096
      end interface delete_at
      interface insert_at
         module procedure insert_atCharacterDim0Len4096
      end interface insert_at
      interface val_at
         module procedure val_atCharacterDim0Len4096
      end interface val_at
      interface operator(.val.)
         module procedure val_atCharacterDim0Len4096
      end interface operator(.val.)
      interface shift
         module procedure shiftCharacterDim0Len4096
      end interface shift
      interface unshift
         module procedure unshiftCharacterDim0Len4096
      end interface unshift
      interface push
         module procedure pushCharacterDim0Len4096
      end interface push
      interface pop
         module procedure popCharacterDim0Len4096
      end interface pop
      interface clear
         module procedure clearCharacterDim0Len4096
      end interface clear
      interface swap
         module procedure swapCharacterDim0Len4096
      end interface swap
      interface assignment(=)
         module procedure copyCharacterDim0Len4096
         module procedure list_from_array_coercionCharacterDim0Len4096
         module procedure array_from_list_coercionCharacterDim0Len4096
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneCharacterDim0Len4096
      end interface is_size_one
      interface is_empty
         module procedure is_emptyCharacterDim0Len4096
      end interface is_empty
      interface array_from_list
         module procedure array_from_listCharacterDim0Len4096
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalCharacterDim0Len4096
      end interface almost_equal
      ! Internal
      interface new
         module procedure newCharacterDim0Len4096
      end interface new
      interface node_at
         module procedure node_atCharacterDim0Len4096
      end interface node_at
      interface copy
         module procedure copyCharacterDim0Len4096
      end interface copy
      interface size
         module procedure sizeCharacterDim0Len8192
      end interface size
      interface delete_at
         module procedure delete_atCharacterDim0Len8192
      end interface delete_at
      interface insert_at
         module procedure insert_atCharacterDim0Len8192
      end interface insert_at
      interface val_at
         module procedure val_atCharacterDim0Len8192
      end interface val_at
      interface operator(.val.)
         module procedure val_atCharacterDim0Len8192
      end interface operator(.val.)
      interface shift
         module procedure shiftCharacterDim0Len8192
      end interface shift
      interface unshift
         module procedure unshiftCharacterDim0Len8192
      end interface unshift
      interface push
         module procedure pushCharacterDim0Len8192
      end interface push
      interface pop
         module procedure popCharacterDim0Len8192
      end interface pop
      interface clear
         module procedure clearCharacterDim0Len8192
      end interface clear
      interface swap
         module procedure swapCharacterDim0Len8192
      end interface swap
      interface assignment(=)
         module procedure copyCharacterDim0Len8192
         module procedure list_from_array_coercionCharacterDim0Len8192
         module procedure array_from_list_coercionCharacterDim0Len8192
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneCharacterDim0Len8192
      end interface is_size_one
      interface is_empty
         module procedure is_emptyCharacterDim0Len8192
      end interface is_empty
      interface array_from_list
         module procedure array_from_listCharacterDim0Len8192
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalCharacterDim0Len8192
      end interface almost_equal
      ! Internal
      interface new
         module procedure newCharacterDim0Len8192
      end interface new
      interface node_at
         module procedure node_atCharacterDim0Len8192
      end interface node_at
      interface copy
         module procedure copyCharacterDim0Len8192
      end interface copy
      interface size
         module procedure sizeIntegerDim0Kindint8
      end interface size
      interface delete_at
         module procedure delete_atIntegerDim0Kindint8
      end interface delete_at
      interface insert_at
         module procedure insert_atIntegerDim0Kindint8
      end interface insert_at
      interface val_at
         module procedure val_atIntegerDim0Kindint8
      end interface val_at
      interface operator(.val.)
         module procedure val_atIntegerDim0Kindint8
      end interface operator(.val.)
      interface shift
         module procedure shiftIntegerDim0Kindint8
      end interface shift
      interface unshift
         module procedure unshiftIntegerDim0Kindint8
      end interface unshift
      interface push
         module procedure pushIntegerDim0Kindint8
      end interface push
      interface pop
         module procedure popIntegerDim0Kindint8
      end interface pop
      interface clear
         module procedure clearIntegerDim0Kindint8
      end interface clear
      interface swap
         module procedure swapIntegerDim0Kindint8
      end interface swap
      interface assignment(=)
         module procedure copyIntegerDim0Kindint8
         module procedure list_from_array_coercionIntegerDim0Kindint8
         module procedure array_from_list_coercionIntegerDim0Kindint8
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneIntegerDim0Kindint8
      end interface is_size_one
      interface is_empty
         module procedure is_emptyIntegerDim0Kindint8
      end interface is_empty
      interface array_from_list
         module procedure array_from_listIntegerDim0Kindint8
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalIntegerDim0Kindint8
      end interface almost_equal
      ! Internal
      interface new
         module procedure newIntegerDim0Kindint8
      end interface new
      interface node_at
         module procedure node_atIntegerDim0Kindint8
      end interface node_at
      interface copy
         module procedure copyIntegerDim0Kindint8
      end interface copy
      interface size
         module procedure sizeIntegerDim0Kindint16
      end interface size
      interface delete_at
         module procedure delete_atIntegerDim0Kindint16
      end interface delete_at
      interface insert_at
         module procedure insert_atIntegerDim0Kindint16
      end interface insert_at
      interface val_at
         module procedure val_atIntegerDim0Kindint16
      end interface val_at
      interface operator(.val.)
         module procedure val_atIntegerDim0Kindint16
      end interface operator(.val.)
      interface shift
         module procedure shiftIntegerDim0Kindint16
      end interface shift
      interface unshift
         module procedure unshiftIntegerDim0Kindint16
      end interface unshift
      interface push
         module procedure pushIntegerDim0Kindint16
      end interface push
      interface pop
         module procedure popIntegerDim0Kindint16
      end interface pop
      interface clear
         module procedure clearIntegerDim0Kindint16
      end interface clear
      interface swap
         module procedure swapIntegerDim0Kindint16
      end interface swap
      interface assignment(=)
         module procedure copyIntegerDim0Kindint16
         module procedure list_from_array_coercionIntegerDim0Kindint16
         module procedure array_from_list_coercionIntegerDim0Kindint16
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneIntegerDim0Kindint16
      end interface is_size_one
      interface is_empty
         module procedure is_emptyIntegerDim0Kindint16
      end interface is_empty
      interface array_from_list
         module procedure array_from_listIntegerDim0Kindint16
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalIntegerDim0Kindint16
      end interface almost_equal
      ! Internal
      interface new
         module procedure newIntegerDim0Kindint16
      end interface new
      interface node_at
         module procedure node_atIntegerDim0Kindint16
      end interface node_at
      interface copy
         module procedure copyIntegerDim0Kindint16
      end interface copy
      interface size
         module procedure sizeIntegerDim0Kindint32
      end interface size
      interface delete_at
         module procedure delete_atIntegerDim0Kindint32
      end interface delete_at
      interface insert_at
         module procedure insert_atIntegerDim0Kindint32
      end interface insert_at
      interface val_at
         module procedure val_atIntegerDim0Kindint32
      end interface val_at
      interface operator(.val.)
         module procedure val_atIntegerDim0Kindint32
      end interface operator(.val.)
      interface shift
         module procedure shiftIntegerDim0Kindint32
      end interface shift
      interface unshift
         module procedure unshiftIntegerDim0Kindint32
      end interface unshift
      interface push
         module procedure pushIntegerDim0Kindint32
      end interface push
      interface pop
         module procedure popIntegerDim0Kindint32
      end interface pop
      interface clear
         module procedure clearIntegerDim0Kindint32
      end interface clear
      interface swap
         module procedure swapIntegerDim0Kindint32
      end interface swap
      interface assignment(=)
         module procedure copyIntegerDim0Kindint32
         module procedure list_from_array_coercionIntegerDim0Kindint32
         module procedure array_from_list_coercionIntegerDim0Kindint32
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneIntegerDim0Kindint32
      end interface is_size_one
      interface is_empty
         module procedure is_emptyIntegerDim0Kindint32
      end interface is_empty
      interface array_from_list
         module procedure array_from_listIntegerDim0Kindint32
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalIntegerDim0Kindint32
      end interface almost_equal
      ! Internal
      interface new
         module procedure newIntegerDim0Kindint32
      end interface new
      interface node_at
         module procedure node_atIntegerDim0Kindint32
      end interface node_at
      interface copy
         module procedure copyIntegerDim0Kindint32
      end interface copy
      interface size
         module procedure sizeIntegerDim0Kindint64
      end interface size
      interface delete_at
         module procedure delete_atIntegerDim0Kindint64
      end interface delete_at
      interface insert_at
         module procedure insert_atIntegerDim0Kindint64
      end interface insert_at
      interface val_at
         module procedure val_atIntegerDim0Kindint64
      end interface val_at
      interface operator(.val.)
         module procedure val_atIntegerDim0Kindint64
      end interface operator(.val.)
      interface shift
         module procedure shiftIntegerDim0Kindint64
      end interface shift
      interface unshift
         module procedure unshiftIntegerDim0Kindint64
      end interface unshift
      interface push
         module procedure pushIntegerDim0Kindint64
      end interface push
      interface pop
         module procedure popIntegerDim0Kindint64
      end interface pop
      interface clear
         module procedure clearIntegerDim0Kindint64
      end interface clear
      interface swap
         module procedure swapIntegerDim0Kindint64
      end interface swap
      interface assignment(=)
         module procedure copyIntegerDim0Kindint64
         module procedure list_from_array_coercionIntegerDim0Kindint64
         module procedure array_from_list_coercionIntegerDim0Kindint64
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneIntegerDim0Kindint64
      end interface is_size_one
      interface is_empty
         module procedure is_emptyIntegerDim0Kindint64
      end interface is_empty
      interface array_from_list
         module procedure array_from_listIntegerDim0Kindint64
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalIntegerDim0Kindint64
      end interface almost_equal
      ! Internal
      interface new
         module procedure newIntegerDim0Kindint64
      end interface new
      interface node_at
         module procedure node_atIntegerDim0Kindint64
      end interface node_at
      interface copy
         module procedure copyIntegerDim0Kindint64
      end interface copy
      interface size
         module procedure sizeRealDim0Kindreal32
      end interface size
      interface delete_at
         module procedure delete_atRealDim0Kindreal32
      end interface delete_at
      interface insert_at
         module procedure insert_atRealDim0Kindreal32
      end interface insert_at
      interface val_at
         module procedure val_atRealDim0Kindreal32
      end interface val_at
      interface operator(.val.)
         module procedure val_atRealDim0Kindreal32
      end interface operator(.val.)
      interface shift
         module procedure shiftRealDim0Kindreal32
      end interface shift
      interface unshift
         module procedure unshiftRealDim0Kindreal32
      end interface unshift
      interface push
         module procedure pushRealDim0Kindreal32
      end interface push
      interface pop
         module procedure popRealDim0Kindreal32
      end interface pop
      interface clear
         module procedure clearRealDim0Kindreal32
      end interface clear
      interface swap
         module procedure swapRealDim0Kindreal32
      end interface swap
      interface assignment(=)
         module procedure copyRealDim0Kindreal32
         module procedure list_from_array_coercionRealDim0Kindreal32
         module procedure array_from_list_coercionRealDim0Kindreal32
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneRealDim0Kindreal32
      end interface is_size_one
      interface is_empty
         module procedure is_emptyRealDim0Kindreal32
      end interface is_empty
      interface array_from_list
         module procedure array_from_listRealDim0Kindreal32
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalRealDim0Kindreal32
      end interface almost_equal
      ! Internal
      interface new
         module procedure newRealDim0Kindreal32
      end interface new
      interface node_at
         module procedure node_atRealDim0Kindreal32
      end interface node_at
      interface copy
         module procedure copyRealDim0Kindreal32
      end interface copy
      interface size
         module procedure sizeRealDim0Kindreal64
      end interface size
      interface delete_at
         module procedure delete_atRealDim0Kindreal64
      end interface delete_at
      interface insert_at
         module procedure insert_atRealDim0Kindreal64
      end interface insert_at
      interface val_at
         module procedure val_atRealDim0Kindreal64
      end interface val_at
      interface operator(.val.)
         module procedure val_atRealDim0Kindreal64
      end interface operator(.val.)
      interface shift
         module procedure shiftRealDim0Kindreal64
      end interface shift
      interface unshift
         module procedure unshiftRealDim0Kindreal64
      end interface unshift
      interface push
         module procedure pushRealDim0Kindreal64
      end interface push
      interface pop
         module procedure popRealDim0Kindreal64
      end interface pop
      interface clear
         module procedure clearRealDim0Kindreal64
      end interface clear
      interface swap
         module procedure swapRealDim0Kindreal64
      end interface swap
      interface assignment(=)
         module procedure copyRealDim0Kindreal64
         module procedure list_from_array_coercionRealDim0Kindreal64
         module procedure array_from_list_coercionRealDim0Kindreal64
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneRealDim0Kindreal64
      end interface is_size_one
      interface is_empty
         module procedure is_emptyRealDim0Kindreal64
      end interface is_empty
      interface array_from_list
         module procedure array_from_listRealDim0Kindreal64
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalRealDim0Kindreal64
      end interface almost_equal
      ! Internal
      interface new
         module procedure newRealDim0Kindreal64
      end interface new
      interface node_at
         module procedure node_atRealDim0Kindreal64
      end interface node_at
      interface copy
         module procedure copyRealDim0Kindreal64
      end interface copy
      interface size
         module procedure sizeRealDim0Kindreal128
      end interface size
      interface delete_at
         module procedure delete_atRealDim0Kindreal128
      end interface delete_at
      interface insert_at
         module procedure insert_atRealDim0Kindreal128
      end interface insert_at
      interface val_at
         module procedure val_atRealDim0Kindreal128
      end interface val_at
      interface operator(.val.)
         module procedure val_atRealDim0Kindreal128
      end interface operator(.val.)
      interface shift
         module procedure shiftRealDim0Kindreal128
      end interface shift
      interface unshift
         module procedure unshiftRealDim0Kindreal128
      end interface unshift
      interface push
         module procedure pushRealDim0Kindreal128
      end interface push
      interface pop
         module procedure popRealDim0Kindreal128
      end interface pop
      interface clear
         module procedure clearRealDim0Kindreal128
      end interface clear
      interface swap
         module procedure swapRealDim0Kindreal128
      end interface swap
      interface assignment(=)
         module procedure copyRealDim0Kindreal128
         module procedure list_from_array_coercionRealDim0Kindreal128
         module procedure array_from_list_coercionRealDim0Kindreal128
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneRealDim0Kindreal128
      end interface is_size_one
      interface is_empty
         module procedure is_emptyRealDim0Kindreal128
      end interface is_empty
      interface array_from_list
         module procedure array_from_listRealDim0Kindreal128
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalRealDim0Kindreal128
      end interface almost_equal
      ! Internal
      interface new
         module procedure newRealDim0Kindreal128
      end interface new
      interface node_at
         module procedure node_atRealDim0Kindreal128
      end interface node_at
      interface copy
         module procedure copyRealDim0Kindreal128
      end interface copy
      interface size
         module procedure sizeComplexDim0Kindreal32
      end interface size
      interface delete_at
         module procedure delete_atComplexDim0Kindreal32
      end interface delete_at
      interface insert_at
         module procedure insert_atComplexDim0Kindreal32
      end interface insert_at
      interface val_at
         module procedure val_atComplexDim0Kindreal32
      end interface val_at
      interface operator(.val.)
         module procedure val_atComplexDim0Kindreal32
      end interface operator(.val.)
      interface shift
         module procedure shiftComplexDim0Kindreal32
      end interface shift
      interface unshift
         module procedure unshiftComplexDim0Kindreal32
      end interface unshift
      interface push
         module procedure pushComplexDim0Kindreal32
      end interface push
      interface pop
         module procedure popComplexDim0Kindreal32
      end interface pop
      interface clear
         module procedure clearComplexDim0Kindreal32
      end interface clear
      interface swap
         module procedure swapComplexDim0Kindreal32
      end interface swap
      interface assignment(=)
         module procedure copyComplexDim0Kindreal32
         module procedure list_from_array_coercionComplexDim0Kindreal32
         module procedure array_from_list_coercionComplexDim0Kindreal32
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneComplexDim0Kindreal32
      end interface is_size_one
      interface is_empty
         module procedure is_emptyComplexDim0Kindreal32
      end interface is_empty
      interface array_from_list
         module procedure array_from_listComplexDim0Kindreal32
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalComplexDim0Kindreal32
      end interface almost_equal
      ! Internal
      interface new
         module procedure newComplexDim0Kindreal32
      end interface new
      interface node_at
         module procedure node_atComplexDim0Kindreal32
      end interface node_at
      interface copy
         module procedure copyComplexDim0Kindreal32
      end interface copy
      interface size
         module procedure sizeComplexDim0Kindreal64
      end interface size
      interface delete_at
         module procedure delete_atComplexDim0Kindreal64
      end interface delete_at
      interface insert_at
         module procedure insert_atComplexDim0Kindreal64
      end interface insert_at
      interface val_at
         module procedure val_atComplexDim0Kindreal64
      end interface val_at
      interface operator(.val.)
         module procedure val_atComplexDim0Kindreal64
      end interface operator(.val.)
      interface shift
         module procedure shiftComplexDim0Kindreal64
      end interface shift
      interface unshift
         module procedure unshiftComplexDim0Kindreal64
      end interface unshift
      interface push
         module procedure pushComplexDim0Kindreal64
      end interface push
      interface pop
         module procedure popComplexDim0Kindreal64
      end interface pop
      interface clear
         module procedure clearComplexDim0Kindreal64
      end interface clear
      interface swap
         module procedure swapComplexDim0Kindreal64
      end interface swap
      interface assignment(=)
         module procedure copyComplexDim0Kindreal64
         module procedure list_from_array_coercionComplexDim0Kindreal64
         module procedure array_from_list_coercionComplexDim0Kindreal64
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneComplexDim0Kindreal64
      end interface is_size_one
      interface is_empty
         module procedure is_emptyComplexDim0Kindreal64
      end interface is_empty
      interface array_from_list
         module procedure array_from_listComplexDim0Kindreal64
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalComplexDim0Kindreal64
      end interface almost_equal
      ! Internal
      interface new
         module procedure newComplexDim0Kindreal64
      end interface new
      interface node_at
         module procedure node_atComplexDim0Kindreal64
      end interface node_at
      interface copy
         module procedure copyComplexDim0Kindreal64
      end interface copy
      interface size
         module procedure sizeComplexDim0Kindreal128
      end interface size
      interface delete_at
         module procedure delete_atComplexDim0Kindreal128
      end interface delete_at
      interface insert_at
         module procedure insert_atComplexDim0Kindreal128
      end interface insert_at
      interface val_at
         module procedure val_atComplexDim0Kindreal128
      end interface val_at
      interface operator(.val.)
         module procedure val_atComplexDim0Kindreal128
      end interface operator(.val.)
      interface shift
         module procedure shiftComplexDim0Kindreal128
      end interface shift
      interface unshift
         module procedure unshiftComplexDim0Kindreal128
      end interface unshift
      interface push
         module procedure pushComplexDim0Kindreal128
      end interface push
      interface pop
         module procedure popComplexDim0Kindreal128
      end interface pop
      interface clear
         module procedure clearComplexDim0Kindreal128
      end interface clear
      interface swap
         module procedure swapComplexDim0Kindreal128
      end interface swap
      interface assignment(=)
         module procedure copyComplexDim0Kindreal128
         module procedure list_from_array_coercionComplexDim0Kindreal128
         module procedure array_from_list_coercionComplexDim0Kindreal128
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneComplexDim0Kindreal128
      end interface is_size_one
      interface is_empty
         module procedure is_emptyComplexDim0Kindreal128
      end interface is_empty
      interface array_from_list
         module procedure array_from_listComplexDim0Kindreal128
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalComplexDim0Kindreal128
      end interface almost_equal
      ! Internal
      interface new
         module procedure newComplexDim0Kindreal128
      end interface new
      interface node_at
         module procedure node_atComplexDim0Kindreal128
      end interface node_at
      interface copy
         module procedure copyComplexDim0Kindreal128
      end interface copy
contains
      subroutine swapLogicalDim0Kindint8(self, pos1, pos2)
         type(LogicalDim0Kindint8List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(LogicalDim0Kindint8ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(LogicalDim0Kindint8ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 2607, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapLogicalDim0Kindint8
      subroutine list_from_array_coercionLogicalDim0Kindint8(self, array)
         type(LogicalDim0Kindint8List), intent(inout):: self
         Logical(kind=int8), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionLogicalDim0Kindint8
      subroutine array_from_list_coercionLogicalDim0Kindint8(array, list)
         Logical(kind=int8), allocatable, intent(out):: array(:)
         type(LogicalDim0Kindint8List), intent(in):: list
         integer:: i, nList
         type(LogicalDim0Kindint8ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionLogicalDim0Kindint8
      function val_atLogicalDim0Kindint8(self, pos) result(answer)
         Logical(kind=int8):: answer
         type(LogicalDim0Kindint8List), intent(in):: self
         integer, intent(in):: pos
         type(LogicalDim0Kindint8ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atLogicalDim0Kindint8
      function shiftLogicalDim0Kindint8(self) result(answer)
         Logical(kind=int8):: answer
         type(LogicalDim0Kindint8List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftLogicalDim0Kindint8
      subroutine unshiftLogicalDim0Kindint8(self, val)
         type(LogicalDim0Kindint8List), intent(inout):: self
         Logical(kind=int8), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftLogicalDim0Kindint8
      function delete_atLogicalDim0Kindint8(self, pos) result(answer)
         Logical(kind=int8):: answer
         type(LogicalDim0Kindint8List), intent(inout):: self
         integer:: pos
         type(LogicalDim0Kindint8ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atLogicalDim0Kindint8
      function popLogicalDim0Kindint8(self) result(answer)
         Logical(kind=int8):: answer
         type(LogicalDim0Kindint8List), intent(inout):: self
         type(LogicalDim0Kindint8ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popLogicalDim0Kindint8
      recursive subroutine clearLogicalDim0Kindint8(self)
         type(LogicalDim0Kindint8List), intent(inout):: self
         Logical(kind=int8):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearLogicalDim0Kindint8
      subroutine insert_atLogicalDim0Kindint8(self, val, pos)
         type(LogicalDim0Kindint8List), intent(inout):: self
         Logical(kind=int8), intent(in):: val
         integer, intent(in):: pos
         type(LogicalDim0Kindint8ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atLogicalDim0Kindint8
      subroutine pushLogicalDim0Kindint8(self, val)
         type(LogicalDim0Kindint8List), intent(inout):: self
         Logical(kind=int8), intent(in):: val
         type(LogicalDim0Kindint8ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushLogicalDim0Kindint8
      function is_emptyLogicalDim0Kindint8(self) result(answer)
         logical:: answer
         type(LogicalDim0Kindint8List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyLogicalDim0Kindint8
      function is_size_oneLogicalDim0Kindint8(self) result(answer)
         logical:: answer
         type(LogicalDim0Kindint8List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneLogicalDim0Kindint8
      function sizeLogicalDim0Kindint8(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(LogicalDim0Kindint8List), intent(in):: self
         type(LogicalDim0Kindint8ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeLogicalDim0Kindint8
      function array_from_listLogicalDim0Kindint8(self) result(answer)
         Logical(kind=int8), allocatable:: answer(:)
         type(LogicalDim0Kindint8List), intent(in):: self
         answer = self
      end function array_from_listLogicalDim0Kindint8
      function almost_equalLogicalDim0Kindint8(self, other) result(answer)
         type(LogicalDim0Kindint8List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalLogicalDim0Kindint8
      ! Internal
      ! Create a size 1 list.
      subroutine newLogicalDim0Kindint8(self, val)
         type(LogicalDim0Kindint8List), intent(inout):: self
         Logical(kind=int8), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newLogicalDim0Kindint8
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atLogicalDim0Kindint8(self, pos) result(answer)
         type(LogicalDim0Kindint8ListNode), pointer:: answer
         type(LogicalDim0Kindint8List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 2869, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atLogicalDim0Kindint8
      ! Cleate a deep copy of a list.
      subroutine copyLogicalDim0Kindint8(new, original)
         type(LogicalDim0Kindint8List), intent(inout):: new
         type(LogicalDim0Kindint8List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyLogicalDim0Kindint8
      subroutine swapLogicalDim0Kindint16(self, pos1, pos2)
         type(LogicalDim0Kindint16List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(LogicalDim0Kindint16ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(LogicalDim0Kindint16ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 2899, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapLogicalDim0Kindint16
      subroutine list_from_array_coercionLogicalDim0Kindint16(self, array)
         type(LogicalDim0Kindint16List), intent(inout):: self
         Logical(kind=int16), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionLogicalDim0Kindint16
      subroutine array_from_list_coercionLogicalDim0Kindint16(array, list)
         Logical(kind=int16), allocatable, intent(out):: array(:)
         type(LogicalDim0Kindint16List), intent(in):: list
         integer:: i, nList
         type(LogicalDim0Kindint16ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionLogicalDim0Kindint16
      function val_atLogicalDim0Kindint16(self, pos) result(answer)
         Logical(kind=int16):: answer
         type(LogicalDim0Kindint16List), intent(in):: self
         integer, intent(in):: pos
         type(LogicalDim0Kindint16ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atLogicalDim0Kindint16
      function shiftLogicalDim0Kindint16(self) result(answer)
         Logical(kind=int16):: answer
         type(LogicalDim0Kindint16List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftLogicalDim0Kindint16
      subroutine unshiftLogicalDim0Kindint16(self, val)
         type(LogicalDim0Kindint16List), intent(inout):: self
         Logical(kind=int16), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftLogicalDim0Kindint16
      function delete_atLogicalDim0Kindint16(self, pos) result(answer)
         Logical(kind=int16):: answer
         type(LogicalDim0Kindint16List), intent(inout):: self
         integer:: pos
         type(LogicalDim0Kindint16ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atLogicalDim0Kindint16
      function popLogicalDim0Kindint16(self) result(answer)
         Logical(kind=int16):: answer
         type(LogicalDim0Kindint16List), intent(inout):: self
         type(LogicalDim0Kindint16ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popLogicalDim0Kindint16
      recursive subroutine clearLogicalDim0Kindint16(self)
         type(LogicalDim0Kindint16List), intent(inout):: self
         Logical(kind=int16):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearLogicalDim0Kindint16
      subroutine insert_atLogicalDim0Kindint16(self, val, pos)
         type(LogicalDim0Kindint16List), intent(inout):: self
         Logical(kind=int16), intent(in):: val
         integer, intent(in):: pos
         type(LogicalDim0Kindint16ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atLogicalDim0Kindint16
      subroutine pushLogicalDim0Kindint16(self, val)
         type(LogicalDim0Kindint16List), intent(inout):: self
         Logical(kind=int16), intent(in):: val
         type(LogicalDim0Kindint16ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushLogicalDim0Kindint16
      function is_emptyLogicalDim0Kindint16(self) result(answer)
         logical:: answer
         type(LogicalDim0Kindint16List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyLogicalDim0Kindint16
      function is_size_oneLogicalDim0Kindint16(self) result(answer)
         logical:: answer
         type(LogicalDim0Kindint16List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneLogicalDim0Kindint16
      function sizeLogicalDim0Kindint16(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(LogicalDim0Kindint16List), intent(in):: self
         type(LogicalDim0Kindint16ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeLogicalDim0Kindint16
      function array_from_listLogicalDim0Kindint16(self) result(answer)
         Logical(kind=int16), allocatable:: answer(:)
         type(LogicalDim0Kindint16List), intent(in):: self
         answer = self
      end function array_from_listLogicalDim0Kindint16
      function almost_equalLogicalDim0Kindint16(self, other) result(answer)
         type(LogicalDim0Kindint16List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalLogicalDim0Kindint16
      ! Internal
      ! Create a size 1 list.
      subroutine newLogicalDim0Kindint16(self, val)
         type(LogicalDim0Kindint16List), intent(inout):: self
         Logical(kind=int16), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newLogicalDim0Kindint16
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atLogicalDim0Kindint16(self, pos) result(answer)
         type(LogicalDim0Kindint16ListNode), pointer:: answer
         type(LogicalDim0Kindint16List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 3161, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atLogicalDim0Kindint16
      ! Cleate a deep copy of a list.
      subroutine copyLogicalDim0Kindint16(new, original)
         type(LogicalDim0Kindint16List), intent(inout):: new
         type(LogicalDim0Kindint16List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyLogicalDim0Kindint16
      subroutine swapLogicalDim0Kindint32(self, pos1, pos2)
         type(LogicalDim0Kindint32List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(LogicalDim0Kindint32ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(LogicalDim0Kindint32ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 3191, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapLogicalDim0Kindint32
      subroutine list_from_array_coercionLogicalDim0Kindint32(self, array)
         type(LogicalDim0Kindint32List), intent(inout):: self
         Logical(kind=int32), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionLogicalDim0Kindint32
      subroutine array_from_list_coercionLogicalDim0Kindint32(array, list)
         Logical(kind=int32), allocatable, intent(out):: array(:)
         type(LogicalDim0Kindint32List), intent(in):: list
         integer:: i, nList
         type(LogicalDim0Kindint32ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionLogicalDim0Kindint32
      function val_atLogicalDim0Kindint32(self, pos) result(answer)
         Logical(kind=int32):: answer
         type(LogicalDim0Kindint32List), intent(in):: self
         integer, intent(in):: pos
         type(LogicalDim0Kindint32ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atLogicalDim0Kindint32
      function shiftLogicalDim0Kindint32(self) result(answer)
         Logical(kind=int32):: answer
         type(LogicalDim0Kindint32List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftLogicalDim0Kindint32
      subroutine unshiftLogicalDim0Kindint32(self, val)
         type(LogicalDim0Kindint32List), intent(inout):: self
         Logical(kind=int32), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftLogicalDim0Kindint32
      function delete_atLogicalDim0Kindint32(self, pos) result(answer)
         Logical(kind=int32):: answer
         type(LogicalDim0Kindint32List), intent(inout):: self
         integer:: pos
         type(LogicalDim0Kindint32ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atLogicalDim0Kindint32
      function popLogicalDim0Kindint32(self) result(answer)
         Logical(kind=int32):: answer
         type(LogicalDim0Kindint32List), intent(inout):: self
         type(LogicalDim0Kindint32ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popLogicalDim0Kindint32
      recursive subroutine clearLogicalDim0Kindint32(self)
         type(LogicalDim0Kindint32List), intent(inout):: self
         Logical(kind=int32):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearLogicalDim0Kindint32
      subroutine insert_atLogicalDim0Kindint32(self, val, pos)
         type(LogicalDim0Kindint32List), intent(inout):: self
         Logical(kind=int32), intent(in):: val
         integer, intent(in):: pos
         type(LogicalDim0Kindint32ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atLogicalDim0Kindint32
      subroutine pushLogicalDim0Kindint32(self, val)
         type(LogicalDim0Kindint32List), intent(inout):: self
         Logical(kind=int32), intent(in):: val
         type(LogicalDim0Kindint32ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushLogicalDim0Kindint32
      function is_emptyLogicalDim0Kindint32(self) result(answer)
         logical:: answer
         type(LogicalDim0Kindint32List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyLogicalDim0Kindint32
      function is_size_oneLogicalDim0Kindint32(self) result(answer)
         logical:: answer
         type(LogicalDim0Kindint32List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneLogicalDim0Kindint32
      function sizeLogicalDim0Kindint32(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(LogicalDim0Kindint32List), intent(in):: self
         type(LogicalDim0Kindint32ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeLogicalDim0Kindint32
      function array_from_listLogicalDim0Kindint32(self) result(answer)
         Logical(kind=int32), allocatable:: answer(:)
         type(LogicalDim0Kindint32List), intent(in):: self
         answer = self
      end function array_from_listLogicalDim0Kindint32
      function almost_equalLogicalDim0Kindint32(self, other) result(answer)
         type(LogicalDim0Kindint32List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalLogicalDim0Kindint32
      ! Internal
      ! Create a size 1 list.
      subroutine newLogicalDim0Kindint32(self, val)
         type(LogicalDim0Kindint32List), intent(inout):: self
         Logical(kind=int32), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newLogicalDim0Kindint32
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atLogicalDim0Kindint32(self, pos) result(answer)
         type(LogicalDim0Kindint32ListNode), pointer:: answer
         type(LogicalDim0Kindint32List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 3453, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atLogicalDim0Kindint32
      ! Cleate a deep copy of a list.
      subroutine copyLogicalDim0Kindint32(new, original)
         type(LogicalDim0Kindint32List), intent(inout):: new
         type(LogicalDim0Kindint32List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyLogicalDim0Kindint32
      subroutine swapLogicalDim0Kindint64(self, pos1, pos2)
         type(LogicalDim0Kindint64List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(LogicalDim0Kindint64ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(LogicalDim0Kindint64ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 3483, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapLogicalDim0Kindint64
      subroutine list_from_array_coercionLogicalDim0Kindint64(self, array)
         type(LogicalDim0Kindint64List), intent(inout):: self
         Logical(kind=int64), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionLogicalDim0Kindint64
      subroutine array_from_list_coercionLogicalDim0Kindint64(array, list)
         Logical(kind=int64), allocatable, intent(out):: array(:)
         type(LogicalDim0Kindint64List), intent(in):: list
         integer:: i, nList
         type(LogicalDim0Kindint64ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionLogicalDim0Kindint64
      function val_atLogicalDim0Kindint64(self, pos) result(answer)
         Logical(kind=int64):: answer
         type(LogicalDim0Kindint64List), intent(in):: self
         integer, intent(in):: pos
         type(LogicalDim0Kindint64ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atLogicalDim0Kindint64
      function shiftLogicalDim0Kindint64(self) result(answer)
         Logical(kind=int64):: answer
         type(LogicalDim0Kindint64List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftLogicalDim0Kindint64
      subroutine unshiftLogicalDim0Kindint64(self, val)
         type(LogicalDim0Kindint64List), intent(inout):: self
         Logical(kind=int64), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftLogicalDim0Kindint64
      function delete_atLogicalDim0Kindint64(self, pos) result(answer)
         Logical(kind=int64):: answer
         type(LogicalDim0Kindint64List), intent(inout):: self
         integer:: pos
         type(LogicalDim0Kindint64ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atLogicalDim0Kindint64
      function popLogicalDim0Kindint64(self) result(answer)
         Logical(kind=int64):: answer
         type(LogicalDim0Kindint64List), intent(inout):: self
         type(LogicalDim0Kindint64ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popLogicalDim0Kindint64
      recursive subroutine clearLogicalDim0Kindint64(self)
         type(LogicalDim0Kindint64List), intent(inout):: self
         Logical(kind=int64):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearLogicalDim0Kindint64
      subroutine insert_atLogicalDim0Kindint64(self, val, pos)
         type(LogicalDim0Kindint64List), intent(inout):: self
         Logical(kind=int64), intent(in):: val
         integer, intent(in):: pos
         type(LogicalDim0Kindint64ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atLogicalDim0Kindint64
      subroutine pushLogicalDim0Kindint64(self, val)
         type(LogicalDim0Kindint64List), intent(inout):: self
         Logical(kind=int64), intent(in):: val
         type(LogicalDim0Kindint64ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushLogicalDim0Kindint64
      function is_emptyLogicalDim0Kindint64(self) result(answer)
         logical:: answer
         type(LogicalDim0Kindint64List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyLogicalDim0Kindint64
      function is_size_oneLogicalDim0Kindint64(self) result(answer)
         logical:: answer
         type(LogicalDim0Kindint64List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneLogicalDim0Kindint64
      function sizeLogicalDim0Kindint64(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(LogicalDim0Kindint64List), intent(in):: self
         type(LogicalDim0Kindint64ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeLogicalDim0Kindint64
      function array_from_listLogicalDim0Kindint64(self) result(answer)
         Logical(kind=int64), allocatable:: answer(:)
         type(LogicalDim0Kindint64List), intent(in):: self
         answer = self
      end function array_from_listLogicalDim0Kindint64
      function almost_equalLogicalDim0Kindint64(self, other) result(answer)
         type(LogicalDim0Kindint64List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalLogicalDim0Kindint64
      ! Internal
      ! Create a size 1 list.
      subroutine newLogicalDim0Kindint64(self, val)
         type(LogicalDim0Kindint64List), intent(inout):: self
         Logical(kind=int64), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newLogicalDim0Kindint64
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atLogicalDim0Kindint64(self, pos) result(answer)
         type(LogicalDim0Kindint64ListNode), pointer:: answer
         type(LogicalDim0Kindint64List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 3745, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atLogicalDim0Kindint64
      ! Cleate a deep copy of a list.
      subroutine copyLogicalDim0Kindint64(new, original)
         type(LogicalDim0Kindint64List), intent(inout):: new
         type(LogicalDim0Kindint64List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyLogicalDim0Kindint64
      subroutine swapCharacterDim0Len1(self, pos1, pos2)
         type(CharacterDim0Len1List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(CharacterDim0Len1ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(CharacterDim0Len1ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 3775, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapCharacterDim0Len1
      subroutine list_from_array_coercionCharacterDim0Len1(self, array)
         type(CharacterDim0Len1List), intent(inout):: self
         Character(len=1), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionCharacterDim0Len1
      subroutine array_from_list_coercionCharacterDim0Len1(array, list)
         Character(len=1), allocatable, intent(out):: array(:)
         type(CharacterDim0Len1List), intent(in):: list
         integer:: i, nList
         type(CharacterDim0Len1ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionCharacterDim0Len1
      function val_atCharacterDim0Len1(self, pos) result(answer)
         Character(len=1):: answer
         type(CharacterDim0Len1List), intent(in):: self
         integer, intent(in):: pos
         type(CharacterDim0Len1ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atCharacterDim0Len1
      function shiftCharacterDim0Len1(self) result(answer)
         Character(len=1):: answer
         type(CharacterDim0Len1List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftCharacterDim0Len1
      subroutine unshiftCharacterDim0Len1(self, val)
         type(CharacterDim0Len1List), intent(inout):: self
         Character(len=1), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftCharacterDim0Len1
      function delete_atCharacterDim0Len1(self, pos) result(answer)
         Character(len=1):: answer
         type(CharacterDim0Len1List), intent(inout):: self
         integer:: pos
         type(CharacterDim0Len1ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atCharacterDim0Len1
      function popCharacterDim0Len1(self) result(answer)
         Character(len=1):: answer
         type(CharacterDim0Len1List), intent(inout):: self
         type(CharacterDim0Len1ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popCharacterDim0Len1
      recursive subroutine clearCharacterDim0Len1(self)
         type(CharacterDim0Len1List), intent(inout):: self
         Character(len=1):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearCharacterDim0Len1
      subroutine insert_atCharacterDim0Len1(self, val, pos)
         type(CharacterDim0Len1List), intent(inout):: self
         Character(len=1), intent(in):: val
         integer, intent(in):: pos
         type(CharacterDim0Len1ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atCharacterDim0Len1
      subroutine pushCharacterDim0Len1(self, val)
         type(CharacterDim0Len1List), intent(inout):: self
         Character(len=1), intent(in):: val
         type(CharacterDim0Len1ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushCharacterDim0Len1
      function is_emptyCharacterDim0Len1(self) result(answer)
         logical:: answer
         type(CharacterDim0Len1List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len1
      function is_size_oneCharacterDim0Len1(self) result(answer)
         logical:: answer
         type(CharacterDim0Len1List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneCharacterDim0Len1
      function sizeCharacterDim0Len1(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(CharacterDim0Len1List), intent(in):: self
         type(CharacterDim0Len1ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeCharacterDim0Len1
      function array_from_listCharacterDim0Len1(self) result(answer)
         Character(len=1), allocatable:: answer(:)
         type(CharacterDim0Len1List), intent(in):: self
         answer = self
      end function array_from_listCharacterDim0Len1
      function almost_equalCharacterDim0Len1(self, other) result(answer)
         type(CharacterDim0Len1List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalCharacterDim0Len1
      ! Internal
      ! Create a size 1 list.
      subroutine newCharacterDim0Len1(self, val)
         type(CharacterDim0Len1List), intent(inout):: self
         Character(len=1), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newCharacterDim0Len1
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atCharacterDim0Len1(self, pos) result(answer)
         type(CharacterDim0Len1ListNode), pointer:: answer
         type(CharacterDim0Len1List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 4037, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atCharacterDim0Len1
      ! Cleate a deep copy of a list.
      subroutine copyCharacterDim0Len1(new, original)
         type(CharacterDim0Len1List), intent(inout):: new
         type(CharacterDim0Len1List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyCharacterDim0Len1
      subroutine swapCharacterDim0Len2(self, pos1, pos2)
         type(CharacterDim0Len2List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(CharacterDim0Len2ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(CharacterDim0Len2ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 4067, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapCharacterDim0Len2
      subroutine list_from_array_coercionCharacterDim0Len2(self, array)
         type(CharacterDim0Len2List), intent(inout):: self
         Character(len=2), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionCharacterDim0Len2
      subroutine array_from_list_coercionCharacterDim0Len2(array, list)
         Character(len=2), allocatable, intent(out):: array(:)
         type(CharacterDim0Len2List), intent(in):: list
         integer:: i, nList
         type(CharacterDim0Len2ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionCharacterDim0Len2
      function val_atCharacterDim0Len2(self, pos) result(answer)
         Character(len=2):: answer
         type(CharacterDim0Len2List), intent(in):: self
         integer, intent(in):: pos
         type(CharacterDim0Len2ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atCharacterDim0Len2
      function shiftCharacterDim0Len2(self) result(answer)
         Character(len=2):: answer
         type(CharacterDim0Len2List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftCharacterDim0Len2
      subroutine unshiftCharacterDim0Len2(self, val)
         type(CharacterDim0Len2List), intent(inout):: self
         Character(len=2), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftCharacterDim0Len2
      function delete_atCharacterDim0Len2(self, pos) result(answer)
         Character(len=2):: answer
         type(CharacterDim0Len2List), intent(inout):: self
         integer:: pos
         type(CharacterDim0Len2ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atCharacterDim0Len2
      function popCharacterDim0Len2(self) result(answer)
         Character(len=2):: answer
         type(CharacterDim0Len2List), intent(inout):: self
         type(CharacterDim0Len2ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popCharacterDim0Len2
      recursive subroutine clearCharacterDim0Len2(self)
         type(CharacterDim0Len2List), intent(inout):: self
         Character(len=2):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearCharacterDim0Len2
      subroutine insert_atCharacterDim0Len2(self, val, pos)
         type(CharacterDim0Len2List), intent(inout):: self
         Character(len=2), intent(in):: val
         integer, intent(in):: pos
         type(CharacterDim0Len2ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atCharacterDim0Len2
      subroutine pushCharacterDim0Len2(self, val)
         type(CharacterDim0Len2List), intent(inout):: self
         Character(len=2), intent(in):: val
         type(CharacterDim0Len2ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushCharacterDim0Len2
      function is_emptyCharacterDim0Len2(self) result(answer)
         logical:: answer
         type(CharacterDim0Len2List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len2
      function is_size_oneCharacterDim0Len2(self) result(answer)
         logical:: answer
         type(CharacterDim0Len2List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneCharacterDim0Len2
      function sizeCharacterDim0Len2(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(CharacterDim0Len2List), intent(in):: self
         type(CharacterDim0Len2ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeCharacterDim0Len2
      function array_from_listCharacterDim0Len2(self) result(answer)
         Character(len=2), allocatable:: answer(:)
         type(CharacterDim0Len2List), intent(in):: self
         answer = self
      end function array_from_listCharacterDim0Len2
      function almost_equalCharacterDim0Len2(self, other) result(answer)
         type(CharacterDim0Len2List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalCharacterDim0Len2
      ! Internal
      ! Create a size 1 list.
      subroutine newCharacterDim0Len2(self, val)
         type(CharacterDim0Len2List), intent(inout):: self
         Character(len=2), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newCharacterDim0Len2
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atCharacterDim0Len2(self, pos) result(answer)
         type(CharacterDim0Len2ListNode), pointer:: answer
         type(CharacterDim0Len2List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 4329, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atCharacterDim0Len2
      ! Cleate a deep copy of a list.
      subroutine copyCharacterDim0Len2(new, original)
         type(CharacterDim0Len2List), intent(inout):: new
         type(CharacterDim0Len2List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyCharacterDim0Len2
      subroutine swapCharacterDim0Len4(self, pos1, pos2)
         type(CharacterDim0Len4List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(CharacterDim0Len4ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(CharacterDim0Len4ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 4359, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapCharacterDim0Len4
      subroutine list_from_array_coercionCharacterDim0Len4(self, array)
         type(CharacterDim0Len4List), intent(inout):: self
         Character(len=4), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionCharacterDim0Len4
      subroutine array_from_list_coercionCharacterDim0Len4(array, list)
         Character(len=4), allocatable, intent(out):: array(:)
         type(CharacterDim0Len4List), intent(in):: list
         integer:: i, nList
         type(CharacterDim0Len4ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionCharacterDim0Len4
      function val_atCharacterDim0Len4(self, pos) result(answer)
         Character(len=4):: answer
         type(CharacterDim0Len4List), intent(in):: self
         integer, intent(in):: pos
         type(CharacterDim0Len4ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atCharacterDim0Len4
      function shiftCharacterDim0Len4(self) result(answer)
         Character(len=4):: answer
         type(CharacterDim0Len4List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftCharacterDim0Len4
      subroutine unshiftCharacterDim0Len4(self, val)
         type(CharacterDim0Len4List), intent(inout):: self
         Character(len=4), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftCharacterDim0Len4
      function delete_atCharacterDim0Len4(self, pos) result(answer)
         Character(len=4):: answer
         type(CharacterDim0Len4List), intent(inout):: self
         integer:: pos
         type(CharacterDim0Len4ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atCharacterDim0Len4
      function popCharacterDim0Len4(self) result(answer)
         Character(len=4):: answer
         type(CharacterDim0Len4List), intent(inout):: self
         type(CharacterDim0Len4ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popCharacterDim0Len4
      recursive subroutine clearCharacterDim0Len4(self)
         type(CharacterDim0Len4List), intent(inout):: self
         Character(len=4):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearCharacterDim0Len4
      subroutine insert_atCharacterDim0Len4(self, val, pos)
         type(CharacterDim0Len4List), intent(inout):: self
         Character(len=4), intent(in):: val
         integer, intent(in):: pos
         type(CharacterDim0Len4ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atCharacterDim0Len4
      subroutine pushCharacterDim0Len4(self, val)
         type(CharacterDim0Len4List), intent(inout):: self
         Character(len=4), intent(in):: val
         type(CharacterDim0Len4ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushCharacterDim0Len4
      function is_emptyCharacterDim0Len4(self) result(answer)
         logical:: answer
         type(CharacterDim0Len4List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len4
      function is_size_oneCharacterDim0Len4(self) result(answer)
         logical:: answer
         type(CharacterDim0Len4List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneCharacterDim0Len4
      function sizeCharacterDim0Len4(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(CharacterDim0Len4List), intent(in):: self
         type(CharacterDim0Len4ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeCharacterDim0Len4
      function array_from_listCharacterDim0Len4(self) result(answer)
         Character(len=4), allocatable:: answer(:)
         type(CharacterDim0Len4List), intent(in):: self
         answer = self
      end function array_from_listCharacterDim0Len4
      function almost_equalCharacterDim0Len4(self, other) result(answer)
         type(CharacterDim0Len4List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalCharacterDim0Len4
      ! Internal
      ! Create a size 1 list.
      subroutine newCharacterDim0Len4(self, val)
         type(CharacterDim0Len4List), intent(inout):: self
         Character(len=4), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newCharacterDim0Len4
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atCharacterDim0Len4(self, pos) result(answer)
         type(CharacterDim0Len4ListNode), pointer:: answer
         type(CharacterDim0Len4List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 4621, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atCharacterDim0Len4
      ! Cleate a deep copy of a list.
      subroutine copyCharacterDim0Len4(new, original)
         type(CharacterDim0Len4List), intent(inout):: new
         type(CharacterDim0Len4List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyCharacterDim0Len4
      subroutine swapCharacterDim0Len8(self, pos1, pos2)
         type(CharacterDim0Len8List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(CharacterDim0Len8ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(CharacterDim0Len8ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 4651, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapCharacterDim0Len8
      subroutine list_from_array_coercionCharacterDim0Len8(self, array)
         type(CharacterDim0Len8List), intent(inout):: self
         Character(len=8), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionCharacterDim0Len8
      subroutine array_from_list_coercionCharacterDim0Len8(array, list)
         Character(len=8), allocatable, intent(out):: array(:)
         type(CharacterDim0Len8List), intent(in):: list
         integer:: i, nList
         type(CharacterDim0Len8ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionCharacterDim0Len8
      function val_atCharacterDim0Len8(self, pos) result(answer)
         Character(len=8):: answer
         type(CharacterDim0Len8List), intent(in):: self
         integer, intent(in):: pos
         type(CharacterDim0Len8ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atCharacterDim0Len8
      function shiftCharacterDim0Len8(self) result(answer)
         Character(len=8):: answer
         type(CharacterDim0Len8List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftCharacterDim0Len8
      subroutine unshiftCharacterDim0Len8(self, val)
         type(CharacterDim0Len8List), intent(inout):: self
         Character(len=8), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftCharacterDim0Len8
      function delete_atCharacterDim0Len8(self, pos) result(answer)
         Character(len=8):: answer
         type(CharacterDim0Len8List), intent(inout):: self
         integer:: pos
         type(CharacterDim0Len8ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atCharacterDim0Len8
      function popCharacterDim0Len8(self) result(answer)
         Character(len=8):: answer
         type(CharacterDim0Len8List), intent(inout):: self
         type(CharacterDim0Len8ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popCharacterDim0Len8
      recursive subroutine clearCharacterDim0Len8(self)
         type(CharacterDim0Len8List), intent(inout):: self
         Character(len=8):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearCharacterDim0Len8
      subroutine insert_atCharacterDim0Len8(self, val, pos)
         type(CharacterDim0Len8List), intent(inout):: self
         Character(len=8), intent(in):: val
         integer, intent(in):: pos
         type(CharacterDim0Len8ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atCharacterDim0Len8
      subroutine pushCharacterDim0Len8(self, val)
         type(CharacterDim0Len8List), intent(inout):: self
         Character(len=8), intent(in):: val
         type(CharacterDim0Len8ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushCharacterDim0Len8
      function is_emptyCharacterDim0Len8(self) result(answer)
         logical:: answer
         type(CharacterDim0Len8List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len8
      function is_size_oneCharacterDim0Len8(self) result(answer)
         logical:: answer
         type(CharacterDim0Len8List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneCharacterDim0Len8
      function sizeCharacterDim0Len8(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(CharacterDim0Len8List), intent(in):: self
         type(CharacterDim0Len8ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeCharacterDim0Len8
      function array_from_listCharacterDim0Len8(self) result(answer)
         Character(len=8), allocatable:: answer(:)
         type(CharacterDim0Len8List), intent(in):: self
         answer = self
      end function array_from_listCharacterDim0Len8
      function almost_equalCharacterDim0Len8(self, other) result(answer)
         type(CharacterDim0Len8List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalCharacterDim0Len8
      ! Internal
      ! Create a size 1 list.
      subroutine newCharacterDim0Len8(self, val)
         type(CharacterDim0Len8List), intent(inout):: self
         Character(len=8), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newCharacterDim0Len8
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atCharacterDim0Len8(self, pos) result(answer)
         type(CharacterDim0Len8ListNode), pointer:: answer
         type(CharacterDim0Len8List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 4913, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atCharacterDim0Len8
      ! Cleate a deep copy of a list.
      subroutine copyCharacterDim0Len8(new, original)
         type(CharacterDim0Len8List), intent(inout):: new
         type(CharacterDim0Len8List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyCharacterDim0Len8
      subroutine swapCharacterDim0Len16(self, pos1, pos2)
         type(CharacterDim0Len16List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(CharacterDim0Len16ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(CharacterDim0Len16ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 4943, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapCharacterDim0Len16
      subroutine list_from_array_coercionCharacterDim0Len16(self, array)
         type(CharacterDim0Len16List), intent(inout):: self
         Character(len=16), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionCharacterDim0Len16
      subroutine array_from_list_coercionCharacterDim0Len16(array, list)
         Character(len=16), allocatable, intent(out):: array(:)
         type(CharacterDim0Len16List), intent(in):: list
         integer:: i, nList
         type(CharacterDim0Len16ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionCharacterDim0Len16
      function val_atCharacterDim0Len16(self, pos) result(answer)
         Character(len=16):: answer
         type(CharacterDim0Len16List), intent(in):: self
         integer, intent(in):: pos
         type(CharacterDim0Len16ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atCharacterDim0Len16
      function shiftCharacterDim0Len16(self) result(answer)
         Character(len=16):: answer
         type(CharacterDim0Len16List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftCharacterDim0Len16
      subroutine unshiftCharacterDim0Len16(self, val)
         type(CharacterDim0Len16List), intent(inout):: self
         Character(len=16), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftCharacterDim0Len16
      function delete_atCharacterDim0Len16(self, pos) result(answer)
         Character(len=16):: answer
         type(CharacterDim0Len16List), intent(inout):: self
         integer:: pos
         type(CharacterDim0Len16ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atCharacterDim0Len16
      function popCharacterDim0Len16(self) result(answer)
         Character(len=16):: answer
         type(CharacterDim0Len16List), intent(inout):: self
         type(CharacterDim0Len16ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popCharacterDim0Len16
      recursive subroutine clearCharacterDim0Len16(self)
         type(CharacterDim0Len16List), intent(inout):: self
         Character(len=16):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearCharacterDim0Len16
      subroutine insert_atCharacterDim0Len16(self, val, pos)
         type(CharacterDim0Len16List), intent(inout):: self
         Character(len=16), intent(in):: val
         integer, intent(in):: pos
         type(CharacterDim0Len16ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atCharacterDim0Len16
      subroutine pushCharacterDim0Len16(self, val)
         type(CharacterDim0Len16List), intent(inout):: self
         Character(len=16), intent(in):: val
         type(CharacterDim0Len16ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushCharacterDim0Len16
      function is_emptyCharacterDim0Len16(self) result(answer)
         logical:: answer
         type(CharacterDim0Len16List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len16
      function is_size_oneCharacterDim0Len16(self) result(answer)
         logical:: answer
         type(CharacterDim0Len16List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneCharacterDim0Len16
      function sizeCharacterDim0Len16(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(CharacterDim0Len16List), intent(in):: self
         type(CharacterDim0Len16ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeCharacterDim0Len16
      function array_from_listCharacterDim0Len16(self) result(answer)
         Character(len=16), allocatable:: answer(:)
         type(CharacterDim0Len16List), intent(in):: self
         answer = self
      end function array_from_listCharacterDim0Len16
      function almost_equalCharacterDim0Len16(self, other) result(answer)
         type(CharacterDim0Len16List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalCharacterDim0Len16
      ! Internal
      ! Create a size 1 list.
      subroutine newCharacterDim0Len16(self, val)
         type(CharacterDim0Len16List), intent(inout):: self
         Character(len=16), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newCharacterDim0Len16
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atCharacterDim0Len16(self, pos) result(answer)
         type(CharacterDim0Len16ListNode), pointer:: answer
         type(CharacterDim0Len16List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 5205, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atCharacterDim0Len16
      ! Cleate a deep copy of a list.
      subroutine copyCharacterDim0Len16(new, original)
         type(CharacterDim0Len16List), intent(inout):: new
         type(CharacterDim0Len16List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyCharacterDim0Len16
      subroutine swapCharacterDim0Len32(self, pos1, pos2)
         type(CharacterDim0Len32List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(CharacterDim0Len32ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(CharacterDim0Len32ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 5235, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapCharacterDim0Len32
      subroutine list_from_array_coercionCharacterDim0Len32(self, array)
         type(CharacterDim0Len32List), intent(inout):: self
         Character(len=32), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionCharacterDim0Len32
      subroutine array_from_list_coercionCharacterDim0Len32(array, list)
         Character(len=32), allocatable, intent(out):: array(:)
         type(CharacterDim0Len32List), intent(in):: list
         integer:: i, nList
         type(CharacterDim0Len32ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionCharacterDim0Len32
      function val_atCharacterDim0Len32(self, pos) result(answer)
         Character(len=32):: answer
         type(CharacterDim0Len32List), intent(in):: self
         integer, intent(in):: pos
         type(CharacterDim0Len32ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atCharacterDim0Len32
      function shiftCharacterDim0Len32(self) result(answer)
         Character(len=32):: answer
         type(CharacterDim0Len32List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftCharacterDim0Len32
      subroutine unshiftCharacterDim0Len32(self, val)
         type(CharacterDim0Len32List), intent(inout):: self
         Character(len=32), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftCharacterDim0Len32
      function delete_atCharacterDim0Len32(self, pos) result(answer)
         Character(len=32):: answer
         type(CharacterDim0Len32List), intent(inout):: self
         integer:: pos
         type(CharacterDim0Len32ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atCharacterDim0Len32
      function popCharacterDim0Len32(self) result(answer)
         Character(len=32):: answer
         type(CharacterDim0Len32List), intent(inout):: self
         type(CharacterDim0Len32ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popCharacterDim0Len32
      recursive subroutine clearCharacterDim0Len32(self)
         type(CharacterDim0Len32List), intent(inout):: self
         Character(len=32):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearCharacterDim0Len32
      subroutine insert_atCharacterDim0Len32(self, val, pos)
         type(CharacterDim0Len32List), intent(inout):: self
         Character(len=32), intent(in):: val
         integer, intent(in):: pos
         type(CharacterDim0Len32ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atCharacterDim0Len32
      subroutine pushCharacterDim0Len32(self, val)
         type(CharacterDim0Len32List), intent(inout):: self
         Character(len=32), intent(in):: val
         type(CharacterDim0Len32ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushCharacterDim0Len32
      function is_emptyCharacterDim0Len32(self) result(answer)
         logical:: answer
         type(CharacterDim0Len32List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len32
      function is_size_oneCharacterDim0Len32(self) result(answer)
         logical:: answer
         type(CharacterDim0Len32List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneCharacterDim0Len32
      function sizeCharacterDim0Len32(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(CharacterDim0Len32List), intent(in):: self
         type(CharacterDim0Len32ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeCharacterDim0Len32
      function array_from_listCharacterDim0Len32(self) result(answer)
         Character(len=32), allocatable:: answer(:)
         type(CharacterDim0Len32List), intent(in):: self
         answer = self
      end function array_from_listCharacterDim0Len32
      function almost_equalCharacterDim0Len32(self, other) result(answer)
         type(CharacterDim0Len32List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalCharacterDim0Len32
      ! Internal
      ! Create a size 1 list.
      subroutine newCharacterDim0Len32(self, val)
         type(CharacterDim0Len32List), intent(inout):: self
         Character(len=32), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newCharacterDim0Len32
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atCharacterDim0Len32(self, pos) result(answer)
         type(CharacterDim0Len32ListNode), pointer:: answer
         type(CharacterDim0Len32List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 5497, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atCharacterDim0Len32
      ! Cleate a deep copy of a list.
      subroutine copyCharacterDim0Len32(new, original)
         type(CharacterDim0Len32List), intent(inout):: new
         type(CharacterDim0Len32List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyCharacterDim0Len32
      subroutine swapCharacterDim0Len64(self, pos1, pos2)
         type(CharacterDim0Len64List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(CharacterDim0Len64ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(CharacterDim0Len64ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 5527, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapCharacterDim0Len64
      subroutine list_from_array_coercionCharacterDim0Len64(self, array)
         type(CharacterDim0Len64List), intent(inout):: self
         Character(len=64), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionCharacterDim0Len64
      subroutine array_from_list_coercionCharacterDim0Len64(array, list)
         Character(len=64), allocatable, intent(out):: array(:)
         type(CharacterDim0Len64List), intent(in):: list
         integer:: i, nList
         type(CharacterDim0Len64ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionCharacterDim0Len64
      function val_atCharacterDim0Len64(self, pos) result(answer)
         Character(len=64):: answer
         type(CharacterDim0Len64List), intent(in):: self
         integer, intent(in):: pos
         type(CharacterDim0Len64ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atCharacterDim0Len64
      function shiftCharacterDim0Len64(self) result(answer)
         Character(len=64):: answer
         type(CharacterDim0Len64List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftCharacterDim0Len64
      subroutine unshiftCharacterDim0Len64(self, val)
         type(CharacterDim0Len64List), intent(inout):: self
         Character(len=64), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftCharacterDim0Len64
      function delete_atCharacterDim0Len64(self, pos) result(answer)
         Character(len=64):: answer
         type(CharacterDim0Len64List), intent(inout):: self
         integer:: pos
         type(CharacterDim0Len64ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atCharacterDim0Len64
      function popCharacterDim0Len64(self) result(answer)
         Character(len=64):: answer
         type(CharacterDim0Len64List), intent(inout):: self
         type(CharacterDim0Len64ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popCharacterDim0Len64
      recursive subroutine clearCharacterDim0Len64(self)
         type(CharacterDim0Len64List), intent(inout):: self
         Character(len=64):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearCharacterDim0Len64
      subroutine insert_atCharacterDim0Len64(self, val, pos)
         type(CharacterDim0Len64List), intent(inout):: self
         Character(len=64), intent(in):: val
         integer, intent(in):: pos
         type(CharacterDim0Len64ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atCharacterDim0Len64
      subroutine pushCharacterDim0Len64(self, val)
         type(CharacterDim0Len64List), intent(inout):: self
         Character(len=64), intent(in):: val
         type(CharacterDim0Len64ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushCharacterDim0Len64
      function is_emptyCharacterDim0Len64(self) result(answer)
         logical:: answer
         type(CharacterDim0Len64List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len64
      function is_size_oneCharacterDim0Len64(self) result(answer)
         logical:: answer
         type(CharacterDim0Len64List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneCharacterDim0Len64
      function sizeCharacterDim0Len64(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(CharacterDim0Len64List), intent(in):: self
         type(CharacterDim0Len64ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeCharacterDim0Len64
      function array_from_listCharacterDim0Len64(self) result(answer)
         Character(len=64), allocatable:: answer(:)
         type(CharacterDim0Len64List), intent(in):: self
         answer = self
      end function array_from_listCharacterDim0Len64
      function almost_equalCharacterDim0Len64(self, other) result(answer)
         type(CharacterDim0Len64List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalCharacterDim0Len64
      ! Internal
      ! Create a size 1 list.
      subroutine newCharacterDim0Len64(self, val)
         type(CharacterDim0Len64List), intent(inout):: self
         Character(len=64), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newCharacterDim0Len64
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atCharacterDim0Len64(self, pos) result(answer)
         type(CharacterDim0Len64ListNode), pointer:: answer
         type(CharacterDim0Len64List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 5789, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atCharacterDim0Len64
      ! Cleate a deep copy of a list.
      subroutine copyCharacterDim0Len64(new, original)
         type(CharacterDim0Len64List), intent(inout):: new
         type(CharacterDim0Len64List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyCharacterDim0Len64
      subroutine swapCharacterDim0Len128(self, pos1, pos2)
         type(CharacterDim0Len128List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(CharacterDim0Len128ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(CharacterDim0Len128ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 5819, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapCharacterDim0Len128
      subroutine list_from_array_coercionCharacterDim0Len128(self, array)
         type(CharacterDim0Len128List), intent(inout):: self
         Character(len=128), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionCharacterDim0Len128
      subroutine array_from_list_coercionCharacterDim0Len128(array, list)
         Character(len=128), allocatable, intent(out):: array(:)
         type(CharacterDim0Len128List), intent(in):: list
         integer:: i, nList
         type(CharacterDim0Len128ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionCharacterDim0Len128
      function val_atCharacterDim0Len128(self, pos) result(answer)
         Character(len=128):: answer
         type(CharacterDim0Len128List), intent(in):: self
         integer, intent(in):: pos
         type(CharacterDim0Len128ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atCharacterDim0Len128
      function shiftCharacterDim0Len128(self) result(answer)
         Character(len=128):: answer
         type(CharacterDim0Len128List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftCharacterDim0Len128
      subroutine unshiftCharacterDim0Len128(self, val)
         type(CharacterDim0Len128List), intent(inout):: self
         Character(len=128), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftCharacterDim0Len128
      function delete_atCharacterDim0Len128(self, pos) result(answer)
         Character(len=128):: answer
         type(CharacterDim0Len128List), intent(inout):: self
         integer:: pos
         type(CharacterDim0Len128ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atCharacterDim0Len128
      function popCharacterDim0Len128(self) result(answer)
         Character(len=128):: answer
         type(CharacterDim0Len128List), intent(inout):: self
         type(CharacterDim0Len128ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popCharacterDim0Len128
      recursive subroutine clearCharacterDim0Len128(self)
         type(CharacterDim0Len128List), intent(inout):: self
         Character(len=128):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearCharacterDim0Len128
      subroutine insert_atCharacterDim0Len128(self, val, pos)
         type(CharacterDim0Len128List), intent(inout):: self
         Character(len=128), intent(in):: val
         integer, intent(in):: pos
         type(CharacterDim0Len128ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atCharacterDim0Len128
      subroutine pushCharacterDim0Len128(self, val)
         type(CharacterDim0Len128List), intent(inout):: self
         Character(len=128), intent(in):: val
         type(CharacterDim0Len128ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushCharacterDim0Len128
      function is_emptyCharacterDim0Len128(self) result(answer)
         logical:: answer
         type(CharacterDim0Len128List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len128
      function is_size_oneCharacterDim0Len128(self) result(answer)
         logical:: answer
         type(CharacterDim0Len128List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneCharacterDim0Len128
      function sizeCharacterDim0Len128(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(CharacterDim0Len128List), intent(in):: self
         type(CharacterDim0Len128ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeCharacterDim0Len128
      function array_from_listCharacterDim0Len128(self) result(answer)
         Character(len=128), allocatable:: answer(:)
         type(CharacterDim0Len128List), intent(in):: self
         answer = self
      end function array_from_listCharacterDim0Len128
      function almost_equalCharacterDim0Len128(self, other) result(answer)
         type(CharacterDim0Len128List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalCharacterDim0Len128
      ! Internal
      ! Create a size 1 list.
      subroutine newCharacterDim0Len128(self, val)
         type(CharacterDim0Len128List), intent(inout):: self
         Character(len=128), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newCharacterDim0Len128
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atCharacterDim0Len128(self, pos) result(answer)
         type(CharacterDim0Len128ListNode), pointer:: answer
         type(CharacterDim0Len128List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 6081, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atCharacterDim0Len128
      ! Cleate a deep copy of a list.
      subroutine copyCharacterDim0Len128(new, original)
         type(CharacterDim0Len128List), intent(inout):: new
         type(CharacterDim0Len128List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyCharacterDim0Len128
      subroutine swapCharacterDim0Len256(self, pos1, pos2)
         type(CharacterDim0Len256List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(CharacterDim0Len256ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(CharacterDim0Len256ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 6111, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapCharacterDim0Len256
      subroutine list_from_array_coercionCharacterDim0Len256(self, array)
         type(CharacterDim0Len256List), intent(inout):: self
         Character(len=256), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionCharacterDim0Len256
      subroutine array_from_list_coercionCharacterDim0Len256(array, list)
         Character(len=256), allocatable, intent(out):: array(:)
         type(CharacterDim0Len256List), intent(in):: list
         integer:: i, nList
         type(CharacterDim0Len256ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionCharacterDim0Len256
      function val_atCharacterDim0Len256(self, pos) result(answer)
         Character(len=256):: answer
         type(CharacterDim0Len256List), intent(in):: self
         integer, intent(in):: pos
         type(CharacterDim0Len256ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atCharacterDim0Len256
      function shiftCharacterDim0Len256(self) result(answer)
         Character(len=256):: answer
         type(CharacterDim0Len256List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftCharacterDim0Len256
      subroutine unshiftCharacterDim0Len256(self, val)
         type(CharacterDim0Len256List), intent(inout):: self
         Character(len=256), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftCharacterDim0Len256
      function delete_atCharacterDim0Len256(self, pos) result(answer)
         Character(len=256):: answer
         type(CharacterDim0Len256List), intent(inout):: self
         integer:: pos
         type(CharacterDim0Len256ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atCharacterDim0Len256
      function popCharacterDim0Len256(self) result(answer)
         Character(len=256):: answer
         type(CharacterDim0Len256List), intent(inout):: self
         type(CharacterDim0Len256ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popCharacterDim0Len256
      recursive subroutine clearCharacterDim0Len256(self)
         type(CharacterDim0Len256List), intent(inout):: self
         Character(len=256):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearCharacterDim0Len256
      subroutine insert_atCharacterDim0Len256(self, val, pos)
         type(CharacterDim0Len256List), intent(inout):: self
         Character(len=256), intent(in):: val
         integer, intent(in):: pos
         type(CharacterDim0Len256ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atCharacterDim0Len256
      subroutine pushCharacterDim0Len256(self, val)
         type(CharacterDim0Len256List), intent(inout):: self
         Character(len=256), intent(in):: val
         type(CharacterDim0Len256ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushCharacterDim0Len256
      function is_emptyCharacterDim0Len256(self) result(answer)
         logical:: answer
         type(CharacterDim0Len256List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len256
      function is_size_oneCharacterDim0Len256(self) result(answer)
         logical:: answer
         type(CharacterDim0Len256List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneCharacterDim0Len256
      function sizeCharacterDim0Len256(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(CharacterDim0Len256List), intent(in):: self
         type(CharacterDim0Len256ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeCharacterDim0Len256
      function array_from_listCharacterDim0Len256(self) result(answer)
         Character(len=256), allocatable:: answer(:)
         type(CharacterDim0Len256List), intent(in):: self
         answer = self
      end function array_from_listCharacterDim0Len256
      function almost_equalCharacterDim0Len256(self, other) result(answer)
         type(CharacterDim0Len256List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalCharacterDim0Len256
      ! Internal
      ! Create a size 1 list.
      subroutine newCharacterDim0Len256(self, val)
         type(CharacterDim0Len256List), intent(inout):: self
         Character(len=256), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newCharacterDim0Len256
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atCharacterDim0Len256(self, pos) result(answer)
         type(CharacterDim0Len256ListNode), pointer:: answer
         type(CharacterDim0Len256List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 6373, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atCharacterDim0Len256
      ! Cleate a deep copy of a list.
      subroutine copyCharacterDim0Len256(new, original)
         type(CharacterDim0Len256List), intent(inout):: new
         type(CharacterDim0Len256List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyCharacterDim0Len256
      subroutine swapCharacterDim0Len512(self, pos1, pos2)
         type(CharacterDim0Len512List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(CharacterDim0Len512ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(CharacterDim0Len512ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 6403, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapCharacterDim0Len512
      subroutine list_from_array_coercionCharacterDim0Len512(self, array)
         type(CharacterDim0Len512List), intent(inout):: self
         Character(len=512), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionCharacterDim0Len512
      subroutine array_from_list_coercionCharacterDim0Len512(array, list)
         Character(len=512), allocatable, intent(out):: array(:)
         type(CharacterDim0Len512List), intent(in):: list
         integer:: i, nList
         type(CharacterDim0Len512ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionCharacterDim0Len512
      function val_atCharacterDim0Len512(self, pos) result(answer)
         Character(len=512):: answer
         type(CharacterDim0Len512List), intent(in):: self
         integer, intent(in):: pos
         type(CharacterDim0Len512ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atCharacterDim0Len512
      function shiftCharacterDim0Len512(self) result(answer)
         Character(len=512):: answer
         type(CharacterDim0Len512List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftCharacterDim0Len512
      subroutine unshiftCharacterDim0Len512(self, val)
         type(CharacterDim0Len512List), intent(inout):: self
         Character(len=512), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftCharacterDim0Len512
      function delete_atCharacterDim0Len512(self, pos) result(answer)
         Character(len=512):: answer
         type(CharacterDim0Len512List), intent(inout):: self
         integer:: pos
         type(CharacterDim0Len512ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atCharacterDim0Len512
      function popCharacterDim0Len512(self) result(answer)
         Character(len=512):: answer
         type(CharacterDim0Len512List), intent(inout):: self
         type(CharacterDim0Len512ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popCharacterDim0Len512
      recursive subroutine clearCharacterDim0Len512(self)
         type(CharacterDim0Len512List), intent(inout):: self
         Character(len=512):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearCharacterDim0Len512
      subroutine insert_atCharacterDim0Len512(self, val, pos)
         type(CharacterDim0Len512List), intent(inout):: self
         Character(len=512), intent(in):: val
         integer, intent(in):: pos
         type(CharacterDim0Len512ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atCharacterDim0Len512
      subroutine pushCharacterDim0Len512(self, val)
         type(CharacterDim0Len512List), intent(inout):: self
         Character(len=512), intent(in):: val
         type(CharacterDim0Len512ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushCharacterDim0Len512
      function is_emptyCharacterDim0Len512(self) result(answer)
         logical:: answer
         type(CharacterDim0Len512List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len512
      function is_size_oneCharacterDim0Len512(self) result(answer)
         logical:: answer
         type(CharacterDim0Len512List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneCharacterDim0Len512
      function sizeCharacterDim0Len512(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(CharacterDim0Len512List), intent(in):: self
         type(CharacterDim0Len512ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeCharacterDim0Len512
      function array_from_listCharacterDim0Len512(self) result(answer)
         Character(len=512), allocatable:: answer(:)
         type(CharacterDim0Len512List), intent(in):: self
         answer = self
      end function array_from_listCharacterDim0Len512
      function almost_equalCharacterDim0Len512(self, other) result(answer)
         type(CharacterDim0Len512List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalCharacterDim0Len512
      ! Internal
      ! Create a size 1 list.
      subroutine newCharacterDim0Len512(self, val)
         type(CharacterDim0Len512List), intent(inout):: self
         Character(len=512), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newCharacterDim0Len512
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atCharacterDim0Len512(self, pos) result(answer)
         type(CharacterDim0Len512ListNode), pointer:: answer
         type(CharacterDim0Len512List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 6665, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atCharacterDim0Len512
      ! Cleate a deep copy of a list.
      subroutine copyCharacterDim0Len512(new, original)
         type(CharacterDim0Len512List), intent(inout):: new
         type(CharacterDim0Len512List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyCharacterDim0Len512
      subroutine swapCharacterDim0Len1024(self, pos1, pos2)
         type(CharacterDim0Len1024List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(CharacterDim0Len1024ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(CharacterDim0Len1024ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 6695, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapCharacterDim0Len1024
      subroutine list_from_array_coercionCharacterDim0Len1024(self, array)
         type(CharacterDim0Len1024List), intent(inout):: self
         Character(len=1024), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionCharacterDim0Len1024
      subroutine array_from_list_coercionCharacterDim0Len1024(array, list)
         Character(len=1024), allocatable, intent(out):: array(:)
         type(CharacterDim0Len1024List), intent(in):: list
         integer:: i, nList
         type(CharacterDim0Len1024ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionCharacterDim0Len1024
      function val_atCharacterDim0Len1024(self, pos) result(answer)
         Character(len=1024):: answer
         type(CharacterDim0Len1024List), intent(in):: self
         integer, intent(in):: pos
         type(CharacterDim0Len1024ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atCharacterDim0Len1024
      function shiftCharacterDim0Len1024(self) result(answer)
         Character(len=1024):: answer
         type(CharacterDim0Len1024List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftCharacterDim0Len1024
      subroutine unshiftCharacterDim0Len1024(self, val)
         type(CharacterDim0Len1024List), intent(inout):: self
         Character(len=1024), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftCharacterDim0Len1024
      function delete_atCharacterDim0Len1024(self, pos) result(answer)
         Character(len=1024):: answer
         type(CharacterDim0Len1024List), intent(inout):: self
         integer:: pos
         type(CharacterDim0Len1024ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atCharacterDim0Len1024
      function popCharacterDim0Len1024(self) result(answer)
         Character(len=1024):: answer
         type(CharacterDim0Len1024List), intent(inout):: self
         type(CharacterDim0Len1024ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popCharacterDim0Len1024
      recursive subroutine clearCharacterDim0Len1024(self)
         type(CharacterDim0Len1024List), intent(inout):: self
         Character(len=1024):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearCharacterDim0Len1024
      subroutine insert_atCharacterDim0Len1024(self, val, pos)
         type(CharacterDim0Len1024List), intent(inout):: self
         Character(len=1024), intent(in):: val
         integer, intent(in):: pos
         type(CharacterDim0Len1024ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atCharacterDim0Len1024
      subroutine pushCharacterDim0Len1024(self, val)
         type(CharacterDim0Len1024List), intent(inout):: self
         Character(len=1024), intent(in):: val
         type(CharacterDim0Len1024ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushCharacterDim0Len1024
      function is_emptyCharacterDim0Len1024(self) result(answer)
         logical:: answer
         type(CharacterDim0Len1024List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len1024
      function is_size_oneCharacterDim0Len1024(self) result(answer)
         logical:: answer
         type(CharacterDim0Len1024List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneCharacterDim0Len1024
      function sizeCharacterDim0Len1024(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(CharacterDim0Len1024List), intent(in):: self
         type(CharacterDim0Len1024ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeCharacterDim0Len1024
      function array_from_listCharacterDim0Len1024(self) result(answer)
         Character(len=1024), allocatable:: answer(:)
         type(CharacterDim0Len1024List), intent(in):: self
         answer = self
      end function array_from_listCharacterDim0Len1024
      function almost_equalCharacterDim0Len1024(self, other) result(answer)
         type(CharacterDim0Len1024List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalCharacterDim0Len1024
      ! Internal
      ! Create a size 1 list.
      subroutine newCharacterDim0Len1024(self, val)
         type(CharacterDim0Len1024List), intent(inout):: self
         Character(len=1024), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newCharacterDim0Len1024
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atCharacterDim0Len1024(self, pos) result(answer)
         type(CharacterDim0Len1024ListNode), pointer:: answer
         type(CharacterDim0Len1024List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 6957, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atCharacterDim0Len1024
      ! Cleate a deep copy of a list.
      subroutine copyCharacterDim0Len1024(new, original)
         type(CharacterDim0Len1024List), intent(inout):: new
         type(CharacterDim0Len1024List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyCharacterDim0Len1024
      subroutine swapCharacterDim0Len2048(self, pos1, pos2)
         type(CharacterDim0Len2048List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(CharacterDim0Len2048ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(CharacterDim0Len2048ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 6987, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapCharacterDim0Len2048
      subroutine list_from_array_coercionCharacterDim0Len2048(self, array)
         type(CharacterDim0Len2048List), intent(inout):: self
         Character(len=2048), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionCharacterDim0Len2048
      subroutine array_from_list_coercionCharacterDim0Len2048(array, list)
         Character(len=2048), allocatable, intent(out):: array(:)
         type(CharacterDim0Len2048List), intent(in):: list
         integer:: i, nList
         type(CharacterDim0Len2048ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionCharacterDim0Len2048
      function val_atCharacterDim0Len2048(self, pos) result(answer)
         Character(len=2048):: answer
         type(CharacterDim0Len2048List), intent(in):: self
         integer, intent(in):: pos
         type(CharacterDim0Len2048ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atCharacterDim0Len2048
      function shiftCharacterDim0Len2048(self) result(answer)
         Character(len=2048):: answer
         type(CharacterDim0Len2048List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftCharacterDim0Len2048
      subroutine unshiftCharacterDim0Len2048(self, val)
         type(CharacterDim0Len2048List), intent(inout):: self
         Character(len=2048), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftCharacterDim0Len2048
      function delete_atCharacterDim0Len2048(self, pos) result(answer)
         Character(len=2048):: answer
         type(CharacterDim0Len2048List), intent(inout):: self
         integer:: pos
         type(CharacterDim0Len2048ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atCharacterDim0Len2048
      function popCharacterDim0Len2048(self) result(answer)
         Character(len=2048):: answer
         type(CharacterDim0Len2048List), intent(inout):: self
         type(CharacterDim0Len2048ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popCharacterDim0Len2048
      recursive subroutine clearCharacterDim0Len2048(self)
         type(CharacterDim0Len2048List), intent(inout):: self
         Character(len=2048):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearCharacterDim0Len2048
      subroutine insert_atCharacterDim0Len2048(self, val, pos)
         type(CharacterDim0Len2048List), intent(inout):: self
         Character(len=2048), intent(in):: val
         integer, intent(in):: pos
         type(CharacterDim0Len2048ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atCharacterDim0Len2048
      subroutine pushCharacterDim0Len2048(self, val)
         type(CharacterDim0Len2048List), intent(inout):: self
         Character(len=2048), intent(in):: val
         type(CharacterDim0Len2048ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushCharacterDim0Len2048
      function is_emptyCharacterDim0Len2048(self) result(answer)
         logical:: answer
         type(CharacterDim0Len2048List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len2048
      function is_size_oneCharacterDim0Len2048(self) result(answer)
         logical:: answer
         type(CharacterDim0Len2048List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneCharacterDim0Len2048
      function sizeCharacterDim0Len2048(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(CharacterDim0Len2048List), intent(in):: self
         type(CharacterDim0Len2048ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeCharacterDim0Len2048
      function array_from_listCharacterDim0Len2048(self) result(answer)
         Character(len=2048), allocatable:: answer(:)
         type(CharacterDim0Len2048List), intent(in):: self
         answer = self
      end function array_from_listCharacterDim0Len2048
      function almost_equalCharacterDim0Len2048(self, other) result(answer)
         type(CharacterDim0Len2048List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalCharacterDim0Len2048
      ! Internal
      ! Create a size 1 list.
      subroutine newCharacterDim0Len2048(self, val)
         type(CharacterDim0Len2048List), intent(inout):: self
         Character(len=2048), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newCharacterDim0Len2048
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atCharacterDim0Len2048(self, pos) result(answer)
         type(CharacterDim0Len2048ListNode), pointer:: answer
         type(CharacterDim0Len2048List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 7249, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atCharacterDim0Len2048
      ! Cleate a deep copy of a list.
      subroutine copyCharacterDim0Len2048(new, original)
         type(CharacterDim0Len2048List), intent(inout):: new
         type(CharacterDim0Len2048List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyCharacterDim0Len2048
      subroutine swapCharacterDim0Len4096(self, pos1, pos2)
         type(CharacterDim0Len4096List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(CharacterDim0Len4096ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(CharacterDim0Len4096ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 7279, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapCharacterDim0Len4096
      subroutine list_from_array_coercionCharacterDim0Len4096(self, array)
         type(CharacterDim0Len4096List), intent(inout):: self
         Character(len=4096), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionCharacterDim0Len4096
      subroutine array_from_list_coercionCharacterDim0Len4096(array, list)
         Character(len=4096), allocatable, intent(out):: array(:)
         type(CharacterDim0Len4096List), intent(in):: list
         integer:: i, nList
         type(CharacterDim0Len4096ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionCharacterDim0Len4096
      function val_atCharacterDim0Len4096(self, pos) result(answer)
         Character(len=4096):: answer
         type(CharacterDim0Len4096List), intent(in):: self
         integer, intent(in):: pos
         type(CharacterDim0Len4096ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atCharacterDim0Len4096
      function shiftCharacterDim0Len4096(self) result(answer)
         Character(len=4096):: answer
         type(CharacterDim0Len4096List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftCharacterDim0Len4096
      subroutine unshiftCharacterDim0Len4096(self, val)
         type(CharacterDim0Len4096List), intent(inout):: self
         Character(len=4096), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftCharacterDim0Len4096
      function delete_atCharacterDim0Len4096(self, pos) result(answer)
         Character(len=4096):: answer
         type(CharacterDim0Len4096List), intent(inout):: self
         integer:: pos
         type(CharacterDim0Len4096ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atCharacterDim0Len4096
      function popCharacterDim0Len4096(self) result(answer)
         Character(len=4096):: answer
         type(CharacterDim0Len4096List), intent(inout):: self
         type(CharacterDim0Len4096ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popCharacterDim0Len4096
      recursive subroutine clearCharacterDim0Len4096(self)
         type(CharacterDim0Len4096List), intent(inout):: self
         Character(len=4096):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearCharacterDim0Len4096
      subroutine insert_atCharacterDim0Len4096(self, val, pos)
         type(CharacterDim0Len4096List), intent(inout):: self
         Character(len=4096), intent(in):: val
         integer, intent(in):: pos
         type(CharacterDim0Len4096ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atCharacterDim0Len4096
      subroutine pushCharacterDim0Len4096(self, val)
         type(CharacterDim0Len4096List), intent(inout):: self
         Character(len=4096), intent(in):: val
         type(CharacterDim0Len4096ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushCharacterDim0Len4096
      function is_emptyCharacterDim0Len4096(self) result(answer)
         logical:: answer
         type(CharacterDim0Len4096List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len4096
      function is_size_oneCharacterDim0Len4096(self) result(answer)
         logical:: answer
         type(CharacterDim0Len4096List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneCharacterDim0Len4096
      function sizeCharacterDim0Len4096(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(CharacterDim0Len4096List), intent(in):: self
         type(CharacterDim0Len4096ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeCharacterDim0Len4096
      function array_from_listCharacterDim0Len4096(self) result(answer)
         Character(len=4096), allocatable:: answer(:)
         type(CharacterDim0Len4096List), intent(in):: self
         answer = self
      end function array_from_listCharacterDim0Len4096
      function almost_equalCharacterDim0Len4096(self, other) result(answer)
         type(CharacterDim0Len4096List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalCharacterDim0Len4096
      ! Internal
      ! Create a size 1 list.
      subroutine newCharacterDim0Len4096(self, val)
         type(CharacterDim0Len4096List), intent(inout):: self
         Character(len=4096), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newCharacterDim0Len4096
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atCharacterDim0Len4096(self, pos) result(answer)
         type(CharacterDim0Len4096ListNode), pointer:: answer
         type(CharacterDim0Len4096List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 7541, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atCharacterDim0Len4096
      ! Cleate a deep copy of a list.
      subroutine copyCharacterDim0Len4096(new, original)
         type(CharacterDim0Len4096List), intent(inout):: new
         type(CharacterDim0Len4096List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyCharacterDim0Len4096
      subroutine swapCharacterDim0Len8192(self, pos1, pos2)
         type(CharacterDim0Len8192List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(CharacterDim0Len8192ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(CharacterDim0Len8192ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 7571, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapCharacterDim0Len8192
      subroutine list_from_array_coercionCharacterDim0Len8192(self, array)
         type(CharacterDim0Len8192List), intent(inout):: self
         Character(len=8192), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionCharacterDim0Len8192
      subroutine array_from_list_coercionCharacterDim0Len8192(array, list)
         Character(len=8192), allocatable, intent(out):: array(:)
         type(CharacterDim0Len8192List), intent(in):: list
         integer:: i, nList
         type(CharacterDim0Len8192ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionCharacterDim0Len8192
      function val_atCharacterDim0Len8192(self, pos) result(answer)
         Character(len=8192):: answer
         type(CharacterDim0Len8192List), intent(in):: self
         integer, intent(in):: pos
         type(CharacterDim0Len8192ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atCharacterDim0Len8192
      function shiftCharacterDim0Len8192(self) result(answer)
         Character(len=8192):: answer
         type(CharacterDim0Len8192List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftCharacterDim0Len8192
      subroutine unshiftCharacterDim0Len8192(self, val)
         type(CharacterDim0Len8192List), intent(inout):: self
         Character(len=8192), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftCharacterDim0Len8192
      function delete_atCharacterDim0Len8192(self, pos) result(answer)
         Character(len=8192):: answer
         type(CharacterDim0Len8192List), intent(inout):: self
         integer:: pos
         type(CharacterDim0Len8192ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atCharacterDim0Len8192
      function popCharacterDim0Len8192(self) result(answer)
         Character(len=8192):: answer
         type(CharacterDim0Len8192List), intent(inout):: self
         type(CharacterDim0Len8192ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popCharacterDim0Len8192
      recursive subroutine clearCharacterDim0Len8192(self)
         type(CharacterDim0Len8192List), intent(inout):: self
         Character(len=8192):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearCharacterDim0Len8192
      subroutine insert_atCharacterDim0Len8192(self, val, pos)
         type(CharacterDim0Len8192List), intent(inout):: self
         Character(len=8192), intent(in):: val
         integer, intent(in):: pos
         type(CharacterDim0Len8192ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atCharacterDim0Len8192
      subroutine pushCharacterDim0Len8192(self, val)
         type(CharacterDim0Len8192List), intent(inout):: self
         Character(len=8192), intent(in):: val
         type(CharacterDim0Len8192ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushCharacterDim0Len8192
      function is_emptyCharacterDim0Len8192(self) result(answer)
         logical:: answer
         type(CharacterDim0Len8192List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyCharacterDim0Len8192
      function is_size_oneCharacterDim0Len8192(self) result(answer)
         logical:: answer
         type(CharacterDim0Len8192List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneCharacterDim0Len8192
      function sizeCharacterDim0Len8192(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(CharacterDim0Len8192List), intent(in):: self
         type(CharacterDim0Len8192ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeCharacterDim0Len8192
      function array_from_listCharacterDim0Len8192(self) result(answer)
         Character(len=8192), allocatable:: answer(:)
         type(CharacterDim0Len8192List), intent(in):: self
         answer = self
      end function array_from_listCharacterDim0Len8192
      function almost_equalCharacterDim0Len8192(self, other) result(answer)
         type(CharacterDim0Len8192List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalCharacterDim0Len8192
      ! Internal
      ! Create a size 1 list.
      subroutine newCharacterDim0Len8192(self, val)
         type(CharacterDim0Len8192List), intent(inout):: self
         Character(len=8192), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newCharacterDim0Len8192
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atCharacterDim0Len8192(self, pos) result(answer)
         type(CharacterDim0Len8192ListNode), pointer:: answer
         type(CharacterDim0Len8192List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 7833, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atCharacterDim0Len8192
      ! Cleate a deep copy of a list.
      subroutine copyCharacterDim0Len8192(new, original)
         type(CharacterDim0Len8192List), intent(inout):: new
         type(CharacterDim0Len8192List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyCharacterDim0Len8192
      subroutine swapIntegerDim0Kindint8(self, pos1, pos2)
         type(IntegerDim0Kindint8List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(IntegerDim0Kindint8ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(IntegerDim0Kindint8ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 7863, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapIntegerDim0Kindint8
      subroutine list_from_array_coercionIntegerDim0Kindint8(self, array)
         type(IntegerDim0Kindint8List), intent(inout):: self
         Integer(kind=int8), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionIntegerDim0Kindint8
      subroutine array_from_list_coercionIntegerDim0Kindint8(array, list)
         Integer(kind=int8), allocatable, intent(out):: array(:)
         type(IntegerDim0Kindint8List), intent(in):: list
         integer:: i, nList
         type(IntegerDim0Kindint8ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionIntegerDim0Kindint8
      function val_atIntegerDim0Kindint8(self, pos) result(answer)
         Integer(kind=int8):: answer
         type(IntegerDim0Kindint8List), intent(in):: self
         integer, intent(in):: pos
         type(IntegerDim0Kindint8ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atIntegerDim0Kindint8
      function shiftIntegerDim0Kindint8(self) result(answer)
         Integer(kind=int8):: answer
         type(IntegerDim0Kindint8List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftIntegerDim0Kindint8
      subroutine unshiftIntegerDim0Kindint8(self, val)
         type(IntegerDim0Kindint8List), intent(inout):: self
         Integer(kind=int8), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftIntegerDim0Kindint8
      function delete_atIntegerDim0Kindint8(self, pos) result(answer)
         Integer(kind=int8):: answer
         type(IntegerDim0Kindint8List), intent(inout):: self
         integer:: pos
         type(IntegerDim0Kindint8ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atIntegerDim0Kindint8
      function popIntegerDim0Kindint8(self) result(answer)
         Integer(kind=int8):: answer
         type(IntegerDim0Kindint8List), intent(inout):: self
         type(IntegerDim0Kindint8ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popIntegerDim0Kindint8
      recursive subroutine clearIntegerDim0Kindint8(self)
         type(IntegerDim0Kindint8List), intent(inout):: self
         Integer(kind=int8):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearIntegerDim0Kindint8
      subroutine insert_atIntegerDim0Kindint8(self, val, pos)
         type(IntegerDim0Kindint8List), intent(inout):: self
         Integer(kind=int8), intent(in):: val
         integer, intent(in):: pos
         type(IntegerDim0Kindint8ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atIntegerDim0Kindint8
      subroutine pushIntegerDim0Kindint8(self, val)
         type(IntegerDim0Kindint8List), intent(inout):: self
         Integer(kind=int8), intent(in):: val
         type(IntegerDim0Kindint8ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushIntegerDim0Kindint8
      function is_emptyIntegerDim0Kindint8(self) result(answer)
         logical:: answer
         type(IntegerDim0Kindint8List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim0Kindint8
      function is_size_oneIntegerDim0Kindint8(self) result(answer)
         logical:: answer
         type(IntegerDim0Kindint8List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneIntegerDim0Kindint8
      function sizeIntegerDim0Kindint8(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(IntegerDim0Kindint8List), intent(in):: self
         type(IntegerDim0Kindint8ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeIntegerDim0Kindint8
      function array_from_listIntegerDim0Kindint8(self) result(answer)
         Integer(kind=int8), allocatable:: answer(:)
         type(IntegerDim0Kindint8List), intent(in):: self
         answer = self
      end function array_from_listIntegerDim0Kindint8
      function almost_equalIntegerDim0Kindint8(self, other) result(answer)
         type(IntegerDim0Kindint8List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalIntegerDim0Kindint8
      ! Internal
      ! Create a size 1 list.
      subroutine newIntegerDim0Kindint8(self, val)
         type(IntegerDim0Kindint8List), intent(inout):: self
         Integer(kind=int8), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newIntegerDim0Kindint8
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atIntegerDim0Kindint8(self, pos) result(answer)
         type(IntegerDim0Kindint8ListNode), pointer:: answer
         type(IntegerDim0Kindint8List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 8125, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atIntegerDim0Kindint8
      ! Cleate a deep copy of a list.
      subroutine copyIntegerDim0Kindint8(new, original)
         type(IntegerDim0Kindint8List), intent(inout):: new
         type(IntegerDim0Kindint8List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyIntegerDim0Kindint8
      subroutine swapIntegerDim0Kindint16(self, pos1, pos2)
         type(IntegerDim0Kindint16List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(IntegerDim0Kindint16ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(IntegerDim0Kindint16ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 8155, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapIntegerDim0Kindint16
      subroutine list_from_array_coercionIntegerDim0Kindint16(self, array)
         type(IntegerDim0Kindint16List), intent(inout):: self
         Integer(kind=int16), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionIntegerDim0Kindint16
      subroutine array_from_list_coercionIntegerDim0Kindint16(array, list)
         Integer(kind=int16), allocatable, intent(out):: array(:)
         type(IntegerDim0Kindint16List), intent(in):: list
         integer:: i, nList
         type(IntegerDim0Kindint16ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionIntegerDim0Kindint16
      function val_atIntegerDim0Kindint16(self, pos) result(answer)
         Integer(kind=int16):: answer
         type(IntegerDim0Kindint16List), intent(in):: self
         integer, intent(in):: pos
         type(IntegerDim0Kindint16ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atIntegerDim0Kindint16
      function shiftIntegerDim0Kindint16(self) result(answer)
         Integer(kind=int16):: answer
         type(IntegerDim0Kindint16List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftIntegerDim0Kindint16
      subroutine unshiftIntegerDim0Kindint16(self, val)
         type(IntegerDim0Kindint16List), intent(inout):: self
         Integer(kind=int16), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftIntegerDim0Kindint16
      function delete_atIntegerDim0Kindint16(self, pos) result(answer)
         Integer(kind=int16):: answer
         type(IntegerDim0Kindint16List), intent(inout):: self
         integer:: pos
         type(IntegerDim0Kindint16ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atIntegerDim0Kindint16
      function popIntegerDim0Kindint16(self) result(answer)
         Integer(kind=int16):: answer
         type(IntegerDim0Kindint16List), intent(inout):: self
         type(IntegerDim0Kindint16ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popIntegerDim0Kindint16
      recursive subroutine clearIntegerDim0Kindint16(self)
         type(IntegerDim0Kindint16List), intent(inout):: self
         Integer(kind=int16):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearIntegerDim0Kindint16
      subroutine insert_atIntegerDim0Kindint16(self, val, pos)
         type(IntegerDim0Kindint16List), intent(inout):: self
         Integer(kind=int16), intent(in):: val
         integer, intent(in):: pos
         type(IntegerDim0Kindint16ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atIntegerDim0Kindint16
      subroutine pushIntegerDim0Kindint16(self, val)
         type(IntegerDim0Kindint16List), intent(inout):: self
         Integer(kind=int16), intent(in):: val
         type(IntegerDim0Kindint16ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushIntegerDim0Kindint16
      function is_emptyIntegerDim0Kindint16(self) result(answer)
         logical:: answer
         type(IntegerDim0Kindint16List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim0Kindint16
      function is_size_oneIntegerDim0Kindint16(self) result(answer)
         logical:: answer
         type(IntegerDim0Kindint16List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneIntegerDim0Kindint16
      function sizeIntegerDim0Kindint16(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(IntegerDim0Kindint16List), intent(in):: self
         type(IntegerDim0Kindint16ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeIntegerDim0Kindint16
      function array_from_listIntegerDim0Kindint16(self) result(answer)
         Integer(kind=int16), allocatable:: answer(:)
         type(IntegerDim0Kindint16List), intent(in):: self
         answer = self
      end function array_from_listIntegerDim0Kindint16
      function almost_equalIntegerDim0Kindint16(self, other) result(answer)
         type(IntegerDim0Kindint16List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalIntegerDim0Kindint16
      ! Internal
      ! Create a size 1 list.
      subroutine newIntegerDim0Kindint16(self, val)
         type(IntegerDim0Kindint16List), intent(inout):: self
         Integer(kind=int16), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newIntegerDim0Kindint16
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atIntegerDim0Kindint16(self, pos) result(answer)
         type(IntegerDim0Kindint16ListNode), pointer:: answer
         type(IntegerDim0Kindint16List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 8417, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atIntegerDim0Kindint16
      ! Cleate a deep copy of a list.
      subroutine copyIntegerDim0Kindint16(new, original)
         type(IntegerDim0Kindint16List), intent(inout):: new
         type(IntegerDim0Kindint16List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyIntegerDim0Kindint16
      subroutine swapIntegerDim0Kindint32(self, pos1, pos2)
         type(IntegerDim0Kindint32List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(IntegerDim0Kindint32ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(IntegerDim0Kindint32ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 8447, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapIntegerDim0Kindint32
      subroutine list_from_array_coercionIntegerDim0Kindint32(self, array)
         type(IntegerDim0Kindint32List), intent(inout):: self
         Integer(kind=int32), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionIntegerDim0Kindint32
      subroutine array_from_list_coercionIntegerDim0Kindint32(array, list)
         Integer(kind=int32), allocatable, intent(out):: array(:)
         type(IntegerDim0Kindint32List), intent(in):: list
         integer:: i, nList
         type(IntegerDim0Kindint32ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionIntegerDim0Kindint32
      function val_atIntegerDim0Kindint32(self, pos) result(answer)
         Integer(kind=int32):: answer
         type(IntegerDim0Kindint32List), intent(in):: self
         integer, intent(in):: pos
         type(IntegerDim0Kindint32ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atIntegerDim0Kindint32
      function shiftIntegerDim0Kindint32(self) result(answer)
         Integer(kind=int32):: answer
         type(IntegerDim0Kindint32List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftIntegerDim0Kindint32
      subroutine unshiftIntegerDim0Kindint32(self, val)
         type(IntegerDim0Kindint32List), intent(inout):: self
         Integer(kind=int32), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftIntegerDim0Kindint32
      function delete_atIntegerDim0Kindint32(self, pos) result(answer)
         Integer(kind=int32):: answer
         type(IntegerDim0Kindint32List), intent(inout):: self
         integer:: pos
         type(IntegerDim0Kindint32ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atIntegerDim0Kindint32
      function popIntegerDim0Kindint32(self) result(answer)
         Integer(kind=int32):: answer
         type(IntegerDim0Kindint32List), intent(inout):: self
         type(IntegerDim0Kindint32ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popIntegerDim0Kindint32
      recursive subroutine clearIntegerDim0Kindint32(self)
         type(IntegerDim0Kindint32List), intent(inout):: self
         Integer(kind=int32):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearIntegerDim0Kindint32
      subroutine insert_atIntegerDim0Kindint32(self, val, pos)
         type(IntegerDim0Kindint32List), intent(inout):: self
         Integer(kind=int32), intent(in):: val
         integer, intent(in):: pos
         type(IntegerDim0Kindint32ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atIntegerDim0Kindint32
      subroutine pushIntegerDim0Kindint32(self, val)
         type(IntegerDim0Kindint32List), intent(inout):: self
         Integer(kind=int32), intent(in):: val
         type(IntegerDim0Kindint32ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushIntegerDim0Kindint32
      function is_emptyIntegerDim0Kindint32(self) result(answer)
         logical:: answer
         type(IntegerDim0Kindint32List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim0Kindint32
      function is_size_oneIntegerDim0Kindint32(self) result(answer)
         logical:: answer
         type(IntegerDim0Kindint32List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneIntegerDim0Kindint32
      function sizeIntegerDim0Kindint32(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(IntegerDim0Kindint32List), intent(in):: self
         type(IntegerDim0Kindint32ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeIntegerDim0Kindint32
      function array_from_listIntegerDim0Kindint32(self) result(answer)
         Integer(kind=int32), allocatable:: answer(:)
         type(IntegerDim0Kindint32List), intent(in):: self
         answer = self
      end function array_from_listIntegerDim0Kindint32
      function almost_equalIntegerDim0Kindint32(self, other) result(answer)
         type(IntegerDim0Kindint32List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalIntegerDim0Kindint32
      ! Internal
      ! Create a size 1 list.
      subroutine newIntegerDim0Kindint32(self, val)
         type(IntegerDim0Kindint32List), intent(inout):: self
         Integer(kind=int32), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newIntegerDim0Kindint32
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atIntegerDim0Kindint32(self, pos) result(answer)
         type(IntegerDim0Kindint32ListNode), pointer:: answer
         type(IntegerDim0Kindint32List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 8709, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atIntegerDim0Kindint32
      ! Cleate a deep copy of a list.
      subroutine copyIntegerDim0Kindint32(new, original)
         type(IntegerDim0Kindint32List), intent(inout):: new
         type(IntegerDim0Kindint32List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyIntegerDim0Kindint32
      subroutine swapIntegerDim0Kindint64(self, pos1, pos2)
         type(IntegerDim0Kindint64List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(IntegerDim0Kindint64ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(IntegerDim0Kindint64ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 8739, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapIntegerDim0Kindint64
      subroutine list_from_array_coercionIntegerDim0Kindint64(self, array)
         type(IntegerDim0Kindint64List), intent(inout):: self
         Integer(kind=int64), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionIntegerDim0Kindint64
      subroutine array_from_list_coercionIntegerDim0Kindint64(array, list)
         Integer(kind=int64), allocatable, intent(out):: array(:)
         type(IntegerDim0Kindint64List), intent(in):: list
         integer:: i, nList
         type(IntegerDim0Kindint64ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionIntegerDim0Kindint64
      function val_atIntegerDim0Kindint64(self, pos) result(answer)
         Integer(kind=int64):: answer
         type(IntegerDim0Kindint64List), intent(in):: self
         integer, intent(in):: pos
         type(IntegerDim0Kindint64ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atIntegerDim0Kindint64
      function shiftIntegerDim0Kindint64(self) result(answer)
         Integer(kind=int64):: answer
         type(IntegerDim0Kindint64List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftIntegerDim0Kindint64
      subroutine unshiftIntegerDim0Kindint64(self, val)
         type(IntegerDim0Kindint64List), intent(inout):: self
         Integer(kind=int64), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftIntegerDim0Kindint64
      function delete_atIntegerDim0Kindint64(self, pos) result(answer)
         Integer(kind=int64):: answer
         type(IntegerDim0Kindint64List), intent(inout):: self
         integer:: pos
         type(IntegerDim0Kindint64ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atIntegerDim0Kindint64
      function popIntegerDim0Kindint64(self) result(answer)
         Integer(kind=int64):: answer
         type(IntegerDim0Kindint64List), intent(inout):: self
         type(IntegerDim0Kindint64ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popIntegerDim0Kindint64
      recursive subroutine clearIntegerDim0Kindint64(self)
         type(IntegerDim0Kindint64List), intent(inout):: self
         Integer(kind=int64):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearIntegerDim0Kindint64
      subroutine insert_atIntegerDim0Kindint64(self, val, pos)
         type(IntegerDim0Kindint64List), intent(inout):: self
         Integer(kind=int64), intent(in):: val
         integer, intent(in):: pos
         type(IntegerDim0Kindint64ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atIntegerDim0Kindint64
      subroutine pushIntegerDim0Kindint64(self, val)
         type(IntegerDim0Kindint64List), intent(inout):: self
         Integer(kind=int64), intent(in):: val
         type(IntegerDim0Kindint64ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushIntegerDim0Kindint64
      function is_emptyIntegerDim0Kindint64(self) result(answer)
         logical:: answer
         type(IntegerDim0Kindint64List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim0Kindint64
      function is_size_oneIntegerDim0Kindint64(self) result(answer)
         logical:: answer
         type(IntegerDim0Kindint64List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneIntegerDim0Kindint64
      function sizeIntegerDim0Kindint64(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(IntegerDim0Kindint64List), intent(in):: self
         type(IntegerDim0Kindint64ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeIntegerDim0Kindint64
      function array_from_listIntegerDim0Kindint64(self) result(answer)
         Integer(kind=int64), allocatable:: answer(:)
         type(IntegerDim0Kindint64List), intent(in):: self
         answer = self
      end function array_from_listIntegerDim0Kindint64
      function almost_equalIntegerDim0Kindint64(self, other) result(answer)
         type(IntegerDim0Kindint64List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalIntegerDim0Kindint64
      ! Internal
      ! Create a size 1 list.
      subroutine newIntegerDim0Kindint64(self, val)
         type(IntegerDim0Kindint64List), intent(inout):: self
         Integer(kind=int64), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newIntegerDim0Kindint64
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atIntegerDim0Kindint64(self, pos) result(answer)
         type(IntegerDim0Kindint64ListNode), pointer:: answer
         type(IntegerDim0Kindint64List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 9001, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atIntegerDim0Kindint64
      ! Cleate a deep copy of a list.
      subroutine copyIntegerDim0Kindint64(new, original)
         type(IntegerDim0Kindint64List), intent(inout):: new
         type(IntegerDim0Kindint64List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyIntegerDim0Kindint64
      subroutine swapRealDim0Kindreal32(self, pos1, pos2)
         type(RealDim0Kindreal32List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(RealDim0Kindreal32ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(RealDim0Kindreal32ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 9031, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapRealDim0Kindreal32
      subroutine list_from_array_coercionRealDim0Kindreal32(self, array)
         type(RealDim0Kindreal32List), intent(inout):: self
         Real(kind=real32), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionRealDim0Kindreal32
      subroutine array_from_list_coercionRealDim0Kindreal32(array, list)
         Real(kind=real32), allocatable, intent(out):: array(:)
         type(RealDim0Kindreal32List), intent(in):: list
         integer:: i, nList
         type(RealDim0Kindreal32ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionRealDim0Kindreal32
      function val_atRealDim0Kindreal32(self, pos) result(answer)
         Real(kind=real32):: answer
         type(RealDim0Kindreal32List), intent(in):: self
         integer, intent(in):: pos
         type(RealDim0Kindreal32ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atRealDim0Kindreal32
      function shiftRealDim0Kindreal32(self) result(answer)
         Real(kind=real32):: answer
         type(RealDim0Kindreal32List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftRealDim0Kindreal32
      subroutine unshiftRealDim0Kindreal32(self, val)
         type(RealDim0Kindreal32List), intent(inout):: self
         Real(kind=real32), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftRealDim0Kindreal32
      function delete_atRealDim0Kindreal32(self, pos) result(answer)
         Real(kind=real32):: answer
         type(RealDim0Kindreal32List), intent(inout):: self
         integer:: pos
         type(RealDim0Kindreal32ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atRealDim0Kindreal32
      function popRealDim0Kindreal32(self) result(answer)
         Real(kind=real32):: answer
         type(RealDim0Kindreal32List), intent(inout):: self
         type(RealDim0Kindreal32ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popRealDim0Kindreal32
      recursive subroutine clearRealDim0Kindreal32(self)
         type(RealDim0Kindreal32List), intent(inout):: self
         Real(kind=real32):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearRealDim0Kindreal32
      subroutine insert_atRealDim0Kindreal32(self, val, pos)
         type(RealDim0Kindreal32List), intent(inout):: self
         Real(kind=real32), intent(in):: val
         integer, intent(in):: pos
         type(RealDim0Kindreal32ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atRealDim0Kindreal32
      subroutine pushRealDim0Kindreal32(self, val)
         type(RealDim0Kindreal32List), intent(inout):: self
         Real(kind=real32), intent(in):: val
         type(RealDim0Kindreal32ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushRealDim0Kindreal32
      function is_emptyRealDim0Kindreal32(self) result(answer)
         logical:: answer
         type(RealDim0Kindreal32List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyRealDim0Kindreal32
      function is_size_oneRealDim0Kindreal32(self) result(answer)
         logical:: answer
         type(RealDim0Kindreal32List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneRealDim0Kindreal32
      function sizeRealDim0Kindreal32(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(RealDim0Kindreal32List), intent(in):: self
         type(RealDim0Kindreal32ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeRealDim0Kindreal32
      function array_from_listRealDim0Kindreal32(self) result(answer)
         Real(kind=real32), allocatable:: answer(:)
         type(RealDim0Kindreal32List), intent(in):: self
         answer = self
      end function array_from_listRealDim0Kindreal32
      function almost_equalRealDim0Kindreal32(self, other) result(answer)
         type(RealDim0Kindreal32List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalRealDim0Kindreal32
      ! Internal
      ! Create a size 1 list.
      subroutine newRealDim0Kindreal32(self, val)
         type(RealDim0Kindreal32List), intent(inout):: self
         Real(kind=real32), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newRealDim0Kindreal32
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atRealDim0Kindreal32(self, pos) result(answer)
         type(RealDim0Kindreal32ListNode), pointer:: answer
         type(RealDim0Kindreal32List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 9293, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atRealDim0Kindreal32
      ! Cleate a deep copy of a list.
      subroutine copyRealDim0Kindreal32(new, original)
         type(RealDim0Kindreal32List), intent(inout):: new
         type(RealDim0Kindreal32List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyRealDim0Kindreal32
      subroutine swapRealDim0Kindreal64(self, pos1, pos2)
         type(RealDim0Kindreal64List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(RealDim0Kindreal64ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(RealDim0Kindreal64ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 9323, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapRealDim0Kindreal64
      subroutine list_from_array_coercionRealDim0Kindreal64(self, array)
         type(RealDim0Kindreal64List), intent(inout):: self
         Real(kind=real64), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionRealDim0Kindreal64
      subroutine array_from_list_coercionRealDim0Kindreal64(array, list)
         Real(kind=real64), allocatable, intent(out):: array(:)
         type(RealDim0Kindreal64List), intent(in):: list
         integer:: i, nList
         type(RealDim0Kindreal64ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionRealDim0Kindreal64
      function val_atRealDim0Kindreal64(self, pos) result(answer)
         Real(kind=real64):: answer
         type(RealDim0Kindreal64List), intent(in):: self
         integer, intent(in):: pos
         type(RealDim0Kindreal64ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atRealDim0Kindreal64
      function shiftRealDim0Kindreal64(self) result(answer)
         Real(kind=real64):: answer
         type(RealDim0Kindreal64List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftRealDim0Kindreal64
      subroutine unshiftRealDim0Kindreal64(self, val)
         type(RealDim0Kindreal64List), intent(inout):: self
         Real(kind=real64), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftRealDim0Kindreal64
      function delete_atRealDim0Kindreal64(self, pos) result(answer)
         Real(kind=real64):: answer
         type(RealDim0Kindreal64List), intent(inout):: self
         integer:: pos
         type(RealDim0Kindreal64ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atRealDim0Kindreal64
      function popRealDim0Kindreal64(self) result(answer)
         Real(kind=real64):: answer
         type(RealDim0Kindreal64List), intent(inout):: self
         type(RealDim0Kindreal64ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popRealDim0Kindreal64
      recursive subroutine clearRealDim0Kindreal64(self)
         type(RealDim0Kindreal64List), intent(inout):: self
         Real(kind=real64):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearRealDim0Kindreal64
      subroutine insert_atRealDim0Kindreal64(self, val, pos)
         type(RealDim0Kindreal64List), intent(inout):: self
         Real(kind=real64), intent(in):: val
         integer, intent(in):: pos
         type(RealDim0Kindreal64ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atRealDim0Kindreal64
      subroutine pushRealDim0Kindreal64(self, val)
         type(RealDim0Kindreal64List), intent(inout):: self
         Real(kind=real64), intent(in):: val
         type(RealDim0Kindreal64ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushRealDim0Kindreal64
      function is_emptyRealDim0Kindreal64(self) result(answer)
         logical:: answer
         type(RealDim0Kindreal64List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyRealDim0Kindreal64
      function is_size_oneRealDim0Kindreal64(self) result(answer)
         logical:: answer
         type(RealDim0Kindreal64List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneRealDim0Kindreal64
      function sizeRealDim0Kindreal64(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(RealDim0Kindreal64List), intent(in):: self
         type(RealDim0Kindreal64ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeRealDim0Kindreal64
      function array_from_listRealDim0Kindreal64(self) result(answer)
         Real(kind=real64), allocatable:: answer(:)
         type(RealDim0Kindreal64List), intent(in):: self
         answer = self
      end function array_from_listRealDim0Kindreal64
      function almost_equalRealDim0Kindreal64(self, other) result(answer)
         type(RealDim0Kindreal64List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalRealDim0Kindreal64
      ! Internal
      ! Create a size 1 list.
      subroutine newRealDim0Kindreal64(self, val)
         type(RealDim0Kindreal64List), intent(inout):: self
         Real(kind=real64), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newRealDim0Kindreal64
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atRealDim0Kindreal64(self, pos) result(answer)
         type(RealDim0Kindreal64ListNode), pointer:: answer
         type(RealDim0Kindreal64List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 9585, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atRealDim0Kindreal64
      ! Cleate a deep copy of a list.
      subroutine copyRealDim0Kindreal64(new, original)
         type(RealDim0Kindreal64List), intent(inout):: new
         type(RealDim0Kindreal64List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyRealDim0Kindreal64
      subroutine swapRealDim0Kindreal128(self, pos1, pos2)
         type(RealDim0Kindreal128List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(RealDim0Kindreal128ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(RealDim0Kindreal128ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 9615, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapRealDim0Kindreal128
      subroutine list_from_array_coercionRealDim0Kindreal128(self, array)
         type(RealDim0Kindreal128List), intent(inout):: self
         Real(kind=real128), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionRealDim0Kindreal128
      subroutine array_from_list_coercionRealDim0Kindreal128(array, list)
         Real(kind=real128), allocatable, intent(out):: array(:)
         type(RealDim0Kindreal128List), intent(in):: list
         integer:: i, nList
         type(RealDim0Kindreal128ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionRealDim0Kindreal128
      function val_atRealDim0Kindreal128(self, pos) result(answer)
         Real(kind=real128):: answer
         type(RealDim0Kindreal128List), intent(in):: self
         integer, intent(in):: pos
         type(RealDim0Kindreal128ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atRealDim0Kindreal128
      function shiftRealDim0Kindreal128(self) result(answer)
         Real(kind=real128):: answer
         type(RealDim0Kindreal128List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftRealDim0Kindreal128
      subroutine unshiftRealDim0Kindreal128(self, val)
         type(RealDim0Kindreal128List), intent(inout):: self
         Real(kind=real128), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftRealDim0Kindreal128
      function delete_atRealDim0Kindreal128(self, pos) result(answer)
         Real(kind=real128):: answer
         type(RealDim0Kindreal128List), intent(inout):: self
         integer:: pos
         type(RealDim0Kindreal128ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atRealDim0Kindreal128
      function popRealDim0Kindreal128(self) result(answer)
         Real(kind=real128):: answer
         type(RealDim0Kindreal128List), intent(inout):: self
         type(RealDim0Kindreal128ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popRealDim0Kindreal128
      recursive subroutine clearRealDim0Kindreal128(self)
         type(RealDim0Kindreal128List), intent(inout):: self
         Real(kind=real128):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearRealDim0Kindreal128
      subroutine insert_atRealDim0Kindreal128(self, val, pos)
         type(RealDim0Kindreal128List), intent(inout):: self
         Real(kind=real128), intent(in):: val
         integer, intent(in):: pos
         type(RealDim0Kindreal128ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atRealDim0Kindreal128
      subroutine pushRealDim0Kindreal128(self, val)
         type(RealDim0Kindreal128List), intent(inout):: self
         Real(kind=real128), intent(in):: val
         type(RealDim0Kindreal128ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushRealDim0Kindreal128
      function is_emptyRealDim0Kindreal128(self) result(answer)
         logical:: answer
         type(RealDim0Kindreal128List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyRealDim0Kindreal128
      function is_size_oneRealDim0Kindreal128(self) result(answer)
         logical:: answer
         type(RealDim0Kindreal128List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneRealDim0Kindreal128
      function sizeRealDim0Kindreal128(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(RealDim0Kindreal128List), intent(in):: self
         type(RealDim0Kindreal128ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeRealDim0Kindreal128
      function array_from_listRealDim0Kindreal128(self) result(answer)
         Real(kind=real128), allocatable:: answer(:)
         type(RealDim0Kindreal128List), intent(in):: self
         answer = self
      end function array_from_listRealDim0Kindreal128
      function almost_equalRealDim0Kindreal128(self, other) result(answer)
         type(RealDim0Kindreal128List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalRealDim0Kindreal128
      ! Internal
      ! Create a size 1 list.
      subroutine newRealDim0Kindreal128(self, val)
         type(RealDim0Kindreal128List), intent(inout):: self
         Real(kind=real128), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newRealDim0Kindreal128
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atRealDim0Kindreal128(self, pos) result(answer)
         type(RealDim0Kindreal128ListNode), pointer:: answer
         type(RealDim0Kindreal128List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 9877, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atRealDim0Kindreal128
      ! Cleate a deep copy of a list.
      subroutine copyRealDim0Kindreal128(new, original)
         type(RealDim0Kindreal128List), intent(inout):: new
         type(RealDim0Kindreal128List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyRealDim0Kindreal128
      subroutine swapComplexDim0Kindreal32(self, pos1, pos2)
         type(ComplexDim0Kindreal32List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(ComplexDim0Kindreal32ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(ComplexDim0Kindreal32ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 9907, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapComplexDim0Kindreal32
      subroutine list_from_array_coercionComplexDim0Kindreal32(self, array)
         type(ComplexDim0Kindreal32List), intent(inout):: self
         Complex(kind=real32), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionComplexDim0Kindreal32
      subroutine array_from_list_coercionComplexDim0Kindreal32(array, list)
         Complex(kind=real32), allocatable, intent(out):: array(:)
         type(ComplexDim0Kindreal32List), intent(in):: list
         integer:: i, nList
         type(ComplexDim0Kindreal32ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionComplexDim0Kindreal32
      function val_atComplexDim0Kindreal32(self, pos) result(answer)
         Complex(kind=real32):: answer
         type(ComplexDim0Kindreal32List), intent(in):: self
         integer, intent(in):: pos
         type(ComplexDim0Kindreal32ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atComplexDim0Kindreal32
      function shiftComplexDim0Kindreal32(self) result(answer)
         Complex(kind=real32):: answer
         type(ComplexDim0Kindreal32List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftComplexDim0Kindreal32
      subroutine unshiftComplexDim0Kindreal32(self, val)
         type(ComplexDim0Kindreal32List), intent(inout):: self
         Complex(kind=real32), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftComplexDim0Kindreal32
      function delete_atComplexDim0Kindreal32(self, pos) result(answer)
         Complex(kind=real32):: answer
         type(ComplexDim0Kindreal32List), intent(inout):: self
         integer:: pos
         type(ComplexDim0Kindreal32ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atComplexDim0Kindreal32
      function popComplexDim0Kindreal32(self) result(answer)
         Complex(kind=real32):: answer
         type(ComplexDim0Kindreal32List), intent(inout):: self
         type(ComplexDim0Kindreal32ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popComplexDim0Kindreal32
      recursive subroutine clearComplexDim0Kindreal32(self)
         type(ComplexDim0Kindreal32List), intent(inout):: self
         Complex(kind=real32):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearComplexDim0Kindreal32
      subroutine insert_atComplexDim0Kindreal32(self, val, pos)
         type(ComplexDim0Kindreal32List), intent(inout):: self
         Complex(kind=real32), intent(in):: val
         integer, intent(in):: pos
         type(ComplexDim0Kindreal32ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atComplexDim0Kindreal32
      subroutine pushComplexDim0Kindreal32(self, val)
         type(ComplexDim0Kindreal32List), intent(inout):: self
         Complex(kind=real32), intent(in):: val
         type(ComplexDim0Kindreal32ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushComplexDim0Kindreal32
      function is_emptyComplexDim0Kindreal32(self) result(answer)
         logical:: answer
         type(ComplexDim0Kindreal32List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim0Kindreal32
      function is_size_oneComplexDim0Kindreal32(self) result(answer)
         logical:: answer
         type(ComplexDim0Kindreal32List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneComplexDim0Kindreal32
      function sizeComplexDim0Kindreal32(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(ComplexDim0Kindreal32List), intent(in):: self
         type(ComplexDim0Kindreal32ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeComplexDim0Kindreal32
      function array_from_listComplexDim0Kindreal32(self) result(answer)
         Complex(kind=real32), allocatable:: answer(:)
         type(ComplexDim0Kindreal32List), intent(in):: self
         answer = self
      end function array_from_listComplexDim0Kindreal32
      function almost_equalComplexDim0Kindreal32(self, other) result(answer)
         type(ComplexDim0Kindreal32List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalComplexDim0Kindreal32
      ! Internal
      ! Create a size 1 list.
      subroutine newComplexDim0Kindreal32(self, val)
         type(ComplexDim0Kindreal32List), intent(inout):: self
         Complex(kind=real32), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newComplexDim0Kindreal32
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atComplexDim0Kindreal32(self, pos) result(answer)
         type(ComplexDim0Kindreal32ListNode), pointer:: answer
         type(ComplexDim0Kindreal32List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 10169, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atComplexDim0Kindreal32
      ! Cleate a deep copy of a list.
      subroutine copyComplexDim0Kindreal32(new, original)
         type(ComplexDim0Kindreal32List), intent(inout):: new
         type(ComplexDim0Kindreal32List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyComplexDim0Kindreal32
      subroutine swapComplexDim0Kindreal64(self, pos1, pos2)
         type(ComplexDim0Kindreal64List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(ComplexDim0Kindreal64ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(ComplexDim0Kindreal64ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 10199, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapComplexDim0Kindreal64
      subroutine list_from_array_coercionComplexDim0Kindreal64(self, array)
         type(ComplexDim0Kindreal64List), intent(inout):: self
         Complex(kind=real64), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionComplexDim0Kindreal64
      subroutine array_from_list_coercionComplexDim0Kindreal64(array, list)
         Complex(kind=real64), allocatable, intent(out):: array(:)
         type(ComplexDim0Kindreal64List), intent(in):: list
         integer:: i, nList
         type(ComplexDim0Kindreal64ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionComplexDim0Kindreal64
      function val_atComplexDim0Kindreal64(self, pos) result(answer)
         Complex(kind=real64):: answer
         type(ComplexDim0Kindreal64List), intent(in):: self
         integer, intent(in):: pos
         type(ComplexDim0Kindreal64ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atComplexDim0Kindreal64
      function shiftComplexDim0Kindreal64(self) result(answer)
         Complex(kind=real64):: answer
         type(ComplexDim0Kindreal64List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftComplexDim0Kindreal64
      subroutine unshiftComplexDim0Kindreal64(self, val)
         type(ComplexDim0Kindreal64List), intent(inout):: self
         Complex(kind=real64), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftComplexDim0Kindreal64
      function delete_atComplexDim0Kindreal64(self, pos) result(answer)
         Complex(kind=real64):: answer
         type(ComplexDim0Kindreal64List), intent(inout):: self
         integer:: pos
         type(ComplexDim0Kindreal64ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atComplexDim0Kindreal64
      function popComplexDim0Kindreal64(self) result(answer)
         Complex(kind=real64):: answer
         type(ComplexDim0Kindreal64List), intent(inout):: self
         type(ComplexDim0Kindreal64ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popComplexDim0Kindreal64
      recursive subroutine clearComplexDim0Kindreal64(self)
         type(ComplexDim0Kindreal64List), intent(inout):: self
         Complex(kind=real64):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearComplexDim0Kindreal64
      subroutine insert_atComplexDim0Kindreal64(self, val, pos)
         type(ComplexDim0Kindreal64List), intent(inout):: self
         Complex(kind=real64), intent(in):: val
         integer, intent(in):: pos
         type(ComplexDim0Kindreal64ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atComplexDim0Kindreal64
      subroutine pushComplexDim0Kindreal64(self, val)
         type(ComplexDim0Kindreal64List), intent(inout):: self
         Complex(kind=real64), intent(in):: val
         type(ComplexDim0Kindreal64ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushComplexDim0Kindreal64
      function is_emptyComplexDim0Kindreal64(self) result(answer)
         logical:: answer
         type(ComplexDim0Kindreal64List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim0Kindreal64
      function is_size_oneComplexDim0Kindreal64(self) result(answer)
         logical:: answer
         type(ComplexDim0Kindreal64List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneComplexDim0Kindreal64
      function sizeComplexDim0Kindreal64(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(ComplexDim0Kindreal64List), intent(in):: self
         type(ComplexDim0Kindreal64ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeComplexDim0Kindreal64
      function array_from_listComplexDim0Kindreal64(self) result(answer)
         Complex(kind=real64), allocatable:: answer(:)
         type(ComplexDim0Kindreal64List), intent(in):: self
         answer = self
      end function array_from_listComplexDim0Kindreal64
      function almost_equalComplexDim0Kindreal64(self, other) result(answer)
         type(ComplexDim0Kindreal64List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalComplexDim0Kindreal64
      ! Internal
      ! Create a size 1 list.
      subroutine newComplexDim0Kindreal64(self, val)
         type(ComplexDim0Kindreal64List), intent(inout):: self
         Complex(kind=real64), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newComplexDim0Kindreal64
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atComplexDim0Kindreal64(self, pos) result(answer)
         type(ComplexDim0Kindreal64ListNode), pointer:: answer
         type(ComplexDim0Kindreal64List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 10461, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atComplexDim0Kindreal64
      ! Cleate a deep copy of a list.
      subroutine copyComplexDim0Kindreal64(new, original)
         type(ComplexDim0Kindreal64List), intent(inout):: new
         type(ComplexDim0Kindreal64List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyComplexDim0Kindreal64
      subroutine swapComplexDim0Kindreal128(self, pos1, pos2)
         type(ComplexDim0Kindreal128List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(ComplexDim0Kindreal128ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(ComplexDim0Kindreal128ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 10491, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
         if(posL == posR) return
         posLNode => node_at(self, posL)
         posLNodePrev => posLNode%prev
         posRNode => node_at(self, posR)
         posRNodeNext => posRNode%next
         if(posR - posL == 1)then
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNode%next => posLNode
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNode%prev => posRNode
         else
            posLNodeNext => posLNode%next
            posRNodePrev => posRNode%prev
            if(associated(posLNodePrev)) posLNodePrev%next => posRNode
            posLNode%next => posRNodeNext
            posRNodePrev%next => posLNode
            posRNode%next => posLNodeNext
            if(associated(posRNodeNext)) posRNodeNext%prev => posLNode
            posRNode%prev => posLNodePrev
            posLNodeNext%prev => posRNode
            posLNode%prev => posRNodePrev
         end if
         if(posR == nSelf) self%entry => posLNode
      end subroutine swapComplexDim0Kindreal128
      subroutine list_from_array_coercionComplexDim0Kindreal128(self, array)
         type(ComplexDim0Kindreal128List), intent(inout):: self
         Complex(kind=real128), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionComplexDim0Kindreal128
      subroutine array_from_list_coercionComplexDim0Kindreal128(array, list)
         Complex(kind=real128), allocatable, intent(out):: array(:)
         type(ComplexDim0Kindreal128List), intent(in):: list
         integer:: i, nList
         type(ComplexDim0Kindreal128ListNode), pointer:: walker
         nList = size(list)
         allocate(array(1:nList))
         if(is_empty(list)) return
         i = nList
         walker => list%entry
         array(i) = walker%val
         do while(i > 1)
            walker => walker%prev
            i = i - 1
            array(i) = walker%val
         end do
      end subroutine array_from_list_coercionComplexDim0Kindreal128
      function val_atComplexDim0Kindreal128(self, pos) result(answer)
         Complex(kind=real128):: answer
         type(ComplexDim0Kindreal128List), intent(in):: self
         integer, intent(in):: pos
         type(ComplexDim0Kindreal128ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atComplexDim0Kindreal128
      function shiftComplexDim0Kindreal128(self) result(answer)
         Complex(kind=real128):: answer
         type(ComplexDim0Kindreal128List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftComplexDim0Kindreal128
      subroutine unshiftComplexDim0Kindreal128(self, val)
         type(ComplexDim0Kindreal128List), intent(inout):: self
         Complex(kind=real128), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftComplexDim0Kindreal128
      function delete_atComplexDim0Kindreal128(self, pos) result(answer)
         Complex(kind=real128):: answer
         type(ComplexDim0Kindreal128List), intent(inout):: self
         integer:: pos
         type(ComplexDim0Kindreal128ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atComplexDim0Kindreal128
      function popComplexDim0Kindreal128(self) result(answer)
         Complex(kind=real128):: answer
         type(ComplexDim0Kindreal128List), intent(inout):: self
         type(ComplexDim0Kindreal128ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popComplexDim0Kindreal128
      recursive subroutine clearComplexDim0Kindreal128(self)
         type(ComplexDim0Kindreal128List), intent(inout):: self
         Complex(kind=real128):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearComplexDim0Kindreal128
      subroutine insert_atComplexDim0Kindreal128(self, val, pos)
         type(ComplexDim0Kindreal128List), intent(inout):: self
         Complex(kind=real128), intent(in):: val
         integer, intent(in):: pos
         type(ComplexDim0Kindreal128ListNode), pointer:: nextNode, newNode
         if(pos == size(self) + 1)then
            call push(self, val)
            return
         end if
         nextNode => node_at(self, pos)
         allocate(newNode)
         newNode%val = val
         newNode%prev => nextNode%prev
         newNode%next => nextNode
         nextNode%prev => newNode
         if(associated(newNode%prev)) newNode%prev%next => newNode
      end subroutine insert_atComplexDim0Kindreal128
      subroutine pushComplexDim0Kindreal128(self, val)
         type(ComplexDim0Kindreal128List), intent(inout):: self
         Complex(kind=real128), intent(in):: val
         type(ComplexDim0Kindreal128ListNode), pointer:: newNode
         if(is_empty(self))then
            call new(self, val)
            return
         end if
         allocate(newNode)
         newNode%val = val
         newNode%prev => self%entry
         newNode%next => self%entry%next
         self%entry%next => newNode
         self%entry => newNode
      end subroutine pushComplexDim0Kindreal128
      function is_emptyComplexDim0Kindreal128(self) result(answer)
         logical:: answer
         type(ComplexDim0Kindreal128List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim0Kindreal128
      function is_size_oneComplexDim0Kindreal128(self) result(answer)
         logical:: answer
         type(ComplexDim0Kindreal128List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneComplexDim0Kindreal128
      function sizeComplexDim0Kindreal128(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(ComplexDim0Kindreal128List), intent(in):: self
         type(ComplexDim0Kindreal128ListNode), pointer:: walker
         if(is_empty(self))then
            answer = 0
            return
         end if
         walker => self%entry
         answer = 1
         do while(associated(walker%prev))
            walker => walker%prev
            answer = answer + 1
         end do
      end function sizeComplexDim0Kindreal128
      function array_from_listComplexDim0Kindreal128(self) result(answer)
         Complex(kind=real128), allocatable:: answer(:)
         type(ComplexDim0Kindreal128List), intent(in):: self
         answer = self
      end function array_from_listComplexDim0Kindreal128
      function almost_equalComplexDim0Kindreal128(self, other) result(answer)
         type(ComplexDim0Kindreal128List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalComplexDim0Kindreal128
      ! Internal
      ! Create a size 1 list.
      subroutine newComplexDim0Kindreal128(self, val)
         type(ComplexDim0Kindreal128List), intent(inout):: self
         Complex(kind=real128), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newComplexDim0Kindreal128
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atComplexDim0Kindreal128(self, pos) result(answer)
         type(ComplexDim0Kindreal128ListNode), pointer:: answer
         type(ComplexDim0Kindreal128List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(error_unit, *) "ERROR: ", "list_lib.f90", " ", 10753, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atComplexDim0Kindreal128
      ! Cleate a deep copy of a list.
      subroutine copyComplexDim0Kindreal128(new, original)
         type(ComplexDim0Kindreal128List), intent(inout):: new
         type(ComplexDim0Kindreal128List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyComplexDim0Kindreal128
end module list_lib
