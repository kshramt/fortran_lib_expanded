program io_lib_test
   use, intrinsic:: iso_fortran_env, only: &
      INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT, &
      REAL64, INT8
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, non_intrinsic:: io_lib, IO_LIB_VERSION => VERSION
   use, non_intrinsic:: comparable_lib, only: almost_equal
   use, non_intrinsic:: character_lib, only: operator(+)
   implicit none
   Real(kind = REAL64), allocatable:: xs(:), xsOriginal(:)
   Integer(kind = INT8), allocatable:: ns(:, :), nsOriginal(:, :)
   Integer:: io
   Character(len = len('readwrite') + 1):: action
   Character(len = 2**10):: form, fileMktemp, fileInquire
   Logical:: isNamed, isEqual
   type(ArrayMeta):: meta
   if(.not.(get_column_format_string(.true., 2) == '(2(1x, l1))'))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 21, (".not.(get_column_format_string(.true., 2) == '(2(1x, l1))')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(get_column_format_string(.false., 10) == '(10(1x, l1))'))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 22, (".not.(get_column_format_string(.false., 10) == '(10(1x, l1))')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(get_column_format_string(1, 2) == '(2(1x, i11))'))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 23, (".not.(get_column_format_string(1, 2) == '(2(1x, i11))')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(get_column_format_string(1, 10) == '(10(1x, i11))'))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 24, (".not.(get_column_format_string(1, 10) == '(10(1x, i11))')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(get_column_format_string(1.0, 1) == '(1(1x, es13.7))'))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 25, (".not.(get_column_format_string(1.0, 1) == '(1(1x, es13.7))')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(get_column_format_string(1.0, 2) == '(2(1x, es13.7))'))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 26, (".not.(get_column_format_string(1.0, 2) == '(2(1x, es13.7))')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(get_column_format_string(1.0, 10) == '(10(1x, es13.7))'))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 27, (".not.(get_column_format_string(1.0, 10) == '(10(1x, es13.7))')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isEqual = get_column_format_string((1.2, 2.3), 2) == '(2(1x, "(", es13.7, ",", es13.7, ")"))'
   if(.not.(isEqual))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 29, (".not.(isEqual)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isEqual = get_column_format_string((1.2, 2.3), 10) == '(10(1x, "(", es13.7, ",", es13.7, ")"))'
   if(.not.(isEqual))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 31, (".not.(isEqual)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call mktemp(io)
   inquire(io, action = action, named = isNamed, form = form)
   if(.not.(action == 'READWRITE'))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 35, (".not.(action == 'READWRITE')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(form == 'FORMATTED'))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 36, (".not.(form == 'FORMATTED')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(isNamed))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 37, (".not.(isNamed)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   close(io)
   call mktemp(io, form = 'unformatted', file = fileMktemp)
   inquire(io, action = action, name = fileInquire, form = form, named = isNamed)
   if(.not.(form == 'UNFORMATTED'))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 42, (".not.(form == 'UNFORMATTED')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(action == 'READWRITE'))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 43, (".not.(action == 'READWRITE')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(fileMktemp == fileInquire))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 44, (".not.(fileMktemp == fileInquire)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(isNamed))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 45, (".not.(isNamed)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   close(io)
   ! = load, dump
   ! == Real 1D
   xs = [1, 2, 3, 4, 5]
   xsOriginal = xs
   call dump(xs, 'xs.array', 'Real 1D test', 'Multiple descriptions.')
   if(.not.(all(almost_equal(xs, xsOriginal))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 53, (".not.(all(almost_equal(xs, xsOriginal)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(load_version('xs.array') == IO_LIB_VERSION))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 54, (".not.(load_version('xs.array') == IO_LIB_VERSION)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call load_meta(meta, 'xs.array')
   if(.not.(meta%dataType == 'RealDim1KindREAL64'))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 56, (".not.(meta%dataType == 'RealDim1KindREAL64')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(meta%dim == 1))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 57, (".not.(meta%dim == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(meta%sizes == shape(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 58, (".not.(all(meta%sizes == shape(xs)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call load(xs, 'xs.array')
   if(.not.(all(almost_equal(xs, xsOriginal))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 60, (".not.(all(almost_equal(xs, xsOriginal)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! == Integer 2D
   ns = reshape(int([1, 2, 3, 4, 5, 6], kind = kind(ns)), [2, 3])
   nsOriginal = ns
   call dump(ns, 'ns.array')
   if(.not.(all(almost_equal(ns, nsOriginal))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 66, (".not.(all(almost_equal(ns, nsOriginal)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call load(ns, 'ns.array')
   if(.not.(all(almost_equal(ns, nsOriginal))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 68, (".not.(all(almost_equal(ns, nsOriginal)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   write (OUTPUT_UNIT, *) 'SUCCESS: ', "io_lib_test.f90"
   stop
end program io_lib_test
