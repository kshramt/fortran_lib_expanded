module quadrature_lib
   use, intrinsic:: iso_fortran_env, only: input_unit, output_unit, error_unit
   use, intrinsic:: iso_fortran_env, only: int64
      use, intrinsic:: iso_fortran_env, only: real32
      use, intrinsic:: iso_fortran_env, only: real64
      use, intrinsic:: iso_fortran_env, only: real128
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, non_intrinsic:: ad_lib
   implicit none
   private
   public:: romberg
   ! Interface
      interface romberg
         module procedure rombergReal32_args
      end interface romberg
      interface romberg
         module procedure rombergReal32
      end interface romberg
      interface romberg
         module procedure rombergReal64_args
      end interface romberg
      interface romberg
         module procedure rombergReal64
      end interface romberg
      interface romberg
         module procedure rombergReal128_args
      end interface romberg
      interface romberg
         module procedure rombergReal128
      end interface romberg
      interface romberg
         module procedure rombergDual32_1_1_args
      end interface romberg
      interface romberg
         module procedure rombergDual32_1_1
      end interface romberg
      interface romberg
         module procedure rombergDual32_1_2_args
      end interface romberg
      interface romberg
         module procedure rombergDual32_1_2
      end interface romberg
      interface romberg
         module procedure rombergDual32_1_5_args
      end interface romberg
      interface romberg
         module procedure rombergDual32_1_5
      end interface romberg
      interface romberg
         module procedure rombergDual32_1_7_args
      end interface romberg
      interface romberg
         module procedure rombergDual32_1_7
      end interface romberg
      interface romberg
         module procedure rombergDual32_2_1_args
      end interface romberg
      interface romberg
         module procedure rombergDual32_2_1
      end interface romberg
      interface romberg
         module procedure rombergDual32_2_2_args
      end interface romberg
      interface romberg
         module procedure rombergDual32_2_2
      end interface romberg
      interface romberg
         module procedure rombergDual32_2_5_args
      end interface romberg
      interface romberg
         module procedure rombergDual32_2_5
      end interface romberg
      interface romberg
         module procedure rombergDual32_2_7_args
      end interface romberg
      interface romberg
         module procedure rombergDual32_2_7
      end interface romberg
      interface romberg
         module procedure rombergDual64_1_1_args
      end interface romberg
      interface romberg
         module procedure rombergDual64_1_1
      end interface romberg
      interface romberg
         module procedure rombergDual64_1_2_args
      end interface romberg
      interface romberg
         module procedure rombergDual64_1_2
      end interface romberg
      interface romberg
         module procedure rombergDual64_1_5_args
      end interface romberg
      interface romberg
         module procedure rombergDual64_1_5
      end interface romberg
      interface romberg
         module procedure rombergDual64_1_7_args
      end interface romberg
      interface romberg
         module procedure rombergDual64_1_7
      end interface romberg
      interface romberg
         module procedure rombergDual64_2_1_args
      end interface romberg
      interface romberg
         module procedure rombergDual64_2_1
      end interface romberg
      interface romberg
         module procedure rombergDual64_2_2_args
      end interface romberg
      interface romberg
         module procedure rombergDual64_2_2
      end interface romberg
      interface romberg
         module procedure rombergDual64_2_5_args
      end interface romberg
      interface romberg
         module procedure rombergDual64_2_5
      end interface romberg
      interface romberg
         module procedure rombergDual64_2_7_args
      end interface romberg
      interface romberg
         module procedure rombergDual64_2_7
      end interface romberg
      interface romberg
         module procedure rombergDual128_1_1_args
      end interface romberg
      interface romberg
         module procedure rombergDual128_1_1
      end interface romberg
      interface romberg
         module procedure rombergDual128_1_2_args
      end interface romberg
      interface romberg
         module procedure rombergDual128_1_2
      end interface romberg
      interface romberg
         module procedure rombergDual128_1_5_args
      end interface romberg
      interface romberg
         module procedure rombergDual128_1_5
      end interface romberg
      interface romberg
         module procedure rombergDual128_1_7_args
      end interface romberg
      interface romberg
         module procedure rombergDual128_1_7
      end interface romberg
      interface romberg
         module procedure rombergDual128_2_1_args
      end interface romberg
      interface romberg
         module procedure rombergDual128_2_1
      end interface romberg
      interface romberg
         module procedure rombergDual128_2_2_args
      end interface romberg
      interface romberg
         module procedure rombergDual128_2_2
      end interface romberg
      interface romberg
         module procedure rombergDual128_2_5_args
      end interface romberg
      interface romberg
         module procedure rombergDual128_2_5
      end interface romberg
      interface romberg
         module procedure rombergDual128_2_7_args
      end interface romberg
      interface romberg
         module procedure rombergDual128_2_7
      end interface romberg
