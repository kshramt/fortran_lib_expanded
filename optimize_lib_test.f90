program main
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   use, intrinsic:: iso_fortran_env, only: int64, REAL64
   use, non_intrinsic:: comparable_lib, only: almost_equal
   use, non_intrinsic:: math_lib, only: rosenbrock_fgh
   use, non_intrinsic:: optimize_lib, only: nnls
   use, non_intrinsic:: optimize_lib, only: init, update, Linesearchstate0RealDim0KindREAL64, Linesearchstate1RealDim0KindREAL64, NewtonStateRealDim0KindREAL64
   implicit none
   Integer:: ix, iy
   Real(kind=real64):: x, y
  if(.not.(all(almost_equal(nnls(real(reshape([73, 87, 72, 80, 71, 74, 2, 89, 52, 46, 7, 71], shape=[4, 3]), kind=REAL64), real([49, 67, 68, 20], kind=REAL64)), [0.6495384364022547_REAL64, 0.0_REAL64, 0.0_REAL64]))))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib_test.f90", " ", 17, (".not.(all(almost_equal(nnls(real(reshape([73, 87, 72, 80, 71, 74, 2, 89, 52, 46, 7, 71], shape=[4, 3]), kind=REAL64), real([49, 67, 68, 20], kind=REAL64)), [0.6495384364022547_REAL64, 0.0_REAL64, 0.0_REAL64])))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(nnls(real(reshape([1, 1, 0, 1], shape=[2, 2]), kind=REAL64), real([1, 0], kind=REAL64)), [1.0/2, 0.0]))))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib_test.f90", " ", 18, (".not.(all(almost_equal(nnls(real(reshape([1, 1, 0, 1], shape=[2, 2]), kind=REAL64), real([1, 0], kind=REAL64)), [1.0/2, 0.0])))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
  if(.not.(test_line_search0(-3d0, 2d0, 1d1)))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib_test.f90", " ", 20, (".not.(test_line_search0(-3d0, 2d0, 1d1))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
  if(.not.(test_line_search0(-3d0, -2d0, 1d1)))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib_test.f90", " ", 21, (".not.(test_line_search0(-3d0, -2d0, 1d1))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
  if(.not.(test_line_search0(23d0, 2d0, 1d1)))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib_test.f90", " ", 22, (".not.(test_line_search0(23d0, 2d0, 1d1))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
  if(.not.(test_line_search0(23d0, -2d0, 1d1)))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib_test.f90", " ", 23, (".not.(test_line_search0(23d0, -2d0, 1d1))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
  if(.not.(test_line_search0(5d1, 15d-2, 1d1)))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib_test.f90", " ", 25, (".not.(test_line_search0(5d1, 15d-2, 1d1))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
  if(.not.(test_line_search0(5d1, -15d-2, 1d1)))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib_test.f90", " ", 26, (".not.(test_line_search0(5d1, -15d-2, 1d1))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
  if(.not.(test_line_search0(-3d1, 15d-2, 1d1)))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib_test.f90", " ", 27, (".not.(test_line_search0(-3d1, 15d-2, 1d1))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
  if(.not.(test_line_search0(-3d1, -15d-2, 1d1)))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib_test.f90", " ", 28, (".not.(test_line_search0(-3d1, -15d-2, 1d1))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
  if(.not.(test_line_search1(-3d0, 2d0, 1d1)))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib_test.f90", " ", 30, (".not.(test_line_search1(-3d0, 2d0, 1d1))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
  if(.not.(test_line_search1(-3d0, -2d0, 1d1)))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib_test.f90", " ", 31, (".not.(test_line_search1(-3d0, -2d0, 1d1))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
  if(.not.(test_line_search1(23d0, 2d0, 1d1)))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib_test.f90", " ", 32, (".not.(test_line_search1(23d0, 2d0, 1d1))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
  if(.not.(test_line_search1(23d0, -2d0, 1d1)))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib_test.f90", " ", 33, (".not.(test_line_search1(23d0, -2d0, 1d1))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
  if(.not.(test_line_search1(5d1, 15d-2, 1d1)))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib_test.f90", " ", 35, (".not.(test_line_search1(5d1, 15d-2, 1d1))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
  if(.not.(test_line_search1(5d1, -15d-2, 1d1)))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib_test.f90", " ", 36, (".not.(test_line_search1(5d1, -15d-2, 1d1))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
  if(.not.(test_line_search1(-3d1, 15d-2, 1d1)))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib_test.f90", " ", 37, (".not.(test_line_search1(-3d1, 15d-2, 1d1))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
  if(.not.(test_line_search1(-3d1, -15d-2, 1d1)))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib_test.f90", " ", 38, (".not.(test_line_search1(-3d1, -15d-2, 1d1))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
  do ix = -2, 5
     x = ix
     do iy = -2, 5
        y = iy
        if(.not.(test_newton([x, y], 1d-1)))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib_test.f90", " ", 44, (".not.(test_newton([x, y], 1d-1))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
     end do
  end do
   write(OUTPUT_UNIT, *) 'SUCCESS: ', "optimize_lib_test.f90"
   stop
