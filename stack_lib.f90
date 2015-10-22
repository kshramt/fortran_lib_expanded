module stack_lib
   use, intrinsic:: iso_fortran_env, only: int64
      use, intrinsic:: iso_fortran_env, only: real32
      use, intrinsic:: iso_fortran_env, only: real64
      use, intrinsic:: iso_fortran_env, only: real128
      use, intrinsic:: iso_fortran_env, only: real32
      use, intrinsic:: iso_fortran_env, only: real64
      use, intrinsic:: iso_fortran_env, only: real128
      use, intrinsic:: iso_fortran_env, only: real32
      use, intrinsic:: iso_fortran_env, only: real64
      use, intrinsic:: iso_fortran_env, only: real128
      use, intrinsic:: iso_fortran_env, only: real32
      use, intrinsic:: iso_fortran_env, only: real64
      use, intrinsic:: iso_fortran_env, only: real128
      use, intrinsic:: iso_fortran_env, only: real32
      use, intrinsic:: iso_fortran_env, only: real64
      use, intrinsic:: iso_fortran_env, only: real128
      use, intrinsic:: iso_fortran_env, only: real32
      use, intrinsic:: iso_fortran_env, only: real64
      use, intrinsic:: iso_fortran_env, only: real128
      use, intrinsic:: iso_fortran_env, only: real32
      use, intrinsic:: iso_fortran_env, only: real64
      use, intrinsic:: iso_fortran_env, only: real128
      use, intrinsic:: iso_fortran_env, only: real32
      use, intrinsic:: iso_fortran_env, only: real64
      use, intrinsic:: iso_fortran_env, only: real128
      use, intrinsic:: iso_fortran_env, only: int8
      use, intrinsic:: iso_fortran_env, only: int16
      use, intrinsic:: iso_fortran_env, only: int32
      use, intrinsic:: iso_fortran_env, only: int64
      use, intrinsic:: iso_fortran_env, only: int8
      use, intrinsic:: iso_fortran_env, only: int16
      use, intrinsic:: iso_fortran_env, only: int32
      use, intrinsic:: iso_fortran_env, only: int64
      use, intrinsic:: iso_fortran_env, only: int8
      use, intrinsic:: iso_fortran_env, only: int16
      use, intrinsic:: iso_fortran_env, only: int32
      use, intrinsic:: iso_fortran_env, only: int64
      use, intrinsic:: iso_fortran_env, only: int8
      use, intrinsic:: iso_fortran_env, only: int16
      use, intrinsic:: iso_fortran_env, only: int32
      use, intrinsic:: iso_fortran_env, only: int64
      use, intrinsic:: iso_fortran_env, only: int8
      use, intrinsic:: iso_fortran_env, only: int16
      use, intrinsic:: iso_fortran_env, only: int32
      use, intrinsic:: iso_fortran_env, only: int64
      use, intrinsic:: iso_fortran_env, only: int8
      use, intrinsic:: iso_fortran_env, only: int16
      use, intrinsic:: iso_fortran_env, only: int32
      use, intrinsic:: iso_fortran_env, only: int64
      use, intrinsic:: iso_fortran_env, only: int8
      use, intrinsic:: iso_fortran_env, only: int16
      use, intrinsic:: iso_fortran_env, only: int32
      use, intrinsic:: iso_fortran_env, only: int64
      use, intrinsic:: iso_fortran_env, only: int8
      use, intrinsic:: iso_fortran_env, only: int16
      use, intrinsic:: iso_fortran_env, only: int32
      use, intrinsic:: iso_fortran_env, only: int64
      use, intrinsic:: iso_fortran_env, only: int8
      use, intrinsic:: iso_fortran_env, only: int16
      use, intrinsic:: iso_fortran_env, only: int32
      use, intrinsic:: iso_fortran_env, only: int64
      use, intrinsic:: iso_fortran_env, only: int8
      use, intrinsic:: iso_fortran_env, only: int16
      use, intrinsic:: iso_fortran_env, only: int32
      use, intrinsic:: iso_fortran_env, only: int64
      use, intrinsic:: iso_fortran_env, only: int8
      use, intrinsic:: iso_fortran_env, only: int16
      use, intrinsic:: iso_fortran_env, only: int32
      use, intrinsic:: iso_fortran_env, only: int64
      use, intrinsic:: iso_fortran_env, only: int8
      use, intrinsic:: iso_fortran_env, only: int16
      use, intrinsic:: iso_fortran_env, only: int32
      use, intrinsic:: iso_fortran_env, only: int64
      use, intrinsic:: iso_fortran_env, only: int8
      use, intrinsic:: iso_fortran_env, only: int16
      use, intrinsic:: iso_fortran_env, only: int32
      use, intrinsic:: iso_fortran_env, only: int64
      use, intrinsic:: iso_fortran_env, only: int8
      use, intrinsic:: iso_fortran_env, only: int16
      use, intrinsic:: iso_fortran_env, only: int32
      use, intrinsic:: iso_fortran_env, only: int64
      use, intrinsic:: iso_fortran_env, only: int8
      use, intrinsic:: iso_fortran_env, only: int16
      use, intrinsic:: iso_fortran_env, only: int32
      use, intrinsic:: iso_fortran_env, only: int64
      use, intrinsic:: iso_fortran_env, only: int8
      use, intrinsic:: iso_fortran_env, only: int16
      use, intrinsic:: iso_fortran_env, only: int32
      use, intrinsic:: iso_fortran_env, only: int64
      use, intrinsic:: iso_fortran_env, only: real32
      use, intrinsic:: iso_fortran_env, only: real64
      use, intrinsic:: iso_fortran_env, only: real128
      use, intrinsic:: iso_fortran_env, only: real32
      use, intrinsic:: iso_fortran_env, only: real64
      use, intrinsic:: iso_fortran_env, only: real128
      use, intrinsic:: iso_fortran_env, only: real32
      use, intrinsic:: iso_fortran_env, only: real64
      use, intrinsic:: iso_fortran_env, only: real128
      use, intrinsic:: iso_fortran_env, only: real32
      use, intrinsic:: iso_fortran_env, only: real64
      use, intrinsic:: iso_fortran_env, only: real128
      use, intrinsic:: iso_fortran_env, only: real32
      use, intrinsic:: iso_fortran_env, only: real64
      use, intrinsic:: iso_fortran_env, only: real128
      use, intrinsic:: iso_fortran_env, only: real32
      use, intrinsic:: iso_fortran_env, only: real64
      use, intrinsic:: iso_fortran_env, only: real128
      use, intrinsic:: iso_fortran_env, only: real32
      use, intrinsic:: iso_fortran_env, only: real64
      use, intrinsic:: iso_fortran_env, only: real128
      use, intrinsic:: iso_fortran_env, only: real32
      use, intrinsic:: iso_fortran_env, only: real64
      use, intrinsic:: iso_fortran_env, only: real128
   implicit none
   private
   public:: add
   public:: pop
   public:: size
      public:: array_of
      type:: StackNodeRealDim0Kindreal32
         type(StackNodeRealDim0Kindreal32), pointer:: prev => null()
         Real(kind=real32):: data
      end type StackNodeRealDim0Kindreal32
      type, public:: StackRealDim0Kindreal32
         type(StackNodeRealDim0Kindreal32), pointer:: root => null()
      contains
         final:: finalizeRealDim0Kindreal32
      end type StackRealDim0Kindreal32
      interface add
         module procedure addRealDim0Kindreal32
      end interface add
      interface pop
         module procedure pop1RealDim0Kindreal32
         module procedure pop2RealDim0Kindreal32
      end interface pop
      interface size
         module procedure sizeRealDim0Kindreal32
      end interface size
         interface array_of
            module procedure array_ofRealDim0Kindreal32
         end interface array_of
      type:: StackNodeRealDim0Kindreal64
         type(StackNodeRealDim0Kindreal64), pointer:: prev => null()
         Real(kind=real64):: data
      end type StackNodeRealDim0Kindreal64
      type, public:: StackRealDim0Kindreal64
         type(StackNodeRealDim0Kindreal64), pointer:: root => null()
      contains
         final:: finalizeRealDim0Kindreal64
      end type StackRealDim0Kindreal64
      interface add
         module procedure addRealDim0Kindreal64
      end interface add
      interface pop
         module procedure pop1RealDim0Kindreal64
         module procedure pop2RealDim0Kindreal64
      end interface pop
      interface size
         module procedure sizeRealDim0Kindreal64
      end interface size
         interface array_of
            module procedure array_ofRealDim0Kindreal64
         end interface array_of
      type:: StackNodeRealDim0Kindreal128
         type(StackNodeRealDim0Kindreal128), pointer:: prev => null()
         Real(kind=real128):: data
      end type StackNodeRealDim0Kindreal128
      type, public:: StackRealDim0Kindreal128
         type(StackNodeRealDim0Kindreal128), pointer:: root => null()
      contains
         final:: finalizeRealDim0Kindreal128
      end type StackRealDim0Kindreal128
      interface add
         module procedure addRealDim0Kindreal128
      end interface add
      interface pop
         module procedure pop1RealDim0Kindreal128
         module procedure pop2RealDim0Kindreal128
      end interface pop
      interface size
         module procedure sizeRealDim0Kindreal128
      end interface size
         interface array_of
            module procedure array_ofRealDim0Kindreal128
         end interface array_of
      type:: StackNodeRealDim1Kindreal32
         type(StackNodeRealDim1Kindreal32), pointer:: prev => null()
         Real(kind=real32), dimension(:), allocatable:: data
      end type StackNodeRealDim1Kindreal32
      type, public:: StackRealDim1Kindreal32
         type(StackNodeRealDim1Kindreal32), pointer:: root => null()
      contains
         final:: finalizeRealDim1Kindreal32
      end type StackRealDim1Kindreal32
      interface add
         module procedure addRealDim1Kindreal32
      end interface add
      interface pop
         module procedure pop1RealDim1Kindreal32
         module procedure pop2RealDim1Kindreal32
      end interface pop
      interface size
         module procedure sizeRealDim1Kindreal32
      end interface size
      type:: StackNodeRealDim1Kindreal64
         type(StackNodeRealDim1Kindreal64), pointer:: prev => null()
         Real(kind=real64), dimension(:), allocatable:: data
      end type StackNodeRealDim1Kindreal64
      type, public:: StackRealDim1Kindreal64
         type(StackNodeRealDim1Kindreal64), pointer:: root => null()
      contains
         final:: finalizeRealDim1Kindreal64
      end type StackRealDim1Kindreal64
      interface add
         module procedure addRealDim1Kindreal64
      end interface add
      interface pop
         module procedure pop1RealDim1Kindreal64
         module procedure pop2RealDim1Kindreal64
      end interface pop
      interface size
         module procedure sizeRealDim1Kindreal64
      end interface size
      type:: StackNodeRealDim1Kindreal128
         type(StackNodeRealDim1Kindreal128), pointer:: prev => null()
         Real(kind=real128), dimension(:), allocatable:: data
      end type StackNodeRealDim1Kindreal128
      type, public:: StackRealDim1Kindreal128
         type(StackNodeRealDim1Kindreal128), pointer:: root => null()
      contains
         final:: finalizeRealDim1Kindreal128
      end type StackRealDim1Kindreal128
      interface add
         module procedure addRealDim1Kindreal128
      end interface add
      interface pop
         module procedure pop1RealDim1Kindreal128
         module procedure pop2RealDim1Kindreal128
      end interface pop
      interface size
         module procedure sizeRealDim1Kindreal128
      end interface size
      type:: StackNodeRealDim2Kindreal32
         type(StackNodeRealDim2Kindreal32), pointer:: prev => null()
         Real(kind=real32), dimension(:, :), allocatable:: data
      end type StackNodeRealDim2Kindreal32
      type, public:: StackRealDim2Kindreal32
         type(StackNodeRealDim2Kindreal32), pointer:: root => null()
      contains
         final:: finalizeRealDim2Kindreal32
      end type StackRealDim2Kindreal32
      interface add
         module procedure addRealDim2Kindreal32
      end interface add
      interface pop
         module procedure pop1RealDim2Kindreal32
         module procedure pop2RealDim2Kindreal32
      end interface pop
      interface size
         module procedure sizeRealDim2Kindreal32
      end interface size
      type:: StackNodeRealDim2Kindreal64
         type(StackNodeRealDim2Kindreal64), pointer:: prev => null()
         Real(kind=real64), dimension(:, :), allocatable:: data
      end type StackNodeRealDim2Kindreal64
      type, public:: StackRealDim2Kindreal64
         type(StackNodeRealDim2Kindreal64), pointer:: root => null()
      contains
         final:: finalizeRealDim2Kindreal64
      end type StackRealDim2Kindreal64
      interface add
         module procedure addRealDim2Kindreal64
      end interface add
      interface pop
         module procedure pop1RealDim2Kindreal64
         module procedure pop2RealDim2Kindreal64
      end interface pop
      interface size
         module procedure sizeRealDim2Kindreal64
      end interface size
      type:: StackNodeRealDim2Kindreal128
         type(StackNodeRealDim2Kindreal128), pointer:: prev => null()
         Real(kind=real128), dimension(:, :), allocatable:: data
      end type StackNodeRealDim2Kindreal128
      type, public:: StackRealDim2Kindreal128
         type(StackNodeRealDim2Kindreal128), pointer:: root => null()
      contains
         final:: finalizeRealDim2Kindreal128
      end type StackRealDim2Kindreal128
      interface add
         module procedure addRealDim2Kindreal128
      end interface add
      interface pop
         module procedure pop1RealDim2Kindreal128
         module procedure pop2RealDim2Kindreal128
      end interface pop
      interface size
         module procedure sizeRealDim2Kindreal128
      end interface size
      type:: StackNodeRealDim3Kindreal32
         type(StackNodeRealDim3Kindreal32), pointer:: prev => null()
         Real(kind=real32), dimension(:, :, :), allocatable:: data
      end type StackNodeRealDim3Kindreal32
      type, public:: StackRealDim3Kindreal32
         type(StackNodeRealDim3Kindreal32), pointer:: root => null()
      contains
         final:: finalizeRealDim3Kindreal32
      end type StackRealDim3Kindreal32
      interface add
         module procedure addRealDim3Kindreal32
      end interface add
      interface pop
         module procedure pop1RealDim3Kindreal32
         module procedure pop2RealDim3Kindreal32
      end interface pop
      interface size
         module procedure sizeRealDim3Kindreal32
      end interface size
      type:: StackNodeRealDim3Kindreal64
         type(StackNodeRealDim3Kindreal64), pointer:: prev => null()
         Real(kind=real64), dimension(:, :, :), allocatable:: data
      end type StackNodeRealDim3Kindreal64
      type, public:: StackRealDim3Kindreal64
         type(StackNodeRealDim3Kindreal64), pointer:: root => null()
      contains
         final:: finalizeRealDim3Kindreal64
      end type StackRealDim3Kindreal64
      interface add
         module procedure addRealDim3Kindreal64
      end interface add
      interface pop
         module procedure pop1RealDim3Kindreal64
         module procedure pop2RealDim3Kindreal64
      end interface pop
      interface size
         module procedure sizeRealDim3Kindreal64
      end interface size
      type:: StackNodeRealDim3Kindreal128
         type(StackNodeRealDim3Kindreal128), pointer:: prev => null()
         Real(kind=real128), dimension(:, :, :), allocatable:: data
      end type StackNodeRealDim3Kindreal128
      type, public:: StackRealDim3Kindreal128
         type(StackNodeRealDim3Kindreal128), pointer:: root => null()
      contains
         final:: finalizeRealDim3Kindreal128
      end type StackRealDim3Kindreal128
      interface add
         module procedure addRealDim3Kindreal128
      end interface add
      interface pop
         module procedure pop1RealDim3Kindreal128
         module procedure pop2RealDim3Kindreal128
      end interface pop
      interface size
         module procedure sizeRealDim3Kindreal128
      end interface size
      type:: StackNodeRealDim4Kindreal32
         type(StackNodeRealDim4Kindreal32), pointer:: prev => null()
         Real(kind=real32), dimension(:, :, :, :), allocatable:: data
      end type StackNodeRealDim4Kindreal32
      type, public:: StackRealDim4Kindreal32
         type(StackNodeRealDim4Kindreal32), pointer:: root => null()
      contains
         final:: finalizeRealDim4Kindreal32
      end type StackRealDim4Kindreal32
      interface add
         module procedure addRealDim4Kindreal32
      end interface add
      interface pop
         module procedure pop1RealDim4Kindreal32
         module procedure pop2RealDim4Kindreal32
      end interface pop
      interface size
         module procedure sizeRealDim4Kindreal32
      end interface size
      type:: StackNodeRealDim4Kindreal64
         type(StackNodeRealDim4Kindreal64), pointer:: prev => null()
         Real(kind=real64), dimension(:, :, :, :), allocatable:: data
      end type StackNodeRealDim4Kindreal64
      type, public:: StackRealDim4Kindreal64
         type(StackNodeRealDim4Kindreal64), pointer:: root => null()
      contains
         final:: finalizeRealDim4Kindreal64
      end type StackRealDim4Kindreal64
      interface add
         module procedure addRealDim4Kindreal64
      end interface add
      interface pop
         module procedure pop1RealDim4Kindreal64
         module procedure pop2RealDim4Kindreal64
      end interface pop
      interface size
         module procedure sizeRealDim4Kindreal64
      end interface size
      type:: StackNodeRealDim4Kindreal128
         type(StackNodeRealDim4Kindreal128), pointer:: prev => null()
         Real(kind=real128), dimension(:, :, :, :), allocatable:: data
      end type StackNodeRealDim4Kindreal128
      type, public:: StackRealDim4Kindreal128
         type(StackNodeRealDim4Kindreal128), pointer:: root => null()
      contains
         final:: finalizeRealDim4Kindreal128
      end type StackRealDim4Kindreal128
      interface add
         module procedure addRealDim4Kindreal128
      end interface add
      interface pop
         module procedure pop1RealDim4Kindreal128
         module procedure pop2RealDim4Kindreal128
      end interface pop
      interface size
         module procedure sizeRealDim4Kindreal128
      end interface size
      type:: StackNodeRealDim5Kindreal32
         type(StackNodeRealDim5Kindreal32), pointer:: prev => null()
         Real(kind=real32), dimension(:, :, :, :, :), allocatable:: data
      end type StackNodeRealDim5Kindreal32
      type, public:: StackRealDim5Kindreal32
         type(StackNodeRealDim5Kindreal32), pointer:: root => null()
      contains
         final:: finalizeRealDim5Kindreal32
      end type StackRealDim5Kindreal32
      interface add
         module procedure addRealDim5Kindreal32
      end interface add
      interface pop
         module procedure pop1RealDim5Kindreal32
         module procedure pop2RealDim5Kindreal32
      end interface pop
      interface size
         module procedure sizeRealDim5Kindreal32
      end interface size
      type:: StackNodeRealDim5Kindreal64
         type(StackNodeRealDim5Kindreal64), pointer:: prev => null()
         Real(kind=real64), dimension(:, :, :, :, :), allocatable:: data
      end type StackNodeRealDim5Kindreal64
      type, public:: StackRealDim5Kindreal64
         type(StackNodeRealDim5Kindreal64), pointer:: root => null()
      contains
         final:: finalizeRealDim5Kindreal64
      end type StackRealDim5Kindreal64
      interface add
         module procedure addRealDim5Kindreal64
      end interface add
      interface pop
         module procedure pop1RealDim5Kindreal64
         module procedure pop2RealDim5Kindreal64
      end interface pop
      interface size
         module procedure sizeRealDim5Kindreal64
      end interface size
      type:: StackNodeRealDim5Kindreal128
         type(StackNodeRealDim5Kindreal128), pointer:: prev => null()
         Real(kind=real128), dimension(:, :, :, :, :), allocatable:: data
      end type StackNodeRealDim5Kindreal128
      type, public:: StackRealDim5Kindreal128
         type(StackNodeRealDim5Kindreal128), pointer:: root => null()
      contains
         final:: finalizeRealDim5Kindreal128
      end type StackRealDim5Kindreal128
      interface add
         module procedure addRealDim5Kindreal128
      end interface add
      interface pop
         module procedure pop1RealDim5Kindreal128
         module procedure pop2RealDim5Kindreal128
      end interface pop
      interface size
         module procedure sizeRealDim5Kindreal128
      end interface size
      type:: StackNodeRealDim6Kindreal32
         type(StackNodeRealDim6Kindreal32), pointer:: prev => null()
         Real(kind=real32), dimension(:, :, :, :, :, :), allocatable:: data
      end type StackNodeRealDim6Kindreal32
      type, public:: StackRealDim6Kindreal32
         type(StackNodeRealDim6Kindreal32), pointer:: root => null()
      contains
         final:: finalizeRealDim6Kindreal32
      end type StackRealDim6Kindreal32
      interface add
         module procedure addRealDim6Kindreal32
      end interface add
      interface pop
         module procedure pop1RealDim6Kindreal32
         module procedure pop2RealDim6Kindreal32
      end interface pop
      interface size
         module procedure sizeRealDim6Kindreal32
      end interface size
      type:: StackNodeRealDim6Kindreal64
         type(StackNodeRealDim6Kindreal64), pointer:: prev => null()
         Real(kind=real64), dimension(:, :, :, :, :, :), allocatable:: data
      end type StackNodeRealDim6Kindreal64
      type, public:: StackRealDim6Kindreal64
         type(StackNodeRealDim6Kindreal64), pointer:: root => null()
      contains
         final:: finalizeRealDim6Kindreal64
      end type StackRealDim6Kindreal64
      interface add
         module procedure addRealDim6Kindreal64
      end interface add
      interface pop
         module procedure pop1RealDim6Kindreal64
         module procedure pop2RealDim6Kindreal64
      end interface pop
      interface size
         module procedure sizeRealDim6Kindreal64
      end interface size
      type:: StackNodeRealDim6Kindreal128
         type(StackNodeRealDim6Kindreal128), pointer:: prev => null()
         Real(kind=real128), dimension(:, :, :, :, :, :), allocatable:: data
      end type StackNodeRealDim6Kindreal128
      type, public:: StackRealDim6Kindreal128
         type(StackNodeRealDim6Kindreal128), pointer:: root => null()
      contains
         final:: finalizeRealDim6Kindreal128
      end type StackRealDim6Kindreal128
      interface add
         module procedure addRealDim6Kindreal128
      end interface add
      interface pop
         module procedure pop1RealDim6Kindreal128
         module procedure pop2RealDim6Kindreal128
      end interface pop
      interface size
         module procedure sizeRealDim6Kindreal128
      end interface size
      type:: StackNodeRealDim7Kindreal32
         type(StackNodeRealDim7Kindreal32), pointer:: prev => null()
         Real(kind=real32), dimension(:, :, :, :, :, :, :), allocatable:: data
      end type StackNodeRealDim7Kindreal32
      type, public:: StackRealDim7Kindreal32
         type(StackNodeRealDim7Kindreal32), pointer:: root => null()
      contains
         final:: finalizeRealDim7Kindreal32
      end type StackRealDim7Kindreal32
      interface add
         module procedure addRealDim7Kindreal32
      end interface add
      interface pop
         module procedure pop1RealDim7Kindreal32
         module procedure pop2RealDim7Kindreal32
      end interface pop
      interface size
         module procedure sizeRealDim7Kindreal32
      end interface size
      type:: StackNodeRealDim7Kindreal64
         type(StackNodeRealDim7Kindreal64), pointer:: prev => null()
         Real(kind=real64), dimension(:, :, :, :, :, :, :), allocatable:: data
      end type StackNodeRealDim7Kindreal64
      type, public:: StackRealDim7Kindreal64
         type(StackNodeRealDim7Kindreal64), pointer:: root => null()
      contains
         final:: finalizeRealDim7Kindreal64
      end type StackRealDim7Kindreal64
      interface add
         module procedure addRealDim7Kindreal64
      end interface add
      interface pop
         module procedure pop1RealDim7Kindreal64
         module procedure pop2RealDim7Kindreal64
      end interface pop
      interface size
         module procedure sizeRealDim7Kindreal64
      end interface size
      type:: StackNodeRealDim7Kindreal128
         type(StackNodeRealDim7Kindreal128), pointer:: prev => null()
         Real(kind=real128), dimension(:, :, :, :, :, :, :), allocatable:: data
      end type StackNodeRealDim7Kindreal128
      type, public:: StackRealDim7Kindreal128
         type(StackNodeRealDim7Kindreal128), pointer:: root => null()
      contains
         final:: finalizeRealDim7Kindreal128
      end type StackRealDim7Kindreal128
      interface add
         module procedure addRealDim7Kindreal128
      end interface add
      interface pop
         module procedure pop1RealDim7Kindreal128
         module procedure pop2RealDim7Kindreal128
      end interface pop
      interface size
         module procedure sizeRealDim7Kindreal128
      end interface size
      type:: StackNodeIntegerDim0Kindint8
         type(StackNodeIntegerDim0Kindint8), pointer:: prev => null()
         Integer(kind=int8):: data
      end type StackNodeIntegerDim0Kindint8
      type, public:: StackIntegerDim0Kindint8
         type(StackNodeIntegerDim0Kindint8), pointer:: root => null()
      contains
         final:: finalizeIntegerDim0Kindint8
      end type StackIntegerDim0Kindint8
      interface add
         module procedure addIntegerDim0Kindint8
      end interface add
      interface pop
         module procedure pop1IntegerDim0Kindint8
         module procedure pop2IntegerDim0Kindint8
      end interface pop
      interface size
         module procedure sizeIntegerDim0Kindint8
      end interface size
         interface array_of
            module procedure array_ofIntegerDim0Kindint8
         end interface array_of
      type:: StackNodeIntegerDim0Kindint16
         type(StackNodeIntegerDim0Kindint16), pointer:: prev => null()
         Integer(kind=int16):: data
      end type StackNodeIntegerDim0Kindint16
      type, public:: StackIntegerDim0Kindint16
         type(StackNodeIntegerDim0Kindint16), pointer:: root => null()
      contains
         final:: finalizeIntegerDim0Kindint16
      end type StackIntegerDim0Kindint16
      interface add
         module procedure addIntegerDim0Kindint16
      end interface add
      interface pop
         module procedure pop1IntegerDim0Kindint16
         module procedure pop2IntegerDim0Kindint16
      end interface pop
      interface size
         module procedure sizeIntegerDim0Kindint16
      end interface size
         interface array_of
            module procedure array_ofIntegerDim0Kindint16
         end interface array_of
      type:: StackNodeIntegerDim0Kindint32
         type(StackNodeIntegerDim0Kindint32), pointer:: prev => null()
         Integer(kind=int32):: data
      end type StackNodeIntegerDim0Kindint32
      type, public:: StackIntegerDim0Kindint32
         type(StackNodeIntegerDim0Kindint32), pointer:: root => null()
      contains
         final:: finalizeIntegerDim0Kindint32
      end type StackIntegerDim0Kindint32
      interface add
         module procedure addIntegerDim0Kindint32
      end interface add
      interface pop
         module procedure pop1IntegerDim0Kindint32
         module procedure pop2IntegerDim0Kindint32
      end interface pop
      interface size
         module procedure sizeIntegerDim0Kindint32
      end interface size
         interface array_of
            module procedure array_ofIntegerDim0Kindint32
         end interface array_of
      type:: StackNodeIntegerDim0Kindint64
         type(StackNodeIntegerDim0Kindint64), pointer:: prev => null()
         Integer(kind=int64):: data
      end type StackNodeIntegerDim0Kindint64
      type, public:: StackIntegerDim0Kindint64
         type(StackNodeIntegerDim0Kindint64), pointer:: root => null()
      contains
         final:: finalizeIntegerDim0Kindint64
      end type StackIntegerDim0Kindint64
      interface add
         module procedure addIntegerDim0Kindint64
      end interface add
      interface pop
         module procedure pop1IntegerDim0Kindint64
         module procedure pop2IntegerDim0Kindint64
      end interface pop
      interface size
         module procedure sizeIntegerDim0Kindint64
      end interface size
         interface array_of
            module procedure array_ofIntegerDim0Kindint64
         end interface array_of
      type:: StackNodeIntegerDim1Kindint8
         type(StackNodeIntegerDim1Kindint8), pointer:: prev => null()
         Integer(kind=int8), dimension(:), allocatable:: data
      end type StackNodeIntegerDim1Kindint8
      type, public:: StackIntegerDim1Kindint8
         type(StackNodeIntegerDim1Kindint8), pointer:: root => null()
      contains
         final:: finalizeIntegerDim1Kindint8
      end type StackIntegerDim1Kindint8
      interface add
         module procedure addIntegerDim1Kindint8
      end interface add
      interface pop
         module procedure pop1IntegerDim1Kindint8
         module procedure pop2IntegerDim1Kindint8
      end interface pop
      interface size
         module procedure sizeIntegerDim1Kindint8
      end interface size
      type:: StackNodeIntegerDim1Kindint16
         type(StackNodeIntegerDim1Kindint16), pointer:: prev => null()
         Integer(kind=int16), dimension(:), allocatable:: data
      end type StackNodeIntegerDim1Kindint16
      type, public:: StackIntegerDim1Kindint16
         type(StackNodeIntegerDim1Kindint16), pointer:: root => null()
      contains
         final:: finalizeIntegerDim1Kindint16
      end type StackIntegerDim1Kindint16
      interface add
         module procedure addIntegerDim1Kindint16
      end interface add
      interface pop
         module procedure pop1IntegerDim1Kindint16
         module procedure pop2IntegerDim1Kindint16
      end interface pop
      interface size
         module procedure sizeIntegerDim1Kindint16
      end interface size
      type:: StackNodeIntegerDim1Kindint32
         type(StackNodeIntegerDim1Kindint32), pointer:: prev => null()
         Integer(kind=int32), dimension(:), allocatable:: data
      end type StackNodeIntegerDim1Kindint32
      type, public:: StackIntegerDim1Kindint32
         type(StackNodeIntegerDim1Kindint32), pointer:: root => null()
      contains
         final:: finalizeIntegerDim1Kindint32
      end type StackIntegerDim1Kindint32
      interface add
         module procedure addIntegerDim1Kindint32
      end interface add
      interface pop
         module procedure pop1IntegerDim1Kindint32
         module procedure pop2IntegerDim1Kindint32
      end interface pop
      interface size
         module procedure sizeIntegerDim1Kindint32
      end interface size
      type:: StackNodeIntegerDim1Kindint64
         type(StackNodeIntegerDim1Kindint64), pointer:: prev => null()
         Integer(kind=int64), dimension(:), allocatable:: data
      end type StackNodeIntegerDim1Kindint64
      type, public:: StackIntegerDim1Kindint64
         type(StackNodeIntegerDim1Kindint64), pointer:: root => null()
      contains
         final:: finalizeIntegerDim1Kindint64
      end type StackIntegerDim1Kindint64
      interface add
         module procedure addIntegerDim1Kindint64
      end interface add
      interface pop
         module procedure pop1IntegerDim1Kindint64
         module procedure pop2IntegerDim1Kindint64
      end interface pop
      interface size
         module procedure sizeIntegerDim1Kindint64
      end interface size
      type:: StackNodeIntegerDim2Kindint8
         type(StackNodeIntegerDim2Kindint8), pointer:: prev => null()
         Integer(kind=int8), dimension(:, :), allocatable:: data
      end type StackNodeIntegerDim2Kindint8
      type, public:: StackIntegerDim2Kindint8
         type(StackNodeIntegerDim2Kindint8), pointer:: root => null()
      contains
         final:: finalizeIntegerDim2Kindint8
      end type StackIntegerDim2Kindint8
      interface add
         module procedure addIntegerDim2Kindint8
      end interface add
      interface pop
         module procedure pop1IntegerDim2Kindint8
         module procedure pop2IntegerDim2Kindint8
      end interface pop
      interface size
         module procedure sizeIntegerDim2Kindint8
      end interface size
      type:: StackNodeIntegerDim2Kindint16
         type(StackNodeIntegerDim2Kindint16), pointer:: prev => null()
         Integer(kind=int16), dimension(:, :), allocatable:: data
      end type StackNodeIntegerDim2Kindint16
      type, public:: StackIntegerDim2Kindint16
         type(StackNodeIntegerDim2Kindint16), pointer:: root => null()
      contains
         final:: finalizeIntegerDim2Kindint16
      end type StackIntegerDim2Kindint16
      interface add
         module procedure addIntegerDim2Kindint16
      end interface add
      interface pop
         module procedure pop1IntegerDim2Kindint16
         module procedure pop2IntegerDim2Kindint16
      end interface pop
      interface size
         module procedure sizeIntegerDim2Kindint16
      end interface size
      type:: StackNodeIntegerDim2Kindint32
         type(StackNodeIntegerDim2Kindint32), pointer:: prev => null()
         Integer(kind=int32), dimension(:, :), allocatable:: data
      end type StackNodeIntegerDim2Kindint32
      type, public:: StackIntegerDim2Kindint32
         type(StackNodeIntegerDim2Kindint32), pointer:: root => null()
      contains
         final:: finalizeIntegerDim2Kindint32
      end type StackIntegerDim2Kindint32
      interface add
         module procedure addIntegerDim2Kindint32
      end interface add
      interface pop
         module procedure pop1IntegerDim2Kindint32
         module procedure pop2IntegerDim2Kindint32
      end interface pop
      interface size
         module procedure sizeIntegerDim2Kindint32
      end interface size
      type:: StackNodeIntegerDim2Kindint64
         type(StackNodeIntegerDim2Kindint64), pointer:: prev => null()
         Integer(kind=int64), dimension(:, :), allocatable:: data
      end type StackNodeIntegerDim2Kindint64
      type, public:: StackIntegerDim2Kindint64
         type(StackNodeIntegerDim2Kindint64), pointer:: root => null()
      contains
         final:: finalizeIntegerDim2Kindint64
      end type StackIntegerDim2Kindint64
      interface add
         module procedure addIntegerDim2Kindint64
      end interface add
      interface pop
         module procedure pop1IntegerDim2Kindint64
         module procedure pop2IntegerDim2Kindint64
      end interface pop
      interface size
         module procedure sizeIntegerDim2Kindint64
      end interface size
      type:: StackNodeIntegerDim3Kindint8
         type(StackNodeIntegerDim3Kindint8), pointer:: prev => null()
         Integer(kind=int8), dimension(:, :, :), allocatable:: data
      end type StackNodeIntegerDim3Kindint8
      type, public:: StackIntegerDim3Kindint8
         type(StackNodeIntegerDim3Kindint8), pointer:: root => null()
      contains
         final:: finalizeIntegerDim3Kindint8
      end type StackIntegerDim3Kindint8
      interface add
         module procedure addIntegerDim3Kindint8
      end interface add
      interface pop
         module procedure pop1IntegerDim3Kindint8
         module procedure pop2IntegerDim3Kindint8
      end interface pop
      interface size
         module procedure sizeIntegerDim3Kindint8
      end interface size
      type:: StackNodeIntegerDim3Kindint16
         type(StackNodeIntegerDim3Kindint16), pointer:: prev => null()
         Integer(kind=int16), dimension(:, :, :), allocatable:: data
      end type StackNodeIntegerDim3Kindint16
      type, public:: StackIntegerDim3Kindint16
         type(StackNodeIntegerDim3Kindint16), pointer:: root => null()
      contains
         final:: finalizeIntegerDim3Kindint16
      end type StackIntegerDim3Kindint16
      interface add
         module procedure addIntegerDim3Kindint16
      end interface add
      interface pop
         module procedure pop1IntegerDim3Kindint16
         module procedure pop2IntegerDim3Kindint16
      end interface pop
      interface size
         module procedure sizeIntegerDim3Kindint16
      end interface size
      type:: StackNodeIntegerDim3Kindint32
         type(StackNodeIntegerDim3Kindint32), pointer:: prev => null()
         Integer(kind=int32), dimension(:, :, :), allocatable:: data
      end type StackNodeIntegerDim3Kindint32
      type, public:: StackIntegerDim3Kindint32
         type(StackNodeIntegerDim3Kindint32), pointer:: root => null()
      contains
         final:: finalizeIntegerDim3Kindint32
      end type StackIntegerDim3Kindint32
      interface add
         module procedure addIntegerDim3Kindint32
      end interface add
      interface pop
         module procedure pop1IntegerDim3Kindint32
         module procedure pop2IntegerDim3Kindint32
      end interface pop
      interface size
         module procedure sizeIntegerDim3Kindint32
      end interface size
      type:: StackNodeIntegerDim3Kindint64
         type(StackNodeIntegerDim3Kindint64), pointer:: prev => null()
         Integer(kind=int64), dimension(:, :, :), allocatable:: data
      end type StackNodeIntegerDim3Kindint64
      type, public:: StackIntegerDim3Kindint64
         type(StackNodeIntegerDim3Kindint64), pointer:: root => null()
      contains
         final:: finalizeIntegerDim3Kindint64
      end type StackIntegerDim3Kindint64
      interface add
         module procedure addIntegerDim3Kindint64
      end interface add
      interface pop
         module procedure pop1IntegerDim3Kindint64
         module procedure pop2IntegerDim3Kindint64
      end interface pop
      interface size
         module procedure sizeIntegerDim3Kindint64
      end interface size
      type:: StackNodeIntegerDim4Kindint8
         type(StackNodeIntegerDim4Kindint8), pointer:: prev => null()
         Integer(kind=int8), dimension(:, :, :, :), allocatable:: data
      end type StackNodeIntegerDim4Kindint8
      type, public:: StackIntegerDim4Kindint8
         type(StackNodeIntegerDim4Kindint8), pointer:: root => null()
      contains
         final:: finalizeIntegerDim4Kindint8
      end type StackIntegerDim4Kindint8
      interface add
         module procedure addIntegerDim4Kindint8
      end interface add
      interface pop
         module procedure pop1IntegerDim4Kindint8
         module procedure pop2IntegerDim4Kindint8
      end interface pop
      interface size
         module procedure sizeIntegerDim4Kindint8
      end interface size
      type:: StackNodeIntegerDim4Kindint16
         type(StackNodeIntegerDim4Kindint16), pointer:: prev => null()
         Integer(kind=int16), dimension(:, :, :, :), allocatable:: data
      end type StackNodeIntegerDim4Kindint16
      type, public:: StackIntegerDim4Kindint16
         type(StackNodeIntegerDim4Kindint16), pointer:: root => null()
      contains
         final:: finalizeIntegerDim4Kindint16
      end type StackIntegerDim4Kindint16
      interface add
         module procedure addIntegerDim4Kindint16
      end interface add
      interface pop
         module procedure pop1IntegerDim4Kindint16
         module procedure pop2IntegerDim4Kindint16
      end interface pop
      interface size
         module procedure sizeIntegerDim4Kindint16
      end interface size
      type:: StackNodeIntegerDim4Kindint32
         type(StackNodeIntegerDim4Kindint32), pointer:: prev => null()
         Integer(kind=int32), dimension(:, :, :, :), allocatable:: data
      end type StackNodeIntegerDim4Kindint32
      type, public:: StackIntegerDim4Kindint32
         type(StackNodeIntegerDim4Kindint32), pointer:: root => null()
      contains
         final:: finalizeIntegerDim4Kindint32
      end type StackIntegerDim4Kindint32
      interface add
         module procedure addIntegerDim4Kindint32
      end interface add
      interface pop
         module procedure pop1IntegerDim4Kindint32
         module procedure pop2IntegerDim4Kindint32
      end interface pop
      interface size
         module procedure sizeIntegerDim4Kindint32
      end interface size
      type:: StackNodeIntegerDim4Kindint64
         type(StackNodeIntegerDim4Kindint64), pointer:: prev => null()
         Integer(kind=int64), dimension(:, :, :, :), allocatable:: data
      end type StackNodeIntegerDim4Kindint64
      type, public:: StackIntegerDim4Kindint64
         type(StackNodeIntegerDim4Kindint64), pointer:: root => null()
      contains
         final:: finalizeIntegerDim4Kindint64
      end type StackIntegerDim4Kindint64
      interface add
         module procedure addIntegerDim4Kindint64
      end interface add
      interface pop
         module procedure pop1IntegerDim4Kindint64
         module procedure pop2IntegerDim4Kindint64
      end interface pop
      interface size
         module procedure sizeIntegerDim4Kindint64
      end interface size
      type:: StackNodeIntegerDim5Kindint8
         type(StackNodeIntegerDim5Kindint8), pointer:: prev => null()
         Integer(kind=int8), dimension(:, :, :, :, :), allocatable:: data
      end type StackNodeIntegerDim5Kindint8
      type, public:: StackIntegerDim5Kindint8
         type(StackNodeIntegerDim5Kindint8), pointer:: root => null()
      contains
         final:: finalizeIntegerDim5Kindint8
      end type StackIntegerDim5Kindint8
      interface add
         module procedure addIntegerDim5Kindint8
      end interface add
      interface pop
         module procedure pop1IntegerDim5Kindint8
         module procedure pop2IntegerDim5Kindint8
      end interface pop
      interface size
         module procedure sizeIntegerDim5Kindint8
      end interface size
      type:: StackNodeIntegerDim5Kindint16
         type(StackNodeIntegerDim5Kindint16), pointer:: prev => null()
         Integer(kind=int16), dimension(:, :, :, :, :), allocatable:: data
      end type StackNodeIntegerDim5Kindint16
      type, public:: StackIntegerDim5Kindint16
         type(StackNodeIntegerDim5Kindint16), pointer:: root => null()
      contains
         final:: finalizeIntegerDim5Kindint16
      end type StackIntegerDim5Kindint16
      interface add
         module procedure addIntegerDim5Kindint16
      end interface add
      interface pop
         module procedure pop1IntegerDim5Kindint16
         module procedure pop2IntegerDim5Kindint16
      end interface pop
      interface size
         module procedure sizeIntegerDim5Kindint16
      end interface size
      type:: StackNodeIntegerDim5Kindint32
         type(StackNodeIntegerDim5Kindint32), pointer:: prev => null()
         Integer(kind=int32), dimension(:, :, :, :, :), allocatable:: data
      end type StackNodeIntegerDim5Kindint32
      type, public:: StackIntegerDim5Kindint32
         type(StackNodeIntegerDim5Kindint32), pointer:: root => null()
      contains
         final:: finalizeIntegerDim5Kindint32
      end type StackIntegerDim5Kindint32
      interface add
         module procedure addIntegerDim5Kindint32
      end interface add
      interface pop
         module procedure pop1IntegerDim5Kindint32
         module procedure pop2IntegerDim5Kindint32
      end interface pop
      interface size
         module procedure sizeIntegerDim5Kindint32
      end interface size
      type:: StackNodeIntegerDim5Kindint64
         type(StackNodeIntegerDim5Kindint64), pointer:: prev => null()
         Integer(kind=int64), dimension(:, :, :, :, :), allocatable:: data
      end type StackNodeIntegerDim5Kindint64
      type, public:: StackIntegerDim5Kindint64
         type(StackNodeIntegerDim5Kindint64), pointer:: root => null()
      contains
         final:: finalizeIntegerDim5Kindint64
      end type StackIntegerDim5Kindint64
      interface add
         module procedure addIntegerDim5Kindint64
      end interface add
      interface pop
         module procedure pop1IntegerDim5Kindint64
         module procedure pop2IntegerDim5Kindint64
      end interface pop
      interface size
         module procedure sizeIntegerDim5Kindint64
      end interface size
      type:: StackNodeIntegerDim6Kindint8
         type(StackNodeIntegerDim6Kindint8), pointer:: prev => null()
         Integer(kind=int8), dimension(:, :, :, :, :, :), allocatable:: data
      end type StackNodeIntegerDim6Kindint8
      type, public:: StackIntegerDim6Kindint8
         type(StackNodeIntegerDim6Kindint8), pointer:: root => null()
      contains
         final:: finalizeIntegerDim6Kindint8
      end type StackIntegerDim6Kindint8
      interface add
         module procedure addIntegerDim6Kindint8
      end interface add
      interface pop
         module procedure pop1IntegerDim6Kindint8
         module procedure pop2IntegerDim6Kindint8
      end interface pop
      interface size
         module procedure sizeIntegerDim6Kindint8
      end interface size
      type:: StackNodeIntegerDim6Kindint16
         type(StackNodeIntegerDim6Kindint16), pointer:: prev => null()
         Integer(kind=int16), dimension(:, :, :, :, :, :), allocatable:: data
      end type StackNodeIntegerDim6Kindint16
      type, public:: StackIntegerDim6Kindint16
         type(StackNodeIntegerDim6Kindint16), pointer:: root => null()
      contains
         final:: finalizeIntegerDim6Kindint16
      end type StackIntegerDim6Kindint16
      interface add
         module procedure addIntegerDim6Kindint16
      end interface add
      interface pop
         module procedure pop1IntegerDim6Kindint16
         module procedure pop2IntegerDim6Kindint16
      end interface pop
      interface size
         module procedure sizeIntegerDim6Kindint16
      end interface size
      type:: StackNodeIntegerDim6Kindint32
         type(StackNodeIntegerDim6Kindint32), pointer:: prev => null()
         Integer(kind=int32), dimension(:, :, :, :, :, :), allocatable:: data
      end type StackNodeIntegerDim6Kindint32
      type, public:: StackIntegerDim6Kindint32
         type(StackNodeIntegerDim6Kindint32), pointer:: root => null()
      contains
         final:: finalizeIntegerDim6Kindint32
      end type StackIntegerDim6Kindint32
      interface add
         module procedure addIntegerDim6Kindint32
      end interface add
      interface pop
         module procedure pop1IntegerDim6Kindint32
         module procedure pop2IntegerDim6Kindint32
      end interface pop
      interface size
         module procedure sizeIntegerDim6Kindint32
      end interface size
      type:: StackNodeIntegerDim6Kindint64
         type(StackNodeIntegerDim6Kindint64), pointer:: prev => null()
         Integer(kind=int64), dimension(:, :, :, :, :, :), allocatable:: data
      end type StackNodeIntegerDim6Kindint64
      type, public:: StackIntegerDim6Kindint64
         type(StackNodeIntegerDim6Kindint64), pointer:: root => null()
      contains
         final:: finalizeIntegerDim6Kindint64
      end type StackIntegerDim6Kindint64
      interface add
         module procedure addIntegerDim6Kindint64
      end interface add
      interface pop
         module procedure pop1IntegerDim6Kindint64
         module procedure pop2IntegerDim6Kindint64
      end interface pop
      interface size
         module procedure sizeIntegerDim6Kindint64
      end interface size
      type:: StackNodeIntegerDim7Kindint8
         type(StackNodeIntegerDim7Kindint8), pointer:: prev => null()
         Integer(kind=int8), dimension(:, :, :, :, :, :, :), allocatable:: data
      end type StackNodeIntegerDim7Kindint8
      type, public:: StackIntegerDim7Kindint8
         type(StackNodeIntegerDim7Kindint8), pointer:: root => null()
      contains
         final:: finalizeIntegerDim7Kindint8
      end type StackIntegerDim7Kindint8
      interface add
         module procedure addIntegerDim7Kindint8
      end interface add
      interface pop
         module procedure pop1IntegerDim7Kindint8
         module procedure pop2IntegerDim7Kindint8
      end interface pop
      interface size
         module procedure sizeIntegerDim7Kindint8
      end interface size
      type:: StackNodeIntegerDim7Kindint16
         type(StackNodeIntegerDim7Kindint16), pointer:: prev => null()
         Integer(kind=int16), dimension(:, :, :, :, :, :, :), allocatable:: data
      end type StackNodeIntegerDim7Kindint16
      type, public:: StackIntegerDim7Kindint16
         type(StackNodeIntegerDim7Kindint16), pointer:: root => null()
      contains
         final:: finalizeIntegerDim7Kindint16
      end type StackIntegerDim7Kindint16
      interface add
         module procedure addIntegerDim7Kindint16
      end interface add
      interface pop
         module procedure pop1IntegerDim7Kindint16
         module procedure pop2IntegerDim7Kindint16
      end interface pop
      interface size
         module procedure sizeIntegerDim7Kindint16
      end interface size
      type:: StackNodeIntegerDim7Kindint32
         type(StackNodeIntegerDim7Kindint32), pointer:: prev => null()
         Integer(kind=int32), dimension(:, :, :, :, :, :, :), allocatable:: data
      end type StackNodeIntegerDim7Kindint32
      type, public:: StackIntegerDim7Kindint32
         type(StackNodeIntegerDim7Kindint32), pointer:: root => null()
      contains
         final:: finalizeIntegerDim7Kindint32
      end type StackIntegerDim7Kindint32
      interface add
         module procedure addIntegerDim7Kindint32
      end interface add
      interface pop
         module procedure pop1IntegerDim7Kindint32
         module procedure pop2IntegerDim7Kindint32
      end interface pop
      interface size
         module procedure sizeIntegerDim7Kindint32
      end interface size
      type:: StackNodeIntegerDim7Kindint64
         type(StackNodeIntegerDim7Kindint64), pointer:: prev => null()
         Integer(kind=int64), dimension(:, :, :, :, :, :, :), allocatable:: data
      end type StackNodeIntegerDim7Kindint64
      type, public:: StackIntegerDim7Kindint64
         type(StackNodeIntegerDim7Kindint64), pointer:: root => null()
      contains
         final:: finalizeIntegerDim7Kindint64
      end type StackIntegerDim7Kindint64
      interface add
         module procedure addIntegerDim7Kindint64
      end interface add
      interface pop
         module procedure pop1IntegerDim7Kindint64
         module procedure pop2IntegerDim7Kindint64
      end interface pop
      interface size
         module procedure sizeIntegerDim7Kindint64
      end interface size
      type:: StackNodeLogicalDim0Kindint8
         type(StackNodeLogicalDim0Kindint8), pointer:: prev => null()
         Logical(kind=int8):: data
      end type StackNodeLogicalDim0Kindint8
      type, public:: StackLogicalDim0Kindint8
         type(StackNodeLogicalDim0Kindint8), pointer:: root => null()
      contains
         final:: finalizeLogicalDim0Kindint8
      end type StackLogicalDim0Kindint8
      interface add
         module procedure addLogicalDim0Kindint8
      end interface add
      interface pop
         module procedure pop1LogicalDim0Kindint8
         module procedure pop2LogicalDim0Kindint8
      end interface pop
      interface size
         module procedure sizeLogicalDim0Kindint8
      end interface size
         interface array_of
            module procedure array_ofLogicalDim0Kindint8
         end interface array_of
      type:: StackNodeLogicalDim0Kindint16
         type(StackNodeLogicalDim0Kindint16), pointer:: prev => null()
         Logical(kind=int16):: data
      end type StackNodeLogicalDim0Kindint16
      type, public:: StackLogicalDim0Kindint16
         type(StackNodeLogicalDim0Kindint16), pointer:: root => null()
      contains
         final:: finalizeLogicalDim0Kindint16
      end type StackLogicalDim0Kindint16
      interface add
         module procedure addLogicalDim0Kindint16
      end interface add
      interface pop
         module procedure pop1LogicalDim0Kindint16
         module procedure pop2LogicalDim0Kindint16
      end interface pop
      interface size
         module procedure sizeLogicalDim0Kindint16
      end interface size
         interface array_of
            module procedure array_ofLogicalDim0Kindint16
         end interface array_of
      type:: StackNodeLogicalDim0Kindint32
         type(StackNodeLogicalDim0Kindint32), pointer:: prev => null()
         Logical(kind=int32):: data
      end type StackNodeLogicalDim0Kindint32
      type, public:: StackLogicalDim0Kindint32
         type(StackNodeLogicalDim0Kindint32), pointer:: root => null()
      contains
         final:: finalizeLogicalDim0Kindint32
      end type StackLogicalDim0Kindint32
      interface add
         module procedure addLogicalDim0Kindint32
      end interface add
      interface pop
         module procedure pop1LogicalDim0Kindint32
         module procedure pop2LogicalDim0Kindint32
      end interface pop
      interface size
         module procedure sizeLogicalDim0Kindint32
      end interface size
         interface array_of
            module procedure array_ofLogicalDim0Kindint32
         end interface array_of
      type:: StackNodeLogicalDim0Kindint64
         type(StackNodeLogicalDim0Kindint64), pointer:: prev => null()
         Logical(kind=int64):: data
      end type StackNodeLogicalDim0Kindint64
      type, public:: StackLogicalDim0Kindint64
         type(StackNodeLogicalDim0Kindint64), pointer:: root => null()
      contains
         final:: finalizeLogicalDim0Kindint64
      end type StackLogicalDim0Kindint64
      interface add
         module procedure addLogicalDim0Kindint64
      end interface add
      interface pop
         module procedure pop1LogicalDim0Kindint64
         module procedure pop2LogicalDim0Kindint64
      end interface pop
      interface size
         module procedure sizeLogicalDim0Kindint64
      end interface size
         interface array_of
            module procedure array_ofLogicalDim0Kindint64
         end interface array_of
      type:: StackNodeLogicalDim1Kindint8
         type(StackNodeLogicalDim1Kindint8), pointer:: prev => null()
         Logical(kind=int8), dimension(:), allocatable:: data
      end type StackNodeLogicalDim1Kindint8
      type, public:: StackLogicalDim1Kindint8
         type(StackNodeLogicalDim1Kindint8), pointer:: root => null()
      contains
         final:: finalizeLogicalDim1Kindint8
      end type StackLogicalDim1Kindint8
      interface add
         module procedure addLogicalDim1Kindint8
      end interface add
      interface pop
         module procedure pop1LogicalDim1Kindint8
         module procedure pop2LogicalDim1Kindint8
      end interface pop
      interface size
         module procedure sizeLogicalDim1Kindint8
      end interface size
      type:: StackNodeLogicalDim1Kindint16
         type(StackNodeLogicalDim1Kindint16), pointer:: prev => null()
         Logical(kind=int16), dimension(:), allocatable:: data
      end type StackNodeLogicalDim1Kindint16
      type, public:: StackLogicalDim1Kindint16
         type(StackNodeLogicalDim1Kindint16), pointer:: root => null()
      contains
         final:: finalizeLogicalDim1Kindint16
      end type StackLogicalDim1Kindint16
      interface add
         module procedure addLogicalDim1Kindint16
      end interface add
      interface pop
         module procedure pop1LogicalDim1Kindint16
         module procedure pop2LogicalDim1Kindint16
      end interface pop
      interface size
         module procedure sizeLogicalDim1Kindint16
      end interface size
      type:: StackNodeLogicalDim1Kindint32
         type(StackNodeLogicalDim1Kindint32), pointer:: prev => null()
         Logical(kind=int32), dimension(:), allocatable:: data
      end type StackNodeLogicalDim1Kindint32
      type, public:: StackLogicalDim1Kindint32
         type(StackNodeLogicalDim1Kindint32), pointer:: root => null()
      contains
         final:: finalizeLogicalDim1Kindint32
      end type StackLogicalDim1Kindint32
      interface add
         module procedure addLogicalDim1Kindint32
      end interface add
      interface pop
         module procedure pop1LogicalDim1Kindint32
         module procedure pop2LogicalDim1Kindint32
      end interface pop
      interface size
         module procedure sizeLogicalDim1Kindint32
      end interface size
      type:: StackNodeLogicalDim1Kindint64
         type(StackNodeLogicalDim1Kindint64), pointer:: prev => null()
         Logical(kind=int64), dimension(:), allocatable:: data
      end type StackNodeLogicalDim1Kindint64
      type, public:: StackLogicalDim1Kindint64
         type(StackNodeLogicalDim1Kindint64), pointer:: root => null()
      contains
         final:: finalizeLogicalDim1Kindint64
      end type StackLogicalDim1Kindint64
      interface add
         module procedure addLogicalDim1Kindint64
      end interface add
      interface pop
         module procedure pop1LogicalDim1Kindint64
         module procedure pop2LogicalDim1Kindint64
      end interface pop
      interface size
         module procedure sizeLogicalDim1Kindint64
      end interface size
      type:: StackNodeLogicalDim2Kindint8
         type(StackNodeLogicalDim2Kindint8), pointer:: prev => null()
         Logical(kind=int8), dimension(:, :), allocatable:: data
      end type StackNodeLogicalDim2Kindint8
      type, public:: StackLogicalDim2Kindint8
         type(StackNodeLogicalDim2Kindint8), pointer:: root => null()
      contains
         final:: finalizeLogicalDim2Kindint8
      end type StackLogicalDim2Kindint8
      interface add
         module procedure addLogicalDim2Kindint8
      end interface add
      interface pop
         module procedure pop1LogicalDim2Kindint8
         module procedure pop2LogicalDim2Kindint8
      end interface pop
      interface size
         module procedure sizeLogicalDim2Kindint8
      end interface size
      type:: StackNodeLogicalDim2Kindint16
         type(StackNodeLogicalDim2Kindint16), pointer:: prev => null()
         Logical(kind=int16), dimension(:, :), allocatable:: data
      end type StackNodeLogicalDim2Kindint16
      type, public:: StackLogicalDim2Kindint16
         type(StackNodeLogicalDim2Kindint16), pointer:: root => null()
      contains
         final:: finalizeLogicalDim2Kindint16
      end type StackLogicalDim2Kindint16
      interface add
         module procedure addLogicalDim2Kindint16
      end interface add
      interface pop
         module procedure pop1LogicalDim2Kindint16
         module procedure pop2LogicalDim2Kindint16
      end interface pop
      interface size
         module procedure sizeLogicalDim2Kindint16
      end interface size
      type:: StackNodeLogicalDim2Kindint32
         type(StackNodeLogicalDim2Kindint32), pointer:: prev => null()
         Logical(kind=int32), dimension(:, :), allocatable:: data
      end type StackNodeLogicalDim2Kindint32
      type, public:: StackLogicalDim2Kindint32
         type(StackNodeLogicalDim2Kindint32), pointer:: root => null()
      contains
         final:: finalizeLogicalDim2Kindint32
      end type StackLogicalDim2Kindint32
      interface add
         module procedure addLogicalDim2Kindint32
      end interface add
      interface pop
         module procedure pop1LogicalDim2Kindint32
         module procedure pop2LogicalDim2Kindint32
      end interface pop
      interface size
         module procedure sizeLogicalDim2Kindint32
      end interface size
      type:: StackNodeLogicalDim2Kindint64
         type(StackNodeLogicalDim2Kindint64), pointer:: prev => null()
         Logical(kind=int64), dimension(:, :), allocatable:: data
      end type StackNodeLogicalDim2Kindint64
      type, public:: StackLogicalDim2Kindint64
         type(StackNodeLogicalDim2Kindint64), pointer:: root => null()
      contains
         final:: finalizeLogicalDim2Kindint64
      end type StackLogicalDim2Kindint64
      interface add
         module procedure addLogicalDim2Kindint64
      end interface add
      interface pop
         module procedure pop1LogicalDim2Kindint64
         module procedure pop2LogicalDim2Kindint64
      end interface pop
      interface size
         module procedure sizeLogicalDim2Kindint64
      end interface size
      type:: StackNodeLogicalDim3Kindint8
         type(StackNodeLogicalDim3Kindint8), pointer:: prev => null()
         Logical(kind=int8), dimension(:, :, :), allocatable:: data
      end type StackNodeLogicalDim3Kindint8
      type, public:: StackLogicalDim3Kindint8
         type(StackNodeLogicalDim3Kindint8), pointer:: root => null()
      contains
         final:: finalizeLogicalDim3Kindint8
      end type StackLogicalDim3Kindint8
      interface add
         module procedure addLogicalDim3Kindint8
      end interface add
      interface pop
         module procedure pop1LogicalDim3Kindint8
         module procedure pop2LogicalDim3Kindint8
      end interface pop
      interface size
         module procedure sizeLogicalDim3Kindint8
      end interface size
      type:: StackNodeLogicalDim3Kindint16
         type(StackNodeLogicalDim3Kindint16), pointer:: prev => null()
         Logical(kind=int16), dimension(:, :, :), allocatable:: data
      end type StackNodeLogicalDim3Kindint16
      type, public:: StackLogicalDim3Kindint16
         type(StackNodeLogicalDim3Kindint16), pointer:: root => null()
      contains
         final:: finalizeLogicalDim3Kindint16
      end type StackLogicalDim3Kindint16
      interface add
         module procedure addLogicalDim3Kindint16
      end interface add
      interface pop
         module procedure pop1LogicalDim3Kindint16
         module procedure pop2LogicalDim3Kindint16
      end interface pop
      interface size
         module procedure sizeLogicalDim3Kindint16
      end interface size
      type:: StackNodeLogicalDim3Kindint32
         type(StackNodeLogicalDim3Kindint32), pointer:: prev => null()
         Logical(kind=int32), dimension(:, :, :), allocatable:: data
      end type StackNodeLogicalDim3Kindint32
      type, public:: StackLogicalDim3Kindint32
         type(StackNodeLogicalDim3Kindint32), pointer:: root => null()
      contains
         final:: finalizeLogicalDim3Kindint32
      end type StackLogicalDim3Kindint32
      interface add
         module procedure addLogicalDim3Kindint32
      end interface add
      interface pop
         module procedure pop1LogicalDim3Kindint32
         module procedure pop2LogicalDim3Kindint32
      end interface pop
      interface size
         module procedure sizeLogicalDim3Kindint32
      end interface size
      type:: StackNodeLogicalDim3Kindint64
         type(StackNodeLogicalDim3Kindint64), pointer:: prev => null()
         Logical(kind=int64), dimension(:, :, :), allocatable:: data
      end type StackNodeLogicalDim3Kindint64
      type, public:: StackLogicalDim3Kindint64
         type(StackNodeLogicalDim3Kindint64), pointer:: root => null()
      contains
         final:: finalizeLogicalDim3Kindint64
      end type StackLogicalDim3Kindint64
      interface add
         module procedure addLogicalDim3Kindint64
      end interface add
      interface pop
         module procedure pop1LogicalDim3Kindint64
         module procedure pop2LogicalDim3Kindint64
      end interface pop
      interface size
         module procedure sizeLogicalDim3Kindint64
      end interface size
      type:: StackNodeLogicalDim4Kindint8
         type(StackNodeLogicalDim4Kindint8), pointer:: prev => null()
         Logical(kind=int8), dimension(:, :, :, :), allocatable:: data
      end type StackNodeLogicalDim4Kindint8
      type, public:: StackLogicalDim4Kindint8
         type(StackNodeLogicalDim4Kindint8), pointer:: root => null()
      contains
         final:: finalizeLogicalDim4Kindint8
      end type StackLogicalDim4Kindint8
      interface add
         module procedure addLogicalDim4Kindint8
      end interface add
      interface pop
         module procedure pop1LogicalDim4Kindint8
         module procedure pop2LogicalDim4Kindint8
      end interface pop
      interface size
         module procedure sizeLogicalDim4Kindint8
      end interface size
      type:: StackNodeLogicalDim4Kindint16
         type(StackNodeLogicalDim4Kindint16), pointer:: prev => null()
         Logical(kind=int16), dimension(:, :, :, :), allocatable:: data
      end type StackNodeLogicalDim4Kindint16
      type, public:: StackLogicalDim4Kindint16
         type(StackNodeLogicalDim4Kindint16), pointer:: root => null()
      contains
         final:: finalizeLogicalDim4Kindint16
      end type StackLogicalDim4Kindint16
      interface add
         module procedure addLogicalDim4Kindint16
      end interface add
      interface pop
         module procedure pop1LogicalDim4Kindint16
         module procedure pop2LogicalDim4Kindint16
      end interface pop
      interface size
         module procedure sizeLogicalDim4Kindint16
      end interface size
      type:: StackNodeLogicalDim4Kindint32
         type(StackNodeLogicalDim4Kindint32), pointer:: prev => null()
         Logical(kind=int32), dimension(:, :, :, :), allocatable:: data
      end type StackNodeLogicalDim4Kindint32
      type, public:: StackLogicalDim4Kindint32
         type(StackNodeLogicalDim4Kindint32), pointer:: root => null()
      contains
         final:: finalizeLogicalDim4Kindint32
      end type StackLogicalDim4Kindint32
      interface add
         module procedure addLogicalDim4Kindint32
      end interface add
      interface pop
         module procedure pop1LogicalDim4Kindint32
         module procedure pop2LogicalDim4Kindint32
      end interface pop
      interface size
         module procedure sizeLogicalDim4Kindint32
      end interface size
      type:: StackNodeLogicalDim4Kindint64
         type(StackNodeLogicalDim4Kindint64), pointer:: prev => null()
         Logical(kind=int64), dimension(:, :, :, :), allocatable:: data
      end type StackNodeLogicalDim4Kindint64
      type, public:: StackLogicalDim4Kindint64
         type(StackNodeLogicalDim4Kindint64), pointer:: root => null()
      contains
         final:: finalizeLogicalDim4Kindint64
      end type StackLogicalDim4Kindint64
      interface add
         module procedure addLogicalDim4Kindint64
      end interface add
      interface pop
         module procedure pop1LogicalDim4Kindint64
         module procedure pop2LogicalDim4Kindint64
      end interface pop
      interface size
         module procedure sizeLogicalDim4Kindint64
      end interface size
      type:: StackNodeLogicalDim5Kindint8
         type(StackNodeLogicalDim5Kindint8), pointer:: prev => null()
         Logical(kind=int8), dimension(:, :, :, :, :), allocatable:: data
      end type StackNodeLogicalDim5Kindint8
      type, public:: StackLogicalDim5Kindint8
         type(StackNodeLogicalDim5Kindint8), pointer:: root => null()
      contains
         final:: finalizeLogicalDim5Kindint8
      end type StackLogicalDim5Kindint8
      interface add
         module procedure addLogicalDim5Kindint8
      end interface add
      interface pop
         module procedure pop1LogicalDim5Kindint8
         module procedure pop2LogicalDim5Kindint8
      end interface pop
      interface size
         module procedure sizeLogicalDim5Kindint8
      end interface size
      type:: StackNodeLogicalDim5Kindint16
         type(StackNodeLogicalDim5Kindint16), pointer:: prev => null()
         Logical(kind=int16), dimension(:, :, :, :, :), allocatable:: data
      end type StackNodeLogicalDim5Kindint16
      type, public:: StackLogicalDim5Kindint16
         type(StackNodeLogicalDim5Kindint16), pointer:: root => null()
      contains
         final:: finalizeLogicalDim5Kindint16
      end type StackLogicalDim5Kindint16
      interface add
         module procedure addLogicalDim5Kindint16
      end interface add
      interface pop
         module procedure pop1LogicalDim5Kindint16
         module procedure pop2LogicalDim5Kindint16
      end interface pop
      interface size
         module procedure sizeLogicalDim5Kindint16
      end interface size
      type:: StackNodeLogicalDim5Kindint32
         type(StackNodeLogicalDim5Kindint32), pointer:: prev => null()
         Logical(kind=int32), dimension(:, :, :, :, :), allocatable:: data
      end type StackNodeLogicalDim5Kindint32
      type, public:: StackLogicalDim5Kindint32
         type(StackNodeLogicalDim5Kindint32), pointer:: root => null()
      contains
         final:: finalizeLogicalDim5Kindint32
      end type StackLogicalDim5Kindint32
      interface add
         module procedure addLogicalDim5Kindint32
      end interface add
      interface pop
         module procedure pop1LogicalDim5Kindint32
         module procedure pop2LogicalDim5Kindint32
      end interface pop
      interface size
         module procedure sizeLogicalDim5Kindint32
      end interface size
      type:: StackNodeLogicalDim5Kindint64
         type(StackNodeLogicalDim5Kindint64), pointer:: prev => null()
         Logical(kind=int64), dimension(:, :, :, :, :), allocatable:: data
      end type StackNodeLogicalDim5Kindint64
      type, public:: StackLogicalDim5Kindint64
         type(StackNodeLogicalDim5Kindint64), pointer:: root => null()
      contains
         final:: finalizeLogicalDim5Kindint64
      end type StackLogicalDim5Kindint64
      interface add
         module procedure addLogicalDim5Kindint64
      end interface add
      interface pop
         module procedure pop1LogicalDim5Kindint64
         module procedure pop2LogicalDim5Kindint64
      end interface pop
      interface size
         module procedure sizeLogicalDim5Kindint64
      end interface size
      type:: StackNodeLogicalDim6Kindint8
         type(StackNodeLogicalDim6Kindint8), pointer:: prev => null()
         Logical(kind=int8), dimension(:, :, :, :, :, :), allocatable:: data
      end type StackNodeLogicalDim6Kindint8
      type, public:: StackLogicalDim6Kindint8
         type(StackNodeLogicalDim6Kindint8), pointer:: root => null()
      contains
         final:: finalizeLogicalDim6Kindint8
      end type StackLogicalDim6Kindint8
      interface add
         module procedure addLogicalDim6Kindint8
      end interface add
      interface pop
         module procedure pop1LogicalDim6Kindint8
         module procedure pop2LogicalDim6Kindint8
      end interface pop
      interface size
         module procedure sizeLogicalDim6Kindint8
      end interface size
      type:: StackNodeLogicalDim6Kindint16
         type(StackNodeLogicalDim6Kindint16), pointer:: prev => null()
         Logical(kind=int16), dimension(:, :, :, :, :, :), allocatable:: data
      end type StackNodeLogicalDim6Kindint16
      type, public:: StackLogicalDim6Kindint16
         type(StackNodeLogicalDim6Kindint16), pointer:: root => null()
      contains
         final:: finalizeLogicalDim6Kindint16
      end type StackLogicalDim6Kindint16
      interface add
         module procedure addLogicalDim6Kindint16
      end interface add
      interface pop
         module procedure pop1LogicalDim6Kindint16
         module procedure pop2LogicalDim6Kindint16
      end interface pop
      interface size
         module procedure sizeLogicalDim6Kindint16
      end interface size
      type:: StackNodeLogicalDim6Kindint32
         type(StackNodeLogicalDim6Kindint32), pointer:: prev => null()
         Logical(kind=int32), dimension(:, :, :, :, :, :), allocatable:: data
      end type StackNodeLogicalDim6Kindint32
      type, public:: StackLogicalDim6Kindint32
         type(StackNodeLogicalDim6Kindint32), pointer:: root => null()
      contains
         final:: finalizeLogicalDim6Kindint32
      end type StackLogicalDim6Kindint32
      interface add
         module procedure addLogicalDim6Kindint32
      end interface add
      interface pop
         module procedure pop1LogicalDim6Kindint32
         module procedure pop2LogicalDim6Kindint32
      end interface pop
      interface size
         module procedure sizeLogicalDim6Kindint32
      end interface size
      type:: StackNodeLogicalDim6Kindint64
         type(StackNodeLogicalDim6Kindint64), pointer:: prev => null()
         Logical(kind=int64), dimension(:, :, :, :, :, :), allocatable:: data
      end type StackNodeLogicalDim6Kindint64
      type, public:: StackLogicalDim6Kindint64
         type(StackNodeLogicalDim6Kindint64), pointer:: root => null()
      contains
         final:: finalizeLogicalDim6Kindint64
      end type StackLogicalDim6Kindint64
      interface add
         module procedure addLogicalDim6Kindint64
      end interface add
      interface pop
         module procedure pop1LogicalDim6Kindint64
         module procedure pop2LogicalDim6Kindint64
      end interface pop
      interface size
         module procedure sizeLogicalDim6Kindint64
      end interface size
      type:: StackNodeLogicalDim7Kindint8
         type(StackNodeLogicalDim7Kindint8), pointer:: prev => null()
         Logical(kind=int8), dimension(:, :, :, :, :, :, :), allocatable:: data
      end type StackNodeLogicalDim7Kindint8
      type, public:: StackLogicalDim7Kindint8
         type(StackNodeLogicalDim7Kindint8), pointer:: root => null()
      contains
         final:: finalizeLogicalDim7Kindint8
      end type StackLogicalDim7Kindint8
      interface add
         module procedure addLogicalDim7Kindint8
      end interface add
      interface pop
         module procedure pop1LogicalDim7Kindint8
         module procedure pop2LogicalDim7Kindint8
      end interface pop
      interface size
         module procedure sizeLogicalDim7Kindint8
      end interface size
      type:: StackNodeLogicalDim7Kindint16
         type(StackNodeLogicalDim7Kindint16), pointer:: prev => null()
         Logical(kind=int16), dimension(:, :, :, :, :, :, :), allocatable:: data
      end type StackNodeLogicalDim7Kindint16
      type, public:: StackLogicalDim7Kindint16
         type(StackNodeLogicalDim7Kindint16), pointer:: root => null()
      contains
         final:: finalizeLogicalDim7Kindint16
      end type StackLogicalDim7Kindint16
      interface add
         module procedure addLogicalDim7Kindint16
      end interface add
      interface pop
         module procedure pop1LogicalDim7Kindint16
         module procedure pop2LogicalDim7Kindint16
      end interface pop
      interface size
         module procedure sizeLogicalDim7Kindint16
      end interface size
      type:: StackNodeLogicalDim7Kindint32
         type(StackNodeLogicalDim7Kindint32), pointer:: prev => null()
         Logical(kind=int32), dimension(:, :, :, :, :, :, :), allocatable:: data
      end type StackNodeLogicalDim7Kindint32
      type, public:: StackLogicalDim7Kindint32
         type(StackNodeLogicalDim7Kindint32), pointer:: root => null()
      contains
         final:: finalizeLogicalDim7Kindint32
      end type StackLogicalDim7Kindint32
      interface add
         module procedure addLogicalDim7Kindint32
      end interface add
      interface pop
         module procedure pop1LogicalDim7Kindint32
         module procedure pop2LogicalDim7Kindint32
      end interface pop
      interface size
         module procedure sizeLogicalDim7Kindint32
      end interface size
      type:: StackNodeLogicalDim7Kindint64
         type(StackNodeLogicalDim7Kindint64), pointer:: prev => null()
         Logical(kind=int64), dimension(:, :, :, :, :, :, :), allocatable:: data
      end type StackNodeLogicalDim7Kindint64
      type, public:: StackLogicalDim7Kindint64
         type(StackNodeLogicalDim7Kindint64), pointer:: root => null()
      contains
         final:: finalizeLogicalDim7Kindint64
      end type StackLogicalDim7Kindint64
      interface add
         module procedure addLogicalDim7Kindint64
      end interface add
      interface pop
         module procedure pop1LogicalDim7Kindint64
         module procedure pop2LogicalDim7Kindint64
      end interface pop
      interface size
         module procedure sizeLogicalDim7Kindint64
      end interface size
      type:: StackNodeComplexDim0Kindreal32
         type(StackNodeComplexDim0Kindreal32), pointer:: prev => null()
         Complex(kind=real32):: data
      end type StackNodeComplexDim0Kindreal32
      type, public:: StackComplexDim0Kindreal32
         type(StackNodeComplexDim0Kindreal32), pointer:: root => null()
      contains
         final:: finalizeComplexDim0Kindreal32
      end type StackComplexDim0Kindreal32
      interface add
         module procedure addComplexDim0Kindreal32
      end interface add
      interface pop
         module procedure pop1ComplexDim0Kindreal32
         module procedure pop2ComplexDim0Kindreal32
      end interface pop
      interface size
         module procedure sizeComplexDim0Kindreal32
      end interface size
         interface array_of
            module procedure array_ofComplexDim0Kindreal32
         end interface array_of
      type:: StackNodeComplexDim0Kindreal64
         type(StackNodeComplexDim0Kindreal64), pointer:: prev => null()
         Complex(kind=real64):: data
      end type StackNodeComplexDim0Kindreal64
      type, public:: StackComplexDim0Kindreal64
         type(StackNodeComplexDim0Kindreal64), pointer:: root => null()
      contains
         final:: finalizeComplexDim0Kindreal64
      end type StackComplexDim0Kindreal64
      interface add
         module procedure addComplexDim0Kindreal64
      end interface add
      interface pop
         module procedure pop1ComplexDim0Kindreal64
         module procedure pop2ComplexDim0Kindreal64
      end interface pop
      interface size
         module procedure sizeComplexDim0Kindreal64
      end interface size
         interface array_of
            module procedure array_ofComplexDim0Kindreal64
         end interface array_of
      type:: StackNodeComplexDim0Kindreal128
         type(StackNodeComplexDim0Kindreal128), pointer:: prev => null()
         Complex(kind=real128):: data
      end type StackNodeComplexDim0Kindreal128
      type, public:: StackComplexDim0Kindreal128
         type(StackNodeComplexDim0Kindreal128), pointer:: root => null()
      contains
         final:: finalizeComplexDim0Kindreal128
      end type StackComplexDim0Kindreal128
      interface add
         module procedure addComplexDim0Kindreal128
      end interface add
      interface pop
         module procedure pop1ComplexDim0Kindreal128
         module procedure pop2ComplexDim0Kindreal128
      end interface pop
      interface size
         module procedure sizeComplexDim0Kindreal128
      end interface size
         interface array_of
            module procedure array_ofComplexDim0Kindreal128
         end interface array_of
      type:: StackNodeComplexDim1Kindreal32
         type(StackNodeComplexDim1Kindreal32), pointer:: prev => null()
         Complex(kind=real32), dimension(:), allocatable:: data
      end type StackNodeComplexDim1Kindreal32
      type, public:: StackComplexDim1Kindreal32
         type(StackNodeComplexDim1Kindreal32), pointer:: root => null()
      contains
         final:: finalizeComplexDim1Kindreal32
      end type StackComplexDim1Kindreal32
      interface add
         module procedure addComplexDim1Kindreal32
      end interface add
      interface pop
         module procedure pop1ComplexDim1Kindreal32
         module procedure pop2ComplexDim1Kindreal32
      end interface pop
      interface size
         module procedure sizeComplexDim1Kindreal32
      end interface size
      type:: StackNodeComplexDim1Kindreal64
         type(StackNodeComplexDim1Kindreal64), pointer:: prev => null()
         Complex(kind=real64), dimension(:), allocatable:: data
      end type StackNodeComplexDim1Kindreal64
      type, public:: StackComplexDim1Kindreal64
         type(StackNodeComplexDim1Kindreal64), pointer:: root => null()
      contains
         final:: finalizeComplexDim1Kindreal64
      end type StackComplexDim1Kindreal64
      interface add
         module procedure addComplexDim1Kindreal64
      end interface add
      interface pop
         module procedure pop1ComplexDim1Kindreal64
         module procedure pop2ComplexDim1Kindreal64
      end interface pop
      interface size
         module procedure sizeComplexDim1Kindreal64
      end interface size
      type:: StackNodeComplexDim1Kindreal128
         type(StackNodeComplexDim1Kindreal128), pointer:: prev => null()
         Complex(kind=real128), dimension(:), allocatable:: data
      end type StackNodeComplexDim1Kindreal128
      type, public:: StackComplexDim1Kindreal128
         type(StackNodeComplexDim1Kindreal128), pointer:: root => null()
      contains
         final:: finalizeComplexDim1Kindreal128
      end type StackComplexDim1Kindreal128
      interface add
         module procedure addComplexDim1Kindreal128
      end interface add
      interface pop
         module procedure pop1ComplexDim1Kindreal128
         module procedure pop2ComplexDim1Kindreal128
      end interface pop
      interface size
         module procedure sizeComplexDim1Kindreal128
      end interface size
      type:: StackNodeComplexDim2Kindreal32
         type(StackNodeComplexDim2Kindreal32), pointer:: prev => null()
         Complex(kind=real32), dimension(:, :), allocatable:: data
      end type StackNodeComplexDim2Kindreal32
      type, public:: StackComplexDim2Kindreal32
         type(StackNodeComplexDim2Kindreal32), pointer:: root => null()
      contains
         final:: finalizeComplexDim2Kindreal32
      end type StackComplexDim2Kindreal32
      interface add
         module procedure addComplexDim2Kindreal32
      end interface add
      interface pop
         module procedure pop1ComplexDim2Kindreal32
         module procedure pop2ComplexDim2Kindreal32
      end interface pop
      interface size
         module procedure sizeComplexDim2Kindreal32
      end interface size
      type:: StackNodeComplexDim2Kindreal64
         type(StackNodeComplexDim2Kindreal64), pointer:: prev => null()
         Complex(kind=real64), dimension(:, :), allocatable:: data
      end type StackNodeComplexDim2Kindreal64
      type, public:: StackComplexDim2Kindreal64
         type(StackNodeComplexDim2Kindreal64), pointer:: root => null()
      contains
         final:: finalizeComplexDim2Kindreal64
      end type StackComplexDim2Kindreal64
      interface add
         module procedure addComplexDim2Kindreal64
      end interface add
      interface pop
         module procedure pop1ComplexDim2Kindreal64
         module procedure pop2ComplexDim2Kindreal64
      end interface pop
      interface size
         module procedure sizeComplexDim2Kindreal64
      end interface size
      type:: StackNodeComplexDim2Kindreal128
         type(StackNodeComplexDim2Kindreal128), pointer:: prev => null()
         Complex(kind=real128), dimension(:, :), allocatable:: data
      end type StackNodeComplexDim2Kindreal128
      type, public:: StackComplexDim2Kindreal128
         type(StackNodeComplexDim2Kindreal128), pointer:: root => null()
      contains
         final:: finalizeComplexDim2Kindreal128
      end type StackComplexDim2Kindreal128
      interface add
         module procedure addComplexDim2Kindreal128
      end interface add
      interface pop
         module procedure pop1ComplexDim2Kindreal128
         module procedure pop2ComplexDim2Kindreal128
      end interface pop
      interface size
         module procedure sizeComplexDim2Kindreal128
      end interface size
      type:: StackNodeComplexDim3Kindreal32
         type(StackNodeComplexDim3Kindreal32), pointer:: prev => null()
         Complex(kind=real32), dimension(:, :, :), allocatable:: data
      end type StackNodeComplexDim3Kindreal32
      type, public:: StackComplexDim3Kindreal32
         type(StackNodeComplexDim3Kindreal32), pointer:: root => null()
      contains
         final:: finalizeComplexDim3Kindreal32
      end type StackComplexDim3Kindreal32
      interface add
         module procedure addComplexDim3Kindreal32
      end interface add
      interface pop
         module procedure pop1ComplexDim3Kindreal32
         module procedure pop2ComplexDim3Kindreal32
      end interface pop
      interface size
         module procedure sizeComplexDim3Kindreal32
      end interface size
      type:: StackNodeComplexDim3Kindreal64
         type(StackNodeComplexDim3Kindreal64), pointer:: prev => null()
         Complex(kind=real64), dimension(:, :, :), allocatable:: data
      end type StackNodeComplexDim3Kindreal64
      type, public:: StackComplexDim3Kindreal64
         type(StackNodeComplexDim3Kindreal64), pointer:: root => null()
      contains
         final:: finalizeComplexDim3Kindreal64
      end type StackComplexDim3Kindreal64
      interface add
         module procedure addComplexDim3Kindreal64
      end interface add
      interface pop
         module procedure pop1ComplexDim3Kindreal64
         module procedure pop2ComplexDim3Kindreal64
      end interface pop
      interface size
         module procedure sizeComplexDim3Kindreal64
      end interface size
      type:: StackNodeComplexDim3Kindreal128
         type(StackNodeComplexDim3Kindreal128), pointer:: prev => null()
         Complex(kind=real128), dimension(:, :, :), allocatable:: data
      end type StackNodeComplexDim3Kindreal128
      type, public:: StackComplexDim3Kindreal128
         type(StackNodeComplexDim3Kindreal128), pointer:: root => null()
      contains
         final:: finalizeComplexDim3Kindreal128
      end type StackComplexDim3Kindreal128
      interface add
         module procedure addComplexDim3Kindreal128
      end interface add
      interface pop
         module procedure pop1ComplexDim3Kindreal128
         module procedure pop2ComplexDim3Kindreal128
      end interface pop
      interface size
         module procedure sizeComplexDim3Kindreal128
      end interface size
      type:: StackNodeComplexDim4Kindreal32
         type(StackNodeComplexDim4Kindreal32), pointer:: prev => null()
         Complex(kind=real32), dimension(:, :, :, :), allocatable:: data
      end type StackNodeComplexDim4Kindreal32
      type, public:: StackComplexDim4Kindreal32
         type(StackNodeComplexDim4Kindreal32), pointer:: root => null()
      contains
         final:: finalizeComplexDim4Kindreal32
      end type StackComplexDim4Kindreal32
      interface add
         module procedure addComplexDim4Kindreal32
      end interface add
      interface pop
         module procedure pop1ComplexDim4Kindreal32
         module procedure pop2ComplexDim4Kindreal32
      end interface pop
      interface size
         module procedure sizeComplexDim4Kindreal32
      end interface size
      type:: StackNodeComplexDim4Kindreal64
         type(StackNodeComplexDim4Kindreal64), pointer:: prev => null()
         Complex(kind=real64), dimension(:, :, :, :), allocatable:: data
      end type StackNodeComplexDim4Kindreal64
      type, public:: StackComplexDim4Kindreal64
         type(StackNodeComplexDim4Kindreal64), pointer:: root => null()
      contains
         final:: finalizeComplexDim4Kindreal64
      end type StackComplexDim4Kindreal64
      interface add
         module procedure addComplexDim4Kindreal64
      end interface add
      interface pop
         module procedure pop1ComplexDim4Kindreal64
         module procedure pop2ComplexDim4Kindreal64
      end interface pop
      interface size
         module procedure sizeComplexDim4Kindreal64
      end interface size
      type:: StackNodeComplexDim4Kindreal128
         type(StackNodeComplexDim4Kindreal128), pointer:: prev => null()
         Complex(kind=real128), dimension(:, :, :, :), allocatable:: data
      end type StackNodeComplexDim4Kindreal128
      type, public:: StackComplexDim4Kindreal128
         type(StackNodeComplexDim4Kindreal128), pointer:: root => null()
      contains
         final:: finalizeComplexDim4Kindreal128
      end type StackComplexDim4Kindreal128
      interface add
         module procedure addComplexDim4Kindreal128
      end interface add
      interface pop
         module procedure pop1ComplexDim4Kindreal128
         module procedure pop2ComplexDim4Kindreal128
      end interface pop
      interface size
         module procedure sizeComplexDim4Kindreal128
      end interface size
      type:: StackNodeComplexDim5Kindreal32
         type(StackNodeComplexDim5Kindreal32), pointer:: prev => null()
         Complex(kind=real32), dimension(:, :, :, :, :), allocatable:: data
      end type StackNodeComplexDim5Kindreal32
      type, public:: StackComplexDim5Kindreal32
         type(StackNodeComplexDim5Kindreal32), pointer:: root => null()
      contains
         final:: finalizeComplexDim5Kindreal32
      end type StackComplexDim5Kindreal32
      interface add
         module procedure addComplexDim5Kindreal32
      end interface add
      interface pop
         module procedure pop1ComplexDim5Kindreal32
         module procedure pop2ComplexDim5Kindreal32
      end interface pop
      interface size
         module procedure sizeComplexDim5Kindreal32
      end interface size
      type:: StackNodeComplexDim5Kindreal64
         type(StackNodeComplexDim5Kindreal64), pointer:: prev => null()
         Complex(kind=real64), dimension(:, :, :, :, :), allocatable:: data
      end type StackNodeComplexDim5Kindreal64
      type, public:: StackComplexDim5Kindreal64
         type(StackNodeComplexDim5Kindreal64), pointer:: root => null()
      contains
         final:: finalizeComplexDim5Kindreal64
      end type StackComplexDim5Kindreal64
      interface add
         module procedure addComplexDim5Kindreal64
      end interface add
      interface pop
         module procedure pop1ComplexDim5Kindreal64
         module procedure pop2ComplexDim5Kindreal64
      end interface pop
      interface size
         module procedure sizeComplexDim5Kindreal64
      end interface size
      type:: StackNodeComplexDim5Kindreal128
         type(StackNodeComplexDim5Kindreal128), pointer:: prev => null()
         Complex(kind=real128), dimension(:, :, :, :, :), allocatable:: data
      end type StackNodeComplexDim5Kindreal128
      type, public:: StackComplexDim5Kindreal128
         type(StackNodeComplexDim5Kindreal128), pointer:: root => null()
      contains
         final:: finalizeComplexDim5Kindreal128
      end type StackComplexDim5Kindreal128
      interface add
         module procedure addComplexDim5Kindreal128
      end interface add
      interface pop
         module procedure pop1ComplexDim5Kindreal128
         module procedure pop2ComplexDim5Kindreal128
      end interface pop
      interface size
         module procedure sizeComplexDim5Kindreal128
      end interface size
      type:: StackNodeComplexDim6Kindreal32
         type(StackNodeComplexDim6Kindreal32), pointer:: prev => null()
         Complex(kind=real32), dimension(:, :, :, :, :, :), allocatable:: data
      end type StackNodeComplexDim6Kindreal32
      type, public:: StackComplexDim6Kindreal32
         type(StackNodeComplexDim6Kindreal32), pointer:: root => null()
      contains
         final:: finalizeComplexDim6Kindreal32
      end type StackComplexDim6Kindreal32
      interface add
         module procedure addComplexDim6Kindreal32
      end interface add
      interface pop
         module procedure pop1ComplexDim6Kindreal32
         module procedure pop2ComplexDim6Kindreal32
      end interface pop
      interface size
         module procedure sizeComplexDim6Kindreal32
      end interface size
      type:: StackNodeComplexDim6Kindreal64
         type(StackNodeComplexDim6Kindreal64), pointer:: prev => null()
         Complex(kind=real64), dimension(:, :, :, :, :, :), allocatable:: data
      end type StackNodeComplexDim6Kindreal64
      type, public:: StackComplexDim6Kindreal64
         type(StackNodeComplexDim6Kindreal64), pointer:: root => null()
      contains
         final:: finalizeComplexDim6Kindreal64
      end type StackComplexDim6Kindreal64
      interface add
         module procedure addComplexDim6Kindreal64
      end interface add
      interface pop
         module procedure pop1ComplexDim6Kindreal64
         module procedure pop2ComplexDim6Kindreal64
      end interface pop
      interface size
         module procedure sizeComplexDim6Kindreal64
      end interface size
      type:: StackNodeComplexDim6Kindreal128
         type(StackNodeComplexDim6Kindreal128), pointer:: prev => null()
         Complex(kind=real128), dimension(:, :, :, :, :, :), allocatable:: data
      end type StackNodeComplexDim6Kindreal128
      type, public:: StackComplexDim6Kindreal128
         type(StackNodeComplexDim6Kindreal128), pointer:: root => null()
      contains
         final:: finalizeComplexDim6Kindreal128
      end type StackComplexDim6Kindreal128
      interface add
         module procedure addComplexDim6Kindreal128
      end interface add
      interface pop
         module procedure pop1ComplexDim6Kindreal128
         module procedure pop2ComplexDim6Kindreal128
      end interface pop
      interface size
         module procedure sizeComplexDim6Kindreal128
      end interface size
      type:: StackNodeComplexDim7Kindreal32
         type(StackNodeComplexDim7Kindreal32), pointer:: prev => null()
         Complex(kind=real32), dimension(:, :, :, :, :, :, :), allocatable:: data
      end type StackNodeComplexDim7Kindreal32
      type, public:: StackComplexDim7Kindreal32
         type(StackNodeComplexDim7Kindreal32), pointer:: root => null()
      contains
         final:: finalizeComplexDim7Kindreal32
      end type StackComplexDim7Kindreal32
      interface add
         module procedure addComplexDim7Kindreal32
      end interface add
      interface pop
         module procedure pop1ComplexDim7Kindreal32
         module procedure pop2ComplexDim7Kindreal32
      end interface pop
      interface size
         module procedure sizeComplexDim7Kindreal32
      end interface size
      type:: StackNodeComplexDim7Kindreal64
         type(StackNodeComplexDim7Kindreal64), pointer:: prev => null()
         Complex(kind=real64), dimension(:, :, :, :, :, :, :), allocatable:: data
      end type StackNodeComplexDim7Kindreal64
      type, public:: StackComplexDim7Kindreal64
         type(StackNodeComplexDim7Kindreal64), pointer:: root => null()
      contains
         final:: finalizeComplexDim7Kindreal64
      end type StackComplexDim7Kindreal64
      interface add
         module procedure addComplexDim7Kindreal64
      end interface add
      interface pop
         module procedure pop1ComplexDim7Kindreal64
         module procedure pop2ComplexDim7Kindreal64
      end interface pop
      interface size
         module procedure sizeComplexDim7Kindreal64
      end interface size
      type:: StackNodeComplexDim7Kindreal128
         type(StackNodeComplexDim7Kindreal128), pointer:: prev => null()
         Complex(kind=real128), dimension(:, :, :, :, :, :, :), allocatable:: data
      end type StackNodeComplexDim7Kindreal128
      type, public:: StackComplexDim7Kindreal128
         type(StackNodeComplexDim7Kindreal128), pointer:: root => null()
      contains
         final:: finalizeComplexDim7Kindreal128
      end type StackComplexDim7Kindreal128
      interface add
         module procedure addComplexDim7Kindreal128
      end interface add
      interface pop
         module procedure pop1ComplexDim7Kindreal128
         module procedure pop2ComplexDim7Kindreal128
      end interface pop
      interface size
         module procedure sizeComplexDim7Kindreal128
      end interface size
