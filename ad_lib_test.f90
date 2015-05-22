program main
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT, real64
   use, non_intrinsic:: comparable_lib, only: almost_equal
   use, non_intrinsic:: ad_lib
   implicit none
   type(Dual64_2_2):: x, y, z
   Real(kind=real64), parameter:: a = 6, b = 2, zero = 0, one = 1
   Real(kind=real64):: h(2, 2), j(2)
   x%f = a
   x%g(1) = 1
   y%f = b
   y%g(2) = 1
   z = x + y
   if(.not.(real(z) == a + b))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 20, (".not.(real(z) == a + b)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(jaco(z) == [1, 1])))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 21, (".not.(all(jaco(z) == [1, 1]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(hess(z) == 0)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 22, (".not.(all(hess(z) == 0))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   z = x + x
   if(.not.(real(z) == a + a))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 25, (".not.(real(z) == a + a)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(jaco(z) == [2, 0])))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 26, (".not.(all(jaco(z) == [2, 0]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(hess(z) == 0)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 27, (".not.(all(hess(z) == 0))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   z = x - y
   if(.not.(real(z) == a - b))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 30, (".not.(real(z) == a - b)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(jaco(z) == [1, -1])))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 31, (".not.(all(jaco(z) == [1, -1]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(hess(z) == 0)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 32, (".not.(all(hess(z) == 0))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   z = x - x
   if(.not.(real(z) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 35, (".not.(real(z) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(jaco(z) == 0)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 36, (".not.(all(jaco(z) == 0))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(hess(z) == 0)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 37, (".not.(all(hess(z) == 0))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   z = x*y
   if(.not.(real(z) == a*b))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 40, (".not.(real(z) == a*b)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(jaco(z) == [b, a])))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 41, (".not.(all(jaco(z) == [b, a]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(h(1, 1) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 43, (".not.(h(1, 1) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(h(1, 2) == 1))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 44, (".not.(h(1, 2) == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(h(2, 1) == 1))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 45, (".not.(h(2, 1) == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(h(2, 2) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 46, (".not.(h(2, 2) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   z = x*x
   if(.not.(real(z) == a*a))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 49, (".not.(real(z) == a*a)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(jaco(z) == [2*a, zero])))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 50, (".not.(all(jaco(z) == [2*a, zero]))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(h(1, 1) == 2))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 52, (".not.(h(1, 1) == 2)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(h(1, 2) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 53, (".not.(h(1, 2) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(h(2, 1) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 54, (".not.(h(2, 1) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(h(2, 2) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 55, (".not.(h(2, 2) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   z = x/y
   if(.not.(real(z) == a/b))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 58, (".not.(real(z) == a/b)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(jaco(z), [1/b, -a/b**2]))))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 59, (".not.(all(almost_equal(jaco(z), [1/b, -a/b**2])))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(h(1, 1) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 61, (".not.(h(1, 1) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(1, 2), -1/b**2)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 62, (".not.(almost_equal(h(1, 2), -1/b**2))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 1), -1/b**2)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 63, (".not.(almost_equal(h(2, 1), -1/b**2))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), 2*a/b**3)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 64, (".not.(almost_equal(h(2, 2), 2*a/b**3))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   z = x/x
   if(.not.(real(z) == 1))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 67, (".not.(real(z) == 1)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(jaco(z) == 0)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 68, (".not.(all(jaco(z) == 0))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(hess(z) == 0)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 69, (".not.(all(hess(z) == 0))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   z = x**y
   if(.not.(real(z) == a**b))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 72, (".not.(real(z) == a**b)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(jaco(z), [b*a**(b - 1), log(a)*a**b]))))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 73, (".not.(all(almost_equal(jaco(z), [b*a**(b - 1), log(a)*a**b])))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), b*(b - 1)*a**(b - 2))))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 75, (".not.(almost_equal(h(1, 1), b*(b - 1)*a**(b - 2)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(1, 2), a**(b - 1) + b*log(a)*a**(b - 1))))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 76, (".not.(almost_equal(h(1, 2), a**(b - 1) + b*log(a)*a**(b - 1)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 1), a**(b - 1) + b*log(a)*a**(b - 1))))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 77, (".not.(almost_equal(h(2, 1), a**(b - 1) + b*log(a)*a**(b - 1)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), log(a)**2*a**b)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 78, (".not.(almost_equal(h(2, 2), log(a)**2*a**b))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   z = x**x
   if(.not.(real(z) == a**a))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 81, (".not.(real(z) == a**a)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   j = jaco(z)
   if(.not.(almost_equal(j(1), (log(a) + 1)*a**a)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 83, (".not.(almost_equal(j(1), (log(a) + 1)*a**a))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(j(2) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 84, (".not.(j(2) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), a**(a - 1) + (log(a) + 1)**2*a**a)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 86, (".not.(almost_equal(h(1, 1), a**(a - 1) + (log(a) + 1)**2*a**a))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(h(1, 2) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 87, (".not.(h(1, 2) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(h(2, 2) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 88, (".not.(h(2, 2) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(h(2, 2) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 89, (".not.(h(2, 2) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   z = exp(x)
   if(.not.(almost_equal(real(z), exp(a))))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 92, (".not.(almost_equal(real(z), exp(a)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   j = jaco(z)
   if(.not.(almost_equal(j(1), exp(a))))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 94, (".not.(almost_equal(j(1), exp(a)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(j(2) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 95, (".not.(j(2) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), exp(a))))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 97, (".not.(almost_equal(h(1, 1), exp(a)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(h(1, 2) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 98, (".not.(h(1, 2) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(h(2, 1) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 99, (".not.(h(2, 1) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(h(2, 2) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 100, (".not.(h(2, 2) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   z = exp(y)
   if(.not.(almost_equal(real(z), exp(b))))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 103, (".not.(almost_equal(real(z), exp(b)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   j = jaco(z)
   if(.not.(j(1) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 105, (".not.(j(1) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(almost_equal(j(2), exp(b))))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 106, (".not.(almost_equal(j(2), exp(b)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(h(1, 1) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 108, (".not.(h(1, 1) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(h(1, 2) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 109, (".not.(h(1, 2) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(h(2, 1) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 110, (".not.(h(2, 1) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), exp(b))))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 111, (".not.(almost_equal(h(2, 2), exp(b)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   z = log(x)
   if(.not.(almost_equal(real(z), log(a))))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 114, (".not.(almost_equal(real(z), log(a)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   j = jaco(z)
   if(.not.(almost_equal(j(1), 1/a)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 116, (".not.(almost_equal(j(1), 1/a))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(j(2) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 117, (".not.(j(2) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), -1/a**2)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 119, (".not.(almost_equal(h(1, 1), -1/a**2))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(h(1, 2) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 120, (".not.(h(1, 2) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(h(2, 1) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 121, (".not.(h(2, 1) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(h(2, 2) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 122, (".not.(h(2, 2) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   z = log(y)
   if(.not.(almost_equal(real(z), log(b))))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 125, (".not.(almost_equal(real(z), log(b)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   j = jaco(z)
   if(.not.(j(1) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 127, (".not.(j(1) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(almost_equal(j(2), 1/b)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 128, (".not.(almost_equal(j(2), 1/b))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(h(1, 1) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 130, (".not.(h(1, 1) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(h(1, 2) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 131, (".not.(h(1, 2) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(h(2, 1) == 0))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 132, (".not.(h(2, 1) == 0)"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), -1/b**2)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 133, (".not.(almost_equal(h(2, 2), -1/b**2))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   z = exp(log(x + y))
   if(.not.(almost_equal(real(z), a + b)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 136, (".not.(almost_equal(real(z), a + b))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(jaco(z), one))))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 137, (".not.(all(almost_equal(jaco(z), one)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(hess(z) == 0)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 138, (".not.(all(hess(z) == 0))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   z = log(exp(x + y))
   if(.not.(almost_equal(real(z), a + b)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 141, (".not.(almost_equal(real(z), a + b))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(jaco(z), one))))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 142, (".not.(all(almost_equal(jaco(z), one)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(all(hess(z) == 0)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 143, (".not.(all(hess(z) == 0))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   z = log(x*x/y + exp(y))
   if(.not.(almost_equal(real(z), log(a*a/b + exp(b)))))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 146, (".not.(almost_equal(real(z), log(a*a/b + exp(b))))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   j = jaco(z)
   if(.not.(almost_equal(j(1), 2*a/(b*(a**2/b + exp(b))))))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 148, (".not.(almost_equal(j(1), 2*a/(b*(a**2/b + exp(b)))))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(almost_equal(j(2), (-a**2/b**2 + exp(b))/(a**2/b + exp(b)))))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 149, (".not.(almost_equal(j(2), (-a**2/b**2 + exp(b))/(a**2/b + exp(b))))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   h = hess(z)
   if(.not.(almost_equal(h(1, 1), (-2*a**2 + 2*b*exp(b))/(a**2 + b*exp(b))**2)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 151, (".not.(almost_equal(h(1, 1), (-2*a**2 + 2*b*exp(b))/(a**2 + b*exp(b))**2))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(1, 2), -(2*a*(b + 1)*exp(b))/(a**2 + b*exp(b))**2)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 152, (".not.(almost_equal(h(1, 2), -(2*a*(b + 1)*exp(b))/(a**2 + b*exp(b))**2))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 1), -(2*a*(b + 1)*exp(b))/(a**2 + b*exp(b))**2)))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 153, (".not.(almost_equal(h(2, 1), -(2*a*(b + 1)*exp(b))/(a**2 + b*exp(b))**2))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   if(.not.(almost_equal(h(2, 2), (2*a**2*(a**2 + b*exp(b)) + b**3*(a**2 + b*exp(b))*exp(b) - (a**2 - b**2*exp(b))**2)/(b**2*(a**2 + b*exp(b))**2))))then; write(ERROR_UNIT, *) "RAISE: ", "ad_lib_test.f90", " ", 154, (".not.(almost_equal(h(2, 2), (2*a**2*(a**2 + b*exp(b)) + b**3*(a**2 + b*exp(b))*exp(b) - (a**2 - b**2*exp(b))**2)/(b**2*(a**2 + b*exp(b))**2)))"); error stop; end if; write(OUTPUT_UNIT, '(a)', advance='no') '.'
   write(OUTPUT_UNIT, *) 'SUCCESS: ', "ad_lib_test.f90"
   stop
end program main