contains
   function test_newton(x0, l) result(ret)
      Logical:: ret
      Real(kind=real64), intent(in):: x0(:), l
      Real(kind=kind(x0)):: x_best(size(x0)), f, f_best, g(size(x0)), H(size(x0), size(x0)), xtol
      Logical:: converge_x
      type(NewtonStateRealDim0KindREAL64):: s
      xtol = 1d-2
      call init(s, x0, l)
      x_best(:) = x0
      f_best = huge(f_best)
      do
         call rosenbrock_fgh(s%x, f, g, H)
         ! write(output_unit, *) s%is_convex, s%x, f, s%f_prev, g, H
         call update(s, f, g, H, 'u')
         converge_x = all(almost_equal(s%x, x_best, absolute=abs(xtol)/100)) .or. all(abs(g) < 1e-5)
         if(f < f_best)then
            x_best(:) = s%x
            f_best = f
         end if
         if(converge_x) exit
      end do
      write(output_unit, *) s%iter, x_best
      ret = all(almost_equal([1d0, 1d0], x_best, absolute=abs(xtol)))
   end function test_newton
   function test_line_search0(x0, dx, x_theoretical) result(ret)
      Logical:: ret
      Real(kind=real64), intent(in):: x0, dx, x_theoretical
      Real(kind=kind(x0)):: f, x, xl, xr, x_best, f_best, xtol
      Logical:: converge_x
      type(LineSearchState0RealDim0KindREAL64):: s
      ret = .true.
      xtol = 1e-2
      f_best = huge(f_best)
      x_best = huge(x_best)
      call init(s, dx)
      do
         x = x0 + s%x
         f = f1(x, x_theoretical)
         if(s%iter > 2)then
            xl = x0 + s%xl
            xr = x0 + s%xr
            ! write(output_unit, *) xl, xr, x, f1(xl, x_theoretical), f1(xr, x_theoretical), f
         END if
         call update(s, f)
         converge_x = almost_equal(x, x_best, absolute=abs(xtol)/100)
         if(f < f_best)then
            x_best = x
            f_best = f
         end if
         if(converge_x) exit
      end do
      write(output_unit, *) s%iter, x_best
      ret = ret .and. almost_equal(x_theoretical, x_best, absolute=abs(xtol))
      f_best = huge(f_best)
      x_best = huge(x_best)
      call init(s, dx)
      do
         x = x0 + s%x
         f = f2(x, x_theoretical)
         if(s%iter > 2)then
            xl = x0 + s%xl
            xr = x0 + s%xr
            ! write(output_unit, *) xl, xr, x, f2(xl, x_theoretical), f2(xr, x_theoretical), f
         end if
         call update(s, f)
         converge_x = almost_equal(x, x_best, absolute=abs(xtol)/100)
         if(f < f_best)then
            x_best = x
            f_best = f
         end if
         if(converge_x) exit
      end do
      write(output_unit, *) s%iter, x_best
      ret = ret .and. almost_equal(x_theoretical, x_best, absolute=abs(xtol))
   end function test_line_search0
   function test_line_search1(x0, dx, x_theoretical) result(ret)
      Logical:: ret
      Real(kind=real64), intent(in):: x0, dx, x_theoretical
      Real(kind=kind(x0)):: f, g, x, x_best, f_best, g_best, xtol
      Logical:: converge
      type(LineSearchState1RealDim0KindREAL64):: s
      ret = .true.
      xtol = 1e-2
      f_best = huge(f_best)
      x_best = huge(x_best)
      call init(s, dx)
      do
         x = x0 + s%x
         f = f1(x, x_theoretical)
         g = g1(x, x_theoretical)
         ! write(output_unit, *) x, s%x_best, s%x, s%f_best, f, s%g_best, g, s%is_convex, s%is_within
         call update(s, f, g)
         converge = abs(g) < 1e-2 .and. almost_equal(x, x_best, absolute=abs(xtol)/100)
         if(f < f_best)then
            x_best = x
            f_best = f
            g_best = g
         end if
         if(s%iter > 50) stop
         if(converge) exit
      end do
      write(output_unit, *) s%iter, x_best
      ret = ret .and. almost_equal(x_theoretical, x_best, absolute=abs(xtol))
      f_best = huge(f_best)
      x_best = huge(x_best)
      call init(s, dx)
      do
         x = x0 + s%x
         f = f2(x, x_theoretical)
         g = g2(x, x_theoretical)
         ! write(output_unit, *) x, s%x_best, s%x, s%f_best, f, s%g_best, g, s%is_convex, s%is_within
         call update(s, f, g)
         converge = abs(g) < 1e-2 .and. almost_equal(x, x_best, absolute=abs(xtol)/100)
         if(f < f_best)then
            x_best = x
            f_best = f
            g_best = g
         end if
         if(converge) exit
      end do
      write(output_unit, *) s%iter, x_best
      ret = ret .and. almost_equal(x_theoretical, x_best, absolute=abs(xtol))
   end function test_line_search1
   function f1(x, x_theoretical) result(y)
      Real(kind=real64), intent(in):: x, x_theoretical
      Real(kind=kind(x)):: y
      Real(kind=kind(x)):: x_
      x_ = x - x_theoretical
      y = -1/(1 + x_**2)
   end function f1
   function f2(x, x_theoretical) result(y)
      Real(kind=real64), intent(in):: x, x_theoretical
      Real(kind=kind(x)):: y
      Real(kind=kind(x)):: x_
      x_ = x - x_theoretical
      y = x_**2 - 7*cos(x_)
   end function f2
   function g1(x, x_theoretical) result(y)
      Real(kind=real64), intent(in):: x, x_theoretical
      Real(kind=kind(x)):: y
      Real(kind=kind(x)):: x_
      x_ = x - x_theoretical
      y = 2*x_/(1 + x_**2)**2
   end function g1
   function g2(x, x_theoretical) result(y)
      Real(kind=real64), intent(in):: x, x_theoretical
      Real(kind=kind(x)):: y
      Real(kind=kind(x)):: x_
      x_ = x - x_theoretical
      y = 2*x_ + 7*sin(x_)
   end function g2
end program main
