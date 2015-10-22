! Text dump arbitrary 1-D or 2-D array (except for Character array) stored by io_lib/dump
program main
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: int8, int16, int32, int64, real32, real64, real128
   use, intrinsic:: iso_fortran_env, only: input_unit, output_unit, error_unit, int64
   use, non_intrinsic:: character_lib, only: operator(+), str
   use, non_intrinsic:: io_lib, only: ArrayMetaV3
   use, non_intrinsic:: io_lib, only: load, load_version, load_meta_v_3, get_column_format_string
   implicit none
     Logical(kind=int8), dimension(:), allocatable:: arrayLogicalDim1Kindint8
     Logical(kind=int16), dimension(:), allocatable:: arrayLogicalDim1Kindint16
     Logical(kind=int32), dimension(:), allocatable:: arrayLogicalDim1Kindint32
     Logical(kind=int64), dimension(:), allocatable:: arrayLogicalDim1Kindint64
     Integer(kind=int8), dimension(:), allocatable:: arrayIntegerDim1Kindint8
     Integer(kind=int16), dimension(:), allocatable:: arrayIntegerDim1Kindint16
     Integer(kind=int32), dimension(:), allocatable:: arrayIntegerDim1Kindint32
     Integer(kind=int64), dimension(:), allocatable:: arrayIntegerDim1Kindint64
     Real(kind=real32), dimension(:), allocatable:: arrayRealDim1Kindreal32
     Real(kind=real64), dimension(:), allocatable:: arrayRealDim1Kindreal64
     Real(kind=real128), dimension(:), allocatable:: arrayRealDim1Kindreal128
     Complex(kind=real32), dimension(:), allocatable:: arrayComplexDim1Kindreal32
     Complex(kind=real64), dimension(:), allocatable:: arrayComplexDim1Kindreal64
     Complex(kind=real128), dimension(:), allocatable:: arrayComplexDim1Kindreal128
     Logical(kind=int8), dimension(:, :), allocatable:: arrayLogicalDim2Kindint8
     Logical(kind=int16), dimension(:, :), allocatable:: arrayLogicalDim2Kindint16
     Logical(kind=int32), dimension(:, :), allocatable:: arrayLogicalDim2Kindint32
     Logical(kind=int64), dimension(:, :), allocatable:: arrayLogicalDim2Kindint64
     Integer(kind=int8), dimension(:, :), allocatable:: arrayIntegerDim2Kindint8
     Integer(kind=int16), dimension(:, :), allocatable:: arrayIntegerDim2Kindint16
     Integer(kind=int32), dimension(:, :), allocatable:: arrayIntegerDim2Kindint32
     Integer(kind=int64), dimension(:, :), allocatable:: arrayIntegerDim2Kindint64
     Real(kind=real32), dimension(:, :), allocatable:: arrayRealDim2Kindreal32
     Real(kind=real64), dimension(:, :), allocatable:: arrayRealDim2Kindreal64
     Real(kind=real128), dimension(:, :), allocatable:: arrayRealDim2Kindreal128
     Complex(kind=real32), dimension(:, :), allocatable:: arrayComplexDim2Kindreal32
     Complex(kind=real64), dimension(:, :), allocatable:: arrayComplexDim2Kindreal64
     Complex(kind=real128), dimension(:, :), allocatable:: arrayComplexDim2Kindreal128
   Character(len=2**10):: dir
   type(ArrayMetaV3):: meta_v_3
   Integer(kind=int64):: version
   Integer:: i
   Integer:: status
   Character(len=:), allocatable:: form
   if(command_argument_count() /= 1) call usage_and_exit()
   call get_command_argument(1, value=dir, status=status)
   if(.not.(status == 0))then; write(error_unit, *) "ERROR: ", "text_dump_array.f90", " ", 81, (".not.(status == 0)"); error stop; end if
   if(dir == '-h' .or. dir == '--help') call usage_and_exit()
   version = load_version(trim(dir))
   select case(version)
   case(3)
      call load_meta_v_3(meta_v_3, trim(dir))
      if(.false.)then
         else if(meta_v_3%type_ == 'Logical' .and. meta_v_3%kind_ == int8 .and. meta_v_3%dim == 1)then
            call load(arrayLogicalDim1Kindint8, trim(dir))
               do i = lbound(arrayLogicalDim1Kindint8, dim=1, kind=kind(i)), ubound(arrayLogicalDim1Kindint8, dim=1, kind=kind(i))
                  write(output_unit, '(g0)') arrayLogicalDim1Kindint8(i)
               end do
         else if(meta_v_3%type_ == 'Logical' .and. meta_v_3%kind_ == int16 .and. meta_v_3%dim == 1)then
            call load(arrayLogicalDim1Kindint16, trim(dir))
               do i = lbound(arrayLogicalDim1Kindint16, dim=1, kind=kind(i)), ubound(arrayLogicalDim1Kindint16, dim=1, kind=kind(i))
                  write(output_unit, '(g0)') arrayLogicalDim1Kindint16(i)
               end do
         else if(meta_v_3%type_ == 'Logical' .and. meta_v_3%kind_ == int32 .and. meta_v_3%dim == 1)then
            call load(arrayLogicalDim1Kindint32, trim(dir))
               do i = lbound(arrayLogicalDim1Kindint32, dim=1, kind=kind(i)), ubound(arrayLogicalDim1Kindint32, dim=1, kind=kind(i))
                  write(output_unit, '(g0)') arrayLogicalDim1Kindint32(i)
               end do
         else if(meta_v_3%type_ == 'Logical' .and. meta_v_3%kind_ == int64 .and. meta_v_3%dim == 1)then
            call load(arrayLogicalDim1Kindint64, trim(dir))
               do i = lbound(arrayLogicalDim1Kindint64, dim=1, kind=kind(i)), ubound(arrayLogicalDim1Kindint64, dim=1, kind=kind(i))
                  write(output_unit, '(g0)') arrayLogicalDim1Kindint64(i)
               end do
         else if(meta_v_3%type_ == 'Integer' .and. meta_v_3%kind_ == int8 .and. meta_v_3%dim == 1)then
            call load(arrayIntegerDim1Kindint8, trim(dir))
               do i = lbound(arrayIntegerDim1Kindint8, dim=1, kind=kind(i)), ubound(arrayIntegerDim1Kindint8, dim=1, kind=kind(i))
                  write(output_unit, '(g0)') arrayIntegerDim1Kindint8(i)
               end do
         else if(meta_v_3%type_ == 'Integer' .and. meta_v_3%kind_ == int16 .and. meta_v_3%dim == 1)then
            call load(arrayIntegerDim1Kindint16, trim(dir))
               do i = lbound(arrayIntegerDim1Kindint16, dim=1, kind=kind(i)), ubound(arrayIntegerDim1Kindint16, dim=1, kind=kind(i))
                  write(output_unit, '(g0)') arrayIntegerDim1Kindint16(i)
               end do
         else if(meta_v_3%type_ == 'Integer' .and. meta_v_3%kind_ == int32 .and. meta_v_3%dim == 1)then
            call load(arrayIntegerDim1Kindint32, trim(dir))
               do i = lbound(arrayIntegerDim1Kindint32, dim=1, kind=kind(i)), ubound(arrayIntegerDim1Kindint32, dim=1, kind=kind(i))
                  write(output_unit, '(g0)') arrayIntegerDim1Kindint32(i)
               end do
         else if(meta_v_3%type_ == 'Integer' .and. meta_v_3%kind_ == int64 .and. meta_v_3%dim == 1)then
            call load(arrayIntegerDim1Kindint64, trim(dir))
               do i = lbound(arrayIntegerDim1Kindint64, dim=1, kind=kind(i)), ubound(arrayIntegerDim1Kindint64, dim=1, kind=kind(i))
                  write(output_unit, '(g0)') arrayIntegerDim1Kindint64(i)
               end do
         else if(meta_v_3%type_ == 'Real' .and. meta_v_3%kind_ == real32 .and. meta_v_3%dim == 1)then
            call load(arrayRealDim1Kindreal32, trim(dir))
               do i = lbound(arrayRealDim1Kindreal32, dim=1, kind=kind(i)), ubound(arrayRealDim1Kindreal32, dim=1, kind=kind(i))
                  write(output_unit, '(g0)') arrayRealDim1Kindreal32(i)
               end do
         else if(meta_v_3%type_ == 'Real' .and. meta_v_3%kind_ == real64 .and. meta_v_3%dim == 1)then
            call load(arrayRealDim1Kindreal64, trim(dir))
               do i = lbound(arrayRealDim1Kindreal64, dim=1, kind=kind(i)), ubound(arrayRealDim1Kindreal64, dim=1, kind=kind(i))
                  write(output_unit, '(g0)') arrayRealDim1Kindreal64(i)
               end do
         else if(meta_v_3%type_ == 'Real' .and. meta_v_3%kind_ == real128 .and. meta_v_3%dim == 1)then
            call load(arrayRealDim1Kindreal128, trim(dir))
               do i = lbound(arrayRealDim1Kindreal128, dim=1, kind=kind(i)), ubound(arrayRealDim1Kindreal128, dim=1, kind=kind(i))
                  write(output_unit, '(g0)') arrayRealDim1Kindreal128(i)
               end do
         else if(meta_v_3%type_ == 'Complex' .and. meta_v_3%kind_ == real32 .and. meta_v_3%dim == 1)then
            call load(arrayComplexDim1Kindreal32, trim(dir))
               do i = lbound(arrayComplexDim1Kindreal32, dim=1, kind=kind(i)), ubound(arrayComplexDim1Kindreal32, dim=1, kind=kind(i))
                  write(output_unit, '(g0)') arrayComplexDim1Kindreal32(i)
               end do
         else if(meta_v_3%type_ == 'Complex' .and. meta_v_3%kind_ == real64 .and. meta_v_3%dim == 1)then
            call load(arrayComplexDim1Kindreal64, trim(dir))
               do i = lbound(arrayComplexDim1Kindreal64, dim=1, kind=kind(i)), ubound(arrayComplexDim1Kindreal64, dim=1, kind=kind(i))
                  write(output_unit, '(g0)') arrayComplexDim1Kindreal64(i)
               end do
         else if(meta_v_3%type_ == 'Complex' .and. meta_v_3%kind_ == real128 .and. meta_v_3%dim == 1)then
            call load(arrayComplexDim1Kindreal128, trim(dir))
               do i = lbound(arrayComplexDim1Kindreal128, dim=1, kind=kind(i)), ubound(arrayComplexDim1Kindreal128, dim=1, kind=kind(i))
                  write(output_unit, '(g0)') arrayComplexDim1Kindreal128(i)
               end do
         else if(meta_v_3%type_ == 'Logical' .and. meta_v_3%kind_ == int8 .and. meta_v_3%dim == 2)then
            call load(arrayLogicalDim2Kindint8, trim(dir))
               form = get_column_format_string(arrayLogicalDim2Kindint8(1, 1), size(arrayLogicalDim2Kindint8, 2, kind=int64))
               do i = lbound(arrayLogicalDim2Kindint8, dim=1, kind=kind(i)), ubound(arrayLogicalDim2Kindint8, dim=1, kind=kind(i))
                  write(output_unit, form) arrayLogicalDim2Kindint8(i, :)
               end do
         else if(meta_v_3%type_ == 'Logical' .and. meta_v_3%kind_ == int16 .and. meta_v_3%dim == 2)then
            call load(arrayLogicalDim2Kindint16, trim(dir))
               form = get_column_format_string(arrayLogicalDim2Kindint16(1, 1), size(arrayLogicalDim2Kindint16, 2, kind=int64))
               do i = lbound(arrayLogicalDim2Kindint16, dim=1, kind=kind(i)), ubound(arrayLogicalDim2Kindint16, dim=1, kind=kind(i))
                  write(output_unit, form) arrayLogicalDim2Kindint16(i, :)
               end do
         else if(meta_v_3%type_ == 'Logical' .and. meta_v_3%kind_ == int32 .and. meta_v_3%dim == 2)then
            call load(arrayLogicalDim2Kindint32, trim(dir))
               form = get_column_format_string(arrayLogicalDim2Kindint32(1, 1), size(arrayLogicalDim2Kindint32, 2, kind=int64))
               do i = lbound(arrayLogicalDim2Kindint32, dim=1, kind=kind(i)), ubound(arrayLogicalDim2Kindint32, dim=1, kind=kind(i))
                  write(output_unit, form) arrayLogicalDim2Kindint32(i, :)
               end do
         else if(meta_v_3%type_ == 'Logical' .and. meta_v_3%kind_ == int64 .and. meta_v_3%dim == 2)then
            call load(arrayLogicalDim2Kindint64, trim(dir))
               form = get_column_format_string(arrayLogicalDim2Kindint64(1, 1), size(arrayLogicalDim2Kindint64, 2, kind=int64))
               do i = lbound(arrayLogicalDim2Kindint64, dim=1, kind=kind(i)), ubound(arrayLogicalDim2Kindint64, dim=1, kind=kind(i))
                  write(output_unit, form) arrayLogicalDim2Kindint64(i, :)
               end do
         else if(meta_v_3%type_ == 'Integer' .and. meta_v_3%kind_ == int8 .and. meta_v_3%dim == 2)then
            call load(arrayIntegerDim2Kindint8, trim(dir))
               form = get_column_format_string(arrayIntegerDim2Kindint8(1, 1), size(arrayIntegerDim2Kindint8, 2, kind=int64))
               do i = lbound(arrayIntegerDim2Kindint8, dim=1, kind=kind(i)), ubound(arrayIntegerDim2Kindint8, dim=1, kind=kind(i))
                  write(output_unit, form) arrayIntegerDim2Kindint8(i, :)
               end do
         else if(meta_v_3%type_ == 'Integer' .and. meta_v_3%kind_ == int16 .and. meta_v_3%dim == 2)then
            call load(arrayIntegerDim2Kindint16, trim(dir))
               form = get_column_format_string(arrayIntegerDim2Kindint16(1, 1), size(arrayIntegerDim2Kindint16, 2, kind=int64))
               do i = lbound(arrayIntegerDim2Kindint16, dim=1, kind=kind(i)), ubound(arrayIntegerDim2Kindint16, dim=1, kind=kind(i))
                  write(output_unit, form) arrayIntegerDim2Kindint16(i, :)
               end do
         else if(meta_v_3%type_ == 'Integer' .and. meta_v_3%kind_ == int32 .and. meta_v_3%dim == 2)then
            call load(arrayIntegerDim2Kindint32, trim(dir))
               form = get_column_format_string(arrayIntegerDim2Kindint32(1, 1), size(arrayIntegerDim2Kindint32, 2, kind=int64))
               do i = lbound(arrayIntegerDim2Kindint32, dim=1, kind=kind(i)), ubound(arrayIntegerDim2Kindint32, dim=1, kind=kind(i))
                  write(output_unit, form) arrayIntegerDim2Kindint32(i, :)
               end do
         else if(meta_v_3%type_ == 'Integer' .and. meta_v_3%kind_ == int64 .and. meta_v_3%dim == 2)then
            call load(arrayIntegerDim2Kindint64, trim(dir))
               form = get_column_format_string(arrayIntegerDim2Kindint64(1, 1), size(arrayIntegerDim2Kindint64, 2, kind=int64))
               do i = lbound(arrayIntegerDim2Kindint64, dim=1, kind=kind(i)), ubound(arrayIntegerDim2Kindint64, dim=1, kind=kind(i))
                  write(output_unit, form) arrayIntegerDim2Kindint64(i, :)
               end do
         else if(meta_v_3%type_ == 'Real' .and. meta_v_3%kind_ == real32 .and. meta_v_3%dim == 2)then
            call load(arrayRealDim2Kindreal32, trim(dir))
               form = get_column_format_string(arrayRealDim2Kindreal32(1, 1), size(arrayRealDim2Kindreal32, 2, kind=int64))
               do i = lbound(arrayRealDim2Kindreal32, dim=1, kind=kind(i)), ubound(arrayRealDim2Kindreal32, dim=1, kind=kind(i))
                  write(output_unit, form) arrayRealDim2Kindreal32(i, :)
               end do
         else if(meta_v_3%type_ == 'Real' .and. meta_v_3%kind_ == real64 .and. meta_v_3%dim == 2)then
            call load(arrayRealDim2Kindreal64, trim(dir))
               form = get_column_format_string(arrayRealDim2Kindreal64(1, 1), size(arrayRealDim2Kindreal64, 2, kind=int64))
               do i = lbound(arrayRealDim2Kindreal64, dim=1, kind=kind(i)), ubound(arrayRealDim2Kindreal64, dim=1, kind=kind(i))
                  write(output_unit, form) arrayRealDim2Kindreal64(i, :)
               end do
         else if(meta_v_3%type_ == 'Real' .and. meta_v_3%kind_ == real128 .and. meta_v_3%dim == 2)then
            call load(arrayRealDim2Kindreal128, trim(dir))
               form = get_column_format_string(arrayRealDim2Kindreal128(1, 1), size(arrayRealDim2Kindreal128, 2, kind=int64))
               do i = lbound(arrayRealDim2Kindreal128, dim=1, kind=kind(i)), ubound(arrayRealDim2Kindreal128, dim=1, kind=kind(i))
                  write(output_unit, form) arrayRealDim2Kindreal128(i, :)
               end do
         else if(meta_v_3%type_ == 'Complex' .and. meta_v_3%kind_ == real32 .and. meta_v_3%dim == 2)then
            call load(arrayComplexDim2Kindreal32, trim(dir))
               form = get_column_format_string(arrayComplexDim2Kindreal32(1, 1), size(arrayComplexDim2Kindreal32, 2, kind=int64))
               do i = lbound(arrayComplexDim2Kindreal32, dim=1, kind=kind(i)), ubound(arrayComplexDim2Kindreal32, dim=1, kind=kind(i))
                  write(output_unit, form) arrayComplexDim2Kindreal32(i, :)
               end do
         else if(meta_v_3%type_ == 'Complex' .and. meta_v_3%kind_ == real64 .and. meta_v_3%dim == 2)then
            call load(arrayComplexDim2Kindreal64, trim(dir))
               form = get_column_format_string(arrayComplexDim2Kindreal64(1, 1), size(arrayComplexDim2Kindreal64, 2, kind=int64))
               do i = lbound(arrayComplexDim2Kindreal64, dim=1, kind=kind(i)), ubound(arrayComplexDim2Kindreal64, dim=1, kind=kind(i))
                  write(output_unit, form) arrayComplexDim2Kindreal64(i, :)
               end do
         else if(meta_v_3%type_ == 'Complex' .and. meta_v_3%kind_ == real128 .and. meta_v_3%dim == 2)then
            call load(arrayComplexDim2Kindreal128, trim(dir))
               form = get_column_format_string(arrayComplexDim2Kindreal128(1, 1), size(arrayComplexDim2Kindreal128, 2, kind=int64))
               do i = lbound(arrayComplexDim2Kindreal128, dim=1, kind=kind(i)), ubound(arrayComplexDim2Kindreal128, dim=1, kind=kind(i))
                  write(output_unit, form) arrayComplexDim2Kindreal128(i, :)
               end do
      else
         write(error_unit, *) "ERROR: ", "text_dump_array.f90", " ", 330, ('Unsupported data type: ' + str(meta_v_3%type_) + ' ' + str(meta_v_3%kind_) + ' ' + str(meta_v_3%dim)); error stop
      end if
   case default
      write(error_unit, *) "ERROR: ", "text_dump_array.f90", " ", 333, ('Unsupported version: ' + str(version)); error stop
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
