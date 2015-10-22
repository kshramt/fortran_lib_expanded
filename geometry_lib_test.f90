program main
   use, intrinsic:: iso_fortran_env, only: input_unit, output_unit, error_unit
   use, intrinsic:: iso_fortran_env, only: int64, real64
   use, non_intrinsic:: comparable_lib, only: almost_equal
   use, non_intrinsic:: geometry_lib
   implicit none
   Real(kind=real64):: pi = 2*atan2(1d0, 0d0)
   Real(kind=real64):: d
   Real(kind=real64):: th, th1, th2
   Real(kind=real64):: u1, u2
   Integer(kind=int64):: i, j
   if(.not.(shape_of([(real(i), i = 1, 0)], [(real(i), i = 1, 0)]) == other))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 17, (".not.(shape_of([(real(i), i = 1, 0)], [(real(i), i = 1, 0)]) == other)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(shape_of([0.0], [0.0]) == point))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 18, (".not.(shape_of([0.0], [0.0]) == point)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(shape_of([0.0, 1.0], [0.0, 1.0]) == line))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 19, (".not.(shape_of([0.0, 1.0], [0.0, 1.0]) == line)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(shape_of([0.0, 1.0, 2.0], [0.0, 1.0, 2.0]) == line))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 20, (".not.(shape_of([0.0, 1.0, 2.0], [0.0, 1.0, 2.0]) == line)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(shape_of([2.0, 0.0, 1.0], [2.0, 0.0, 1.0]) == line))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 21, (".not.(shape_of([2.0, 0.0, 1.0], [2.0, 0.0, 1.0]) == line)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(shape_of([0.0, 1.0, 0.5], [0.0, 0.0, 1.0]) == left_convex_polygon))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 22, (".not.(shape_of([0.0, 1.0, 0.5], [0.0, 0.0, 1.0]) == left_convex_polygon)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(shape_of([0.0, 0.5, 1.0], [0.0, 1.0, 0.0]) == right_convex_polygon))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 23, (".not.(shape_of([0.0, 0.5, 1.0], [0.0, 1.0, 0.0]) == right_convex_polygon)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(shape_of([0.0, 1.0, 2.0, 0.5], [0.0, 0.0, 0.0, 1.0]) == left_convex_polygon))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 24, (".not.(shape_of([0.0, 1.0, 2.0, 0.5], [0.0, 0.0, 0.0, 1.0]) == left_convex_polygon)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(shape_of([0.0, 0.5, 2.0, 1.0], [0.0, 1.0, 0.0, 0.0]) == right_convex_polygon))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 25, (".not.(shape_of([0.0, 0.5, 2.0, 1.0], [0.0, 1.0, 0.0, 0.0]) == right_convex_polygon)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(distance(4d0, 3d0, 0d0, 25d0/3), 5d0)))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 28, (".not.(almost_equal(distance(4d0, 3d0, 0d0, 25d0/3), 5d0))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(distance(4d0, 3d0, -3d0, 25d0/3 + 4), 5d0)))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 29, (".not.(almost_equal(distance(4d0, 3d0, -3d0, 25d0/3 + 4), 5d0))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(distance(-4d0, -3d0, -0d0, -25d0/3), 5d0)))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 30, (".not.(almost_equal(distance(-4d0, -3d0, -0d0, -25d0/3), 5d0))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(distance(-4d0, -3d0, 3d0, -(25d0/3 + 4)), 5d0)))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 31, (".not.(almost_equal(distance(-4d0, -3d0, 3d0, -(25d0/3 + 4)), 5d0))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   call perpendicular(4d0, 3d0, 0d0, 25d0/3, u1, u2)
   if(.not.(almost_equal(u1, 4d0, rtol=2*epsilon(0d0))))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 34, (".not.(almost_equal(u1, 4d0, rtol=2*epsilon(0d0)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(u2, 3d0, rtol=2*epsilon(0d0))))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 35, (".not.(almost_equal(u2, 3d0, rtol=2*epsilon(0d0)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   call perpendicular(4d0, 3d0, -3d0, 25d0/3 + 4, u1, u2)
   if(.not.(almost_equal(u1, 4d0, rtol=2*epsilon(0d0))))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 37, (".not.(almost_equal(u1, 4d0, rtol=2*epsilon(0d0)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(u2, 3d0, rtol=2*epsilon(0d0))))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 38, (".not.(almost_equal(u2, 3d0, rtol=2*epsilon(0d0)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   call perpendicular(-4d0, -3d0, -0d0, -25d0/3, u1, u2)
   if(.not.(almost_equal(u1, -4d0, rtol=2*epsilon(0d0))))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 40, (".not.(almost_equal(u1, -4d0, rtol=2*epsilon(0d0)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(u2, -3d0, rtol=2*epsilon(0d0))))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 41, (".not.(almost_equal(u2, -3d0, rtol=2*epsilon(0d0)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   call perpendicular(-4d0, -3d0, 3d0, -(25d0/3 + 4), u1, u2)
   if(.not.(almost_equal(u1, -4d0, rtol=2*epsilon(0d0))))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 43, (".not.(almost_equal(u1, -4d0, rtol=2*epsilon(0d0)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(u2, -3d0, rtol=2*epsilon(0d0))))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 44, (".not.(almost_equal(u2, -3d0, rtol=2*epsilon(0d0)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   do i = 0, 16
      th1 = 2*i*pi/17
      do j = 0, 12
         th2 = 2*j*pi/13
         th = th2 - th1
         if(abs(th) > pi) th = sign(2*pi - abs(th), -th)
         if(.not.(almost_equal(angle(2*cos(th1), 2*sin(th1), 3*cos(th2), 3*sin(th2)), th, atol=4*epsilon(0d0), rtol=4*epsilon(0d0))))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 52, (".not.(almost_equal(angle(2*cos(th1), 2*sin(th1), 3*cos(th2), 3*sin(th2)), th, atol=4*epsilon(0d0), rtol=4*epsilon(0d0)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
      end do
   end do
   call distance_and_angles(-2/sqrt(3d0), 2d0, 2*sqrt(3d0), 2d0, d, th1, th2)
   if(.not.(almost_equal(d, 2d0)))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 58, (".not.(almost_equal(d, 2d0))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(th1, pi/6)))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 59, (".not.(almost_equal(th1, pi/6))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(th2, -pi/3)))then; write(error_unit, *) "ERROR: ", "geometry_lib_test.f90", " ", 60, (".not.(almost_equal(th2, -pi/3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   write(output_unit, *) 'SUCCESS: ', "geometry_lib_test.f90"
   stop
end program main
