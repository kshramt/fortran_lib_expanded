module list_lib
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
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
      type, extends(ListNode):: LogicalDim0ListNode
         Logical:: val
         type(LogicalDim0ListNode), pointer:: prev => null()
         type(LogicalDim0ListNode), pointer:: next => null()
      end type LogicalDim0ListNode
      type, extends(List), public:: LogicalDim0List
         type(LogicalDim0ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type LogicalDim0List
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
      type, extends(ListNode):: IntegerDim0KindINT8ListNode
         Integer(kind=INT8):: val
         type(IntegerDim0KindINT8ListNode), pointer:: prev => null()
         type(IntegerDim0KindINT8ListNode), pointer:: next => null()
      end type IntegerDim0KindINT8ListNode
      type, extends(List), public:: IntegerDim0KindINT8List
         type(IntegerDim0KindINT8ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type IntegerDim0KindINT8List
      type, extends(ListNode):: IntegerDim0KindINT16ListNode
         Integer(kind=INT16):: val
         type(IntegerDim0KindINT16ListNode), pointer:: prev => null()
         type(IntegerDim0KindINT16ListNode), pointer:: next => null()
      end type IntegerDim0KindINT16ListNode
      type, extends(List), public:: IntegerDim0KindINT16List
         type(IntegerDim0KindINT16ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type IntegerDim0KindINT16List
      type, extends(ListNode):: IntegerDim0KindINT32ListNode
         Integer(kind=INT32):: val
         type(IntegerDim0KindINT32ListNode), pointer:: prev => null()
         type(IntegerDim0KindINT32ListNode), pointer:: next => null()
      end type IntegerDim0KindINT32ListNode
      type, extends(List), public:: IntegerDim0KindINT32List
         type(IntegerDim0KindINT32ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type IntegerDim0KindINT32List
      type, extends(ListNode):: IntegerDim0KindINT64ListNode
         Integer(kind=INT64):: val
         type(IntegerDim0KindINT64ListNode), pointer:: prev => null()
         type(IntegerDim0KindINT64ListNode), pointer:: next => null()
      end type IntegerDim0KindINT64ListNode
      type, extends(List), public:: IntegerDim0KindINT64List
         type(IntegerDim0KindINT64ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type IntegerDim0KindINT64List
      type, extends(ListNode):: RealDim0KindREAL32ListNode
         Real(kind=REAL32):: val
         type(RealDim0KindREAL32ListNode), pointer:: prev => null()
         type(RealDim0KindREAL32ListNode), pointer:: next => null()
      end type RealDim0KindREAL32ListNode
      type, extends(List), public:: RealDim0KindREAL32List
         type(RealDim0KindREAL32ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type RealDim0KindREAL32List
      type, extends(ListNode):: RealDim0KindREAL64ListNode
         Real(kind=REAL64):: val
         type(RealDim0KindREAL64ListNode), pointer:: prev => null()
         type(RealDim0KindREAL64ListNode), pointer:: next => null()
      end type RealDim0KindREAL64ListNode
      type, extends(List), public:: RealDim0KindREAL64List
         type(RealDim0KindREAL64ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type RealDim0KindREAL64List
      type, extends(ListNode):: RealDim0KindREAL128ListNode
         Real(kind=REAL128):: val
         type(RealDim0KindREAL128ListNode), pointer:: prev => null()
         type(RealDim0KindREAL128ListNode), pointer:: next => null()
      end type RealDim0KindREAL128ListNode
      type, extends(List), public:: RealDim0KindREAL128List
         type(RealDim0KindREAL128ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type RealDim0KindREAL128List
      type, extends(ListNode):: ComplexDim0KindREAL32ListNode
         Complex(kind=REAL32):: val
         type(ComplexDim0KindREAL32ListNode), pointer:: prev => null()
         type(ComplexDim0KindREAL32ListNode), pointer:: next => null()
      end type ComplexDim0KindREAL32ListNode
      type, extends(List), public:: ComplexDim0KindREAL32List
         type(ComplexDim0KindREAL32ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type ComplexDim0KindREAL32List
      type, extends(ListNode):: ComplexDim0KindREAL64ListNode
         Complex(kind=REAL64):: val
         type(ComplexDim0KindREAL64ListNode), pointer:: prev => null()
         type(ComplexDim0KindREAL64ListNode), pointer:: next => null()
      end type ComplexDim0KindREAL64ListNode
      type, extends(List), public:: ComplexDim0KindREAL64List
         type(ComplexDim0KindREAL64ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type ComplexDim0KindREAL64List
      type, extends(ListNode):: ComplexDim0KindREAL128ListNode
         Complex(kind=REAL128):: val
         type(ComplexDim0KindREAL128ListNode), pointer:: prev => null()
         type(ComplexDim0KindREAL128ListNode), pointer:: next => null()
      end type ComplexDim0KindREAL128ListNode
      type, extends(List), public:: ComplexDim0KindREAL128List
         type(ComplexDim0KindREAL128ListNode), pointer:: entry => null()
         Integer:: size ! Currently, integer is enough since max size of a dimension of an array is huge(0).
      end type ComplexDim0KindREAL128List
      interface size
         module procedure sizeLogicalDim0
      end interface size
      interface delete_at
         module procedure delete_atLogicalDim0
      end interface delete_at
      interface insert_at
         module procedure insert_atLogicalDim0
      end interface insert_at
      interface val_at
         module procedure val_atLogicalDim0
      end interface val_at
      interface operator(.val.)
         module procedure val_atLogicalDim0
      end interface operator(.val.)
      interface shift
         module procedure shiftLogicalDim0
      end interface shift
      interface unshift
         module procedure unshiftLogicalDim0
      end interface unshift
      interface push
         module procedure pushLogicalDim0
      end interface push
      interface pop
         module procedure popLogicalDim0
      end interface pop
      interface clear
         module procedure clearLogicalDim0
      end interface clear
      interface swap
         module procedure swapLogicalDim0
      end interface swap
      interface assignment(=)
         module procedure copyLogicalDim0
         module procedure list_from_array_coercionLogicalDim0
         module procedure array_from_list_coercionLogicalDim0
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneLogicalDim0
      end interface is_size_one
      interface is_empty
         module procedure is_emptyLogicalDim0
      end interface is_empty
      interface array_from_list
         module procedure array_from_listLogicalDim0
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalLogicalDim0
      end interface almost_equal
      ! Internal
      interface new
         module procedure newLogicalDim0
      end interface new
      interface node_at
         module procedure node_atLogicalDim0
      end interface node_at
      interface copy
         module procedure copyLogicalDim0
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
         module procedure sizeIntegerDim0KindINT8
      end interface size
      interface delete_at
         module procedure delete_atIntegerDim0KindINT8
      end interface delete_at
      interface insert_at
         module procedure insert_atIntegerDim0KindINT8
      end interface insert_at
      interface val_at
         module procedure val_atIntegerDim0KindINT8
      end interface val_at
      interface operator(.val.)
         module procedure val_atIntegerDim0KindINT8
      end interface operator(.val.)
      interface shift
         module procedure shiftIntegerDim0KindINT8
      end interface shift
      interface unshift
         module procedure unshiftIntegerDim0KindINT8
      end interface unshift
      interface push
         module procedure pushIntegerDim0KindINT8
      end interface push
      interface pop
         module procedure popIntegerDim0KindINT8
      end interface pop
      interface clear
         module procedure clearIntegerDim0KindINT8
      end interface clear
      interface swap
         module procedure swapIntegerDim0KindINT8
      end interface swap
      interface assignment(=)
         module procedure copyIntegerDim0KindINT8
         module procedure list_from_array_coercionIntegerDim0KindINT8
         module procedure array_from_list_coercionIntegerDim0KindINT8
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneIntegerDim0KindINT8
      end interface is_size_one
      interface is_empty
         module procedure is_emptyIntegerDim0KindINT8
      end interface is_empty
      interface array_from_list
         module procedure array_from_listIntegerDim0KindINT8
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalIntegerDim0KindINT8
      end interface almost_equal
      ! Internal
      interface new
         module procedure newIntegerDim0KindINT8
      end interface new
      interface node_at
         module procedure node_atIntegerDim0KindINT8
      end interface node_at
      interface copy
         module procedure copyIntegerDim0KindINT8
      end interface copy
      interface size
         module procedure sizeIntegerDim0KindINT16
      end interface size
      interface delete_at
         module procedure delete_atIntegerDim0KindINT16
      end interface delete_at
      interface insert_at
         module procedure insert_atIntegerDim0KindINT16
      end interface insert_at
      interface val_at
         module procedure val_atIntegerDim0KindINT16
      end interface val_at
      interface operator(.val.)
         module procedure val_atIntegerDim0KindINT16
      end interface operator(.val.)
      interface shift
         module procedure shiftIntegerDim0KindINT16
      end interface shift
      interface unshift
         module procedure unshiftIntegerDim0KindINT16
      end interface unshift
      interface push
         module procedure pushIntegerDim0KindINT16
      end interface push
      interface pop
         module procedure popIntegerDim0KindINT16
      end interface pop
      interface clear
         module procedure clearIntegerDim0KindINT16
      end interface clear
      interface swap
         module procedure swapIntegerDim0KindINT16
      end interface swap
      interface assignment(=)
         module procedure copyIntegerDim0KindINT16
         module procedure list_from_array_coercionIntegerDim0KindINT16
         module procedure array_from_list_coercionIntegerDim0KindINT16
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneIntegerDim0KindINT16
      end interface is_size_one
      interface is_empty
         module procedure is_emptyIntegerDim0KindINT16
      end interface is_empty
      interface array_from_list
         module procedure array_from_listIntegerDim0KindINT16
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalIntegerDim0KindINT16
      end interface almost_equal
      ! Internal
      interface new
         module procedure newIntegerDim0KindINT16
      end interface new
      interface node_at
         module procedure node_atIntegerDim0KindINT16
      end interface node_at
      interface copy
         module procedure copyIntegerDim0KindINT16
      end interface copy
      interface size
         module procedure sizeIntegerDim0KindINT32
      end interface size
      interface delete_at
         module procedure delete_atIntegerDim0KindINT32
      end interface delete_at
      interface insert_at
         module procedure insert_atIntegerDim0KindINT32
      end interface insert_at
      interface val_at
         module procedure val_atIntegerDim0KindINT32
      end interface val_at
      interface operator(.val.)
         module procedure val_atIntegerDim0KindINT32
      end interface operator(.val.)
      interface shift
         module procedure shiftIntegerDim0KindINT32
      end interface shift
      interface unshift
         module procedure unshiftIntegerDim0KindINT32
      end interface unshift
      interface push
         module procedure pushIntegerDim0KindINT32
      end interface push
      interface pop
         module procedure popIntegerDim0KindINT32
      end interface pop
      interface clear
         module procedure clearIntegerDim0KindINT32
      end interface clear
      interface swap
         module procedure swapIntegerDim0KindINT32
      end interface swap
      interface assignment(=)
         module procedure copyIntegerDim0KindINT32
         module procedure list_from_array_coercionIntegerDim0KindINT32
         module procedure array_from_list_coercionIntegerDim0KindINT32
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneIntegerDim0KindINT32
      end interface is_size_one
      interface is_empty
         module procedure is_emptyIntegerDim0KindINT32
      end interface is_empty
      interface array_from_list
         module procedure array_from_listIntegerDim0KindINT32
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalIntegerDim0KindINT32
      end interface almost_equal
      ! Internal
      interface new
         module procedure newIntegerDim0KindINT32
      end interface new
      interface node_at
         module procedure node_atIntegerDim0KindINT32
      end interface node_at
      interface copy
         module procedure copyIntegerDim0KindINT32
      end interface copy
      interface size
         module procedure sizeIntegerDim0KindINT64
      end interface size
      interface delete_at
         module procedure delete_atIntegerDim0KindINT64
      end interface delete_at
      interface insert_at
         module procedure insert_atIntegerDim0KindINT64
      end interface insert_at
      interface val_at
         module procedure val_atIntegerDim0KindINT64
      end interface val_at
      interface operator(.val.)
         module procedure val_atIntegerDim0KindINT64
      end interface operator(.val.)
      interface shift
         module procedure shiftIntegerDim0KindINT64
      end interface shift
      interface unshift
         module procedure unshiftIntegerDim0KindINT64
      end interface unshift
      interface push
         module procedure pushIntegerDim0KindINT64
      end interface push
      interface pop
         module procedure popIntegerDim0KindINT64
      end interface pop
      interface clear
         module procedure clearIntegerDim0KindINT64
      end interface clear
      interface swap
         module procedure swapIntegerDim0KindINT64
      end interface swap
      interface assignment(=)
         module procedure copyIntegerDim0KindINT64
         module procedure list_from_array_coercionIntegerDim0KindINT64
         module procedure array_from_list_coercionIntegerDim0KindINT64
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneIntegerDim0KindINT64
      end interface is_size_one
      interface is_empty
         module procedure is_emptyIntegerDim0KindINT64
      end interface is_empty
      interface array_from_list
         module procedure array_from_listIntegerDim0KindINT64
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalIntegerDim0KindINT64
      end interface almost_equal
      ! Internal
      interface new
         module procedure newIntegerDim0KindINT64
      end interface new
      interface node_at
         module procedure node_atIntegerDim0KindINT64
      end interface node_at
      interface copy
         module procedure copyIntegerDim0KindINT64
      end interface copy
      interface size
         module procedure sizeRealDim0KindREAL32
      end interface size
      interface delete_at
         module procedure delete_atRealDim0KindREAL32
      end interface delete_at
      interface insert_at
         module procedure insert_atRealDim0KindREAL32
      end interface insert_at
      interface val_at
         module procedure val_atRealDim0KindREAL32
      end interface val_at
      interface operator(.val.)
         module procedure val_atRealDim0KindREAL32
      end interface operator(.val.)
      interface shift
         module procedure shiftRealDim0KindREAL32
      end interface shift
      interface unshift
         module procedure unshiftRealDim0KindREAL32
      end interface unshift
      interface push
         module procedure pushRealDim0KindREAL32
      end interface push
      interface pop
         module procedure popRealDim0KindREAL32
      end interface pop
      interface clear
         module procedure clearRealDim0KindREAL32
      end interface clear
      interface swap
         module procedure swapRealDim0KindREAL32
      end interface swap
      interface assignment(=)
         module procedure copyRealDim0KindREAL32
         module procedure list_from_array_coercionRealDim0KindREAL32
         module procedure array_from_list_coercionRealDim0KindREAL32
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneRealDim0KindREAL32
      end interface is_size_one
      interface is_empty
         module procedure is_emptyRealDim0KindREAL32
      end interface is_empty
      interface array_from_list
         module procedure array_from_listRealDim0KindREAL32
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalRealDim0KindREAL32
      end interface almost_equal
      ! Internal
      interface new
         module procedure newRealDim0KindREAL32
      end interface new
      interface node_at
         module procedure node_atRealDim0KindREAL32
      end interface node_at
      interface copy
         module procedure copyRealDim0KindREAL32
      end interface copy
      interface size
         module procedure sizeRealDim0KindREAL64
      end interface size
      interface delete_at
         module procedure delete_atRealDim0KindREAL64
      end interface delete_at
      interface insert_at
         module procedure insert_atRealDim0KindREAL64
      end interface insert_at
      interface val_at
         module procedure val_atRealDim0KindREAL64
      end interface val_at
      interface operator(.val.)
         module procedure val_atRealDim0KindREAL64
      end interface operator(.val.)
      interface shift
         module procedure shiftRealDim0KindREAL64
      end interface shift
      interface unshift
         module procedure unshiftRealDim0KindREAL64
      end interface unshift
      interface push
         module procedure pushRealDim0KindREAL64
      end interface push
      interface pop
         module procedure popRealDim0KindREAL64
      end interface pop
      interface clear
         module procedure clearRealDim0KindREAL64
      end interface clear
      interface swap
         module procedure swapRealDim0KindREAL64
      end interface swap
      interface assignment(=)
         module procedure copyRealDim0KindREAL64
         module procedure list_from_array_coercionRealDim0KindREAL64
         module procedure array_from_list_coercionRealDim0KindREAL64
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneRealDim0KindREAL64
      end interface is_size_one
      interface is_empty
         module procedure is_emptyRealDim0KindREAL64
      end interface is_empty
      interface array_from_list
         module procedure array_from_listRealDim0KindREAL64
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalRealDim0KindREAL64
      end interface almost_equal
      ! Internal
      interface new
         module procedure newRealDim0KindREAL64
      end interface new
      interface node_at
         module procedure node_atRealDim0KindREAL64
      end interface node_at
      interface copy
         module procedure copyRealDim0KindREAL64
      end interface copy
      interface size
         module procedure sizeRealDim0KindREAL128
      end interface size
      interface delete_at
         module procedure delete_atRealDim0KindREAL128
      end interface delete_at
      interface insert_at
         module procedure insert_atRealDim0KindREAL128
      end interface insert_at
      interface val_at
         module procedure val_atRealDim0KindREAL128
      end interface val_at
      interface operator(.val.)
         module procedure val_atRealDim0KindREAL128
      end interface operator(.val.)
      interface shift
         module procedure shiftRealDim0KindREAL128
      end interface shift
      interface unshift
         module procedure unshiftRealDim0KindREAL128
      end interface unshift
      interface push
         module procedure pushRealDim0KindREAL128
      end interface push
      interface pop
         module procedure popRealDim0KindREAL128
      end interface pop
      interface clear
         module procedure clearRealDim0KindREAL128
      end interface clear
      interface swap
         module procedure swapRealDim0KindREAL128
      end interface swap
      interface assignment(=)
         module procedure copyRealDim0KindREAL128
         module procedure list_from_array_coercionRealDim0KindREAL128
         module procedure array_from_list_coercionRealDim0KindREAL128
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneRealDim0KindREAL128
      end interface is_size_one
      interface is_empty
         module procedure is_emptyRealDim0KindREAL128
      end interface is_empty
      interface array_from_list
         module procedure array_from_listRealDim0KindREAL128
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalRealDim0KindREAL128
      end interface almost_equal
      ! Internal
      interface new
         module procedure newRealDim0KindREAL128
      end interface new
      interface node_at
         module procedure node_atRealDim0KindREAL128
      end interface node_at
      interface copy
         module procedure copyRealDim0KindREAL128
      end interface copy
      interface size
         module procedure sizeComplexDim0KindREAL32
      end interface size
      interface delete_at
         module procedure delete_atComplexDim0KindREAL32
      end interface delete_at
      interface insert_at
         module procedure insert_atComplexDim0KindREAL32
      end interface insert_at
      interface val_at
         module procedure val_atComplexDim0KindREAL32
      end interface val_at
      interface operator(.val.)
         module procedure val_atComplexDim0KindREAL32
      end interface operator(.val.)
      interface shift
         module procedure shiftComplexDim0KindREAL32
      end interface shift
      interface unshift
         module procedure unshiftComplexDim0KindREAL32
      end interface unshift
      interface push
         module procedure pushComplexDim0KindREAL32
      end interface push
      interface pop
         module procedure popComplexDim0KindREAL32
      end interface pop
      interface clear
         module procedure clearComplexDim0KindREAL32
      end interface clear
      interface swap
         module procedure swapComplexDim0KindREAL32
      end interface swap
      interface assignment(=)
         module procedure copyComplexDim0KindREAL32
         module procedure list_from_array_coercionComplexDim0KindREAL32
         module procedure array_from_list_coercionComplexDim0KindREAL32
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneComplexDim0KindREAL32
      end interface is_size_one
      interface is_empty
         module procedure is_emptyComplexDim0KindREAL32
      end interface is_empty
      interface array_from_list
         module procedure array_from_listComplexDim0KindREAL32
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalComplexDim0KindREAL32
      end interface almost_equal
      ! Internal
      interface new
         module procedure newComplexDim0KindREAL32
      end interface new
      interface node_at
         module procedure node_atComplexDim0KindREAL32
      end interface node_at
      interface copy
         module procedure copyComplexDim0KindREAL32
      end interface copy
      interface size
         module procedure sizeComplexDim0KindREAL64
      end interface size
      interface delete_at
         module procedure delete_atComplexDim0KindREAL64
      end interface delete_at
      interface insert_at
         module procedure insert_atComplexDim0KindREAL64
      end interface insert_at
      interface val_at
         module procedure val_atComplexDim0KindREAL64
      end interface val_at
      interface operator(.val.)
         module procedure val_atComplexDim0KindREAL64
      end interface operator(.val.)
      interface shift
         module procedure shiftComplexDim0KindREAL64
      end interface shift
      interface unshift
         module procedure unshiftComplexDim0KindREAL64
      end interface unshift
      interface push
         module procedure pushComplexDim0KindREAL64
      end interface push
      interface pop
         module procedure popComplexDim0KindREAL64
      end interface pop
      interface clear
         module procedure clearComplexDim0KindREAL64
      end interface clear
      interface swap
         module procedure swapComplexDim0KindREAL64
      end interface swap
      interface assignment(=)
         module procedure copyComplexDim0KindREAL64
         module procedure list_from_array_coercionComplexDim0KindREAL64
         module procedure array_from_list_coercionComplexDim0KindREAL64
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneComplexDim0KindREAL64
      end interface is_size_one
      interface is_empty
         module procedure is_emptyComplexDim0KindREAL64
      end interface is_empty
      interface array_from_list
         module procedure array_from_listComplexDim0KindREAL64
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalComplexDim0KindREAL64
      end interface almost_equal
      ! Internal
      interface new
         module procedure newComplexDim0KindREAL64
      end interface new
      interface node_at
         module procedure node_atComplexDim0KindREAL64
      end interface node_at
      interface copy
         module procedure copyComplexDim0KindREAL64
      end interface copy
      interface size
         module procedure sizeComplexDim0KindREAL128
      end interface size
      interface delete_at
         module procedure delete_atComplexDim0KindREAL128
      end interface delete_at
      interface insert_at
         module procedure insert_atComplexDim0KindREAL128
      end interface insert_at
      interface val_at
         module procedure val_atComplexDim0KindREAL128
      end interface val_at
      interface operator(.val.)
         module procedure val_atComplexDim0KindREAL128
      end interface operator(.val.)
      interface shift
         module procedure shiftComplexDim0KindREAL128
      end interface shift
      interface unshift
         module procedure unshiftComplexDim0KindREAL128
      end interface unshift
      interface push
         module procedure pushComplexDim0KindREAL128
      end interface push
      interface pop
         module procedure popComplexDim0KindREAL128
      end interface pop
      interface clear
         module procedure clearComplexDim0KindREAL128
      end interface clear
      interface swap
         module procedure swapComplexDim0KindREAL128
      end interface swap
      interface assignment(=)
         module procedure copyComplexDim0KindREAL128
         module procedure list_from_array_coercionComplexDim0KindREAL128
         module procedure array_from_list_coercionComplexDim0KindREAL128
      end interface assignment(=)
      interface is_size_one
         module procedure is_size_oneComplexDim0KindREAL128
      end interface is_size_one
      interface is_empty
         module procedure is_emptyComplexDim0KindREAL128
      end interface is_empty
      interface array_from_list
         module procedure array_from_listComplexDim0KindREAL128
      end interface array_from_list
      interface almost_equal
         module procedure almost_equalComplexDim0KindREAL128
      end interface almost_equal
      ! Internal
      interface new
         module procedure newComplexDim0KindREAL128
      end interface new
      interface node_at
         module procedure node_atComplexDim0KindREAL128
      end interface node_at
      interface copy
         module procedure copyComplexDim0KindREAL128
      end interface copy
contains
      subroutine swapLogicalDim0(self, pos1, pos2)
         type(LogicalDim0List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(LogicalDim0ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(LogicalDim0ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 2280, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
      end subroutine swapLogicalDim0
      subroutine list_from_array_coercionLogicalDim0(self, array)
         type(LogicalDim0List), intent(inout):: self
         Logical, intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionLogicalDim0
      subroutine array_from_list_coercionLogicalDim0(array, list)
         Logical, allocatable, intent(out):: array(:)
         type(LogicalDim0List), intent(in):: list
         integer:: i, nList
         type(LogicalDim0ListNode), pointer:: walker
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
      end subroutine array_from_list_coercionLogicalDim0
      function val_atLogicalDim0(self, pos) result(answer)
         Logical:: answer
         type(LogicalDim0List), intent(in):: self
         integer, intent(in):: pos
         type(LogicalDim0ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atLogicalDim0
      function shiftLogicalDim0(self) result(answer)
         Logical:: answer
         type(LogicalDim0List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftLogicalDim0
      subroutine unshiftLogicalDim0(self, val)
         type(LogicalDim0List), intent(inout):: self
         Logical, intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftLogicalDim0
      function delete_atLogicalDim0(self, pos) result(answer)
         Logical:: answer
         type(LogicalDim0List), intent(inout):: self
         integer:: pos
         type(LogicalDim0ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atLogicalDim0
      function popLogicalDim0(self) result(answer)
         Logical:: answer
         type(LogicalDim0List), intent(inout):: self
         type(LogicalDim0ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popLogicalDim0
      recursive subroutine clearLogicalDim0(self)
         type(LogicalDim0List), intent(inout):: self
         Logical:: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearLogicalDim0
      subroutine insert_atLogicalDim0(self, val, pos)
         type(LogicalDim0List), intent(inout):: self
         Logical, intent(in):: val
         integer, intent(in):: pos
         type(LogicalDim0ListNode), pointer:: nextNode, newNode
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
      end subroutine insert_atLogicalDim0
      subroutine pushLogicalDim0(self, val)
         type(LogicalDim0List), intent(inout):: self
         Logical, intent(in):: val
         type(LogicalDim0ListNode), pointer:: newNode
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
      end subroutine pushLogicalDim0
      function is_emptyLogicalDim0(self) result(answer)
         logical:: answer
         type(LogicalDim0List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyLogicalDim0
      function is_size_oneLogicalDim0(self) result(answer)
         logical:: answer
         type(LogicalDim0List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneLogicalDim0
      function sizeLogicalDim0(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(LogicalDim0List), intent(in):: self
         type(LogicalDim0ListNode), pointer:: walker
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
      end function sizeLogicalDim0
      function array_from_listLogicalDim0(self) result(answer)
         Logical, allocatable:: answer(:)
         type(LogicalDim0List), intent(in):: self
         answer = self
      end function array_from_listLogicalDim0
      function almost_equalLogicalDim0(self, other) result(answer)
         type(LogicalDim0List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalLogicalDim0
      ! Internal
      ! Create a size 1 list.
      subroutine newLogicalDim0(self, val)
         type(LogicalDim0List), intent(inout):: self
         Logical, intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newLogicalDim0
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atLogicalDim0(self, pos) result(answer)
         type(LogicalDim0ListNode), pointer:: answer
         type(LogicalDim0List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 2542, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atLogicalDim0
      ! Cleate a deep copy of a list.
      subroutine copyLogicalDim0(new, original)
         type(LogicalDim0List), intent(inout):: new
         type(LogicalDim0List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyLogicalDim0
      subroutine swapCharacterDim0Len1(self, pos1, pos2)
         type(CharacterDim0Len1List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(CharacterDim0Len1ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(CharacterDim0Len1ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 2571, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 2833, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
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
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 2862, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 3124, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
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
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 3153, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 3415, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
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
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 3444, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 3706, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
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
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 3735, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 3997, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
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
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 4026, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 4288, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
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
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 4317, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 4579, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
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
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 4608, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 4870, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
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
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 4899, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 5161, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
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
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 5190, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 5452, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
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
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 5481, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 5743, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
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
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 5772, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 6034, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
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
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 6063, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 6325, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
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
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 6354, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 6616, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
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
      subroutine swapIntegerDim0KindINT8(self, pos1, pos2)
         type(IntegerDim0KindINT8List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(IntegerDim0KindINT8ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(IntegerDim0KindINT8ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 6645, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
      end subroutine swapIntegerDim0KindINT8
      subroutine list_from_array_coercionIntegerDim0KindINT8(self, array)
         type(IntegerDim0KindINT8List), intent(inout):: self
         Integer(kind=INT8), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionIntegerDim0KindINT8
      subroutine array_from_list_coercionIntegerDim0KindINT8(array, list)
         Integer(kind=INT8), allocatable, intent(out):: array(:)
         type(IntegerDim0KindINT8List), intent(in):: list
         integer:: i, nList
         type(IntegerDim0KindINT8ListNode), pointer:: walker
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
      end subroutine array_from_list_coercionIntegerDim0KindINT8
      function val_atIntegerDim0KindINT8(self, pos) result(answer)
         Integer(kind=INT8):: answer
         type(IntegerDim0KindINT8List), intent(in):: self
         integer, intent(in):: pos
         type(IntegerDim0KindINT8ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atIntegerDim0KindINT8
      function shiftIntegerDim0KindINT8(self) result(answer)
         Integer(kind=INT8):: answer
         type(IntegerDim0KindINT8List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftIntegerDim0KindINT8
      subroutine unshiftIntegerDim0KindINT8(self, val)
         type(IntegerDim0KindINT8List), intent(inout):: self
         Integer(kind=INT8), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftIntegerDim0KindINT8
      function delete_atIntegerDim0KindINT8(self, pos) result(answer)
         Integer(kind=INT8):: answer
         type(IntegerDim0KindINT8List), intent(inout):: self
         integer:: pos
         type(IntegerDim0KindINT8ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atIntegerDim0KindINT8
      function popIntegerDim0KindINT8(self) result(answer)
         Integer(kind=INT8):: answer
         type(IntegerDim0KindINT8List), intent(inout):: self
         type(IntegerDim0KindINT8ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popIntegerDim0KindINT8
      recursive subroutine clearIntegerDim0KindINT8(self)
         type(IntegerDim0KindINT8List), intent(inout):: self
         Integer(kind=INT8):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearIntegerDim0KindINT8
      subroutine insert_atIntegerDim0KindINT8(self, val, pos)
         type(IntegerDim0KindINT8List), intent(inout):: self
         Integer(kind=INT8), intent(in):: val
         integer, intent(in):: pos
         type(IntegerDim0KindINT8ListNode), pointer:: nextNode, newNode
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
      end subroutine insert_atIntegerDim0KindINT8
      subroutine pushIntegerDim0KindINT8(self, val)
         type(IntegerDim0KindINT8List), intent(inout):: self
         Integer(kind=INT8), intent(in):: val
         type(IntegerDim0KindINT8ListNode), pointer:: newNode
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
      end subroutine pushIntegerDim0KindINT8
      function is_emptyIntegerDim0KindINT8(self) result(answer)
         logical:: answer
         type(IntegerDim0KindINT8List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim0KindINT8
      function is_size_oneIntegerDim0KindINT8(self) result(answer)
         logical:: answer
         type(IntegerDim0KindINT8List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneIntegerDim0KindINT8
      function sizeIntegerDim0KindINT8(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(IntegerDim0KindINT8List), intent(in):: self
         type(IntegerDim0KindINT8ListNode), pointer:: walker
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
      end function sizeIntegerDim0KindINT8
      function array_from_listIntegerDim0KindINT8(self) result(answer)
         Integer(kind=INT8), allocatable:: answer(:)
         type(IntegerDim0KindINT8List), intent(in):: self
         answer = self
      end function array_from_listIntegerDim0KindINT8
      function almost_equalIntegerDim0KindINT8(self, other) result(answer)
         type(IntegerDim0KindINT8List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalIntegerDim0KindINT8
      ! Internal
      ! Create a size 1 list.
      subroutine newIntegerDim0KindINT8(self, val)
         type(IntegerDim0KindINT8List), intent(inout):: self
         Integer(kind=INT8), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newIntegerDim0KindINT8
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atIntegerDim0KindINT8(self, pos) result(answer)
         type(IntegerDim0KindINT8ListNode), pointer:: answer
         type(IntegerDim0KindINT8List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 6907, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atIntegerDim0KindINT8
      ! Cleate a deep copy of a list.
      subroutine copyIntegerDim0KindINT8(new, original)
         type(IntegerDim0KindINT8List), intent(inout):: new
         type(IntegerDim0KindINT8List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyIntegerDim0KindINT8
      subroutine swapIntegerDim0KindINT16(self, pos1, pos2)
         type(IntegerDim0KindINT16List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(IntegerDim0KindINT16ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(IntegerDim0KindINT16ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 6936, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
      end subroutine swapIntegerDim0KindINT16
      subroutine list_from_array_coercionIntegerDim0KindINT16(self, array)
         type(IntegerDim0KindINT16List), intent(inout):: self
         Integer(kind=INT16), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionIntegerDim0KindINT16
      subroutine array_from_list_coercionIntegerDim0KindINT16(array, list)
         Integer(kind=INT16), allocatable, intent(out):: array(:)
         type(IntegerDim0KindINT16List), intent(in):: list
         integer:: i, nList
         type(IntegerDim0KindINT16ListNode), pointer:: walker
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
      end subroutine array_from_list_coercionIntegerDim0KindINT16
      function val_atIntegerDim0KindINT16(self, pos) result(answer)
         Integer(kind=INT16):: answer
         type(IntegerDim0KindINT16List), intent(in):: self
         integer, intent(in):: pos
         type(IntegerDim0KindINT16ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atIntegerDim0KindINT16
      function shiftIntegerDim0KindINT16(self) result(answer)
         Integer(kind=INT16):: answer
         type(IntegerDim0KindINT16List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftIntegerDim0KindINT16
      subroutine unshiftIntegerDim0KindINT16(self, val)
         type(IntegerDim0KindINT16List), intent(inout):: self
         Integer(kind=INT16), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftIntegerDim0KindINT16
      function delete_atIntegerDim0KindINT16(self, pos) result(answer)
         Integer(kind=INT16):: answer
         type(IntegerDim0KindINT16List), intent(inout):: self
         integer:: pos
         type(IntegerDim0KindINT16ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atIntegerDim0KindINT16
      function popIntegerDim0KindINT16(self) result(answer)
         Integer(kind=INT16):: answer
         type(IntegerDim0KindINT16List), intent(inout):: self
         type(IntegerDim0KindINT16ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popIntegerDim0KindINT16
      recursive subroutine clearIntegerDim0KindINT16(self)
         type(IntegerDim0KindINT16List), intent(inout):: self
         Integer(kind=INT16):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearIntegerDim0KindINT16
      subroutine insert_atIntegerDim0KindINT16(self, val, pos)
         type(IntegerDim0KindINT16List), intent(inout):: self
         Integer(kind=INT16), intent(in):: val
         integer, intent(in):: pos
         type(IntegerDim0KindINT16ListNode), pointer:: nextNode, newNode
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
      end subroutine insert_atIntegerDim0KindINT16
      subroutine pushIntegerDim0KindINT16(self, val)
         type(IntegerDim0KindINT16List), intent(inout):: self
         Integer(kind=INT16), intent(in):: val
         type(IntegerDim0KindINT16ListNode), pointer:: newNode
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
      end subroutine pushIntegerDim0KindINT16
      function is_emptyIntegerDim0KindINT16(self) result(answer)
         logical:: answer
         type(IntegerDim0KindINT16List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim0KindINT16
      function is_size_oneIntegerDim0KindINT16(self) result(answer)
         logical:: answer
         type(IntegerDim0KindINT16List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneIntegerDim0KindINT16
      function sizeIntegerDim0KindINT16(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(IntegerDim0KindINT16List), intent(in):: self
         type(IntegerDim0KindINT16ListNode), pointer:: walker
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
      end function sizeIntegerDim0KindINT16
      function array_from_listIntegerDim0KindINT16(self) result(answer)
         Integer(kind=INT16), allocatable:: answer(:)
         type(IntegerDim0KindINT16List), intent(in):: self
         answer = self
      end function array_from_listIntegerDim0KindINT16
      function almost_equalIntegerDim0KindINT16(self, other) result(answer)
         type(IntegerDim0KindINT16List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalIntegerDim0KindINT16
      ! Internal
      ! Create a size 1 list.
      subroutine newIntegerDim0KindINT16(self, val)
         type(IntegerDim0KindINT16List), intent(inout):: self
         Integer(kind=INT16), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newIntegerDim0KindINT16
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atIntegerDim0KindINT16(self, pos) result(answer)
         type(IntegerDim0KindINT16ListNode), pointer:: answer
         type(IntegerDim0KindINT16List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 7198, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atIntegerDim0KindINT16
      ! Cleate a deep copy of a list.
      subroutine copyIntegerDim0KindINT16(new, original)
         type(IntegerDim0KindINT16List), intent(inout):: new
         type(IntegerDim0KindINT16List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyIntegerDim0KindINT16
      subroutine swapIntegerDim0KindINT32(self, pos1, pos2)
         type(IntegerDim0KindINT32List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(IntegerDim0KindINT32ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(IntegerDim0KindINT32ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 7227, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
      end subroutine swapIntegerDim0KindINT32
      subroutine list_from_array_coercionIntegerDim0KindINT32(self, array)
         type(IntegerDim0KindINT32List), intent(inout):: self
         Integer(kind=INT32), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionIntegerDim0KindINT32
      subroutine array_from_list_coercionIntegerDim0KindINT32(array, list)
         Integer(kind=INT32), allocatable, intent(out):: array(:)
         type(IntegerDim0KindINT32List), intent(in):: list
         integer:: i, nList
         type(IntegerDim0KindINT32ListNode), pointer:: walker
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
      end subroutine array_from_list_coercionIntegerDim0KindINT32
      function val_atIntegerDim0KindINT32(self, pos) result(answer)
         Integer(kind=INT32):: answer
         type(IntegerDim0KindINT32List), intent(in):: self
         integer, intent(in):: pos
         type(IntegerDim0KindINT32ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atIntegerDim0KindINT32
      function shiftIntegerDim0KindINT32(self) result(answer)
         Integer(kind=INT32):: answer
         type(IntegerDim0KindINT32List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftIntegerDim0KindINT32
      subroutine unshiftIntegerDim0KindINT32(self, val)
         type(IntegerDim0KindINT32List), intent(inout):: self
         Integer(kind=INT32), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftIntegerDim0KindINT32
      function delete_atIntegerDim0KindINT32(self, pos) result(answer)
         Integer(kind=INT32):: answer
         type(IntegerDim0KindINT32List), intent(inout):: self
         integer:: pos
         type(IntegerDim0KindINT32ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atIntegerDim0KindINT32
      function popIntegerDim0KindINT32(self) result(answer)
         Integer(kind=INT32):: answer
         type(IntegerDim0KindINT32List), intent(inout):: self
         type(IntegerDim0KindINT32ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popIntegerDim0KindINT32
      recursive subroutine clearIntegerDim0KindINT32(self)
         type(IntegerDim0KindINT32List), intent(inout):: self
         Integer(kind=INT32):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearIntegerDim0KindINT32
      subroutine insert_atIntegerDim0KindINT32(self, val, pos)
         type(IntegerDim0KindINT32List), intent(inout):: self
         Integer(kind=INT32), intent(in):: val
         integer, intent(in):: pos
         type(IntegerDim0KindINT32ListNode), pointer:: nextNode, newNode
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
      end subroutine insert_atIntegerDim0KindINT32
      subroutine pushIntegerDim0KindINT32(self, val)
         type(IntegerDim0KindINT32List), intent(inout):: self
         Integer(kind=INT32), intent(in):: val
         type(IntegerDim0KindINT32ListNode), pointer:: newNode
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
      end subroutine pushIntegerDim0KindINT32
      function is_emptyIntegerDim0KindINT32(self) result(answer)
         logical:: answer
         type(IntegerDim0KindINT32List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim0KindINT32
      function is_size_oneIntegerDim0KindINT32(self) result(answer)
         logical:: answer
         type(IntegerDim0KindINT32List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneIntegerDim0KindINT32
      function sizeIntegerDim0KindINT32(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(IntegerDim0KindINT32List), intent(in):: self
         type(IntegerDim0KindINT32ListNode), pointer:: walker
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
      end function sizeIntegerDim0KindINT32
      function array_from_listIntegerDim0KindINT32(self) result(answer)
         Integer(kind=INT32), allocatable:: answer(:)
         type(IntegerDim0KindINT32List), intent(in):: self
         answer = self
      end function array_from_listIntegerDim0KindINT32
      function almost_equalIntegerDim0KindINT32(self, other) result(answer)
         type(IntegerDim0KindINT32List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalIntegerDim0KindINT32
      ! Internal
      ! Create a size 1 list.
      subroutine newIntegerDim0KindINT32(self, val)
         type(IntegerDim0KindINT32List), intent(inout):: self
         Integer(kind=INT32), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newIntegerDim0KindINT32
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atIntegerDim0KindINT32(self, pos) result(answer)
         type(IntegerDim0KindINT32ListNode), pointer:: answer
         type(IntegerDim0KindINT32List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 7489, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atIntegerDim0KindINT32
      ! Cleate a deep copy of a list.
      subroutine copyIntegerDim0KindINT32(new, original)
         type(IntegerDim0KindINT32List), intent(inout):: new
         type(IntegerDim0KindINT32List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyIntegerDim0KindINT32
      subroutine swapIntegerDim0KindINT64(self, pos1, pos2)
         type(IntegerDim0KindINT64List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(IntegerDim0KindINT64ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(IntegerDim0KindINT64ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 7518, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
      end subroutine swapIntegerDim0KindINT64
      subroutine list_from_array_coercionIntegerDim0KindINT64(self, array)
         type(IntegerDim0KindINT64List), intent(inout):: self
         Integer(kind=INT64), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionIntegerDim0KindINT64
      subroutine array_from_list_coercionIntegerDim0KindINT64(array, list)
         Integer(kind=INT64), allocatable, intent(out):: array(:)
         type(IntegerDim0KindINT64List), intent(in):: list
         integer:: i, nList
         type(IntegerDim0KindINT64ListNode), pointer:: walker
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
      end subroutine array_from_list_coercionIntegerDim0KindINT64
      function val_atIntegerDim0KindINT64(self, pos) result(answer)
         Integer(kind=INT64):: answer
         type(IntegerDim0KindINT64List), intent(in):: self
         integer, intent(in):: pos
         type(IntegerDim0KindINT64ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atIntegerDim0KindINT64
      function shiftIntegerDim0KindINT64(self) result(answer)
         Integer(kind=INT64):: answer
         type(IntegerDim0KindINT64List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftIntegerDim0KindINT64
      subroutine unshiftIntegerDim0KindINT64(self, val)
         type(IntegerDim0KindINT64List), intent(inout):: self
         Integer(kind=INT64), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftIntegerDim0KindINT64
      function delete_atIntegerDim0KindINT64(self, pos) result(answer)
         Integer(kind=INT64):: answer
         type(IntegerDim0KindINT64List), intent(inout):: self
         integer:: pos
         type(IntegerDim0KindINT64ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atIntegerDim0KindINT64
      function popIntegerDim0KindINT64(self) result(answer)
         Integer(kind=INT64):: answer
         type(IntegerDim0KindINT64List), intent(inout):: self
         type(IntegerDim0KindINT64ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popIntegerDim0KindINT64
      recursive subroutine clearIntegerDim0KindINT64(self)
         type(IntegerDim0KindINT64List), intent(inout):: self
         Integer(kind=INT64):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearIntegerDim0KindINT64
      subroutine insert_atIntegerDim0KindINT64(self, val, pos)
         type(IntegerDim0KindINT64List), intent(inout):: self
         Integer(kind=INT64), intent(in):: val
         integer, intent(in):: pos
         type(IntegerDim0KindINT64ListNode), pointer:: nextNode, newNode
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
      end subroutine insert_atIntegerDim0KindINT64
      subroutine pushIntegerDim0KindINT64(self, val)
         type(IntegerDim0KindINT64List), intent(inout):: self
         Integer(kind=INT64), intent(in):: val
         type(IntegerDim0KindINT64ListNode), pointer:: newNode
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
      end subroutine pushIntegerDim0KindINT64
      function is_emptyIntegerDim0KindINT64(self) result(answer)
         logical:: answer
         type(IntegerDim0KindINT64List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyIntegerDim0KindINT64
      function is_size_oneIntegerDim0KindINT64(self) result(answer)
         logical:: answer
         type(IntegerDim0KindINT64List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneIntegerDim0KindINT64
      function sizeIntegerDim0KindINT64(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(IntegerDim0KindINT64List), intent(in):: self
         type(IntegerDim0KindINT64ListNode), pointer:: walker
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
      end function sizeIntegerDim0KindINT64
      function array_from_listIntegerDim0KindINT64(self) result(answer)
         Integer(kind=INT64), allocatable:: answer(:)
         type(IntegerDim0KindINT64List), intent(in):: self
         answer = self
      end function array_from_listIntegerDim0KindINT64
      function almost_equalIntegerDim0KindINT64(self, other) result(answer)
         type(IntegerDim0KindINT64List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalIntegerDim0KindINT64
      ! Internal
      ! Create a size 1 list.
      subroutine newIntegerDim0KindINT64(self, val)
         type(IntegerDim0KindINT64List), intent(inout):: self
         Integer(kind=INT64), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newIntegerDim0KindINT64
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atIntegerDim0KindINT64(self, pos) result(answer)
         type(IntegerDim0KindINT64ListNode), pointer:: answer
         type(IntegerDim0KindINT64List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 7780, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atIntegerDim0KindINT64
      ! Cleate a deep copy of a list.
      subroutine copyIntegerDim0KindINT64(new, original)
         type(IntegerDim0KindINT64List), intent(inout):: new
         type(IntegerDim0KindINT64List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyIntegerDim0KindINT64
      subroutine swapRealDim0KindREAL32(self, pos1, pos2)
         type(RealDim0KindREAL32List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(RealDim0KindREAL32ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(RealDim0KindREAL32ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 7809, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
      end subroutine swapRealDim0KindREAL32
      subroutine list_from_array_coercionRealDim0KindREAL32(self, array)
         type(RealDim0KindREAL32List), intent(inout):: self
         Real(kind=REAL32), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionRealDim0KindREAL32
      subroutine array_from_list_coercionRealDim0KindREAL32(array, list)
         Real(kind=REAL32), allocatable, intent(out):: array(:)
         type(RealDim0KindREAL32List), intent(in):: list
         integer:: i, nList
         type(RealDim0KindREAL32ListNode), pointer:: walker
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
      end subroutine array_from_list_coercionRealDim0KindREAL32
      function val_atRealDim0KindREAL32(self, pos) result(answer)
         Real(kind=REAL32):: answer
         type(RealDim0KindREAL32List), intent(in):: self
         integer, intent(in):: pos
         type(RealDim0KindREAL32ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atRealDim0KindREAL32
      function shiftRealDim0KindREAL32(self) result(answer)
         Real(kind=REAL32):: answer
         type(RealDim0KindREAL32List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftRealDim0KindREAL32
      subroutine unshiftRealDim0KindREAL32(self, val)
         type(RealDim0KindREAL32List), intent(inout):: self
         Real(kind=REAL32), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftRealDim0KindREAL32
      function delete_atRealDim0KindREAL32(self, pos) result(answer)
         Real(kind=REAL32):: answer
         type(RealDim0KindREAL32List), intent(inout):: self
         integer:: pos
         type(RealDim0KindREAL32ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atRealDim0KindREAL32
      function popRealDim0KindREAL32(self) result(answer)
         Real(kind=REAL32):: answer
         type(RealDim0KindREAL32List), intent(inout):: self
         type(RealDim0KindREAL32ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popRealDim0KindREAL32
      recursive subroutine clearRealDim0KindREAL32(self)
         type(RealDim0KindREAL32List), intent(inout):: self
         Real(kind=REAL32):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearRealDim0KindREAL32
      subroutine insert_atRealDim0KindREAL32(self, val, pos)
         type(RealDim0KindREAL32List), intent(inout):: self
         Real(kind=REAL32), intent(in):: val
         integer, intent(in):: pos
         type(RealDim0KindREAL32ListNode), pointer:: nextNode, newNode
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
      end subroutine insert_atRealDim0KindREAL32
      subroutine pushRealDim0KindREAL32(self, val)
         type(RealDim0KindREAL32List), intent(inout):: self
         Real(kind=REAL32), intent(in):: val
         type(RealDim0KindREAL32ListNode), pointer:: newNode
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
      end subroutine pushRealDim0KindREAL32
      function is_emptyRealDim0KindREAL32(self) result(answer)
         logical:: answer
         type(RealDim0KindREAL32List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyRealDim0KindREAL32
      function is_size_oneRealDim0KindREAL32(self) result(answer)
         logical:: answer
         type(RealDim0KindREAL32List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneRealDim0KindREAL32
      function sizeRealDim0KindREAL32(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(RealDim0KindREAL32List), intent(in):: self
         type(RealDim0KindREAL32ListNode), pointer:: walker
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
      end function sizeRealDim0KindREAL32
      function array_from_listRealDim0KindREAL32(self) result(answer)
         Real(kind=REAL32), allocatable:: answer(:)
         type(RealDim0KindREAL32List), intent(in):: self
         answer = self
      end function array_from_listRealDim0KindREAL32
      function almost_equalRealDim0KindREAL32(self, other) result(answer)
         type(RealDim0KindREAL32List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalRealDim0KindREAL32
      ! Internal
      ! Create a size 1 list.
      subroutine newRealDim0KindREAL32(self, val)
         type(RealDim0KindREAL32List), intent(inout):: self
         Real(kind=REAL32), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newRealDim0KindREAL32
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atRealDim0KindREAL32(self, pos) result(answer)
         type(RealDim0KindREAL32ListNode), pointer:: answer
         type(RealDim0KindREAL32List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 8071, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atRealDim0KindREAL32
      ! Cleate a deep copy of a list.
      subroutine copyRealDim0KindREAL32(new, original)
         type(RealDim0KindREAL32List), intent(inout):: new
         type(RealDim0KindREAL32List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyRealDim0KindREAL32
      subroutine swapRealDim0KindREAL64(self, pos1, pos2)
         type(RealDim0KindREAL64List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(RealDim0KindREAL64ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(RealDim0KindREAL64ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 8100, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
      end subroutine swapRealDim0KindREAL64
      subroutine list_from_array_coercionRealDim0KindREAL64(self, array)
         type(RealDim0KindREAL64List), intent(inout):: self
         Real(kind=REAL64), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionRealDim0KindREAL64
      subroutine array_from_list_coercionRealDim0KindREAL64(array, list)
         Real(kind=REAL64), allocatable, intent(out):: array(:)
         type(RealDim0KindREAL64List), intent(in):: list
         integer:: i, nList
         type(RealDim0KindREAL64ListNode), pointer:: walker
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
      end subroutine array_from_list_coercionRealDim0KindREAL64
      function val_atRealDim0KindREAL64(self, pos) result(answer)
         Real(kind=REAL64):: answer
         type(RealDim0KindREAL64List), intent(in):: self
         integer, intent(in):: pos
         type(RealDim0KindREAL64ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atRealDim0KindREAL64
      function shiftRealDim0KindREAL64(self) result(answer)
         Real(kind=REAL64):: answer
         type(RealDim0KindREAL64List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftRealDim0KindREAL64
      subroutine unshiftRealDim0KindREAL64(self, val)
         type(RealDim0KindREAL64List), intent(inout):: self
         Real(kind=REAL64), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftRealDim0KindREAL64
      function delete_atRealDim0KindREAL64(self, pos) result(answer)
         Real(kind=REAL64):: answer
         type(RealDim0KindREAL64List), intent(inout):: self
         integer:: pos
         type(RealDim0KindREAL64ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atRealDim0KindREAL64
      function popRealDim0KindREAL64(self) result(answer)
         Real(kind=REAL64):: answer
         type(RealDim0KindREAL64List), intent(inout):: self
         type(RealDim0KindREAL64ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popRealDim0KindREAL64
      recursive subroutine clearRealDim0KindREAL64(self)
         type(RealDim0KindREAL64List), intent(inout):: self
         Real(kind=REAL64):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearRealDim0KindREAL64
      subroutine insert_atRealDim0KindREAL64(self, val, pos)
         type(RealDim0KindREAL64List), intent(inout):: self
         Real(kind=REAL64), intent(in):: val
         integer, intent(in):: pos
         type(RealDim0KindREAL64ListNode), pointer:: nextNode, newNode
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
      end subroutine insert_atRealDim0KindREAL64
      subroutine pushRealDim0KindREAL64(self, val)
         type(RealDim0KindREAL64List), intent(inout):: self
         Real(kind=REAL64), intent(in):: val
         type(RealDim0KindREAL64ListNode), pointer:: newNode
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
      end subroutine pushRealDim0KindREAL64
      function is_emptyRealDim0KindREAL64(self) result(answer)
         logical:: answer
         type(RealDim0KindREAL64List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyRealDim0KindREAL64
      function is_size_oneRealDim0KindREAL64(self) result(answer)
         logical:: answer
         type(RealDim0KindREAL64List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneRealDim0KindREAL64
      function sizeRealDim0KindREAL64(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(RealDim0KindREAL64List), intent(in):: self
         type(RealDim0KindREAL64ListNode), pointer:: walker
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
      end function sizeRealDim0KindREAL64
      function array_from_listRealDim0KindREAL64(self) result(answer)
         Real(kind=REAL64), allocatable:: answer(:)
         type(RealDim0KindREAL64List), intent(in):: self
         answer = self
      end function array_from_listRealDim0KindREAL64
      function almost_equalRealDim0KindREAL64(self, other) result(answer)
         type(RealDim0KindREAL64List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalRealDim0KindREAL64
      ! Internal
      ! Create a size 1 list.
      subroutine newRealDim0KindREAL64(self, val)
         type(RealDim0KindREAL64List), intent(inout):: self
         Real(kind=REAL64), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newRealDim0KindREAL64
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atRealDim0KindREAL64(self, pos) result(answer)
         type(RealDim0KindREAL64ListNode), pointer:: answer
         type(RealDim0KindREAL64List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 8362, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atRealDim0KindREAL64
      ! Cleate a deep copy of a list.
      subroutine copyRealDim0KindREAL64(new, original)
         type(RealDim0KindREAL64List), intent(inout):: new
         type(RealDim0KindREAL64List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyRealDim0KindREAL64
      subroutine swapRealDim0KindREAL128(self, pos1, pos2)
         type(RealDim0KindREAL128List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(RealDim0KindREAL128ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(RealDim0KindREAL128ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 8391, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
      end subroutine swapRealDim0KindREAL128
      subroutine list_from_array_coercionRealDim0KindREAL128(self, array)
         type(RealDim0KindREAL128List), intent(inout):: self
         Real(kind=REAL128), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionRealDim0KindREAL128
      subroutine array_from_list_coercionRealDim0KindREAL128(array, list)
         Real(kind=REAL128), allocatable, intent(out):: array(:)
         type(RealDim0KindREAL128List), intent(in):: list
         integer:: i, nList
         type(RealDim0KindREAL128ListNode), pointer:: walker
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
      end subroutine array_from_list_coercionRealDim0KindREAL128
      function val_atRealDim0KindREAL128(self, pos) result(answer)
         Real(kind=REAL128):: answer
         type(RealDim0KindREAL128List), intent(in):: self
         integer, intent(in):: pos
         type(RealDim0KindREAL128ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atRealDim0KindREAL128
      function shiftRealDim0KindREAL128(self) result(answer)
         Real(kind=REAL128):: answer
         type(RealDim0KindREAL128List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftRealDim0KindREAL128
      subroutine unshiftRealDim0KindREAL128(self, val)
         type(RealDim0KindREAL128List), intent(inout):: self
         Real(kind=REAL128), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftRealDim0KindREAL128
      function delete_atRealDim0KindREAL128(self, pos) result(answer)
         Real(kind=REAL128):: answer
         type(RealDim0KindREAL128List), intent(inout):: self
         integer:: pos
         type(RealDim0KindREAL128ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atRealDim0KindREAL128
      function popRealDim0KindREAL128(self) result(answer)
         Real(kind=REAL128):: answer
         type(RealDim0KindREAL128List), intent(inout):: self
         type(RealDim0KindREAL128ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popRealDim0KindREAL128
      recursive subroutine clearRealDim0KindREAL128(self)
         type(RealDim0KindREAL128List), intent(inout):: self
         Real(kind=REAL128):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearRealDim0KindREAL128
      subroutine insert_atRealDim0KindREAL128(self, val, pos)
         type(RealDim0KindREAL128List), intent(inout):: self
         Real(kind=REAL128), intent(in):: val
         integer, intent(in):: pos
         type(RealDim0KindREAL128ListNode), pointer:: nextNode, newNode
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
      end subroutine insert_atRealDim0KindREAL128
      subroutine pushRealDim0KindREAL128(self, val)
         type(RealDim0KindREAL128List), intent(inout):: self
         Real(kind=REAL128), intent(in):: val
         type(RealDim0KindREAL128ListNode), pointer:: newNode
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
      end subroutine pushRealDim0KindREAL128
      function is_emptyRealDim0KindREAL128(self) result(answer)
         logical:: answer
         type(RealDim0KindREAL128List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyRealDim0KindREAL128
      function is_size_oneRealDim0KindREAL128(self) result(answer)
         logical:: answer
         type(RealDim0KindREAL128List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneRealDim0KindREAL128
      function sizeRealDim0KindREAL128(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(RealDim0KindREAL128List), intent(in):: self
         type(RealDim0KindREAL128ListNode), pointer:: walker
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
      end function sizeRealDim0KindREAL128
      function array_from_listRealDim0KindREAL128(self) result(answer)
         Real(kind=REAL128), allocatable:: answer(:)
         type(RealDim0KindREAL128List), intent(in):: self
         answer = self
      end function array_from_listRealDim0KindREAL128
      function almost_equalRealDim0KindREAL128(self, other) result(answer)
         type(RealDim0KindREAL128List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalRealDim0KindREAL128
      ! Internal
      ! Create a size 1 list.
      subroutine newRealDim0KindREAL128(self, val)
         type(RealDim0KindREAL128List), intent(inout):: self
         Real(kind=REAL128), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newRealDim0KindREAL128
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atRealDim0KindREAL128(self, pos) result(answer)
         type(RealDim0KindREAL128ListNode), pointer:: answer
         type(RealDim0KindREAL128List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 8653, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atRealDim0KindREAL128
      ! Cleate a deep copy of a list.
      subroutine copyRealDim0KindREAL128(new, original)
         type(RealDim0KindREAL128List), intent(inout):: new
         type(RealDim0KindREAL128List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyRealDim0KindREAL128
      subroutine swapComplexDim0KindREAL32(self, pos1, pos2)
         type(ComplexDim0KindREAL32List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(ComplexDim0KindREAL32ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(ComplexDim0KindREAL32ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 8682, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
      end subroutine swapComplexDim0KindREAL32
      subroutine list_from_array_coercionComplexDim0KindREAL32(self, array)
         type(ComplexDim0KindREAL32List), intent(inout):: self
         Complex(kind=REAL32), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionComplexDim0KindREAL32
      subroutine array_from_list_coercionComplexDim0KindREAL32(array, list)
         Complex(kind=REAL32), allocatable, intent(out):: array(:)
         type(ComplexDim0KindREAL32List), intent(in):: list
         integer:: i, nList
         type(ComplexDim0KindREAL32ListNode), pointer:: walker
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
      end subroutine array_from_list_coercionComplexDim0KindREAL32
      function val_atComplexDim0KindREAL32(self, pos) result(answer)
         Complex(kind=REAL32):: answer
         type(ComplexDim0KindREAL32List), intent(in):: self
         integer, intent(in):: pos
         type(ComplexDim0KindREAL32ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atComplexDim0KindREAL32
      function shiftComplexDim0KindREAL32(self) result(answer)
         Complex(kind=REAL32):: answer
         type(ComplexDim0KindREAL32List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftComplexDim0KindREAL32
      subroutine unshiftComplexDim0KindREAL32(self, val)
         type(ComplexDim0KindREAL32List), intent(inout):: self
         Complex(kind=REAL32), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftComplexDim0KindREAL32
      function delete_atComplexDim0KindREAL32(self, pos) result(answer)
         Complex(kind=REAL32):: answer
         type(ComplexDim0KindREAL32List), intent(inout):: self
         integer:: pos
         type(ComplexDim0KindREAL32ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atComplexDim0KindREAL32
      function popComplexDim0KindREAL32(self) result(answer)
         Complex(kind=REAL32):: answer
         type(ComplexDim0KindREAL32List), intent(inout):: self
         type(ComplexDim0KindREAL32ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popComplexDim0KindREAL32
      recursive subroutine clearComplexDim0KindREAL32(self)
         type(ComplexDim0KindREAL32List), intent(inout):: self
         Complex(kind=REAL32):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearComplexDim0KindREAL32
      subroutine insert_atComplexDim0KindREAL32(self, val, pos)
         type(ComplexDim0KindREAL32List), intent(inout):: self
         Complex(kind=REAL32), intent(in):: val
         integer, intent(in):: pos
         type(ComplexDim0KindREAL32ListNode), pointer:: nextNode, newNode
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
      end subroutine insert_atComplexDim0KindREAL32
      subroutine pushComplexDim0KindREAL32(self, val)
         type(ComplexDim0KindREAL32List), intent(inout):: self
         Complex(kind=REAL32), intent(in):: val
         type(ComplexDim0KindREAL32ListNode), pointer:: newNode
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
      end subroutine pushComplexDim0KindREAL32
      function is_emptyComplexDim0KindREAL32(self) result(answer)
         logical:: answer
         type(ComplexDim0KindREAL32List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim0KindREAL32
      function is_size_oneComplexDim0KindREAL32(self) result(answer)
         logical:: answer
         type(ComplexDim0KindREAL32List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneComplexDim0KindREAL32
      function sizeComplexDim0KindREAL32(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(ComplexDim0KindREAL32List), intent(in):: self
         type(ComplexDim0KindREAL32ListNode), pointer:: walker
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
      end function sizeComplexDim0KindREAL32
      function array_from_listComplexDim0KindREAL32(self) result(answer)
         Complex(kind=REAL32), allocatable:: answer(:)
         type(ComplexDim0KindREAL32List), intent(in):: self
         answer = self
      end function array_from_listComplexDim0KindREAL32
      function almost_equalComplexDim0KindREAL32(self, other) result(answer)
         type(ComplexDim0KindREAL32List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalComplexDim0KindREAL32
      ! Internal
      ! Create a size 1 list.
      subroutine newComplexDim0KindREAL32(self, val)
         type(ComplexDim0KindREAL32List), intent(inout):: self
         Complex(kind=REAL32), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newComplexDim0KindREAL32
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atComplexDim0KindREAL32(self, pos) result(answer)
         type(ComplexDim0KindREAL32ListNode), pointer:: answer
         type(ComplexDim0KindREAL32List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 8944, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atComplexDim0KindREAL32
      ! Cleate a deep copy of a list.
      subroutine copyComplexDim0KindREAL32(new, original)
         type(ComplexDim0KindREAL32List), intent(inout):: new
         type(ComplexDim0KindREAL32List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyComplexDim0KindREAL32
      subroutine swapComplexDim0KindREAL64(self, pos1, pos2)
         type(ComplexDim0KindREAL64List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(ComplexDim0KindREAL64ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(ComplexDim0KindREAL64ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 8973, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
      end subroutine swapComplexDim0KindREAL64
      subroutine list_from_array_coercionComplexDim0KindREAL64(self, array)
         type(ComplexDim0KindREAL64List), intent(inout):: self
         Complex(kind=REAL64), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionComplexDim0KindREAL64
      subroutine array_from_list_coercionComplexDim0KindREAL64(array, list)
         Complex(kind=REAL64), allocatable, intent(out):: array(:)
         type(ComplexDim0KindREAL64List), intent(in):: list
         integer:: i, nList
         type(ComplexDim0KindREAL64ListNode), pointer:: walker
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
      end subroutine array_from_list_coercionComplexDim0KindREAL64
      function val_atComplexDim0KindREAL64(self, pos) result(answer)
         Complex(kind=REAL64):: answer
         type(ComplexDim0KindREAL64List), intent(in):: self
         integer, intent(in):: pos
         type(ComplexDim0KindREAL64ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atComplexDim0KindREAL64
      function shiftComplexDim0KindREAL64(self) result(answer)
         Complex(kind=REAL64):: answer
         type(ComplexDim0KindREAL64List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftComplexDim0KindREAL64
      subroutine unshiftComplexDim0KindREAL64(self, val)
         type(ComplexDim0KindREAL64List), intent(inout):: self
         Complex(kind=REAL64), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftComplexDim0KindREAL64
      function delete_atComplexDim0KindREAL64(self, pos) result(answer)
         Complex(kind=REAL64):: answer
         type(ComplexDim0KindREAL64List), intent(inout):: self
         integer:: pos
         type(ComplexDim0KindREAL64ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atComplexDim0KindREAL64
      function popComplexDim0KindREAL64(self) result(answer)
         Complex(kind=REAL64):: answer
         type(ComplexDim0KindREAL64List), intent(inout):: self
         type(ComplexDim0KindREAL64ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popComplexDim0KindREAL64
      recursive subroutine clearComplexDim0KindREAL64(self)
         type(ComplexDim0KindREAL64List), intent(inout):: self
         Complex(kind=REAL64):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearComplexDim0KindREAL64
      subroutine insert_atComplexDim0KindREAL64(self, val, pos)
         type(ComplexDim0KindREAL64List), intent(inout):: self
         Complex(kind=REAL64), intent(in):: val
         integer, intent(in):: pos
         type(ComplexDim0KindREAL64ListNode), pointer:: nextNode, newNode
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
      end subroutine insert_atComplexDim0KindREAL64
      subroutine pushComplexDim0KindREAL64(self, val)
         type(ComplexDim0KindREAL64List), intent(inout):: self
         Complex(kind=REAL64), intent(in):: val
         type(ComplexDim0KindREAL64ListNode), pointer:: newNode
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
      end subroutine pushComplexDim0KindREAL64
      function is_emptyComplexDim0KindREAL64(self) result(answer)
         logical:: answer
         type(ComplexDim0KindREAL64List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim0KindREAL64
      function is_size_oneComplexDim0KindREAL64(self) result(answer)
         logical:: answer
         type(ComplexDim0KindREAL64List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneComplexDim0KindREAL64
      function sizeComplexDim0KindREAL64(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(ComplexDim0KindREAL64List), intent(in):: self
         type(ComplexDim0KindREAL64ListNode), pointer:: walker
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
      end function sizeComplexDim0KindREAL64
      function array_from_listComplexDim0KindREAL64(self) result(answer)
         Complex(kind=REAL64), allocatable:: answer(:)
         type(ComplexDim0KindREAL64List), intent(in):: self
         answer = self
      end function array_from_listComplexDim0KindREAL64
      function almost_equalComplexDim0KindREAL64(self, other) result(answer)
         type(ComplexDim0KindREAL64List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalComplexDim0KindREAL64
      ! Internal
      ! Create a size 1 list.
      subroutine newComplexDim0KindREAL64(self, val)
         type(ComplexDim0KindREAL64List), intent(inout):: self
         Complex(kind=REAL64), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newComplexDim0KindREAL64
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atComplexDim0KindREAL64(self, pos) result(answer)
         type(ComplexDim0KindREAL64ListNode), pointer:: answer
         type(ComplexDim0KindREAL64List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 9235, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atComplexDim0KindREAL64
      ! Cleate a deep copy of a list.
      subroutine copyComplexDim0KindREAL64(new, original)
         type(ComplexDim0KindREAL64List), intent(inout):: new
         type(ComplexDim0KindREAL64List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyComplexDim0KindREAL64
      subroutine swapComplexDim0KindREAL128(self, pos1, pos2)
         type(ComplexDim0KindREAL128List), intent(inout):: self
         integer, intent(in):: pos1, pos2
         type(ComplexDim0KindREAL128ListNode), pointer:: posLNodePrev, posLNode, posLNodeNext
         type(ComplexDim0KindREAL128ListNode), pointer:: posRNodePrev, posRNode, posRNodeNext
         integer:: posL, posR, nSelf
         posL = min(pos1, pos2)
         posR = max(pos1, pos2)
         nSelf = size(self)
         if(.not.(1 <= posL .and. posR <= nSelf))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 9264, (".not.(1 <= posL .and. posR <= nSelf)"); error stop; end if
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
      end subroutine swapComplexDim0KindREAL128
      subroutine list_from_array_coercionComplexDim0KindREAL128(self, array)
         type(ComplexDim0KindREAL128List), intent(inout):: self
         Complex(kind=REAL128), intent(in):: array(:)
         Integer(kind = INT64):: i
         if(.not.is_empty(self)) call clear(self)
         do i = lbound(array, dim=1, kind=kind(i)), ubound(array, dim=1, kind=kind(i))
            call push(self, array(i))
         end do
      end subroutine list_from_array_coercionComplexDim0KindREAL128
      subroutine array_from_list_coercionComplexDim0KindREAL128(array, list)
         Complex(kind=REAL128), allocatable, intent(out):: array(:)
         type(ComplexDim0KindREAL128List), intent(in):: list
         integer:: i, nList
         type(ComplexDim0KindREAL128ListNode), pointer:: walker
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
      end subroutine array_from_list_coercionComplexDim0KindREAL128
      function val_atComplexDim0KindREAL128(self, pos) result(answer)
         Complex(kind=REAL128):: answer
         type(ComplexDim0KindREAL128List), intent(in):: self
         integer, intent(in):: pos
         type(ComplexDim0KindREAL128ListNode), pointer:: targetNode
         targetNode => node_at(self, pos)
         answer = targetNode%val
      end function val_atComplexDim0KindREAL128
      function shiftComplexDim0KindREAL128(self) result(answer)
         Complex(kind=REAL128):: answer
         type(ComplexDim0KindREAL128List), intent(inout):: self
         answer = delete_at(self, 1)
      end function shiftComplexDim0KindREAL128
      subroutine unshiftComplexDim0KindREAL128(self, val)
         type(ComplexDim0KindREAL128List), intent(inout):: self
         Complex(kind=REAL128), intent(in):: val
         call insert_at(self, val, 1)
      end subroutine unshiftComplexDim0KindREAL128
      function delete_atComplexDim0KindREAL128(self, pos) result(answer)
         Complex(kind=REAL128):: answer
         type(ComplexDim0KindREAL128List), intent(inout):: self
         integer:: pos
         type(ComplexDim0KindREAL128ListNode), pointer:: targetNode
         if(pos == size(self))then
            answer = pop(self)
            return
         end if
         targetNode => node_at(self, pos)
         answer = targetNode%val
         if(associated(targetNode%prev)) targetNode%prev%next => targetNode%next
         targetNode%next%prev => targetNode%prev
         deallocate(targetNode)
      end function delete_atComplexDim0KindREAL128
      function popComplexDim0KindREAL128(self) result(answer)
         Complex(kind=REAL128):: answer
         type(ComplexDim0KindREAL128List), intent(inout):: self
         type(ComplexDim0KindREAL128ListNode), pointer:: targetNode
         targetNode => self%entry
         answer = targetNode%val
         if(is_size_one(self))then
            deallocate(self%entry)
            return
         end if
         self%entry => targetNode%prev
         self%entry%next => targetNode%next
         deallocate(targetNode)
      end function popComplexDim0KindREAL128
      recursive subroutine clearComplexDim0KindREAL128(self)
         type(ComplexDim0KindREAL128List), intent(inout):: self
         Complex(kind=REAL128):: trash
         do while(associated(self%entry))
            trash = pop(self)
         end do
      end subroutine clearComplexDim0KindREAL128
      subroutine insert_atComplexDim0KindREAL128(self, val, pos)
         type(ComplexDim0KindREAL128List), intent(inout):: self
         Complex(kind=REAL128), intent(in):: val
         integer, intent(in):: pos
         type(ComplexDim0KindREAL128ListNode), pointer:: nextNode, newNode
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
      end subroutine insert_atComplexDim0KindREAL128
      subroutine pushComplexDim0KindREAL128(self, val)
         type(ComplexDim0KindREAL128List), intent(inout):: self
         Complex(kind=REAL128), intent(in):: val
         type(ComplexDim0KindREAL128ListNode), pointer:: newNode
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
      end subroutine pushComplexDim0KindREAL128
      function is_emptyComplexDim0KindREAL128(self) result(answer)
         logical:: answer
         type(ComplexDim0KindREAL128List), intent(in):: self
         answer = .not.associated(self%entry)
      end function is_emptyComplexDim0KindREAL128
      function is_size_oneComplexDim0KindREAL128(self) result(answer)
         logical:: answer
         type(ComplexDim0KindREAL128List), intent(in):: self
         answer = .true.
         if(is_empty(self))then
             answer = .false.
             return
         end if
         if(associated(self%entry%prev))then
             answer = .false.
             return
         end if
      end function is_size_oneComplexDim0KindREAL128
      function sizeComplexDim0KindREAL128(self) result(answer)
         ! answer is integer since maximum size(array, 1) is huge(0).
         integer:: answer
         type(ComplexDim0KindREAL128List), intent(in):: self
         type(ComplexDim0KindREAL128ListNode), pointer:: walker
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
      end function sizeComplexDim0KindREAL128
      function array_from_listComplexDim0KindREAL128(self) result(answer)
         Complex(kind=REAL128), allocatable:: answer(:)
         type(ComplexDim0KindREAL128List), intent(in):: self
         answer = self
      end function array_from_listComplexDim0KindREAL128
      function almost_equalComplexDim0KindREAL128(self, other) result(answer)
         type(ComplexDim0KindREAL128List), intent(in):: self, other
         Logical:: answer
         answer = all(almost_equal(array_from_list(self), array_from_list(other)))
      end function almost_equalComplexDim0KindREAL128
      ! Internal
      ! Create a size 1 list.
      subroutine newComplexDim0KindREAL128(self, val)
         type(ComplexDim0KindREAL128List), intent(inout):: self
         Complex(kind=REAL128), intent(in):: val
         if(.not.is_empty(self))then
            call clear(self)
         end if
         allocate(self%entry)
         self%entry%val = val
      end subroutine newComplexDim0KindREAL128
      ! N-th node.
      ! WARNING: Returns pointer!
      ! BAD: targetNode = node_at(self, pos)
      ! OK: targetNode => node_at(self, pos)
      function node_atComplexDim0KindREAL128(self, pos) result(answer)
         type(ComplexDim0KindREAL128ListNode), pointer:: answer
         type(ComplexDim0KindREAL128List), intent(in):: self
         integer, intent(in):: pos
         integer:: posNow
         if(.not.(1 <= pos .and. pos <= size(self)))then; write(ERROR_UNIT, *) "RAISE: ", "list_lib.f90", " ", 9526, (".not.(1 <= pos .and. pos <= size(self))"); error stop; end if
         answer => self%entry
         posNow = size(self)
         do while(posNow > pos)
            answer => answer%prev
            posNow = posNow - 1
         end do
      end function node_atComplexDim0KindREAL128
      ! Cleate a deep copy of a list.
      subroutine copyComplexDim0KindREAL128(new, original)
         type(ComplexDim0KindREAL128List), intent(inout):: new
         type(ComplexDim0KindREAL128List), intent(in):: original
         new = array_from_list(original)
      end subroutine copyComplexDim0KindREAL128
end module list_lib
