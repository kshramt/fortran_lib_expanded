program sac_lib_test
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   use, non_intrinsic:: sac_lib
   implicit none
   type(Sac):: wHead, wBody, wIo
   Real(kind = SAC_REAL_KIND), allocatable:: body(:)
   ! = head
   ! == float
   if(.not.(.not.is_delta_defined(wHead)))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 14, (".not.(.not.is_delta_defined(wHead))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call set_delta(wHead, 0.1)
   if(.not.(is_delta_defined(wHead)))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 16, (".not.(is_delta_defined(wHead))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(get_delta(wHead) == 0.1))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 17, (".not.(get_delta(wHead) == 0.1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call set_delta(wHead, FLOAT_UNDEFINED)
   if(.not.(.not.is_delta_defined(wHead)))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 19, (".not.(.not.is_delta_defined(wHead))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! == integer
   if(.not.(.not.is_npts_defined(wHead)))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 21, (".not.(.not.is_npts_defined(wHead))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call set_npts(wHead, 42)
   if(.not.(is_npts_defined(wHead)))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 23, (".not.(is_npts_defined(wHead))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(get_npts(wHead) == 42))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 24, (".not.(get_npts(wHead) == 42)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call set_npts(wHead, INTEGER_UNDEFINED)
   if(.not.(.not.is_npts_defined(wHead)))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 26, (".not.(.not.is_npts_defined(wHead))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! == enumerated
   if(.not.(.not.is_iftype_defined(wHead)))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 28, (".not.(.not.is_iftype_defined(wHead))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call set_iftype(wHead, 'itime')
   if(.not.(is_iftype_defined(wHead)))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 30, (".not.(is_iftype_defined(wHead))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(get_iftype(wHead) == 'itime'))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 31, (".not.(get_iftype(wHead) == 'itime')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! == logical
   call set_leven(wHead, .true.)
   if(.not.(is_leven_defined(wHead)))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 34, (".not.(is_leven_defined(wHead))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(get_leven(wHead)))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 35, (".not.(get_leven(wHead))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call set_leven(wHead, .false.)
   if(.not.(is_leven_defined(wHead)))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 37, (".not.(is_leven_defined(wHead))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(.not.get_leven(wHead)))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 38, (".not.(.not.get_leven(wHead))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! == long string
   if(.not.(.not.is_kevnm_defined(wHead)))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 40, (".not.(.not.is_kevnm_defined(wHead))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call set_kevnm(wHead, 'JMA/ERM')
   if(.not.(is_kevnm_defined(wHead)))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 42, (".not.(is_kevnm_defined(wHead))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(get_kevnm(wHead) == 'JMA/ERM'))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 43, (".not.(get_kevnm(wHead) == 'JMA/ERM')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call set_kevnm(wHead, STRING_UNDEFINED)
   if(.not.(.not.is_kevnm_defined(wHead)))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 45, (".not.(.not.is_kevnm_defined(wHead))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call set_kevnm(wHead, '0123456789abcdef')
   if(.not.(get_kevnm(wHead) == '0123456789abcdef'))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 47, (".not.(get_kevnm(wHead) == '0123456789abcdef')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! == short string
   if(.not.(.not.is_kstnm_defined(wHead)))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 49, (".not.(.not.is_kstnm_defined(wHead))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call set_kstnm(wHead, 'japan')
   if(.not.(is_kstnm_defined(wHead)))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 51, (".not.(is_kstnm_defined(wHead))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(get_kstnm(wHead) == 'japan'))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 52, (".not.(get_kstnm(wHead) == 'japan')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call set_kstnm(wHead, STRING_UNDEFINED)
   if(.not.(.not.is_kstnm_defined(wHead)))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 54, (".not.(.not.is_kstnm_defined(wHead))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   call set_kstnm(wHead, '12345678')
   if(.not.(get_kstnm(wHead) == '12345678'))then; write(ERROR_UNIT, *) "RAISE: ", "sac_lib_test.f90", " ", 56, (".not.(get_kstnm(wHead) == '12345678')"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   ! = body
   ! == itime
   call set_delta(wBody, 0.5)
   call set_data_itime(wBody, real([1, 2, 3, 4, 5, 6], kind = SAC_REAL_KIND))
   ! set_data, set_data_itime, get_data, get_data_itime
   ! == ixy
   ! == iamph
   ! == irlim
   ! == ixyz
   ! = read
   ! = write
   call set_iftype(wIo, 'itime') ! required
   call set_delta(wIo, 0.05) ! required
   call set_data(wIo, real([1, 2, 3, 4, 5, 6, 7])) ! npts should be larger than 5 (SAC's limitation).
   call dump(wIo, 'tmp.sac')
   call load(wIo, 'tmp.sac')
   call get_data(wIo, body)
   print*, body
   write(OUTPUT_UNIT, *) 'SUCCESS: ', "sac_lib_test.f90"
   stop
end program sac_lib_test
