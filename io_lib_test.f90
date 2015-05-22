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
   isEqual = get_column_format_string(.true., 0) == '()'
   if(.not.(isEqual))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 22, (".not.(isEqual)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isEqual = get_column_format_string(.false., 1) == '(g0)'
   if(.not.(isEqual))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 24, (".not.(isEqual)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isEqual = get_column_format_string(1, 2) == '(g0, *("	", g0))'
   if(.not.(isEqual))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 26, (".not.(isEqual)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isEqual = get_column_format_string(1, 3) == '(g0, *("	", g0))'
   if(.not.(isEqual))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 28, (".not.(isEqual)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isEqual = get_column_format_string((1.2, 2.3), 0) == '()'
   if(.not.(isEqual))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 30, (".not.(isEqual)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isEqual = get_column_format_string((1.2, 2.3), 1) == '("(", g0, ", ", g0, ")")'
   if(.not.(isEqual))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 32, (".not.(isEqual)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isEqual = get_column_format_string((1.2, 2.3), 2) == '("(", g0, ", ", g0, ")", *("	", "(", g0, ", ", g0, ")"))'
   if(.not.(isEqual))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 34, (".not.(isEqual)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   isEqual = get_column_format_string((1.2, 2.3), 3) == '("(", g0, ", ", g0, ")", *("	", "(", g0, ", ", g0, ")"))'
   if(.not.(isEqual))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 36, (".not.(isEqual)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call mktemp(io)
   inquire(io, action = action, named = isNamed, form = form)
   if(.not.(action == 'READWRITE'))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 40, (".not.(action == 'READWRITE')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(form == 'FORMATTED'))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 41, (".not.(form == 'FORMATTED')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(isNamed))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 42, (".not.(isNamed)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   close(io)
   call mktemp(io, form = 'unformatted', file = fileMktemp)
   inquire(io, action = action, name = fileInquire, form = form, named = isNamed)
   if(.not.(form == 'UNFORMATTED'))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 47, (".not.(form == 'UNFORMATTED')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(action == 'READWRITE'))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 48, (".not.(action == 'READWRITE')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(fileMktemp == fileInquire))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 49, (".not.(fileMktemp == fileInquire)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(isNamed))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 50, (".not.(isNamed)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   close(io)
   ! = load, dump
   ! == Real 1D
   xs = [1, 2, 3, 4, 5]
   xsOriginal = xs
   call dump(xs, 'xs.array', 'Real 1D test', 'Multiple descriptions.')
   if(.not.(all(almost_equal(xs, xsOriginal))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 58, (".not.(all(almost_equal(xs, xsOriginal)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(load_version('xs.array') == IO_LIB_VERSION))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 59, (".not.(load_version('xs.array') == IO_LIB_VERSION)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call load_meta(meta, 'xs.array')
   if(.not.(meta%dataType == 'RealDim1KindREAL64'))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 61, (".not.(meta%dataType == 'RealDim1KindREAL64')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(meta%dim == 1))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 62, (".not.(meta%dim == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(meta%sizes == shape(xs))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 63, (".not.(all(meta%sizes == shape(xs)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call load(xs, 'xs.array')
   if(.not.(all(almost_equal(xs, xsOriginal))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 65, (".not.(all(almost_equal(xs, xsOriginal)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! == Integer 2D
   ns = reshape(int([1, 2, 3, 4, 5, 6], kind = kind(ns)), [2, 3])
   nsOriginal = ns
   call dump(ns, 'ns.array')
   if(.not.(all(almost_equal(ns, nsOriginal))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 71, (".not.(all(almost_equal(ns, nsOriginal)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call load(ns, 'ns.array')
   if(.not.(all(almost_equal(ns, nsOriginal))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib_test.f90", " ", 73, (".not.(all(almost_equal(ns, nsOriginal)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   write (OUTPUT_UNIT, *) 'SUCCESS: ', "io_lib_test.f90"
   stop
end program io_lib_test
