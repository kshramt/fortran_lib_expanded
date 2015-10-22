module optimize_lib
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   use, intrinsic:: iso_fortran_env, only: int32, int64, real32, real64
   use, non_intrinsic:: constant_lib, only: get_infinity
   use, non_intrinsic:: array_lib, only: l2_norm, iota
   use, non_intrinsic:: comparable_lib, only: almost_equal
   implicit none
   private
   public:: nnls
   public:: update, init
   ! for test
   public:: combination
   public:: combinations
      type, public:: BoundNewtonState32
         Logical:: is_convex = .false.
         Logical:: is_within = .false.
         Logical:: is_saddle_or_peak = .false.
         Logical:: is_at_corner = .false.
         Logical:: is_line_search = .false.
         Integer(kind=int64):: dim
         Integer(kind=int64):: iter = 0
         Real(kind=real32):: base_step_size = -1
         Real(kind=real32), allocatable:: x(:)
         Real(kind=real32), allocatable:: x_prev(:)
         Real(kind=real32):: f_prev
         Real(kind=real32), allocatable:: g_prev(:)
         Real(kind=real32), allocatable:: lower(:)
         Real(kind=real32), allocatable:: upper(:)
         Logical, allocatable:: on_lower(:)
         Logical, allocatable:: on_upper(:)
         Logical, allocatable:: on_lower_prev(:)
         Logical, allocatable:: on_upper_prev(:)
      end type BoundNewtonState32
      type, public:: NewtonState32
         Logical:: is_convex = .false.
         Logical:: is_within = .false.
         Logical:: is_saddle_or_peak = .false.
         Logical:: is_line_search = .false.
         Integer(kind=int64):: dim
         Integer(kind=int64):: iter = 0
         Real(kind=real32):: base_step_size = -1
         Real(kind=real32), allocatable:: x(:)
         Real(kind=real32), allocatable:: x_prev(:)
         Real(kind=real32):: f_prev
         Real(kind=real32), allocatable:: g_prev(:)
      end type NewtonState32
      type, public:: LineSearchState32_0
         Logical:: is_convex = .false.
         Logical:: is_within = .false.
         Integer(kind=int64):: iter = 0
         Real(kind=real32):: dx
         Real(kind=real32):: x
         Real(kind=real32):: xl
         Real(kind=real32):: xr
         Real(kind=real32):: fl
         Real(kind=real32):: fr
      end type LineSearchState32_0
      type, public:: LineSearchState32_1
         Logical:: is_convex = .false.
         Logical:: is_within = .false.
         Integer(kind=int64):: iter = 0
         Real(kind=real32):: dx
         Real(kind=real32):: x
         Real(kind=real32):: x_best
         Real(kind=real32):: f_best
         Real(kind=real32):: g_best
      end type LineSearchState32_1
      type, public:: BoundNewtonState64
         Logical:: is_convex = .false.
         Logical:: is_within = .false.
         Logical:: is_saddle_or_peak = .false.
         Logical:: is_at_corner = .false.
         Logical:: is_line_search = .false.
         Integer(kind=int64):: dim
         Integer(kind=int64):: iter = 0
         Real(kind=real64):: base_step_size = -1
         Real(kind=real64), allocatable:: x(:)
         Real(kind=real64), allocatable:: x_prev(:)
         Real(kind=real64):: f_prev
         Real(kind=real64), allocatable:: g_prev(:)
         Real(kind=real64), allocatable:: lower(:)
         Real(kind=real64), allocatable:: upper(:)
         Logical, allocatable:: on_lower(:)
         Logical, allocatable:: on_upper(:)
         Logical, allocatable:: on_lower_prev(:)
         Logical, allocatable:: on_upper_prev(:)
      end type BoundNewtonState64
      type, public:: NewtonState64
         Logical:: is_convex = .false.
         Logical:: is_within = .false.
         Logical:: is_saddle_or_peak = .false.
         Logical:: is_line_search = .false.
         Integer(kind=int64):: dim
         Integer(kind=int64):: iter = 0
         Real(kind=real64):: base_step_size = -1
         Real(kind=real64), allocatable:: x(:)
         Real(kind=real64), allocatable:: x_prev(:)
         Real(kind=real64):: f_prev
         Real(kind=real64), allocatable:: g_prev(:)
      end type NewtonState64
      type, public:: LineSearchState64_0
         Logical:: is_convex = .false.
         Logical:: is_within = .false.
         Integer(kind=int64):: iter = 0
         Real(kind=real64):: dx
         Real(kind=real64):: x
         Real(kind=real64):: xl
         Real(kind=real64):: xr
         Real(kind=real64):: fl
         Real(kind=real64):: fr
      end type LineSearchState64_0
      type, public:: LineSearchState64_1
         Logical:: is_convex = .false.
         Logical:: is_within = .false.
         Integer(kind=int64):: iter = 0
         Real(kind=real64):: dx
         Real(kind=real64):: x
         Real(kind=real64):: x_best
         Real(kind=real64):: f_best
         Real(kind=real64):: g_best
      end type LineSearchState64_1
      interface update
         module procedure updateNewtonState32
         module procedure updateNewtonState_32
         module procedure updateBoundNewtonState32
         module procedure updateBoundNewtonState_32
      end interface update
      interface update_
         module procedure update_NewtonState32
         module procedure update_BoundNewtonState32
      end interface update_
      interface restrict_step_size
         module procedure restrict_step_size32
      end interface restrict_step_size
      interface init
         module procedure initNewtonState32
         module procedure initBoundNewtonState32
      end interface init
      interface adaptive_steepest_descent
         module procedure adaptive_steepest_descent32
      end interface adaptive_steepest_descent
      interface newton
         module procedure newton32
      end interface newton
      interface syevd
         module procedure syevd32
      end interface syevd
         interface update
            module procedure updateLineSearchState32_0
         end interface update
         interface update_
            module procedure update_LineSearchState32_0
         end interface update_
         interface init
            module procedure initLineSearchState32_0
         end interface init
         interface line_search_interpolate
            module procedure line_search_interpolate32_0
         end interface line_search_interpolate
         interface update
            module procedure updateLineSearchState32_1
         end interface update
         interface update_
            module procedure update_LineSearchState32_1
         end interface update_
         interface init
            module procedure initLineSearchState32_1
         end interface init
         interface line_search_interpolate
            module procedure line_search_interpolate32_1
         end interface line_search_interpolate
      interface nnls
         module procedure nnls32
      end interface nnls
      interface update
         module procedure updateNewtonState64
         module procedure updateNewtonState_64
         module procedure updateBoundNewtonState64
         module procedure updateBoundNewtonState_64
      end interface update
      interface update_
         module procedure update_NewtonState64
         module procedure update_BoundNewtonState64
      end interface update_
      interface restrict_step_size
         module procedure restrict_step_size64
      end interface restrict_step_size
      interface init
         module procedure initNewtonState64
         module procedure initBoundNewtonState64
      end interface init
      interface adaptive_steepest_descent
         module procedure adaptive_steepest_descent64
      end interface adaptive_steepest_descent
      interface newton
         module procedure newton64
      end interface newton
      interface syevd
         module procedure syevd64
      end interface syevd
         interface update
            module procedure updateLineSearchState64_0
         end interface update
         interface update_
            module procedure update_LineSearchState64_0
         end interface update_
         interface init
            module procedure initLineSearchState64_0
         end interface init
         interface line_search_interpolate
            module procedure line_search_interpolate64_0
         end interface line_search_interpolate
         interface update
            module procedure updateLineSearchState64_1
         end interface update
         interface update_
            module procedure update_LineSearchState64_1
         end interface update_
         interface init
            module procedure initLineSearchState64_1
         end interface init
         interface line_search_interpolate
            module procedure line_search_interpolate64_1
         end interface line_search_interpolate
      interface nnls
         module procedure nnls64
      end interface nnls
