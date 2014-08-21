module optimize_lib
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   use, non_intrinsic:: constant_lib, only: get_infinity
   use, non_intrinsic:: array_lib, only: l2_norm
   implicit none
   private
   public:: nnls
      interface nnls
         module procedure nnlsRealDim0KindREAL32
      end interface nnls
      interface nnls
         module procedure nnlsRealDim0KindREAL64
      end interface nnls
      interface nnls
         module procedure nnlsRealDim0KindREAL128
      end interface nnls
contains
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
      pure function nnlsRealDim0KindREAL128(A, b) result(ret)
         Real(kind=REAL128), intent(in):: A(:, :), b(:)
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
      end function nnlsRealDim0KindREAL128
end module optimize_lib
