program main
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   use, intrinsic:: iso_fortran_env, only: int64, REAL64
   use, non_intrinsic:: comparable_lib, only: almost_equal
   use, non_intrinsic:: math_lib, only: rosenbrock_fgh
   use, non_intrinsic:: optimize_lib, only: nnls
   use, non_intrinsic:: optimize_lib, only: init, update, Linesearchstate64_0, Linesearchstate64_1, NewtonState64, BoundNewtonState64
   use, non_intrinsic:: ad_lib
   use, non_intrinsic:: optimize_lib, only: combinations, combination
   implicit none
   Integer:: ix, iy
   Real(kind=real64):: x, y
   if(.not.(all(reshape([1, 2, 3], [1, 3]) == combinations(int([1, 2, 3], kind=int64), 1_int64))))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 19, (".not.(all(reshape([1, 2, 3], [1, 3]) == combinations(int([1, 2, 3], kind=int64), 1_int64)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(reshape([1, 2, 1, 3, 2, 3], [2, 3]) == combinations(int([1, 2, 3], kind=int64), 2_int64))))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 20, (".not.(all(reshape([1, 2, 1, 3, 2, 3], [2, 3]) == combinations(int([1, 2, 3], kind=int64), 2_int64)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(reshape([1, 2, 3], [3, 1]) == combinations(int([1, 2, 3], kind=int64), 3_int64))))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 21, (".not.(all(reshape([1, 2, 3], [3, 1]) == combinations(int([1, 2, 3], kind=int64), 3_int64)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(nnls(real(reshape([73, 87, 72, 80, 71, 74, 2, 89, 52, 46, 7, 71], shape=[4, 3]), kind=REAL64), real([49, 67, 68, 20], kind=REAL64)), [0.6495384364022547_REAL64, 0.0_REAL64, 0.0_REAL64]))))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 23, (".not.(all(almost_equal(nnls(real(reshape([73, 87, 72, 80, 71, 74, 2, 89, 52, 46, 7, 71], shape=[4, 3]), kind=REAL64), real([49, 67, 68, 20], kind=REAL64)), [0.6495384364022547_REAL64, 0.0_REAL64, 0.0_REAL64])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(nnls(real(reshape([1, 1, 0, 1], shape=[2, 2]), kind=REAL64), real([1, 0], kind=REAL64)), [1.0/2, 0.0]))))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 24, (".not.(all(almost_equal(nnls(real(reshape([1, 1, 0, 1], shape=[2, 2]), kind=REAL64), real([1, 0], kind=REAL64)), [1.0/2, 0.0])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_line_search0(-3d0, 2d0, 1d1)))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 26, (".not.(test_line_search0(-3d0, 2d0, 1d1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_line_search0(-3d0, -2d0, 1d1)))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 27, (".not.(test_line_search0(-3d0, -2d0, 1d1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_line_search0(23d0, 2d0, 1d1)))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 28, (".not.(test_line_search0(23d0, 2d0, 1d1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_line_search0(23d0, -2d0, 1d1)))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 29, (".not.(test_line_search0(23d0, -2d0, 1d1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_line_search0(5d1, 15d-2, 1d1)))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 31, (".not.(test_line_search0(5d1, 15d-2, 1d1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_line_search0(5d1, -15d-2, 1d1)))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 32, (".not.(test_line_search0(5d1, -15d-2, 1d1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_line_search0(-3d1, 15d-2, 1d1)))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 33, (".not.(test_line_search0(-3d1, 15d-2, 1d1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_line_search0(-3d1, -15d-2, 1d1)))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 34, (".not.(test_line_search0(-3d1, -15d-2, 1d1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_line_search1(-3d0, 2d0, 1d1)))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 36, (".not.(test_line_search1(-3d0, 2d0, 1d1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_line_search1(-3d0, -2d0, 1d1)))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 37, (".not.(test_line_search1(-3d0, -2d0, 1d1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_line_search1(23d0, 2d0, 1d1)))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 38, (".not.(test_line_search1(23d0, 2d0, 1d1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_line_search1(23d0, -2d0, 1d1)))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 39, (".not.(test_line_search1(23d0, -2d0, 1d1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_line_search1(5d1, 15d-2, 1d1)))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 41, (".not.(test_line_search1(5d1, 15d-2, 1d1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_line_search1(5d1, -15d-2, 1d1)))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 42, (".not.(test_line_search1(5d1, -15d-2, 1d1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_line_search1(-3d1, 15d-2, 1d1)))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 43, (".not.(test_line_search1(-3d1, 15d-2, 1d1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_line_search1(-3d1, -15d-2, 1d1)))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 44, (".not.(test_line_search1(-3d1, -15d-2, 1d1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   do ix = -2, 5
      x = ix
      do iy = -2, 5
         y = iy
         if(.not.(test_newton([x, y], 1d-1)))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 50, (".not.(test_newton([x, y], 1d-1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
         if(.not.(test_bound_newton_2([x, y], 1d-1)))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 51, (".not.(test_bound_newton_2([x, y], 1d-1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
      end do
   end do
   write(error_unit, *) 'BoundNewton'
   if(.not.(test_bound_newton([0d0, 0d0], [-2d0, -2d0], [2d0, 2d0])))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 55, (".not.(test_bound_newton([0d0, 0d0], [-2d0, -2d0], [2d0, 2d0]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_bound_newton([-1d0, 1d0], [-2d0, -2d0], [2d0, 2d0])))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 56, (".not.(test_bound_newton([-1d0, 1d0], [-2d0, -2d0], [2d0, 2d0]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_bound_newton([1d0, 1d0], [-2d0, -2d0], [2d0, 2d0])))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 58, (".not.(test_bound_newton([1d0, 1d0], [-2d0, -2d0], [2d0, 2d0]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_bound_newton([1d0, 1d0], [5d-1, -2d0], [2d0, 2d0])))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 59, (".not.(test_bound_newton([1d0, 1d0], [5d-1, -2d0], [2d0, 2d0]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_bound_newton([1d0, 1d0], [5d-1, 5d-1], [2d0, 2d0])))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 60, (".not.(test_bound_newton([1d0, 1d0], [5d-1, 5d-1], [2d0, 2d0]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_bound_newton([1d0, 1d0], [-2d0, 5d-1], [2d0, 2d0])))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 61, (".not.(test_bound_newton([1d0, 1d0], [-2d0, 5d-1], [2d0, 2d0]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_bound_newton([-1d0, -1d0], [-2d0, -2d0], [2d0, 2d0])))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 63, (".not.(test_bound_newton([-1d0, -1d0], [-2d0, -2d0], [2d0, 2d0]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_bound_newton([-1d0, -1d0], [-2d0, -2d0], [-5d-1, 2d0])))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 64, (".not.(test_bound_newton([-1d0, -1d0], [-2d0, -2d0], [-5d-1, 2d0]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_bound_newton([-1d0, -1d0], [-2d0, -2d0], [-5d-1, -5d-1])))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 65, (".not.(test_bound_newton([-1d0, -1d0], [-2d0, -2d0], [-5d-1, -5d-1]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_bound_newton([-1d0, -1d0], [-2d0, -2d0], [2d0, -5d-1])))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 66, (".not.(test_bound_newton([-1d0, -1d0], [-2d0, -2d0], [2d0, -5d-1]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_bound_newton([1d0, -1d0], [-2d0, -2d0], [2d0, 2d0])))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 68, (".not.(test_bound_newton([1d0, -1d0], [-2d0, -2d0], [2d0, 2d0]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_bound_newton([1d0, -1d0], [5d-1, -2d0], [2d0, 2d0])))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 69, (".not.(test_bound_newton([1d0, -1d0], [5d-1, -2d0], [2d0, 2d0]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_bound_newton([1d0, -1d0], [5d-1, -2d0], [2d0, -5d-1])))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 70, (".not.(test_bound_newton([1d0, -1d0], [5d-1, -2d0], [2d0, -5d-1]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_bound_newton([1d0, -1d0], [-2d0, -2d0], [2d0, -5d-1])))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 71, (".not.(test_bound_newton([1d0, -1d0], [-2d0, -2d0], [2d0, -5d-1]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_bound_newton([-1d0, 1d0], [-2d0, -2d0], [2d0, 2d0])))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 73, (".not.(test_bound_newton([-1d0, 1d0], [-2d0, -2d0], [2d0, 2d0]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_bound_newton([-1d0, 1d0], [-2d0, -2d0], [-5d-1, 2d0])))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 74, (".not.(test_bound_newton([-1d0, 1d0], [-2d0, -2d0], [-5d-1, 2d0]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_bound_newton([-1d0, 1d0], [-2d0, 5d-1], [-5d-1, 2d0])))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 75, (".not.(test_bound_newton([-1d0, 1d0], [-2d0, 5d-1], [-5d-1, 2d0]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(test_bound_newton([-1d0, 1d0], [-2d0, 5d-1], [2d0, 2d0])))then; write(error_unit, *) "ERROR: ", "optimize_lib_test.f90", " ", 76, (".not.(test_bound_newton([-1d0, 1d0], [-2d0, 5d-1], [2d0, 2d0]))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   write(OUTPUT_UNIT, *) 'SUCCESS: ', "optimize_lib_test.f90"
   stop
contains
   function test_newton(x0, r) result(ret)
      Logical:: ret
      Real(kind=real64), intent(in):: x0(:), r
      Real(kind=kind(x0)):: x_best(size(x0)), f, f_best, g(size(x0)), H(size(x0), size(x0)), xtol
      Logical:: converge_x
      type(NewtonState64):: s
      xtol = 1d-2
      call init(s, x0, r)
      x_best(:) = x0
      f_best = huge(f_best)
      converge_x = .false.
      do
         call rosenbrock_fgh(s%x, f, g, H)
         ! write(output_unit, *) s%is_convex, s%x, f, s%f_prev, g, H
         if(f < f_best)then
            x_best(:) = s%x
            f_best = f
         end if
         if(converge_x) exit
         call update(s, f, g, H, 'u')
         converge_x = all(abs(g) < 1e-5)
      end do
      write(output_unit, *) s%iter, x_best
      ret = all(almost_equal([1d0, 1d0], x_best, atol=abs(xtol)))
   end function test_newton
   function test_bound_newton_2(x0, r) result(ret)
      Logical:: ret
      Real(kind=real64), intent(in):: x0(:), r
      Real(kind=kind(x0)):: x_best(size(x0)), f, f_best, g(size(x0)), H(size(x0), size(x0)), xtol
      Logical:: converge_x
      type(BoundNewtonState64):: s
      xtol = 1d-2
      call init(s, x0, r, [-1d8, -1d8], [1d8,1d8])
      x_best(:) = x0
      f_best = huge(f_best)
      converge_x = .false.
      do
         call rosenbrock_fgh(s%x, f, g, H)
         ! write(output_unit, *) s%is_convex, s%x, norm2(s%x - s%x_prev), s%base_step_size, f, g, H
         if(f < f_best)then
            x_best(:) = s%x
            f_best = f
         end if
         if(converge_x) exit
         call update(s, f, g, H, 'u')
         converge_x = all(abs(g) < 1e-5)
      end do
      write(output_unit, *) s%iter, x_best
      ret = all(almost_equal([1d0, 1d0], x_best, atol=abs(xtol)))
   end function test_bound_newton_2
   function test_bound_newton(x_ini, lower, upper) result(ret)
      Logical:: ret
      Real(kind=real64), intent(in):: x_ini(:), lower(size(x_ini)), upper(size(x_ini))
      Real(kind=kind(x_ini)):: x_best(size(x_ini)), f_best, x0(size(x_ini)), xtol
      type(Dual64_2_2):: z
      Logical:: converge
      type(BoundNewtonState64):: s
      x0 = 0
      where(x_ini > 0 .and. lower > 0)
         x0 = lower
      elsewhere(x_ini < 0 .and. upper < 0)
         x0 = upper
      end where
      xtol = 1d-3
      call init(s, x_ini, 1d-3, lower, upper)
      x_best(:) = x_ini
      f_best = huge(f_best)
      converge = .false.
      do
         z = fb1(Dual64_2_2(s%x(1), [1, 0]), Dual64_2_2(s%x(2), [0, 1]))
         write(output_unit, *) s%is_convex, s%x, real(z), s%f_prev, grad(z)
         if(real(z) < f_best)then
            x_best(:) = s%x
            f_best = real(z)
         end if
         if(converge) exit
         call update(s, real(z), grad(z), hess(z), 'u')
         converge = s%is_at_corner .or. (all(abs(pack(grad(z), .not.(s%on_lower .or. s%on_upper))) < 1e-5) .and. all(pack(grad(z), s%on_lower) >= 0) .and. all(pack(grad(z), s%on_upper) <= 0))
      end do
      write(output_unit, *) s%iter, x_best
      write(error_unit, *) "INFO: ", "optimize_lib_test.f90", " ", 175, "x0", ": ", (x0)
      write(error_unit, *) "INFO: ", "optimize_lib_test.f90", " ", 176, "x_best", ": ", (x_best)
      ret = all(almost_equal(x0, x_best, atol=abs(xtol)))
   end function test_bound_newton
   function test_line_search0(x0, dx, x_theoretical) result(ret)
      Logical:: ret
      Real(kind=real64), intent(in):: x0, dx, x_theoretical
      Real(kind=kind(x0)):: f, x, xl, xr, x_best, f_best, xtol
      Logical:: converge_x
      type(LineSearchState64_0):: s
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
         converge_x = almost_equal(x, x_best, atol=abs(xtol)/100)
         if(f < f_best)then
            x_best = x
            f_best = f
         end if
         if(converge_x) exit
      end do
      write(output_unit, *) s%iter, x_best
      ret = ret .and. almost_equal(x_theoretical, x_best, atol=abs(xtol))
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
         converge_x = almost_equal(x, x_best, atol=abs(xtol)/100)
         if(f < f_best)then
            x_best = x
            f_best = f
         end if
         if(converge_x) exit
      end do
      write(output_unit, *) s%iter, x_best
      ret = ret .and. almost_equal(x_theoretical, x_best, atol=abs(xtol))
   end function test_line_search0
   function test_line_search1(x0, dx, x_theoretical) result(ret)
      Logical:: ret
      Real(kind=real64), intent(in):: x0, dx, x_theoretical
      Real(kind=kind(x0)):: f, g, x, x_best, f_best, g_best, xtol
      Logical:: converge
      type(LineSearchState64_1):: s
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
         converge = abs(g) < 1e-2 .and. almost_equal(x, x_best, atol=abs(xtol)/100)
         if(f < f_best)then
            x_best = x
            f_best = f
            g_best = g
         end if
         if(s%iter > 50) stop
         if(converge) exit
      end do
      write(output_unit, *) s%iter, x_best
      ret = ret .and. almost_equal(x_theoretical, x_best, atol=abs(xtol))
      f_best = huge(f_best)
      x_best = huge(x_best)
      call init(s, dx)
      do
         x = x0 + s%x
         f = f2(x, x_theoretical)
         g = g2(x, x_theoretical)
         ! write(output_unit, *) x, s%x_best, s%x, s%f_best, f, s%g_best, g, s%is_convex, s%is_within
         call update(s, f, g)
         converge = abs(g) < 1e-2 .and. almost_equal(x, x_best, atol=abs(xtol)/100)
         if(f < f_best)then
            x_best = x
            f_best = f
            g_best = g
         end if
         if(converge) exit
      end do
      write(output_unit, *) s%iter, x_best
      ret = ret .and. almost_equal(x_theoretical, x_best, atol=abs(xtol))
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
   pure function fb1(x, y) result(ret)
      type(Dual64_2_2), intent(in):: x, y
      type(Dual64_2_2):: ret
      ! `(-1.2)**2.4` is prohibited
      ret = exp(abs(x)**2 + abs(y)**2)
   end function fb1
end program main
