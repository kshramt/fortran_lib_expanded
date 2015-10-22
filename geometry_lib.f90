module geometry_lib
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: input_unit, output_unit, error_unit
   use, intrinsic:: iso_fortran_env, only: int64
      use, intrinsic:: iso_fortran_env, only: real32
      use, intrinsic:: iso_fortran_env, only: real64
      use, intrinsic:: iso_fortran_env, only: real128
   use, non_intrinsic:: math_lib, only: mod1
   implicit none
   private
   public:: is_in
   public:: size
   public:: load
   public:: shape_of
   public:: is_right_side
   public:: distance_and_angles
   public:: angle
   public:: perpendicular
   public:: distance
   public:: cross
   ! Interface
      interface is_in
         module procedure is_in_LeftConvexPolygon32
      end interface is_in
      interface size
         module procedure size_LeftConvexPolygon32
      end interface size
      interface load
         module procedure load_LeftConvexPolygon32
      end interface load
      interface shape_of
         module procedure shape_of32
      end interface shape_of
      interface is_right_side
         module procedure is_right_side32
      end interface is_right_side
      interface distance_and_angles
         module procedure distance_and_angles32
      end interface distance_and_angles
      interface angle
         module procedure angle32
      end interface angle
      interface perpendicular
         module procedure perpendicular_1_32
         module procedure perpendicular_2_32
      end interface perpendicular
      interface distance
         module procedure distance32
      end interface distance
      interface cross
         module procedure cross32
      end interface cross
      interface is_in
         module procedure is_in_LeftConvexPolygon64
      end interface is_in
      interface size
         module procedure size_LeftConvexPolygon64
      end interface size
      interface load
         module procedure load_LeftConvexPolygon64
      end interface load
      interface shape_of
         module procedure shape_of64
      end interface shape_of
      interface is_right_side
         module procedure is_right_side64
      end interface is_right_side
      interface distance_and_angles
         module procedure distance_and_angles64
      end interface distance_and_angles
      interface angle
         module procedure angle64
      end interface angle
      interface perpendicular
         module procedure perpendicular_1_64
         module procedure perpendicular_2_64
      end interface perpendicular
      interface distance
         module procedure distance64
      end interface distance
      interface cross
         module procedure cross64
      end interface cross
      interface is_in
         module procedure is_in_LeftConvexPolygon128
      end interface is_in
      interface size
         module procedure size_LeftConvexPolygon128
      end interface size
      interface load
         module procedure load_LeftConvexPolygon128
      end interface load
      interface shape_of
         module procedure shape_of128
      end interface shape_of
      interface is_right_side
         module procedure is_right_side128
      end interface is_right_side
      interface distance_and_angles
         module procedure distance_and_angles128
      end interface distance_and_angles
      interface angle
         module procedure angle128
      end interface angle
      interface perpendicular
         module procedure perpendicular_1_128
         module procedure perpendicular_2_128
      end interface perpendicular
      interface distance
         module procedure distance128
      end interface distance
      interface cross
         module procedure cross128
      end interface cross
      type, public:: LeftConvexPolygon32
         Real(kind=real32), allocatable:: xs(:)
         Real(kind=real32), allocatable:: ys(:)
      end type LeftConvexPolygon32
      type, public:: LeftConvexPolygon64
         Real(kind=real64), allocatable:: xs(:)
         Real(kind=real64), allocatable:: ys(:)
      end type LeftConvexPolygon64
      type, public:: LeftConvexPolygon128
         Real(kind=real128), allocatable:: xs(:)
         Real(kind=real128), allocatable:: ys(:)
      end type LeftConvexPolygon128
   Integer, parameter, public:: point = 0
   Integer(kind=kind(point)), parameter, public:: line = 1
   Integer(kind=kind(point)), parameter, public:: left_convex_polygon = 2
   Integer(kind=kind(point)), parameter, public:: right_convex_polygon = 3
   Integer(kind=kind(point)), parameter, public:: other = 4
