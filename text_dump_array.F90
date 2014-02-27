

# include "utils.h"
! Text dump arbitrary 1-D or 2-D array (except for Character array) stored by io_lib/dump
program main
   USE_UTILS_H
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   use, non_intrinsic:: character_lib, only: operator(+)
   use, non_intrinsic:: io_lib, only: ArrayMeta
   use, non_intrinsic:: io_lib, only: load, load_meta, get_column_format_string, LEN_FORMAT_STRING_MAX

   implicit none

     Logical, dimension(:), allocatable:: arrayLogicalDim1
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
     Logical, dimension(:, :), allocatable:: arrayLogicalDim2
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
   Character(len=LEN_FORMAT_STRING_MAX):: format

   if(command_argument_count() /= 1) call usage_and_exit()
   call get_command_argument(1, value=arrayDir, status=status)
   ASSERT(status == 0)

   if(arrayDir == '-h' .or. arrayDir == '--help') call usage_and_exit()
   call load_meta(meta, trim(arrayDir))

   select case(meta%dataType)
     case('LogicalDim1')
        call load(arrayLogicalDim1, trim(arrayDir))
        do ALL_OF(i, arrayLogicalDim1, 1)
           write(OUTPUT_UNIT, *) arrayLogicalDim1(i)
        end do
     case('IntegerDim1KindINT8')
        call load(arrayIntegerDim1KindINT8, trim(arrayDir))
        do ALL_OF(i, arrayIntegerDim1KindINT8, 1)
           write(OUTPUT_UNIT, *) arrayIntegerDim1KindINT8(i)
        end do
     case('IntegerDim1KindINT16')
        call load(arrayIntegerDim1KindINT16, trim(arrayDir))
        do ALL_OF(i, arrayIntegerDim1KindINT16, 1)
           write(OUTPUT_UNIT, *) arrayIntegerDim1KindINT16(i)
        end do
     case('IntegerDim1KindINT32')
        call load(arrayIntegerDim1KindINT32, trim(arrayDir))
        do ALL_OF(i, arrayIntegerDim1KindINT32, 1)
           write(OUTPUT_UNIT, *) arrayIntegerDim1KindINT32(i)
        end do
     case('IntegerDim1KindINT64')
        call load(arrayIntegerDim1KindINT64, trim(arrayDir))
        do ALL_OF(i, arrayIntegerDim1KindINT64, 1)
           write(OUTPUT_UNIT, *) arrayIntegerDim1KindINT64(i)
        end do
     case('RealDim1KindREAL32')
        call load(arrayRealDim1KindREAL32, trim(arrayDir))
        do ALL_OF(i, arrayRealDim1KindREAL32, 1)
           write(OUTPUT_UNIT, *) arrayRealDim1KindREAL32(i)
        end do
     case('RealDim1KindREAL64')
        call load(arrayRealDim1KindREAL64, trim(arrayDir))
        do ALL_OF(i, arrayRealDim1KindREAL64, 1)
           write(OUTPUT_UNIT, *) arrayRealDim1KindREAL64(i)
        end do
     case('RealDim1KindREAL128')
        call load(arrayRealDim1KindREAL128, trim(arrayDir))
        do ALL_OF(i, arrayRealDim1KindREAL128, 1)
           write(OUTPUT_UNIT, *) arrayRealDim1KindREAL128(i)
        end do
     case('ComplexDim1KindREAL32')
        call load(arrayComplexDim1KindREAL32, trim(arrayDir))
        do ALL_OF(i, arrayComplexDim1KindREAL32, 1)
           write(OUTPUT_UNIT, *) arrayComplexDim1KindREAL32(i)
        end do
     case('ComplexDim1KindREAL64')
        call load(arrayComplexDim1KindREAL64, trim(arrayDir))
        do ALL_OF(i, arrayComplexDim1KindREAL64, 1)
           write(OUTPUT_UNIT, *) arrayComplexDim1KindREAL64(i)
        end do
     case('ComplexDim1KindREAL128')
        call load(arrayComplexDim1KindREAL128, trim(arrayDir))
        do ALL_OF(i, arrayComplexDim1KindREAL128, 1)
           write(OUTPUT_UNIT, *) arrayComplexDim1KindREAL128(i)
        end do
     case('LogicalDim2')
        call load(arrayLogicalDim2, trim(arrayDir))
        format = get_column_format_string(arrayLogicalDim2(1, 1), size(arrayLogicalDim2, 2))
        do ALL_OF(i, arrayLogicalDim2, 1)
           write(OUTPUT_UNIT, trim(format)) arrayLogicalDim2(i, :)
        end do
     case('IntegerDim2KindINT8')
        call load(arrayIntegerDim2KindINT8, trim(arrayDir))
        format = get_column_format_string(arrayIntegerDim2KindINT8(1, 1), size(arrayIntegerDim2KindINT8, 2))
        do ALL_OF(i, arrayIntegerDim2KindINT8, 1)
           write(OUTPUT_UNIT, trim(format)) arrayIntegerDim2KindINT8(i, :)
        end do
     case('IntegerDim2KindINT16')
        call load(arrayIntegerDim2KindINT16, trim(arrayDir))
        format = get_column_format_string(arrayIntegerDim2KindINT16(1, 1), size(arrayIntegerDim2KindINT16, 2))
        do ALL_OF(i, arrayIntegerDim2KindINT16, 1)
           write(OUTPUT_UNIT, trim(format)) arrayIntegerDim2KindINT16(i, :)
        end do
     case('IntegerDim2KindINT32')
        call load(arrayIntegerDim2KindINT32, trim(arrayDir))
        format = get_column_format_string(arrayIntegerDim2KindINT32(1, 1), size(arrayIntegerDim2KindINT32, 2))
        do ALL_OF(i, arrayIntegerDim2KindINT32, 1)
           write(OUTPUT_UNIT, trim(format)) arrayIntegerDim2KindINT32(i, :)
        end do
     case('IntegerDim2KindINT64')
        call load(arrayIntegerDim2KindINT64, trim(arrayDir))
        format = get_column_format_string(arrayIntegerDim2KindINT64(1, 1), size(arrayIntegerDim2KindINT64, 2))
        do ALL_OF(i, arrayIntegerDim2KindINT64, 1)
           write(OUTPUT_UNIT, trim(format)) arrayIntegerDim2KindINT64(i, :)
        end do
     case('RealDim2KindREAL32')
        call load(arrayRealDim2KindREAL32, trim(arrayDir))
        format = get_column_format_string(arrayRealDim2KindREAL32(1, 1), size(arrayRealDim2KindREAL32, 2))
        do ALL_OF(i, arrayRealDim2KindREAL32, 1)
           write(OUTPUT_UNIT, trim(format)) arrayRealDim2KindREAL32(i, :)
        end do
     case('RealDim2KindREAL64')
        call load(arrayRealDim2KindREAL64, trim(arrayDir))
        format = get_column_format_string(arrayRealDim2KindREAL64(1, 1), size(arrayRealDim2KindREAL64, 2))
        do ALL_OF(i, arrayRealDim2KindREAL64, 1)
           write(OUTPUT_UNIT, trim(format)) arrayRealDim2KindREAL64(i, :)
        end do
     case('RealDim2KindREAL128')
        call load(arrayRealDim2KindREAL128, trim(arrayDir))
        format = get_column_format_string(arrayRealDim2KindREAL128(1, 1), size(arrayRealDim2KindREAL128, 2))
        do ALL_OF(i, arrayRealDim2KindREAL128, 1)
           write(OUTPUT_UNIT, trim(format)) arrayRealDim2KindREAL128(i, :)
        end do
     case('ComplexDim2KindREAL32')
        call load(arrayComplexDim2KindREAL32, trim(arrayDir))
        format = get_column_format_string(arrayComplexDim2KindREAL32(1, 1), size(arrayComplexDim2KindREAL32, 2))
        do ALL_OF(i, arrayComplexDim2KindREAL32, 1)
           write(OUTPUT_UNIT, trim(format)) arrayComplexDim2KindREAL32(i, :)
        end do
     case('ComplexDim2KindREAL64')
        call load(arrayComplexDim2KindREAL64, trim(arrayDir))
        format = get_column_format_string(arrayComplexDim2KindREAL64(1, 1), size(arrayComplexDim2KindREAL64, 2))
        do ALL_OF(i, arrayComplexDim2KindREAL64, 1)
           write(OUTPUT_UNIT, trim(format)) arrayComplexDim2KindREAL64(i, :)
        end do
     case('ComplexDim2KindREAL128')
        call load(arrayComplexDim2KindREAL128, trim(arrayDir))
        format = get_column_format_string(arrayComplexDim2KindREAL128(1, 1), size(arrayComplexDim2KindREAL128, 2))
        do ALL_OF(i, arrayComplexDim2KindREAL128, 1)
           write(OUTPUT_UNIT, trim(format)) arrayComplexDim2KindREAL128(i, :)
        end do
   case default
      RAISE('Unsupported data type: ' + trim(meta%dataType))
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