contains
      pure subroutine addRealDim0Kindreal32(self, data)
         type(StackRealDim0Kindreal32), intent(inout):: self
         Real(kind=real32), intent(in):: data
         type(StackNodeRealDim0Kindreal32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim0Kindreal32
      function pop1RealDim0Kindreal32(self) result(data)
         Real(kind=real32):: data
         type(StackRealDim0Kindreal32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim0Kindreal32
      function pop2RealDim0Kindreal32(self, data) result(found)
         Logical:: found
         type(StackRealDim0Kindreal32), intent(inout):: self
         Real(kind=real32), intent(out):: data
         type(StackNodeRealDim0Kindreal32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim0Kindreal32
      impure elemental function sizeRealDim0Kindreal32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim0Kindreal32), intent(in):: self
         type(StackNodeRealDim0Kindreal32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim0Kindreal32
         function array_ofRealDim0Kindreal32(self) result(ret)
            type(StackRealDim0Kindreal32), intent(in):: self
            Real(kind=real32):: ret(size(self))
            type(StackNodeRealDim0Kindreal32), pointer:: tmp
            Integer(kind=int64):: i
            tmp => self%root
            do i = 1, size(ret, kind=kind(i))
               ret(i) = tmp%data
               tmp => tmp%prev
            end do
         end function array_ofRealDim0Kindreal32
      impure elemental subroutine finalizeRealDim0Kindreal32(self)
         type(StackRealDim0Kindreal32), intent(inout):: self
         type(StackNodeRealDim0Kindreal32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim0Kindreal32
      pure subroutine addRealDim0Kindreal64(self, data)
         type(StackRealDim0Kindreal64), intent(inout):: self
         Real(kind=real64), intent(in):: data
         type(StackNodeRealDim0Kindreal64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim0Kindreal64
      function pop1RealDim0Kindreal64(self) result(data)
         Real(kind=real64):: data
         type(StackRealDim0Kindreal64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim0Kindreal64
      function pop2RealDim0Kindreal64(self, data) result(found)
         Logical:: found
         type(StackRealDim0Kindreal64), intent(inout):: self
         Real(kind=real64), intent(out):: data
         type(StackNodeRealDim0Kindreal64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim0Kindreal64
      impure elemental function sizeRealDim0Kindreal64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim0Kindreal64), intent(in):: self
         type(StackNodeRealDim0Kindreal64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim0Kindreal64
         function array_ofRealDim0Kindreal64(self) result(ret)
            type(StackRealDim0Kindreal64), intent(in):: self
            Real(kind=real64):: ret(size(self))
            type(StackNodeRealDim0Kindreal64), pointer:: tmp
            Integer(kind=int64):: i
            tmp => self%root
            do i = 1, size(ret, kind=kind(i))
               ret(i) = tmp%data
               tmp => tmp%prev
            end do
         end function array_ofRealDim0Kindreal64
      impure elemental subroutine finalizeRealDim0Kindreal64(self)
         type(StackRealDim0Kindreal64), intent(inout):: self
         type(StackNodeRealDim0Kindreal64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim0Kindreal64
      pure subroutine addRealDim0Kindreal128(self, data)
         type(StackRealDim0Kindreal128), intent(inout):: self
         Real(kind=real128), intent(in):: data
         type(StackNodeRealDim0Kindreal128), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim0Kindreal128
      function pop1RealDim0Kindreal128(self) result(data)
         Real(kind=real128):: data
         type(StackRealDim0Kindreal128), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim0Kindreal128
      function pop2RealDim0Kindreal128(self, data) result(found)
         Logical:: found
         type(StackRealDim0Kindreal128), intent(inout):: self
         Real(kind=real128), intent(out):: data
         type(StackNodeRealDim0Kindreal128), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim0Kindreal128
      impure elemental function sizeRealDim0Kindreal128(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim0Kindreal128), intent(in):: self
         type(StackNodeRealDim0Kindreal128), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim0Kindreal128
         function array_ofRealDim0Kindreal128(self) result(ret)
            type(StackRealDim0Kindreal128), intent(in):: self
            Real(kind=real128):: ret(size(self))
            type(StackNodeRealDim0Kindreal128), pointer:: tmp
            Integer(kind=int64):: i
            tmp => self%root
            do i = 1, size(ret, kind=kind(i))
               ret(i) = tmp%data
               tmp => tmp%prev
            end do
         end function array_ofRealDim0Kindreal128
      impure elemental subroutine finalizeRealDim0Kindreal128(self)
         type(StackRealDim0Kindreal128), intent(inout):: self
         type(StackNodeRealDim0Kindreal128), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim0Kindreal128
      pure subroutine addRealDim1Kindreal32(self, data)
         type(StackRealDim1Kindreal32), intent(inout):: self
         Real(kind=real32), dimension(:), intent(in):: data
         type(StackNodeRealDim1Kindreal32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim1Kindreal32
      function pop1RealDim1Kindreal32(self) result(data)
         Real(kind=real32), dimension(:), allocatable:: data
         type(StackRealDim1Kindreal32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim1Kindreal32
      function pop2RealDim1Kindreal32(self, data) result(found)
         Logical:: found
         type(StackRealDim1Kindreal32), intent(inout):: self
         Real(kind=real32), dimension(:), allocatable, intent(out):: data
         type(StackNodeRealDim1Kindreal32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim1Kindreal32
      impure elemental function sizeRealDim1Kindreal32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim1Kindreal32), intent(in):: self
         type(StackNodeRealDim1Kindreal32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim1Kindreal32
      impure elemental subroutine finalizeRealDim1Kindreal32(self)
         type(StackRealDim1Kindreal32), intent(inout):: self
         type(StackNodeRealDim1Kindreal32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim1Kindreal32
      pure subroutine addRealDim1Kindreal64(self, data)
         type(StackRealDim1Kindreal64), intent(inout):: self
         Real(kind=real64), dimension(:), intent(in):: data
         type(StackNodeRealDim1Kindreal64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim1Kindreal64
      function pop1RealDim1Kindreal64(self) result(data)
         Real(kind=real64), dimension(:), allocatable:: data
         type(StackRealDim1Kindreal64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim1Kindreal64
      function pop2RealDim1Kindreal64(self, data) result(found)
         Logical:: found
         type(StackRealDim1Kindreal64), intent(inout):: self
         Real(kind=real64), dimension(:), allocatable, intent(out):: data
         type(StackNodeRealDim1Kindreal64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim1Kindreal64
      impure elemental function sizeRealDim1Kindreal64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim1Kindreal64), intent(in):: self
         type(StackNodeRealDim1Kindreal64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim1Kindreal64
      impure elemental subroutine finalizeRealDim1Kindreal64(self)
         type(StackRealDim1Kindreal64), intent(inout):: self
         type(StackNodeRealDim1Kindreal64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim1Kindreal64
      pure subroutine addRealDim1Kindreal128(self, data)
         type(StackRealDim1Kindreal128), intent(inout):: self
         Real(kind=real128), dimension(:), intent(in):: data
         type(StackNodeRealDim1Kindreal128), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim1Kindreal128
      function pop1RealDim1Kindreal128(self) result(data)
         Real(kind=real128), dimension(:), allocatable:: data
         type(StackRealDim1Kindreal128), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim1Kindreal128
      function pop2RealDim1Kindreal128(self, data) result(found)
         Logical:: found
         type(StackRealDim1Kindreal128), intent(inout):: self
         Real(kind=real128), dimension(:), allocatable, intent(out):: data
         type(StackNodeRealDim1Kindreal128), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim1Kindreal128
      impure elemental function sizeRealDim1Kindreal128(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim1Kindreal128), intent(in):: self
         type(StackNodeRealDim1Kindreal128), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim1Kindreal128
      impure elemental subroutine finalizeRealDim1Kindreal128(self)
         type(StackRealDim1Kindreal128), intent(inout):: self
         type(StackNodeRealDim1Kindreal128), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim1Kindreal128
      pure subroutine addRealDim2Kindreal32(self, data)
         type(StackRealDim2Kindreal32), intent(inout):: self
         Real(kind=real32), dimension(:, :), intent(in):: data
         type(StackNodeRealDim2Kindreal32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim2Kindreal32
      function pop1RealDim2Kindreal32(self) result(data)
         Real(kind=real32), dimension(:, :), allocatable:: data
         type(StackRealDim2Kindreal32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim2Kindreal32
      function pop2RealDim2Kindreal32(self, data) result(found)
         Logical:: found
         type(StackRealDim2Kindreal32), intent(inout):: self
         Real(kind=real32), dimension(:, :), allocatable, intent(out):: data
         type(StackNodeRealDim2Kindreal32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim2Kindreal32
      impure elemental function sizeRealDim2Kindreal32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim2Kindreal32), intent(in):: self
         type(StackNodeRealDim2Kindreal32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim2Kindreal32
      impure elemental subroutine finalizeRealDim2Kindreal32(self)
         type(StackRealDim2Kindreal32), intent(inout):: self
         type(StackNodeRealDim2Kindreal32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim2Kindreal32
      pure subroutine addRealDim2Kindreal64(self, data)
         type(StackRealDim2Kindreal64), intent(inout):: self
         Real(kind=real64), dimension(:, :), intent(in):: data
         type(StackNodeRealDim2Kindreal64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim2Kindreal64
      function pop1RealDim2Kindreal64(self) result(data)
         Real(kind=real64), dimension(:, :), allocatable:: data
         type(StackRealDim2Kindreal64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim2Kindreal64
      function pop2RealDim2Kindreal64(self, data) result(found)
         Logical:: found
         type(StackRealDim2Kindreal64), intent(inout):: self
         Real(kind=real64), dimension(:, :), allocatable, intent(out):: data
         type(StackNodeRealDim2Kindreal64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim2Kindreal64
      impure elemental function sizeRealDim2Kindreal64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim2Kindreal64), intent(in):: self
         type(StackNodeRealDim2Kindreal64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim2Kindreal64
      impure elemental subroutine finalizeRealDim2Kindreal64(self)
         type(StackRealDim2Kindreal64), intent(inout):: self
         type(StackNodeRealDim2Kindreal64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim2Kindreal64
      pure subroutine addRealDim2Kindreal128(self, data)
         type(StackRealDim2Kindreal128), intent(inout):: self
         Real(kind=real128), dimension(:, :), intent(in):: data
         type(StackNodeRealDim2Kindreal128), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim2Kindreal128
      function pop1RealDim2Kindreal128(self) result(data)
         Real(kind=real128), dimension(:, :), allocatable:: data
         type(StackRealDim2Kindreal128), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim2Kindreal128
      function pop2RealDim2Kindreal128(self, data) result(found)
         Logical:: found
         type(StackRealDim2Kindreal128), intent(inout):: self
         Real(kind=real128), dimension(:, :), allocatable, intent(out):: data
         type(StackNodeRealDim2Kindreal128), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim2Kindreal128
      impure elemental function sizeRealDim2Kindreal128(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim2Kindreal128), intent(in):: self
         type(StackNodeRealDim2Kindreal128), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim2Kindreal128
      impure elemental subroutine finalizeRealDim2Kindreal128(self)
         type(StackRealDim2Kindreal128), intent(inout):: self
         type(StackNodeRealDim2Kindreal128), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim2Kindreal128
      pure subroutine addRealDim3Kindreal32(self, data)
         type(StackRealDim3Kindreal32), intent(inout):: self
         Real(kind=real32), dimension(:, :, :), intent(in):: data
         type(StackNodeRealDim3Kindreal32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim3Kindreal32
      function pop1RealDim3Kindreal32(self) result(data)
         Real(kind=real32), dimension(:, :, :), allocatable:: data
         type(StackRealDim3Kindreal32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim3Kindreal32
      function pop2RealDim3Kindreal32(self, data) result(found)
         Logical:: found
         type(StackRealDim3Kindreal32), intent(inout):: self
         Real(kind=real32), dimension(:, :, :), allocatable, intent(out):: data
         type(StackNodeRealDim3Kindreal32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim3Kindreal32
      impure elemental function sizeRealDim3Kindreal32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim3Kindreal32), intent(in):: self
         type(StackNodeRealDim3Kindreal32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim3Kindreal32
      impure elemental subroutine finalizeRealDim3Kindreal32(self)
         type(StackRealDim3Kindreal32), intent(inout):: self
         type(StackNodeRealDim3Kindreal32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim3Kindreal32
      pure subroutine addRealDim3Kindreal64(self, data)
         type(StackRealDim3Kindreal64), intent(inout):: self
         Real(kind=real64), dimension(:, :, :), intent(in):: data
         type(StackNodeRealDim3Kindreal64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim3Kindreal64
      function pop1RealDim3Kindreal64(self) result(data)
         Real(kind=real64), dimension(:, :, :), allocatable:: data
         type(StackRealDim3Kindreal64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim3Kindreal64
      function pop2RealDim3Kindreal64(self, data) result(found)
         Logical:: found
         type(StackRealDim3Kindreal64), intent(inout):: self
         Real(kind=real64), dimension(:, :, :), allocatable, intent(out):: data
         type(StackNodeRealDim3Kindreal64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim3Kindreal64
      impure elemental function sizeRealDim3Kindreal64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim3Kindreal64), intent(in):: self
         type(StackNodeRealDim3Kindreal64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim3Kindreal64
      impure elemental subroutine finalizeRealDim3Kindreal64(self)
         type(StackRealDim3Kindreal64), intent(inout):: self
         type(StackNodeRealDim3Kindreal64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim3Kindreal64
      pure subroutine addRealDim3Kindreal128(self, data)
         type(StackRealDim3Kindreal128), intent(inout):: self
         Real(kind=real128), dimension(:, :, :), intent(in):: data
         type(StackNodeRealDim3Kindreal128), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim3Kindreal128
      function pop1RealDim3Kindreal128(self) result(data)
         Real(kind=real128), dimension(:, :, :), allocatable:: data
         type(StackRealDim3Kindreal128), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim3Kindreal128
      function pop2RealDim3Kindreal128(self, data) result(found)
         Logical:: found
         type(StackRealDim3Kindreal128), intent(inout):: self
         Real(kind=real128), dimension(:, :, :), allocatable, intent(out):: data
         type(StackNodeRealDim3Kindreal128), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim3Kindreal128
      impure elemental function sizeRealDim3Kindreal128(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim3Kindreal128), intent(in):: self
         type(StackNodeRealDim3Kindreal128), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim3Kindreal128
      impure elemental subroutine finalizeRealDim3Kindreal128(self)
         type(StackRealDim3Kindreal128), intent(inout):: self
         type(StackNodeRealDim3Kindreal128), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim3Kindreal128
      pure subroutine addRealDim4Kindreal32(self, data)
         type(StackRealDim4Kindreal32), intent(inout):: self
         Real(kind=real32), dimension(:, :, :, :), intent(in):: data
         type(StackNodeRealDim4Kindreal32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim4Kindreal32
      function pop1RealDim4Kindreal32(self) result(data)
         Real(kind=real32), dimension(:, :, :, :), allocatable:: data
         type(StackRealDim4Kindreal32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim4Kindreal32
      function pop2RealDim4Kindreal32(self, data) result(found)
         Logical:: found
         type(StackRealDim4Kindreal32), intent(inout):: self
         Real(kind=real32), dimension(:, :, :, :), allocatable, intent(out):: data
         type(StackNodeRealDim4Kindreal32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim4Kindreal32
      impure elemental function sizeRealDim4Kindreal32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim4Kindreal32), intent(in):: self
         type(StackNodeRealDim4Kindreal32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim4Kindreal32
      impure elemental subroutine finalizeRealDim4Kindreal32(self)
         type(StackRealDim4Kindreal32), intent(inout):: self
         type(StackNodeRealDim4Kindreal32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim4Kindreal32
      pure subroutine addRealDim4Kindreal64(self, data)
         type(StackRealDim4Kindreal64), intent(inout):: self
         Real(kind=real64), dimension(:, :, :, :), intent(in):: data
         type(StackNodeRealDim4Kindreal64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim4Kindreal64
      function pop1RealDim4Kindreal64(self) result(data)
         Real(kind=real64), dimension(:, :, :, :), allocatable:: data
         type(StackRealDim4Kindreal64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim4Kindreal64
      function pop2RealDim4Kindreal64(self, data) result(found)
         Logical:: found
         type(StackRealDim4Kindreal64), intent(inout):: self
         Real(kind=real64), dimension(:, :, :, :), allocatable, intent(out):: data
         type(StackNodeRealDim4Kindreal64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim4Kindreal64
      impure elemental function sizeRealDim4Kindreal64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim4Kindreal64), intent(in):: self
         type(StackNodeRealDim4Kindreal64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim4Kindreal64
      impure elemental subroutine finalizeRealDim4Kindreal64(self)
         type(StackRealDim4Kindreal64), intent(inout):: self
         type(StackNodeRealDim4Kindreal64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim4Kindreal64
      pure subroutine addRealDim4Kindreal128(self, data)
         type(StackRealDim4Kindreal128), intent(inout):: self
         Real(kind=real128), dimension(:, :, :, :), intent(in):: data
         type(StackNodeRealDim4Kindreal128), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim4Kindreal128
      function pop1RealDim4Kindreal128(self) result(data)
         Real(kind=real128), dimension(:, :, :, :), allocatable:: data
         type(StackRealDim4Kindreal128), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim4Kindreal128
      function pop2RealDim4Kindreal128(self, data) result(found)
         Logical:: found
         type(StackRealDim4Kindreal128), intent(inout):: self
         Real(kind=real128), dimension(:, :, :, :), allocatable, intent(out):: data
         type(StackNodeRealDim4Kindreal128), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim4Kindreal128
      impure elemental function sizeRealDim4Kindreal128(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim4Kindreal128), intent(in):: self
         type(StackNodeRealDim4Kindreal128), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim4Kindreal128
      impure elemental subroutine finalizeRealDim4Kindreal128(self)
         type(StackRealDim4Kindreal128), intent(inout):: self
         type(StackNodeRealDim4Kindreal128), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim4Kindreal128
      pure subroutine addRealDim5Kindreal32(self, data)
         type(StackRealDim5Kindreal32), intent(inout):: self
         Real(kind=real32), dimension(:, :, :, :, :), intent(in):: data
         type(StackNodeRealDim5Kindreal32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim5Kindreal32
      function pop1RealDim5Kindreal32(self) result(data)
         Real(kind=real32), dimension(:, :, :, :, :), allocatable:: data
         type(StackRealDim5Kindreal32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim5Kindreal32
      function pop2RealDim5Kindreal32(self, data) result(found)
         Logical:: found
         type(StackRealDim5Kindreal32), intent(inout):: self
         Real(kind=real32), dimension(:, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeRealDim5Kindreal32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim5Kindreal32
      impure elemental function sizeRealDim5Kindreal32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim5Kindreal32), intent(in):: self
         type(StackNodeRealDim5Kindreal32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim5Kindreal32
      impure elemental subroutine finalizeRealDim5Kindreal32(self)
         type(StackRealDim5Kindreal32), intent(inout):: self
         type(StackNodeRealDim5Kindreal32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim5Kindreal32
      pure subroutine addRealDim5Kindreal64(self, data)
         type(StackRealDim5Kindreal64), intent(inout):: self
         Real(kind=real64), dimension(:, :, :, :, :), intent(in):: data
         type(StackNodeRealDim5Kindreal64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim5Kindreal64
      function pop1RealDim5Kindreal64(self) result(data)
         Real(kind=real64), dimension(:, :, :, :, :), allocatable:: data
         type(StackRealDim5Kindreal64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim5Kindreal64
      function pop2RealDim5Kindreal64(self, data) result(found)
         Logical:: found
         type(StackRealDim5Kindreal64), intent(inout):: self
         Real(kind=real64), dimension(:, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeRealDim5Kindreal64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim5Kindreal64
      impure elemental function sizeRealDim5Kindreal64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim5Kindreal64), intent(in):: self
         type(StackNodeRealDim5Kindreal64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim5Kindreal64
      impure elemental subroutine finalizeRealDim5Kindreal64(self)
         type(StackRealDim5Kindreal64), intent(inout):: self
         type(StackNodeRealDim5Kindreal64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim5Kindreal64
      pure subroutine addRealDim5Kindreal128(self, data)
         type(StackRealDim5Kindreal128), intent(inout):: self
         Real(kind=real128), dimension(:, :, :, :, :), intent(in):: data
         type(StackNodeRealDim5Kindreal128), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim5Kindreal128
      function pop1RealDim5Kindreal128(self) result(data)
         Real(kind=real128), dimension(:, :, :, :, :), allocatable:: data
         type(StackRealDim5Kindreal128), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim5Kindreal128
      function pop2RealDim5Kindreal128(self, data) result(found)
         Logical:: found
         type(StackRealDim5Kindreal128), intent(inout):: self
         Real(kind=real128), dimension(:, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeRealDim5Kindreal128), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim5Kindreal128
      impure elemental function sizeRealDim5Kindreal128(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim5Kindreal128), intent(in):: self
         type(StackNodeRealDim5Kindreal128), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim5Kindreal128
      impure elemental subroutine finalizeRealDim5Kindreal128(self)
         type(StackRealDim5Kindreal128), intent(inout):: self
         type(StackNodeRealDim5Kindreal128), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim5Kindreal128
      pure subroutine addRealDim6Kindreal32(self, data)
         type(StackRealDim6Kindreal32), intent(inout):: self
         Real(kind=real32), dimension(:, :, :, :, :, :), intent(in):: data
         type(StackNodeRealDim6Kindreal32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim6Kindreal32
      function pop1RealDim6Kindreal32(self) result(data)
         Real(kind=real32), dimension(:, :, :, :, :, :), allocatable:: data
         type(StackRealDim6Kindreal32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim6Kindreal32
      function pop2RealDim6Kindreal32(self, data) result(found)
         Logical:: found
         type(StackRealDim6Kindreal32), intent(inout):: self
         Real(kind=real32), dimension(:, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeRealDim6Kindreal32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim6Kindreal32
      impure elemental function sizeRealDim6Kindreal32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim6Kindreal32), intent(in):: self
         type(StackNodeRealDim6Kindreal32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim6Kindreal32
      impure elemental subroutine finalizeRealDim6Kindreal32(self)
         type(StackRealDim6Kindreal32), intent(inout):: self
         type(StackNodeRealDim6Kindreal32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim6Kindreal32
      pure subroutine addRealDim6Kindreal64(self, data)
         type(StackRealDim6Kindreal64), intent(inout):: self
         Real(kind=real64), dimension(:, :, :, :, :, :), intent(in):: data
         type(StackNodeRealDim6Kindreal64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim6Kindreal64
      function pop1RealDim6Kindreal64(self) result(data)
         Real(kind=real64), dimension(:, :, :, :, :, :), allocatable:: data
         type(StackRealDim6Kindreal64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim6Kindreal64
      function pop2RealDim6Kindreal64(self, data) result(found)
         Logical:: found
         type(StackRealDim6Kindreal64), intent(inout):: self
         Real(kind=real64), dimension(:, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeRealDim6Kindreal64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim6Kindreal64
      impure elemental function sizeRealDim6Kindreal64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim6Kindreal64), intent(in):: self
         type(StackNodeRealDim6Kindreal64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim6Kindreal64
      impure elemental subroutine finalizeRealDim6Kindreal64(self)
         type(StackRealDim6Kindreal64), intent(inout):: self
         type(StackNodeRealDim6Kindreal64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim6Kindreal64
      pure subroutine addRealDim6Kindreal128(self, data)
         type(StackRealDim6Kindreal128), intent(inout):: self
         Real(kind=real128), dimension(:, :, :, :, :, :), intent(in):: data
         type(StackNodeRealDim6Kindreal128), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim6Kindreal128
      function pop1RealDim6Kindreal128(self) result(data)
         Real(kind=real128), dimension(:, :, :, :, :, :), allocatable:: data
         type(StackRealDim6Kindreal128), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim6Kindreal128
      function pop2RealDim6Kindreal128(self, data) result(found)
         Logical:: found
         type(StackRealDim6Kindreal128), intent(inout):: self
         Real(kind=real128), dimension(:, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeRealDim6Kindreal128), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim6Kindreal128
      impure elemental function sizeRealDim6Kindreal128(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim6Kindreal128), intent(in):: self
         type(StackNodeRealDim6Kindreal128), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim6Kindreal128
      impure elemental subroutine finalizeRealDim6Kindreal128(self)
         type(StackRealDim6Kindreal128), intent(inout):: self
         type(StackNodeRealDim6Kindreal128), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim6Kindreal128
      pure subroutine addRealDim7Kindreal32(self, data)
         type(StackRealDim7Kindreal32), intent(inout):: self
         Real(kind=real32), dimension(:, :, :, :, :, :, :), intent(in):: data
         type(StackNodeRealDim7Kindreal32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim7Kindreal32
      function pop1RealDim7Kindreal32(self) result(data)
         Real(kind=real32), dimension(:, :, :, :, :, :, :), allocatable:: data
         type(StackRealDim7Kindreal32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim7Kindreal32
      function pop2RealDim7Kindreal32(self, data) result(found)
         Logical:: found
         type(StackRealDim7Kindreal32), intent(inout):: self
         Real(kind=real32), dimension(:, :, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeRealDim7Kindreal32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim7Kindreal32
      impure elemental function sizeRealDim7Kindreal32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim7Kindreal32), intent(in):: self
         type(StackNodeRealDim7Kindreal32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim7Kindreal32
      impure elemental subroutine finalizeRealDim7Kindreal32(self)
         type(StackRealDim7Kindreal32), intent(inout):: self
         type(StackNodeRealDim7Kindreal32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim7Kindreal32
      pure subroutine addRealDim7Kindreal64(self, data)
         type(StackRealDim7Kindreal64), intent(inout):: self
         Real(kind=real64), dimension(:, :, :, :, :, :, :), intent(in):: data
         type(StackNodeRealDim7Kindreal64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim7Kindreal64
      function pop1RealDim7Kindreal64(self) result(data)
         Real(kind=real64), dimension(:, :, :, :, :, :, :), allocatable:: data
         type(StackRealDim7Kindreal64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim7Kindreal64
      function pop2RealDim7Kindreal64(self, data) result(found)
         Logical:: found
         type(StackRealDim7Kindreal64), intent(inout):: self
         Real(kind=real64), dimension(:, :, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeRealDim7Kindreal64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim7Kindreal64
      impure elemental function sizeRealDim7Kindreal64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim7Kindreal64), intent(in):: self
         type(StackNodeRealDim7Kindreal64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim7Kindreal64
      impure elemental subroutine finalizeRealDim7Kindreal64(self)
         type(StackRealDim7Kindreal64), intent(inout):: self
         type(StackNodeRealDim7Kindreal64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim7Kindreal64
      pure subroutine addRealDim7Kindreal128(self, data)
         type(StackRealDim7Kindreal128), intent(inout):: self
         Real(kind=real128), dimension(:, :, :, :, :, :, :), intent(in):: data
         type(StackNodeRealDim7Kindreal128), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addRealDim7Kindreal128
      function pop1RealDim7Kindreal128(self) result(data)
         Real(kind=real128), dimension(:, :, :, :, :, :, :), allocatable:: data
         type(StackRealDim7Kindreal128), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1RealDim7Kindreal128
      function pop2RealDim7Kindreal128(self, data) result(found)
         Logical:: found
         type(StackRealDim7Kindreal128), intent(inout):: self
         Real(kind=real128), dimension(:, :, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeRealDim7Kindreal128), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2RealDim7Kindreal128
      impure elemental function sizeRealDim7Kindreal128(self) result(ret)
         Integer(kind=int64):: ret
         type(StackRealDim7Kindreal128), intent(in):: self
         type(StackNodeRealDim7Kindreal128), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeRealDim7Kindreal128
      impure elemental subroutine finalizeRealDim7Kindreal128(self)
         type(StackRealDim7Kindreal128), intent(inout):: self
         type(StackNodeRealDim7Kindreal128), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeRealDim7Kindreal128
      pure subroutine addIntegerDim0Kindint8(self, data)
         type(StackIntegerDim0Kindint8), intent(inout):: self
         Integer(kind=int8), intent(in):: data
         type(StackNodeIntegerDim0Kindint8), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim0Kindint8
      function pop1IntegerDim0Kindint8(self) result(data)
         Integer(kind=int8):: data
         type(StackIntegerDim0Kindint8), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim0Kindint8
      function pop2IntegerDim0Kindint8(self, data) result(found)
         Logical:: found
         type(StackIntegerDim0Kindint8), intent(inout):: self
         Integer(kind=int8), intent(out):: data
         type(StackNodeIntegerDim0Kindint8), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim0Kindint8
      impure elemental function sizeIntegerDim0Kindint8(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim0Kindint8), intent(in):: self
         type(StackNodeIntegerDim0Kindint8), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim0Kindint8
         function array_ofIntegerDim0Kindint8(self) result(ret)
            type(StackIntegerDim0Kindint8), intent(in):: self
            Integer(kind=int8):: ret(size(self))
            type(StackNodeIntegerDim0Kindint8), pointer:: tmp
            Integer(kind=int64):: i
            tmp => self%root
            do i = 1, size(ret, kind=kind(i))
               ret(i) = tmp%data
               tmp => tmp%prev
            end do
         end function array_ofIntegerDim0Kindint8
      impure elemental subroutine finalizeIntegerDim0Kindint8(self)
         type(StackIntegerDim0Kindint8), intent(inout):: self
         type(StackNodeIntegerDim0Kindint8), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim0Kindint8
      pure subroutine addIntegerDim0Kindint16(self, data)
         type(StackIntegerDim0Kindint16), intent(inout):: self
         Integer(kind=int16), intent(in):: data
         type(StackNodeIntegerDim0Kindint16), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim0Kindint16
      function pop1IntegerDim0Kindint16(self) result(data)
         Integer(kind=int16):: data
         type(StackIntegerDim0Kindint16), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim0Kindint16
      function pop2IntegerDim0Kindint16(self, data) result(found)
         Logical:: found
         type(StackIntegerDim0Kindint16), intent(inout):: self
         Integer(kind=int16), intent(out):: data
         type(StackNodeIntegerDim0Kindint16), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim0Kindint16
      impure elemental function sizeIntegerDim0Kindint16(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim0Kindint16), intent(in):: self
         type(StackNodeIntegerDim0Kindint16), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim0Kindint16
         function array_ofIntegerDim0Kindint16(self) result(ret)
            type(StackIntegerDim0Kindint16), intent(in):: self
            Integer(kind=int16):: ret(size(self))
            type(StackNodeIntegerDim0Kindint16), pointer:: tmp
            Integer(kind=int64):: i
            tmp => self%root
            do i = 1, size(ret, kind=kind(i))
               ret(i) = tmp%data
               tmp => tmp%prev
            end do
         end function array_ofIntegerDim0Kindint16
      impure elemental subroutine finalizeIntegerDim0Kindint16(self)
         type(StackIntegerDim0Kindint16), intent(inout):: self
         type(StackNodeIntegerDim0Kindint16), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim0Kindint16
      pure subroutine addIntegerDim0Kindint32(self, data)
         type(StackIntegerDim0Kindint32), intent(inout):: self
         Integer(kind=int32), intent(in):: data
         type(StackNodeIntegerDim0Kindint32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim0Kindint32
      function pop1IntegerDim0Kindint32(self) result(data)
         Integer(kind=int32):: data
         type(StackIntegerDim0Kindint32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim0Kindint32
      function pop2IntegerDim0Kindint32(self, data) result(found)
         Logical:: found
         type(StackIntegerDim0Kindint32), intent(inout):: self
         Integer(kind=int32), intent(out):: data
         type(StackNodeIntegerDim0Kindint32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim0Kindint32
      impure elemental function sizeIntegerDim0Kindint32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim0Kindint32), intent(in):: self
         type(StackNodeIntegerDim0Kindint32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim0Kindint32
         function array_ofIntegerDim0Kindint32(self) result(ret)
            type(StackIntegerDim0Kindint32), intent(in):: self
            Integer(kind=int32):: ret(size(self))
            type(StackNodeIntegerDim0Kindint32), pointer:: tmp
            Integer(kind=int64):: i
            tmp => self%root
            do i = 1, size(ret, kind=kind(i))
               ret(i) = tmp%data
               tmp => tmp%prev
            end do
         end function array_ofIntegerDim0Kindint32
      impure elemental subroutine finalizeIntegerDim0Kindint32(self)
         type(StackIntegerDim0Kindint32), intent(inout):: self
         type(StackNodeIntegerDim0Kindint32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim0Kindint32
      pure subroutine addIntegerDim0Kindint64(self, data)
         type(StackIntegerDim0Kindint64), intent(inout):: self
         Integer(kind=int64), intent(in):: data
         type(StackNodeIntegerDim0Kindint64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim0Kindint64
      function pop1IntegerDim0Kindint64(self) result(data)
         Integer(kind=int64):: data
         type(StackIntegerDim0Kindint64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim0Kindint64
      function pop2IntegerDim0Kindint64(self, data) result(found)
         Logical:: found
         type(StackIntegerDim0Kindint64), intent(inout):: self
         Integer(kind=int64), intent(out):: data
         type(StackNodeIntegerDim0Kindint64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim0Kindint64
      impure elemental function sizeIntegerDim0Kindint64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim0Kindint64), intent(in):: self
         type(StackNodeIntegerDim0Kindint64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim0Kindint64
         function array_ofIntegerDim0Kindint64(self) result(ret)
            type(StackIntegerDim0Kindint64), intent(in):: self
            Integer(kind=int64):: ret(size(self))
            type(StackNodeIntegerDim0Kindint64), pointer:: tmp
            Integer(kind=int64):: i
            tmp => self%root
            do i = 1, size(ret, kind=kind(i))
               ret(i) = tmp%data
               tmp => tmp%prev
            end do
         end function array_ofIntegerDim0Kindint64
      impure elemental subroutine finalizeIntegerDim0Kindint64(self)
         type(StackIntegerDim0Kindint64), intent(inout):: self
         type(StackNodeIntegerDim0Kindint64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim0Kindint64
      pure subroutine addIntegerDim1Kindint8(self, data)
         type(StackIntegerDim1Kindint8), intent(inout):: self
         Integer(kind=int8), dimension(:), intent(in):: data
         type(StackNodeIntegerDim1Kindint8), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim1Kindint8
      function pop1IntegerDim1Kindint8(self) result(data)
         Integer(kind=int8), dimension(:), allocatable:: data
         type(StackIntegerDim1Kindint8), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim1Kindint8
      function pop2IntegerDim1Kindint8(self, data) result(found)
         Logical:: found
         type(StackIntegerDim1Kindint8), intent(inout):: self
         Integer(kind=int8), dimension(:), allocatable, intent(out):: data
         type(StackNodeIntegerDim1Kindint8), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim1Kindint8
      impure elemental function sizeIntegerDim1Kindint8(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim1Kindint8), intent(in):: self
         type(StackNodeIntegerDim1Kindint8), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim1Kindint8
      impure elemental subroutine finalizeIntegerDim1Kindint8(self)
         type(StackIntegerDim1Kindint8), intent(inout):: self
         type(StackNodeIntegerDim1Kindint8), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim1Kindint8
      pure subroutine addIntegerDim1Kindint16(self, data)
         type(StackIntegerDim1Kindint16), intent(inout):: self
         Integer(kind=int16), dimension(:), intent(in):: data
         type(StackNodeIntegerDim1Kindint16), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim1Kindint16
      function pop1IntegerDim1Kindint16(self) result(data)
         Integer(kind=int16), dimension(:), allocatable:: data
         type(StackIntegerDim1Kindint16), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim1Kindint16
      function pop2IntegerDim1Kindint16(self, data) result(found)
         Logical:: found
         type(StackIntegerDim1Kindint16), intent(inout):: self
         Integer(kind=int16), dimension(:), allocatable, intent(out):: data
         type(StackNodeIntegerDim1Kindint16), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim1Kindint16
      impure elemental function sizeIntegerDim1Kindint16(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim1Kindint16), intent(in):: self
         type(StackNodeIntegerDim1Kindint16), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim1Kindint16
      impure elemental subroutine finalizeIntegerDim1Kindint16(self)
         type(StackIntegerDim1Kindint16), intent(inout):: self
         type(StackNodeIntegerDim1Kindint16), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim1Kindint16
      pure subroutine addIntegerDim1Kindint32(self, data)
         type(StackIntegerDim1Kindint32), intent(inout):: self
         Integer(kind=int32), dimension(:), intent(in):: data
         type(StackNodeIntegerDim1Kindint32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim1Kindint32
      function pop1IntegerDim1Kindint32(self) result(data)
         Integer(kind=int32), dimension(:), allocatable:: data
         type(StackIntegerDim1Kindint32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim1Kindint32
      function pop2IntegerDim1Kindint32(self, data) result(found)
         Logical:: found
         type(StackIntegerDim1Kindint32), intent(inout):: self
         Integer(kind=int32), dimension(:), allocatable, intent(out):: data
         type(StackNodeIntegerDim1Kindint32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim1Kindint32
      impure elemental function sizeIntegerDim1Kindint32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim1Kindint32), intent(in):: self
         type(StackNodeIntegerDim1Kindint32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim1Kindint32
      impure elemental subroutine finalizeIntegerDim1Kindint32(self)
         type(StackIntegerDim1Kindint32), intent(inout):: self
         type(StackNodeIntegerDim1Kindint32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim1Kindint32
      pure subroutine addIntegerDim1Kindint64(self, data)
         type(StackIntegerDim1Kindint64), intent(inout):: self
         Integer(kind=int64), dimension(:), intent(in):: data
         type(StackNodeIntegerDim1Kindint64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim1Kindint64
      function pop1IntegerDim1Kindint64(self) result(data)
         Integer(kind=int64), dimension(:), allocatable:: data
         type(StackIntegerDim1Kindint64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim1Kindint64
      function pop2IntegerDim1Kindint64(self, data) result(found)
         Logical:: found
         type(StackIntegerDim1Kindint64), intent(inout):: self
         Integer(kind=int64), dimension(:), allocatable, intent(out):: data
         type(StackNodeIntegerDim1Kindint64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim1Kindint64
      impure elemental function sizeIntegerDim1Kindint64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim1Kindint64), intent(in):: self
         type(StackNodeIntegerDim1Kindint64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim1Kindint64
      impure elemental subroutine finalizeIntegerDim1Kindint64(self)
         type(StackIntegerDim1Kindint64), intent(inout):: self
         type(StackNodeIntegerDim1Kindint64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim1Kindint64
      pure subroutine addIntegerDim2Kindint8(self, data)
         type(StackIntegerDim2Kindint8), intent(inout):: self
         Integer(kind=int8), dimension(:, :), intent(in):: data
         type(StackNodeIntegerDim2Kindint8), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim2Kindint8
      function pop1IntegerDim2Kindint8(self) result(data)
         Integer(kind=int8), dimension(:, :), allocatable:: data
         type(StackIntegerDim2Kindint8), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim2Kindint8
      function pop2IntegerDim2Kindint8(self, data) result(found)
         Logical:: found
         type(StackIntegerDim2Kindint8), intent(inout):: self
         Integer(kind=int8), dimension(:, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim2Kindint8), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim2Kindint8
      impure elemental function sizeIntegerDim2Kindint8(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim2Kindint8), intent(in):: self
         type(StackNodeIntegerDim2Kindint8), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim2Kindint8
      impure elemental subroutine finalizeIntegerDim2Kindint8(self)
         type(StackIntegerDim2Kindint8), intent(inout):: self
         type(StackNodeIntegerDim2Kindint8), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim2Kindint8
      pure subroutine addIntegerDim2Kindint16(self, data)
         type(StackIntegerDim2Kindint16), intent(inout):: self
         Integer(kind=int16), dimension(:, :), intent(in):: data
         type(StackNodeIntegerDim2Kindint16), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim2Kindint16
      function pop1IntegerDim2Kindint16(self) result(data)
         Integer(kind=int16), dimension(:, :), allocatable:: data
         type(StackIntegerDim2Kindint16), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim2Kindint16
      function pop2IntegerDim2Kindint16(self, data) result(found)
         Logical:: found
         type(StackIntegerDim2Kindint16), intent(inout):: self
         Integer(kind=int16), dimension(:, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim2Kindint16), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim2Kindint16
      impure elemental function sizeIntegerDim2Kindint16(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim2Kindint16), intent(in):: self
         type(StackNodeIntegerDim2Kindint16), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim2Kindint16
      impure elemental subroutine finalizeIntegerDim2Kindint16(self)
         type(StackIntegerDim2Kindint16), intent(inout):: self
         type(StackNodeIntegerDim2Kindint16), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim2Kindint16
      pure subroutine addIntegerDim2Kindint32(self, data)
         type(StackIntegerDim2Kindint32), intent(inout):: self
         Integer(kind=int32), dimension(:, :), intent(in):: data
         type(StackNodeIntegerDim2Kindint32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim2Kindint32
      function pop1IntegerDim2Kindint32(self) result(data)
         Integer(kind=int32), dimension(:, :), allocatable:: data
         type(StackIntegerDim2Kindint32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim2Kindint32
      function pop2IntegerDim2Kindint32(self, data) result(found)
         Logical:: found
         type(StackIntegerDim2Kindint32), intent(inout):: self
         Integer(kind=int32), dimension(:, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim2Kindint32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim2Kindint32
      impure elemental function sizeIntegerDim2Kindint32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim2Kindint32), intent(in):: self
         type(StackNodeIntegerDim2Kindint32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim2Kindint32
      impure elemental subroutine finalizeIntegerDim2Kindint32(self)
         type(StackIntegerDim2Kindint32), intent(inout):: self
         type(StackNodeIntegerDim2Kindint32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim2Kindint32
      pure subroutine addIntegerDim2Kindint64(self, data)
         type(StackIntegerDim2Kindint64), intent(inout):: self
         Integer(kind=int64), dimension(:, :), intent(in):: data
         type(StackNodeIntegerDim2Kindint64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim2Kindint64
      function pop1IntegerDim2Kindint64(self) result(data)
         Integer(kind=int64), dimension(:, :), allocatable:: data
         type(StackIntegerDim2Kindint64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim2Kindint64
      function pop2IntegerDim2Kindint64(self, data) result(found)
         Logical:: found
         type(StackIntegerDim2Kindint64), intent(inout):: self
         Integer(kind=int64), dimension(:, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim2Kindint64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim2Kindint64
      impure elemental function sizeIntegerDim2Kindint64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim2Kindint64), intent(in):: self
         type(StackNodeIntegerDim2Kindint64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim2Kindint64
      impure elemental subroutine finalizeIntegerDim2Kindint64(self)
         type(StackIntegerDim2Kindint64), intent(inout):: self
         type(StackNodeIntegerDim2Kindint64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim2Kindint64
      pure subroutine addIntegerDim3Kindint8(self, data)
         type(StackIntegerDim3Kindint8), intent(inout):: self
         Integer(kind=int8), dimension(:, :, :), intent(in):: data
         type(StackNodeIntegerDim3Kindint8), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim3Kindint8
      function pop1IntegerDim3Kindint8(self) result(data)
         Integer(kind=int8), dimension(:, :, :), allocatable:: data
         type(StackIntegerDim3Kindint8), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim3Kindint8
      function pop2IntegerDim3Kindint8(self, data) result(found)
         Logical:: found
         type(StackIntegerDim3Kindint8), intent(inout):: self
         Integer(kind=int8), dimension(:, :, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim3Kindint8), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim3Kindint8
      impure elemental function sizeIntegerDim3Kindint8(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim3Kindint8), intent(in):: self
         type(StackNodeIntegerDim3Kindint8), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim3Kindint8
      impure elemental subroutine finalizeIntegerDim3Kindint8(self)
         type(StackIntegerDim3Kindint8), intent(inout):: self
         type(StackNodeIntegerDim3Kindint8), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim3Kindint8
      pure subroutine addIntegerDim3Kindint16(self, data)
         type(StackIntegerDim3Kindint16), intent(inout):: self
         Integer(kind=int16), dimension(:, :, :), intent(in):: data
         type(StackNodeIntegerDim3Kindint16), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim3Kindint16
      function pop1IntegerDim3Kindint16(self) result(data)
         Integer(kind=int16), dimension(:, :, :), allocatable:: data
         type(StackIntegerDim3Kindint16), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim3Kindint16
      function pop2IntegerDim3Kindint16(self, data) result(found)
         Logical:: found
         type(StackIntegerDim3Kindint16), intent(inout):: self
         Integer(kind=int16), dimension(:, :, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim3Kindint16), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim3Kindint16
      impure elemental function sizeIntegerDim3Kindint16(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim3Kindint16), intent(in):: self
         type(StackNodeIntegerDim3Kindint16), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim3Kindint16
      impure elemental subroutine finalizeIntegerDim3Kindint16(self)
         type(StackIntegerDim3Kindint16), intent(inout):: self
         type(StackNodeIntegerDim3Kindint16), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim3Kindint16
      pure subroutine addIntegerDim3Kindint32(self, data)
         type(StackIntegerDim3Kindint32), intent(inout):: self
         Integer(kind=int32), dimension(:, :, :), intent(in):: data
         type(StackNodeIntegerDim3Kindint32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim3Kindint32
      function pop1IntegerDim3Kindint32(self) result(data)
         Integer(kind=int32), dimension(:, :, :), allocatable:: data
         type(StackIntegerDim3Kindint32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim3Kindint32
      function pop2IntegerDim3Kindint32(self, data) result(found)
         Logical:: found
         type(StackIntegerDim3Kindint32), intent(inout):: self
         Integer(kind=int32), dimension(:, :, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim3Kindint32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim3Kindint32
      impure elemental function sizeIntegerDim3Kindint32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim3Kindint32), intent(in):: self
         type(StackNodeIntegerDim3Kindint32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim3Kindint32
      impure elemental subroutine finalizeIntegerDim3Kindint32(self)
         type(StackIntegerDim3Kindint32), intent(inout):: self
         type(StackNodeIntegerDim3Kindint32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim3Kindint32
      pure subroutine addIntegerDim3Kindint64(self, data)
         type(StackIntegerDim3Kindint64), intent(inout):: self
         Integer(kind=int64), dimension(:, :, :), intent(in):: data
         type(StackNodeIntegerDim3Kindint64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim3Kindint64
      function pop1IntegerDim3Kindint64(self) result(data)
         Integer(kind=int64), dimension(:, :, :), allocatable:: data
         type(StackIntegerDim3Kindint64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim3Kindint64
      function pop2IntegerDim3Kindint64(self, data) result(found)
         Logical:: found
         type(StackIntegerDim3Kindint64), intent(inout):: self
         Integer(kind=int64), dimension(:, :, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim3Kindint64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim3Kindint64
      impure elemental function sizeIntegerDim3Kindint64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim3Kindint64), intent(in):: self
         type(StackNodeIntegerDim3Kindint64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim3Kindint64
      impure elemental subroutine finalizeIntegerDim3Kindint64(self)
         type(StackIntegerDim3Kindint64), intent(inout):: self
         type(StackNodeIntegerDim3Kindint64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim3Kindint64
      pure subroutine addIntegerDim4Kindint8(self, data)
         type(StackIntegerDim4Kindint8), intent(inout):: self
         Integer(kind=int8), dimension(:, :, :, :), intent(in):: data
         type(StackNodeIntegerDim4Kindint8), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim4Kindint8
      function pop1IntegerDim4Kindint8(self) result(data)
         Integer(kind=int8), dimension(:, :, :, :), allocatable:: data
         type(StackIntegerDim4Kindint8), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim4Kindint8
      function pop2IntegerDim4Kindint8(self, data) result(found)
         Logical:: found
         type(StackIntegerDim4Kindint8), intent(inout):: self
         Integer(kind=int8), dimension(:, :, :, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim4Kindint8), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim4Kindint8
      impure elemental function sizeIntegerDim4Kindint8(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim4Kindint8), intent(in):: self
         type(StackNodeIntegerDim4Kindint8), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim4Kindint8
      impure elemental subroutine finalizeIntegerDim4Kindint8(self)
         type(StackIntegerDim4Kindint8), intent(inout):: self
         type(StackNodeIntegerDim4Kindint8), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim4Kindint8
      pure subroutine addIntegerDim4Kindint16(self, data)
         type(StackIntegerDim4Kindint16), intent(inout):: self
         Integer(kind=int16), dimension(:, :, :, :), intent(in):: data
         type(StackNodeIntegerDim4Kindint16), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim4Kindint16
      function pop1IntegerDim4Kindint16(self) result(data)
         Integer(kind=int16), dimension(:, :, :, :), allocatable:: data
         type(StackIntegerDim4Kindint16), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim4Kindint16
      function pop2IntegerDim4Kindint16(self, data) result(found)
         Logical:: found
         type(StackIntegerDim4Kindint16), intent(inout):: self
         Integer(kind=int16), dimension(:, :, :, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim4Kindint16), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim4Kindint16
      impure elemental function sizeIntegerDim4Kindint16(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim4Kindint16), intent(in):: self
         type(StackNodeIntegerDim4Kindint16), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim4Kindint16
      impure elemental subroutine finalizeIntegerDim4Kindint16(self)
         type(StackIntegerDim4Kindint16), intent(inout):: self
         type(StackNodeIntegerDim4Kindint16), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim4Kindint16
      pure subroutine addIntegerDim4Kindint32(self, data)
         type(StackIntegerDim4Kindint32), intent(inout):: self
         Integer(kind=int32), dimension(:, :, :, :), intent(in):: data
         type(StackNodeIntegerDim4Kindint32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim4Kindint32
      function pop1IntegerDim4Kindint32(self) result(data)
         Integer(kind=int32), dimension(:, :, :, :), allocatable:: data
         type(StackIntegerDim4Kindint32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim4Kindint32
      function pop2IntegerDim4Kindint32(self, data) result(found)
         Logical:: found
         type(StackIntegerDim4Kindint32), intent(inout):: self
         Integer(kind=int32), dimension(:, :, :, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim4Kindint32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim4Kindint32
      impure elemental function sizeIntegerDim4Kindint32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim4Kindint32), intent(in):: self
         type(StackNodeIntegerDim4Kindint32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim4Kindint32
      impure elemental subroutine finalizeIntegerDim4Kindint32(self)
         type(StackIntegerDim4Kindint32), intent(inout):: self
         type(StackNodeIntegerDim4Kindint32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim4Kindint32
      pure subroutine addIntegerDim4Kindint64(self, data)
         type(StackIntegerDim4Kindint64), intent(inout):: self
         Integer(kind=int64), dimension(:, :, :, :), intent(in):: data
         type(StackNodeIntegerDim4Kindint64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim4Kindint64
      function pop1IntegerDim4Kindint64(self) result(data)
         Integer(kind=int64), dimension(:, :, :, :), allocatable:: data
         type(StackIntegerDim4Kindint64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim4Kindint64
      function pop2IntegerDim4Kindint64(self, data) result(found)
         Logical:: found
         type(StackIntegerDim4Kindint64), intent(inout):: self
         Integer(kind=int64), dimension(:, :, :, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim4Kindint64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim4Kindint64
      impure elemental function sizeIntegerDim4Kindint64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim4Kindint64), intent(in):: self
         type(StackNodeIntegerDim4Kindint64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim4Kindint64
      impure elemental subroutine finalizeIntegerDim4Kindint64(self)
         type(StackIntegerDim4Kindint64), intent(inout):: self
         type(StackNodeIntegerDim4Kindint64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim4Kindint64
      pure subroutine addIntegerDim5Kindint8(self, data)
         type(StackIntegerDim5Kindint8), intent(inout):: self
         Integer(kind=int8), dimension(:, :, :, :, :), intent(in):: data
         type(StackNodeIntegerDim5Kindint8), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim5Kindint8
      function pop1IntegerDim5Kindint8(self) result(data)
         Integer(kind=int8), dimension(:, :, :, :, :), allocatable:: data
         type(StackIntegerDim5Kindint8), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim5Kindint8
      function pop2IntegerDim5Kindint8(self, data) result(found)
         Logical:: found
         type(StackIntegerDim5Kindint8), intent(inout):: self
         Integer(kind=int8), dimension(:, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim5Kindint8), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim5Kindint8
      impure elemental function sizeIntegerDim5Kindint8(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim5Kindint8), intent(in):: self
         type(StackNodeIntegerDim5Kindint8), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim5Kindint8
      impure elemental subroutine finalizeIntegerDim5Kindint8(self)
         type(StackIntegerDim5Kindint8), intent(inout):: self
         type(StackNodeIntegerDim5Kindint8), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim5Kindint8
      pure subroutine addIntegerDim5Kindint16(self, data)
         type(StackIntegerDim5Kindint16), intent(inout):: self
         Integer(kind=int16), dimension(:, :, :, :, :), intent(in):: data
         type(StackNodeIntegerDim5Kindint16), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim5Kindint16
      function pop1IntegerDim5Kindint16(self) result(data)
         Integer(kind=int16), dimension(:, :, :, :, :), allocatable:: data
         type(StackIntegerDim5Kindint16), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim5Kindint16
      function pop2IntegerDim5Kindint16(self, data) result(found)
         Logical:: found
         type(StackIntegerDim5Kindint16), intent(inout):: self
         Integer(kind=int16), dimension(:, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim5Kindint16), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim5Kindint16
      impure elemental function sizeIntegerDim5Kindint16(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim5Kindint16), intent(in):: self
         type(StackNodeIntegerDim5Kindint16), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim5Kindint16
      impure elemental subroutine finalizeIntegerDim5Kindint16(self)
         type(StackIntegerDim5Kindint16), intent(inout):: self
         type(StackNodeIntegerDim5Kindint16), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim5Kindint16
      pure subroutine addIntegerDim5Kindint32(self, data)
         type(StackIntegerDim5Kindint32), intent(inout):: self
         Integer(kind=int32), dimension(:, :, :, :, :), intent(in):: data
         type(StackNodeIntegerDim5Kindint32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim5Kindint32
      function pop1IntegerDim5Kindint32(self) result(data)
         Integer(kind=int32), dimension(:, :, :, :, :), allocatable:: data
         type(StackIntegerDim5Kindint32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim5Kindint32
      function pop2IntegerDim5Kindint32(self, data) result(found)
         Logical:: found
         type(StackIntegerDim5Kindint32), intent(inout):: self
         Integer(kind=int32), dimension(:, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim5Kindint32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim5Kindint32
      impure elemental function sizeIntegerDim5Kindint32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim5Kindint32), intent(in):: self
         type(StackNodeIntegerDim5Kindint32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim5Kindint32
      impure elemental subroutine finalizeIntegerDim5Kindint32(self)
         type(StackIntegerDim5Kindint32), intent(inout):: self
         type(StackNodeIntegerDim5Kindint32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim5Kindint32
      pure subroutine addIntegerDim5Kindint64(self, data)
         type(StackIntegerDim5Kindint64), intent(inout):: self
         Integer(kind=int64), dimension(:, :, :, :, :), intent(in):: data
         type(StackNodeIntegerDim5Kindint64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim5Kindint64
      function pop1IntegerDim5Kindint64(self) result(data)
         Integer(kind=int64), dimension(:, :, :, :, :), allocatable:: data
         type(StackIntegerDim5Kindint64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim5Kindint64
      function pop2IntegerDim5Kindint64(self, data) result(found)
         Logical:: found
         type(StackIntegerDim5Kindint64), intent(inout):: self
         Integer(kind=int64), dimension(:, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim5Kindint64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim5Kindint64
      impure elemental function sizeIntegerDim5Kindint64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim5Kindint64), intent(in):: self
         type(StackNodeIntegerDim5Kindint64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim5Kindint64
      impure elemental subroutine finalizeIntegerDim5Kindint64(self)
         type(StackIntegerDim5Kindint64), intent(inout):: self
         type(StackNodeIntegerDim5Kindint64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim5Kindint64
      pure subroutine addIntegerDim6Kindint8(self, data)
         type(StackIntegerDim6Kindint8), intent(inout):: self
         Integer(kind=int8), dimension(:, :, :, :, :, :), intent(in):: data
         type(StackNodeIntegerDim6Kindint8), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim6Kindint8
      function pop1IntegerDim6Kindint8(self) result(data)
         Integer(kind=int8), dimension(:, :, :, :, :, :), allocatable:: data
         type(StackIntegerDim6Kindint8), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim6Kindint8
      function pop2IntegerDim6Kindint8(self, data) result(found)
         Logical:: found
         type(StackIntegerDim6Kindint8), intent(inout):: self
         Integer(kind=int8), dimension(:, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim6Kindint8), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim6Kindint8
      impure elemental function sizeIntegerDim6Kindint8(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim6Kindint8), intent(in):: self
         type(StackNodeIntegerDim6Kindint8), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim6Kindint8
      impure elemental subroutine finalizeIntegerDim6Kindint8(self)
         type(StackIntegerDim6Kindint8), intent(inout):: self
         type(StackNodeIntegerDim6Kindint8), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim6Kindint8
      pure subroutine addIntegerDim6Kindint16(self, data)
         type(StackIntegerDim6Kindint16), intent(inout):: self
         Integer(kind=int16), dimension(:, :, :, :, :, :), intent(in):: data
         type(StackNodeIntegerDim6Kindint16), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim6Kindint16
      function pop1IntegerDim6Kindint16(self) result(data)
         Integer(kind=int16), dimension(:, :, :, :, :, :), allocatable:: data
         type(StackIntegerDim6Kindint16), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim6Kindint16
      function pop2IntegerDim6Kindint16(self, data) result(found)
         Logical:: found
         type(StackIntegerDim6Kindint16), intent(inout):: self
         Integer(kind=int16), dimension(:, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim6Kindint16), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim6Kindint16
      impure elemental function sizeIntegerDim6Kindint16(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim6Kindint16), intent(in):: self
         type(StackNodeIntegerDim6Kindint16), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim6Kindint16
      impure elemental subroutine finalizeIntegerDim6Kindint16(self)
         type(StackIntegerDim6Kindint16), intent(inout):: self
         type(StackNodeIntegerDim6Kindint16), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim6Kindint16
      pure subroutine addIntegerDim6Kindint32(self, data)
         type(StackIntegerDim6Kindint32), intent(inout):: self
         Integer(kind=int32), dimension(:, :, :, :, :, :), intent(in):: data
         type(StackNodeIntegerDim6Kindint32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim6Kindint32
      function pop1IntegerDim6Kindint32(self) result(data)
         Integer(kind=int32), dimension(:, :, :, :, :, :), allocatable:: data
         type(StackIntegerDim6Kindint32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim6Kindint32
      function pop2IntegerDim6Kindint32(self, data) result(found)
         Logical:: found
         type(StackIntegerDim6Kindint32), intent(inout):: self
         Integer(kind=int32), dimension(:, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim6Kindint32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim6Kindint32
      impure elemental function sizeIntegerDim6Kindint32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim6Kindint32), intent(in):: self
         type(StackNodeIntegerDim6Kindint32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim6Kindint32
      impure elemental subroutine finalizeIntegerDim6Kindint32(self)
         type(StackIntegerDim6Kindint32), intent(inout):: self
         type(StackNodeIntegerDim6Kindint32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim6Kindint32
      pure subroutine addIntegerDim6Kindint64(self, data)
         type(StackIntegerDim6Kindint64), intent(inout):: self
         Integer(kind=int64), dimension(:, :, :, :, :, :), intent(in):: data
         type(StackNodeIntegerDim6Kindint64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim6Kindint64
      function pop1IntegerDim6Kindint64(self) result(data)
         Integer(kind=int64), dimension(:, :, :, :, :, :), allocatable:: data
         type(StackIntegerDim6Kindint64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim6Kindint64
      function pop2IntegerDim6Kindint64(self, data) result(found)
         Logical:: found
         type(StackIntegerDim6Kindint64), intent(inout):: self
         Integer(kind=int64), dimension(:, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim6Kindint64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim6Kindint64
      impure elemental function sizeIntegerDim6Kindint64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim6Kindint64), intent(in):: self
         type(StackNodeIntegerDim6Kindint64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim6Kindint64
      impure elemental subroutine finalizeIntegerDim6Kindint64(self)
         type(StackIntegerDim6Kindint64), intent(inout):: self
         type(StackNodeIntegerDim6Kindint64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim6Kindint64
      pure subroutine addIntegerDim7Kindint8(self, data)
         type(StackIntegerDim7Kindint8), intent(inout):: self
         Integer(kind=int8), dimension(:, :, :, :, :, :, :), intent(in):: data
         type(StackNodeIntegerDim7Kindint8), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim7Kindint8
      function pop1IntegerDim7Kindint8(self) result(data)
         Integer(kind=int8), dimension(:, :, :, :, :, :, :), allocatable:: data
         type(StackIntegerDim7Kindint8), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim7Kindint8
      function pop2IntegerDim7Kindint8(self, data) result(found)
         Logical:: found
         type(StackIntegerDim7Kindint8), intent(inout):: self
         Integer(kind=int8), dimension(:, :, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim7Kindint8), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim7Kindint8
      impure elemental function sizeIntegerDim7Kindint8(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim7Kindint8), intent(in):: self
         type(StackNodeIntegerDim7Kindint8), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim7Kindint8
      impure elemental subroutine finalizeIntegerDim7Kindint8(self)
         type(StackIntegerDim7Kindint8), intent(inout):: self
         type(StackNodeIntegerDim7Kindint8), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim7Kindint8
      pure subroutine addIntegerDim7Kindint16(self, data)
         type(StackIntegerDim7Kindint16), intent(inout):: self
         Integer(kind=int16), dimension(:, :, :, :, :, :, :), intent(in):: data
         type(StackNodeIntegerDim7Kindint16), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim7Kindint16
      function pop1IntegerDim7Kindint16(self) result(data)
         Integer(kind=int16), dimension(:, :, :, :, :, :, :), allocatable:: data
         type(StackIntegerDim7Kindint16), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim7Kindint16
      function pop2IntegerDim7Kindint16(self, data) result(found)
         Logical:: found
         type(StackIntegerDim7Kindint16), intent(inout):: self
         Integer(kind=int16), dimension(:, :, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim7Kindint16), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim7Kindint16
      impure elemental function sizeIntegerDim7Kindint16(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim7Kindint16), intent(in):: self
         type(StackNodeIntegerDim7Kindint16), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim7Kindint16
      impure elemental subroutine finalizeIntegerDim7Kindint16(self)
         type(StackIntegerDim7Kindint16), intent(inout):: self
         type(StackNodeIntegerDim7Kindint16), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim7Kindint16
      pure subroutine addIntegerDim7Kindint32(self, data)
         type(StackIntegerDim7Kindint32), intent(inout):: self
         Integer(kind=int32), dimension(:, :, :, :, :, :, :), intent(in):: data
         type(StackNodeIntegerDim7Kindint32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim7Kindint32
      function pop1IntegerDim7Kindint32(self) result(data)
         Integer(kind=int32), dimension(:, :, :, :, :, :, :), allocatable:: data
         type(StackIntegerDim7Kindint32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim7Kindint32
      function pop2IntegerDim7Kindint32(self, data) result(found)
         Logical:: found
         type(StackIntegerDim7Kindint32), intent(inout):: self
         Integer(kind=int32), dimension(:, :, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim7Kindint32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim7Kindint32
      impure elemental function sizeIntegerDim7Kindint32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim7Kindint32), intent(in):: self
         type(StackNodeIntegerDim7Kindint32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim7Kindint32
      impure elemental subroutine finalizeIntegerDim7Kindint32(self)
         type(StackIntegerDim7Kindint32), intent(inout):: self
         type(StackNodeIntegerDim7Kindint32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim7Kindint32
      pure subroutine addIntegerDim7Kindint64(self, data)
         type(StackIntegerDim7Kindint64), intent(inout):: self
         Integer(kind=int64), dimension(:, :, :, :, :, :, :), intent(in):: data
         type(StackNodeIntegerDim7Kindint64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addIntegerDim7Kindint64
      function pop1IntegerDim7Kindint64(self) result(data)
         Integer(kind=int64), dimension(:, :, :, :, :, :, :), allocatable:: data
         type(StackIntegerDim7Kindint64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1IntegerDim7Kindint64
      function pop2IntegerDim7Kindint64(self, data) result(found)
         Logical:: found
         type(StackIntegerDim7Kindint64), intent(inout):: self
         Integer(kind=int64), dimension(:, :, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeIntegerDim7Kindint64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2IntegerDim7Kindint64
      impure elemental function sizeIntegerDim7Kindint64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackIntegerDim7Kindint64), intent(in):: self
         type(StackNodeIntegerDim7Kindint64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeIntegerDim7Kindint64
      impure elemental subroutine finalizeIntegerDim7Kindint64(self)
         type(StackIntegerDim7Kindint64), intent(inout):: self
         type(StackNodeIntegerDim7Kindint64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeIntegerDim7Kindint64
      pure subroutine addLogicalDim0Kindint8(self, data)
         type(StackLogicalDim0Kindint8), intent(inout):: self
         Logical(kind=int8), intent(in):: data
         type(StackNodeLogicalDim0Kindint8), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim0Kindint8
      function pop1LogicalDim0Kindint8(self) result(data)
         Logical(kind=int8):: data
         type(StackLogicalDim0Kindint8), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim0Kindint8
      function pop2LogicalDim0Kindint8(self, data) result(found)
         Logical:: found
         type(StackLogicalDim0Kindint8), intent(inout):: self
         Logical(kind=int8), intent(out):: data
         type(StackNodeLogicalDim0Kindint8), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim0Kindint8
      impure elemental function sizeLogicalDim0Kindint8(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim0Kindint8), intent(in):: self
         type(StackNodeLogicalDim0Kindint8), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim0Kindint8
         function array_ofLogicalDim0Kindint8(self) result(ret)
            type(StackLogicalDim0Kindint8), intent(in):: self
            Logical(kind=int8):: ret(size(self))
            type(StackNodeLogicalDim0Kindint8), pointer:: tmp
            Integer(kind=int64):: i
            tmp => self%root
            do i = 1, size(ret, kind=kind(i))
               ret(i) = tmp%data
               tmp => tmp%prev
            end do
         end function array_ofLogicalDim0Kindint8
      impure elemental subroutine finalizeLogicalDim0Kindint8(self)
         type(StackLogicalDim0Kindint8), intent(inout):: self
         type(StackNodeLogicalDim0Kindint8), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim0Kindint8
      pure subroutine addLogicalDim0Kindint16(self, data)
         type(StackLogicalDim0Kindint16), intent(inout):: self
         Logical(kind=int16), intent(in):: data
         type(StackNodeLogicalDim0Kindint16), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim0Kindint16
      function pop1LogicalDim0Kindint16(self) result(data)
         Logical(kind=int16):: data
         type(StackLogicalDim0Kindint16), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim0Kindint16
      function pop2LogicalDim0Kindint16(self, data) result(found)
         Logical:: found
         type(StackLogicalDim0Kindint16), intent(inout):: self
         Logical(kind=int16), intent(out):: data
         type(StackNodeLogicalDim0Kindint16), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim0Kindint16
      impure elemental function sizeLogicalDim0Kindint16(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim0Kindint16), intent(in):: self
         type(StackNodeLogicalDim0Kindint16), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim0Kindint16
         function array_ofLogicalDim0Kindint16(self) result(ret)
            type(StackLogicalDim0Kindint16), intent(in):: self
            Logical(kind=int16):: ret(size(self))
            type(StackNodeLogicalDim0Kindint16), pointer:: tmp
            Integer(kind=int64):: i
            tmp => self%root
            do i = 1, size(ret, kind=kind(i))
               ret(i) = tmp%data
               tmp => tmp%prev
            end do
         end function array_ofLogicalDim0Kindint16
      impure elemental subroutine finalizeLogicalDim0Kindint16(self)
         type(StackLogicalDim0Kindint16), intent(inout):: self
         type(StackNodeLogicalDim0Kindint16), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim0Kindint16
      pure subroutine addLogicalDim0Kindint32(self, data)
         type(StackLogicalDim0Kindint32), intent(inout):: self
         Logical(kind=int32), intent(in):: data
         type(StackNodeLogicalDim0Kindint32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim0Kindint32
      function pop1LogicalDim0Kindint32(self) result(data)
         Logical(kind=int32):: data
         type(StackLogicalDim0Kindint32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim0Kindint32
      function pop2LogicalDim0Kindint32(self, data) result(found)
         Logical:: found
         type(StackLogicalDim0Kindint32), intent(inout):: self
         Logical(kind=int32), intent(out):: data
         type(StackNodeLogicalDim0Kindint32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim0Kindint32
      impure elemental function sizeLogicalDim0Kindint32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim0Kindint32), intent(in):: self
         type(StackNodeLogicalDim0Kindint32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim0Kindint32
         function array_ofLogicalDim0Kindint32(self) result(ret)
            type(StackLogicalDim0Kindint32), intent(in):: self
            Logical(kind=int32):: ret(size(self))
            type(StackNodeLogicalDim0Kindint32), pointer:: tmp
            Integer(kind=int64):: i
            tmp => self%root
            do i = 1, size(ret, kind=kind(i))
               ret(i) = tmp%data
               tmp => tmp%prev
            end do
         end function array_ofLogicalDim0Kindint32
      impure elemental subroutine finalizeLogicalDim0Kindint32(self)
         type(StackLogicalDim0Kindint32), intent(inout):: self
         type(StackNodeLogicalDim0Kindint32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim0Kindint32
      pure subroutine addLogicalDim0Kindint64(self, data)
         type(StackLogicalDim0Kindint64), intent(inout):: self
         Logical(kind=int64), intent(in):: data
         type(StackNodeLogicalDim0Kindint64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim0Kindint64
      function pop1LogicalDim0Kindint64(self) result(data)
         Logical(kind=int64):: data
         type(StackLogicalDim0Kindint64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim0Kindint64
      function pop2LogicalDim0Kindint64(self, data) result(found)
         Logical:: found
         type(StackLogicalDim0Kindint64), intent(inout):: self
         Logical(kind=int64), intent(out):: data
         type(StackNodeLogicalDim0Kindint64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim0Kindint64
      impure elemental function sizeLogicalDim0Kindint64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim0Kindint64), intent(in):: self
         type(StackNodeLogicalDim0Kindint64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim0Kindint64
         function array_ofLogicalDim0Kindint64(self) result(ret)
            type(StackLogicalDim0Kindint64), intent(in):: self
            Logical(kind=int64):: ret(size(self))
            type(StackNodeLogicalDim0Kindint64), pointer:: tmp
            Integer(kind=int64):: i
            tmp => self%root
            do i = 1, size(ret, kind=kind(i))
               ret(i) = tmp%data
               tmp => tmp%prev
            end do
         end function array_ofLogicalDim0Kindint64
      impure elemental subroutine finalizeLogicalDim0Kindint64(self)
         type(StackLogicalDim0Kindint64), intent(inout):: self
         type(StackNodeLogicalDim0Kindint64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim0Kindint64
      pure subroutine addLogicalDim1Kindint8(self, data)
         type(StackLogicalDim1Kindint8), intent(inout):: self
         Logical(kind=int8), dimension(:), intent(in):: data
         type(StackNodeLogicalDim1Kindint8), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim1Kindint8
      function pop1LogicalDim1Kindint8(self) result(data)
         Logical(kind=int8), dimension(:), allocatable:: data
         type(StackLogicalDim1Kindint8), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim1Kindint8
      function pop2LogicalDim1Kindint8(self, data) result(found)
         Logical:: found
         type(StackLogicalDim1Kindint8), intent(inout):: self
         Logical(kind=int8), dimension(:), allocatable, intent(out):: data
         type(StackNodeLogicalDim1Kindint8), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim1Kindint8
      impure elemental function sizeLogicalDim1Kindint8(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim1Kindint8), intent(in):: self
         type(StackNodeLogicalDim1Kindint8), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim1Kindint8
      impure elemental subroutine finalizeLogicalDim1Kindint8(self)
         type(StackLogicalDim1Kindint8), intent(inout):: self
         type(StackNodeLogicalDim1Kindint8), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim1Kindint8
      pure subroutine addLogicalDim1Kindint16(self, data)
         type(StackLogicalDim1Kindint16), intent(inout):: self
         Logical(kind=int16), dimension(:), intent(in):: data
         type(StackNodeLogicalDim1Kindint16), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim1Kindint16
      function pop1LogicalDim1Kindint16(self) result(data)
         Logical(kind=int16), dimension(:), allocatable:: data
         type(StackLogicalDim1Kindint16), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim1Kindint16
      function pop2LogicalDim1Kindint16(self, data) result(found)
         Logical:: found
         type(StackLogicalDim1Kindint16), intent(inout):: self
         Logical(kind=int16), dimension(:), allocatable, intent(out):: data
         type(StackNodeLogicalDim1Kindint16), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim1Kindint16
      impure elemental function sizeLogicalDim1Kindint16(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim1Kindint16), intent(in):: self
         type(StackNodeLogicalDim1Kindint16), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim1Kindint16
      impure elemental subroutine finalizeLogicalDim1Kindint16(self)
         type(StackLogicalDim1Kindint16), intent(inout):: self
         type(StackNodeLogicalDim1Kindint16), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim1Kindint16
      pure subroutine addLogicalDim1Kindint32(self, data)
         type(StackLogicalDim1Kindint32), intent(inout):: self
         Logical(kind=int32), dimension(:), intent(in):: data
         type(StackNodeLogicalDim1Kindint32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim1Kindint32
      function pop1LogicalDim1Kindint32(self) result(data)
         Logical(kind=int32), dimension(:), allocatable:: data
         type(StackLogicalDim1Kindint32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim1Kindint32
      function pop2LogicalDim1Kindint32(self, data) result(found)
         Logical:: found
         type(StackLogicalDim1Kindint32), intent(inout):: self
         Logical(kind=int32), dimension(:), allocatable, intent(out):: data
         type(StackNodeLogicalDim1Kindint32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim1Kindint32
      impure elemental function sizeLogicalDim1Kindint32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim1Kindint32), intent(in):: self
         type(StackNodeLogicalDim1Kindint32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim1Kindint32
      impure elemental subroutine finalizeLogicalDim1Kindint32(self)
         type(StackLogicalDim1Kindint32), intent(inout):: self
         type(StackNodeLogicalDim1Kindint32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim1Kindint32
      pure subroutine addLogicalDim1Kindint64(self, data)
         type(StackLogicalDim1Kindint64), intent(inout):: self
         Logical(kind=int64), dimension(:), intent(in):: data
         type(StackNodeLogicalDim1Kindint64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim1Kindint64
      function pop1LogicalDim1Kindint64(self) result(data)
         Logical(kind=int64), dimension(:), allocatable:: data
         type(StackLogicalDim1Kindint64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim1Kindint64
      function pop2LogicalDim1Kindint64(self, data) result(found)
         Logical:: found
         type(StackLogicalDim1Kindint64), intent(inout):: self
         Logical(kind=int64), dimension(:), allocatable, intent(out):: data
         type(StackNodeLogicalDim1Kindint64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim1Kindint64
      impure elemental function sizeLogicalDim1Kindint64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim1Kindint64), intent(in):: self
         type(StackNodeLogicalDim1Kindint64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim1Kindint64
      impure elemental subroutine finalizeLogicalDim1Kindint64(self)
         type(StackLogicalDim1Kindint64), intent(inout):: self
         type(StackNodeLogicalDim1Kindint64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim1Kindint64
      pure subroutine addLogicalDim2Kindint8(self, data)
         type(StackLogicalDim2Kindint8), intent(inout):: self
         Logical(kind=int8), dimension(:, :), intent(in):: data
         type(StackNodeLogicalDim2Kindint8), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim2Kindint8
      function pop1LogicalDim2Kindint8(self) result(data)
         Logical(kind=int8), dimension(:, :), allocatable:: data
         type(StackLogicalDim2Kindint8), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim2Kindint8
      function pop2LogicalDim2Kindint8(self, data) result(found)
         Logical:: found
         type(StackLogicalDim2Kindint8), intent(inout):: self
         Logical(kind=int8), dimension(:, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim2Kindint8), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim2Kindint8
      impure elemental function sizeLogicalDim2Kindint8(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim2Kindint8), intent(in):: self
         type(StackNodeLogicalDim2Kindint8), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim2Kindint8
      impure elemental subroutine finalizeLogicalDim2Kindint8(self)
         type(StackLogicalDim2Kindint8), intent(inout):: self
         type(StackNodeLogicalDim2Kindint8), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim2Kindint8
      pure subroutine addLogicalDim2Kindint16(self, data)
         type(StackLogicalDim2Kindint16), intent(inout):: self
         Logical(kind=int16), dimension(:, :), intent(in):: data
         type(StackNodeLogicalDim2Kindint16), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim2Kindint16
      function pop1LogicalDim2Kindint16(self) result(data)
         Logical(kind=int16), dimension(:, :), allocatable:: data
         type(StackLogicalDim2Kindint16), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim2Kindint16
      function pop2LogicalDim2Kindint16(self, data) result(found)
         Logical:: found
         type(StackLogicalDim2Kindint16), intent(inout):: self
         Logical(kind=int16), dimension(:, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim2Kindint16), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim2Kindint16
      impure elemental function sizeLogicalDim2Kindint16(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim2Kindint16), intent(in):: self
         type(StackNodeLogicalDim2Kindint16), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim2Kindint16
      impure elemental subroutine finalizeLogicalDim2Kindint16(self)
         type(StackLogicalDim2Kindint16), intent(inout):: self
         type(StackNodeLogicalDim2Kindint16), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim2Kindint16
      pure subroutine addLogicalDim2Kindint32(self, data)
         type(StackLogicalDim2Kindint32), intent(inout):: self
         Logical(kind=int32), dimension(:, :), intent(in):: data
         type(StackNodeLogicalDim2Kindint32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim2Kindint32
      function pop1LogicalDim2Kindint32(self) result(data)
         Logical(kind=int32), dimension(:, :), allocatable:: data
         type(StackLogicalDim2Kindint32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim2Kindint32
      function pop2LogicalDim2Kindint32(self, data) result(found)
         Logical:: found
         type(StackLogicalDim2Kindint32), intent(inout):: self
         Logical(kind=int32), dimension(:, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim2Kindint32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim2Kindint32
      impure elemental function sizeLogicalDim2Kindint32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim2Kindint32), intent(in):: self
         type(StackNodeLogicalDim2Kindint32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim2Kindint32
      impure elemental subroutine finalizeLogicalDim2Kindint32(self)
         type(StackLogicalDim2Kindint32), intent(inout):: self
         type(StackNodeLogicalDim2Kindint32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim2Kindint32
      pure subroutine addLogicalDim2Kindint64(self, data)
         type(StackLogicalDim2Kindint64), intent(inout):: self
         Logical(kind=int64), dimension(:, :), intent(in):: data
         type(StackNodeLogicalDim2Kindint64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim2Kindint64
      function pop1LogicalDim2Kindint64(self) result(data)
         Logical(kind=int64), dimension(:, :), allocatable:: data
         type(StackLogicalDim2Kindint64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim2Kindint64
      function pop2LogicalDim2Kindint64(self, data) result(found)
         Logical:: found
         type(StackLogicalDim2Kindint64), intent(inout):: self
         Logical(kind=int64), dimension(:, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim2Kindint64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim2Kindint64
      impure elemental function sizeLogicalDim2Kindint64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim2Kindint64), intent(in):: self
         type(StackNodeLogicalDim2Kindint64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim2Kindint64
      impure elemental subroutine finalizeLogicalDim2Kindint64(self)
         type(StackLogicalDim2Kindint64), intent(inout):: self
         type(StackNodeLogicalDim2Kindint64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim2Kindint64
      pure subroutine addLogicalDim3Kindint8(self, data)
         type(StackLogicalDim3Kindint8), intent(inout):: self
         Logical(kind=int8), dimension(:, :, :), intent(in):: data
         type(StackNodeLogicalDim3Kindint8), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim3Kindint8
      function pop1LogicalDim3Kindint8(self) result(data)
         Logical(kind=int8), dimension(:, :, :), allocatable:: data
         type(StackLogicalDim3Kindint8), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim3Kindint8
      function pop2LogicalDim3Kindint8(self, data) result(found)
         Logical:: found
         type(StackLogicalDim3Kindint8), intent(inout):: self
         Logical(kind=int8), dimension(:, :, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim3Kindint8), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim3Kindint8
      impure elemental function sizeLogicalDim3Kindint8(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim3Kindint8), intent(in):: self
         type(StackNodeLogicalDim3Kindint8), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim3Kindint8
      impure elemental subroutine finalizeLogicalDim3Kindint8(self)
         type(StackLogicalDim3Kindint8), intent(inout):: self
         type(StackNodeLogicalDim3Kindint8), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim3Kindint8
      pure subroutine addLogicalDim3Kindint16(self, data)
         type(StackLogicalDim3Kindint16), intent(inout):: self
         Logical(kind=int16), dimension(:, :, :), intent(in):: data
         type(StackNodeLogicalDim3Kindint16), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim3Kindint16
      function pop1LogicalDim3Kindint16(self) result(data)
         Logical(kind=int16), dimension(:, :, :), allocatable:: data
         type(StackLogicalDim3Kindint16), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim3Kindint16
      function pop2LogicalDim3Kindint16(self, data) result(found)
         Logical:: found
         type(StackLogicalDim3Kindint16), intent(inout):: self
         Logical(kind=int16), dimension(:, :, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim3Kindint16), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim3Kindint16
      impure elemental function sizeLogicalDim3Kindint16(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim3Kindint16), intent(in):: self
         type(StackNodeLogicalDim3Kindint16), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim3Kindint16
      impure elemental subroutine finalizeLogicalDim3Kindint16(self)
         type(StackLogicalDim3Kindint16), intent(inout):: self
         type(StackNodeLogicalDim3Kindint16), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim3Kindint16
      pure subroutine addLogicalDim3Kindint32(self, data)
         type(StackLogicalDim3Kindint32), intent(inout):: self
         Logical(kind=int32), dimension(:, :, :), intent(in):: data
         type(StackNodeLogicalDim3Kindint32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim3Kindint32
      function pop1LogicalDim3Kindint32(self) result(data)
         Logical(kind=int32), dimension(:, :, :), allocatable:: data
         type(StackLogicalDim3Kindint32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim3Kindint32
      function pop2LogicalDim3Kindint32(self, data) result(found)
         Logical:: found
         type(StackLogicalDim3Kindint32), intent(inout):: self
         Logical(kind=int32), dimension(:, :, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim3Kindint32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim3Kindint32
      impure elemental function sizeLogicalDim3Kindint32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim3Kindint32), intent(in):: self
         type(StackNodeLogicalDim3Kindint32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim3Kindint32
      impure elemental subroutine finalizeLogicalDim3Kindint32(self)
         type(StackLogicalDim3Kindint32), intent(inout):: self
         type(StackNodeLogicalDim3Kindint32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim3Kindint32
      pure subroutine addLogicalDim3Kindint64(self, data)
         type(StackLogicalDim3Kindint64), intent(inout):: self
         Logical(kind=int64), dimension(:, :, :), intent(in):: data
         type(StackNodeLogicalDim3Kindint64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim3Kindint64
      function pop1LogicalDim3Kindint64(self) result(data)
         Logical(kind=int64), dimension(:, :, :), allocatable:: data
         type(StackLogicalDim3Kindint64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim3Kindint64
      function pop2LogicalDim3Kindint64(self, data) result(found)
         Logical:: found
         type(StackLogicalDim3Kindint64), intent(inout):: self
         Logical(kind=int64), dimension(:, :, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim3Kindint64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim3Kindint64
      impure elemental function sizeLogicalDim3Kindint64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim3Kindint64), intent(in):: self
         type(StackNodeLogicalDim3Kindint64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim3Kindint64
      impure elemental subroutine finalizeLogicalDim3Kindint64(self)
         type(StackLogicalDim3Kindint64), intent(inout):: self
         type(StackNodeLogicalDim3Kindint64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim3Kindint64
      pure subroutine addLogicalDim4Kindint8(self, data)
         type(StackLogicalDim4Kindint8), intent(inout):: self
         Logical(kind=int8), dimension(:, :, :, :), intent(in):: data
         type(StackNodeLogicalDim4Kindint8), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim4Kindint8
      function pop1LogicalDim4Kindint8(self) result(data)
         Logical(kind=int8), dimension(:, :, :, :), allocatable:: data
         type(StackLogicalDim4Kindint8), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim4Kindint8
      function pop2LogicalDim4Kindint8(self, data) result(found)
         Logical:: found
         type(StackLogicalDim4Kindint8), intent(inout):: self
         Logical(kind=int8), dimension(:, :, :, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim4Kindint8), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim4Kindint8
      impure elemental function sizeLogicalDim4Kindint8(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim4Kindint8), intent(in):: self
         type(StackNodeLogicalDim4Kindint8), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim4Kindint8
      impure elemental subroutine finalizeLogicalDim4Kindint8(self)
         type(StackLogicalDim4Kindint8), intent(inout):: self
         type(StackNodeLogicalDim4Kindint8), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim4Kindint8
      pure subroutine addLogicalDim4Kindint16(self, data)
         type(StackLogicalDim4Kindint16), intent(inout):: self
         Logical(kind=int16), dimension(:, :, :, :), intent(in):: data
         type(StackNodeLogicalDim4Kindint16), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim4Kindint16
      function pop1LogicalDim4Kindint16(self) result(data)
         Logical(kind=int16), dimension(:, :, :, :), allocatable:: data
         type(StackLogicalDim4Kindint16), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim4Kindint16
      function pop2LogicalDim4Kindint16(self, data) result(found)
         Logical:: found
         type(StackLogicalDim4Kindint16), intent(inout):: self
         Logical(kind=int16), dimension(:, :, :, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim4Kindint16), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim4Kindint16
      impure elemental function sizeLogicalDim4Kindint16(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim4Kindint16), intent(in):: self
         type(StackNodeLogicalDim4Kindint16), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim4Kindint16
      impure elemental subroutine finalizeLogicalDim4Kindint16(self)
         type(StackLogicalDim4Kindint16), intent(inout):: self
         type(StackNodeLogicalDim4Kindint16), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim4Kindint16
      pure subroutine addLogicalDim4Kindint32(self, data)
         type(StackLogicalDim4Kindint32), intent(inout):: self
         Logical(kind=int32), dimension(:, :, :, :), intent(in):: data
         type(StackNodeLogicalDim4Kindint32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim4Kindint32
      function pop1LogicalDim4Kindint32(self) result(data)
         Logical(kind=int32), dimension(:, :, :, :), allocatable:: data
         type(StackLogicalDim4Kindint32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim4Kindint32
      function pop2LogicalDim4Kindint32(self, data) result(found)
         Logical:: found
         type(StackLogicalDim4Kindint32), intent(inout):: self
         Logical(kind=int32), dimension(:, :, :, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim4Kindint32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim4Kindint32
      impure elemental function sizeLogicalDim4Kindint32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim4Kindint32), intent(in):: self
         type(StackNodeLogicalDim4Kindint32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim4Kindint32
      impure elemental subroutine finalizeLogicalDim4Kindint32(self)
         type(StackLogicalDim4Kindint32), intent(inout):: self
         type(StackNodeLogicalDim4Kindint32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim4Kindint32
      pure subroutine addLogicalDim4Kindint64(self, data)
         type(StackLogicalDim4Kindint64), intent(inout):: self
         Logical(kind=int64), dimension(:, :, :, :), intent(in):: data
         type(StackNodeLogicalDim4Kindint64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim4Kindint64
      function pop1LogicalDim4Kindint64(self) result(data)
         Logical(kind=int64), dimension(:, :, :, :), allocatable:: data
         type(StackLogicalDim4Kindint64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim4Kindint64
      function pop2LogicalDim4Kindint64(self, data) result(found)
         Logical:: found
         type(StackLogicalDim4Kindint64), intent(inout):: self
         Logical(kind=int64), dimension(:, :, :, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim4Kindint64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim4Kindint64
      impure elemental function sizeLogicalDim4Kindint64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim4Kindint64), intent(in):: self
         type(StackNodeLogicalDim4Kindint64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim4Kindint64
      impure elemental subroutine finalizeLogicalDim4Kindint64(self)
         type(StackLogicalDim4Kindint64), intent(inout):: self
         type(StackNodeLogicalDim4Kindint64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim4Kindint64
      pure subroutine addLogicalDim5Kindint8(self, data)
         type(StackLogicalDim5Kindint8), intent(inout):: self
         Logical(kind=int8), dimension(:, :, :, :, :), intent(in):: data
         type(StackNodeLogicalDim5Kindint8), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim5Kindint8
      function pop1LogicalDim5Kindint8(self) result(data)
         Logical(kind=int8), dimension(:, :, :, :, :), allocatable:: data
         type(StackLogicalDim5Kindint8), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim5Kindint8
      function pop2LogicalDim5Kindint8(self, data) result(found)
         Logical:: found
         type(StackLogicalDim5Kindint8), intent(inout):: self
         Logical(kind=int8), dimension(:, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim5Kindint8), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim5Kindint8
      impure elemental function sizeLogicalDim5Kindint8(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim5Kindint8), intent(in):: self
         type(StackNodeLogicalDim5Kindint8), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim5Kindint8
      impure elemental subroutine finalizeLogicalDim5Kindint8(self)
         type(StackLogicalDim5Kindint8), intent(inout):: self
         type(StackNodeLogicalDim5Kindint8), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim5Kindint8
      pure subroutine addLogicalDim5Kindint16(self, data)
         type(StackLogicalDim5Kindint16), intent(inout):: self
         Logical(kind=int16), dimension(:, :, :, :, :), intent(in):: data
         type(StackNodeLogicalDim5Kindint16), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim5Kindint16
      function pop1LogicalDim5Kindint16(self) result(data)
         Logical(kind=int16), dimension(:, :, :, :, :), allocatable:: data
         type(StackLogicalDim5Kindint16), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim5Kindint16
      function pop2LogicalDim5Kindint16(self, data) result(found)
         Logical:: found
         type(StackLogicalDim5Kindint16), intent(inout):: self
         Logical(kind=int16), dimension(:, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim5Kindint16), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim5Kindint16
      impure elemental function sizeLogicalDim5Kindint16(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim5Kindint16), intent(in):: self
         type(StackNodeLogicalDim5Kindint16), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim5Kindint16
      impure elemental subroutine finalizeLogicalDim5Kindint16(self)
         type(StackLogicalDim5Kindint16), intent(inout):: self
         type(StackNodeLogicalDim5Kindint16), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim5Kindint16
      pure subroutine addLogicalDim5Kindint32(self, data)
         type(StackLogicalDim5Kindint32), intent(inout):: self
         Logical(kind=int32), dimension(:, :, :, :, :), intent(in):: data
         type(StackNodeLogicalDim5Kindint32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim5Kindint32
      function pop1LogicalDim5Kindint32(self) result(data)
         Logical(kind=int32), dimension(:, :, :, :, :), allocatable:: data
         type(StackLogicalDim5Kindint32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim5Kindint32
      function pop2LogicalDim5Kindint32(self, data) result(found)
         Logical:: found
         type(StackLogicalDim5Kindint32), intent(inout):: self
         Logical(kind=int32), dimension(:, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim5Kindint32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim5Kindint32
      impure elemental function sizeLogicalDim5Kindint32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim5Kindint32), intent(in):: self
         type(StackNodeLogicalDim5Kindint32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim5Kindint32
      impure elemental subroutine finalizeLogicalDim5Kindint32(self)
         type(StackLogicalDim5Kindint32), intent(inout):: self
         type(StackNodeLogicalDim5Kindint32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim5Kindint32
      pure subroutine addLogicalDim5Kindint64(self, data)
         type(StackLogicalDim5Kindint64), intent(inout):: self
         Logical(kind=int64), dimension(:, :, :, :, :), intent(in):: data
         type(StackNodeLogicalDim5Kindint64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim5Kindint64
      function pop1LogicalDim5Kindint64(self) result(data)
         Logical(kind=int64), dimension(:, :, :, :, :), allocatable:: data
         type(StackLogicalDim5Kindint64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim5Kindint64
      function pop2LogicalDim5Kindint64(self, data) result(found)
         Logical:: found
         type(StackLogicalDim5Kindint64), intent(inout):: self
         Logical(kind=int64), dimension(:, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim5Kindint64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim5Kindint64
      impure elemental function sizeLogicalDim5Kindint64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim5Kindint64), intent(in):: self
         type(StackNodeLogicalDim5Kindint64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim5Kindint64
      impure elemental subroutine finalizeLogicalDim5Kindint64(self)
         type(StackLogicalDim5Kindint64), intent(inout):: self
         type(StackNodeLogicalDim5Kindint64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim5Kindint64
      pure subroutine addLogicalDim6Kindint8(self, data)
         type(StackLogicalDim6Kindint8), intent(inout):: self
         Logical(kind=int8), dimension(:, :, :, :, :, :), intent(in):: data
         type(StackNodeLogicalDim6Kindint8), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim6Kindint8
      function pop1LogicalDim6Kindint8(self) result(data)
         Logical(kind=int8), dimension(:, :, :, :, :, :), allocatable:: data
         type(StackLogicalDim6Kindint8), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim6Kindint8
      function pop2LogicalDim6Kindint8(self, data) result(found)
         Logical:: found
         type(StackLogicalDim6Kindint8), intent(inout):: self
         Logical(kind=int8), dimension(:, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim6Kindint8), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim6Kindint8
      impure elemental function sizeLogicalDim6Kindint8(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim6Kindint8), intent(in):: self
         type(StackNodeLogicalDim6Kindint8), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim6Kindint8
      impure elemental subroutine finalizeLogicalDim6Kindint8(self)
         type(StackLogicalDim6Kindint8), intent(inout):: self
         type(StackNodeLogicalDim6Kindint8), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim6Kindint8
      pure subroutine addLogicalDim6Kindint16(self, data)
         type(StackLogicalDim6Kindint16), intent(inout):: self
         Logical(kind=int16), dimension(:, :, :, :, :, :), intent(in):: data
         type(StackNodeLogicalDim6Kindint16), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim6Kindint16
      function pop1LogicalDim6Kindint16(self) result(data)
         Logical(kind=int16), dimension(:, :, :, :, :, :), allocatable:: data
         type(StackLogicalDim6Kindint16), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim6Kindint16
      function pop2LogicalDim6Kindint16(self, data) result(found)
         Logical:: found
         type(StackLogicalDim6Kindint16), intent(inout):: self
         Logical(kind=int16), dimension(:, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim6Kindint16), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim6Kindint16
      impure elemental function sizeLogicalDim6Kindint16(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim6Kindint16), intent(in):: self
         type(StackNodeLogicalDim6Kindint16), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim6Kindint16
      impure elemental subroutine finalizeLogicalDim6Kindint16(self)
         type(StackLogicalDim6Kindint16), intent(inout):: self
         type(StackNodeLogicalDim6Kindint16), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim6Kindint16
      pure subroutine addLogicalDim6Kindint32(self, data)
         type(StackLogicalDim6Kindint32), intent(inout):: self
         Logical(kind=int32), dimension(:, :, :, :, :, :), intent(in):: data
         type(StackNodeLogicalDim6Kindint32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim6Kindint32
      function pop1LogicalDim6Kindint32(self) result(data)
         Logical(kind=int32), dimension(:, :, :, :, :, :), allocatable:: data
         type(StackLogicalDim6Kindint32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim6Kindint32
      function pop2LogicalDim6Kindint32(self, data) result(found)
         Logical:: found
         type(StackLogicalDim6Kindint32), intent(inout):: self
         Logical(kind=int32), dimension(:, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim6Kindint32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim6Kindint32
      impure elemental function sizeLogicalDim6Kindint32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim6Kindint32), intent(in):: self
         type(StackNodeLogicalDim6Kindint32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim6Kindint32
      impure elemental subroutine finalizeLogicalDim6Kindint32(self)
         type(StackLogicalDim6Kindint32), intent(inout):: self
         type(StackNodeLogicalDim6Kindint32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim6Kindint32
      pure subroutine addLogicalDim6Kindint64(self, data)
         type(StackLogicalDim6Kindint64), intent(inout):: self
         Logical(kind=int64), dimension(:, :, :, :, :, :), intent(in):: data
         type(StackNodeLogicalDim6Kindint64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim6Kindint64
      function pop1LogicalDim6Kindint64(self) result(data)
         Logical(kind=int64), dimension(:, :, :, :, :, :), allocatable:: data
         type(StackLogicalDim6Kindint64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim6Kindint64
      function pop2LogicalDim6Kindint64(self, data) result(found)
         Logical:: found
         type(StackLogicalDim6Kindint64), intent(inout):: self
         Logical(kind=int64), dimension(:, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim6Kindint64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim6Kindint64
      impure elemental function sizeLogicalDim6Kindint64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim6Kindint64), intent(in):: self
         type(StackNodeLogicalDim6Kindint64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim6Kindint64
      impure elemental subroutine finalizeLogicalDim6Kindint64(self)
         type(StackLogicalDim6Kindint64), intent(inout):: self
         type(StackNodeLogicalDim6Kindint64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim6Kindint64
      pure subroutine addLogicalDim7Kindint8(self, data)
         type(StackLogicalDim7Kindint8), intent(inout):: self
         Logical(kind=int8), dimension(:, :, :, :, :, :, :), intent(in):: data
         type(StackNodeLogicalDim7Kindint8), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim7Kindint8
      function pop1LogicalDim7Kindint8(self) result(data)
         Logical(kind=int8), dimension(:, :, :, :, :, :, :), allocatable:: data
         type(StackLogicalDim7Kindint8), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim7Kindint8
      function pop2LogicalDim7Kindint8(self, data) result(found)
         Logical:: found
         type(StackLogicalDim7Kindint8), intent(inout):: self
         Logical(kind=int8), dimension(:, :, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim7Kindint8), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim7Kindint8
      impure elemental function sizeLogicalDim7Kindint8(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim7Kindint8), intent(in):: self
         type(StackNodeLogicalDim7Kindint8), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim7Kindint8
      impure elemental subroutine finalizeLogicalDim7Kindint8(self)
         type(StackLogicalDim7Kindint8), intent(inout):: self
         type(StackNodeLogicalDim7Kindint8), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim7Kindint8
      pure subroutine addLogicalDim7Kindint16(self, data)
         type(StackLogicalDim7Kindint16), intent(inout):: self
         Logical(kind=int16), dimension(:, :, :, :, :, :, :), intent(in):: data
         type(StackNodeLogicalDim7Kindint16), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim7Kindint16
      function pop1LogicalDim7Kindint16(self) result(data)
         Logical(kind=int16), dimension(:, :, :, :, :, :, :), allocatable:: data
         type(StackLogicalDim7Kindint16), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim7Kindint16
      function pop2LogicalDim7Kindint16(self, data) result(found)
         Logical:: found
         type(StackLogicalDim7Kindint16), intent(inout):: self
         Logical(kind=int16), dimension(:, :, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim7Kindint16), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim7Kindint16
      impure elemental function sizeLogicalDim7Kindint16(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim7Kindint16), intent(in):: self
         type(StackNodeLogicalDim7Kindint16), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim7Kindint16
      impure elemental subroutine finalizeLogicalDim7Kindint16(self)
         type(StackLogicalDim7Kindint16), intent(inout):: self
         type(StackNodeLogicalDim7Kindint16), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim7Kindint16
      pure subroutine addLogicalDim7Kindint32(self, data)
         type(StackLogicalDim7Kindint32), intent(inout):: self
         Logical(kind=int32), dimension(:, :, :, :, :, :, :), intent(in):: data
         type(StackNodeLogicalDim7Kindint32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim7Kindint32
      function pop1LogicalDim7Kindint32(self) result(data)
         Logical(kind=int32), dimension(:, :, :, :, :, :, :), allocatable:: data
         type(StackLogicalDim7Kindint32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim7Kindint32
      function pop2LogicalDim7Kindint32(self, data) result(found)
         Logical:: found
         type(StackLogicalDim7Kindint32), intent(inout):: self
         Logical(kind=int32), dimension(:, :, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim7Kindint32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim7Kindint32
      impure elemental function sizeLogicalDim7Kindint32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim7Kindint32), intent(in):: self
         type(StackNodeLogicalDim7Kindint32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim7Kindint32
      impure elemental subroutine finalizeLogicalDim7Kindint32(self)
         type(StackLogicalDim7Kindint32), intent(inout):: self
         type(StackNodeLogicalDim7Kindint32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim7Kindint32
      pure subroutine addLogicalDim7Kindint64(self, data)
         type(StackLogicalDim7Kindint64), intent(inout):: self
         Logical(kind=int64), dimension(:, :, :, :, :, :, :), intent(in):: data
         type(StackNodeLogicalDim7Kindint64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addLogicalDim7Kindint64
      function pop1LogicalDim7Kindint64(self) result(data)
         Logical(kind=int64), dimension(:, :, :, :, :, :, :), allocatable:: data
         type(StackLogicalDim7Kindint64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1LogicalDim7Kindint64
      function pop2LogicalDim7Kindint64(self, data) result(found)
         Logical:: found
         type(StackLogicalDim7Kindint64), intent(inout):: self
         Logical(kind=int64), dimension(:, :, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeLogicalDim7Kindint64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2LogicalDim7Kindint64
      impure elemental function sizeLogicalDim7Kindint64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackLogicalDim7Kindint64), intent(in):: self
         type(StackNodeLogicalDim7Kindint64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeLogicalDim7Kindint64
      impure elemental subroutine finalizeLogicalDim7Kindint64(self)
         type(StackLogicalDim7Kindint64), intent(inout):: self
         type(StackNodeLogicalDim7Kindint64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeLogicalDim7Kindint64
      pure subroutine addComplexDim0Kindreal32(self, data)
         type(StackComplexDim0Kindreal32), intent(inout):: self
         Complex(kind=real32), intent(in):: data
         type(StackNodeComplexDim0Kindreal32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim0Kindreal32
      function pop1ComplexDim0Kindreal32(self) result(data)
         Complex(kind=real32):: data
         type(StackComplexDim0Kindreal32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim0Kindreal32
      function pop2ComplexDim0Kindreal32(self, data) result(found)
         Logical:: found
         type(StackComplexDim0Kindreal32), intent(inout):: self
         Complex(kind=real32), intent(out):: data
         type(StackNodeComplexDim0Kindreal32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim0Kindreal32
      impure elemental function sizeComplexDim0Kindreal32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim0Kindreal32), intent(in):: self
         type(StackNodeComplexDim0Kindreal32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim0Kindreal32
         function array_ofComplexDim0Kindreal32(self) result(ret)
            type(StackComplexDim0Kindreal32), intent(in):: self
            Complex(kind=real32):: ret(size(self))
            type(StackNodeComplexDim0Kindreal32), pointer:: tmp
            Integer(kind=int64):: i
            tmp => self%root
            do i = 1, size(ret, kind=kind(i))
               ret(i) = tmp%data
               tmp => tmp%prev
            end do
         end function array_ofComplexDim0Kindreal32
      impure elemental subroutine finalizeComplexDim0Kindreal32(self)
         type(StackComplexDim0Kindreal32), intent(inout):: self
         type(StackNodeComplexDim0Kindreal32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim0Kindreal32
      pure subroutine addComplexDim0Kindreal64(self, data)
         type(StackComplexDim0Kindreal64), intent(inout):: self
         Complex(kind=real64), intent(in):: data
         type(StackNodeComplexDim0Kindreal64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim0Kindreal64
      function pop1ComplexDim0Kindreal64(self) result(data)
         Complex(kind=real64):: data
         type(StackComplexDim0Kindreal64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim0Kindreal64
      function pop2ComplexDim0Kindreal64(self, data) result(found)
         Logical:: found
         type(StackComplexDim0Kindreal64), intent(inout):: self
         Complex(kind=real64), intent(out):: data
         type(StackNodeComplexDim0Kindreal64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim0Kindreal64
      impure elemental function sizeComplexDim0Kindreal64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim0Kindreal64), intent(in):: self
         type(StackNodeComplexDim0Kindreal64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim0Kindreal64
         function array_ofComplexDim0Kindreal64(self) result(ret)
            type(StackComplexDim0Kindreal64), intent(in):: self
            Complex(kind=real64):: ret(size(self))
            type(StackNodeComplexDim0Kindreal64), pointer:: tmp
            Integer(kind=int64):: i
            tmp => self%root
            do i = 1, size(ret, kind=kind(i))
               ret(i) = tmp%data
               tmp => tmp%prev
            end do
         end function array_ofComplexDim0Kindreal64
      impure elemental subroutine finalizeComplexDim0Kindreal64(self)
         type(StackComplexDim0Kindreal64), intent(inout):: self
         type(StackNodeComplexDim0Kindreal64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim0Kindreal64
      pure subroutine addComplexDim0Kindreal128(self, data)
         type(StackComplexDim0Kindreal128), intent(inout):: self
         Complex(kind=real128), intent(in):: data
         type(StackNodeComplexDim0Kindreal128), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim0Kindreal128
      function pop1ComplexDim0Kindreal128(self) result(data)
         Complex(kind=real128):: data
         type(StackComplexDim0Kindreal128), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim0Kindreal128
      function pop2ComplexDim0Kindreal128(self, data) result(found)
         Logical:: found
         type(StackComplexDim0Kindreal128), intent(inout):: self
         Complex(kind=real128), intent(out):: data
         type(StackNodeComplexDim0Kindreal128), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim0Kindreal128
      impure elemental function sizeComplexDim0Kindreal128(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim0Kindreal128), intent(in):: self
         type(StackNodeComplexDim0Kindreal128), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim0Kindreal128
         function array_ofComplexDim0Kindreal128(self) result(ret)
            type(StackComplexDim0Kindreal128), intent(in):: self
            Complex(kind=real128):: ret(size(self))
            type(StackNodeComplexDim0Kindreal128), pointer:: tmp
            Integer(kind=int64):: i
            tmp => self%root
            do i = 1, size(ret, kind=kind(i))
               ret(i) = tmp%data
               tmp => tmp%prev
            end do
         end function array_ofComplexDim0Kindreal128
      impure elemental subroutine finalizeComplexDim0Kindreal128(self)
         type(StackComplexDim0Kindreal128), intent(inout):: self
         type(StackNodeComplexDim0Kindreal128), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim0Kindreal128
      pure subroutine addComplexDim1Kindreal32(self, data)
         type(StackComplexDim1Kindreal32), intent(inout):: self
         Complex(kind=real32), dimension(:), intent(in):: data
         type(StackNodeComplexDim1Kindreal32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim1Kindreal32
      function pop1ComplexDim1Kindreal32(self) result(data)
         Complex(kind=real32), dimension(:), allocatable:: data
         type(StackComplexDim1Kindreal32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim1Kindreal32
      function pop2ComplexDim1Kindreal32(self, data) result(found)
         Logical:: found
         type(StackComplexDim1Kindreal32), intent(inout):: self
         Complex(kind=real32), dimension(:), allocatable, intent(out):: data
         type(StackNodeComplexDim1Kindreal32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim1Kindreal32
      impure elemental function sizeComplexDim1Kindreal32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim1Kindreal32), intent(in):: self
         type(StackNodeComplexDim1Kindreal32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim1Kindreal32
      impure elemental subroutine finalizeComplexDim1Kindreal32(self)
         type(StackComplexDim1Kindreal32), intent(inout):: self
         type(StackNodeComplexDim1Kindreal32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim1Kindreal32
      pure subroutine addComplexDim1Kindreal64(self, data)
         type(StackComplexDim1Kindreal64), intent(inout):: self
         Complex(kind=real64), dimension(:), intent(in):: data
         type(StackNodeComplexDim1Kindreal64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim1Kindreal64
      function pop1ComplexDim1Kindreal64(self) result(data)
         Complex(kind=real64), dimension(:), allocatable:: data
         type(StackComplexDim1Kindreal64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim1Kindreal64
      function pop2ComplexDim1Kindreal64(self, data) result(found)
         Logical:: found
         type(StackComplexDim1Kindreal64), intent(inout):: self
         Complex(kind=real64), dimension(:), allocatable, intent(out):: data
         type(StackNodeComplexDim1Kindreal64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim1Kindreal64
      impure elemental function sizeComplexDim1Kindreal64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim1Kindreal64), intent(in):: self
         type(StackNodeComplexDim1Kindreal64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim1Kindreal64
      impure elemental subroutine finalizeComplexDim1Kindreal64(self)
         type(StackComplexDim1Kindreal64), intent(inout):: self
         type(StackNodeComplexDim1Kindreal64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim1Kindreal64
      pure subroutine addComplexDim1Kindreal128(self, data)
         type(StackComplexDim1Kindreal128), intent(inout):: self
         Complex(kind=real128), dimension(:), intent(in):: data
         type(StackNodeComplexDim1Kindreal128), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim1Kindreal128
      function pop1ComplexDim1Kindreal128(self) result(data)
         Complex(kind=real128), dimension(:), allocatable:: data
         type(StackComplexDim1Kindreal128), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim1Kindreal128
      function pop2ComplexDim1Kindreal128(self, data) result(found)
         Logical:: found
         type(StackComplexDim1Kindreal128), intent(inout):: self
         Complex(kind=real128), dimension(:), allocatable, intent(out):: data
         type(StackNodeComplexDim1Kindreal128), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim1Kindreal128
      impure elemental function sizeComplexDim1Kindreal128(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim1Kindreal128), intent(in):: self
         type(StackNodeComplexDim1Kindreal128), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim1Kindreal128
      impure elemental subroutine finalizeComplexDim1Kindreal128(self)
         type(StackComplexDim1Kindreal128), intent(inout):: self
         type(StackNodeComplexDim1Kindreal128), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim1Kindreal128
      pure subroutine addComplexDim2Kindreal32(self, data)
         type(StackComplexDim2Kindreal32), intent(inout):: self
         Complex(kind=real32), dimension(:, :), intent(in):: data
         type(StackNodeComplexDim2Kindreal32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim2Kindreal32
      function pop1ComplexDim2Kindreal32(self) result(data)
         Complex(kind=real32), dimension(:, :), allocatable:: data
         type(StackComplexDim2Kindreal32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim2Kindreal32
      function pop2ComplexDim2Kindreal32(self, data) result(found)
         Logical:: found
         type(StackComplexDim2Kindreal32), intent(inout):: self
         Complex(kind=real32), dimension(:, :), allocatable, intent(out):: data
         type(StackNodeComplexDim2Kindreal32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim2Kindreal32
      impure elemental function sizeComplexDim2Kindreal32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim2Kindreal32), intent(in):: self
         type(StackNodeComplexDim2Kindreal32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim2Kindreal32
      impure elemental subroutine finalizeComplexDim2Kindreal32(self)
         type(StackComplexDim2Kindreal32), intent(inout):: self
         type(StackNodeComplexDim2Kindreal32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim2Kindreal32
      pure subroutine addComplexDim2Kindreal64(self, data)
         type(StackComplexDim2Kindreal64), intent(inout):: self
         Complex(kind=real64), dimension(:, :), intent(in):: data
         type(StackNodeComplexDim2Kindreal64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim2Kindreal64
      function pop1ComplexDim2Kindreal64(self) result(data)
         Complex(kind=real64), dimension(:, :), allocatable:: data
         type(StackComplexDim2Kindreal64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim2Kindreal64
      function pop2ComplexDim2Kindreal64(self, data) result(found)
         Logical:: found
         type(StackComplexDim2Kindreal64), intent(inout):: self
         Complex(kind=real64), dimension(:, :), allocatable, intent(out):: data
         type(StackNodeComplexDim2Kindreal64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim2Kindreal64
      impure elemental function sizeComplexDim2Kindreal64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim2Kindreal64), intent(in):: self
         type(StackNodeComplexDim2Kindreal64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim2Kindreal64
      impure elemental subroutine finalizeComplexDim2Kindreal64(self)
         type(StackComplexDim2Kindreal64), intent(inout):: self
         type(StackNodeComplexDim2Kindreal64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim2Kindreal64
      pure subroutine addComplexDim2Kindreal128(self, data)
         type(StackComplexDim2Kindreal128), intent(inout):: self
         Complex(kind=real128), dimension(:, :), intent(in):: data
         type(StackNodeComplexDim2Kindreal128), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim2Kindreal128
      function pop1ComplexDim2Kindreal128(self) result(data)
         Complex(kind=real128), dimension(:, :), allocatable:: data
         type(StackComplexDim2Kindreal128), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim2Kindreal128
      function pop2ComplexDim2Kindreal128(self, data) result(found)
         Logical:: found
         type(StackComplexDim2Kindreal128), intent(inout):: self
         Complex(kind=real128), dimension(:, :), allocatable, intent(out):: data
         type(StackNodeComplexDim2Kindreal128), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim2Kindreal128
      impure elemental function sizeComplexDim2Kindreal128(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim2Kindreal128), intent(in):: self
         type(StackNodeComplexDim2Kindreal128), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim2Kindreal128
      impure elemental subroutine finalizeComplexDim2Kindreal128(self)
         type(StackComplexDim2Kindreal128), intent(inout):: self
         type(StackNodeComplexDim2Kindreal128), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim2Kindreal128
      pure subroutine addComplexDim3Kindreal32(self, data)
         type(StackComplexDim3Kindreal32), intent(inout):: self
         Complex(kind=real32), dimension(:, :, :), intent(in):: data
         type(StackNodeComplexDim3Kindreal32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim3Kindreal32
      function pop1ComplexDim3Kindreal32(self) result(data)
         Complex(kind=real32), dimension(:, :, :), allocatable:: data
         type(StackComplexDim3Kindreal32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim3Kindreal32
      function pop2ComplexDim3Kindreal32(self, data) result(found)
         Logical:: found
         type(StackComplexDim3Kindreal32), intent(inout):: self
         Complex(kind=real32), dimension(:, :, :), allocatable, intent(out):: data
         type(StackNodeComplexDim3Kindreal32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim3Kindreal32
      impure elemental function sizeComplexDim3Kindreal32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim3Kindreal32), intent(in):: self
         type(StackNodeComplexDim3Kindreal32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim3Kindreal32
      impure elemental subroutine finalizeComplexDim3Kindreal32(self)
         type(StackComplexDim3Kindreal32), intent(inout):: self
         type(StackNodeComplexDim3Kindreal32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim3Kindreal32
      pure subroutine addComplexDim3Kindreal64(self, data)
         type(StackComplexDim3Kindreal64), intent(inout):: self
         Complex(kind=real64), dimension(:, :, :), intent(in):: data
         type(StackNodeComplexDim3Kindreal64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim3Kindreal64
      function pop1ComplexDim3Kindreal64(self) result(data)
         Complex(kind=real64), dimension(:, :, :), allocatable:: data
         type(StackComplexDim3Kindreal64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim3Kindreal64
      function pop2ComplexDim3Kindreal64(self, data) result(found)
         Logical:: found
         type(StackComplexDim3Kindreal64), intent(inout):: self
         Complex(kind=real64), dimension(:, :, :), allocatable, intent(out):: data
         type(StackNodeComplexDim3Kindreal64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim3Kindreal64
      impure elemental function sizeComplexDim3Kindreal64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim3Kindreal64), intent(in):: self
         type(StackNodeComplexDim3Kindreal64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim3Kindreal64
      impure elemental subroutine finalizeComplexDim3Kindreal64(self)
         type(StackComplexDim3Kindreal64), intent(inout):: self
         type(StackNodeComplexDim3Kindreal64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim3Kindreal64
      pure subroutine addComplexDim3Kindreal128(self, data)
         type(StackComplexDim3Kindreal128), intent(inout):: self
         Complex(kind=real128), dimension(:, :, :), intent(in):: data
         type(StackNodeComplexDim3Kindreal128), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim3Kindreal128
      function pop1ComplexDim3Kindreal128(self) result(data)
         Complex(kind=real128), dimension(:, :, :), allocatable:: data
         type(StackComplexDim3Kindreal128), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim3Kindreal128
      function pop2ComplexDim3Kindreal128(self, data) result(found)
         Logical:: found
         type(StackComplexDim3Kindreal128), intent(inout):: self
         Complex(kind=real128), dimension(:, :, :), allocatable, intent(out):: data
         type(StackNodeComplexDim3Kindreal128), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim3Kindreal128
      impure elemental function sizeComplexDim3Kindreal128(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim3Kindreal128), intent(in):: self
         type(StackNodeComplexDim3Kindreal128), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim3Kindreal128
      impure elemental subroutine finalizeComplexDim3Kindreal128(self)
         type(StackComplexDim3Kindreal128), intent(inout):: self
         type(StackNodeComplexDim3Kindreal128), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim3Kindreal128
      pure subroutine addComplexDim4Kindreal32(self, data)
         type(StackComplexDim4Kindreal32), intent(inout):: self
         Complex(kind=real32), dimension(:, :, :, :), intent(in):: data
         type(StackNodeComplexDim4Kindreal32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim4Kindreal32
      function pop1ComplexDim4Kindreal32(self) result(data)
         Complex(kind=real32), dimension(:, :, :, :), allocatable:: data
         type(StackComplexDim4Kindreal32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim4Kindreal32
      function pop2ComplexDim4Kindreal32(self, data) result(found)
         Logical:: found
         type(StackComplexDim4Kindreal32), intent(inout):: self
         Complex(kind=real32), dimension(:, :, :, :), allocatable, intent(out):: data
         type(StackNodeComplexDim4Kindreal32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim4Kindreal32
      impure elemental function sizeComplexDim4Kindreal32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim4Kindreal32), intent(in):: self
         type(StackNodeComplexDim4Kindreal32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim4Kindreal32
      impure elemental subroutine finalizeComplexDim4Kindreal32(self)
         type(StackComplexDim4Kindreal32), intent(inout):: self
         type(StackNodeComplexDim4Kindreal32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim4Kindreal32
      pure subroutine addComplexDim4Kindreal64(self, data)
         type(StackComplexDim4Kindreal64), intent(inout):: self
         Complex(kind=real64), dimension(:, :, :, :), intent(in):: data
         type(StackNodeComplexDim4Kindreal64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim4Kindreal64
      function pop1ComplexDim4Kindreal64(self) result(data)
         Complex(kind=real64), dimension(:, :, :, :), allocatable:: data
         type(StackComplexDim4Kindreal64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim4Kindreal64
      function pop2ComplexDim4Kindreal64(self, data) result(found)
         Logical:: found
         type(StackComplexDim4Kindreal64), intent(inout):: self
         Complex(kind=real64), dimension(:, :, :, :), allocatable, intent(out):: data
         type(StackNodeComplexDim4Kindreal64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim4Kindreal64
      impure elemental function sizeComplexDim4Kindreal64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim4Kindreal64), intent(in):: self
         type(StackNodeComplexDim4Kindreal64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim4Kindreal64
      impure elemental subroutine finalizeComplexDim4Kindreal64(self)
         type(StackComplexDim4Kindreal64), intent(inout):: self
         type(StackNodeComplexDim4Kindreal64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim4Kindreal64
      pure subroutine addComplexDim4Kindreal128(self, data)
         type(StackComplexDim4Kindreal128), intent(inout):: self
         Complex(kind=real128), dimension(:, :, :, :), intent(in):: data
         type(StackNodeComplexDim4Kindreal128), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim4Kindreal128
      function pop1ComplexDim4Kindreal128(self) result(data)
         Complex(kind=real128), dimension(:, :, :, :), allocatable:: data
         type(StackComplexDim4Kindreal128), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim4Kindreal128
      function pop2ComplexDim4Kindreal128(self, data) result(found)
         Logical:: found
         type(StackComplexDim4Kindreal128), intent(inout):: self
         Complex(kind=real128), dimension(:, :, :, :), allocatable, intent(out):: data
         type(StackNodeComplexDim4Kindreal128), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim4Kindreal128
      impure elemental function sizeComplexDim4Kindreal128(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim4Kindreal128), intent(in):: self
         type(StackNodeComplexDim4Kindreal128), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim4Kindreal128
      impure elemental subroutine finalizeComplexDim4Kindreal128(self)
         type(StackComplexDim4Kindreal128), intent(inout):: self
         type(StackNodeComplexDim4Kindreal128), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim4Kindreal128
      pure subroutine addComplexDim5Kindreal32(self, data)
         type(StackComplexDim5Kindreal32), intent(inout):: self
         Complex(kind=real32), dimension(:, :, :, :, :), intent(in):: data
         type(StackNodeComplexDim5Kindreal32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim5Kindreal32
      function pop1ComplexDim5Kindreal32(self) result(data)
         Complex(kind=real32), dimension(:, :, :, :, :), allocatable:: data
         type(StackComplexDim5Kindreal32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim5Kindreal32
      function pop2ComplexDim5Kindreal32(self, data) result(found)
         Logical:: found
         type(StackComplexDim5Kindreal32), intent(inout):: self
         Complex(kind=real32), dimension(:, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeComplexDim5Kindreal32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim5Kindreal32
      impure elemental function sizeComplexDim5Kindreal32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim5Kindreal32), intent(in):: self
         type(StackNodeComplexDim5Kindreal32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim5Kindreal32
      impure elemental subroutine finalizeComplexDim5Kindreal32(self)
         type(StackComplexDim5Kindreal32), intent(inout):: self
         type(StackNodeComplexDim5Kindreal32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim5Kindreal32
      pure subroutine addComplexDim5Kindreal64(self, data)
         type(StackComplexDim5Kindreal64), intent(inout):: self
         Complex(kind=real64), dimension(:, :, :, :, :), intent(in):: data
         type(StackNodeComplexDim5Kindreal64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim5Kindreal64
      function pop1ComplexDim5Kindreal64(self) result(data)
         Complex(kind=real64), dimension(:, :, :, :, :), allocatable:: data
         type(StackComplexDim5Kindreal64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim5Kindreal64
      function pop2ComplexDim5Kindreal64(self, data) result(found)
         Logical:: found
         type(StackComplexDim5Kindreal64), intent(inout):: self
         Complex(kind=real64), dimension(:, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeComplexDim5Kindreal64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim5Kindreal64
      impure elemental function sizeComplexDim5Kindreal64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim5Kindreal64), intent(in):: self
         type(StackNodeComplexDim5Kindreal64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim5Kindreal64
      impure elemental subroutine finalizeComplexDim5Kindreal64(self)
         type(StackComplexDim5Kindreal64), intent(inout):: self
         type(StackNodeComplexDim5Kindreal64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim5Kindreal64
      pure subroutine addComplexDim5Kindreal128(self, data)
         type(StackComplexDim5Kindreal128), intent(inout):: self
         Complex(kind=real128), dimension(:, :, :, :, :), intent(in):: data
         type(StackNodeComplexDim5Kindreal128), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim5Kindreal128
      function pop1ComplexDim5Kindreal128(self) result(data)
         Complex(kind=real128), dimension(:, :, :, :, :), allocatable:: data
         type(StackComplexDim5Kindreal128), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim5Kindreal128
      function pop2ComplexDim5Kindreal128(self, data) result(found)
         Logical:: found
         type(StackComplexDim5Kindreal128), intent(inout):: self
         Complex(kind=real128), dimension(:, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeComplexDim5Kindreal128), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim5Kindreal128
      impure elemental function sizeComplexDim5Kindreal128(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim5Kindreal128), intent(in):: self
         type(StackNodeComplexDim5Kindreal128), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim5Kindreal128
      impure elemental subroutine finalizeComplexDim5Kindreal128(self)
         type(StackComplexDim5Kindreal128), intent(inout):: self
         type(StackNodeComplexDim5Kindreal128), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim5Kindreal128
      pure subroutine addComplexDim6Kindreal32(self, data)
         type(StackComplexDim6Kindreal32), intent(inout):: self
         Complex(kind=real32), dimension(:, :, :, :, :, :), intent(in):: data
         type(StackNodeComplexDim6Kindreal32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim6Kindreal32
      function pop1ComplexDim6Kindreal32(self) result(data)
         Complex(kind=real32), dimension(:, :, :, :, :, :), allocatable:: data
         type(StackComplexDim6Kindreal32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim6Kindreal32
      function pop2ComplexDim6Kindreal32(self, data) result(found)
         Logical:: found
         type(StackComplexDim6Kindreal32), intent(inout):: self
         Complex(kind=real32), dimension(:, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeComplexDim6Kindreal32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim6Kindreal32
      impure elemental function sizeComplexDim6Kindreal32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim6Kindreal32), intent(in):: self
         type(StackNodeComplexDim6Kindreal32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim6Kindreal32
      impure elemental subroutine finalizeComplexDim6Kindreal32(self)
         type(StackComplexDim6Kindreal32), intent(inout):: self
         type(StackNodeComplexDim6Kindreal32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim6Kindreal32
      pure subroutine addComplexDim6Kindreal64(self, data)
         type(StackComplexDim6Kindreal64), intent(inout):: self
         Complex(kind=real64), dimension(:, :, :, :, :, :), intent(in):: data
         type(StackNodeComplexDim6Kindreal64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim6Kindreal64
      function pop1ComplexDim6Kindreal64(self) result(data)
         Complex(kind=real64), dimension(:, :, :, :, :, :), allocatable:: data
         type(StackComplexDim6Kindreal64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim6Kindreal64
      function pop2ComplexDim6Kindreal64(self, data) result(found)
         Logical:: found
         type(StackComplexDim6Kindreal64), intent(inout):: self
         Complex(kind=real64), dimension(:, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeComplexDim6Kindreal64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim6Kindreal64
      impure elemental function sizeComplexDim6Kindreal64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim6Kindreal64), intent(in):: self
         type(StackNodeComplexDim6Kindreal64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim6Kindreal64
      impure elemental subroutine finalizeComplexDim6Kindreal64(self)
         type(StackComplexDim6Kindreal64), intent(inout):: self
         type(StackNodeComplexDim6Kindreal64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim6Kindreal64
      pure subroutine addComplexDim6Kindreal128(self, data)
         type(StackComplexDim6Kindreal128), intent(inout):: self
         Complex(kind=real128), dimension(:, :, :, :, :, :), intent(in):: data
         type(StackNodeComplexDim6Kindreal128), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim6Kindreal128
      function pop1ComplexDim6Kindreal128(self) result(data)
         Complex(kind=real128), dimension(:, :, :, :, :, :), allocatable:: data
         type(StackComplexDim6Kindreal128), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim6Kindreal128
      function pop2ComplexDim6Kindreal128(self, data) result(found)
         Logical:: found
         type(StackComplexDim6Kindreal128), intent(inout):: self
         Complex(kind=real128), dimension(:, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeComplexDim6Kindreal128), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim6Kindreal128
      impure elemental function sizeComplexDim6Kindreal128(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim6Kindreal128), intent(in):: self
         type(StackNodeComplexDim6Kindreal128), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim6Kindreal128
      impure elemental subroutine finalizeComplexDim6Kindreal128(self)
         type(StackComplexDim6Kindreal128), intent(inout):: self
         type(StackNodeComplexDim6Kindreal128), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim6Kindreal128
      pure subroutine addComplexDim7Kindreal32(self, data)
         type(StackComplexDim7Kindreal32), intent(inout):: self
         Complex(kind=real32), dimension(:, :, :, :, :, :, :), intent(in):: data
         type(StackNodeComplexDim7Kindreal32), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim7Kindreal32
      function pop1ComplexDim7Kindreal32(self) result(data)
         Complex(kind=real32), dimension(:, :, :, :, :, :, :), allocatable:: data
         type(StackComplexDim7Kindreal32), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim7Kindreal32
      function pop2ComplexDim7Kindreal32(self, data) result(found)
         Logical:: found
         type(StackComplexDim7Kindreal32), intent(inout):: self
         Complex(kind=real32), dimension(:, :, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeComplexDim7Kindreal32), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim7Kindreal32
      impure elemental function sizeComplexDim7Kindreal32(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim7Kindreal32), intent(in):: self
         type(StackNodeComplexDim7Kindreal32), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim7Kindreal32
      impure elemental subroutine finalizeComplexDim7Kindreal32(self)
         type(StackComplexDim7Kindreal32), intent(inout):: self
         type(StackNodeComplexDim7Kindreal32), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim7Kindreal32
      pure subroutine addComplexDim7Kindreal64(self, data)
         type(StackComplexDim7Kindreal64), intent(inout):: self
         Complex(kind=real64), dimension(:, :, :, :, :, :, :), intent(in):: data
         type(StackNodeComplexDim7Kindreal64), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim7Kindreal64
      function pop1ComplexDim7Kindreal64(self) result(data)
         Complex(kind=real64), dimension(:, :, :, :, :, :, :), allocatable:: data
         type(StackComplexDim7Kindreal64), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim7Kindreal64
      function pop2ComplexDim7Kindreal64(self, data) result(found)
         Logical:: found
         type(StackComplexDim7Kindreal64), intent(inout):: self
         Complex(kind=real64), dimension(:, :, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeComplexDim7Kindreal64), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim7Kindreal64
      impure elemental function sizeComplexDim7Kindreal64(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim7Kindreal64), intent(in):: self
         type(StackNodeComplexDim7Kindreal64), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim7Kindreal64
      impure elemental subroutine finalizeComplexDim7Kindreal64(self)
         type(StackComplexDim7Kindreal64), intent(inout):: self
         type(StackNodeComplexDim7Kindreal64), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim7Kindreal64
      pure subroutine addComplexDim7Kindreal128(self, data)
         type(StackComplexDim7Kindreal128), intent(inout):: self
         Complex(kind=real128), dimension(:, :, :, :, :, :, :), intent(in):: data
         type(StackNodeComplexDim7Kindreal128), pointer:: node
         allocate(node)
         node%data = data
         node%prev => self%root
         self%root => node
      end subroutine addComplexDim7Kindreal128
      function pop1ComplexDim7Kindreal128(self) result(data)
         Complex(kind=real128), dimension(:, :, :, :, :, :, :), allocatable:: data
         type(StackComplexDim7Kindreal128), intent(inout):: self
         Logical:: found
         found = pop(self, data)
      end function pop1ComplexDim7Kindreal128
      function pop2ComplexDim7Kindreal128(self, data) result(found)
         Logical:: found
         type(StackComplexDim7Kindreal128), intent(inout):: self
         Complex(kind=real128), dimension(:, :, :, :, :, :, :), allocatable, intent(out):: data
         type(StackNodeComplexDim7Kindreal128), pointer:: tmp
         found = associated(self%root)
         if(found)then
            data = self%root%data
            tmp => self%root
            self%root => self%root%prev
            deallocate(tmp)
         end if
      end function pop2ComplexDim7Kindreal128
      impure elemental function sizeComplexDim7Kindreal128(self) result(ret)
         Integer(kind=int64):: ret
         type(StackComplexDim7Kindreal128), intent(in):: self
         type(StackNodeComplexDim7Kindreal128), pointer:: tmp
         ret = 0
         tmp => self%root
         do while(associated(tmp))
            tmp => tmp%prev
            ret = ret + 1
         end do
      end function sizeComplexDim7Kindreal128
      impure elemental subroutine finalizeComplexDim7Kindreal128(self)
         type(StackComplexDim7Kindreal128), intent(inout):: self
         type(StackNodeComplexDim7Kindreal128), pointer:: current, prev
         current => self%root
         do while(associated(current))
            prev => current%prev
            deallocate(current)
            current => prev
         end do
      end subroutine finalizeComplexDim7Kindreal128
end module stack_lib
