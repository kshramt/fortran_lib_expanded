program io_lib_test
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: input_unit, output_unit, error_unit, real64, int8
   use, non_intrinsic:: io_lib, io_lib_version => version
   use, non_intrinsic:: comparable_lib, only: almost_equal
   use, non_intrinsic:: character_lib, only: operator(+)
   implicit none
   Real(kind=real64), allocatable:: xs(:), xsOriginal(:)
   Integer(kind=int8), allocatable:: ns(:, :), nsOriginal(:, :)
   Integer:: io
   Character(len = len('readwrite') + 1):: action
   Character(len = 2**10):: form, fileMktemp, fileInquire
   Logical:: isNamed, isEqual
   type(ArrayMetaV3):: meta
   isEqual = get_column_format_string(.true., 0) == '()'
   if(.not.(isEqual))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 20, (".not.(isEqual)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isEqual = get_column_format_string(.false., 1) == '(g0)'
   if(.not.(isEqual))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 22, (".not.(isEqual)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isEqual = get_column_format_string(1, 2) == '(g0, *(" ", g0))'
   if(.not.(isEqual))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 24, (".not.(isEqual)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isEqual = get_column_format_string(1, 3) == '(g0, *(" ", g0))'
   if(.not.(isEqual))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 26, (".not.(isEqual)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isEqual = get_column_format_string((1.2, 2.3), 0) == '()'
   if(.not.(isEqual))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 28, (".not.(isEqual)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isEqual = get_column_format_string((1.2, 2.3), 1) == '("(", g0, ", ", g0, ")")'
   if(.not.(isEqual))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 30, (".not.(isEqual)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isEqual = get_column_format_string((1.2, 2.3), 2) == '("(", g0, ", ", g0, ")", *(" ", "(", g0, ", ", g0, ")"))'
   if(.not.(isEqual))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 32, (".not.(isEqual)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   isEqual = get_column_format_string((1.2, 2.3), 3) == '("(", g0, ", ", g0, ")", *(" ", "(", g0, ", ", g0, ")"))'
   if(.not.(isEqual))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 34, (".not.(isEqual)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   call mktemp(io)
   inquire(io, action = action, named = isNamed, form = form)
   if(.not.(action == 'READWRITE'))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 38, (".not.(action == 'READWRITE')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(form == 'FORMATTED'))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 39, (".not.(form == 'FORMATTED')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(isNamed))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 40, (".not.(isNamed)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   close(io)
   call mktemp(io, form = 'unformatted', file = fileMktemp)
   inquire(io, action = action, name = fileInquire, form = form, named = isNamed)
   if(.not.(form == 'UNFORMATTED'))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 45, (".not.(form == 'UNFORMATTED')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(action == 'READWRITE'))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 46, (".not.(action == 'READWRITE')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(fileMktemp == fileInquire))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 47, (".not.(fileMktemp == fileInquire)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(isNamed))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 48, (".not.(isNamed)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   close(io)
   ! = load, dump
   ! == Real 1D
   xs = [1, 2, 3, 4, 5]
   xsOriginal = xs
   call dump(xs, 'xs.array', 'Real 1D test', 'Multiple descriptions.')
   if(.not.(all(almost_equal(xs, xsOriginal))))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 56, (".not.(all(almost_equal(xs, xsOriginal)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(load_version('xs.array') == io_lib_version))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 57, (".not.(load_version('xs.array') == io_lib_version)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   call load_meta_v_3(meta, 'xs.array')
   if(.not.(meta%type_ == 'Real'))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 59, (".not.(meta%type_ == 'Real')"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(meta%kind_ == real64))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 60, (".not.(meta%kind_ == real64)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(meta%dim == 1))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 61, (".not.(meta%dim == 1)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(meta%sizes == shape(xs))))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 62, (".not.(all(meta%sizes == shape(xs)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   call load(xs, 'xs.array')
   if(.not.(all(almost_equal(xs, xsOriginal))))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 64, (".not.(all(almost_equal(xs, xsOriginal)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! == Integer 2D
   ns = reshape(int([1, 2, 3, 4, 5, 6], kind = kind(ns)), [2, 3])
   nsOriginal = ns
   call dump(ns, 'ns.array')
   if(.not.(all(almost_equal(ns, nsOriginal))))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 70, (".not.(all(almost_equal(ns, nsOriginal)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   call load(ns, 'ns.array')
   if(.not.(all(almost_equal(ns, nsOriginal))))then; write(error_unit, *) "ERROR: ", "io_lib_test.f90", " ", 72, (".not.(all(almost_equal(ns, nsOriginal)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   write (OUTPUT_UNIT, *) 'SUCCESS: ', "io_lib_test.f90"
   stop
end program io_lib_test
