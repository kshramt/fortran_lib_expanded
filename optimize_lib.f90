module optimize_lib
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   use, intrinsic:: iso_fortran_env, only: int8, int64, real64
   use, non_intrinsic:: constant_lib, only: get_infinity
   use, non_intrinsic:: array_lib, only: l2_norm
   implicit none
   private
   public:: nnls
   public:: update, init
      type, public:: NewtonStateRealDim0KindREAL32
         Logical(kind=int8):: is_convex
         Logical(kind=int8):: is_within
         Integer(kind=int64):: dim
         Integer(kind=int64):: iter = -1
         Real(kind=REAL32), allocatable:: x(:)
         Real(kind=REAL32), allocatable:: x_prev(:)
         Real(kind=REAL32):: f_prev
         Real(kind=REAL32), allocatable:: g_prev(:)
      end type NewtonStateRealDim0KindREAL32
      type, public:: LineSearchState0RealDim0KindREAL32
         Logical(kind=int8):: is_convex
         Logical(kind=int8):: is_within
         Integer(kind=int64):: iter = -1
         Real(kind=REAL32):: dx
         Real(kind=REAL32):: x
         Real(kind=REAL32):: xl
         Real(kind=REAL32):: xr
         Real(kind=REAL32):: fl
         Real(kind=REAL32):: fr
      end type LineSearchState0RealDim0KindREAL32
      type, public:: LineSearchState1RealDim0KindREAL32
         Logical(kind=int8):: is_convex
         Logical(kind=int8):: is_within
         Integer(kind=int64):: iter = -1
         Real(kind=REAL32):: dx
         Real(kind=REAL32):: x
         Real(kind=REAL32):: x_best
         Real(kind=REAL32):: f_best
         Real(kind=REAL32):: g_best
      end type LineSearchState1RealDim0KindREAL32
      type, public:: NewtonStateRealDim0KindREAL64
         Logical(kind=int8):: is_convex
         Logical(kind=int8):: is_within
         Integer(kind=int64):: dim
         Integer(kind=int64):: iter = -1
         Real(kind=REAL64), allocatable:: x(:)
         Real(kind=REAL64), allocatable:: x_prev(:)
         Real(kind=REAL64):: f_prev
         Real(kind=REAL64), allocatable:: g_prev(:)
      end type NewtonStateRealDim0KindREAL64
      type, public:: LineSearchState0RealDim0KindREAL64
         Logical(kind=int8):: is_convex
         Logical(kind=int8):: is_within
         Integer(kind=int64):: iter = -1
         Real(kind=REAL64):: dx
         Real(kind=REAL64):: x
         Real(kind=REAL64):: xl
         Real(kind=REAL64):: xr
         Real(kind=REAL64):: fl
         Real(kind=REAL64):: fr
      end type LineSearchState0RealDim0KindREAL64
      type, public:: LineSearchState1RealDim0KindREAL64
         Logical(kind=int8):: is_convex
         Logical(kind=int8):: is_within
         Integer(kind=int64):: iter = -1
         Real(kind=REAL64):: dx
         Real(kind=REAL64):: x
         Real(kind=REAL64):: x_best
         Real(kind=REAL64):: f_best
         Real(kind=REAL64):: g_best
      end type LineSearchState1RealDim0KindREAL64
      interface update
         module procedure updateNewtonStateRealDim0KindREAL32
      end interface update
      interface update_
         module procedure update_NewtonStateRealDim0KindREAL32
      end interface update_
      interface restrict_step_size
         module procedure restrict_step_sizeRealDim0KindREAL32
      end interface restrict_step_size
      interface init
         module procedure initNewtonStateRealDim0KindREAL32
      end interface init
      interface newton
         module procedure newtonRealDim0KindREAL32
      end interface newton
         interface update
            module procedure updateLineSearchState0RealDim0KindREAL32
         end interface update
         interface update_
            module procedure update_LineSearchState0RealDim0KindREAL32
         end interface update_
         interface init
            module procedure initLineSearchState0RealDim0KindREAL32
         end interface init
         interface line_search_interpolate
            module procedure line_search_interpolate0RealDim0KindREAL32
         end interface line_search_interpolate
         interface update
            module procedure updateLineSearchState1RealDim0KindREAL32
         end interface update
         interface update_
            module procedure update_LineSearchState1RealDim0KindREAL32
         end interface update_
         interface init
            module procedure initLineSearchState1RealDim0KindREAL32
         end interface init
         interface line_search_interpolate
            module procedure line_search_interpolate1RealDim0KindREAL32
         end interface line_search_interpolate
      interface nnls
         module procedure nnlsRealDim0KindREAL32
      end interface nnls
      interface update
         module procedure updateNewtonStateRealDim0KindREAL64
      end interface update
      interface update_
         module procedure update_NewtonStateRealDim0KindREAL64
      end interface update_
      interface restrict_step_size
         module procedure restrict_step_sizeRealDim0KindREAL64
      end interface restrict_step_size
      interface init
         module procedure initNewtonStateRealDim0KindREAL64
      end interface init
      interface newton
         module procedure newtonRealDim0KindREAL64
      end interface newton
         interface update
            module procedure updateLineSearchState0RealDim0KindREAL64
         end interface update
         interface update_
            module procedure update_LineSearchState0RealDim0KindREAL64
         end interface update_
         interface init
            module procedure initLineSearchState0RealDim0KindREAL64
         end interface init
         interface line_search_interpolate
            module procedure line_search_interpolate0RealDim0KindREAL64
         end interface line_search_interpolate
         interface update
            module procedure updateLineSearchState1RealDim0KindREAL64
         end interface update
         interface update_
            module procedure update_LineSearchState1RealDim0KindREAL64
         end interface update_
         interface init
            module procedure initLineSearchState1RealDim0KindREAL64
         end interface init
         interface line_search_interpolate
            module procedure line_search_interpolate1RealDim0KindREAL64
         end interface line_search_interpolate
      interface nnls
         module procedure nnlsRealDim0KindREAL64
      end interface nnls