contains
      ! Newton
      subroutine updateNewtonState32(s, f, g, H, uplo)
         ! call init(s, x0, r)
         ! do
         ! call update(s, f(s%x), g(s%x), H(s%x), 'u')
         ! end do
         Real(kind=real32), parameter:: max_scale = 2
         type(NewtonState32), intent(inout):: s
         Real(kind=real32), intent(in):: f, g(s%dim), H(s%dim, s%dim)
         Character(len=1), intent(in):: uplo
        
         call update(s, f, g, H, uplo, max_scale)
      end subroutine updateNewtonState32
      subroutine updateNewtonState_32(s, f, g, H, uplo, max_scale)
         Real(kind=real32), parameter:: zero = 0
         type(NewtonState32), intent(inout):: s
         Real(kind=real32), intent(in):: f, g(s%dim), H(s%dim, s%dim)
         Character(len=1), intent(in):: uplo
         Real(kind=real32), intent(in):: max_scale
         Real(kind=real32):: r, r_new, dx(s%dim), dx_new(s%dim)
         if(s%iter < 1)then
            write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 316, ('`NewtonState32` should be `init`ialized before `update`d'); error stop
         end if
         s%iter = s%iter + 1
         dx(:) = s%x - s%x_prev
         s%is_line_search = f >= s%f_prev ! decreasing condition
         if(s%is_line_search)then
           
            r = norm2(dx)
            call line_search_interpolate(zero, s%f_prev, dot_product(dx, s%g_prev)/r, r, f, r_new, s%is_convex)
            if(.not.(s%is_convex))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 327, (".not.(s%is_convex)"); error stop; end if
           
           
            s%is_within = .true.
            call update_base_step_size32(s%base_step_size, r_new, max_scale)
            s%x(:) = s%x_prev + r_new/r*dx
            return
         end if
         call update_adaptive_steepest_descent32(g, H, uplo, s%is_convex, s%is_saddle_or_peak, s%is_within, dx_new)
         ! call update_newton32(g, H, uplo, s%is_convex, s%is_saddle_or_peak, s%is_within, dx_new)
         ! restrict step size based on s%base_step_size
         call restrict_step_size(dx_new, s%base_step_size/norm2(dx)*dx, max_scale, s%is_within)
         call update_base_step_size32(s%base_step_size, norm2(dx_new), max_scale)
         call update_(s, dx_new, f, g)
      end subroutine updateNewtonState_32
      subroutine updateBoundNewtonState32(s, f, g, H, uplo)
         ! call init(s, x0, r, lower, upper)
         ! do
         ! call update(s, f(s%x), g(s%x), H(s%x), 'u')
         ! end do
         Real(kind=real32), parameter:: max_scale = 2
         type(BoundNewtonState32), intent(inout):: s
         Real(kind=real32), intent(in):: f, g(s%dim), H(s%dim, s%dim)
         Character(len=1), intent(in):: uplo
        
         call update(s, f, g, H, uplo, max_scale)
      end subroutine updateBoundNewtonState32
      subroutine updateBoundNewtonState_32(s, f, g, H, uplo, max_scale)
         ! todo: refactoring
         Real(kind=real32), parameter:: zero = 0
         type(BoundNewtonState32), intent(inout):: s
         Real(kind=real32), intent(in):: f, g(s%dim), H(s%dim, s%dim)
         Character(len=1), intent(in):: uplo
         Real(kind=real32), intent(in):: max_scale
         Real(kind=real32):: r, r_new, dx(s%dim)
         Real(kind=real32), allocatable:: dx_new(:)
         Integer(kind=int64):: one_to_dim(s%dim)
         Integer(kind=int64), allocatable:: bound_indices(:), bound_indices_list(:, :)
         Integer(kind=int64):: i_bound_indices_list, n_active_bounds
         Real(kind=real32), allocatable:: g_(:), H_(:, :)
         Real(kind=real32):: c
         Logical:: active_bounds(s%dim)
         Logical:: on_bound(s%dim)
         if(.not.(all(s%lower <= s%x) .and. all(s%x <= s%upper)))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 379, (".not.(all(s%lower <= s%x) .and. all(s%x <= s%upper))"); error stop; end if
         if(.not.(.not.any(s%on_lower .and. s%on_upper)))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 380, (".not.(.not.any(s%on_lower .and. s%on_upper))"); error stop; end if
         if(.not.(all(pack(almost_equal(s%x, s%lower), s%on_lower))))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 381, (".not.(all(pack(almost_equal(s%x, s%lower), s%on_lower)))"); error stop; end if
         if(.not.(all(pack(almost_equal(s%x, s%upper), s%on_upper))))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 382, (".not.(all(pack(almost_equal(s%x, s%upper), s%on_upper)))"); error stop; end if
         if(s%iter < 1)then
            write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 384, ('`BoundNewtonState32` should be `init`ialized before `update`d'); error stop
         end if
         s%iter = s%iter + 1
         dx = s%x - s%x_prev
         s%is_line_search = f >= s%f_prev ! decreasing condition
         if(s%is_line_search)then
            r = norm2(dx)
            call line_search_interpolate(zero, s%f_prev, dot_product(dx, s%g_prev)/r, r, f, r_new, s%is_convex)
            if(.not.(s%is_convex))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 394, (".not.(s%is_convex)"); error stop; end if
           
           
            s%is_within = .true.
            c = r_new/r
            if(.not.(c < 1))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 399, (".not.(c < 1)"); error stop; end if
            s%on_lower = s%on_lower .and. s%on_lower_prev
            s%on_upper = s%on_upper .and. s%on_upper_prev
            s%x(:) = s%x_prev + c*dx
            call update_base_step_size32(s%base_step_size, r_new, max_scale)
            call adjust_active_bounds32(s)
            return
         end if
         one_to_dim = iota(1, s%dim)
         active_bounds = .false.
         allocate(dx_new(s%dim))
         call update_adaptive_steepest_descent32(g, H, uplo, s%is_convex, s%is_saddle_or_peak, s%is_within, dx_new)
         ! call update_newton32(g, H, uplo, s%is_convex, s%is_saddle_or_peak, s%is_within, dx_new)
         if(any(still_on_bound32(s%lower, s%upper, s%on_lower, s%on_upper, .false., s%x + dx_new)))then
            on_bound(:) = s%on_lower .or. s%on_upper
            bound_indices = pack(one_to_dim, on_bound)
            ! increase number of active bounds
            n_active_bounds_loop: do n_active_bounds = 1, count(on_bound, kind=kind(n_active_bounds))
               if(n_active_bounds == s%dim)then
                  if(allocated(dx_new)) deallocate(dx_new)
                  allocate(dx_new(s%dim))
                  dx_new = 0
                  s%is_at_corner = .true.
                  call update_(s, dx_new, f, g)
                  return
               end if
               bound_indices_list = combinations(bound_indices, n_active_bounds)
               ! Try all combinations where `n_active_bounds` bounds are active
               do i_bound_indices_list = 1, size(bound_indices_list, 2, kind=kind(i_bound_indices_list))
                  active_bounds = mask_indices(bound_indices_list(:, i_bound_indices_list), s%dim)
                  call pack_active_bounds32(g, H, active_bounds, g_, H_)
                  deallocate(dx_new)
                  allocate(dx_new(s%dim - count(active_bounds)))
                  call update_adaptive_steepest_descent32(g_, H_, uplo, s%is_convex, s%is_saddle_or_peak, s%is_within, dx_new)
                  ! call update_newton32(g_, H_, uplo, s%is_convex, s%is_saddle_or_peak, s%is_within, dx_new)
                  call unpack_active_bounds32(dx_new, active_bounds)
                  ! todo: choose active bounds based on expected reduction
                  if(.not.any(still_on_bound32(s%lower, s%upper, s%on_lower, s%on_upper, active_bounds, s%x + dx_new))) exit n_active_bounds_loop
               end do
            end do n_active_bounds_loop
         end if
         ! restrict step size based on s%base_step_size
         call restrict_step_size(dx_new, s%base_step_size/norm2(dx)*dx, max_scale, s%is_within)
         s%on_lower_prev = s%on_lower
         s%on_upper_prev = s%on_upper
         call bound_constraint32(dx_new, s%x, s%lower, s%upper, s%on_lower, s%on_upper, active_bounds)
         call update_base_step_size32(s%base_step_size, norm2(dx_new), max_scale)
         call update_(s, dx_new, f, g)
      end subroutine updateBoundNewtonState_32
      subroutine bound_constraint32(dx, x, lower, upper, on_lower, on_upper, active_bounds)
         Real(kind=real32), intent(inout):: dx(:)
         Real(kind=kind(dx)), intent(in):: x(size(dx, kind=int64)), lower(size(dx, kind=int64)), upper(size(dx, kind=int64))
         Logical, intent(inout):: on_lower(size(lower, kind=int64)), on_upper(size(upper, kind=int64))
         Logical, intent(in):: active_bounds(size(dx, kind=int64))
         Logical:: on_lower_new(size(on_lower, kind=int64)), on_upper_new(size(on_upper, kind=int64))
         ! Multiple variables can reach bounds in the same iteration.
         ! However, `c == c_min` may not hold due to rounding error.
         ! In such cases, `c` (hopefully) becomes 0 at the next iteration.
         ! We should treat those "missed" bounds separately.
         Logical:: on_lower_missed(size(on_lower, kind=int64)), on_upper_missed(size(on_upper, kind=int64))
         Real(kind=kind(dx)):: c, c_min, xi, xi_new, dxi, x_new(size(x, kind=int64))
         Integer(kind=int64):: i, n
         if(.not.(.not.any((.not.(on_lower .or. on_upper)) .and. active_bounds)))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 465, (".not.(.not.any((.not.(on_lower .or. on_upper)) .and. active_bounds))"); error stop; end if
         n = size(dx, kind=kind(n))
         on_lower = on_lower .and. active_bounds
         on_upper = on_upper .and. active_bounds
         c = 1
         c_min = c
         on_lower_new = .false.
         on_upper_new = .false.
         on_lower_missed = .false.
         on_upper_missed = .false.
         do i = 1, n
            if(on_lower(i) .or. on_upper(i)) cycle
            xi = x(i)
            dxi = dx(i)
            xi_new = xi + dxi
            if(xi_new <= lower(i))then
               c = (lower(i) - xi)/dxi
               if(c <= 0)then
                  on_lower_missed(i) = .true.
               else if(c < c_min)then
                  on_lower_new = .false.
                  on_upper_new = .false.
                  on_lower_new(i) = .true.
                  c_min = c
               else if(c == c_min)then
                  on_lower_new(i) = .true.
               end if
            else if(xi_new >= upper(i))then
               c = (upper(i) - xi)/dxi
               if(c <= 0)then
                  on_upper_missed(i) = .true.
               else if(c < c_min)then
                  on_lower_new = .false.
                  on_upper_new = .false.
                  on_upper_new(i) = .true.
                  c_min = c
               else if(c == c_min)then
                  on_upper_new(i) = .true.
               end if
            end if
         end do
         if(.not.(c_min > 0))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 506, (".not.(c_min > 0)"); error stop; end if
         dx = c_min*dx
         x_new = x + dx
         on_lower = on_lower .or. on_lower_new .or. on_lower_missed .or. x_new <= lower
         on_upper = on_upper .or. on_upper_new .or. on_upper_missed .or. x_new >= upper
      end subroutine bound_constraint32
      subroutine unpack_active_bounds32(dx_new, active_bounds)
         Real(kind=real32), allocatable, intent(inout):: dx_new(:)
         Logical, intent(in):: active_bounds(:)
         Real(kind=kind(dx_new)):: buf(size(dx_new, kind=int64))
         Integer(kind=int64):: i, ii, n
         buf = dx_new
         n = size(active_bounds, kind=kind(n))
         deallocate(dx_new)
         allocate(dx_new(n))
         ii = 1
         do i = 1, n
            if(active_bounds(i))then
               dx_new(i) = 0
            else
               dx_new(i) = buf(ii)
               ii = ii + 1
            end if
         end do
      end subroutine unpack_active_bounds32
      subroutine pack_active_bounds32(g, H, active_bounds, g_, H_)
         Real(kind=real32), intent(in):: g(:), H(size(g, kind=int64), size(g, kind=int64))
         Logical, intent(in):: active_bounds(size(g, kind=int64))
         Real(kind=real32), allocatable, intent(inout):: g_(:), H_(:, :)
         Integer(kind=int64):: j, jj, n, m
         n = size(g, kind=kind(n))
         m = n - count(active_bounds, kind=kind(n))
         g_ = pack(g, .not.active_bounds)
         if(allocated(H_)) deallocate(H_)
         allocate(H_(m, m))
         jj = 1
         do j = 1, n
            if(active_bounds(j)) cycle
            H_(:, jj) = pack(H(:, j), .not.active_bounds)
            jj = jj + 1
         end do
         if(.not.(jj == m + 1))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 553, (".not.(jj == m + 1)"); error stop; end if
      end subroutine pack_active_bounds32
      elemental function still_on_bound32(lower, upper, on_lower, on_upper, ignore, x) result(ret)
         Real(kind=real32), intent(in):: lower, upper, x
         Logical, intent(in):: on_lower, on_upper, ignore
         Logical:: ret
         ret = (.not. ignore) .and. ((on_lower .and. x <= lower) .or. (on_upper .and. x >= upper))
      end function still_on_bound32
      subroutine update_adaptive_steepest_descent32(g, H, uplo, is_convex, is_saddle_or_peak, is_within, dx)
         Real(kind=real32), intent(in):: g(:), H(size(g, kind=int64), size(g, kind=int64))
         Character(len=1), intent(in):: uplo
         Logical, intent(out):: is_convex, is_saddle_or_peak, is_within
         Real(kind=real32), intent(out):: dx(size(g, kind=int64))
         call adaptive_steepest_descent(uplo, g, H, dx, is_convex, is_saddle_or_peak)
         is_within = is_convex
      end subroutine update_adaptive_steepest_descent32
      subroutine update_newton32(g, H, uplo, is_convex, is_saddle_or_peak, is_within, dx)
         Real(kind=real32), intent(in):: g(:), H(size(g, kind=int64), size(g, kind=int64))
         Character(len=1), intent(in):: uplo
         Logical, intent(out):: is_convex, is_saddle_or_peak, is_within
         Real(kind=real32), intent(out):: dx(size(g, kind=int64))
         call newton(uplo, g, H, dx, is_convex)
         is_within = .true.
         if(is_convex) return
         is_saddle_or_peak = norm2(g) <= 0
         if(is_saddle_or_peak)then
           
            dx = 0
         end if
         dx = -g/2
         is_within = .false.
      end subroutine update_newton32
      subroutine update_NewtonState32(s, dx_new, f, g)
         type(NewtonState32), intent(inout):: s
         Real(kind=real32), intent(in):: dx_new(s%dim), f, g(s%dim)
         s%x_prev(:) = s%x
         s%x(:) = s%x_prev + dx_new
         s%f_prev = f
         s%g_prev(:) = g
      end subroutine update_NewtonState32
      subroutine update_BoundNewtonState32(s, dx_new, f, g)
         type(BoundNewtonState32), intent(inout):: s
         Real(kind=real32), intent(in):: dx_new(s%dim), f, g(s%dim)
         s%x_prev(:) = s%x
         s%x(:) = s%x_prev + dx_new
         call adjust_active_bounds32(s)
         s%f_prev = f
         s%g_prev(:) = g
      end subroutine update_BoundNewtonState32
      subroutine update_base_step_size32(base_step_size, r_new, max_scale)
         Real(kind=real32), intent(inout):: base_step_size
         Real(kind=real32), intent(in):: r_new, max_scale
         base_step_size = max(base_step_size/(2*max_scale), r_new)
      end subroutine update_base_step_size32
      subroutine adjust_active_bounds32(s)
         type(BoundNewtonState32), intent(inout):: s
         where(s%on_lower)
            s%x = s%lower
         elsewhere(s%on_upper)
            s%x = s%upper
         end where
      end subroutine adjust_active_bounds32
      subroutine restrict_step_size32(dx, dx_prev, max_scale, is_within)
         Real(kind=real32), intent(inout):: dx(:)
         Real(kind=real32), intent(in):: dx_prev(size(dx, kind=int64))
         Real(kind=real32), intent(in):: max_scale
         Logical, intent(out):: is_within
         Real(kind=real32):: r, r_prev, c
         r_prev = norm2(dx_prev)
         r = norm2(dx)
         if(r > max_scale*r_prev)then
            dx(:) = max_scale*r_prev/r*dx
            is_within = .false.
         end if
         c = dot_product(dx_prev, dx)/r_prev
         if(c < -r_prev/2)then
            dx(:) = -r_prev/(2*c)*dx
            is_within = .false.
         end if
      end subroutine restrict_step_size32
      subroutine initNewtonState32(s, x0, r)
         type(NewtonState32), intent(out):: s
         Real(kind=real32), intent(in):: x0(:) ! initial solution
         Real(kind=real32), intent(in):: r ! initial step length
         if(.not.(r > 0))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 662, (".not.(r > 0)"); error stop; end if
         s%iter = 1
         s%dim = size(x0, kind=kind(s%dim))
         s%base_step_size = r
         s%x = x0
         s%x_prev = s%x - sqrt(r/s%dim)
         s%f_prev = get_infinity()
         allocate(s%g_prev(s%dim))
         s%g_prev(:) = 0
      end subroutine initNewtonState32
      subroutine initBoundNewtonState32(s, x0, r, lower, upper)
         type(BoundNewtonState32), intent(out):: s
         Real(kind=real32), intent(in):: x0(:) ! initial solution
         Real(kind=real32), intent(in):: r ! initial step length
         Real(kind=real32), intent(in):: lower(size(x0, kind=int64))
         Real(kind=real32), intent(in):: upper(size(x0, kind=int64))
         if(.not.(r > 0))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 681, (".not.(r > 0)"); error stop; end if
         if(.not.(all(lower < upper)))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 682, (".not.(all(lower < upper))"); error stop; end if
         if(.not.(all(lower <= x0) .and. all(x0 <= upper)))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 683, (".not.(all(lower <= x0) .and. all(x0 <= upper))"); error stop; end if
         s%iter = 1
         s%dim = size(x0, kind=kind(s%dim))
         s%base_step_size = r
         s%x = x0
         s%x_prev = s%x - r/sqrt(real(s%dim, kind=kind(r)))
         s%lower = lower
         s%upper = upper
         s%on_lower = s%x <= s%lower
         s%on_upper = s%upper <= s%x
         allocate(s%on_lower_prev(s%dim))
         allocate(s%on_upper_prev(s%dim))
         s%on_lower_prev(:) = .true.
         s%on_upper_prev(:) = .true.
         s%f_prev = get_infinity()
         allocate(s%g_prev(s%dim))
         s%g_prev(:) = 0
      end subroutine initBoundNewtonState32
      subroutine adaptive_steepest_descent32(uplo, g, H, dx, is_convex, is_saddle_or_peak)
         Integer(kind=int32), parameter:: nrhs = 1
         Character(len=1), intent(in):: uplo
         Real(kind=real32), intent(in):: g(:), H(size(g, kind=int64), size(g, kind=int64))
         Real(kind=kind(g)), intent(out):: dx(size(g, kind=int64))
         Logical, intent(out):: is_convex, is_saddle_or_peak
         Real(kind=kind(g)):: V(size(g, kind=int64), size(g, kind=int64)), e(size(g, kind=int64)), dx_0(size(g, kind=int64)), dx_scale(size(g, kind=int64)), Vi(size(g, kind=int64)), Vig
         Integer(kind=kind(nrhs)):: n, i, info
         n = size(dx, kind=kind(n))
         if(.not.(n > 0))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 714, (".not.(n > 0)"); error stop; end if
         V = H
         call syevd(uplo, V, e, info)
         if(info /= 0)then
            write(output_unit, *) 'H: ', H
            write(error_unit, *) 'info: ', info
            if(.not.(info == 0))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 721, (".not.(info == 0)"); error stop; end if
         end if
         if(.not.(info == 0))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 723, (".not.(info == 0)"); error stop; end if
         is_convex = e(1) > 0 ! `e` is sorted
         is_saddle_or_peak = (.not. is_convex) .and. norm2(g) <= 0
         if(is_saddle_or_peak)then
           
            if(e(1) < 0)then
              
               dx = V(:, 1)
            else
               dx = 0
            end if
            return
         end if
         dx_0 = 0
         dx_scale = 0
         do i = 1, n
            Vi = V(:, i)
            Vig = dot_product(Vi, g)
            if(e(i) == 0)then
               dx_0 = dx_0 - Vig*Vi
            else
               dx_scale = dx_scale - Vig/abs(e(i))*Vi
            end if
         end do
         dx = dx_scale
         if(norm2(dx_0) > 0)then ! this branch will not happen in practice
           
            if(norm2(dx_scale) > 0)then
              
               dx = dx + norm2(dx_scale)/(2*norm2(dx_0))*dx_0 ! 2 is a heuristics
            else
              
               dx = dx + dx_0
            end if
         end if
      end subroutine adaptive_steepest_descent32
      subroutine newton32(uplo, g, H, dx, is_convex)
         Integer(kind=int32), parameter:: nrhs = 1
         Character(len=1), intent(in):: uplo
         Real(kind=real32), intent(in):: g(:), H(size(g, kind=int64), size(g, kind=int64))
         Real(kind=real32), intent(out):: dx(size(g, kind=int64))
         Logical, intent(out):: is_convex
         Real(kind=real32):: A(size(g, kind=int64), size(g, kind=int64))
         Integer(kind=kind(nrhs)):: n, info
         n = size(dx, kind=kind(n))
         if(.not.(n > 0))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 772, (".not.(n > 0)"); error stop; end if
         A = H
         dx = -g
         call sposv(uplo, n, nrhs, A, n, dx, n, info)
         if(.not.(info >= 0))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 777, (".not.(info >= 0)"); error stop; end if
         is_convex = info == 0
      end subroutine newton32
      subroutine syevd32(uplo, H, e, info)
         Character(len=1), intent(in):: uplo
         Real(kind=real32), intent(inout):: H(:, :)
         Real(kind=real32), intent(out):: e(:)
         Integer(kind=kind(0)), intent(out):: info
         Real(kind=real32), allocatable:: work(:)
         Integer(kind=kind(info)), allocatable:: iwork(:)
         Integer(kind=kind(info)):: n, lwork, liwork
          n = size(H, 1, kind=kind(n))
         if(.not.(size(H, 2, kind=kind(n)) == n))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 792, (".not.(size(H, 2, kind=kind(n)) == n)"); error stop; end if
         if(.not.(size(e, kind=kind(n)) == n))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 793, (".not.(size(e, kind=kind(n)) == n)"); error stop; end if
         allocate(work(1))
         allocate(iwork(1))
         lwork = -1
         liwork = -1
         call ssyevd('v', uplo, n, H, n, e, work, lwork, iwork, liwork, info)
         lwork = nint(work(1), kind=kind(lwork))
         liwork = iwork(1)
         deallocate(work, iwork)
         allocate(work(lwork))
         allocate(iwork(liwork))
         call ssyevd('v', uplo, n, H, n, e, work, lwork, iwork, liwork, info)
      end subroutine syevd32
      ! derivative free
      subroutine updateLineSearchState32_0(s, f)
         ! call init(s, dx)
         ! do
         ! call update(s, f(x0 + s%x))
         ! end do
         type(LineSearchState32_0), intent(inout):: s
         Real(kind=real32), intent(in):: f
         Real(kind=real32):: x_new, x1, x2, x3, f1, f2, f3, step, xlim
         Real(kind=real32), parameter:: enlarge = real(5, kind=kind(enlarge))/4
         if(s%iter < 1)then
            write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 821, ('`LineSearchState32_0` should be `init`ialized before `update`d'); error stop
         end if
         s%iter = s%iter + 1
         if(s%iter == 2)then
            s%x = s%dx
            if(s%dx > 0)then
               s%fl = f
            else
               s%fr = f
            end if
            return
         else if(s%iter == 3)then
            if(s%dx > 0)then
               if(.not.(s%x > s%xl))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 834, (".not.(s%x > s%xl)"); error stop; end if
               s%xr = s%x
               s%fr = f
            else
               if(.not.(s%x < s%xr))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 838, (".not.(s%x < s%xr)"); error stop; end if
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
            if(.not.(s%x /= s%xl .and. s%x /= s%xr))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 851, (".not.(s%x /= s%xl .and. s%x /= s%xr)"); error stop; end if
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
      end subroutine updateLineSearchState32_0
      subroutine update_LineSearchState32_0(s, xl, xr, fl, fr)
         type(LineSearchState32_0), intent(inout):: s
         Real(kind=real32), intent(in):: xl, xr, fl, fr
         s%xl = xl
         s%xr = xr
         s%fl = fl
         s%fr = fr
      end subroutine update_LineSearchState32_0
      subroutine initLineSearchState32_0(s, dx)
         type(LineSearchState32_0), intent(out):: s
         Real(kind=real32), intent(in):: dx
         if(.not.(abs(dx) > 0))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 934, (".not.(abs(dx) > 0)"); error stop; end if
         s%iter = 1
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
      end subroutine initLineSearchState32_0
      subroutine line_search_interpolate32_0(x1, x2, x3, f1, f2, f3, x_opt, is_convex)
         Real(kind=real32), intent(in):: x1, x2, x3, f1, f2, f3
         Real(kind=real32), intent(out):: x_opt
         Logical, intent(out):: is_convex
         Real(kind=real32):: x12, x13, x23, f1x1213, f2x1223, f3x1323, a, b_neg
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
      end subroutine line_search_interpolate32_0
      ! use gradient information
      subroutine updateLineSearchState32_1(s, f, g)
         ! call init(s, dx)
         ! do
         ! call update(s, f(x0 + s%x), grad(x0 + s%x))
         ! end do
         type(LineSearchState32_1), intent(inout):: s
         Real(kind=real32), intent(in):: f, g
         Real(kind=real32):: x1, f1, g1, x2, f2, g2, step, xl, xr, x_new, xlim
         Real(kind=real32), parameter:: enlarge = 2
         if(s%iter < 1)then
            write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 993, ('`LineSearchState32_0` should be `init`ialized before `update`d'); error stop
         end if
         s%iter = s%iter + 1
         if(s%iter == 2)then
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
      end subroutine updateLineSearchState32_1
      subroutine update_LineSearchState32_1(s, x_best, f_best, g_best)
         type(LineSearchState32_1), intent(inout):: s
         Real(kind=real32), intent(in):: x_best, f_best, g_best
         s%x_best = x_best
         s%f_best = f_best
         s%g_best = g_best
      end subroutine update_LineSearchState32_1
      subroutine initLineSearchState32_1(s, dx)
         type(LineSearchState32_1), intent(out):: s
         Real(kind=real32), intent(in):: dx
         if(.not.(abs(dx) > 0))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1078, (".not.(abs(dx) > 0)"); error stop; end if
         s%iter = 1
         s%dx = dx
         s%x = 0
         s%x_best = get_infinity()
         s%f_best = get_infinity()
         s%g_best = get_infinity()
      end subroutine initLineSearchState32_1
      subroutine line_search_interpolate32_1(x1, f1, g1, x2, f2, x_new, is_convex)
         Real(kind=real32), intent(in):: x1, f1, g1, x2, f2
         Real(kind=real32), intent(out):: x_new
         Logical, intent(out):: is_convex
         Real(kind=real32):: x12, a
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
      end subroutine line_search_interpolate32_1
      pure function nnls32(A, b) result(ret)
         Real(kind=real32), intent(in):: A(:, :), b(:)
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
      end function nnls32
      ! Newton
      subroutine updateNewtonState64(s, f, g, H, uplo)
         ! call init(s, x0, r)
         ! do
         ! call update(s, f(s%x), g(s%x), H(s%x), 'u')
         ! end do
         Real(kind=real64), parameter:: max_scale = 2
         type(NewtonState64), intent(inout):: s
         Real(kind=real64), intent(in):: f, g(s%dim), H(s%dim, s%dim)
         Character(len=1), intent(in):: uplo
        
         call update(s, f, g, H, uplo, max_scale)
      end subroutine updateNewtonState64
      subroutine updateNewtonState_64(s, f, g, H, uplo, max_scale)
         Real(kind=real64), parameter:: zero = 0
         type(NewtonState64), intent(inout):: s
         Real(kind=real64), intent(in):: f, g(s%dim), H(s%dim, s%dim)
         Character(len=1), intent(in):: uplo
         Real(kind=real64), intent(in):: max_scale
         Real(kind=real64):: r, r_new, dx(s%dim), dx_new(s%dim)
         if(s%iter < 1)then
            write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1189, ('`NewtonState64` should be `init`ialized before `update`d'); error stop
         end if
         s%iter = s%iter + 1
         dx(:) = s%x - s%x_prev
         s%is_line_search = f >= s%f_prev ! decreasing condition
         if(s%is_line_search)then
           
            r = norm2(dx)
            call line_search_interpolate(zero, s%f_prev, dot_product(dx, s%g_prev)/r, r, f, r_new, s%is_convex)
            if(.not.(s%is_convex))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1200, (".not.(s%is_convex)"); error stop; end if
           
           
            s%is_within = .true.
            call update_base_step_size64(s%base_step_size, r_new, max_scale)
            s%x(:) = s%x_prev + r_new/r*dx
            return
         end if
         call update_adaptive_steepest_descent64(g, H, uplo, s%is_convex, s%is_saddle_or_peak, s%is_within, dx_new)
         ! call update_newton64(g, H, uplo, s%is_convex, s%is_saddle_or_peak, s%is_within, dx_new)
         ! restrict step size based on s%base_step_size
         call restrict_step_size(dx_new, s%base_step_size/norm2(dx)*dx, max_scale, s%is_within)
         call update_base_step_size64(s%base_step_size, norm2(dx_new), max_scale)
         call update_(s, dx_new, f, g)
      end subroutine updateNewtonState_64
      subroutine updateBoundNewtonState64(s, f, g, H, uplo)
         ! call init(s, x0, r, lower, upper)
         ! do
         ! call update(s, f(s%x), g(s%x), H(s%x), 'u')
         ! end do
         Real(kind=real64), parameter:: max_scale = 2
         type(BoundNewtonState64), intent(inout):: s
         Real(kind=real64), intent(in):: f, g(s%dim), H(s%dim, s%dim)
         Character(len=1), intent(in):: uplo
        
         call update(s, f, g, H, uplo, max_scale)
      end subroutine updateBoundNewtonState64
      subroutine updateBoundNewtonState_64(s, f, g, H, uplo, max_scale)
         ! todo: refactoring
         Real(kind=real64), parameter:: zero = 0
         type(BoundNewtonState64), intent(inout):: s
         Real(kind=real64), intent(in):: f, g(s%dim), H(s%dim, s%dim)
         Character(len=1), intent(in):: uplo
         Real(kind=real64), intent(in):: max_scale
         Real(kind=real64):: r, r_new, dx(s%dim)
         Real(kind=real64), allocatable:: dx_new(:)
         Integer(kind=int64):: one_to_dim(s%dim)
         Integer(kind=int64), allocatable:: bound_indices(:), bound_indices_list(:, :)
         Integer(kind=int64):: i_bound_indices_list, n_active_bounds
         Real(kind=real64), allocatable:: g_(:), H_(:, :)
         Real(kind=real64):: c
         Logical:: active_bounds(s%dim)
         Logical:: on_bound(s%dim)
         if(.not.(all(s%lower <= s%x) .and. all(s%x <= s%upper)))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1252, (".not.(all(s%lower <= s%x) .and. all(s%x <= s%upper))"); error stop; end if
         if(.not.(.not.any(s%on_lower .and. s%on_upper)))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1253, (".not.(.not.any(s%on_lower .and. s%on_upper))"); error stop; end if
         if(.not.(all(pack(almost_equal(s%x, s%lower), s%on_lower))))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1254, (".not.(all(pack(almost_equal(s%x, s%lower), s%on_lower)))"); error stop; end if
         if(.not.(all(pack(almost_equal(s%x, s%upper), s%on_upper))))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1255, (".not.(all(pack(almost_equal(s%x, s%upper), s%on_upper)))"); error stop; end if
         if(s%iter < 1)then
            write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1257, ('`BoundNewtonState64` should be `init`ialized before `update`d'); error stop
         end if
         s%iter = s%iter + 1
         dx = s%x - s%x_prev
         s%is_line_search = f >= s%f_prev ! decreasing condition
         if(s%is_line_search)then
            r = norm2(dx)
            call line_search_interpolate(zero, s%f_prev, dot_product(dx, s%g_prev)/r, r, f, r_new, s%is_convex)
            if(.not.(s%is_convex))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1267, (".not.(s%is_convex)"); error stop; end if
           
           
            s%is_within = .true.
            c = r_new/r
            if(.not.(c < 1))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1272, (".not.(c < 1)"); error stop; end if
            s%on_lower = s%on_lower .and. s%on_lower_prev
            s%on_upper = s%on_upper .and. s%on_upper_prev
            s%x(:) = s%x_prev + c*dx
            call update_base_step_size64(s%base_step_size, r_new, max_scale)
            call adjust_active_bounds64(s)
            return
         end if
         one_to_dim = iota(1, s%dim)
         active_bounds = .false.
         allocate(dx_new(s%dim))
         call update_adaptive_steepest_descent64(g, H, uplo, s%is_convex, s%is_saddle_or_peak, s%is_within, dx_new)
         ! call update_newton64(g, H, uplo, s%is_convex, s%is_saddle_or_peak, s%is_within, dx_new)
         if(any(still_on_bound64(s%lower, s%upper, s%on_lower, s%on_upper, .false., s%x + dx_new)))then
            on_bound(:) = s%on_lower .or. s%on_upper
            bound_indices = pack(one_to_dim, on_bound)
            ! increase number of active bounds
            n_active_bounds_loop: do n_active_bounds = 1, count(on_bound, kind=kind(n_active_bounds))
               if(n_active_bounds == s%dim)then
                  if(allocated(dx_new)) deallocate(dx_new)
                  allocate(dx_new(s%dim))
                  dx_new = 0
                  s%is_at_corner = .true.
                  call update_(s, dx_new, f, g)
                  return
               end if
               bound_indices_list = combinations(bound_indices, n_active_bounds)
               ! Try all combinations where `n_active_bounds` bounds are active
               do i_bound_indices_list = 1, size(bound_indices_list, 2, kind=kind(i_bound_indices_list))
                  active_bounds = mask_indices(bound_indices_list(:, i_bound_indices_list), s%dim)
                  call pack_active_bounds64(g, H, active_bounds, g_, H_)
                  deallocate(dx_new)
                  allocate(dx_new(s%dim - count(active_bounds)))
                  call update_adaptive_steepest_descent64(g_, H_, uplo, s%is_convex, s%is_saddle_or_peak, s%is_within, dx_new)
                  ! call update_newton64(g_, H_, uplo, s%is_convex, s%is_saddle_or_peak, s%is_within, dx_new)
                  call unpack_active_bounds64(dx_new, active_bounds)
                  ! todo: choose active bounds based on expected reduction
                  if(.not.any(still_on_bound64(s%lower, s%upper, s%on_lower, s%on_upper, active_bounds, s%x + dx_new))) exit n_active_bounds_loop
               end do
            end do n_active_bounds_loop
         end if
         ! restrict step size based on s%base_step_size
         call restrict_step_size(dx_new, s%base_step_size/norm2(dx)*dx, max_scale, s%is_within)
         s%on_lower_prev = s%on_lower
         s%on_upper_prev = s%on_upper
         call bound_constraint64(dx_new, s%x, s%lower, s%upper, s%on_lower, s%on_upper, active_bounds)
         call update_base_step_size64(s%base_step_size, norm2(dx_new), max_scale)
         call update_(s, dx_new, f, g)
      end subroutine updateBoundNewtonState_64
      subroutine bound_constraint64(dx, x, lower, upper, on_lower, on_upper, active_bounds)
         Real(kind=real64), intent(inout):: dx(:)
         Real(kind=kind(dx)), intent(in):: x(size(dx, kind=int64)), lower(size(dx, kind=int64)), upper(size(dx, kind=int64))
         Logical, intent(inout):: on_lower(size(lower, kind=int64)), on_upper(size(upper, kind=int64))
         Logical, intent(in):: active_bounds(size(dx, kind=int64))
         Logical:: on_lower_new(size(on_lower, kind=int64)), on_upper_new(size(on_upper, kind=int64))
         ! Multiple variables can reach bounds in the same iteration.
         ! However, `c == c_min` may not hold due to rounding error.
         ! In such cases, `c` (hopefully) becomes 0 at the next iteration.
         ! We should treat those "missed" bounds separately.
         Logical:: on_lower_missed(size(on_lower, kind=int64)), on_upper_missed(size(on_upper, kind=int64))
         Real(kind=kind(dx)):: c, c_min, xi, xi_new, dxi, x_new(size(x, kind=int64))
         Integer(kind=int64):: i, n
         if(.not.(.not.any((.not.(on_lower .or. on_upper)) .and. active_bounds)))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1338, (".not.(.not.any((.not.(on_lower .or. on_upper)) .and. active_bounds))"); error stop; end if
         n = size(dx, kind=kind(n))
         on_lower = on_lower .and. active_bounds
         on_upper = on_upper .and. active_bounds
         c = 1
         c_min = c
         on_lower_new = .false.
         on_upper_new = .false.
         on_lower_missed = .false.
         on_upper_missed = .false.
         do i = 1, n
            if(on_lower(i) .or. on_upper(i)) cycle
            xi = x(i)
            dxi = dx(i)
            xi_new = xi + dxi
            if(xi_new <= lower(i))then
               c = (lower(i) - xi)/dxi
               if(c <= 0)then
                  on_lower_missed(i) = .true.
               else if(c < c_min)then
                  on_lower_new = .false.
                  on_upper_new = .false.
                  on_lower_new(i) = .true.
                  c_min = c
               else if(c == c_min)then
                  on_lower_new(i) = .true.
               end if
            else if(xi_new >= upper(i))then
               c = (upper(i) - xi)/dxi
               if(c <= 0)then
                  on_upper_missed(i) = .true.
               else if(c < c_min)then
                  on_lower_new = .false.
                  on_upper_new = .false.
                  on_upper_new(i) = .true.
                  c_min = c
               else if(c == c_min)then
                  on_upper_new(i) = .true.
               end if
            end if
         end do
         if(.not.(c_min > 0))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1379, (".not.(c_min > 0)"); error stop; end if
         dx = c_min*dx
         x_new = x + dx
         on_lower = on_lower .or. on_lower_new .or. on_lower_missed .or. x_new <= lower
         on_upper = on_upper .or. on_upper_new .or. on_upper_missed .or. x_new >= upper
      end subroutine bound_constraint64
      subroutine unpack_active_bounds64(dx_new, active_bounds)
         Real(kind=real64), allocatable, intent(inout):: dx_new(:)
         Logical, intent(in):: active_bounds(:)
         Real(kind=kind(dx_new)):: buf(size(dx_new, kind=int64))
         Integer(kind=int64):: i, ii, n
         buf = dx_new
         n = size(active_bounds, kind=kind(n))
         deallocate(dx_new)
         allocate(dx_new(n))
         ii = 1
         do i = 1, n
            if(active_bounds(i))then
               dx_new(i) = 0
            else
               dx_new(i) = buf(ii)
               ii = ii + 1
            end if
         end do
      end subroutine unpack_active_bounds64
      subroutine pack_active_bounds64(g, H, active_bounds, g_, H_)
         Real(kind=real64), intent(in):: g(:), H(size(g, kind=int64), size(g, kind=int64))
         Logical, intent(in):: active_bounds(size(g, kind=int64))
         Real(kind=real64), allocatable, intent(inout):: g_(:), H_(:, :)
         Integer(kind=int64):: j, jj, n, m
         n = size(g, kind=kind(n))
         m = n - count(active_bounds, kind=kind(n))
         g_ = pack(g, .not.active_bounds)
         if(allocated(H_)) deallocate(H_)
         allocate(H_(m, m))
         jj = 1
         do j = 1, n
            if(active_bounds(j)) cycle
            H_(:, jj) = pack(H(:, j), .not.active_bounds)
            jj = jj + 1
         end do
         if(.not.(jj == m + 1))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1426, (".not.(jj == m + 1)"); error stop; end if
      end subroutine pack_active_bounds64
      elemental function still_on_bound64(lower, upper, on_lower, on_upper, ignore, x) result(ret)
         Real(kind=real64), intent(in):: lower, upper, x
         Logical, intent(in):: on_lower, on_upper, ignore
         Logical:: ret
         ret = (.not. ignore) .and. ((on_lower .and. x <= lower) .or. (on_upper .and. x >= upper))
      end function still_on_bound64
      subroutine update_adaptive_steepest_descent64(g, H, uplo, is_convex, is_saddle_or_peak, is_within, dx)
         Real(kind=real64), intent(in):: g(:), H(size(g, kind=int64), size(g, kind=int64))
         Character(len=1), intent(in):: uplo
         Logical, intent(out):: is_convex, is_saddle_or_peak, is_within
         Real(kind=real64), intent(out):: dx(size(g, kind=int64))
         call adaptive_steepest_descent(uplo, g, H, dx, is_convex, is_saddle_or_peak)
         is_within = is_convex
      end subroutine update_adaptive_steepest_descent64
      subroutine update_newton64(g, H, uplo, is_convex, is_saddle_or_peak, is_within, dx)
         Real(kind=real64), intent(in):: g(:), H(size(g, kind=int64), size(g, kind=int64))
         Character(len=1), intent(in):: uplo
         Logical, intent(out):: is_convex, is_saddle_or_peak, is_within
         Real(kind=real64), intent(out):: dx(size(g, kind=int64))
         call newton(uplo, g, H, dx, is_convex)
         is_within = .true.
         if(is_convex) return
         is_saddle_or_peak = norm2(g) <= 0
         if(is_saddle_or_peak)then
           
            dx = 0
         end if
         dx = -g/2
         is_within = .false.
      end subroutine update_newton64
      subroutine update_NewtonState64(s, dx_new, f, g)
         type(NewtonState64), intent(inout):: s
         Real(kind=real64), intent(in):: dx_new(s%dim), f, g(s%dim)
         s%x_prev(:) = s%x
         s%x(:) = s%x_prev + dx_new
         s%f_prev = f
         s%g_prev(:) = g
      end subroutine update_NewtonState64
      subroutine update_BoundNewtonState64(s, dx_new, f, g)
         type(BoundNewtonState64), intent(inout):: s
         Real(kind=real64), intent(in):: dx_new(s%dim), f, g(s%dim)
         s%x_prev(:) = s%x
         s%x(:) = s%x_prev + dx_new
         call adjust_active_bounds64(s)
         s%f_prev = f
         s%g_prev(:) = g
      end subroutine update_BoundNewtonState64
      subroutine update_base_step_size64(base_step_size, r_new, max_scale)
         Real(kind=real64), intent(inout):: base_step_size
         Real(kind=real64), intent(in):: r_new, max_scale
         base_step_size = max(base_step_size/(2*max_scale), r_new)
      end subroutine update_base_step_size64
      subroutine adjust_active_bounds64(s)
         type(BoundNewtonState64), intent(inout):: s
         where(s%on_lower)
            s%x = s%lower
         elsewhere(s%on_upper)
            s%x = s%upper
         end where
      end subroutine adjust_active_bounds64
      subroutine restrict_step_size64(dx, dx_prev, max_scale, is_within)
         Real(kind=real64), intent(inout):: dx(:)
         Real(kind=real64), intent(in):: dx_prev(size(dx, kind=int64))
         Real(kind=real64), intent(in):: max_scale
         Logical, intent(out):: is_within
         Real(kind=real64):: r, r_prev, c
         r_prev = norm2(dx_prev)
         r = norm2(dx)
         if(r > max_scale*r_prev)then
            dx(:) = max_scale*r_prev/r*dx
            is_within = .false.
         end if
         c = dot_product(dx_prev, dx)/r_prev
         if(c < -r_prev/2)then
            dx(:) = -r_prev/(2*c)*dx
            is_within = .false.
         end if
      end subroutine restrict_step_size64
      subroutine initNewtonState64(s, x0, r)
         type(NewtonState64), intent(out):: s
         Real(kind=real64), intent(in):: x0(:) ! initial solution
         Real(kind=real64), intent(in):: r ! initial step length
         if(.not.(r > 0))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1535, (".not.(r > 0)"); error stop; end if
         s%iter = 1
         s%dim = size(x0, kind=kind(s%dim))
         s%base_step_size = r
         s%x = x0
         s%x_prev = s%x - sqrt(r/s%dim)
         s%f_prev = get_infinity()
         allocate(s%g_prev(s%dim))
         s%g_prev(:) = 0
      end subroutine initNewtonState64
      subroutine initBoundNewtonState64(s, x0, r, lower, upper)
         type(BoundNewtonState64), intent(out):: s
         Real(kind=real64), intent(in):: x0(:) ! initial solution
         Real(kind=real64), intent(in):: r ! initial step length
         Real(kind=real64), intent(in):: lower(size(x0, kind=int64))
         Real(kind=real64), intent(in):: upper(size(x0, kind=int64))
         if(.not.(r > 0))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1554, (".not.(r > 0)"); error stop; end if
         if(.not.(all(lower < upper)))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1555, (".not.(all(lower < upper))"); error stop; end if
         if(.not.(all(lower <= x0) .and. all(x0 <= upper)))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1556, (".not.(all(lower <= x0) .and. all(x0 <= upper))"); error stop; end if
         s%iter = 1
         s%dim = size(x0, kind=kind(s%dim))
         s%base_step_size = r
         s%x = x0
         s%x_prev = s%x - r/sqrt(real(s%dim, kind=kind(r)))
         s%lower = lower
         s%upper = upper
         s%on_lower = s%x <= s%lower
         s%on_upper = s%upper <= s%x
         allocate(s%on_lower_prev(s%dim))
         allocate(s%on_upper_prev(s%dim))
         s%on_lower_prev(:) = .true.
         s%on_upper_prev(:) = .true.
         s%f_prev = get_infinity()
         allocate(s%g_prev(s%dim))
         s%g_prev(:) = 0
      end subroutine initBoundNewtonState64
      subroutine adaptive_steepest_descent64(uplo, g, H, dx, is_convex, is_saddle_or_peak)
         Integer(kind=int32), parameter:: nrhs = 1
         Character(len=1), intent(in):: uplo
         Real(kind=real64), intent(in):: g(:), H(size(g, kind=int64), size(g, kind=int64))
         Real(kind=kind(g)), intent(out):: dx(size(g, kind=int64))
         Logical, intent(out):: is_convex, is_saddle_or_peak
         Real(kind=kind(g)):: V(size(g, kind=int64), size(g, kind=int64)), e(size(g, kind=int64)), dx_0(size(g, kind=int64)), dx_scale(size(g, kind=int64)), Vi(size(g, kind=int64)), Vig
         Integer(kind=kind(nrhs)):: n, i, info
         n = size(dx, kind=kind(n))
         if(.not.(n > 0))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1587, (".not.(n > 0)"); error stop; end if
         V = H
         call syevd(uplo, V, e, info)
         if(info /= 0)then
            write(output_unit, *) 'H: ', H
            write(error_unit, *) 'info: ', info
            if(.not.(info == 0))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1594, (".not.(info == 0)"); error stop; end if
         end if
         if(.not.(info == 0))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1596, (".not.(info == 0)"); error stop; end if
         is_convex = e(1) > 0 ! `e` is sorted
         is_saddle_or_peak = (.not. is_convex) .and. norm2(g) <= 0
         if(is_saddle_or_peak)then
           
            if(e(1) < 0)then
              
               dx = V(:, 1)
            else
               dx = 0
            end if
            return
         end if
         dx_0 = 0
         dx_scale = 0
         do i = 1, n
            Vi = V(:, i)
            Vig = dot_product(Vi, g)
            if(e(i) == 0)then
               dx_0 = dx_0 - Vig*Vi
            else
               dx_scale = dx_scale - Vig/abs(e(i))*Vi
            end if
         end do
         dx = dx_scale
         if(norm2(dx_0) > 0)then ! this branch will not happen in practice
           
            if(norm2(dx_scale) > 0)then
              
               dx = dx + norm2(dx_scale)/(2*norm2(dx_0))*dx_0 ! 2 is a heuristics
            else
              
               dx = dx + dx_0
            end if
         end if
      end subroutine adaptive_steepest_descent64
      subroutine newton64(uplo, g, H, dx, is_convex)
         Integer(kind=int32), parameter:: nrhs = 1
         Character(len=1), intent(in):: uplo
         Real(kind=real64), intent(in):: g(:), H(size(g, kind=int64), size(g, kind=int64))
         Real(kind=real64), intent(out):: dx(size(g, kind=int64))
         Logical, intent(out):: is_convex
         Real(kind=real64):: A(size(g, kind=int64), size(g, kind=int64))
         Integer(kind=kind(nrhs)):: n, info
         n = size(dx, kind=kind(n))
         if(.not.(n > 0))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1645, (".not.(n > 0)"); error stop; end if
         A = H
         dx = -g
         call dposv(uplo, n, nrhs, A, n, dx, n, info)
         if(.not.(info >= 0))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1650, (".not.(info >= 0)"); error stop; end if
         is_convex = info == 0
      end subroutine newton64
      subroutine syevd64(uplo, H, e, info)
         Character(len=1), intent(in):: uplo
         Real(kind=real64), intent(inout):: H(:, :)
         Real(kind=real64), intent(out):: e(:)
         Integer(kind=kind(0)), intent(out):: info
         Real(kind=real64), allocatable:: work(:)
         Integer(kind=kind(info)), allocatable:: iwork(:)
         Integer(kind=kind(info)):: n, lwork, liwork
          n = size(H, 1, kind=kind(n))
         if(.not.(size(H, 2, kind=kind(n)) == n))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1665, (".not.(size(H, 2, kind=kind(n)) == n)"); error stop; end if
         if(.not.(size(e, kind=kind(n)) == n))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1666, (".not.(size(e, kind=kind(n)) == n)"); error stop; end if
         allocate(work(1))
         allocate(iwork(1))
         lwork = -1
         liwork = -1
         call dsyevd('v', uplo, n, H, n, e, work, lwork, iwork, liwork, info)
         lwork = nint(work(1), kind=kind(lwork))
         liwork = iwork(1)
         deallocate(work, iwork)
         allocate(work(lwork))
         allocate(iwork(liwork))
         call dsyevd('v', uplo, n, H, n, e, work, lwork, iwork, liwork, info)
      end subroutine syevd64
      ! derivative free
      subroutine updateLineSearchState64_0(s, f)
         ! call init(s, dx)
         ! do
         ! call update(s, f(x0 + s%x))
         ! end do
         type(LineSearchState64_0), intent(inout):: s
         Real(kind=real64), intent(in):: f
         Real(kind=real64):: x_new, x1, x2, x3, f1, f2, f3, step, xlim
         Real(kind=real64), parameter:: enlarge = real(5, kind=kind(enlarge))/4
         if(s%iter < 1)then
            write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1694, ('`LineSearchState64_0` should be `init`ialized before `update`d'); error stop
         end if
         s%iter = s%iter + 1
         if(s%iter == 2)then
            s%x = s%dx
            if(s%dx > 0)then
               s%fl = f
            else
               s%fr = f
            end if
            return
         else if(s%iter == 3)then
            if(s%dx > 0)then
               if(.not.(s%x > s%xl))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1707, (".not.(s%x > s%xl)"); error stop; end if
               s%xr = s%x
               s%fr = f
            else
               if(.not.(s%x < s%xr))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1711, (".not.(s%x < s%xr)"); error stop; end if
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
            if(.not.(s%x /= s%xl .and. s%x /= s%xr))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1724, (".not.(s%x /= s%xl .and. s%x /= s%xr)"); error stop; end if
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
      end subroutine updateLineSearchState64_0
      subroutine update_LineSearchState64_0(s, xl, xr, fl, fr)
         type(LineSearchState64_0), intent(inout):: s
         Real(kind=real64), intent(in):: xl, xr, fl, fr
         s%xl = xl
         s%xr = xr
         s%fl = fl
         s%fr = fr
      end subroutine update_LineSearchState64_0
      subroutine initLineSearchState64_0(s, dx)
         type(LineSearchState64_0), intent(out):: s
         Real(kind=real64), intent(in):: dx
         if(.not.(abs(dx) > 0))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1807, (".not.(abs(dx) > 0)"); error stop; end if
         s%iter = 1
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
      end subroutine initLineSearchState64_0
      subroutine line_search_interpolate64_0(x1, x2, x3, f1, f2, f3, x_opt, is_convex)
         Real(kind=real64), intent(in):: x1, x2, x3, f1, f2, f3
         Real(kind=real64), intent(out):: x_opt
         Logical, intent(out):: is_convex
         Real(kind=real64):: x12, x13, x23, f1x1213, f2x1223, f3x1323, a, b_neg
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
      end subroutine line_search_interpolate64_0
      ! use gradient information
      subroutine updateLineSearchState64_1(s, f, g)
         ! call init(s, dx)
         ! do
         ! call update(s, f(x0 + s%x), grad(x0 + s%x))
         ! end do
         type(LineSearchState64_1), intent(inout):: s
         Real(kind=real64), intent(in):: f, g
         Real(kind=real64):: x1, f1, g1, x2, f2, g2, step, xl, xr, x_new, xlim
         Real(kind=real64), parameter:: enlarge = 2
         if(s%iter < 1)then
            write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1866, ('`LineSearchState64_0` should be `init`ialized before `update`d'); error stop
         end if
         s%iter = s%iter + 1
         if(s%iter == 2)then
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
      end subroutine updateLineSearchState64_1
      subroutine update_LineSearchState64_1(s, x_best, f_best, g_best)
         type(LineSearchState64_1), intent(inout):: s
         Real(kind=real64), intent(in):: x_best, f_best, g_best
         s%x_best = x_best
         s%f_best = f_best
         s%g_best = g_best
      end subroutine update_LineSearchState64_1
      subroutine initLineSearchState64_1(s, dx)
         type(LineSearchState64_1), intent(out):: s
         Real(kind=real64), intent(in):: dx
         if(.not.(abs(dx) > 0))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 1951, (".not.(abs(dx) > 0)"); error stop; end if
         s%iter = 1
         s%dx = dx
         s%x = 0
         s%x_best = get_infinity()
         s%f_best = get_infinity()
         s%g_best = get_infinity()
      end subroutine initLineSearchState64_1
      subroutine line_search_interpolate64_1(x1, f1, g1, x2, f2, x_new, is_convex)
         Real(kind=real64), intent(in):: x1, f1, g1, x2, f2
         Real(kind=real64), intent(out):: x_new
         Logical, intent(out):: is_convex
         Real(kind=real64):: x12, a
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
      end subroutine line_search_interpolate64_1
      pure function nnls64(A, b) result(ret)
         Real(kind=real64), intent(in):: A(:, :), b(:)
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
      end function nnls64
   function combinations(is, n) result(ret)
      ! Assumptions:
      ! - `unique(xs) == xs`
      Integer(kind=int64), intent(in):: is(:), n
      Integer(kind=kind(is)):: ret(n, combination(size(is, kind=kind(n)), n))
      if(.not.(0 <= n .and. n <= size(is, kind=kind(n))))then; write(error_unit, *) "ERROR: ", "optimize_lib.f90", " ", 2041, (".not.(0 <= n .and. n <= size(is, kind=kind(n)))"); error stop; end if
      call combinations_(size(is, kind=kind(is)), is, n, ret)
   end function combinations
   pure recursive subroutine combinations_(n_is, is, n, ret)
      ! todo: optimize
      Integer(kind=int64), intent(in):: n_is, is(n_is), n
      Integer(kind=kind(is)), intent(out):: ret(:, :)
      Integer(kind=kind(is)):: m
      if(n <= 0)then
         return
      else if(n == 1)then
         ret(1, :) = is
      else if(n == n_is)then
         ret(:, 1) = is
      else
         m = combination(n_is - 1, n - 1)
         ret(1, :m) = is(1)
         call combinations_(n_is - 1, is(2:), n - 1, ret(2:, :m))
         call combinations_(n_is - 1, is(2:), n, ret(:, (m + 1):))
      end if
   end subroutine combinations_
   elemental function combination(n, k) result(ret)
      Integer(kind=int64), intent(in):: n, k
      Integer(kind=kind(n)):: ret
      Integer(kind=kind(n)):: i
      ret = 1
      do i = n - k + 1, n
         ret = ret*i
      end do
      do i = 2, k
         ret = ret/i
      end do
   end function combination
   pure function mask_indices(xs, n) result(ret)
      Integer(kind=int64), intent(in):: xs(:), n
      Logical:: ret(n)
      ret(:) = .false.
      ret(xs) = .true.
   end function mask_indices
end module optimize_lib
