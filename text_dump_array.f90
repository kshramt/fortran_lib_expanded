! Text dump arbitrary 1-D or 2-D array (except for Character array) stored by io_lib/dump
program main
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT, int64
   use, non_intrinsic:: character_lib, only: operator(+)
   use, non_intrinsic:: io_lib, only: ArrayMeta
   use, non_intrinsic:: io_lib, only: load, load_meta, get_column_format_string
   implicit none
     Logical(kind=INT8), dimension(:), allocatable:: arrayLogicalDim1KindINT8
     Logical(kind=INT16), dimension(:), allocatable:: arrayLogicalDim1KindINT16
     Logical(kind=INT32), dimension(:), allocatable:: arrayLogicalDim1KindINT32
     Logical(kind=INT64), dimension(:), allocatable:: arrayLogicalDim1KindINT64
     Integer(kind=INT8), dimension(:), allocatable:: arrayIntegerDim1KindINT8
     Integer(kind=INT16), dimension(:), allocatable:: arrayIntegerDim1KindINT16
     Integer(kind=INT32), dimension(:), allocatable:: arrayIntegerDim1KindINT32
     Integer(kind=INT64), dimension(:), allocatable:: arrayIntegerDim1KindINT64
     Real(kind=REAL32), dimension(:), allocatable:: arrayRealDim1KindREAL32
     Real(kind=REAL64), dimension(:), allocatable:: arrayRealDim1KindREAL64
     Real(kind=REAL128), dimension(:), allocatable:: arrayRealDim1KindREAL128
     Complex(kind=REAL32), dimension(:), allocatable:: arrayComplexDim1KindREAL32
     Complex(kind=REAL64), dimension(:), allocatable:: arrayComplexDim1KindREAL64
     Complex(kind=REAL128), dimension(:), allocatable:: arrayComplexDim1KindREAL128
     Logical(kind=INT8), dimension(:, :), allocatable:: arrayLogicalDim2KindINT8
     Logical(kind=INT16), dimension(:, :), allocatable:: arrayLogicalDim2KindINT16
     Logical(kind=INT32), dimension(:, :), allocatable:: arrayLogicalDim2KindINT32
     Logical(kind=INT64), dimension(:, :), allocatable:: arrayLogicalDim2KindINT64
     Integer(kind=INT8), dimension(:, :), allocatable:: arrayIntegerDim2KindINT8
     Integer(kind=INT16), dimension(:, :), allocatable:: arrayIntegerDim2KindINT16
     Integer(kind=INT32), dimension(:, :), allocatable:: arrayIntegerDim2KindINT32
     Integer(kind=INT64), dimension(:, :), allocatable:: arrayIntegerDim2KindINT64
     Real(kind=REAL32), dimension(:, :), allocatable:: arrayRealDim2KindREAL32
     Real(kind=REAL64), dimension(:, :), allocatable:: arrayRealDim2KindREAL64
     Real(kind=REAL128), dimension(:, :), allocatable:: arrayRealDim2KindREAL128
     Complex(kind=REAL32), dimension(:, :), allocatable:: arrayComplexDim2KindREAL32
     Complex(kind=REAL64), dimension(:, :), allocatable:: arrayComplexDim2KindREAL64
     Complex(kind=REAL128), dimension(:, :), allocatable:: arrayComplexDim2KindREAL128
   Character(len=2**10):: arrayDir
   type(ArrayMeta):: meta
   Integer:: i
   Integer:: status
   Character(len=:), allocatable:: form
   if(command_argument_count() /= 1) call usage_and_exit()
   call get_command_argument(1, value=arrayDir, status=status)
   if(.not.(status == 0))then; write(ERROR_UNIT, *) "RAISE: ", "text_dump_array.f90", " ", 51, (".not.(status == 0)"); error stop; end if
   if(arrayDir == '-h' .or. arrayDir == '--help') call usage_and_exit()
   call load_meta(meta, trim(arrayDir))
   select case(meta%dataType)
     case('LogicalDim1KindINT8')
        call load(arrayLogicalDim1KindINT8, trim(arrayDir))
        form = get_column_format_string(arrayLogicalDim1KindINT8(1), 1)
        do i = lbound(arrayLogicalDim1KindINT8, dim=1, kind=kind(i)), ubound(arrayLogicalDim1KindINT8, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayLogicalDim1KindINT8(i)
        end do
     case('LogicalDim1KindINT16')
        call load(arrayLogicalDim1KindINT16, trim(arrayDir))
        form = get_column_format_string(arrayLogicalDim1KindINT16(1), 1)
        do i = lbound(arrayLogicalDim1KindINT16, dim=1, kind=kind(i)), ubound(arrayLogicalDim1KindINT16, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayLogicalDim1KindINT16(i)
        end do
     case('LogicalDim1KindINT32')
        call load(arrayLogicalDim1KindINT32, trim(arrayDir))
        form = get_column_format_string(arrayLogicalDim1KindINT32(1), 1)
        do i = lbound(arrayLogicalDim1KindINT32, dim=1, kind=kind(i)), ubound(arrayLogicalDim1KindINT32, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayLogicalDim1KindINT32(i)
        end do
     case('LogicalDim1KindINT64')
        call load(arrayLogicalDim1KindINT64, trim(arrayDir))
        form = get_column_format_string(arrayLogicalDim1KindINT64(1), 1)
        do i = lbound(arrayLogicalDim1KindINT64, dim=1, kind=kind(i)), ubound(arrayLogicalDim1KindINT64, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayLogicalDim1KindINT64(i)
        end do
     case('IntegerDim1KindINT8')
        call load(arrayIntegerDim1KindINT8, trim(arrayDir))
        form = get_column_format_string(arrayIntegerDim1KindINT8(1), 1)
        do i = lbound(arrayIntegerDim1KindINT8, dim=1, kind=kind(i)), ubound(arrayIntegerDim1KindINT8, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayIntegerDim1KindINT8(i)
        end do
     case('IntegerDim1KindINT16')
        call load(arrayIntegerDim1KindINT16, trim(arrayDir))
        form = get_column_format_string(arrayIntegerDim1KindINT16(1), 1)
        do i = lbound(arrayIntegerDim1KindINT16, dim=1, kind=kind(i)), ubound(arrayIntegerDim1KindINT16, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayIntegerDim1KindINT16(i)
        end do
     case('IntegerDim1KindINT32')
        call load(arrayIntegerDim1KindINT32, trim(arrayDir))
        form = get_column_format_string(arrayIntegerDim1KindINT32(1), 1)
        do i = lbound(arrayIntegerDim1KindINT32, dim=1, kind=kind(i)), ubound(arrayIntegerDim1KindINT32, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayIntegerDim1KindINT32(i)
        end do
     case('IntegerDim1KindINT64')
        call load(arrayIntegerDim1KindINT64, trim(arrayDir))
        form = get_column_format_string(arrayIntegerDim1KindINT64(1), 1)
        do i = lbound(arrayIntegerDim1KindINT64, dim=1, kind=kind(i)), ubound(arrayIntegerDim1KindINT64, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayIntegerDim1KindINT64(i)
        end do
     case('RealDim1KindREAL32')
        call load(arrayRealDim1KindREAL32, trim(arrayDir))
        form = get_column_format_string(arrayRealDim1KindREAL32(1), 1)
        do i = lbound(arrayRealDim1KindREAL32, dim=1, kind=kind(i)), ubound(arrayRealDim1KindREAL32, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayRealDim1KindREAL32(i)
        end do
     case('RealDim1KindREAL64')
        call load(arrayRealDim1KindREAL64, trim(arrayDir))
        form = get_column_format_string(arrayRealDim1KindREAL64(1), 1)
        do i = lbound(arrayRealDim1KindREAL64, dim=1, kind=kind(i)), ubound(arrayRealDim1KindREAL64, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayRealDim1KindREAL64(i)
        end do
     case('RealDim1KindREAL128')
        call load(arrayRealDim1KindREAL128, trim(arrayDir))
        form = get_column_format_string(arrayRealDim1KindREAL128(1), 1)
        do i = lbound(arrayRealDim1KindREAL128, dim=1, kind=kind(i)), ubound(arrayRealDim1KindREAL128, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayRealDim1KindREAL128(i)
        end do
     case('ComplexDim1KindREAL32')
        call load(arrayComplexDim1KindREAL32, trim(arrayDir))
        form = get_column_format_string(arrayComplexDim1KindREAL32(1), 1)
        do i = lbound(arrayComplexDim1KindREAL32, dim=1, kind=kind(i)), ubound(arrayComplexDim1KindREAL32, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayComplexDim1KindREAL32(i)
        end do
     case('ComplexDim1KindREAL64')
        call load(arrayComplexDim1KindREAL64, trim(arrayDir))
        form = get_column_format_string(arrayComplexDim1KindREAL64(1), 1)
        do i = lbound(arrayComplexDim1KindREAL64, dim=1, kind=kind(i)), ubound(arrayComplexDim1KindREAL64, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayComplexDim1KindREAL64(i)
        end do
     case('ComplexDim1KindREAL128')
        call load(arrayComplexDim1KindREAL128, trim(arrayDir))
        form = get_column_format_string(arrayComplexDim1KindREAL128(1), 1)
        do i = lbound(arrayComplexDim1KindREAL128, dim=1, kind=kind(i)), ubound(arrayComplexDim1KindREAL128, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayComplexDim1KindREAL128(i)
        end do
     case('LogicalDim2KindINT8')
        call load(arrayLogicalDim2KindINT8, trim(arrayDir))
        form = get_column_format_string(arrayLogicalDim2KindINT8(1, 1), size(arrayLogicalDim2KindINT8, 2, kind=int64))
        do i = lbound(arrayLogicalDim2KindINT8, dim=1, kind=kind(i)), ubound(arrayLogicalDim2KindINT8, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayLogicalDim2KindINT8(i, :)
        end do
     case('LogicalDim2KindINT16')
        call load(arrayLogicalDim2KindINT16, trim(arrayDir))
        form = get_column_format_string(arrayLogicalDim2KindINT16(1, 1), size(arrayLogicalDim2KindINT16, 2, kind=int64))
        do i = lbound(arrayLogicalDim2KindINT16, dim=1, kind=kind(i)), ubound(arrayLogicalDim2KindINT16, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayLogicalDim2KindINT16(i, :)
        end do
     case('LogicalDim2KindINT32')
        call load(arrayLogicalDim2KindINT32, trim(arrayDir))
        form = get_column_format_string(arrayLogicalDim2KindINT32(1, 1), size(arrayLogicalDim2KindINT32, 2, kind=int64))
        do i = lbound(arrayLogicalDim2KindINT32, dim=1, kind=kind(i)), ubound(arrayLogicalDim2KindINT32, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayLogicalDim2KindINT32(i, :)
        end do
     case('LogicalDim2KindINT64')
        call load(arrayLogicalDim2KindINT64, trim(arrayDir))
        form = get_column_format_string(arrayLogicalDim2KindINT64(1, 1), size(arrayLogicalDim2KindINT64, 2, kind=int64))
        do i = lbound(arrayLogicalDim2KindINT64, dim=1, kind=kind(i)), ubound(arrayLogicalDim2KindINT64, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayLogicalDim2KindINT64(i, :)
        end do
     case('IntegerDim2KindINT8')
        call load(arrayIntegerDim2KindINT8, trim(arrayDir))
        form = get_column_format_string(arrayIntegerDim2KindINT8(1, 1), size(arrayIntegerDim2KindINT8, 2, kind=int64))
        do i = lbound(arrayIntegerDim2KindINT8, dim=1, kind=kind(i)), ubound(arrayIntegerDim2KindINT8, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayIntegerDim2KindINT8(i, :)
        end do
     case('IntegerDim2KindINT16')
        call load(arrayIntegerDim2KindINT16, trim(arrayDir))
        form = get_column_format_string(arrayIntegerDim2KindINT16(1, 1), size(arrayIntegerDim2KindINT16, 2, kind=int64))
        do i = lbound(arrayIntegerDim2KindINT16, dim=1, kind=kind(i)), ubound(arrayIntegerDim2KindINT16, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayIntegerDim2KindINT16(i, :)
        end do
     case('IntegerDim2KindINT32')
        call load(arrayIntegerDim2KindINT32, trim(arrayDir))
        form = get_column_format_string(arrayIntegerDim2KindINT32(1, 1), size(arrayIntegerDim2KindINT32, 2, kind=int64))
        do i = lbound(arrayIntegerDim2KindINT32, dim=1, kind=kind(i)), ubound(arrayIntegerDim2KindINT32, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayIntegerDim2KindINT32(i, :)
        end do
     case('IntegerDim2KindINT64')
        call load(arrayIntegerDim2KindINT64, trim(arrayDir))
        form = get_column_format_string(arrayIntegerDim2KindINT64(1, 1), size(arrayIntegerDim2KindINT64, 2, kind=int64))
        do i = lbound(arrayIntegerDim2KindINT64, dim=1, kind=kind(i)), ubound(arrayIntegerDim2KindINT64, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayIntegerDim2KindINT64(i, :)
        end do
     case('RealDim2KindREAL32')
        call load(arrayRealDim2KindREAL32, trim(arrayDir))
        form = get_column_format_string(arrayRealDim2KindREAL32(1, 1), size(arrayRealDim2KindREAL32, 2, kind=int64))
        do i = lbound(arrayRealDim2KindREAL32, dim=1, kind=kind(i)), ubound(arrayRealDim2KindREAL32, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayRealDim2KindREAL32(i, :)
        end do
     case('RealDim2KindREAL64')
        call load(arrayRealDim2KindREAL64, trim(arrayDir))
        form = get_column_format_string(arrayRealDim2KindREAL64(1, 1), size(arrayRealDim2KindREAL64, 2, kind=int64))
        do i = lbound(arrayRealDim2KindREAL64, dim=1, kind=kind(i)), ubound(arrayRealDim2KindREAL64, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayRealDim2KindREAL64(i, :)
        end do
     case('RealDim2KindREAL128')
        call load(arrayRealDim2KindREAL128, trim(arrayDir))
        form = get_column_format_string(arrayRealDim2KindREAL128(1, 1), size(arrayRealDim2KindREAL128, 2, kind=int64))
        do i = lbound(arrayRealDim2KindREAL128, dim=1, kind=kind(i)), ubound(arrayRealDim2KindREAL128, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayRealDim2KindREAL128(i, :)
        end do
     case('ComplexDim2KindREAL32')
        call load(arrayComplexDim2KindREAL32, trim(arrayDir))
        form = get_column_format_string(arrayComplexDim2KindREAL32(1, 1), size(arrayComplexDim2KindREAL32, 2, kind=int64))
        do i = lbound(arrayComplexDim2KindREAL32, dim=1, kind=kind(i)), ubound(arrayComplexDim2KindREAL32, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayComplexDim2KindREAL32(i, :)
        end do
     case('ComplexDim2KindREAL64')
        call load(arrayComplexDim2KindREAL64, trim(arrayDir))
        form = get_column_format_string(arrayComplexDim2KindREAL64(1, 1), size(arrayComplexDim2KindREAL64, 2, kind=int64))
        do i = lbound(arrayComplexDim2KindREAL64, dim=1, kind=kind(i)), ubound(arrayComplexDim2KindREAL64, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayComplexDim2KindREAL64(i, :)
        end do
     case('ComplexDim2KindREAL128')
        call load(arrayComplexDim2KindREAL128, trim(arrayDir))
        form = get_column_format_string(arrayComplexDim2KindREAL128(1, 1), size(arrayComplexDim2KindREAL128, 2, kind=int64))
        do i = lbound(arrayComplexDim2KindREAL128, dim=1, kind=kind(i)), ubound(arrayComplexDim2KindREAL128, dim=1, kind=kind(i))
           write(OUTPUT_UNIT, form) arrayComplexDim2KindREAL128(i, :)
        end do
   case default
      write(ERROR_UNIT, *) "RAISE: ", "text_dump_array.f90", " ", 226, ('Unsupported data type: ' + trim(meta%dataType)); error stop
   end select
   stop
contains
   subroutine usage_and_exit()
      Character(len=2**10):: programName
      call get_command_argument(0, value=programName)
      write(ERROR_UNIT, *) trim(programName), ' ', 'ARRAY_DIR'
      error stop
   end subroutine usage_and_exit
end program main