contains
      ! Newton
      subroutine updateNewtonStateRealDim0KindREAL32(s, f, g, H, uplo)
         ! call init(s, x0, l)
         ! do
         ! call update(s, f(s%x), g(s%x), H(s%x), 'u')
         ! end do
         Real(kind=REAL32), parameter:: zero = 0
         Real(kind=REAL32), parameter:: max_scale = 2
         type(NewtonStateRealDim0KindREAL32), intent(inout):: s
         Real(kind=REAL32), intent(in):: f, g(s%dim), H(s%dim, s%dim)
         Character(len=1), intent(in):: uplo
         Real(kind=REAL32):: l, l_new, lg, H_(s%dim, s%dim), dx(s%dim), dx_new(s%dim)
         if(s%iter < 0)then
            write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 212, ('`NewtonStateRealDim0KindREAL32` should be `init`ialized before `update`d'); error stop
         end if
         s%iter = s%iter + 1
         dx(:) = s%x - s%x_prev
         if(f >= s%f_prev)then
            l = norm2(dx)
            call line_search_interpolate(zero, s%f_prev, dot_product(dx, s%g_prev)/l, l, f, l_new, s%is_convex)
            if(.not.(s%is_convex))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 220, (".not.(s%is_convex)"); error stop; end if
            if(.not.(0 < l_new))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 221, (".not.(0 < l_new)"); error stop; end if
            if(.not.(l_new < l))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 222, (".not.(l_new < l)"); error stop; end if
            s%is_within = .true.
            s%x(:) = s%x_prev + l_new/l*dx
            return
         end if
         H_(:, :) = H
         call newton(uplo, g, H_, dx_new, s%is_convex)
         if(s%is_convex)then
            call restrict_step_size(dx_new, dx, max_scale, s%is_within)
            call update_(s, dx_new, f, g)
            return
         end if
         lg = norm2(g)
         if(lg <= 0)then
            call update_(s, dx/2, f, g)
            return
         end if
         dx_new(:) = -2*norm2(dx)/lg*g
         call restrict_step_size(dx_new, dx, max_scale, s%is_within)
         s%is_within = .false.
         call update_(s, dx_new, f, g)
      end subroutine updateNewtonStateRealDim0KindREAL32
      subroutine update_NewtonStateRealDim0KindREAL32(s, dx_new, f, g)
         type(NewtonStateRealDim0KindREAL32), intent(inout):: s
         Real(kind=REAL32), intent(in):: dx_new(s%dim), f, g(s%dim)
         s%x_prev(:) = s%x
         s%x(:) = s%x_prev + dx_new
         s%f_prev = f
         s%g_prev(:) = g
      end subroutine update_NewtonStateRealDim0KindREAL32
      subroutine restrict_step_sizeRealDim0KindREAL32(dx, dx_prev, max_scale, is_within)
         Real(kind=REAL32), intent(inout):: dx(:)
         Real(kind=REAL32), intent(in):: dx_prev(size(dx))
         Real(kind=REAL32), intent(in):: max_scale
         Logical(kind=int8), intent(out):: is_within
         Real(kind=REAL32):: l, l_prev, c
         l_prev = norm2(dx_prev)
         l = norm2(dx)
         if(l > max_scale*l_prev)then
            dx(:) = max_scale*l_prev/l*dx
            is_within = .false.
         end if
         c = dot_product(dx_prev, dx)/l_prev
         if(c < -l_prev/2)then
            dx(:) = -l_prev/(2*c)*dx
            is_within = .false.
         end if
      end subroutine restrict_step_sizeRealDim0KindREAL32
      subroutine initNewtonStateRealDim0KindREAL32(s, x0, l)
         type(NewtonStateRealDim0KindREAL32), intent(inout):: s
         Real(kind=REAL32), intent(in):: x0(:) ! initial solution
         Real(kind=REAL32), intent(in):: l ! initial step length
         if(.not.(l > 0))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 286, (".not.(l > 0)"); error stop; end if
         s%is_convex = .false.
         s%is_within = .false.
         s%iter = 0
         if(allocated(s%x)) deallocate(s%x)
         if(allocated(s%x_prev)) deallocate(s%x_prev)
         if(allocated(s%g_prev)) deallocate(s%g_prev)
         s%dim = size(x0)
         allocate(s%x(s%dim))
         allocate(s%x_prev(s%dim))
         allocate(s%g_prev(s%dim))
         s%x(:) = x0
         s%x_prev(:) = s%x - sqrt(l/s%dim)
         s%f_prev = get_infinity()
      end subroutine initNewtonStateRealDim0KindREAL32
      subroutine newtonRealDim0KindREAL32(uplo, g, H, dx, is_convex)
         Integer(kind=int32), parameter:: nrhs = 1
         Character(len=1), intent(in):: uplo
         Real(kind=REAL32), intent(in):: g(:), H(size(g), size(g))
         Real(kind=REAL32), intent(out):: dx(size(g))
         Logical(kind=int8), intent(out):: is_convex
         Real(kind=REAL32), allocatable:: A(:, :)
         Integer(kind=kind(nrhs)):: n, info
         n = size(dx, kind=kind(n))
         if(.not.(n > 0))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 313, (".not.(n > 0)"); error stop; end if
         A = H
         call spotrf(uplo, n, A, n, info)
         if(.not.(info >= 0))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 317, (".not.(info >= 0)"); error stop; end if
         is_convex = info == 0
         if(.not.is_convex) return
         dx(:) = -g
         call spotrs(uplo, n, nrhs, A, n, dx, n, info)
         if(.not.(info >= 0))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 323, (".not.(info >= 0)"); error stop; end if
         is_convex = info == 0
      end subroutine newtonRealDim0KindREAL32
      ! derivative free
      subroutine updateLineSearchState0RealDim0KindREAL32(s, f)
         ! call init(s, dx)
         ! do
         ! call update(s, f(x0 + s%x))
         ! end do
         type(LineSearchState0RealDim0KindREAL32), intent(inout):: s
         Real(kind=REAL32), intent(in):: f
         Real(kind=REAL32):: x_new, x1, x2, x3, f1, f2, f3, step, xlim
         Real(kind=REAL32), parameter:: enlarge = real(5, kind=kind(enlarge))/4
         if(s%iter < 0)then
            write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 341, ('`LineSearchState0RealDim0KindREAL32` should be `init`ialized before `update`d'); error stop
         end if
         s%iter = s%iter + 1
         if(s%iter == 1)then
            s%x = s%dx
            if(s%dx > 0)then
               s%fl = f
            else
               s%fr = f
            end if
            return
         else if(s%iter == 2)then
            if(s%dx > 0)then
               if(.not.(s%x > s%xl))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 354, (".not.(s%x > s%xl)"); error stop; end if
               s%xr = s%x
               s%fr = f
            else
               if(.not.(s%x < s%xr))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 358, (".not.(s%x < s%xr)"); error stop; end if
               s%xl = s%x
               s%fl = f
            end if
            step = enlarge*(s%xr - s%xl)
            if(s%fr < s%fl)then
               s%x = s%xr + step
            else
               s%x = s%xl - step
            end if
            return
         else
            ! converged case should be treated by caller
            if(.not.(s%x /= s%xl .and. s%x /= s%xr))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 371, (".not.(s%x /= s%xl .and. s%x /= s%xr)"); error stop; end if
            if(s%x < s%xl)then
               x1 = s%x
               x2 = s%xl
               x3 = s%xr
               f1 = f
               f2 = s%fl
               f3 = s%fr
            else if(s%xr < s%x)then
               x1 = s%xl
               x2 = s%xr
               x3 = s%x
               f1 = s%fl
               f2 = s%fr
               f3 = f
            else ! xl < x < xr
               x1 = s%xl
               x2 = s%x
               x3 = s%xr
               f1 = s%fl
               f2 = f
               f3 = s%fr
            end if
         end if
         call line_search_interpolate(x1, x2, x3, f1, f2, f3, x_new, s%is_convex)
         step = enlarge*(x3 - x1)
         if(s%is_convex)then
            if(x_new < x1)then
               xlim = x1 - step
               s%is_within = xlim <= x_new
               if(s%is_within)then
                  s%x = x_new
               else
                  s%x = xlim
               end if
               call update_(s, x1, x2, f1, f2)
            else if(x3 < x_new)then
               xlim = x3 + step
               s%is_within = x_new <= xlim
               if(s%is_within)then
                  s%x = x_new
               else
                  s%x = xlim
               end if
               call update_(s, x2, x3, f2, f3)
            else
               s%is_within = .true.
               s%x = x_new
               if(f1 < f3)then
                  call update_(s, x1, x2, f1, f2)
               else
                  call update_(s, x2, x3, f2, f3)
               end if
            end if
         else
            s%is_within = .false.
            if(x_new < x2)then
               s%x = x1 - step
               call update_(s, x1, x2 ,f1, f2)
            else
               s%x = x3 + step
               call update_(s, x2, x3 ,f2, f3)
            end if
         end if
      end subroutine updateLineSearchState0RealDim0KindREAL32
      subroutine update_LineSearchState0RealDim0KindREAL32(s, xl, xr, fl, fr)
         type(LineSearchState0RealDim0KindREAL32), intent(inout):: s
         Real(kind=REAL32), intent(in):: xl, xr, fl, fr
         s%xl = xl
         s%xr = xr
         s%fl = fl
         s%fr = fr
      end subroutine update_LineSearchState0RealDim0KindREAL32
      subroutine initLineSearchState0RealDim0KindREAL32(s, dx)
         type(LineSearchState0RealDim0KindREAL32), intent(inout):: s
         Real(kind=REAL32), intent(in):: dx
         if(.not.(abs(dx) > 0))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 454, (".not.(abs(dx) > 0)"); error stop; end if
         s%is_convex = .false.
         s%is_within = .false.
         s%iter = 0
         s%dx = dx
         if(s%dx > 0)then
            s%xl = 0
            s%xr = dx
            s%x = s%xl
         else
            s%xr = 0
            s%xl = dx
            s%x = s%xr
         end if
      end subroutine initLineSearchState0RealDim0KindREAL32
      subroutine line_search_interpolate0RealDim0KindREAL32(x1, x2, x3, f1, f2, f3, x_opt, is_convex)
         Real(kind=REAL32), intent(in):: x1, x2, x3, f1, f2, f3
         Real(kind=REAL32), intent(out):: x_opt
         Logical(kind=int8), intent(out):: is_convex
         Real(kind=REAL32):: x12, x13, x23, f1x1213, f2x1223, f3x1323, a, b_neg
         x12 = x1 - x2
         x13 = x1 - x3
         x23 = x2 - x3
         f1x1213 = f1/(x12*x13)
         f2x1223 = f2/(x12*x23)
         f3x1323 = f3/(x13*x23)
         a = f1x1213 - f2x1223 + f3x1323
         is_convex = a > 0
         if(is_convex)then
            b_neg = f1x1213*(x2 + x3) - f2x1223*(x1 + x3) + f3x1323*(x1 + x2)
            x_opt = b_neg/(2*a)
         else if(f1 < f2)then
            if(f1 < f3)then
               x_opt = x1
            else
               x_opt = x3
            end if
         else if(f2 < f3)then
            x_opt = x2
         else
            x_opt = x3
         end if
      end subroutine line_search_interpolate0RealDim0KindREAL32
      ! use gradient information
      subroutine updateLineSearchState1RealDim0KindREAL32(s, f, g)
         ! call init(s, dx)
         ! do
         ! call update(s, f(x0 + s%x), grad(x0 + s%x))
         ! end do
         type(LineSearchState1RealDim0KindREAL32), intent(inout):: s
         Real(kind=REAL32), intent(in):: f, g
         Real(kind=REAL32):: x1, f1, g1, x2, f2, g2, step, xl, xr, x_new, xlim
         Real(kind=REAL32), parameter:: enlarge = 2
         if(s%iter < 0)then
            write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 515, ('`LineSearchState1RealDim0KindREAL32` should be `init`ialized before `update`d'); error stop
         end if
         s%iter = s%iter + 1
         if(s%iter == 1)then
            s%x_best = s%x
            s%f_best = f
            s%g_best = g
            if(g*s%dx > 0)then
               s%x = s%x_best - s%dx
            else
               s%x = s%x_best + s%dx
            end if
            return
         end if
         if(f < s%f_best)then
            x1 = s%x
            f1 = f
            g1 = g
            x2 = s%x_best
            f2 = s%f_best
            g2 = s%g_best
         else
            x1 = s%x_best
            f1 = s%f_best
            g1 = s%g_best
            x2 = s%x
            f2 = f
            g2 = g
         end if
         if(g1 == 0)then
            call update_(s, x1, f1, g1)
            s%is_convex = .true.
            s%is_within = .true.
            s%x = x1
            return
         end if
         xl = min(x1, x2)
         xr = max(x1, x2)
         step = enlarge*(xr - xl)
         call line_search_interpolate(x1, f1, g1, x2, f2, x_new, s%is_convex)
         call update_(s, x1, f1, g1)
         if(s%is_convex)then
            if(x_new < xl)then
               xlim = xl - step
               s%is_within = xlim <= x_new
            else if(xr < x_new)then
               xlim = xr + step
               s%is_within = x_new <= xlim
            else
               s%is_within = .true.
            end if
            if(s%is_within)then
               s%x = x_new
            else
               s%x = xlim
            end if
         else
            s%is_within = .false.
            if(g1 < 0)then
               s%x = x1 + step
            else if(g1 > 0)then
               s%x = x1 - step
            end if
         end if
      end subroutine updateLineSearchState1RealDim0KindREAL32
      subroutine update_LineSearchState1RealDim0KindREAL32(s, x_best, f_best, g_best)
         type(LineSearchState1RealDim0KindREAL32), intent(inout):: s
         Real(kind=REAL32), intent(in):: x_best, f_best, g_best
         s%x_best = x_best
         s%f_best = f_best
         s%g_best = g_best
      end subroutine update_LineSearchState1RealDim0KindREAL32
      subroutine initLineSearchState1RealDim0KindREAL32(s, dx)
         type(LineSearchState1RealDim0KindREAL32), intent(inout):: s
         Real(kind=REAL32), intent(in):: dx
         if(.not.(abs(dx) > 0))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 600, (".not.(abs(dx) > 0)"); error stop; end if
         s%is_convex = .false.
         s%is_within = .false.
         s%iter = 0
         s%dx = dx
         s%x = 0
         s%x_best = get_infinity()
         s%f_best = get_infinity()
         s%g_best = get_infinity()
      end subroutine initLineSearchState1RealDim0KindREAL32
      subroutine line_search_interpolate1RealDim0KindREAL32(x1, f1, g1, x2, f2, x_new, is_convex)
         Real(kind=REAL32), intent(in):: x1, f1, g1, x2, f2
         Real(kind=REAL32), intent(out):: x_new
         Logical(kind=int8), intent(out):: is_convex
         Real(kind=REAL32):: x12, a
         x12 = x2 - x1
         a = ((f2 - f1) - g1*x12)/x12**2
         is_convex = a > 0
         if(is_convex)then
            x_new = x1 - g1/(2*a)
         else if(f1 < f2)then
            x_new = x1
         else
            x_new = x2
         end if
      end subroutine line_search_interpolate1RealDim0KindREAL32
      pure function nnlsRealDim0KindREAL32(A, b) result(ret)
         Real(kind=REAL32), intent(in):: A(:, :), b(:)
         Real(kind=kind(A)), allocatable:: tAA(:, :), tAb(:), x(:), x_pre(:), g(:), ret(:)
         Real(kind=kind(A)):: d, d_pre, alpha, alpha_, l2_Ag
         Integer(kind=INT64):: i, n
         n = size(A, 2, kind=kind(n))
         tAA = matmul(transpose(A), A)
         tAb = matmul(transpose(A), b)
         allocate(x_pre(n))
         allocate(g(n))
         x_pre(:) = 0
         x = x_pre
         d_pre = get_infinity()
         do
            d = l2_norm(b - matmul(A, x))
            ! use `.not.` not to leak `NaN`.
            ! `=` here is essential in some cases.
            if(.not.(d <= d_pre))then
               ! numerical error causes `x(i) < 0` for some `i`
               ret = max(x_pre, real(0, kind=kind(x_pre)))
               return
            end if
            d_pre = d
            g(:) = tAb - matmul(tAA, x)
            alpha = get_infinity()
            do i = lbound(g, dim=1, kind=kind(i)), ubound(g, dim=1, kind=kind(i))
               if(g(i) < 0)then
                  if(x(i) <= 0)then
                     g(i) = 0
                  else
                     alpha_ = x(i)/(-g(i))
                     if(alpha_ < alpha)then
                        if(alpha_ <= 0)then
                           g(i) = 0
                        else
                           alpha = alpha_
                        end if
                     end if
                  end if
               end if
            end do
            x_pre(:) = x
            l2_Ag = l2_norm(matmul(A, g))
            if(l2_Ag <= 0)then
               ret = max(x_pre, real(0, kind=kind(x_pre)))
               return
            end if
            x(:) = x + min(l2_norm(g)/l2_Ag, alpha)*g
         end do
      end function nnlsRealDim0KindREAL32
      ! Newton
      subroutine updateNewtonStateRealDim0KindREAL64(s, f, g, H, uplo)
         ! call init(s, x0, l)
         ! do
         ! call update(s, f(s%x), g(s%x), H(s%x), 'u')
         ! end do
         Real(kind=REAL64), parameter:: zero = 0
         Real(kind=REAL64), parameter:: max_scale = 2
         type(NewtonStateRealDim0KindREAL64), intent(inout):: s
         Real(kind=REAL64), intent(in):: f, g(s%dim), H(s%dim, s%dim)
         Character(len=1), intent(in):: uplo
         Real(kind=REAL64):: l, l_new, lg, H_(s%dim, s%dim), dx(s%dim), dx_new(s%dim)
         if(s%iter < 0)then
            write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 700, ('`NewtonStateRealDim0KindREAL64` should be `init`ialized before `update`d'); error stop
         end if
         s%iter = s%iter + 1
         dx(:) = s%x - s%x_prev
         if(f >= s%f_prev)then
            l = norm2(dx)
            call line_search_interpolate(zero, s%f_prev, dot_product(dx, s%g_prev)/l, l, f, l_new, s%is_convex)
            if(.not.(s%is_convex))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 708, (".not.(s%is_convex)"); error stop; end if
            if(.not.(0 < l_new))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 709, (".not.(0 < l_new)"); error stop; end if
            if(.not.(l_new < l))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 710, (".not.(l_new < l)"); error stop; end if
            s%is_within = .true.
            s%x(:) = s%x_prev + l_new/l*dx
            return
         end if
         H_(:, :) = H
         call newton(uplo, g, H_, dx_new, s%is_convex)
         if(s%is_convex)then
            call restrict_step_size(dx_new, dx, max_scale, s%is_within)
            call update_(s, dx_new, f, g)
            return
         end if
         lg = norm2(g)
         if(lg <= 0)then
            call update_(s, dx/2, f, g)
            return
         end if
         dx_new(:) = -2*norm2(dx)/lg*g
         call restrict_step_size(dx_new, dx, max_scale, s%is_within)
         s%is_within = .false.
         call update_(s, dx_new, f, g)
      end subroutine updateNewtonStateRealDim0KindREAL64
      subroutine update_NewtonStateRealDim0KindREAL64(s, dx_new, f, g)
         type(NewtonStateRealDim0KindREAL64), intent(inout):: s
         Real(kind=REAL64), intent(in):: dx_new(s%dim), f, g(s%dim)
         s%x_prev(:) = s%x
         s%x(:) = s%x_prev + dx_new
         s%f_prev = f
         s%g_prev(:) = g
      end subroutine update_NewtonStateRealDim0KindREAL64
      subroutine restrict_step_sizeRealDim0KindREAL64(dx, dx_prev, max_scale, is_within)
         Real(kind=REAL64), intent(inout):: dx(:)
         Real(kind=REAL64), intent(in):: dx_prev(size(dx))
         Real(kind=REAL64), intent(in):: max_scale
         Logical(kind=int8), intent(out):: is_within
         Real(kind=REAL64):: l, l_prev, c
         l_prev = norm2(dx_prev)
         l = norm2(dx)
         if(l > max_scale*l_prev)then
            dx(:) = max_scale*l_prev/l*dx
            is_within = .false.
         end if
         c = dot_product(dx_prev, dx)/l_prev
         if(c < -l_prev/2)then
            dx(:) = -l_prev/(2*c)*dx
            is_within = .false.
         end if
      end subroutine restrict_step_sizeRealDim0KindREAL64
      subroutine initNewtonStateRealDim0KindREAL64(s, x0, l)
         type(NewtonStateRealDim0KindREAL64), intent(inout):: s
         Real(kind=REAL64), intent(in):: x0(:) ! initial solution
         Real(kind=REAL64), intent(in):: l ! initial step length
         if(.not.(l > 0))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 774, (".not.(l > 0)"); error stop; end if
         s%is_convex = .false.
         s%is_within = .false.
         s%iter = 0
         if(allocated(s%x)) deallocate(s%x)
         if(allocated(s%x_prev)) deallocate(s%x_prev)
         if(allocated(s%g_prev)) deallocate(s%g_prev)
         s%dim = size(x0)
         allocate(s%x(s%dim))
         allocate(s%x_prev(s%dim))
         allocate(s%g_prev(s%dim))
         s%x(:) = x0
         s%x_prev(:) = s%x - sqrt(l/s%dim)
         s%f_prev = get_infinity()
      end subroutine initNewtonStateRealDim0KindREAL64
      subroutine newtonRealDim0KindREAL64(uplo, g, H, dx, is_convex)
         Integer(kind=int32), parameter:: nrhs = 1
         Character(len=1), intent(in):: uplo
         Real(kind=REAL64), intent(in):: g(:), H(size(g), size(g))
         Real(kind=REAL64), intent(out):: dx(size(g))
         Logical(kind=int8), intent(out):: is_convex
         Real(kind=REAL64), allocatable:: A(:, :)
         Integer(kind=kind(nrhs)):: n, info
         n = size(dx, kind=kind(n))
         if(.not.(n > 0))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 801, (".not.(n > 0)"); error stop; end if
         A = H
         call dpotrf(uplo, n, A, n, info)
         if(.not.(info >= 0))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 805, (".not.(info >= 0)"); error stop; end if
         is_convex = info == 0
         if(.not.is_convex) return
         dx(:) = -g
         call dpotrs(uplo, n, nrhs, A, n, dx, n, info)
         if(.not.(info >= 0))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 811, (".not.(info >= 0)"); error stop; end if
         is_convex = info == 0
      end subroutine newtonRealDim0KindREAL64
      ! derivative free
      subroutine updateLineSearchState0RealDim0KindREAL64(s, f)
         ! call init(s, dx)
         ! do
         ! call update(s, f(x0 + s%x))
         ! end do
         type(LineSearchState0RealDim0KindREAL64), intent(inout):: s
         Real(kind=REAL64), intent(in):: f
         Real(kind=REAL64):: x_new, x1, x2, x3, f1, f2, f3, step, xlim
         Real(kind=REAL64), parameter:: enlarge = real(5, kind=kind(enlarge))/4
         if(s%iter < 0)then
            write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 829, ('`LineSearchState0RealDim0KindREAL64` should be `init`ialized before `update`d'); error stop
         end if
         s%iter = s%iter + 1
         if(s%iter == 1)then
            s%x = s%dx
            if(s%dx > 0)then
               s%fl = f
            else
               s%fr = f
            end if
            return
         else if(s%iter == 2)then
            if(s%dx > 0)then
               if(.not.(s%x > s%xl))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 842, (".not.(s%x > s%xl)"); error stop; end if
               s%xr = s%x
               s%fr = f
            else
               if(.not.(s%x < s%xr))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 846, (".not.(s%x < s%xr)"); error stop; end if
               s%xl = s%x
               s%fl = f
            end if
            step = enlarge*(s%xr - s%xl)
            if(s%fr < s%fl)then
               s%x = s%xr + step
            else
               s%x = s%xl - step
            end if
            return
         else
            ! converged case should be treated by caller
            if(.not.(s%x /= s%xl .and. s%x /= s%xr))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 859, (".not.(s%x /= s%xl .and. s%x /= s%xr)"); error stop; end if
            if(s%x < s%xl)then
               x1 = s%x
               x2 = s%xl
               x3 = s%xr
               f1 = f
               f2 = s%fl
               f3 = s%fr
            else if(s%xr < s%x)then
               x1 = s%xl
               x2 = s%xr
               x3 = s%x
               f1 = s%fl
               f2 = s%fr
               f3 = f
            else ! xl < x < xr
               x1 = s%xl
               x2 = s%x
               x3 = s%xr
               f1 = s%fl
               f2 = f
               f3 = s%fr
            end if
         end if
         call line_search_interpolate(x1, x2, x3, f1, f2, f3, x_new, s%is_convex)
         step = enlarge*(x3 - x1)
         if(s%is_convex)then
            if(x_new < x1)then
               xlim = x1 - step
               s%is_within = xlim <= x_new
               if(s%is_within)then
                  s%x = x_new
               else
                  s%x = xlim
               end if
               call update_(s, x1, x2, f1, f2)
            else if(x3 < x_new)then
               xlim = x3 + step
               s%is_within = x_new <= xlim
               if(s%is_within)then
                  s%x = x_new
               else
                  s%x = xlim
               end if
               call update_(s, x2, x3, f2, f3)
            else
               s%is_within = .true.
               s%x = x_new
               if(f1 < f3)then
                  call update_(s, x1, x2, f1, f2)
               else
                  call update_(s, x2, x3, f2, f3)
               end if
            end if
         else
            s%is_within = .false.
            if(x_new < x2)then
               s%x = x1 - step
               call update_(s, x1, x2 ,f1, f2)
            else
               s%x = x3 + step
               call update_(s, x2, x3 ,f2, f3)
            end if
         end if
      end subroutine updateLineSearchState0RealDim0KindREAL64
      subroutine update_LineSearchState0RealDim0KindREAL64(s, xl, xr, fl, fr)
         type(LineSearchState0RealDim0KindREAL64), intent(inout):: s
         Real(kind=REAL64), intent(in):: xl, xr, fl, fr
         s%xl = xl
         s%xr = xr
         s%fl = fl
         s%fr = fr
      end subroutine update_LineSearchState0RealDim0KindREAL64
      subroutine initLineSearchState0RealDim0KindREAL64(s, dx)
         type(LineSearchState0RealDim0KindREAL64), intent(inout):: s
         Real(kind=REAL64), intent(in):: dx
         if(.not.(abs(dx) > 0))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 942, (".not.(abs(dx) > 0)"); error stop; end if
         s%is_convex = .false.
         s%is_within = .false.
         s%iter = 0
         s%dx = dx
         if(s%dx > 0)then
            s%xl = 0
            s%xr = dx
            s%x = s%xl
         else
            s%xr = 0
            s%xl = dx
            s%x = s%xr
         end if
      end subroutine initLineSearchState0RealDim0KindREAL64
      subroutine line_search_interpolate0RealDim0KindREAL64(x1, x2, x3, f1, f2, f3, x_opt, is_convex)
         Real(kind=REAL64), intent(in):: x1, x2, x3, f1, f2, f3
         Real(kind=REAL64), intent(out):: x_opt
         Logical(kind=int8), intent(out):: is_convex
         Real(kind=REAL64):: x12, x13, x23, f1x1213, f2x1223, f3x1323, a, b_neg
         x12 = x1 - x2
         x13 = x1 - x3
         x23 = x2 - x3
         f1x1213 = f1/(x12*x13)
         f2x1223 = f2/(x12*x23)
         f3x1323 = f3/(x13*x23)
         a = f1x1213 - f2x1223 + f3x1323
         is_convex = a > 0
         if(is_convex)then
            b_neg = f1x1213*(x2 + x3) - f2x1223*(x1 + x3) + f3x1323*(x1 + x2)
            x_opt = b_neg/(2*a)
         else if(f1 < f2)then
            if(f1 < f3)then
               x_opt = x1
            else
               x_opt = x3
            end if
         else if(f2 < f3)then
            x_opt = x2
         else
            x_opt = x3
         end if
      end subroutine line_search_interpolate0RealDim0KindREAL64
      ! use gradient information
      subroutine updateLineSearchState1RealDim0KindREAL64(s, f, g)
         ! call init(s, dx)
         ! do
         ! call update(s, f(x0 + s%x), grad(x0 + s%x))
         ! end do
         type(LineSearchState1RealDim0KindREAL64), intent(inout):: s
         Real(kind=REAL64), intent(in):: f, g
         Real(kind=REAL64):: x1, f1, g1, x2, f2, g2, step, xl, xr, x_new, xlim
         Real(kind=REAL64), parameter:: enlarge = 2
         if(s%iter < 0)then
            write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 1003, ('`LineSearchState1RealDim0KindREAL64` should be `init`ialized before `update`d'); error stop
         end if
         s%iter = s%iter + 1
         if(s%iter == 1)then
            s%x_best = s%x
            s%f_best = f
            s%g_best = g
            if(g*s%dx > 0)then
               s%x = s%x_best - s%dx
            else
               s%x = s%x_best + s%dx
            end if
            return
         end if
         if(f < s%f_best)then
            x1 = s%x
            f1 = f
            g1 = g
            x2 = s%x_best
            f2 = s%f_best
            g2 = s%g_best
         else
            x1 = s%x_best
            f1 = s%f_best
            g1 = s%g_best
            x2 = s%x
            f2 = f
            g2 = g
         end if
         if(g1 == 0)then
            call update_(s, x1, f1, g1)
            s%is_convex = .true.
            s%is_within = .true.
            s%x = x1
            return
         end if
         xl = min(x1, x2)
         xr = max(x1, x2)
         step = enlarge*(xr - xl)
         call line_search_interpolate(x1, f1, g1, x2, f2, x_new, s%is_convex)
         call update_(s, x1, f1, g1)
         if(s%is_convex)then
            if(x_new < xl)then
               xlim = xl - step
               s%is_within = xlim <= x_new
            else if(xr < x_new)then
               xlim = xr + step
               s%is_within = x_new <= xlim
            else
               s%is_within = .true.
            end if
            if(s%is_within)then
               s%x = x_new
            else
               s%x = xlim
            end if
         else
            s%is_within = .false.
            if(g1 < 0)then
               s%x = x1 + step
            else if(g1 > 0)then
               s%x = x1 - step
            end if
         end if
      end subroutine updateLineSearchState1RealDim0KindREAL64
      subroutine update_LineSearchState1RealDim0KindREAL64(s, x_best, f_best, g_best)
         type(LineSearchState1RealDim0KindREAL64), intent(inout):: s
         Real(kind=REAL64), intent(in):: x_best, f_best, g_best
         s%x_best = x_best
         s%f_best = f_best
         s%g_best = g_best
      end subroutine update_LineSearchState1RealDim0KindREAL64
      subroutine initLineSearchState1RealDim0KindREAL64(s, dx)
         type(LineSearchState1RealDim0KindREAL64), intent(inout):: s
         Real(kind=REAL64), intent(in):: dx
         if(.not.(abs(dx) > 0))then; write(ERROR_UNIT, *) "RAISE: ", "optimize_lib.f90", " ", 1088, (".not.(abs(dx) > 0)"); error stop; end if
         s%is_convex = .false.
         s%is_within = .false.
         s%iter = 0
         s%dx = dx
         s%x = 0
         s%x_best = get_infinity()
         s%f_best = get_infinity()
         s%g_best = get_infinity()
      end subroutine initLineSearchState1RealDim0KindREAL64
      subroutine line_search_interpolate1RealDim0KindREAL64(x1, f1, g1, x2, f2, x_new, is_convex)
         Real(kind=REAL64), intent(in):: x1, f1, g1, x2, f2
         Real(kind=REAL64), intent(out):: x_new
         Logical(kind=int8), intent(out):: is_convex
         Real(kind=REAL64):: x12, a
         x12 = x2 - x1
         a = ((f2 - f1) - g1*x12)/x12**2
         is_convex = a > 0
         if(is_convex)then
            x_new = x1 - g1/(2*a)
         else if(f1 < f2)then
            x_new = x1
         else
            x_new = x2
         end if
      end subroutine line_search_interpolate1RealDim0KindREAL64
      pure function nnlsRealDim0KindREAL64(A, b) result(ret)
         Real(kind=REAL64), intent(in):: A(:, :), b(:)
         Real(kind=kind(A)), allocatable:: tAA(:, :), tAb(:), x(:), x_pre(:), g(:), ret(:)
         Real(kind=kind(A)):: d, d_pre, alpha, alpha_, l2_Ag
         Integer(kind=INT64):: i, n
         n = size(A, 2, kind=kind(n))
         tAA = matmul(transpose(A), A)
         tAb = matmul(transpose(A), b)
         allocate(x_pre(n))
         allocate(g(n))
         x_pre(:) = 0
         x = x_pre
         d_pre = get_infinity()
         do
            d = l2_norm(b - matmul(A, x))
            ! use `.not.` not to leak `NaN`.
            ! `=` here is essential in some cases.
            if(.not.(d <= d_pre))then
               ! numerical error causes `x(i) < 0` for some `i`
               ret = max(x_pre, real(0, kind=kind(x_pre)))
               return
            end if
            d_pre = d
            g(:) = tAb - matmul(tAA, x)
            alpha = get_infinity()
            do i = lbound(g, dim=1, kind=kind(i)), ubound(g, dim=1, kind=kind(i))
               if(g(i) < 0)then
                  if(x(i) <= 0)then
                     g(i) = 0
                  else
                     alpha_ = x(i)/(-g(i))
                     if(alpha_ < alpha)then
                        if(alpha_ <= 0)then
                           g(i) = 0
                        else
                           alpha = alpha_
                        end if
                     end if
                  end if
               end if
            end do
            x_pre(:) = x
            l2_Ag = l2_norm(matmul(A, g))
            if(l2_Ag <= 0)then
               ret = max(x_pre, real(0, kind=kind(x_pre)))
               return
            end if
            x(:) = x + min(l2_norm(g)/l2_Ag, alpha)*g
         end do
      end function nnlsRealDim0KindREAL64
end module optimize_lib
