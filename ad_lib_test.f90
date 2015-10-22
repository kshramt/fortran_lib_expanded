program main
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT, real64
   use, non_intrinsic:: constant_lib, only: get_nan
   use, non_intrinsic:: comparable_lib, only: almost_equal
   use, non_intrinsic:: ad_lib
   implicit none
   type(Dual64_2_2):: x, y, z, xs(3213), nan
   Real(kind=real64), parameter:: a = 6, b = 2, zero = 0, one = 1, two = 2, three = 3
   Real(kind=real64):: h(2, 2), j(2)
   Integer:: i, nxs
   x%g = -9
   x%h = -99
   x = 1 ! g and h is cleared by 0
   if(.not.(almost_equal(real(x), one)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 19, (".not.(almost_equal(real(x), one))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(x), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 20, (".not.(all(almost_equal(grad(x), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(x), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 21, (".not.(all(almost_equal(hess(x), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   x%f = a
   x%g(1) = 1
   y%f = b
   y%g(2) = 1
   nan = get_nan()
   if(.not.(almost_equal(epsilon(x), epsilon(a))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 30, (".not.(almost_equal(epsilon(x), epsilon(a)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(tiny(x), tiny(a))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 31, (".not.(almost_equal(tiny(x), tiny(a)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(huge(x), huge(a))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 32, (".not.(almost_equal(huge(x), huge(a)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = dot_product([x, y, y], [x, x, y])
   if(.not.(almost_equal(real(z), a*a + b*a + b*b)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 35, (".not.(almost_equal(real(z), a*a + b*a + b*b))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), grad(x*x + y*x + y*y)))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 36, (".not.(all(almost_equal(grad(z), grad(x*x + y*x + y*y))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), hess(x*x + y*x + y*y)))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 37, (".not.(all(almost_equal(hess(z), hess(x*x + y*x + y*y))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = dot_product([x, y, y], [a, a, b])
   if(.not.(almost_equal(real(z), a*a + b*a + b*b)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 40, (".not.(almost_equal(real(z), a*a + b*a + b*b))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), grad(x*a + y*a + y*b)))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 41, (".not.(all(almost_equal(grad(z), grad(x*a + y*a + y*b))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), hess(x*a + y*a + y*b)))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 42, (".not.(all(almost_equal(hess(z), hess(x*a + y*a + y*b))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = dot_product([a, b, b], [x, x, y])
   if(.not.(almost_equal(real(z), a*a + b*a + b*b)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 45, (".not.(almost_equal(real(z), a*a + b*a + b*b))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), grad(a*x + b*x + b*y)))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 46, (".not.(all(almost_equal(grad(z), grad(a*x + b*x + b*y))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), hess(a*x + b*x + b*y)))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 47, (".not.(all(almost_equal(hess(z), hess(a*x + b*x + b*y))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = sum([x, y])
   if(.not.(almost_equal(real(z), a + b)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 50, (".not.(almost_equal(real(z), a + b))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), [one, one]))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 51, (".not.(all(almost_equal(grad(z), [one, one])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 52, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   nxs = size(xs)
   do i = 1, nxs
      xs(i) = exp(x*y + log(y))
   end do
   z = sum(xs)
   if(.not.(almost_equal(real(z), nxs*real(xs(1)), rtol=4*epsilon(z))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 58, (".not.(almost_equal(real(z), nxs*real(xs(1)), rtol=4*epsilon(z)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), nxs*grad(xs(1)), rtol=4*epsilon(z)))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 59, (".not.(all(almost_equal(grad(z), nxs*grad(xs(1)), rtol=4*epsilon(z))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), nxs*hess(xs(1)), rtol=4*epsilon(z)))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 60, (".not.(all(almost_equal(hess(z), nxs*hess(xs(1)), rtol=4*epsilon(z))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = x + y
   if(.not.(almost_equal(real(z), a + b)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 63, (".not.(almost_equal(real(z), a + b))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), [one, one]))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 64, (".not.(all(almost_equal(grad(z), [one, one])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 65, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = x + x
   if(.not.(almost_equal(real(z), a + a)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 68, (".not.(almost_equal(real(z), a + a))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), [two, zero]))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 69, (".not.(all(almost_equal(grad(z), [two, zero])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 70, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = x - y
   if(.not.(almost_equal(real(z), a - b)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 73, (".not.(almost_equal(real(z), a - b))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), [one, -one]))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 74, (".not.(all(almost_equal(grad(z), [one, -one])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 75, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = x - x
   if(.not.(almost_equal(real(z), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 78, (".not.(almost_equal(real(z), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 79, (".not.(all(almost_equal(grad(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 80, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = x*y
   if(.not.(almost_equal(real(z), a*b)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 83, (".not.(almost_equal(real(z), a*b))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), [b, a]))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 84, (".not.(all(almost_equal(grad(z), [b, a])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 86, (".not.(almost_equal(h(1, 1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(1, 2), one)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 87, (".not.(almost_equal(h(1, 2), one))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 1), one)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 88, (".not.(almost_equal(h(2, 1), one))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 89, (".not.(almost_equal(h(2, 2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = x*x
   if(.not.(almost_equal(real(z), a*a)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 92, (".not.(almost_equal(real(z), a*a))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), [2*a, zero]))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 93, (".not.(all(almost_equal(grad(z), [2*a, zero])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), two)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 95, (".not.(almost_equal(h(1, 1), two))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(1, 2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 96, (".not.(almost_equal(h(1, 2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 97, (".not.(almost_equal(h(2, 1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 98, (".not.(almost_equal(h(2, 2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = x/y
   if(.not.(almost_equal(real(z), a/b)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 101, (".not.(almost_equal(real(z), a/b))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), [1/b, -a/b**2]))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 102, (".not.(all(almost_equal(grad(z), [1/b, -a/b**2])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 104, (".not.(almost_equal(h(1, 1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(1, 2), -1/b**2)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 105, (".not.(almost_equal(h(1, 2), -1/b**2))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 1), -1/b**2)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 106, (".not.(almost_equal(h(2, 1), -1/b**2))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), 2*a/b**3)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 107, (".not.(almost_equal(h(2, 2), 2*a/b**3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = x/y**2
   if(.not.(almost_equal(real(z), a/b**2)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 110, (".not.(almost_equal(real(z), a/b**2))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), [1/b**2, -2*a/b**3]))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 111, (".not.(all(almost_equal(grad(z), [1/b**2, -2*a/b**3])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 113, (".not.(almost_equal(h(1, 1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(1, 2), -2/b**3)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 114, (".not.(almost_equal(h(1, 2), -2/b**3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 1), -2/b**3)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 115, (".not.(almost_equal(h(2, 1), -2/b**3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), 6*a/b**4)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 116, (".not.(almost_equal(h(2, 2), 6*a/b**4))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = x/x
   if(.not.(almost_equal(real(z), one)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 119, (".not.(almost_equal(real(z), one))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 120, (".not.(all(almost_equal(grad(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 121, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = x**y
   if(.not.(almost_equal(real(z), a**b)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 124, (".not.(almost_equal(real(z), a**b))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), [b*a**(b - 1), log(a)*a**b]))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 125, (".not.(all(almost_equal(grad(z), [b*a**(b - 1), log(a)*a**b])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), b*(b - 1)*a**(b - 2))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 127, (".not.(almost_equal(h(1, 1), b*(b - 1)*a**(b - 2)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(1, 2), a**(b - 1) + b*log(a)*a**(b - 1))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 128, (".not.(almost_equal(h(1, 2), a**(b - 1) + b*log(a)*a**(b - 1)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 1), a**(b - 1) + b*log(a)*a**(b - 1))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 129, (".not.(almost_equal(h(2, 1), a**(b - 1) + b*log(a)*a**(b - 1)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), log(a)**2*a**b)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 130, (".not.(almost_equal(h(2, 2), log(a)**2*a**b))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = x**x
   if(.not.(almost_equal(real(z), a**a)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 133, (".not.(almost_equal(real(z), a**a))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   j = grad(z)
   if(.not.(almost_equal(j(1), (log(a) + 1)*a**a)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 135, (".not.(almost_equal(j(1), (log(a) + 1)*a**a))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(j(2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 136, (".not.(almost_equal(j(2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), a**(a - 1) + (log(a) + 1)**2*a**a)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 138, (".not.(almost_equal(h(1, 1), a**(a - 1) + (log(a) + 1)**2*a**a))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(1, 2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 139, (".not.(almost_equal(h(1, 2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 140, (".not.(almost_equal(h(2, 2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 141, (".not.(almost_equal(h(2, 2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! exp
   z = exp(x)
   if(.not.(almost_equal(real(z), exp(a))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 145, (".not.(almost_equal(real(z), exp(a)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   j = grad(z)
   if(.not.(almost_equal(j(1), exp(a))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 147, (".not.(almost_equal(j(1), exp(a)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(j(2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 148, (".not.(almost_equal(j(2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), exp(a))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 150, (".not.(almost_equal(h(1, 1), exp(a)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(1, 2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 151, (".not.(almost_equal(h(1, 2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 152, (".not.(almost_equal(h(2, 1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 153, (".not.(almost_equal(h(2, 2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = exp(y)
   if(.not.(almost_equal(real(z), exp(b))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 156, (".not.(almost_equal(real(z), exp(b)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   j = grad(z)
   if(.not.(almost_equal(j(1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 158, (".not.(almost_equal(j(1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(j(2), exp(b))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 159, (".not.(almost_equal(j(2), exp(b)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 161, (".not.(almost_equal(h(1, 1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(1, 2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 162, (".not.(almost_equal(h(1, 2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 163, (".not.(almost_equal(h(2, 1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), exp(b))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 164, (".not.(almost_equal(h(2, 2), exp(b)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! log
   z = log(x)
   if(.not.(almost_equal(real(z), log(a))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 168, (".not.(almost_equal(real(z), log(a)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   j = grad(z)
   if(.not.(almost_equal(j(1), 1/a)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 170, (".not.(almost_equal(j(1), 1/a))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(j(2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 171, (".not.(almost_equal(j(2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), -1/a**2)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 173, (".not.(almost_equal(h(1, 1), -1/a**2))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(1, 2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 174, (".not.(almost_equal(h(1, 2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 175, (".not.(almost_equal(h(2, 1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 176, (".not.(almost_equal(h(2, 2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = log(y)
   if(.not.(almost_equal(real(z), log(b))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 179, (".not.(almost_equal(real(z), log(b)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   j = grad(z)
   if(.not.(almost_equal(j(1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 181, (".not.(almost_equal(j(1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(j(2), 1/b)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 182, (".not.(almost_equal(j(2), 1/b))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 184, (".not.(almost_equal(h(1, 1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(1, 2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 185, (".not.(almost_equal(h(1, 2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 186, (".not.(almost_equal(h(2, 1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), -1/b**2)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 187, (".not.(almost_equal(h(2, 2), -1/b**2))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! abs
   z = abs(Dual64_2_2(+zero, [1, 0]))
   if(.not.(almost_equal(real(z), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 191, (".not.(almost_equal(real(z), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   j = grad(z)
   if(.not.(almost_equal(j(1), one)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 193, (".not.(almost_equal(j(1), one))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(j(2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 194, (".not.(almost_equal(j(2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 195, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = abs(Dual64_2_2(-zero, [0, 1]))
   if(.not.(almost_equal(real(z), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 198, (".not.(almost_equal(real(z), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   j = grad(z)
   if(.not.(almost_equal(j(1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 200, (".not.(almost_equal(j(1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(j(2), -one)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 201, (".not.(almost_equal(j(2), -one))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 202, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = exp(log(x + y))
   if(.not.(almost_equal(real(z), a + b)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 205, (".not.(almost_equal(real(z), a + b))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), one))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 206, (".not.(all(almost_equal(grad(z), one)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 207, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = log(exp(x + y))
   if(.not.(almost_equal(real(z), a + b)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 210, (".not.(almost_equal(real(z), a + b))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), one))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 211, (".not.(all(almost_equal(grad(z), one)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero, atol=epsilon(z)))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 212, (".not.(all(almost_equal(hess(z), zero, atol=epsilon(z))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = log(x*x/y + exp(y))
   if(.not.(almost_equal(real(z), log(a*a/b + exp(b)))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 215, (".not.(almost_equal(real(z), log(a*a/b + exp(b))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   j = grad(z)
   if(.not.(almost_equal(j(1), 2*a/(b*(a**2/b + exp(b))))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 217, (".not.(almost_equal(j(1), 2*a/(b*(a**2/b + exp(b)))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(j(2), (-a**2/b**2 + exp(b))/(a**2/b + exp(b)))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 218, (".not.(almost_equal(j(2), (-a**2/b**2 + exp(b))/(a**2/b + exp(b))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), (-2*a**2 + 2*b*exp(b))/(a**2 + b*exp(b))**2)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 220, (".not.(almost_equal(h(1, 1), (-2*a**2 + 2*b*exp(b))/(a**2 + b*exp(b))**2))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(1, 2), -(2*a*(b + 1)*exp(b))/(a**2 + b*exp(b))**2)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 221, (".not.(almost_equal(h(1, 2), -(2*a*(b + 1)*exp(b))/(a**2 + b*exp(b))**2))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 1), -(2*a*(b + 1)*exp(b))/(a**2 + b*exp(b))**2)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 222, (".not.(almost_equal(h(2, 1), -(2*a*(b + 1)*exp(b))/(a**2 + b*exp(b))**2))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), (2*a**2*(a**2 + b*exp(b)) + b**3*(a**2 + b*exp(b))*exp(b) - (a**2 - b**2*exp(b))**2)/(b**2*(a**2 + b*exp(b))**2))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 223, (".not.(almost_equal(h(2, 2), (2*a**2*(a**2 + b*exp(b)) + b**3*(a**2 + b*exp(b))*exp(b) - (a**2 - b**2*exp(b))**2)/(b**2*(a**2 + b*exp(b))**2)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! -x
   if(.not.(almost_equal(real(-z), -real(z))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 226, (".not.(almost_equal(real(-z), -real(z)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(-z), -grad(z)))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 227, (".not.(all(almost_equal(grad(-z), -grad(z))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(-z), -hess(z)))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 228, (".not.(all(almost_equal(hess(-z), -hess(z))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(x == a))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 230, (".not.(x == a)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(x <= a))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 231, (".not.(x <= a)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(x >= a))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 232, (".not.(x >= a)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(x < 100))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 233, (".not.(x < 100)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(x > -100))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 234, (".not.(x > -100)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(x /= 100))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 235, (".not.(x /= 100)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(x > y))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 237, (".not.(x > y)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(y < x))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 238, (".not.(y < x)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(x <= x))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 239, (".not.(x <= x)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(x >= x))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 240, (".not.(x >= x)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(x == x))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 241, (".not.(x == x)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(x /= y))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 242, (".not.(x /= y)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(max(x, y) == x))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 244, (".not.(max(x, y) == x)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(min(x, y) == y))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 245, (".not.(min(x, y) == y)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(max(x, nan) == x))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 246, (".not.(max(x, nan) == x)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(max(nan, x) == x))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 247, (".not.(max(nan, x) == x)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(min(x, nan) == x))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 248, (".not.(min(x, nan) == x)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(min(nan, x) == x))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 249, (".not.(min(nan, x) == x)"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(is_nan(nan)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 250, (".not.(is_nan(nan))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(is_nan(min(nan, nan))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 251, (".not.(is_nan(min(nan, nan)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(is_nan(max(nan, nan))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 252, (".not.(is_nan(max(nan, nan)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! scalar to dual operations
   ! +
   z = x + 3
   if(.not.(almost_equal(real(z), a + 3)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 258, (".not.(almost_equal(real(z), a + 3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), [one, zero]))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 259, (".not.(all(almost_equal(grad(z), [one, zero])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 260, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = y + 3
   if(.not.(almost_equal(real(z), b + 3)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 262, (".not.(almost_equal(real(z), b + 3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), [zero, one]))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 263, (".not.(all(almost_equal(grad(z), [zero, one])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 264, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = 3 + x
   if(.not.(almost_equal(real(z), a + 3)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 267, (".not.(almost_equal(real(z), a + 3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), [one, zero]))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 268, (".not.(all(almost_equal(grad(z), [one, zero])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 269, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = 3 + y
   if(.not.(almost_equal(real(z), b + 3)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 271, (".not.(almost_equal(real(z), b + 3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), [zero, one]))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 272, (".not.(all(almost_equal(grad(z), [zero, one])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 273, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! +
   z = x - 3
   if(.not.(almost_equal(real(z), a - 3)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 277, (".not.(almost_equal(real(z), a - 3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), [one, zero]))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 278, (".not.(all(almost_equal(grad(z), [one, zero])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 279, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = y - 3
   if(.not.(almost_equal(real(z), b - 3)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 281, (".not.(almost_equal(real(z), b - 3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), [zero, one]))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 282, (".not.(all(almost_equal(grad(z), [zero, one])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 283, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = 3 - x
   if(.not.(almost_equal(real(z), 3 - a)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 286, (".not.(almost_equal(real(z), 3 - a))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), [-one, zero]))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 287, (".not.(all(almost_equal(grad(z), [-one, zero])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 288, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = 3 - y
   if(.not.(almost_equal(real(z), 3 - b)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 290, (".not.(almost_equal(real(z), 3 - b))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), [zero, -one]))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 291, (".not.(all(almost_equal(grad(z), [zero, -one])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 292, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! *
   z = x*3
   if(.not.(almost_equal(real(z), a*3)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 296, (".not.(almost_equal(real(z), a*3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), [three, zero]))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 297, (".not.(all(almost_equal(grad(z), [three, zero])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 298, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = y*3
   if(.not.(almost_equal(real(z), b*3)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 300, (".not.(almost_equal(real(z), b*3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), [zero, three]))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 301, (".not.(all(almost_equal(grad(z), [zero, three])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 302, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = 3*x
   if(.not.(almost_equal(real(z), a*3)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 305, (".not.(almost_equal(real(z), a*3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), [three, zero]))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 306, (".not.(all(almost_equal(grad(z), [three, zero])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 307, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = 3*y
   if(.not.(almost_equal(real(z), b*3)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 309, (".not.(almost_equal(real(z), b*3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(z), [zero, three]))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 310, (".not.(all(almost_equal(grad(z), [zero, three])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 311, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! /
   z = x/3
   if(.not.(almost_equal(real(z), a/3)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 315, (".not.(almost_equal(real(z), a/3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   j = grad(z)
   if(.not.(almost_equal(j(1), one/3)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 317, (".not.(almost_equal(j(1), one/3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(j(2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 318, (".not.(almost_equal(j(2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 319, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = y/3
   if(.not.(almost_equal(real(z), b/3)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 321, (".not.(almost_equal(real(z), b/3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   j = grad(z)
   if(.not.(almost_equal(j(1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 323, (".not.(almost_equal(j(1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(j(2), one/3)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 324, (".not.(almost_equal(j(2), one/3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(z), zero))))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 325, (".not.(all(almost_equal(hess(z), zero)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = 3/x
   if(.not.(almost_equal(real(z), 3/a)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 328, (".not.(almost_equal(real(z), 3/a))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   j = grad(z)
   if(.not.(almost_equal(j(1), -3/a**2)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 330, (".not.(almost_equal(j(1), -3/a**2))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(j(2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 331, (".not.(almost_equal(j(2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), 6/a**3)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 333, (".not.(almost_equal(h(1, 1), 6/a**3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(1, 2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 334, (".not.(almost_equal(h(1, 2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 335, (".not.(almost_equal(h(2, 1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 336, (".not.(almost_equal(h(2, 2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = 3/y
   if(.not.(almost_equal(real(z), 3/b)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 338, (".not.(almost_equal(real(z), 3/b))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   j = grad(z)
   if(.not.(almost_equal(j(1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 340, (".not.(almost_equal(j(1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(j(2), -3/b**2)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 341, (".not.(almost_equal(j(2), -3/b**2))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 343, (".not.(almost_equal(h(1, 1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(1, 2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 344, (".not.(almost_equal(h(1, 2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 345, (".not.(almost_equal(h(2, 1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), 6/b**3)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 346, (".not.(almost_equal(h(2, 2), 6/b**3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   ! **
   z = x**3
   if(.not.(almost_equal(real(z), a**3)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 350, (".not.(almost_equal(real(z), a**3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   j = grad(z)
   if(.not.(almost_equal(j(1), 3*a**2)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 352, (".not.(almost_equal(j(1), 3*a**2))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(j(2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 353, (".not.(almost_equal(j(2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), 6*a)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 355, (".not.(almost_equal(h(1, 1), 6*a))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(1, 2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 356, (".not.(almost_equal(h(1, 2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 357, (".not.(almost_equal(h(2, 1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 358, (".not.(almost_equal(h(2, 2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = y**3
   if(.not.(almost_equal(real(z), b**3)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 360, (".not.(almost_equal(real(z), b**3))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   j = grad(z)
   if(.not.(almost_equal(j(1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 362, (".not.(almost_equal(j(1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(j(2), 3*b**2)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 363, (".not.(almost_equal(j(2), 3*b**2))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 365, (".not.(almost_equal(h(1, 1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(1, 2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 366, (".not.(almost_equal(h(1, 2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 367, (".not.(almost_equal(h(2, 1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), 6*b)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 368, (".not.(almost_equal(h(2, 2), 6*b))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = 3**x
   if(.not.(almost_equal(real(z), 3**a)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 371, (".not.(almost_equal(real(z), 3**a))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   j = grad(z)
   if(.not.(almost_equal(j(1), log(three)*3**a)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 373, (".not.(almost_equal(j(1), log(three)*3**a))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(j(2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 374, (".not.(almost_equal(j(2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), log(three)**2*3**a)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 376, (".not.(almost_equal(h(1, 1), log(three)**2*3**a))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(1, 2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 377, (".not.(almost_equal(h(1, 2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 378, (".not.(almost_equal(h(2, 1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 379, (".not.(almost_equal(h(2, 2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   z = 3**y
   if(.not.(almost_equal(real(z), 3**b)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 381, (".not.(almost_equal(real(z), 3**b))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   j = grad(z)
   if(.not.(almost_equal(j(1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 383, (".not.(almost_equal(j(1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(j(2), log(three)*3**b)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 384, (".not.(almost_equal(j(2), log(three)*3**b))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 386, (".not.(almost_equal(h(1, 1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(1, 2), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 387, (".not.(almost_equal(h(1, 2), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 1), zero)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 388, (".not.(almost_equal(h(2, 1), zero))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), log(three)**2*3**b)))then; write(error_unit, *) "ERROR: ", "ad_lib_test.f90", " ", 389, (".not.(almost_equal(h(2, 2), log(three)**2*3**b))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   write(OUTPUT_UNIT, *) 'SUCCESS: ', "ad_lib_test.f90"
   stop
end program main