contains
      elemental function is_in_LeftConvexPolygon32(self, x, y) result(ret)
         Logical:: ret
         type(LeftConvexPolygon32), intent(in):: self
         Real(kind=real32), intent(in):: x, y
         Integer(kind=int64):: i, n
         n = size(self)
         ret = .true.
         do i = 1, n
            if(cross(self%xs(i) - x, self%ys(i) - y, self%xs(mod1(i + 1, n)) - x, self%ys(mod1(i + 1, n)) - y) < 0)then
               ret = .false.
               return
            end if
         end do
      end function is_in_LeftConvexPolygon32
      elemental function size_LeftConvexPolygon32(self) result(ret)
         Integer(kind=int64):: ret
         type(LeftConvexPolygon32), intent(in):: self
         ret = size(self%xs, kind=kind(ret))
      end function size_LeftConvexPolygon32
      subroutine load_LeftConvexPolygon32(self, unit)
         type(LeftConvexPolygon32), intent(out):: self
         Integer(kind=kind(input_unit)), intent(in):: unit
         Integer(kind=int64):: i, n
         Integer(kind=kind(left_convex_polygon)):: shape
         read(unit) n
         if(.not.(n >= 3))then; write(error_unit, *) "ERROR: ", "geometry_lib.f90", " ", 222, (".not.(n >= 3)"); error stop; end if
         allocate(self%xs(n))
         allocate(self%ys(n))
         do i = 1, n
            read(unit, *) self%xs(i), self%ys(i)
         end do
         shape = shape_of(self%xs, self%ys)
         if(.not.(shape == left_convex_polygon .or. shape == right_convex_polygon))then; write(error_unit, *) "ERROR: ", "geometry_lib.f90", " ", 230, (".not.(shape == left_convex_polygon .or. shape == right_convex_polygon)"); error stop; end if
         if(shape == right_convex_polygon)then
            self%xs(:) = self%xs(n:1:-1)
            self%ys(:) = self%ys(n:1:-1)
         end if
      end subroutine load_LeftConvexPolygon32
      function shape_of32(xs, ys) result(ret)
         Integer(kind=kind(left_convex_polygon)):: ret
         Real(kind=real32), intent(in):: xs(:), ys(size(xs, kind=int64))
         Real(kind=real32):: sig
         Integer(kind=int64):: i, n
         n = size(xs, kind=kind(n))
         select case(n)
         case(:0)
            ret = other
         case(1)
            ret = point
         case(2)
            ret = line
         case(3:)
            ret = line
            do i = 1, n
               sig = cross(xs(i) - xs(mod1(i - 1, n)), ys(i) - ys(mod1(i - 1, n)), xs(mod1(i + 1, n)) - xs(i), ys(mod1(i + 1, n)) - ys(i))
               select case(ret)
               case(line)
                  if(sig > 0)then
                     ret = left_convex_polygon
                  else if(sig < 0)then
                     ret = right_convex_polygon
                  end if
               case(left_convex_polygon)
                  if(sig < 0)then
                     ret = other
                     return
                  end if
               case(right_convex_polygon)
                  if(sig > 0)then
                     ret = other
                     return
                  end if
               case default
                  write(error_unit, *) "ERROR: ", "geometry_lib.f90", " ", 275, ("Must not happen"); error stop
               end select
            end do
         end select
      end function shape_of32
      elemental function is_right_side32(px, py, ax, ay, bx, by) result(ret)
         ! p is at the right side of edge a->b
         Logical:: ret
         Real(kind=real32), intent(in):: px, py, ax, ay, bx, by
         ret = cross(bx - ax, by - ay, px - ax, py - ay) > 0
      end function is_right_side32
      elemental subroutine distance_and_angles32(u1, u2, v1, v2, d, th_u, th_v)
         Real(kind=real32), intent(in):: u1, u2, v1, v2
         Real(kind=real32), intent(out):: d ! distance between the origin and line u->v
         Real(kind=real32), intent(out):: th_u ! angle from intersection vector to u
         Real(kind=real32), intent(out):: th_v ! angle from intersection vector to v
         Real(kind=real32):: intersection1, intersection2
         d = distance(u1, u2, v1, v2) ! todo: norm2(intersection)
         call perpendicular(u1, u2, v1, v2, intersection1, intersection2)
         th_u = angle(intersection1, intersection2, u1, u2)
         th_v = angle(intersection1, intersection2, v1, v2)
      end subroutine distance_and_angles32
      elemental function angle32(u1, u2, v1, v2) result(ret)
         ! Return an angle from u to v
         Real(kind=real32):: ret
         Real(kind=kind(ret)), intent(in):: u1, u2, v1, v2
         ret = atan2(cross(u1, u2, v1, v2), u1*v1 + u2*v2)
      end function angle32
      elemental subroutine perpendicular_2_32(u1, u2, v1, v2, w1, w2)
         ! Return a intersection point of line u->v and a line ⟂ u->v and passes the origin
         Real(kind=real32), parameter:: one = 1
         Real(kind=kind(one)), intent(in):: u1, u2, v1, v2
         Real(kind=kind(one)), intent(out):: w1, w2
         Real(kind=kind(one)):: p_uv1, p_uv2, c
         call perpendicular(v1 - u1, v2 - u2, p_uv1, p_uv2)
         c = sign(one, u1*p_uv1 + u2*p_uv2)*distance(u1, u2, v1, v2)/hypot(p_uv1, p_uv2)
         w1 = c*p_uv1
         w2 = c*p_uv2
      end subroutine perpendicular_2_32
      elemental subroutine perpendicular_1_32(u1, u2, v1, v2)
         ! Return a vector ⟂ to u
         Real(kind=real32), intent(in):: u1, u2
         Real(kind=real32), intent(out):: v1, v2
         v1 = -u2
         v2 = u1
      end subroutine perpendicular_1_32
      elemental function distance32(u1, u2, v1, v2) result(ret)
         ! Return distance from the origin to a line u->v
         Real(kind=real32):: ret
         Real(kind=kind(ret)), intent(in):: u1, u2, v1, v2
         ret = abs(cross(u1, u2, v1, v2))/hypot(v1 - u1, v2 - u2)
      end function distance32
      elemental function cross32(u1, u2, v1, v2) result(ret)
         ! Return component of cross product u×v
         Real(kind=real32):: ret
         Real(kind=kind(ret)), intent(in):: u1, u2, v1, v2
         ret = u1*v2 - u2*v1
      end function cross32
      elemental function is_in_LeftConvexPolygon64(self, x, y) result(ret)
         Logical:: ret
         type(LeftConvexPolygon64), intent(in):: self
         Real(kind=real64), intent(in):: x, y
         Integer(kind=int64):: i, n
         n = size(self)
         ret = .true.
         do i = 1, n
            if(cross(self%xs(i) - x, self%ys(i) - y, self%xs(mod1(i + 1, n)) - x, self%ys(mod1(i + 1, n)) - y) < 0)then
               ret = .false.
               return
            end if
         end do
      end function is_in_LeftConvexPolygon64
      elemental function size_LeftConvexPolygon64(self) result(ret)
         Integer(kind=int64):: ret
         type(LeftConvexPolygon64), intent(in):: self
         ret = size(self%xs, kind=kind(ret))
      end function size_LeftConvexPolygon64
      subroutine load_LeftConvexPolygon64(self, unit)
         type(LeftConvexPolygon64), intent(out):: self
         Integer(kind=kind(input_unit)), intent(in):: unit
         Integer(kind=int64):: i, n
         Integer(kind=kind(left_convex_polygon)):: shape
         read(unit) n
         if(.not.(n >= 3))then; write(error_unit, *) "ERROR: ", "geometry_lib.f90", " ", 390, (".not.(n >= 3)"); error stop; end if
         allocate(self%xs(n))
         allocate(self%ys(n))
         do i = 1, n
            read(unit, *) self%xs(i), self%ys(i)
         end do
         shape = shape_of(self%xs, self%ys)
         if(.not.(shape == left_convex_polygon .or. shape == right_convex_polygon))then; write(error_unit, *) "ERROR: ", "geometry_lib.f90", " ", 398, (".not.(shape == left_convex_polygon .or. shape == right_convex_polygon)"); error stop; end if
         if(shape == right_convex_polygon)then
            self%xs(:) = self%xs(n:1:-1)
            self%ys(:) = self%ys(n:1:-1)
         end if
      end subroutine load_LeftConvexPolygon64
      function shape_of64(xs, ys) result(ret)
         Integer(kind=kind(left_convex_polygon)):: ret
         Real(kind=real64), intent(in):: xs(:), ys(size(xs, kind=int64))
         Real(kind=real64):: sig
         Integer(kind=int64):: i, n
         n = size(xs, kind=kind(n))
         select case(n)
         case(:0)
            ret = other
         case(1)
            ret = point
         case(2)
            ret = line
         case(3:)
            ret = line
            do i = 1, n
               sig = cross(xs(i) - xs(mod1(i - 1, n)), ys(i) - ys(mod1(i - 1, n)), xs(mod1(i + 1, n)) - xs(i), ys(mod1(i + 1, n)) - ys(i))
               select case(ret)
               case(line)
                  if(sig > 0)then
                     ret = left_convex_polygon
                  else if(sig < 0)then
                     ret = right_convex_polygon
                  end if
               case(left_convex_polygon)
                  if(sig < 0)then
                     ret = other
                     return
                  end if
               case(right_convex_polygon)
                  if(sig > 0)then
                     ret = other
                     return
                  end if
               case default
                  write(error_unit, *) "ERROR: ", "geometry_lib.f90", " ", 443, ("Must not happen"); error stop
               end select
            end do
         end select
      end function shape_of64
      elemental function is_right_side64(px, py, ax, ay, bx, by) result(ret)
         ! p is at the right side of edge a->b
         Logical:: ret
         Real(kind=real64), intent(in):: px, py, ax, ay, bx, by
         ret = cross(bx - ax, by - ay, px - ax, py - ay) > 0
      end function is_right_side64
      elemental subroutine distance_and_angles64(u1, u2, v1, v2, d, th_u, th_v)
         Real(kind=real64), intent(in):: u1, u2, v1, v2
         Real(kind=real64), intent(out):: d ! distance between the origin and line u->v
         Real(kind=real64), intent(out):: th_u ! angle from intersection vector to u
         Real(kind=real64), intent(out):: th_v ! angle from intersection vector to v
         Real(kind=real64):: intersection1, intersection2
         d = distance(u1, u2, v1, v2) ! todo: norm2(intersection)
         call perpendicular(u1, u2, v1, v2, intersection1, intersection2)
         th_u = angle(intersection1, intersection2, u1, u2)
         th_v = angle(intersection1, intersection2, v1, v2)
      end subroutine distance_and_angles64
      elemental function angle64(u1, u2, v1, v2) result(ret)
         ! Return an angle from u to v
         Real(kind=real64):: ret
         Real(kind=kind(ret)), intent(in):: u1, u2, v1, v2
         ret = atan2(cross(u1, u2, v1, v2), u1*v1 + u2*v2)
      end function angle64
      elemental subroutine perpendicular_2_64(u1, u2, v1, v2, w1, w2)
         ! Return a intersection point of line u->v and a line ⟂ u->v and passes the origin
         Real(kind=real64), parameter:: one = 1
         Real(kind=kind(one)), intent(in):: u1, u2, v1, v2
         Real(kind=kind(one)), intent(out):: w1, w2
         Real(kind=kind(one)):: p_uv1, p_uv2, c
         call perpendicular(v1 - u1, v2 - u2, p_uv1, p_uv2)
         c = sign(one, u1*p_uv1 + u2*p_uv2)*distance(u1, u2, v1, v2)/hypot(p_uv1, p_uv2)
         w1 = c*p_uv1
         w2 = c*p_uv2
      end subroutine perpendicular_2_64
      elemental subroutine perpendicular_1_64(u1, u2, v1, v2)
         ! Return a vector ⟂ to u
         Real(kind=real64), intent(in):: u1, u2
         Real(kind=real64), intent(out):: v1, v2
         v1 = -u2
         v2 = u1
      end subroutine perpendicular_1_64
      elemental function distance64(u1, u2, v1, v2) result(ret)
         ! Return distance from the origin to a line u->v
         Real(kind=real64):: ret
         Real(kind=kind(ret)), intent(in):: u1, u2, v1, v2
         ret = abs(cross(u1, u2, v1, v2))/hypot(v1 - u1, v2 - u2)
      end function distance64
      elemental function cross64(u1, u2, v1, v2) result(ret)
         ! Return component of cross product u×v
         Real(kind=real64):: ret
         Real(kind=kind(ret)), intent(in):: u1, u2, v1, v2
         ret = u1*v2 - u2*v1
      end function cross64
      elemental function is_in_LeftConvexPolygon128(self, x, y) result(ret)
         Logical:: ret
         type(LeftConvexPolygon128), intent(in):: self
         Real(kind=real128), intent(in):: x, y
         Integer(kind=int64):: i, n
         n = size(self)
         ret = .true.
         do i = 1, n
            if(cross(self%xs(i) - x, self%ys(i) - y, self%xs(mod1(i + 1, n)) - x, self%ys(mod1(i + 1, n)) - y) < 0)then
               ret = .false.
               return
            end if
         end do
      end function is_in_LeftConvexPolygon128
      elemental function size_LeftConvexPolygon128(self) result(ret)
         Integer(kind=int64):: ret
         type(LeftConvexPolygon128), intent(in):: self
         ret = size(self%xs, kind=kind(ret))
      end function size_LeftConvexPolygon128
      subroutine load_LeftConvexPolygon128(self, unit)
         type(LeftConvexPolygon128), intent(out):: self
         Integer(kind=kind(input_unit)), intent(in):: unit
         Integer(kind=int64):: i, n
         Integer(kind=kind(left_convex_polygon)):: shape
         read(unit) n
         if(.not.(n >= 3))then; write(error_unit, *) "ERROR: ", "geometry_lib.f90", " ", 558, (".not.(n >= 3)"); error stop; end if
         allocate(self%xs(n))
         allocate(self%ys(n))
         do i = 1, n
            read(unit, *) self%xs(i), self%ys(i)
         end do
         shape = shape_of(self%xs, self%ys)
         if(.not.(shape == left_convex_polygon .or. shape == right_convex_polygon))then; write(error_unit, *) "ERROR: ", "geometry_lib.f90", " ", 566, (".not.(shape == left_convex_polygon .or. shape == right_convex_polygon)"); error stop; end if
         if(shape == right_convex_polygon)then
            self%xs(:) = self%xs(n:1:-1)
            self%ys(:) = self%ys(n:1:-1)
         end if
      end subroutine load_LeftConvexPolygon128
      function shape_of128(xs, ys) result(ret)
         Integer(kind=kind(left_convex_polygon)):: ret
         Real(kind=real128), intent(in):: xs(:), ys(size(xs, kind=int64))
         Real(kind=real128):: sig
         Integer(kind=int64):: i, n
         n = size(xs, kind=kind(n))
         select case(n)
         case(:0)
            ret = other
         case(1)
            ret = point
         case(2)
            ret = line
         case(3:)
            ret = line
            do i = 1, n
               sig = cross(xs(i) - xs(mod1(i - 1, n)), ys(i) - ys(mod1(i - 1, n)), xs(mod1(i + 1, n)) - xs(i), ys(mod1(i + 1, n)) - ys(i))
               select case(ret)
               case(line)
                  if(sig > 0)then
                     ret = left_convex_polygon
                  else if(sig < 0)then
                     ret = right_convex_polygon
                  end if
               case(left_convex_polygon)
                  if(sig < 0)then
                     ret = other
                     return
                  end if
               case(right_convex_polygon)
                  if(sig > 0)then
                     ret = other
                     return
                  end if
               case default
                  write(error_unit, *) "ERROR: ", "geometry_lib.f90", " ", 611, ("Must not happen"); error stop
               end select
            end do
         end select
      end function shape_of128
      elemental function is_right_side128(px, py, ax, ay, bx, by) result(ret)
         ! p is at the right side of edge a->b
         Logical:: ret
         Real(kind=real128), intent(in):: px, py, ax, ay, bx, by
         ret = cross(bx - ax, by - ay, px - ax, py - ay) > 0
      end function is_right_side128
      elemental subroutine distance_and_angles128(u1, u2, v1, v2, d, th_u, th_v)
         Real(kind=real128), intent(in):: u1, u2, v1, v2
         Real(kind=real128), intent(out):: d ! distance between the origin and line u->v
         Real(kind=real128), intent(out):: th_u ! angle from intersection vector to u
         Real(kind=real128), intent(out):: th_v ! angle from intersection vector to v
         Real(kind=real128):: intersection1, intersection2
         d = distance(u1, u2, v1, v2) ! todo: norm2(intersection)
         call perpendicular(u1, u2, v1, v2, intersection1, intersection2)
         th_u = angle(intersection1, intersection2, u1, u2)
         th_v = angle(intersection1, intersection2, v1, v2)
      end subroutine distance_and_angles128
      elemental function angle128(u1, u2, v1, v2) result(ret)
         ! Return an angle from u to v
         Real(kind=real128):: ret
         Real(kind=kind(ret)), intent(in):: u1, u2, v1, v2
         ret = atan2(cross(u1, u2, v1, v2), u1*v1 + u2*v2)
      end function angle128
      elemental subroutine perpendicular_2_128(u1, u2, v1, v2, w1, w2)
         ! Return a intersection point of line u->v and a line ⟂ u->v and passes the origin
         Real(kind=real128), parameter:: one = 1
         Real(kind=kind(one)), intent(in):: u1, u2, v1, v2
         Real(kind=kind(one)), intent(out):: w1, w2
         Real(kind=kind(one)):: p_uv1, p_uv2, c
         call perpendicular(v1 - u1, v2 - u2, p_uv1, p_uv2)
         c = sign(one, u1*p_uv1 + u2*p_uv2)*distance(u1, u2, v1, v2)/hypot(p_uv1, p_uv2)
         w1 = c*p_uv1
         w2 = c*p_uv2
      end subroutine perpendicular_2_128
      elemental subroutine perpendicular_1_128(u1, u2, v1, v2)
         ! Return a vector ⟂ to u
         Real(kind=real128), intent(in):: u1, u2
         Real(kind=real128), intent(out):: v1, v2
         v1 = -u2
         v2 = u1
      end subroutine perpendicular_1_128
      elemental function distance128(u1, u2, v1, v2) result(ret)
         ! Return distance from the origin to a line u->v
         Real(kind=real128):: ret
         Real(kind=kind(ret)), intent(in):: u1, u2, v1, v2
         ret = abs(cross(u1, u2, v1, v2))/hypot(v1 - u1, v2 - u2)
      end function distance128
      elemental function cross128(u1, u2, v1, v2) result(ret)
         ! Return component of cross product u×v
         Real(kind=real128):: ret
         Real(kind=kind(ret)), intent(in):: u1, u2, v1, v2
         ret = u1*v2 - u2*v1
      end function cross128
end module geometry_lib