contains
      function rombergReal32_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
               Real(kind=real32):: ret
               Real(kind=real32), intent(in):: x
               Real(kind=real32), intent(in):: args(:)
            end function f
         end interface
         Real(kind=real32):: ret
         Real(kind=real32), intent(in):: a, b
         Real(kind=real32), intent(in):: args(:)
         Real(kind=real32), intent(in), optional:: rtol, atol
         Real(kind=real32), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         Real(kind=real32):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 333, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implReal32_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergReal32_args
      function romberg_implReal32_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
               Real(kind=real32):: ret
               Real(kind=real32), intent(in):: x
               Real(kind=real32), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 15
         Integer(kind=int64), parameter:: i_zero = 0
         Real(kind=real32):: ret
         Real(kind=real32), intent(in):: a, b
         Real(kind=real32), intent(in):: args(:)
         Real(kind=real32), intent(in):: rtol, atol
         Real(kind=real32), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         Real(kind=real32):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         Real(kind=real32):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fReal32_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errReal32(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implReal32_args
      recursive function sum_fReal32_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
               Real(kind=real32):: ret
               Real(kind=real32), intent(in):: x
               Real(kind=real32), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         Real(kind=real32):: ret
         Real(kind=real32), intent(in):: x1, h
         Real(kind=real32), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ret = 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fReal32_args(f, x1, h, i1, i_mid , args) + sum_fReal32_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fReal32_args
      function rombergReal32(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
               Real(kind=real32):: ret
               Real(kind=real32), intent(in):: x
               ! Real(kind=real32), intent(in):: args(:)
            end function f
         end interface
         Real(kind=real32):: ret
         Real(kind=real32), intent(in):: a, b
         ! Real(kind=real32), intent(in):: args(:)
         Real(kind=real32), intent(in), optional:: rtol, atol
         Real(kind=real32), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         Real(kind=real32):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 475, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implReal32(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergReal32
      function romberg_implReal32(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
               Real(kind=real32):: ret
               Real(kind=real32), intent(in):: x
               ! Real(kind=real32), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 15
         Integer(kind=int64), parameter:: i_zero = 0
         Real(kind=real32):: ret
         Real(kind=real32), intent(in):: a, b
         ! Real(kind=real32), intent(in):: args(:)
         Real(kind=real32), intent(in):: rtol, atol
         Real(kind=real32), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         Real(kind=real32):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         Real(kind=real32):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fReal32(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errReal32(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implReal32
      recursive function sum_fReal32(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
               Real(kind=real32):: ret
               Real(kind=real32), intent(in):: x
               ! Real(kind=real32), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         Real(kind=real32):: ret
         Real(kind=real32), intent(in):: x1, h
         ! Real(kind=real32), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ret = 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fReal32(f, x1, h, i1, i_mid ) + sum_fReal32(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fReal32
         function sub_errReal32(integ_right, integ_above, k) result(ret)
            Real(kind=real32), parameter:: four = 4
            Real(kind=real32):: ret
            Real(kind=real32), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errReal32
      function rombergReal64_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
               Real(kind=real64):: ret
               Real(kind=real64), intent(in):: x
               Real(kind=real64), intent(in):: args(:)
            end function f
         end interface
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: a, b
         Real(kind=real64), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: rtol, atol
         Real(kind=real64), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         Real(kind=real64):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 631, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implReal64_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergReal64_args
      function romberg_implReal64_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
               Real(kind=real64):: ret
               Real(kind=real64), intent(in):: x
               Real(kind=real64), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 30
         Integer(kind=int64), parameter:: i_zero = 0
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: a, b
         Real(kind=real64), intent(in):: args(:)
         Real(kind=real64), intent(in):: rtol, atol
         Real(kind=real64), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         Real(kind=real64):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         Real(kind=real64):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fReal64_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errReal64(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implReal64_args
      recursive function sum_fReal64_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
               Real(kind=real64):: ret
               Real(kind=real64), intent(in):: x
               Real(kind=real64), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: x1, h
         Real(kind=real64), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ret = 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fReal64_args(f, x1, h, i1, i_mid , args) + sum_fReal64_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fReal64_args
      function rombergReal64(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
               Real(kind=real64):: ret
               Real(kind=real64), intent(in):: x
               ! Real(kind=real64), intent(in):: args(:)
            end function f
         end interface
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: a, b
         ! Real(kind=real64), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: rtol, atol
         Real(kind=real64), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         Real(kind=real64):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 773, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implReal64(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergReal64
      function romberg_implReal64(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
               Real(kind=real64):: ret
               Real(kind=real64), intent(in):: x
               ! Real(kind=real64), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 30
         Integer(kind=int64), parameter:: i_zero = 0
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: a, b
         ! Real(kind=real64), intent(in):: args(:)
         Real(kind=real64), intent(in):: rtol, atol
         Real(kind=real64), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         Real(kind=real64):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         Real(kind=real64):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fReal64(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errReal64(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implReal64
      recursive function sum_fReal64(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
               Real(kind=real64):: ret
               Real(kind=real64), intent(in):: x
               ! Real(kind=real64), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: x1, h
         ! Real(kind=real64), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ret = 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fReal64(f, x1, h, i1, i_mid ) + sum_fReal64(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fReal64
         function sub_errReal64(integ_right, integ_above, k) result(ret)
            Real(kind=real64), parameter:: four = 4
            Real(kind=real64):: ret
            Real(kind=real64), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errReal64
      function rombergReal128_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
               Real(kind=real128):: ret
               Real(kind=real128), intent(in):: x
               Real(kind=real128), intent(in):: args(:)
            end function f
         end interface
         Real(kind=real128):: ret
         Real(kind=real128), intent(in):: a, b
         Real(kind=real128), intent(in):: args(:)
         Real(kind=real128), intent(in), optional:: rtol, atol
         Real(kind=real128), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         Real(kind=real128):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 929, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implReal128_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergReal128_args
      function romberg_implReal128_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
               Real(kind=real128):: ret
               Real(kind=real128), intent(in):: x
               Real(kind=real128), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 45
         Integer(kind=int64), parameter:: i_zero = 0
         Real(kind=real128):: ret
         Real(kind=real128), intent(in):: a, b
         Real(kind=real128), intent(in):: args(:)
         Real(kind=real128), intent(in):: rtol, atol
         Real(kind=real128), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         Real(kind=real128):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         Real(kind=real128):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fReal128_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errReal128(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implReal128_args
      recursive function sum_fReal128_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
               Real(kind=real128):: ret
               Real(kind=real128), intent(in):: x
               Real(kind=real128), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         Real(kind=real128):: ret
         Real(kind=real128), intent(in):: x1, h
         Real(kind=real128), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ret = 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fReal128_args(f, x1, h, i1, i_mid , args) + sum_fReal128_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fReal128_args
      function rombergReal128(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
               Real(kind=real128):: ret
               Real(kind=real128), intent(in):: x
               ! Real(kind=real128), intent(in):: args(:)
            end function f
         end interface
         Real(kind=real128):: ret
         Real(kind=real128), intent(in):: a, b
         ! Real(kind=real128), intent(in):: args(:)
         Real(kind=real128), intent(in), optional:: rtol, atol
         Real(kind=real128), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         Real(kind=real128):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 1071, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implReal128(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergReal128
      function romberg_implReal128(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
               Real(kind=real128):: ret
               Real(kind=real128), intent(in):: x
               ! Real(kind=real128), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 45
         Integer(kind=int64), parameter:: i_zero = 0
         Real(kind=real128):: ret
         Real(kind=real128), intent(in):: a, b
         ! Real(kind=real128), intent(in):: args(:)
         Real(kind=real128), intent(in):: rtol, atol
         Real(kind=real128), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         Real(kind=real128):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         Real(kind=real128):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fReal128(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errReal128(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implReal128
      recursive function sum_fReal128(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
               Real(kind=real128):: ret
               Real(kind=real128), intent(in):: x
               ! Real(kind=real128), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         Real(kind=real128):: ret
         Real(kind=real128), intent(in):: x1, h
         ! Real(kind=real128), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ret = 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fReal128(f, x1, h, i1, i_mid ) + sum_fReal128(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fReal128
         function sub_errReal128(integ_right, integ_above, k) result(ret)
            Real(kind=real128), parameter:: four = 4
            Real(kind=real128):: ret
            Real(kind=real128), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errReal128
      function rombergDual32_1_1_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_1):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_1_1), intent(in):: args(:)
            end function f
         end interface
         type(Dual32_1_1):: ret
         Real(kind=real32), intent(in):: a, b
         type(Dual32_1_1), intent(in):: args(:)
         Real(kind=real32), intent(in), optional:: rtol, atol
         type(Dual32_1_1), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual32_1_1):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 1229, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual32_1_1_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual32_1_1_args
      function romberg_implDual32_1_1_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_1):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_1_1), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 15
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual32_1_1):: ret
         Real(kind=real32), intent(in):: a, b
         type(Dual32_1_1), intent(in):: args(:)
         Real(kind=real32), intent(in):: rtol, atol
         type(Dual32_1_1), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual32_1_1):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual32_1_1):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual32_1_1_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual32_1_1(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual32_1_1_args
      recursive function sum_fDual32_1_1_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_1):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_1_1), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual32_1_1):: ret
         Real(kind=real32), intent(in):: x1, h
         type(Dual32_1_1), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual32_1_1_args(f, x1, h, i1, i_mid , args) + sum_fDual32_1_1_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual32_1_1_args
      function rombergDual32_1_1(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_1):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_1_1), intent(in):: args(:)
            end function f
         end interface
         type(Dual32_1_1):: ret
         Real(kind=real32), intent(in):: a, b
         ! type(Dual32_1_1), intent(in):: args(:)
         Real(kind=real32), intent(in), optional:: rtol, atol
         type(Dual32_1_1), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual32_1_1):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 1377, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual32_1_1(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual32_1_1
      function romberg_implDual32_1_1(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_1):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_1_1), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 15
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual32_1_1):: ret
         Real(kind=real32), intent(in):: a, b
         ! type(Dual32_1_1), intent(in):: args(:)
         Real(kind=real32), intent(in):: rtol, atol
         type(Dual32_1_1), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual32_1_1):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual32_1_1):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual32_1_1(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual32_1_1(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual32_1_1
      recursive function sum_fDual32_1_1(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_1):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_1_1), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual32_1_1):: ret
         Real(kind=real32), intent(in):: x1, h
         ! type(Dual32_1_1), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual32_1_1(f, x1, h, i1, i_mid ) + sum_fDual32_1_1(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual32_1_1
         function sub_errDual32_1_1(integ_right, integ_above, k) result(ret)
            Real(kind=real32), parameter:: four = 4
            type(Dual32_1_1):: ret
            type(Dual32_1_1), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual32_1_1
      function rombergDual32_1_2_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_2):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_1_2), intent(in):: args(:)
            end function f
         end interface
         type(Dual32_1_2):: ret
         Real(kind=real32), intent(in):: a, b
         type(Dual32_1_2), intent(in):: args(:)
         Real(kind=real32), intent(in), optional:: rtol, atol
         type(Dual32_1_2), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual32_1_2):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 1539, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual32_1_2_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual32_1_2_args
      function romberg_implDual32_1_2_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_2):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_1_2), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 15
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual32_1_2):: ret
         Real(kind=real32), intent(in):: a, b
         type(Dual32_1_2), intent(in):: args(:)
         Real(kind=real32), intent(in):: rtol, atol
         type(Dual32_1_2), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual32_1_2):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual32_1_2):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual32_1_2_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual32_1_2(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual32_1_2_args
      recursive function sum_fDual32_1_2_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_2):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_1_2), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual32_1_2):: ret
         Real(kind=real32), intent(in):: x1, h
         type(Dual32_1_2), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual32_1_2_args(f, x1, h, i1, i_mid , args) + sum_fDual32_1_2_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual32_1_2_args
      function rombergDual32_1_2(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_2):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_1_2), intent(in):: args(:)
            end function f
         end interface
         type(Dual32_1_2):: ret
         Real(kind=real32), intent(in):: a, b
         ! type(Dual32_1_2), intent(in):: args(:)
         Real(kind=real32), intent(in), optional:: rtol, atol
         type(Dual32_1_2), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual32_1_2):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 1687, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual32_1_2(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual32_1_2
      function romberg_implDual32_1_2(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_2):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_1_2), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 15
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual32_1_2):: ret
         Real(kind=real32), intent(in):: a, b
         ! type(Dual32_1_2), intent(in):: args(:)
         Real(kind=real32), intent(in):: rtol, atol
         type(Dual32_1_2), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual32_1_2):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual32_1_2):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual32_1_2(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual32_1_2(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual32_1_2
      recursive function sum_fDual32_1_2(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_2):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_1_2), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual32_1_2):: ret
         Real(kind=real32), intent(in):: x1, h
         ! type(Dual32_1_2), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual32_1_2(f, x1, h, i1, i_mid ) + sum_fDual32_1_2(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual32_1_2
         function sub_errDual32_1_2(integ_right, integ_above, k) result(ret)
            Real(kind=real32), parameter:: four = 4
            type(Dual32_1_2):: ret
            type(Dual32_1_2), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual32_1_2
      function rombergDual32_1_5_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_5):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_1_5), intent(in):: args(:)
            end function f
         end interface
         type(Dual32_1_5):: ret
         Real(kind=real32), intent(in):: a, b
         type(Dual32_1_5), intent(in):: args(:)
         Real(kind=real32), intent(in), optional:: rtol, atol
         type(Dual32_1_5), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual32_1_5):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 1849, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual32_1_5_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual32_1_5_args
      function romberg_implDual32_1_5_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_5):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_1_5), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 15
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual32_1_5):: ret
         Real(kind=real32), intent(in):: a, b
         type(Dual32_1_5), intent(in):: args(:)
         Real(kind=real32), intent(in):: rtol, atol
         type(Dual32_1_5), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual32_1_5):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual32_1_5):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual32_1_5_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual32_1_5(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual32_1_5_args
      recursive function sum_fDual32_1_5_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_5):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_1_5), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual32_1_5):: ret
         Real(kind=real32), intent(in):: x1, h
         type(Dual32_1_5), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual32_1_5_args(f, x1, h, i1, i_mid , args) + sum_fDual32_1_5_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual32_1_5_args
      function rombergDual32_1_5(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_5):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_1_5), intent(in):: args(:)
            end function f
         end interface
         type(Dual32_1_5):: ret
         Real(kind=real32), intent(in):: a, b
         ! type(Dual32_1_5), intent(in):: args(:)
         Real(kind=real32), intent(in), optional:: rtol, atol
         type(Dual32_1_5), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual32_1_5):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 1997, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual32_1_5(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual32_1_5
      function romberg_implDual32_1_5(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_5):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_1_5), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 15
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual32_1_5):: ret
         Real(kind=real32), intent(in):: a, b
         ! type(Dual32_1_5), intent(in):: args(:)
         Real(kind=real32), intent(in):: rtol, atol
         type(Dual32_1_5), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual32_1_5):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual32_1_5):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual32_1_5(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual32_1_5(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual32_1_5
      recursive function sum_fDual32_1_5(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_5):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_1_5), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual32_1_5):: ret
         Real(kind=real32), intent(in):: x1, h
         ! type(Dual32_1_5), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual32_1_5(f, x1, h, i1, i_mid ) + sum_fDual32_1_5(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual32_1_5
         function sub_errDual32_1_5(integ_right, integ_above, k) result(ret)
            Real(kind=real32), parameter:: four = 4
            type(Dual32_1_5):: ret
            type(Dual32_1_5), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual32_1_5
      function rombergDual32_1_7_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_7):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_1_7), intent(in):: args(:)
            end function f
         end interface
         type(Dual32_1_7):: ret
         Real(kind=real32), intent(in):: a, b
         type(Dual32_1_7), intent(in):: args(:)
         Real(kind=real32), intent(in), optional:: rtol, atol
         type(Dual32_1_7), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual32_1_7):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 2159, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual32_1_7_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual32_1_7_args
      function romberg_implDual32_1_7_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_7):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_1_7), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 15
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual32_1_7):: ret
         Real(kind=real32), intent(in):: a, b
         type(Dual32_1_7), intent(in):: args(:)
         Real(kind=real32), intent(in):: rtol, atol
         type(Dual32_1_7), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual32_1_7):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual32_1_7):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual32_1_7_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual32_1_7(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual32_1_7_args
      recursive function sum_fDual32_1_7_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_7):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_1_7), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual32_1_7):: ret
         Real(kind=real32), intent(in):: x1, h
         type(Dual32_1_7), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual32_1_7_args(f, x1, h, i1, i_mid , args) + sum_fDual32_1_7_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual32_1_7_args
      function rombergDual32_1_7(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_7):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_1_7), intent(in):: args(:)
            end function f
         end interface
         type(Dual32_1_7):: ret
         Real(kind=real32), intent(in):: a, b
         ! type(Dual32_1_7), intent(in):: args(:)
         Real(kind=real32), intent(in), optional:: rtol, atol
         type(Dual32_1_7), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual32_1_7):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 2307, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual32_1_7(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual32_1_7
      function romberg_implDual32_1_7(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_7):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_1_7), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 15
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual32_1_7):: ret
         Real(kind=real32), intent(in):: a, b
         ! type(Dual32_1_7), intent(in):: args(:)
         Real(kind=real32), intent(in):: rtol, atol
         type(Dual32_1_7), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual32_1_7):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual32_1_7):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual32_1_7(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual32_1_7(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual32_1_7
      recursive function sum_fDual32_1_7(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_1_7):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_1_7), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual32_1_7):: ret
         Real(kind=real32), intent(in):: x1, h
         ! type(Dual32_1_7), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual32_1_7(f, x1, h, i1, i_mid ) + sum_fDual32_1_7(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual32_1_7
         function sub_errDual32_1_7(integ_right, integ_above, k) result(ret)
            Real(kind=real32), parameter:: four = 4
            type(Dual32_1_7):: ret
            type(Dual32_1_7), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual32_1_7
      function rombergDual32_2_1_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_1):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_2_1), intent(in):: args(:)
            end function f
         end interface
         type(Dual32_2_1):: ret
         Real(kind=real32), intent(in):: a, b
         type(Dual32_2_1), intent(in):: args(:)
         Real(kind=real32), intent(in), optional:: rtol, atol
         type(Dual32_2_1), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual32_2_1):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 2469, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual32_2_1_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual32_2_1_args
      function romberg_implDual32_2_1_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_1):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_2_1), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 15
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual32_2_1):: ret
         Real(kind=real32), intent(in):: a, b
         type(Dual32_2_1), intent(in):: args(:)
         Real(kind=real32), intent(in):: rtol, atol
         type(Dual32_2_1), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual32_2_1):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual32_2_1):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual32_2_1_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual32_2_1(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual32_2_1_args
      recursive function sum_fDual32_2_1_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_1):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_2_1), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual32_2_1):: ret
         Real(kind=real32), intent(in):: x1, h
         type(Dual32_2_1), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual32_2_1_args(f, x1, h, i1, i_mid , args) + sum_fDual32_2_1_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual32_2_1_args
      function rombergDual32_2_1(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_1):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_2_1), intent(in):: args(:)
            end function f
         end interface
         type(Dual32_2_1):: ret
         Real(kind=real32), intent(in):: a, b
         ! type(Dual32_2_1), intent(in):: args(:)
         Real(kind=real32), intent(in), optional:: rtol, atol
         type(Dual32_2_1), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual32_2_1):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 2617, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual32_2_1(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual32_2_1
      function romberg_implDual32_2_1(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_1):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_2_1), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 15
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual32_2_1):: ret
         Real(kind=real32), intent(in):: a, b
         ! type(Dual32_2_1), intent(in):: args(:)
         Real(kind=real32), intent(in):: rtol, atol
         type(Dual32_2_1), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual32_2_1):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual32_2_1):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual32_2_1(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual32_2_1(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual32_2_1
      recursive function sum_fDual32_2_1(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_1):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_2_1), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual32_2_1):: ret
         Real(kind=real32), intent(in):: x1, h
         ! type(Dual32_2_1), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual32_2_1(f, x1, h, i1, i_mid ) + sum_fDual32_2_1(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual32_2_1
         function sub_errDual32_2_1(integ_right, integ_above, k) result(ret)
            Real(kind=real32), parameter:: four = 4
            type(Dual32_2_1):: ret
            type(Dual32_2_1), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual32_2_1
      function rombergDual32_2_2_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_2):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_2_2), intent(in):: args(:)
            end function f
         end interface
         type(Dual32_2_2):: ret
         Real(kind=real32), intent(in):: a, b
         type(Dual32_2_2), intent(in):: args(:)
         Real(kind=real32), intent(in), optional:: rtol, atol
         type(Dual32_2_2), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual32_2_2):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 2779, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual32_2_2_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual32_2_2_args
      function romberg_implDual32_2_2_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_2):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_2_2), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 15
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual32_2_2):: ret
         Real(kind=real32), intent(in):: a, b
         type(Dual32_2_2), intent(in):: args(:)
         Real(kind=real32), intent(in):: rtol, atol
         type(Dual32_2_2), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual32_2_2):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual32_2_2):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual32_2_2_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual32_2_2(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual32_2_2_args
      recursive function sum_fDual32_2_2_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_2):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_2_2), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual32_2_2):: ret
         Real(kind=real32), intent(in):: x1, h
         type(Dual32_2_2), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual32_2_2_args(f, x1, h, i1, i_mid , args) + sum_fDual32_2_2_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual32_2_2_args
      function rombergDual32_2_2(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_2):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_2_2), intent(in):: args(:)
            end function f
         end interface
         type(Dual32_2_2):: ret
         Real(kind=real32), intent(in):: a, b
         ! type(Dual32_2_2), intent(in):: args(:)
         Real(kind=real32), intent(in), optional:: rtol, atol
         type(Dual32_2_2), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual32_2_2):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 2927, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual32_2_2(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual32_2_2
      function romberg_implDual32_2_2(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_2):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_2_2), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 15
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual32_2_2):: ret
         Real(kind=real32), intent(in):: a, b
         ! type(Dual32_2_2), intent(in):: args(:)
         Real(kind=real32), intent(in):: rtol, atol
         type(Dual32_2_2), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual32_2_2):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual32_2_2):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual32_2_2(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual32_2_2(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual32_2_2
      recursive function sum_fDual32_2_2(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_2):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_2_2), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual32_2_2):: ret
         Real(kind=real32), intent(in):: x1, h
         ! type(Dual32_2_2), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual32_2_2(f, x1, h, i1, i_mid ) + sum_fDual32_2_2(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual32_2_2
         function sub_errDual32_2_2(integ_right, integ_above, k) result(ret)
            Real(kind=real32), parameter:: four = 4
            type(Dual32_2_2):: ret
            type(Dual32_2_2), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual32_2_2
      function rombergDual32_2_5_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_5):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_2_5), intent(in):: args(:)
            end function f
         end interface
         type(Dual32_2_5):: ret
         Real(kind=real32), intent(in):: a, b
         type(Dual32_2_5), intent(in):: args(:)
         Real(kind=real32), intent(in), optional:: rtol, atol
         type(Dual32_2_5), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual32_2_5):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 3089, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual32_2_5_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual32_2_5_args
      function romberg_implDual32_2_5_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_5):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_2_5), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 15
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual32_2_5):: ret
         Real(kind=real32), intent(in):: a, b
         type(Dual32_2_5), intent(in):: args(:)
         Real(kind=real32), intent(in):: rtol, atol
         type(Dual32_2_5), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual32_2_5):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual32_2_5):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual32_2_5_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual32_2_5(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual32_2_5_args
      recursive function sum_fDual32_2_5_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_5):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_2_5), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual32_2_5):: ret
         Real(kind=real32), intent(in):: x1, h
         type(Dual32_2_5), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual32_2_5_args(f, x1, h, i1, i_mid , args) + sum_fDual32_2_5_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual32_2_5_args
      function rombergDual32_2_5(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_5):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_2_5), intent(in):: args(:)
            end function f
         end interface
         type(Dual32_2_5):: ret
         Real(kind=real32), intent(in):: a, b
         ! type(Dual32_2_5), intent(in):: args(:)
         Real(kind=real32), intent(in), optional:: rtol, atol
         type(Dual32_2_5), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual32_2_5):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 3237, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual32_2_5(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual32_2_5
      function romberg_implDual32_2_5(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_5):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_2_5), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 15
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual32_2_5):: ret
         Real(kind=real32), intent(in):: a, b
         ! type(Dual32_2_5), intent(in):: args(:)
         Real(kind=real32), intent(in):: rtol, atol
         type(Dual32_2_5), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual32_2_5):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual32_2_5):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual32_2_5(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual32_2_5(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual32_2_5
      recursive function sum_fDual32_2_5(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_5):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_2_5), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual32_2_5):: ret
         Real(kind=real32), intent(in):: x1, h
         ! type(Dual32_2_5), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual32_2_5(f, x1, h, i1, i_mid ) + sum_fDual32_2_5(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual32_2_5
         function sub_errDual32_2_5(integ_right, integ_above, k) result(ret)
            Real(kind=real32), parameter:: four = 4
            type(Dual32_2_5):: ret
            type(Dual32_2_5), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual32_2_5
      function rombergDual32_2_7_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_7):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_2_7), intent(in):: args(:)
            end function f
         end interface
         type(Dual32_2_7):: ret
         Real(kind=real32), intent(in):: a, b
         type(Dual32_2_7), intent(in):: args(:)
         Real(kind=real32), intent(in), optional:: rtol, atol
         type(Dual32_2_7), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual32_2_7):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 3399, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual32_2_7_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual32_2_7_args
      function romberg_implDual32_2_7_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_7):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_2_7), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 15
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual32_2_7):: ret
         Real(kind=real32), intent(in):: a, b
         type(Dual32_2_7), intent(in):: args(:)
         Real(kind=real32), intent(in):: rtol, atol
         type(Dual32_2_7), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual32_2_7):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual32_2_7):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual32_2_7_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual32_2_7(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual32_2_7_args
      recursive function sum_fDual32_2_7_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_7):: ret
               Real(kind=real32), intent(in):: x
               type(Dual32_2_7), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual32_2_7):: ret
         Real(kind=real32), intent(in):: x1, h
         type(Dual32_2_7), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual32_2_7_args(f, x1, h, i1, i_mid , args) + sum_fDual32_2_7_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual32_2_7_args
      function rombergDual32_2_7(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_7):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_2_7), intent(in):: args(:)
            end function f
         end interface
         type(Dual32_2_7):: ret
         Real(kind=real32), intent(in):: a, b
         ! type(Dual32_2_7), intent(in):: args(:)
         Real(kind=real32), intent(in), optional:: rtol, atol
         type(Dual32_2_7), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual32_2_7):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 3547, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual32_2_7(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual32_2_7
      function romberg_implDual32_2_7(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_7):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_2_7), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 15
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual32_2_7):: ret
         Real(kind=real32), intent(in):: a, b
         ! type(Dual32_2_7), intent(in):: args(:)
         Real(kind=real32), intent(in):: rtol, atol
         type(Dual32_2_7), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual32_2_7):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual32_2_7):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual32_2_7(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual32_2_7(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual32_2_7
      recursive function sum_fDual32_2_7(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real32
                  use, non_intrinsic:: ad_lib
               type(Dual32_2_7):: ret
               Real(kind=real32), intent(in):: x
               ! type(Dual32_2_7), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual32_2_7):: ret
         Real(kind=real32), intent(in):: x1, h
         ! type(Dual32_2_7), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual32_2_7(f, x1, h, i1, i_mid ) + sum_fDual32_2_7(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual32_2_7
         function sub_errDual32_2_7(integ_right, integ_above, k) result(ret)
            Real(kind=real32), parameter:: four = 4
            type(Dual32_2_7):: ret
            type(Dual32_2_7), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual32_2_7
      function rombergDual64_1_1_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_1):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_1_1), intent(in):: args(:)
            end function f
         end interface
         type(Dual64_1_1):: ret
         Real(kind=real64), intent(in):: a, b
         type(Dual64_1_1), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: rtol, atol
         type(Dual64_1_1), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual64_1_1):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 3709, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual64_1_1_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual64_1_1_args
      function romberg_implDual64_1_1_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_1):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_1_1), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 30
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual64_1_1):: ret
         Real(kind=real64), intent(in):: a, b
         type(Dual64_1_1), intent(in):: args(:)
         Real(kind=real64), intent(in):: rtol, atol
         type(Dual64_1_1), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual64_1_1):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual64_1_1):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual64_1_1_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual64_1_1(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual64_1_1_args
      recursive function sum_fDual64_1_1_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_1):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_1_1), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual64_1_1):: ret
         Real(kind=real64), intent(in):: x1, h
         type(Dual64_1_1), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual64_1_1_args(f, x1, h, i1, i_mid , args) + sum_fDual64_1_1_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual64_1_1_args
      function rombergDual64_1_1(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_1):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_1_1), intent(in):: args(:)
            end function f
         end interface
         type(Dual64_1_1):: ret
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_1_1), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: rtol, atol
         type(Dual64_1_1), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual64_1_1):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 3857, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual64_1_1(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual64_1_1
      function romberg_implDual64_1_1(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_1):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_1_1), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 30
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual64_1_1):: ret
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_1_1), intent(in):: args(:)
         Real(kind=real64), intent(in):: rtol, atol
         type(Dual64_1_1), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual64_1_1):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual64_1_1):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual64_1_1(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual64_1_1(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual64_1_1
      recursive function sum_fDual64_1_1(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_1):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_1_1), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual64_1_1):: ret
         Real(kind=real64), intent(in):: x1, h
         ! type(Dual64_1_1), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual64_1_1(f, x1, h, i1, i_mid ) + sum_fDual64_1_1(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual64_1_1
         function sub_errDual64_1_1(integ_right, integ_above, k) result(ret)
            Real(kind=real64), parameter:: four = 4
            type(Dual64_1_1):: ret
            type(Dual64_1_1), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual64_1_1
      function rombergDual64_1_2_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_2):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_1_2), intent(in):: args(:)
            end function f
         end interface
         type(Dual64_1_2):: ret
         Real(kind=real64), intent(in):: a, b
         type(Dual64_1_2), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: rtol, atol
         type(Dual64_1_2), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual64_1_2):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 4019, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual64_1_2_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual64_1_2_args
      function romberg_implDual64_1_2_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_2):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_1_2), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 30
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual64_1_2):: ret
         Real(kind=real64), intent(in):: a, b
         type(Dual64_1_2), intent(in):: args(:)
         Real(kind=real64), intent(in):: rtol, atol
         type(Dual64_1_2), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual64_1_2):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual64_1_2):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual64_1_2_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual64_1_2(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual64_1_2_args
      recursive function sum_fDual64_1_2_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_2):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_1_2), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual64_1_2):: ret
         Real(kind=real64), intent(in):: x1, h
         type(Dual64_1_2), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual64_1_2_args(f, x1, h, i1, i_mid , args) + sum_fDual64_1_2_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual64_1_2_args
      function rombergDual64_1_2(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_2):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_1_2), intent(in):: args(:)
            end function f
         end interface
         type(Dual64_1_2):: ret
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_1_2), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: rtol, atol
         type(Dual64_1_2), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual64_1_2):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 4167, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual64_1_2(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual64_1_2
      function romberg_implDual64_1_2(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_2):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_1_2), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 30
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual64_1_2):: ret
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_1_2), intent(in):: args(:)
         Real(kind=real64), intent(in):: rtol, atol
         type(Dual64_1_2), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual64_1_2):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual64_1_2):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual64_1_2(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual64_1_2(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual64_1_2
      recursive function sum_fDual64_1_2(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_2):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_1_2), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual64_1_2):: ret
         Real(kind=real64), intent(in):: x1, h
         ! type(Dual64_1_2), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual64_1_2(f, x1, h, i1, i_mid ) + sum_fDual64_1_2(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual64_1_2
         function sub_errDual64_1_2(integ_right, integ_above, k) result(ret)
            Real(kind=real64), parameter:: four = 4
            type(Dual64_1_2):: ret
            type(Dual64_1_2), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual64_1_2
      function rombergDual64_1_5_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_5):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_1_5), intent(in):: args(:)
            end function f
         end interface
         type(Dual64_1_5):: ret
         Real(kind=real64), intent(in):: a, b
         type(Dual64_1_5), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: rtol, atol
         type(Dual64_1_5), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual64_1_5):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 4329, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual64_1_5_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual64_1_5_args
      function romberg_implDual64_1_5_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_5):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_1_5), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 30
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual64_1_5):: ret
         Real(kind=real64), intent(in):: a, b
         type(Dual64_1_5), intent(in):: args(:)
         Real(kind=real64), intent(in):: rtol, atol
         type(Dual64_1_5), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual64_1_5):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual64_1_5):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual64_1_5_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual64_1_5(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual64_1_5_args
      recursive function sum_fDual64_1_5_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_5):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_1_5), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual64_1_5):: ret
         Real(kind=real64), intent(in):: x1, h
         type(Dual64_1_5), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual64_1_5_args(f, x1, h, i1, i_mid , args) + sum_fDual64_1_5_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual64_1_5_args
      function rombergDual64_1_5(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_5):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_1_5), intent(in):: args(:)
            end function f
         end interface
         type(Dual64_1_5):: ret
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_1_5), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: rtol, atol
         type(Dual64_1_5), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual64_1_5):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 4477, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual64_1_5(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual64_1_5
      function romberg_implDual64_1_5(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_5):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_1_5), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 30
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual64_1_5):: ret
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_1_5), intent(in):: args(:)
         Real(kind=real64), intent(in):: rtol, atol
         type(Dual64_1_5), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual64_1_5):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual64_1_5):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual64_1_5(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual64_1_5(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual64_1_5
      recursive function sum_fDual64_1_5(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_5):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_1_5), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual64_1_5):: ret
         Real(kind=real64), intent(in):: x1, h
         ! type(Dual64_1_5), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual64_1_5(f, x1, h, i1, i_mid ) + sum_fDual64_1_5(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual64_1_5
         function sub_errDual64_1_5(integ_right, integ_above, k) result(ret)
            Real(kind=real64), parameter:: four = 4
            type(Dual64_1_5):: ret
            type(Dual64_1_5), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual64_1_5
      function rombergDual64_1_7_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_7):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_1_7), intent(in):: args(:)
            end function f
         end interface
         type(Dual64_1_7):: ret
         Real(kind=real64), intent(in):: a, b
         type(Dual64_1_7), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: rtol, atol
         type(Dual64_1_7), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual64_1_7):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 4639, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual64_1_7_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual64_1_7_args
      function romberg_implDual64_1_7_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_7):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_1_7), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 30
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual64_1_7):: ret
         Real(kind=real64), intent(in):: a, b
         type(Dual64_1_7), intent(in):: args(:)
         Real(kind=real64), intent(in):: rtol, atol
         type(Dual64_1_7), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual64_1_7):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual64_1_7):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual64_1_7_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual64_1_7(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual64_1_7_args
      recursive function sum_fDual64_1_7_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_7):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_1_7), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual64_1_7):: ret
         Real(kind=real64), intent(in):: x1, h
         type(Dual64_1_7), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual64_1_7_args(f, x1, h, i1, i_mid , args) + sum_fDual64_1_7_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual64_1_7_args
      function rombergDual64_1_7(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_7):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_1_7), intent(in):: args(:)
            end function f
         end interface
         type(Dual64_1_7):: ret
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_1_7), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: rtol, atol
         type(Dual64_1_7), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual64_1_7):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 4787, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual64_1_7(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual64_1_7
      function romberg_implDual64_1_7(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_7):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_1_7), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 30
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual64_1_7):: ret
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_1_7), intent(in):: args(:)
         Real(kind=real64), intent(in):: rtol, atol
         type(Dual64_1_7), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual64_1_7):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual64_1_7):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual64_1_7(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual64_1_7(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual64_1_7
      recursive function sum_fDual64_1_7(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_1_7):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_1_7), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual64_1_7):: ret
         Real(kind=real64), intent(in):: x1, h
         ! type(Dual64_1_7), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual64_1_7(f, x1, h, i1, i_mid ) + sum_fDual64_1_7(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual64_1_7
         function sub_errDual64_1_7(integ_right, integ_above, k) result(ret)
            Real(kind=real64), parameter:: four = 4
            type(Dual64_1_7):: ret
            type(Dual64_1_7), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual64_1_7
      function rombergDual64_2_1_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_1):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_2_1), intent(in):: args(:)
            end function f
         end interface
         type(Dual64_2_1):: ret
         Real(kind=real64), intent(in):: a, b
         type(Dual64_2_1), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: rtol, atol
         type(Dual64_2_1), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual64_2_1):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 4949, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual64_2_1_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual64_2_1_args
      function romberg_implDual64_2_1_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_1):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_2_1), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 30
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual64_2_1):: ret
         Real(kind=real64), intent(in):: a, b
         type(Dual64_2_1), intent(in):: args(:)
         Real(kind=real64), intent(in):: rtol, atol
         type(Dual64_2_1), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual64_2_1):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual64_2_1):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual64_2_1_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual64_2_1(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual64_2_1_args
      recursive function sum_fDual64_2_1_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_1):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_2_1), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual64_2_1):: ret
         Real(kind=real64), intent(in):: x1, h
         type(Dual64_2_1), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual64_2_1_args(f, x1, h, i1, i_mid , args) + sum_fDual64_2_1_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual64_2_1_args
      function rombergDual64_2_1(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_1):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_2_1), intent(in):: args(:)
            end function f
         end interface
         type(Dual64_2_1):: ret
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_2_1), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: rtol, atol
         type(Dual64_2_1), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual64_2_1):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 5097, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual64_2_1(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual64_2_1
      function romberg_implDual64_2_1(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_1):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_2_1), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 30
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual64_2_1):: ret
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_2_1), intent(in):: args(:)
         Real(kind=real64), intent(in):: rtol, atol
         type(Dual64_2_1), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual64_2_1):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual64_2_1):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual64_2_1(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual64_2_1(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual64_2_1
      recursive function sum_fDual64_2_1(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_1):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_2_1), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual64_2_1):: ret
         Real(kind=real64), intent(in):: x1, h
         ! type(Dual64_2_1), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual64_2_1(f, x1, h, i1, i_mid ) + sum_fDual64_2_1(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual64_2_1
         function sub_errDual64_2_1(integ_right, integ_above, k) result(ret)
            Real(kind=real64), parameter:: four = 4
            type(Dual64_2_1):: ret
            type(Dual64_2_1), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual64_2_1
      function rombergDual64_2_2_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_2):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_2_2), intent(in):: args(:)
            end function f
         end interface
         type(Dual64_2_2):: ret
         Real(kind=real64), intent(in):: a, b
         type(Dual64_2_2), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: rtol, atol
         type(Dual64_2_2), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual64_2_2):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 5259, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual64_2_2_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual64_2_2_args
      function romberg_implDual64_2_2_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_2):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_2_2), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 30
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual64_2_2):: ret
         Real(kind=real64), intent(in):: a, b
         type(Dual64_2_2), intent(in):: args(:)
         Real(kind=real64), intent(in):: rtol, atol
         type(Dual64_2_2), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual64_2_2):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual64_2_2):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual64_2_2_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual64_2_2(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual64_2_2_args
      recursive function sum_fDual64_2_2_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_2):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_2_2), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual64_2_2):: ret
         Real(kind=real64), intent(in):: x1, h
         type(Dual64_2_2), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual64_2_2_args(f, x1, h, i1, i_mid , args) + sum_fDual64_2_2_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual64_2_2_args
      function rombergDual64_2_2(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_2):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_2_2), intent(in):: args(:)
            end function f
         end interface
         type(Dual64_2_2):: ret
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_2_2), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: rtol, atol
         type(Dual64_2_2), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual64_2_2):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 5407, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual64_2_2(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual64_2_2
      function romberg_implDual64_2_2(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_2):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_2_2), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 30
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual64_2_2):: ret
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_2_2), intent(in):: args(:)
         Real(kind=real64), intent(in):: rtol, atol
         type(Dual64_2_2), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual64_2_2):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual64_2_2):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual64_2_2(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual64_2_2(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual64_2_2
      recursive function sum_fDual64_2_2(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_2):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_2_2), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual64_2_2):: ret
         Real(kind=real64), intent(in):: x1, h
         ! type(Dual64_2_2), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual64_2_2(f, x1, h, i1, i_mid ) + sum_fDual64_2_2(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual64_2_2
         function sub_errDual64_2_2(integ_right, integ_above, k) result(ret)
            Real(kind=real64), parameter:: four = 4
            type(Dual64_2_2):: ret
            type(Dual64_2_2), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual64_2_2
      function rombergDual64_2_5_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_5):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_2_5), intent(in):: args(:)
            end function f
         end interface
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: a, b
         type(Dual64_2_5), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: rtol, atol
         type(Dual64_2_5), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual64_2_5):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 5569, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual64_2_5_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual64_2_5_args
      function romberg_implDual64_2_5_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_5):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_2_5), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 30
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: a, b
         type(Dual64_2_5), intent(in):: args(:)
         Real(kind=real64), intent(in):: rtol, atol
         type(Dual64_2_5), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual64_2_5):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual64_2_5):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual64_2_5_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual64_2_5(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual64_2_5_args
      recursive function sum_fDual64_2_5_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_5):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_2_5), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: x1, h
         type(Dual64_2_5), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual64_2_5_args(f, x1, h, i1, i_mid , args) + sum_fDual64_2_5_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual64_2_5_args
      function rombergDual64_2_5(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_5):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_2_5), intent(in):: args(:)
            end function f
         end interface
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_2_5), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: rtol, atol
         type(Dual64_2_5), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual64_2_5):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 5717, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual64_2_5(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual64_2_5
      function romberg_implDual64_2_5(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_5):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_2_5), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 30
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_2_5), intent(in):: args(:)
         Real(kind=real64), intent(in):: rtol, atol
         type(Dual64_2_5), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual64_2_5):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual64_2_5):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual64_2_5(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual64_2_5(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual64_2_5
      recursive function sum_fDual64_2_5(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_5):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_2_5), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: x1, h
         ! type(Dual64_2_5), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual64_2_5(f, x1, h, i1, i_mid ) + sum_fDual64_2_5(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual64_2_5
         function sub_errDual64_2_5(integ_right, integ_above, k) result(ret)
            Real(kind=real64), parameter:: four = 4
            type(Dual64_2_5):: ret
            type(Dual64_2_5), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual64_2_5
      function rombergDual64_2_7_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_7):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_2_7), intent(in):: args(:)
            end function f
         end interface
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: a, b
         type(Dual64_2_7), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: rtol, atol
         type(Dual64_2_7), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual64_2_7):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 5879, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual64_2_7_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual64_2_7_args
      function romberg_implDual64_2_7_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_7):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_2_7), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 30
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: a, b
         type(Dual64_2_7), intent(in):: args(:)
         Real(kind=real64), intent(in):: rtol, atol
         type(Dual64_2_7), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual64_2_7):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual64_2_7):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual64_2_7_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual64_2_7(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual64_2_7_args
      recursive function sum_fDual64_2_7_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_7):: ret
               Real(kind=real64), intent(in):: x
               type(Dual64_2_7), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: x1, h
         type(Dual64_2_7), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual64_2_7_args(f, x1, h, i1, i_mid , args) + sum_fDual64_2_7_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual64_2_7_args
      function rombergDual64_2_7(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_7):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_2_7), intent(in):: args(:)
            end function f
         end interface
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_2_7), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: rtol, atol
         type(Dual64_2_7), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual64_2_7):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 6027, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual64_2_7(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual64_2_7
      function romberg_implDual64_2_7(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_7):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_2_7), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 30
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_2_7), intent(in):: args(:)
         Real(kind=real64), intent(in):: rtol, atol
         type(Dual64_2_7), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual64_2_7):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual64_2_7):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual64_2_7(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual64_2_7(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual64_2_7
      recursive function sum_fDual64_2_7(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real64
                  use, non_intrinsic:: ad_lib
               type(Dual64_2_7):: ret
               Real(kind=real64), intent(in):: x
               ! type(Dual64_2_7), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: x1, h
         ! type(Dual64_2_7), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual64_2_7(f, x1, h, i1, i_mid ) + sum_fDual64_2_7(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual64_2_7
         function sub_errDual64_2_7(integ_right, integ_above, k) result(ret)
            Real(kind=real64), parameter:: four = 4
            type(Dual64_2_7):: ret
            type(Dual64_2_7), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual64_2_7
      function rombergDual128_1_1_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_1):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_1_1), intent(in):: args(:)
            end function f
         end interface
         type(Dual128_1_1):: ret
         Real(kind=real128), intent(in):: a, b
         type(Dual128_1_1), intent(in):: args(:)
         Real(kind=real128), intent(in), optional:: rtol, atol
         type(Dual128_1_1), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual128_1_1):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 6189, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual128_1_1_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual128_1_1_args
      function romberg_implDual128_1_1_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_1):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_1_1), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 45
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual128_1_1):: ret
         Real(kind=real128), intent(in):: a, b
         type(Dual128_1_1), intent(in):: args(:)
         Real(kind=real128), intent(in):: rtol, atol
         type(Dual128_1_1), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual128_1_1):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual128_1_1):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual128_1_1_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual128_1_1(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual128_1_1_args
      recursive function sum_fDual128_1_1_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_1):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_1_1), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual128_1_1):: ret
         Real(kind=real128), intent(in):: x1, h
         type(Dual128_1_1), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual128_1_1_args(f, x1, h, i1, i_mid , args) + sum_fDual128_1_1_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual128_1_1_args
      function rombergDual128_1_1(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_1):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_1_1), intent(in):: args(:)
            end function f
         end interface
         type(Dual128_1_1):: ret
         Real(kind=real128), intent(in):: a, b
         ! type(Dual128_1_1), intent(in):: args(:)
         Real(kind=real128), intent(in), optional:: rtol, atol
         type(Dual128_1_1), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual128_1_1):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 6337, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual128_1_1(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual128_1_1
      function romberg_implDual128_1_1(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_1):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_1_1), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 45
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual128_1_1):: ret
         Real(kind=real128), intent(in):: a, b
         ! type(Dual128_1_1), intent(in):: args(:)
         Real(kind=real128), intent(in):: rtol, atol
         type(Dual128_1_1), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual128_1_1):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual128_1_1):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual128_1_1(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual128_1_1(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual128_1_1
      recursive function sum_fDual128_1_1(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_1):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_1_1), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual128_1_1):: ret
         Real(kind=real128), intent(in):: x1, h
         ! type(Dual128_1_1), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual128_1_1(f, x1, h, i1, i_mid ) + sum_fDual128_1_1(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual128_1_1
         function sub_errDual128_1_1(integ_right, integ_above, k) result(ret)
            Real(kind=real128), parameter:: four = 4
            type(Dual128_1_1):: ret
            type(Dual128_1_1), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual128_1_1
      function rombergDual128_1_2_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_2):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_1_2), intent(in):: args(:)
            end function f
         end interface
         type(Dual128_1_2):: ret
         Real(kind=real128), intent(in):: a, b
         type(Dual128_1_2), intent(in):: args(:)
         Real(kind=real128), intent(in), optional:: rtol, atol
         type(Dual128_1_2), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual128_1_2):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 6499, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual128_1_2_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual128_1_2_args
      function romberg_implDual128_1_2_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_2):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_1_2), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 45
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual128_1_2):: ret
         Real(kind=real128), intent(in):: a, b
         type(Dual128_1_2), intent(in):: args(:)
         Real(kind=real128), intent(in):: rtol, atol
         type(Dual128_1_2), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual128_1_2):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual128_1_2):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual128_1_2_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual128_1_2(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual128_1_2_args
      recursive function sum_fDual128_1_2_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_2):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_1_2), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual128_1_2):: ret
         Real(kind=real128), intent(in):: x1, h
         type(Dual128_1_2), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual128_1_2_args(f, x1, h, i1, i_mid , args) + sum_fDual128_1_2_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual128_1_2_args
      function rombergDual128_1_2(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_2):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_1_2), intent(in):: args(:)
            end function f
         end interface
         type(Dual128_1_2):: ret
         Real(kind=real128), intent(in):: a, b
         ! type(Dual128_1_2), intent(in):: args(:)
         Real(kind=real128), intent(in), optional:: rtol, atol
         type(Dual128_1_2), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual128_1_2):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 6647, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual128_1_2(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual128_1_2
      function romberg_implDual128_1_2(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_2):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_1_2), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 45
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual128_1_2):: ret
         Real(kind=real128), intent(in):: a, b
         ! type(Dual128_1_2), intent(in):: args(:)
         Real(kind=real128), intent(in):: rtol, atol
         type(Dual128_1_2), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual128_1_2):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual128_1_2):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual128_1_2(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual128_1_2(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual128_1_2
      recursive function sum_fDual128_1_2(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_2):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_1_2), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual128_1_2):: ret
         Real(kind=real128), intent(in):: x1, h
         ! type(Dual128_1_2), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual128_1_2(f, x1, h, i1, i_mid ) + sum_fDual128_1_2(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual128_1_2
         function sub_errDual128_1_2(integ_right, integ_above, k) result(ret)
            Real(kind=real128), parameter:: four = 4
            type(Dual128_1_2):: ret
            type(Dual128_1_2), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual128_1_2
      function rombergDual128_1_5_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_5):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_1_5), intent(in):: args(:)
            end function f
         end interface
         type(Dual128_1_5):: ret
         Real(kind=real128), intent(in):: a, b
         type(Dual128_1_5), intent(in):: args(:)
         Real(kind=real128), intent(in), optional:: rtol, atol
         type(Dual128_1_5), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual128_1_5):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 6809, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual128_1_5_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual128_1_5_args
      function romberg_implDual128_1_5_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_5):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_1_5), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 45
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual128_1_5):: ret
         Real(kind=real128), intent(in):: a, b
         type(Dual128_1_5), intent(in):: args(:)
         Real(kind=real128), intent(in):: rtol, atol
         type(Dual128_1_5), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual128_1_5):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual128_1_5):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual128_1_5_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual128_1_5(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual128_1_5_args
      recursive function sum_fDual128_1_5_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_5):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_1_5), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual128_1_5):: ret
         Real(kind=real128), intent(in):: x1, h
         type(Dual128_1_5), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual128_1_5_args(f, x1, h, i1, i_mid , args) + sum_fDual128_1_5_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual128_1_5_args
      function rombergDual128_1_5(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_5):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_1_5), intent(in):: args(:)
            end function f
         end interface
         type(Dual128_1_5):: ret
         Real(kind=real128), intent(in):: a, b
         ! type(Dual128_1_5), intent(in):: args(:)
         Real(kind=real128), intent(in), optional:: rtol, atol
         type(Dual128_1_5), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual128_1_5):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 6957, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual128_1_5(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual128_1_5
      function romberg_implDual128_1_5(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_5):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_1_5), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 45
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual128_1_5):: ret
         Real(kind=real128), intent(in):: a, b
         ! type(Dual128_1_5), intent(in):: args(:)
         Real(kind=real128), intent(in):: rtol, atol
         type(Dual128_1_5), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual128_1_5):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual128_1_5):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual128_1_5(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual128_1_5(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual128_1_5
      recursive function sum_fDual128_1_5(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_5):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_1_5), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual128_1_5):: ret
         Real(kind=real128), intent(in):: x1, h
         ! type(Dual128_1_5), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual128_1_5(f, x1, h, i1, i_mid ) + sum_fDual128_1_5(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual128_1_5
         function sub_errDual128_1_5(integ_right, integ_above, k) result(ret)
            Real(kind=real128), parameter:: four = 4
            type(Dual128_1_5):: ret
            type(Dual128_1_5), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual128_1_5
      function rombergDual128_1_7_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_7):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_1_7), intent(in):: args(:)
            end function f
         end interface
         type(Dual128_1_7):: ret
         Real(kind=real128), intent(in):: a, b
         type(Dual128_1_7), intent(in):: args(:)
         Real(kind=real128), intent(in), optional:: rtol, atol
         type(Dual128_1_7), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual128_1_7):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 7119, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual128_1_7_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual128_1_7_args
      function romberg_implDual128_1_7_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_7):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_1_7), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 45
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual128_1_7):: ret
         Real(kind=real128), intent(in):: a, b
         type(Dual128_1_7), intent(in):: args(:)
         Real(kind=real128), intent(in):: rtol, atol
         type(Dual128_1_7), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual128_1_7):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual128_1_7):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual128_1_7_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual128_1_7(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual128_1_7_args
      recursive function sum_fDual128_1_7_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_7):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_1_7), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual128_1_7):: ret
         Real(kind=real128), intent(in):: x1, h
         type(Dual128_1_7), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual128_1_7_args(f, x1, h, i1, i_mid , args) + sum_fDual128_1_7_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual128_1_7_args
      function rombergDual128_1_7(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_7):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_1_7), intent(in):: args(:)
            end function f
         end interface
         type(Dual128_1_7):: ret
         Real(kind=real128), intent(in):: a, b
         ! type(Dual128_1_7), intent(in):: args(:)
         Real(kind=real128), intent(in), optional:: rtol, atol
         type(Dual128_1_7), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual128_1_7):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 7267, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual128_1_7(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual128_1_7
      function romberg_implDual128_1_7(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_7):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_1_7), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 45
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual128_1_7):: ret
         Real(kind=real128), intent(in):: a, b
         ! type(Dual128_1_7), intent(in):: args(:)
         Real(kind=real128), intent(in):: rtol, atol
         type(Dual128_1_7), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual128_1_7):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual128_1_7):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual128_1_7(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual128_1_7(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual128_1_7
      recursive function sum_fDual128_1_7(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_1_7):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_1_7), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual128_1_7):: ret
         Real(kind=real128), intent(in):: x1, h
         ! type(Dual128_1_7), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual128_1_7(f, x1, h, i1, i_mid ) + sum_fDual128_1_7(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual128_1_7
         function sub_errDual128_1_7(integ_right, integ_above, k) result(ret)
            Real(kind=real128), parameter:: four = 4
            type(Dual128_1_7):: ret
            type(Dual128_1_7), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual128_1_7
      function rombergDual128_2_1_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_1):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_2_1), intent(in):: args(:)
            end function f
         end interface
         type(Dual128_2_1):: ret
         Real(kind=real128), intent(in):: a, b
         type(Dual128_2_1), intent(in):: args(:)
         Real(kind=real128), intent(in), optional:: rtol, atol
         type(Dual128_2_1), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual128_2_1):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 7429, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual128_2_1_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual128_2_1_args
      function romberg_implDual128_2_1_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_1):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_2_1), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 45
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual128_2_1):: ret
         Real(kind=real128), intent(in):: a, b
         type(Dual128_2_1), intent(in):: args(:)
         Real(kind=real128), intent(in):: rtol, atol
         type(Dual128_2_1), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual128_2_1):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual128_2_1):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual128_2_1_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual128_2_1(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual128_2_1_args
      recursive function sum_fDual128_2_1_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_1):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_2_1), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual128_2_1):: ret
         Real(kind=real128), intent(in):: x1, h
         type(Dual128_2_1), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual128_2_1_args(f, x1, h, i1, i_mid , args) + sum_fDual128_2_1_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual128_2_1_args
      function rombergDual128_2_1(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_1):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_2_1), intent(in):: args(:)
            end function f
         end interface
         type(Dual128_2_1):: ret
         Real(kind=real128), intent(in):: a, b
         ! type(Dual128_2_1), intent(in):: args(:)
         Real(kind=real128), intent(in), optional:: rtol, atol
         type(Dual128_2_1), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual128_2_1):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 7577, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual128_2_1(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual128_2_1
      function romberg_implDual128_2_1(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_1):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_2_1), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 45
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual128_2_1):: ret
         Real(kind=real128), intent(in):: a, b
         ! type(Dual128_2_1), intent(in):: args(:)
         Real(kind=real128), intent(in):: rtol, atol
         type(Dual128_2_1), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual128_2_1):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual128_2_1):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual128_2_1(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual128_2_1(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual128_2_1
      recursive function sum_fDual128_2_1(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_1):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_2_1), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual128_2_1):: ret
         Real(kind=real128), intent(in):: x1, h
         ! type(Dual128_2_1), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual128_2_1(f, x1, h, i1, i_mid ) + sum_fDual128_2_1(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual128_2_1
         function sub_errDual128_2_1(integ_right, integ_above, k) result(ret)
            Real(kind=real128), parameter:: four = 4
            type(Dual128_2_1):: ret
            type(Dual128_2_1), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual128_2_1
      function rombergDual128_2_2_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_2):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_2_2), intent(in):: args(:)
            end function f
         end interface
         type(Dual128_2_2):: ret
         Real(kind=real128), intent(in):: a, b
         type(Dual128_2_2), intent(in):: args(:)
         Real(kind=real128), intent(in), optional:: rtol, atol
         type(Dual128_2_2), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual128_2_2):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 7739, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual128_2_2_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual128_2_2_args
      function romberg_implDual128_2_2_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_2):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_2_2), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 45
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual128_2_2):: ret
         Real(kind=real128), intent(in):: a, b
         type(Dual128_2_2), intent(in):: args(:)
         Real(kind=real128), intent(in):: rtol, atol
         type(Dual128_2_2), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual128_2_2):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual128_2_2):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual128_2_2_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual128_2_2(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual128_2_2_args
      recursive function sum_fDual128_2_2_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_2):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_2_2), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual128_2_2):: ret
         Real(kind=real128), intent(in):: x1, h
         type(Dual128_2_2), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual128_2_2_args(f, x1, h, i1, i_mid , args) + sum_fDual128_2_2_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual128_2_2_args
      function rombergDual128_2_2(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_2):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_2_2), intent(in):: args(:)
            end function f
         end interface
         type(Dual128_2_2):: ret
         Real(kind=real128), intent(in):: a, b
         ! type(Dual128_2_2), intent(in):: args(:)
         Real(kind=real128), intent(in), optional:: rtol, atol
         type(Dual128_2_2), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual128_2_2):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 7887, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual128_2_2(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual128_2_2
      function romberg_implDual128_2_2(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_2):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_2_2), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 45
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual128_2_2):: ret
         Real(kind=real128), intent(in):: a, b
         ! type(Dual128_2_2), intent(in):: args(:)
         Real(kind=real128), intent(in):: rtol, atol
         type(Dual128_2_2), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual128_2_2):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual128_2_2):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual128_2_2(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual128_2_2(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual128_2_2
      recursive function sum_fDual128_2_2(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_2):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_2_2), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual128_2_2):: ret
         Real(kind=real128), intent(in):: x1, h
         ! type(Dual128_2_2), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual128_2_2(f, x1, h, i1, i_mid ) + sum_fDual128_2_2(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual128_2_2
         function sub_errDual128_2_2(integ_right, integ_above, k) result(ret)
            Real(kind=real128), parameter:: four = 4
            type(Dual128_2_2):: ret
            type(Dual128_2_2), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual128_2_2
      function rombergDual128_2_5_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_5):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_2_5), intent(in):: args(:)
            end function f
         end interface
         type(Dual128_2_5):: ret
         Real(kind=real128), intent(in):: a, b
         type(Dual128_2_5), intent(in):: args(:)
         Real(kind=real128), intent(in), optional:: rtol, atol
         type(Dual128_2_5), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual128_2_5):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 8049, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual128_2_5_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual128_2_5_args
      function romberg_implDual128_2_5_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_5):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_2_5), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 45
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual128_2_5):: ret
         Real(kind=real128), intent(in):: a, b
         type(Dual128_2_5), intent(in):: args(:)
         Real(kind=real128), intent(in):: rtol, atol
         type(Dual128_2_5), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual128_2_5):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual128_2_5):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual128_2_5_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual128_2_5(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual128_2_5_args
      recursive function sum_fDual128_2_5_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_5):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_2_5), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual128_2_5):: ret
         Real(kind=real128), intent(in):: x1, h
         type(Dual128_2_5), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual128_2_5_args(f, x1, h, i1, i_mid , args) + sum_fDual128_2_5_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual128_2_5_args
      function rombergDual128_2_5(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_5):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_2_5), intent(in):: args(:)
            end function f
         end interface
         type(Dual128_2_5):: ret
         Real(kind=real128), intent(in):: a, b
         ! type(Dual128_2_5), intent(in):: args(:)
         Real(kind=real128), intent(in), optional:: rtol, atol
         type(Dual128_2_5), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual128_2_5):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 8197, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual128_2_5(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual128_2_5
      function romberg_implDual128_2_5(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_5):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_2_5), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 45
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual128_2_5):: ret
         Real(kind=real128), intent(in):: a, b
         ! type(Dual128_2_5), intent(in):: args(:)
         Real(kind=real128), intent(in):: rtol, atol
         type(Dual128_2_5), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual128_2_5):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual128_2_5):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual128_2_5(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual128_2_5(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual128_2_5
      recursive function sum_fDual128_2_5(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_5):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_2_5), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual128_2_5):: ret
         Real(kind=real128), intent(in):: x1, h
         ! type(Dual128_2_5), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual128_2_5(f, x1, h, i1, i_mid ) + sum_fDual128_2_5(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual128_2_5
         function sub_errDual128_2_5(integ_right, integ_above, k) result(ret)
            Real(kind=real128), parameter:: four = 4
            type(Dual128_2_5):: ret
            type(Dual128_2_5), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual128_2_5
      function rombergDual128_2_7_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_7):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_2_7), intent(in):: args(:)
            end function f
         end interface
         type(Dual128_2_7):: ret
         Real(kind=real128), intent(in):: a, b
         type(Dual128_2_7), intent(in):: args(:)
         Real(kind=real128), intent(in), optional:: rtol, atol
         type(Dual128_2_7), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual128_2_7):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 8359, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual128_2_7_args(f, a, b , args, rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual128_2_7_args
      function romberg_implDual128_2_7_args(f, a, b , args, rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_7):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_2_7), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 45
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual128_2_7):: ret
         Real(kind=real128), intent(in):: a, b
         type(Dual128_2_7), intent(in):: args(:)
         Real(kind=real128), intent(in):: rtol, atol
         type(Dual128_2_7), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual128_2_7):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual128_2_7):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a , args) + f(b , args))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual128_2_7_args(f, a + h_new, h, i_zero, n - 1 , args))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual128_2_7(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual128_2_7_args
      recursive function sum_fDual128_2_7_args(f, x1, h, i1, i2 , args) result(ret)
         interface
            function f(x , args) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_7):: ret
               Real(kind=real128), intent(in):: x
               type(Dual128_2_7), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual128_2_7):: ret
         Real(kind=real128), intent(in):: x1, h
         type(Dual128_2_7), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i , args)
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual128_2_7_args(f, x1, h, i1, i_mid , args) + sum_fDual128_2_7_args(f, x1, h, i_mid + 1, i2 , args)
         end if
      end function sum_fDual128_2_7_args
      function rombergDual128_2_7(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_7):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_2_7), intent(in):: args(:)
            end function f
         end interface
         type(Dual128_2_7):: ret
         Real(kind=real128), intent(in):: a, b
         ! type(Dual128_2_7), intent(in):: args(:)
         Real(kind=real128), intent(in), optional:: rtol, atol
         type(Dual128_2_7), intent(out), optional:: abs_err
         Logical, intent(out), optional:: err
         Integer(kind=int64), optional:: n_eval
         Real(kind=kind(rtol)):: rtol_, atol_
         type(Dual128_2_7):: abs_err_
         Logical(kind=kind(err)):: err_
         Integer(kind=kind(n_eval)):: n_eval_
         rtol_ = sqrt(epsilon(rtol_))
         if(present(rtol)) rtol_ = rtol
         atol_ = sqrt(epsilon(atol_))
         if(present(atol)) atol_ = atol
         if(.not.(rtol_ >= 0 .or. atol_ >= 0))then; write(error_unit, *) "ERROR: ", "quadrature_lib.f90", " ", 8507, (".not.(rtol_ >= 0 .or. atol_ >= 0)"); error stop; end if
         ret = romberg_implDual128_2_7(f, a, b , rtol_, atol_, abs_err_, err_, n_eval_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(err)) err = err_
         if(present(n_eval)) n_eval = n_eval_
      end function rombergDual128_2_7
      function romberg_implDual128_2_7(f, a, b , rtol, atol, abs_err, err, n_eval) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_7):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_2_7), intent(in):: args(:)
            end function f
         end interface
         ! Maximum number of function evaluation is 2^(iter_max) + 1
         Integer(kind=int64), parameter:: iter_max = 45
         Integer(kind=int64), parameter:: i_zero = 0
         type(Dual128_2_7):: ret
         Real(kind=real128), intent(in):: a, b
         ! type(Dual128_2_7), intent(in):: args(:)
         Real(kind=real128), intent(in):: rtol, atol
         type(Dual128_2_7), intent(out):: abs_err
         Logical, intent(out):: err
         Integer(kind=int64), intent(out):: n_eval
         Real(kind=kind(a)):: h, h_new
         type(Dual128_2_7):: integ_pre
         ! integs:
         ! i\j 1 2 3 4
         ! 1 ⏢
         ! ↓
         ! 2 o ← ⏢
         ! ↓ ↓
         ! 3 o ← o ← ⏢
         ! ↓ ↓ ↓
         ! 4 o ← o ← o ← ⏢
         type(Dual128_2_7):: integs(iter_max)
         Integer(kind=kind(n_eval)):: n, i, j
         h = b - a
         integs(1) = h*(f(a ) + f(b ))/2
         ret = integs(1)
         n = 1
         err = .true.
         do i = 2, iter_max
            integ_pre = ret
            h_new = h/2
            integs(i) = (integs(i - 1) + h*sum_fDual128_2_7(f, a + h_new, h, i_zero, n - 1 ))/2
            do j = i - 1, 1, -1
               integs(j) = sub_errDual128_2_7(integs(j + 1), integs(j), i - j)
            end do
            ret = integs(1)
            abs_err = abs(ret - integ_pre)
            if(abs_err <= atol .or. abs_err <= rtol*ret)then
               err = .false.
               exit
            end if
            n = 2*n
            h = h_new
         end do
         n_eval = 2*n + 1
      end function romberg_implDual128_2_7
      recursive function sum_fDual128_2_7(f, x1, h, i1, i2 ) result(ret)
         interface
            function f(x ) result(ret)
               use, intrinsic:: iso_fortran_env, only: real128
                  use, non_intrinsic:: ad_lib
               type(Dual128_2_7):: ret
               Real(kind=real128), intent(in):: x
               ! type(Dual128_2_7), intent(in):: args(:)
            end function f
         end interface
         Integer, parameter:: block_size = 2**5
         type(Dual128_2_7):: ret
         Real(kind=real128), intent(in):: x1, h
         ! type(Dual128_2_7), intent(in):: args(:)
         Integer(kind=int64), intent(in):: i1, i2
         Integer(kind=kind(i1)):: i, i_mid
         if(i1 + block_size > i2)then
               ! Dual is initialized to 0
            do i = i1, i2
               ret = ret + f(x1 + h*i )
            end do
         else
            i_mid = (i1 + i2)/2
            ret = sum_fDual128_2_7(f, x1, h, i1, i_mid ) + sum_fDual128_2_7(f, x1, h, i_mid + 1, i2 )
         end if
      end function sum_fDual128_2_7
         function sub_errDual128_2_7(integ_right, integ_above, k) result(ret)
            Real(kind=real128), parameter:: four = 4
            type(Dual128_2_7):: ret
            type(Dual128_2_7), intent(in):: integ_right, integ_above
            Integer(kind=int64), intent(in):: k
            Real(kind=kind(four)):: four_pow_k
           
            four_pow_k = four**k
            ret = (four_pow_k*integ_right - integ_above)/(four_pow_k - 1)
         end function sub_errDual128_2_7
end module quadrature_lib
