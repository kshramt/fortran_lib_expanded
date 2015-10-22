program main
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: input_unit, output_unit, error_unit
   use, intrinsic:: iso_fortran_env, only: int64, real64
   use, non_intrinsic:: etas_lib, only: intensity_etas
   implicit none
   Real(kind=real64), allocatable:: ts(:), ms(:)
   Real(kind=real64):: mu, K, c, alpha, p
   Real(kind=real64):: normalize_interval, m_for_K
   Real(kind=real64):: t
   Integer(kind=int64):: i, n
   Integer:: ios
   read(input_unit, *) normalize_interval
   read(input_unit, *) m_for_K
   read(input_unit, *) mu, K, c, alpha, p
   read(input_unit, *) n
   allocate(ts(n))
   allocate(ms(n))
   do i = 1, n
      read(input_unit, *) ts(i), ms(i)
   end do
   ms(:) = ms - m_for_K
   do
      read(input_unit, *, iostat=ios) t
      if(ios /= 0) exit
      write(output_unit, '(g0, " ", g0)') t, intensity_etas(t, normalize_interval, mu, K, c, alpha, p, ts, ms)
   end do
   stop
end program main
