module quadpack_lib
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: input_unit, output_unit, error_unit
   use, intrinsic:: iso_fortran_env, only: real64
   use, non_intrinsic:: ad_lib
   implicit none
   private
   public:: qags
      interface qags
         module procedure qags_r64_args
      end interface qags
      interface qags_impl
         module procedure qags_impl_r64_args
      end interface qags_impl
      interface dqagse
         module procedure dqagse_r64_args
      end interface dqagse
      interface dqk21
         module procedure dqk21_r64_args
      end interface dqk21
      interface qags
         module procedure qags_r64
      end interface qags
      interface qags_impl
         module procedure qags_impl_r64
      end interface qags_impl
      interface dqagse
         module procedure dqagse_r64
      end interface dqagse
      interface dqk21
         module procedure dqk21_r64
      end interface dqk21
         interface dqelg
            module procedure dqelg_r64
         end interface dqelg
         interface dqpsrt
            module procedure dqpsrt_r64
         end interface dqpsrt
      interface qags
         module procedure qags_d64_1_1_args
      end interface qags
      interface qags_impl
         module procedure qags_impl_d64_1_1_args
      end interface qags_impl
      interface dqagse
         module procedure dqagse_d64_1_1_args
      end interface dqagse
      interface dqk21
         module procedure dqk21_d64_1_1_args
      end interface dqk21
      interface qags
         module procedure qags_d64_1_1
      end interface qags
      interface qags_impl
         module procedure qags_impl_d64_1_1
      end interface qags_impl
      interface dqagse
         module procedure dqagse_d64_1_1
      end interface dqagse
      interface dqk21
         module procedure dqk21_d64_1_1
      end interface dqk21
         interface dqelg
            module procedure dqelg_d64_1_1
         end interface dqelg
         interface dqpsrt
            module procedure dqpsrt_d64_1_1
         end interface dqpsrt
      interface qags
         module procedure qags_d64_1_2_args
      end interface qags
      interface qags_impl
         module procedure qags_impl_d64_1_2_args
      end interface qags_impl
      interface dqagse
         module procedure dqagse_d64_1_2_args
      end interface dqagse
      interface dqk21
         module procedure dqk21_d64_1_2_args
      end interface dqk21
      interface qags
         module procedure qags_d64_1_2
      end interface qags
      interface qags_impl
         module procedure qags_impl_d64_1_2
      end interface qags_impl
      interface dqagse
         module procedure dqagse_d64_1_2
      end interface dqagse
      interface dqk21
         module procedure dqk21_d64_1_2
      end interface dqk21
         interface dqelg
            module procedure dqelg_d64_1_2
         end interface dqelg
         interface dqpsrt
            module procedure dqpsrt_d64_1_2
         end interface dqpsrt
      interface qags
         module procedure qags_d64_1_5_args
      end interface qags
      interface qags_impl
         module procedure qags_impl_d64_1_5_args
      end interface qags_impl
      interface dqagse
         module procedure dqagse_d64_1_5_args
      end interface dqagse
      interface dqk21
         module procedure dqk21_d64_1_5_args
      end interface dqk21
      interface qags
         module procedure qags_d64_1_5
      end interface qags
      interface qags_impl
         module procedure qags_impl_d64_1_5
      end interface qags_impl
      interface dqagse
         module procedure dqagse_d64_1_5
      end interface dqagse
      interface dqk21
         module procedure dqk21_d64_1_5
      end interface dqk21
         interface dqelg
            module procedure dqelg_d64_1_5
         end interface dqelg
         interface dqpsrt
            module procedure dqpsrt_d64_1_5
         end interface dqpsrt
      interface qags
         module procedure qags_d64_1_7_args
      end interface qags
      interface qags_impl
         module procedure qags_impl_d64_1_7_args
      end interface qags_impl
      interface dqagse
         module procedure dqagse_d64_1_7_args
      end interface dqagse
      interface dqk21
         module procedure dqk21_d64_1_7_args
      end interface dqk21
      interface qags
         module procedure qags_d64_1_7
      end interface qags
      interface qags_impl
         module procedure qags_impl_d64_1_7
      end interface qags_impl
      interface dqagse
         module procedure dqagse_d64_1_7
      end interface dqagse
      interface dqk21
         module procedure dqk21_d64_1_7
      end interface dqk21
         interface dqelg
            module procedure dqelg_d64_1_7
         end interface dqelg
         interface dqpsrt
            module procedure dqpsrt_d64_1_7
         end interface dqpsrt
      interface qags
         module procedure qags_d64_1_8_args
      end interface qags
      interface qags_impl
         module procedure qags_impl_d64_1_8_args
      end interface qags_impl
      interface dqagse
         module procedure dqagse_d64_1_8_args
      end interface dqagse
      interface dqk21
         module procedure dqk21_d64_1_8_args
      end interface dqk21
      interface qags
         module procedure qags_d64_1_8
      end interface qags
      interface qags_impl
         module procedure qags_impl_d64_1_8
      end interface qags_impl
      interface dqagse
         module procedure dqagse_d64_1_8
      end interface dqagse
      interface dqk21
         module procedure dqk21_d64_1_8
      end interface dqk21
         interface dqelg
            module procedure dqelg_d64_1_8
         end interface dqelg
         interface dqpsrt
            module procedure dqpsrt_d64_1_8
         end interface dqpsrt
      interface qags
         module procedure qags_d64_2_1_args
      end interface qags
      interface qags_impl
         module procedure qags_impl_d64_2_1_args
      end interface qags_impl
      interface dqagse
         module procedure dqagse_d64_2_1_args
      end interface dqagse
      interface dqk21
         module procedure dqk21_d64_2_1_args
      end interface dqk21
      interface qags
         module procedure qags_d64_2_1
      end interface qags
      interface qags_impl
         module procedure qags_impl_d64_2_1
      end interface qags_impl
      interface dqagse
         module procedure dqagse_d64_2_1
      end interface dqagse
      interface dqk21
         module procedure dqk21_d64_2_1
      end interface dqk21
         interface dqelg
            module procedure dqelg_d64_2_1
         end interface dqelg
         interface dqpsrt
            module procedure dqpsrt_d64_2_1
         end interface dqpsrt
      interface qags
         module procedure qags_d64_2_2_args
      end interface qags
      interface qags_impl
         module procedure qags_impl_d64_2_2_args
      end interface qags_impl
      interface dqagse
         module procedure dqagse_d64_2_2_args
      end interface dqagse
      interface dqk21
         module procedure dqk21_d64_2_2_args
      end interface dqk21
      interface qags
         module procedure qags_d64_2_2
      end interface qags
      interface qags_impl
         module procedure qags_impl_d64_2_2
      end interface qags_impl
      interface dqagse
         module procedure dqagse_d64_2_2
      end interface dqagse
      interface dqk21
         module procedure dqk21_d64_2_2
      end interface dqk21
         interface dqelg
            module procedure dqelg_d64_2_2
         end interface dqelg
         interface dqpsrt
            module procedure dqpsrt_d64_2_2
         end interface dqpsrt
      interface qags
         module procedure qags_d64_2_5_args
      end interface qags
      interface qags_impl
         module procedure qags_impl_d64_2_5_args
      end interface qags_impl
      interface dqagse
         module procedure dqagse_d64_2_5_args
      end interface dqagse
      interface dqk21
         module procedure dqk21_d64_2_5_args
      end interface dqk21
      interface qags
         module procedure qags_d64_2_5
      end interface qags
      interface qags_impl
         module procedure qags_impl_d64_2_5
      end interface qags_impl
      interface dqagse
         module procedure dqagse_d64_2_5
      end interface dqagse
      interface dqk21
         module procedure dqk21_d64_2_5
      end interface dqk21
         interface dqelg
            module procedure dqelg_d64_2_5
         end interface dqelg
         interface dqpsrt
            module procedure dqpsrt_d64_2_5
         end interface dqpsrt
      interface qags
         module procedure qags_d64_2_7_args
      end interface qags
      interface qags_impl
         module procedure qags_impl_d64_2_7_args
      end interface qags_impl
      interface dqagse
         module procedure dqagse_d64_2_7_args
      end interface dqagse
      interface dqk21
         module procedure dqk21_d64_2_7_args
      end interface dqk21
      interface qags
         module procedure qags_d64_2_7
      end interface qags
      interface qags_impl
         module procedure qags_impl_d64_2_7
      end interface qags_impl
      interface dqagse
         module procedure dqagse_d64_2_7
      end interface dqagse
      interface dqk21
         module procedure dqk21_d64_2_7
      end interface dqk21
         interface dqelg
            module procedure dqelg_d64_2_7
         end interface dqelg
         interface dqpsrt
            module procedure dqpsrt_d64_2_7
         end interface dqpsrt
      interface qags
         module procedure qags_d64_2_8_args
      end interface qags
      interface qags_impl
         module procedure qags_impl_d64_2_8_args
      end interface qags_impl
      interface dqagse
         module procedure dqagse_d64_2_8_args
      end interface dqagse
      interface dqk21
         module procedure dqk21_d64_2_8_args
      end interface dqk21
      interface qags
         module procedure qags_d64_2_8
      end interface qags
      interface qags_impl
         module procedure qags_impl_d64_2_8
      end interface qags_impl
      interface dqagse
         module procedure dqagse_d64_2_8
      end interface dqagse
      interface dqk21
         module procedure dqk21_d64_2_8
      end interface dqk21
         interface dqelg
            module procedure dqelg_d64_2_8
         end interface dqelg
         interface dqpsrt
            module procedure dqpsrt_d64_2_8
         end interface dqpsrt
contains
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_r64_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: x
          Real(kind=real64), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          Real(kind=real64), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         Real(kind=real64), intent(out):: ret
         Real(kind=real64), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         Real(kind=real64):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , args, ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_r64_args
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_r64_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: x
          Real(kind=real64), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          Real(kind=real64), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         Real(kind=real64), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         Real(kind=real64):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , args, atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_r64_args
      pure subroutine dqagse_r64_args(f, a, b , args, epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: x
          Real(kind=real64), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
          Real(kind=real64), intent(in):: args(:)
      Real(kind=real64), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      Real(kind=real64), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      Real(kind=real64):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , args, result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , args, area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , args, area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqk21_r64_args(f, a, b , args, result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: x
          Real(kind=real64), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
       Real(kind=real64), intent(in):: args(:)
      Real(kind=real64), intent(out):: result, abserr, resabs, resasc
      Real(kind=real64):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr , args)
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_r64(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: x
         ! Real(kind=real64), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! Real(kind=real64), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         Real(kind=real64), intent(out):: ret
         Real(kind=real64), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         Real(kind=real64):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_r64
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_r64(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: x
         ! Real(kind=real64), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! Real(kind=real64), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         Real(kind=real64), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         Real(kind=real64):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_r64
      pure subroutine dqagse_r64(f, a, b , epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: x
         ! Real(kind=real64), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
         ! Real(kind=real64), intent(in):: args(:)
      Real(kind=real64), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      Real(kind=real64), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      Real(kind=real64):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqelg_r64(n, epstab, result, abserr, res3la, nres)
!***begin prologue dqelg
!***refer to dqagie,dqagoe,dqagpe,dqagse
!***routines called
!***revision date 830518 (yymmdd)
!***keywords epsilon algorithm, convergence acceleration,
! extrapolation
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math & progr. div. - k.u.leuven
!***purpose the routine determines the limit of a given sequence of
! approximations, by means of the epsilon algorithm of
! p.wynn. an estimate of the absolute error is also given.
! the condensed epsilon table is computed. only those
! elements needed for the computation of the next diagonal
! are preserved.
!***description
!
! epsilon algorithm
! standard fortran subroutine
! double precision version
!
! parameters
! n - integer
! epstab(n) contains the new element in the
! first column of the epsilon table.
!
! epstab - double precision
! vector of dimension 52 containing the elements
! of the two lower diagonals of the triangular
! epsilon table. the elements are numbered
! starting at the right-hand corner of the
! triangle.
!
! result - double precision
! resulting approximation to the integral
!
! abserr - double precision
! estimate of the absolute error computed from
! result and the 3 previous results
!
! res3la - double precision
! vector of dimension 3 containing the last 3
! results
!
! nres - integer
! number of calls to the routine
! (should be zero at first call)
!
!***end prologue dqelg
!
      Integer, intent(inout):: n
      Real(kind=real64), intent(inout):: epstab(52), res3la(3)
      Real(kind=real64), intent(out):: result, abserr
      Integer, intent(inout):: nres
      Real(kind=real64):: res, e0, e1, e2, e3, e1abs, epsinf, error, delta1, delta2, delta3, err1, err2, err3, tol1, tol2, tol3, ss
      Real(kind=real64):: epmach, oflow
      integer i, ib, ib2, ie, indx, k1, k2, k3, limexp, newelm, num
!
! list of major variables
! -----------------------
!
! e0 - the 4 elements on which the computation of a new
! e1 element in the epsilon table is based
! e2
! e3 e0
! e3 e1 new
! e2
! newelm - number of elements to be computed in the new
! diagonal
! error - error = abs(e1-e0)+abs(e2-e1)+abs(new-e2)
! result - the element in the new diagonal with least value
! of error
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! oflow is the largest positive magnitude.
! limexp is the maximum number of elements the epsilon
! table can contain. if this number is reached, the upper
! diagonal of the epsilon table is deleted.
!
!***first executable statement dqelg
      epmach = epsilon(epmach)
      oflow = huge(oflow)
      nres = nres+1
      abserr = oflow
      result = epstab(n)
      if(n.lt.3) go to 100
      limexp = 50
      epstab(n+2) = epstab(n)
      newelm = (n-1)/2
      epstab(n) = oflow
      num = n
      k1 = n
      do 40 i = 1,newelm
        k2 = k1-1
        k3 = k1-2
        res = epstab(k1+2)
        e0 = epstab(k3)
        e1 = epstab(k2)
        e2 = res
        e1abs = abs(e1)
        delta2 = e2-e1
        err2 = abs(delta2)
        tol2 = max(abs(e2),e1abs)*epmach
        delta3 = e1-e0
        err3 = abs(delta3)
        tol3 = max(e1abs, abs(e0))*epmach
        if(err2.gt.tol2.or.err3.gt.tol3) go to 10
!
! if e0, e1 and e2 are equal to within machine
! accuracy, convergence is assumed.
! result = e2
! abserr = abs(e1-e0)+abs(e2-e1)
!
        result = res
        abserr = err2+err3
! ***jump out of do-loop
        go to 100
   10 e3 = epstab(k1)
        epstab(k1) = e1
        delta1 = e1-e3
        err1 = abs(delta1)
        tol1 = max(e1abs, abs(e3))*epmach
!
! if two elements are very close to each other, omit
! a part of the table by adjusting the value of n
!
        if(err1.le.tol1.or.err2.le.tol2.or.err3.le.tol3) go to 20
        ss = 0.1d+01/delta1+0.1d+01/delta2-0.1d+01/delta3
        epsinf = abs(ss*e1)
!
! test to detect irregular behaviour in the table, and
! eventually omit a part of the table adjusting the value
! of n.
!
        if(epsinf.gt.0.1d-03) go to 30
   20 n = i+i-1
! ***jump out of do-loop
        go to 50
!
! compute a new element and eventually adjust
! the value of result.
!
   30 res = e1+0.1d+01/ss
        epstab(k1) = res
        k1 = k1-2
        error = err2 + abs(res - e2) + err3
        if(error.gt.abserr) go to 40
        abserr = error
        result = res
   40 continue
!
! shift the table.
!
   50 if(n.eq.limexp) n = 2*(limexp/2)-1
      ib = 1
      if((num/2)*2.eq.num) ib = 2
      ie = newelm+1
      do 60 i=1,ie
        ib2 = ib+2
        epstab(ib) = epstab(ib2)
        ib = ib2
   60 continue
      if(num.eq.n) go to 80
      indx = num-n+1
      do 70 i = 1,n
        epstab(i)= epstab(indx)
        indx = indx+1
   70 continue
   80 if(nres.ge.4) go to 90
      res3la(nres) = result
      abserr = oflow
      go to 100
!
! compute error estimate
!
   90 abserr = abs(result - res3la(3)) + abs(result - res3la(2)) + abs(result - res3la(1))
      res3la(1) = res3la(2)
      res3la(2) = res3la(3)
      res3la(3) = result
  100 abserr = max(abserr, 0.5d+01*epmach*abs(result))
      return
      end
      pure subroutine dqk21_r64(f, a, b , result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         Real(kind=real64):: ret
         Real(kind=real64), intent(in):: x
         ! Real(kind=real64), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
      ! Real(kind=real64), intent(in):: args(:)
      Real(kind=real64), intent(out):: result, abserr, resabs, resasc
      Real(kind=real64):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr )
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
      pure subroutine dqpsrt_r64(limit, last, maxerr, ermax, elist, iord, nrmax)
!***begin prologue dqpsrt
!***refer to dqage,dqagie,dqagpe,dqawse
!***routines called (none)
!***revision date 810101 (yymmdd)
!***keywords sequential sorting
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose this routine maintains the descending ordering in the
! list of the local error estimated resulting from the
! interval subdivision process. at each call two error
! estimates are inserted using the sequential search
! method, top-down for the largest error estimate and
! bottom-up for the smallest error estimate.
!***description
!
! ordering routine
! standard fortran subroutine
! double precision version
!
! parameters (meaning at output)
! limit - integer
! maximum number of error estimates the list
! can contain
!
! last - integer
! number of error estimates currently in the list
!
! maxerr - integer
! maxerr points to the nrmax-th largest error
! estimate currently in the list
!
! ermax - double precision
! nrmax-th largest error estimate
! ermax = elist(maxerr)
!
! elist - double precision
! vector of dimension last containing
! the error estimates
!
! iord - integer
! vector of dimension last, the first k elements
! of which contain pointers to the error
! estimates, such that
! elist(iord(1)),..., elist(iord(k))
! form a decreasing sequence, with
! k = last if last.le.(limit/2+2), and
! k = limit+1-last otherwise
!
! nrmax - integer
! maxerr = iord(nrmax)
!
!***end prologue dqpsrt
!
      Integer, intent(in):: limit, last
      Integer, intent(inout):: maxerr
      Integer, intent(inout):: nrmax
      Real(kind=real64), intent(in):: elist(last)
      Integer, intent(inout):: iord(last)
      Real(kind=real64), intent(out):: ermax
      Real(kind=real64):: errmin, errmax
      integer i, ibeg, ido, isucc, j, jbnd, jupbn, k
!
! check whether the list contains more than
! two error estimates.
!
!***first executable statement dqpsrt
      if(last.gt.2) go to 10
      iord(1) = 1
      iord(2) = 2
      go to 90
!
! this part of the routine is only executed if, due to a
! difficult integrand, subdivision increased the error
! estimate. in the normal case the insert procedure should
! start after the nrmax-th largest error estimate.
!
   10 errmax = elist(maxerr)
      if(nrmax.eq.1) go to 30
      ido = nrmax-1
      do 20 i = 1,ido
        isucc = iord(nrmax-1)
! ***jump out of do-loop
        if(errmax.le.elist(isucc)) go to 30
        iord(nrmax) = isucc
        nrmax = nrmax-1
   20 continue
!
! compute the number of elements in the list to be maintained
! in descending order. this number depends on the number of
! subdivisions still allowed.
!
   30 jupbn = last
      if(last.gt.(limit/2+2)) jupbn = limit+3-last
      errmin = elist(last)
!
! insert errmax by traversing the list top-down,
! starting comparison from the element elist(iord(nrmax+1)).
!
      jbnd = jupbn-1
      ibeg = nrmax+1
      if(ibeg.gt.jbnd) go to 50
      do 40 i=ibeg,jbnd
        isucc = iord(i)
! ***jump out of do-loop
        if(errmax.ge.elist(isucc)) go to 60
        iord(i-1) = isucc
   40 continue
   50 iord(jbnd) = maxerr
      iord(jupbn) = last
      go to 90
!
! insert errmin by traversing the list bottom-up.
!
   60 iord(i-1) = maxerr
      k = jbnd
      do 70 j=i,jbnd
        isucc = iord(k)
! ***jump out of do-loop
        if(errmin.lt.elist(isucc)) go to 80
        iord(k+1) = isucc
        k = k-1
   70 continue
      iord(i) = last
      go to 90
   80 iord(k+1) = last
!
! set maxerr and ermax.
!
   90 maxerr = iord(nrmax)
      ermax = elist(maxerr)
      return
      end
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_d64_1_1_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_1):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_1_1), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          type(Dual64_1_1), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         type(Dual64_1_1), intent(out):: ret
         type(Dual64_1_1), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         type(Dual64_1_1):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , args, ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_d64_1_1_args
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_d64_1_1_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_1):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_1_1), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          type(Dual64_1_1), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         type(Dual64_1_1), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         type(Dual64_1_1):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , args, atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_d64_1_1_args
      pure subroutine dqagse_d64_1_1_args(f, a, b , args, epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_1):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_1_1), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
          type(Dual64_1_1), intent(in):: args(:)
      type(Dual64_1_1), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      type(Dual64_1_1), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      type(Dual64_1_1):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , args, result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , args, area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , args, area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqk21_d64_1_1_args(f, a, b , args, result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_1):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_1_1), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
       type(Dual64_1_1), intent(in):: args(:)
      type(Dual64_1_1), intent(out):: result, abserr, resabs, resasc
      type(Dual64_1_1):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr , args)
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_d64_1_1(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_1):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_1_1), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_1_1), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         type(Dual64_1_1), intent(out):: ret
         type(Dual64_1_1), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         type(Dual64_1_1):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_d64_1_1
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_d64_1_1(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_1):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_1_1), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_1_1), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         type(Dual64_1_1), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         type(Dual64_1_1):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_d64_1_1
      pure subroutine dqagse_d64_1_1(f, a, b , epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_1):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_1_1), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
         ! type(Dual64_1_1), intent(in):: args(:)
      type(Dual64_1_1), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      type(Dual64_1_1), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      type(Dual64_1_1):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqelg_d64_1_1(n, epstab, result, abserr, res3la, nres)
!***begin prologue dqelg
!***refer to dqagie,dqagoe,dqagpe,dqagse
!***routines called
!***revision date 830518 (yymmdd)
!***keywords epsilon algorithm, convergence acceleration,
! extrapolation
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math & progr. div. - k.u.leuven
!***purpose the routine determines the limit of a given sequence of
! approximations, by means of the epsilon algorithm of
! p.wynn. an estimate of the absolute error is also given.
! the condensed epsilon table is computed. only those
! elements needed for the computation of the next diagonal
! are preserved.
!***description
!
! epsilon algorithm
! standard fortran subroutine
! double precision version
!
! parameters
! n - integer
! epstab(n) contains the new element in the
! first column of the epsilon table.
!
! epstab - double precision
! vector of dimension 52 containing the elements
! of the two lower diagonals of the triangular
! epsilon table. the elements are numbered
! starting at the right-hand corner of the
! triangle.
!
! result - double precision
! resulting approximation to the integral
!
! abserr - double precision
! estimate of the absolute error computed from
! result and the 3 previous results
!
! res3la - double precision
! vector of dimension 3 containing the last 3
! results
!
! nres - integer
! number of calls to the routine
! (should be zero at first call)
!
!***end prologue dqelg
!
      Integer, intent(inout):: n
      type(Dual64_1_1), intent(inout):: epstab(52), res3la(3)
      type(Dual64_1_1), intent(out):: result, abserr
      Integer, intent(inout):: nres
      type(Dual64_1_1):: res, e0, e1, e2, e3, e1abs, epsinf, error, delta1, delta2, delta3, err1, err2, err3, tol1, tol2, tol3, ss
      Real(kind=real64):: epmach, oflow
      integer i, ib, ib2, ie, indx, k1, k2, k3, limexp, newelm, num
!
! list of major variables
! -----------------------
!
! e0 - the 4 elements on which the computation of a new
! e1 element in the epsilon table is based
! e2
! e3 e0
! e3 e1 new
! e2
! newelm - number of elements to be computed in the new
! diagonal
! error - error = abs(e1-e0)+abs(e2-e1)+abs(new-e2)
! result - the element in the new diagonal with least value
! of error
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! oflow is the largest positive magnitude.
! limexp is the maximum number of elements the epsilon
! table can contain. if this number is reached, the upper
! diagonal of the epsilon table is deleted.
!
!***first executable statement dqelg
      epmach = epsilon(epmach)
      oflow = huge(oflow)
      nres = nres+1
      abserr = oflow
      result = epstab(n)
      if(n.lt.3) go to 100
      limexp = 50
      epstab(n+2) = epstab(n)
      newelm = (n-1)/2
      epstab(n) = oflow
      num = n
      k1 = n
      do 40 i = 1,newelm
        k2 = k1-1
        k3 = k1-2
        res = epstab(k1+2)
        e0 = epstab(k3)
        e1 = epstab(k2)
        e2 = res
        e1abs = abs(e1)
        delta2 = e2-e1
        err2 = abs(delta2)
        tol2 = max(abs(e2),e1abs)*epmach
        delta3 = e1-e0
        err3 = abs(delta3)
        tol3 = max(e1abs, abs(e0))*epmach
        if(err2.gt.tol2.or.err3.gt.tol3) go to 10
!
! if e0, e1 and e2 are equal to within machine
! accuracy, convergence is assumed.
! result = e2
! abserr = abs(e1-e0)+abs(e2-e1)
!
        result = res
        abserr = err2+err3
! ***jump out of do-loop
        go to 100
   10 e3 = epstab(k1)
        epstab(k1) = e1
        delta1 = e1-e3
        err1 = abs(delta1)
        tol1 = max(e1abs, abs(e3))*epmach
!
! if two elements are very close to each other, omit
! a part of the table by adjusting the value of n
!
        if(err1.le.tol1.or.err2.le.tol2.or.err3.le.tol3) go to 20
        ss = 0.1d+01/delta1+0.1d+01/delta2-0.1d+01/delta3
        epsinf = abs(ss*e1)
!
! test to detect irregular behaviour in the table, and
! eventually omit a part of the table adjusting the value
! of n.
!
        if(epsinf.gt.0.1d-03) go to 30
   20 n = i+i-1
! ***jump out of do-loop
        go to 50
!
! compute a new element and eventually adjust
! the value of result.
!
   30 res = e1+0.1d+01/ss
        epstab(k1) = res
        k1 = k1-2
        error = err2 + abs(res - e2) + err3
        if(error.gt.abserr) go to 40
        abserr = error
        result = res
   40 continue
!
! shift the table.
!
   50 if(n.eq.limexp) n = 2*(limexp/2)-1
      ib = 1
      if((num/2)*2.eq.num) ib = 2
      ie = newelm+1
      do 60 i=1,ie
        ib2 = ib+2
        epstab(ib) = epstab(ib2)
        ib = ib2
   60 continue
      if(num.eq.n) go to 80
      indx = num-n+1
      do 70 i = 1,n
        epstab(i)= epstab(indx)
        indx = indx+1
   70 continue
   80 if(nres.ge.4) go to 90
      res3la(nres) = result
      abserr = oflow
      go to 100
!
! compute error estimate
!
   90 abserr = abs(result - res3la(3)) + abs(result - res3la(2)) + abs(result - res3la(1))
      res3la(1) = res3la(2)
      res3la(2) = res3la(3)
      res3la(3) = result
  100 abserr = max(abserr, 0.5d+01*epmach*abs(result))
      return
      end
      pure subroutine dqk21_d64_1_1(f, a, b , result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_1):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_1_1), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
      ! type(Dual64_1_1), intent(in):: args(:)
      type(Dual64_1_1), intent(out):: result, abserr, resabs, resasc
      type(Dual64_1_1):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr )
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
      pure subroutine dqpsrt_d64_1_1(limit, last, maxerr, ermax, elist, iord, nrmax)
!***begin prologue dqpsrt
!***refer to dqage,dqagie,dqagpe,dqawse
!***routines called (none)
!***revision date 810101 (yymmdd)
!***keywords sequential sorting
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose this routine maintains the descending ordering in the
! list of the local error estimated resulting from the
! interval subdivision process. at each call two error
! estimates are inserted using the sequential search
! method, top-down for the largest error estimate and
! bottom-up for the smallest error estimate.
!***description
!
! ordering routine
! standard fortran subroutine
! double precision version
!
! parameters (meaning at output)
! limit - integer
! maximum number of error estimates the list
! can contain
!
! last - integer
! number of error estimates currently in the list
!
! maxerr - integer
! maxerr points to the nrmax-th largest error
! estimate currently in the list
!
! ermax - double precision
! nrmax-th largest error estimate
! ermax = elist(maxerr)
!
! elist - double precision
! vector of dimension last containing
! the error estimates
!
! iord - integer
! vector of dimension last, the first k elements
! of which contain pointers to the error
! estimates, such that
! elist(iord(1)),..., elist(iord(k))
! form a decreasing sequence, with
! k = last if last.le.(limit/2+2), and
! k = limit+1-last otherwise
!
! nrmax - integer
! maxerr = iord(nrmax)
!
!***end prologue dqpsrt
!
      Integer, intent(in):: limit, last
      Integer, intent(inout):: maxerr
      Integer, intent(inout):: nrmax
      type(Dual64_1_1), intent(in):: elist(last)
      Integer, intent(inout):: iord(last)
      type(Dual64_1_1), intent(out):: ermax
      type(Dual64_1_1):: errmin, errmax
      integer i, ibeg, ido, isucc, j, jbnd, jupbn, k
!
! check whether the list contains more than
! two error estimates.
!
!***first executable statement dqpsrt
      if(last.gt.2) go to 10
      iord(1) = 1
      iord(2) = 2
      go to 90
!
! this part of the routine is only executed if, due to a
! difficult integrand, subdivision increased the error
! estimate. in the normal case the insert procedure should
! start after the nrmax-th largest error estimate.
!
   10 errmax = elist(maxerr)
      if(nrmax.eq.1) go to 30
      ido = nrmax-1
      do 20 i = 1,ido
        isucc = iord(nrmax-1)
! ***jump out of do-loop
        if(errmax.le.elist(isucc)) go to 30
        iord(nrmax) = isucc
        nrmax = nrmax-1
   20 continue
!
! compute the number of elements in the list to be maintained
! in descending order. this number depends on the number of
! subdivisions still allowed.
!
   30 jupbn = last
      if(last.gt.(limit/2+2)) jupbn = limit+3-last
      errmin = elist(last)
!
! insert errmax by traversing the list top-down,
! starting comparison from the element elist(iord(nrmax+1)).
!
      jbnd = jupbn-1
      ibeg = nrmax+1
      if(ibeg.gt.jbnd) go to 50
      do 40 i=ibeg,jbnd
        isucc = iord(i)
! ***jump out of do-loop
        if(errmax.ge.elist(isucc)) go to 60
        iord(i-1) = isucc
   40 continue
   50 iord(jbnd) = maxerr
      iord(jupbn) = last
      go to 90
!
! insert errmin by traversing the list bottom-up.
!
   60 iord(i-1) = maxerr
      k = jbnd
      do 70 j=i,jbnd
        isucc = iord(k)
! ***jump out of do-loop
        if(errmin.lt.elist(isucc)) go to 80
        iord(k+1) = isucc
        k = k-1
   70 continue
      iord(i) = last
      go to 90
   80 iord(k+1) = last
!
! set maxerr and ermax.
!
   90 maxerr = iord(nrmax)
      ermax = elist(maxerr)
      return
      end
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_d64_1_2_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_2):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_1_2), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          type(Dual64_1_2), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         type(Dual64_1_2), intent(out):: ret
         type(Dual64_1_2), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         type(Dual64_1_2):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , args, ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_d64_1_2_args
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_d64_1_2_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_2):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_1_2), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          type(Dual64_1_2), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         type(Dual64_1_2), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         type(Dual64_1_2):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , args, atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_d64_1_2_args
      pure subroutine dqagse_d64_1_2_args(f, a, b , args, epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_2):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_1_2), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
          type(Dual64_1_2), intent(in):: args(:)
      type(Dual64_1_2), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      type(Dual64_1_2), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      type(Dual64_1_2):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , args, result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , args, area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , args, area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqk21_d64_1_2_args(f, a, b , args, result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_2):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_1_2), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
       type(Dual64_1_2), intent(in):: args(:)
      type(Dual64_1_2), intent(out):: result, abserr, resabs, resasc
      type(Dual64_1_2):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr , args)
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_d64_1_2(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_2):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_1_2), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_1_2), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         type(Dual64_1_2), intent(out):: ret
         type(Dual64_1_2), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         type(Dual64_1_2):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_d64_1_2
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_d64_1_2(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_2):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_1_2), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_1_2), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         type(Dual64_1_2), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         type(Dual64_1_2):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_d64_1_2
      pure subroutine dqagse_d64_1_2(f, a, b , epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_2):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_1_2), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
         ! type(Dual64_1_2), intent(in):: args(:)
      type(Dual64_1_2), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      type(Dual64_1_2), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      type(Dual64_1_2):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqelg_d64_1_2(n, epstab, result, abserr, res3la, nres)
!***begin prologue dqelg
!***refer to dqagie,dqagoe,dqagpe,dqagse
!***routines called
!***revision date 830518 (yymmdd)
!***keywords epsilon algorithm, convergence acceleration,
! extrapolation
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math & progr. div. - k.u.leuven
!***purpose the routine determines the limit of a given sequence of
! approximations, by means of the epsilon algorithm of
! p.wynn. an estimate of the absolute error is also given.
! the condensed epsilon table is computed. only those
! elements needed for the computation of the next diagonal
! are preserved.
!***description
!
! epsilon algorithm
! standard fortran subroutine
! double precision version
!
! parameters
! n - integer
! epstab(n) contains the new element in the
! first column of the epsilon table.
!
! epstab - double precision
! vector of dimension 52 containing the elements
! of the two lower diagonals of the triangular
! epsilon table. the elements are numbered
! starting at the right-hand corner of the
! triangle.
!
! result - double precision
! resulting approximation to the integral
!
! abserr - double precision
! estimate of the absolute error computed from
! result and the 3 previous results
!
! res3la - double precision
! vector of dimension 3 containing the last 3
! results
!
! nres - integer
! number of calls to the routine
! (should be zero at first call)
!
!***end prologue dqelg
!
      Integer, intent(inout):: n
      type(Dual64_1_2), intent(inout):: epstab(52), res3la(3)
      type(Dual64_1_2), intent(out):: result, abserr
      Integer, intent(inout):: nres
      type(Dual64_1_2):: res, e0, e1, e2, e3, e1abs, epsinf, error, delta1, delta2, delta3, err1, err2, err3, tol1, tol2, tol3, ss
      Real(kind=real64):: epmach, oflow
      integer i, ib, ib2, ie, indx, k1, k2, k3, limexp, newelm, num
!
! list of major variables
! -----------------------
!
! e0 - the 4 elements on which the computation of a new
! e1 element in the epsilon table is based
! e2
! e3 e0
! e3 e1 new
! e2
! newelm - number of elements to be computed in the new
! diagonal
! error - error = abs(e1-e0)+abs(e2-e1)+abs(new-e2)
! result - the element in the new diagonal with least value
! of error
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! oflow is the largest positive magnitude.
! limexp is the maximum number of elements the epsilon
! table can contain. if this number is reached, the upper
! diagonal of the epsilon table is deleted.
!
!***first executable statement dqelg
      epmach = epsilon(epmach)
      oflow = huge(oflow)
      nres = nres+1
      abserr = oflow
      result = epstab(n)
      if(n.lt.3) go to 100
      limexp = 50
      epstab(n+2) = epstab(n)
      newelm = (n-1)/2
      epstab(n) = oflow
      num = n
      k1 = n
      do 40 i = 1,newelm
        k2 = k1-1
        k3 = k1-2
        res = epstab(k1+2)
        e0 = epstab(k3)
        e1 = epstab(k2)
        e2 = res
        e1abs = abs(e1)
        delta2 = e2-e1
        err2 = abs(delta2)
        tol2 = max(abs(e2),e1abs)*epmach
        delta3 = e1-e0
        err3 = abs(delta3)
        tol3 = max(e1abs, abs(e0))*epmach
        if(err2.gt.tol2.or.err3.gt.tol3) go to 10
!
! if e0, e1 and e2 are equal to within machine
! accuracy, convergence is assumed.
! result = e2
! abserr = abs(e1-e0)+abs(e2-e1)
!
        result = res
        abserr = err2+err3
! ***jump out of do-loop
        go to 100
   10 e3 = epstab(k1)
        epstab(k1) = e1
        delta1 = e1-e3
        err1 = abs(delta1)
        tol1 = max(e1abs, abs(e3))*epmach
!
! if two elements are very close to each other, omit
! a part of the table by adjusting the value of n
!
        if(err1.le.tol1.or.err2.le.tol2.or.err3.le.tol3) go to 20
        ss = 0.1d+01/delta1+0.1d+01/delta2-0.1d+01/delta3
        epsinf = abs(ss*e1)
!
! test to detect irregular behaviour in the table, and
! eventually omit a part of the table adjusting the value
! of n.
!
        if(epsinf.gt.0.1d-03) go to 30
   20 n = i+i-1
! ***jump out of do-loop
        go to 50
!
! compute a new element and eventually adjust
! the value of result.
!
   30 res = e1+0.1d+01/ss
        epstab(k1) = res
        k1 = k1-2
        error = err2 + abs(res - e2) + err3
        if(error.gt.abserr) go to 40
        abserr = error
        result = res
   40 continue
!
! shift the table.
!
   50 if(n.eq.limexp) n = 2*(limexp/2)-1
      ib = 1
      if((num/2)*2.eq.num) ib = 2
      ie = newelm+1
      do 60 i=1,ie
        ib2 = ib+2
        epstab(ib) = epstab(ib2)
        ib = ib2
   60 continue
      if(num.eq.n) go to 80
      indx = num-n+1
      do 70 i = 1,n
        epstab(i)= epstab(indx)
        indx = indx+1
   70 continue
   80 if(nres.ge.4) go to 90
      res3la(nres) = result
      abserr = oflow
      go to 100
!
! compute error estimate
!
   90 abserr = abs(result - res3la(3)) + abs(result - res3la(2)) + abs(result - res3la(1))
      res3la(1) = res3la(2)
      res3la(2) = res3la(3)
      res3la(3) = result
  100 abserr = max(abserr, 0.5d+01*epmach*abs(result))
      return
      end
      pure subroutine dqk21_d64_1_2(f, a, b , result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_2):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_1_2), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
      ! type(Dual64_1_2), intent(in):: args(:)
      type(Dual64_1_2), intent(out):: result, abserr, resabs, resasc
      type(Dual64_1_2):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr )
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
      pure subroutine dqpsrt_d64_1_2(limit, last, maxerr, ermax, elist, iord, nrmax)
!***begin prologue dqpsrt
!***refer to dqage,dqagie,dqagpe,dqawse
!***routines called (none)
!***revision date 810101 (yymmdd)
!***keywords sequential sorting
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose this routine maintains the descending ordering in the
! list of the local error estimated resulting from the
! interval subdivision process. at each call two error
! estimates are inserted using the sequential search
! method, top-down for the largest error estimate and
! bottom-up for the smallest error estimate.
!***description
!
! ordering routine
! standard fortran subroutine
! double precision version
!
! parameters (meaning at output)
! limit - integer
! maximum number of error estimates the list
! can contain
!
! last - integer
! number of error estimates currently in the list
!
! maxerr - integer
! maxerr points to the nrmax-th largest error
! estimate currently in the list
!
! ermax - double precision
! nrmax-th largest error estimate
! ermax = elist(maxerr)
!
! elist - double precision
! vector of dimension last containing
! the error estimates
!
! iord - integer
! vector of dimension last, the first k elements
! of which contain pointers to the error
! estimates, such that
! elist(iord(1)),..., elist(iord(k))
! form a decreasing sequence, with
! k = last if last.le.(limit/2+2), and
! k = limit+1-last otherwise
!
! nrmax - integer
! maxerr = iord(nrmax)
!
!***end prologue dqpsrt
!
      Integer, intent(in):: limit, last
      Integer, intent(inout):: maxerr
      Integer, intent(inout):: nrmax
      type(Dual64_1_2), intent(in):: elist(last)
      Integer, intent(inout):: iord(last)
      type(Dual64_1_2), intent(out):: ermax
      type(Dual64_1_2):: errmin, errmax
      integer i, ibeg, ido, isucc, j, jbnd, jupbn, k
!
! check whether the list contains more than
! two error estimates.
!
!***first executable statement dqpsrt
      if(last.gt.2) go to 10
      iord(1) = 1
      iord(2) = 2
      go to 90
!
! this part of the routine is only executed if, due to a
! difficult integrand, subdivision increased the error
! estimate. in the normal case the insert procedure should
! start after the nrmax-th largest error estimate.
!
   10 errmax = elist(maxerr)
      if(nrmax.eq.1) go to 30
      ido = nrmax-1
      do 20 i = 1,ido
        isucc = iord(nrmax-1)
! ***jump out of do-loop
        if(errmax.le.elist(isucc)) go to 30
        iord(nrmax) = isucc
        nrmax = nrmax-1
   20 continue
!
! compute the number of elements in the list to be maintained
! in descending order. this number depends on the number of
! subdivisions still allowed.
!
   30 jupbn = last
      if(last.gt.(limit/2+2)) jupbn = limit+3-last
      errmin = elist(last)
!
! insert errmax by traversing the list top-down,
! starting comparison from the element elist(iord(nrmax+1)).
!
      jbnd = jupbn-1
      ibeg = nrmax+1
      if(ibeg.gt.jbnd) go to 50
      do 40 i=ibeg,jbnd
        isucc = iord(i)
! ***jump out of do-loop
        if(errmax.ge.elist(isucc)) go to 60
        iord(i-1) = isucc
   40 continue
   50 iord(jbnd) = maxerr
      iord(jupbn) = last
      go to 90
!
! insert errmin by traversing the list bottom-up.
!
   60 iord(i-1) = maxerr
      k = jbnd
      do 70 j=i,jbnd
        isucc = iord(k)
! ***jump out of do-loop
        if(errmin.lt.elist(isucc)) go to 80
        iord(k+1) = isucc
        k = k-1
   70 continue
      iord(i) = last
      go to 90
   80 iord(k+1) = last
!
! set maxerr and ermax.
!
   90 maxerr = iord(nrmax)
      ermax = elist(maxerr)
      return
      end
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_d64_1_5_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_5):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_1_5), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          type(Dual64_1_5), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         type(Dual64_1_5), intent(out):: ret
         type(Dual64_1_5), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         type(Dual64_1_5):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , args, ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_d64_1_5_args
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_d64_1_5_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_5):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_1_5), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          type(Dual64_1_5), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         type(Dual64_1_5), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         type(Dual64_1_5):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , args, atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_d64_1_5_args
      pure subroutine dqagse_d64_1_5_args(f, a, b , args, epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_5):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_1_5), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
          type(Dual64_1_5), intent(in):: args(:)
      type(Dual64_1_5), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      type(Dual64_1_5), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      type(Dual64_1_5):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , args, result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , args, area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , args, area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqk21_d64_1_5_args(f, a, b , args, result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_5):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_1_5), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
       type(Dual64_1_5), intent(in):: args(:)
      type(Dual64_1_5), intent(out):: result, abserr, resabs, resasc
      type(Dual64_1_5):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr , args)
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_d64_1_5(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_5):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_1_5), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_1_5), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         type(Dual64_1_5), intent(out):: ret
         type(Dual64_1_5), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         type(Dual64_1_5):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_d64_1_5
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_d64_1_5(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_5):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_1_5), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_1_5), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         type(Dual64_1_5), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         type(Dual64_1_5):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_d64_1_5
      pure subroutine dqagse_d64_1_5(f, a, b , epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_5):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_1_5), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
         ! type(Dual64_1_5), intent(in):: args(:)
      type(Dual64_1_5), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      type(Dual64_1_5), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      type(Dual64_1_5):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqelg_d64_1_5(n, epstab, result, abserr, res3la, nres)
!***begin prologue dqelg
!***refer to dqagie,dqagoe,dqagpe,dqagse
!***routines called
!***revision date 830518 (yymmdd)
!***keywords epsilon algorithm, convergence acceleration,
! extrapolation
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math & progr. div. - k.u.leuven
!***purpose the routine determines the limit of a given sequence of
! approximations, by means of the epsilon algorithm of
! p.wynn. an estimate of the absolute error is also given.
! the condensed epsilon table is computed. only those
! elements needed for the computation of the next diagonal
! are preserved.
!***description
!
! epsilon algorithm
! standard fortran subroutine
! double precision version
!
! parameters
! n - integer
! epstab(n) contains the new element in the
! first column of the epsilon table.
!
! epstab - double precision
! vector of dimension 52 containing the elements
! of the two lower diagonals of the triangular
! epsilon table. the elements are numbered
! starting at the right-hand corner of the
! triangle.
!
! result - double precision
! resulting approximation to the integral
!
! abserr - double precision
! estimate of the absolute error computed from
! result and the 3 previous results
!
! res3la - double precision
! vector of dimension 3 containing the last 3
! results
!
! nres - integer
! number of calls to the routine
! (should be zero at first call)
!
!***end prologue dqelg
!
      Integer, intent(inout):: n
      type(Dual64_1_5), intent(inout):: epstab(52), res3la(3)
      type(Dual64_1_5), intent(out):: result, abserr
      Integer, intent(inout):: nres
      type(Dual64_1_5):: res, e0, e1, e2, e3, e1abs, epsinf, error, delta1, delta2, delta3, err1, err2, err3, tol1, tol2, tol3, ss
      Real(kind=real64):: epmach, oflow
      integer i, ib, ib2, ie, indx, k1, k2, k3, limexp, newelm, num
!
! list of major variables
! -----------------------
!
! e0 - the 4 elements on which the computation of a new
! e1 element in the epsilon table is based
! e2
! e3 e0
! e3 e1 new
! e2
! newelm - number of elements to be computed in the new
! diagonal
! error - error = abs(e1-e0)+abs(e2-e1)+abs(new-e2)
! result - the element in the new diagonal with least value
! of error
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! oflow is the largest positive magnitude.
! limexp is the maximum number of elements the epsilon
! table can contain. if this number is reached, the upper
! diagonal of the epsilon table is deleted.
!
!***first executable statement dqelg
      epmach = epsilon(epmach)
      oflow = huge(oflow)
      nres = nres+1
      abserr = oflow
      result = epstab(n)
      if(n.lt.3) go to 100
      limexp = 50
      epstab(n+2) = epstab(n)
      newelm = (n-1)/2
      epstab(n) = oflow
      num = n
      k1 = n
      do 40 i = 1,newelm
        k2 = k1-1
        k3 = k1-2
        res = epstab(k1+2)
        e0 = epstab(k3)
        e1 = epstab(k2)
        e2 = res
        e1abs = abs(e1)
        delta2 = e2-e1
        err2 = abs(delta2)
        tol2 = max(abs(e2),e1abs)*epmach
        delta3 = e1-e0
        err3 = abs(delta3)
        tol3 = max(e1abs, abs(e0))*epmach
        if(err2.gt.tol2.or.err3.gt.tol3) go to 10
!
! if e0, e1 and e2 are equal to within machine
! accuracy, convergence is assumed.
! result = e2
! abserr = abs(e1-e0)+abs(e2-e1)
!
        result = res
        abserr = err2+err3
! ***jump out of do-loop
        go to 100
   10 e3 = epstab(k1)
        epstab(k1) = e1
        delta1 = e1-e3
        err1 = abs(delta1)
        tol1 = max(e1abs, abs(e3))*epmach
!
! if two elements are very close to each other, omit
! a part of the table by adjusting the value of n
!
        if(err1.le.tol1.or.err2.le.tol2.or.err3.le.tol3) go to 20
        ss = 0.1d+01/delta1+0.1d+01/delta2-0.1d+01/delta3
        epsinf = abs(ss*e1)
!
! test to detect irregular behaviour in the table, and
! eventually omit a part of the table adjusting the value
! of n.
!
        if(epsinf.gt.0.1d-03) go to 30
   20 n = i+i-1
! ***jump out of do-loop
        go to 50
!
! compute a new element and eventually adjust
! the value of result.
!
   30 res = e1+0.1d+01/ss
        epstab(k1) = res
        k1 = k1-2
        error = err2 + abs(res - e2) + err3
        if(error.gt.abserr) go to 40
        abserr = error
        result = res
   40 continue
!
! shift the table.
!
   50 if(n.eq.limexp) n = 2*(limexp/2)-1
      ib = 1
      if((num/2)*2.eq.num) ib = 2
      ie = newelm+1
      do 60 i=1,ie
        ib2 = ib+2
        epstab(ib) = epstab(ib2)
        ib = ib2
   60 continue
      if(num.eq.n) go to 80
      indx = num-n+1
      do 70 i = 1,n
        epstab(i)= epstab(indx)
        indx = indx+1
   70 continue
   80 if(nres.ge.4) go to 90
      res3la(nres) = result
      abserr = oflow
      go to 100
!
! compute error estimate
!
   90 abserr = abs(result - res3la(3)) + abs(result - res3la(2)) + abs(result - res3la(1))
      res3la(1) = res3la(2)
      res3la(2) = res3la(3)
      res3la(3) = result
  100 abserr = max(abserr, 0.5d+01*epmach*abs(result))
      return
      end
      pure subroutine dqk21_d64_1_5(f, a, b , result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_5):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_1_5), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
      ! type(Dual64_1_5), intent(in):: args(:)
      type(Dual64_1_5), intent(out):: result, abserr, resabs, resasc
      type(Dual64_1_5):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr )
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
      pure subroutine dqpsrt_d64_1_5(limit, last, maxerr, ermax, elist, iord, nrmax)
!***begin prologue dqpsrt
!***refer to dqage,dqagie,dqagpe,dqawse
!***routines called (none)
!***revision date 810101 (yymmdd)
!***keywords sequential sorting
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose this routine maintains the descending ordering in the
! list of the local error estimated resulting from the
! interval subdivision process. at each call two error
! estimates are inserted using the sequential search
! method, top-down for the largest error estimate and
! bottom-up for the smallest error estimate.
!***description
!
! ordering routine
! standard fortran subroutine
! double precision version
!
! parameters (meaning at output)
! limit - integer
! maximum number of error estimates the list
! can contain
!
! last - integer
! number of error estimates currently in the list
!
! maxerr - integer
! maxerr points to the nrmax-th largest error
! estimate currently in the list
!
! ermax - double precision
! nrmax-th largest error estimate
! ermax = elist(maxerr)
!
! elist - double precision
! vector of dimension last containing
! the error estimates
!
! iord - integer
! vector of dimension last, the first k elements
! of which contain pointers to the error
! estimates, such that
! elist(iord(1)),..., elist(iord(k))
! form a decreasing sequence, with
! k = last if last.le.(limit/2+2), and
! k = limit+1-last otherwise
!
! nrmax - integer
! maxerr = iord(nrmax)
!
!***end prologue dqpsrt
!
      Integer, intent(in):: limit, last
      Integer, intent(inout):: maxerr
      Integer, intent(inout):: nrmax
      type(Dual64_1_5), intent(in):: elist(last)
      Integer, intent(inout):: iord(last)
      type(Dual64_1_5), intent(out):: ermax
      type(Dual64_1_5):: errmin, errmax
      integer i, ibeg, ido, isucc, j, jbnd, jupbn, k
!
! check whether the list contains more than
! two error estimates.
!
!***first executable statement dqpsrt
      if(last.gt.2) go to 10
      iord(1) = 1
      iord(2) = 2
      go to 90
!
! this part of the routine is only executed if, due to a
! difficult integrand, subdivision increased the error
! estimate. in the normal case the insert procedure should
! start after the nrmax-th largest error estimate.
!
   10 errmax = elist(maxerr)
      if(nrmax.eq.1) go to 30
      ido = nrmax-1
      do 20 i = 1,ido
        isucc = iord(nrmax-1)
! ***jump out of do-loop
        if(errmax.le.elist(isucc)) go to 30
        iord(nrmax) = isucc
        nrmax = nrmax-1
   20 continue
!
! compute the number of elements in the list to be maintained
! in descending order. this number depends on the number of
! subdivisions still allowed.
!
   30 jupbn = last
      if(last.gt.(limit/2+2)) jupbn = limit+3-last
      errmin = elist(last)
!
! insert errmax by traversing the list top-down,
! starting comparison from the element elist(iord(nrmax+1)).
!
      jbnd = jupbn-1
      ibeg = nrmax+1
      if(ibeg.gt.jbnd) go to 50
      do 40 i=ibeg,jbnd
        isucc = iord(i)
! ***jump out of do-loop
        if(errmax.ge.elist(isucc)) go to 60
        iord(i-1) = isucc
   40 continue
   50 iord(jbnd) = maxerr
      iord(jupbn) = last
      go to 90
!
! insert errmin by traversing the list bottom-up.
!
   60 iord(i-1) = maxerr
      k = jbnd
      do 70 j=i,jbnd
        isucc = iord(k)
! ***jump out of do-loop
        if(errmin.lt.elist(isucc)) go to 80
        iord(k+1) = isucc
        k = k-1
   70 continue
      iord(i) = last
      go to 90
   80 iord(k+1) = last
!
! set maxerr and ermax.
!
   90 maxerr = iord(nrmax)
      ermax = elist(maxerr)
      return
      end
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_d64_1_7_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_7):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_1_7), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          type(Dual64_1_7), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         type(Dual64_1_7), intent(out):: ret
         type(Dual64_1_7), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         type(Dual64_1_7):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , args, ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_d64_1_7_args
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_d64_1_7_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_7):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_1_7), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          type(Dual64_1_7), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         type(Dual64_1_7), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         type(Dual64_1_7):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , args, atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_d64_1_7_args
      pure subroutine dqagse_d64_1_7_args(f, a, b , args, epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_7):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_1_7), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
          type(Dual64_1_7), intent(in):: args(:)
      type(Dual64_1_7), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      type(Dual64_1_7), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      type(Dual64_1_7):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , args, result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , args, area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , args, area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqk21_d64_1_7_args(f, a, b , args, result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_7):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_1_7), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
       type(Dual64_1_7), intent(in):: args(:)
      type(Dual64_1_7), intent(out):: result, abserr, resabs, resasc
      type(Dual64_1_7):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr , args)
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_d64_1_7(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_7):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_1_7), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_1_7), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         type(Dual64_1_7), intent(out):: ret
         type(Dual64_1_7), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         type(Dual64_1_7):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_d64_1_7
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_d64_1_7(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_7):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_1_7), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_1_7), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         type(Dual64_1_7), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         type(Dual64_1_7):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_d64_1_7
      pure subroutine dqagse_d64_1_7(f, a, b , epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_7):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_1_7), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
         ! type(Dual64_1_7), intent(in):: args(:)
      type(Dual64_1_7), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      type(Dual64_1_7), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      type(Dual64_1_7):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqelg_d64_1_7(n, epstab, result, abserr, res3la, nres)
!***begin prologue dqelg
!***refer to dqagie,dqagoe,dqagpe,dqagse
!***routines called
!***revision date 830518 (yymmdd)
!***keywords epsilon algorithm, convergence acceleration,
! extrapolation
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math & progr. div. - k.u.leuven
!***purpose the routine determines the limit of a given sequence of
! approximations, by means of the epsilon algorithm of
! p.wynn. an estimate of the absolute error is also given.
! the condensed epsilon table is computed. only those
! elements needed for the computation of the next diagonal
! are preserved.
!***description
!
! epsilon algorithm
! standard fortran subroutine
! double precision version
!
! parameters
! n - integer
! epstab(n) contains the new element in the
! first column of the epsilon table.
!
! epstab - double precision
! vector of dimension 52 containing the elements
! of the two lower diagonals of the triangular
! epsilon table. the elements are numbered
! starting at the right-hand corner of the
! triangle.
!
! result - double precision
! resulting approximation to the integral
!
! abserr - double precision
! estimate of the absolute error computed from
! result and the 3 previous results
!
! res3la - double precision
! vector of dimension 3 containing the last 3
! results
!
! nres - integer
! number of calls to the routine
! (should be zero at first call)
!
!***end prologue dqelg
!
      Integer, intent(inout):: n
      type(Dual64_1_7), intent(inout):: epstab(52), res3la(3)
      type(Dual64_1_7), intent(out):: result, abserr
      Integer, intent(inout):: nres
      type(Dual64_1_7):: res, e0, e1, e2, e3, e1abs, epsinf, error, delta1, delta2, delta3, err1, err2, err3, tol1, tol2, tol3, ss
      Real(kind=real64):: epmach, oflow
      integer i, ib, ib2, ie, indx, k1, k2, k3, limexp, newelm, num
!
! list of major variables
! -----------------------
!
! e0 - the 4 elements on which the computation of a new
! e1 element in the epsilon table is based
! e2
! e3 e0
! e3 e1 new
! e2
! newelm - number of elements to be computed in the new
! diagonal
! error - error = abs(e1-e0)+abs(e2-e1)+abs(new-e2)
! result - the element in the new diagonal with least value
! of error
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! oflow is the largest positive magnitude.
! limexp is the maximum number of elements the epsilon
! table can contain. if this number is reached, the upper
! diagonal of the epsilon table is deleted.
!
!***first executable statement dqelg
      epmach = epsilon(epmach)
      oflow = huge(oflow)
      nres = nres+1
      abserr = oflow
      result = epstab(n)
      if(n.lt.3) go to 100
      limexp = 50
      epstab(n+2) = epstab(n)
      newelm = (n-1)/2
      epstab(n) = oflow
      num = n
      k1 = n
      do 40 i = 1,newelm
        k2 = k1-1
        k3 = k1-2
        res = epstab(k1+2)
        e0 = epstab(k3)
        e1 = epstab(k2)
        e2 = res
        e1abs = abs(e1)
        delta2 = e2-e1
        err2 = abs(delta2)
        tol2 = max(abs(e2),e1abs)*epmach
        delta3 = e1-e0
        err3 = abs(delta3)
        tol3 = max(e1abs, abs(e0))*epmach
        if(err2.gt.tol2.or.err3.gt.tol3) go to 10
!
! if e0, e1 and e2 are equal to within machine
! accuracy, convergence is assumed.
! result = e2
! abserr = abs(e1-e0)+abs(e2-e1)
!
        result = res
        abserr = err2+err3
! ***jump out of do-loop
        go to 100
   10 e3 = epstab(k1)
        epstab(k1) = e1
        delta1 = e1-e3
        err1 = abs(delta1)
        tol1 = max(e1abs, abs(e3))*epmach
!
! if two elements are very close to each other, omit
! a part of the table by adjusting the value of n
!
        if(err1.le.tol1.or.err2.le.tol2.or.err3.le.tol3) go to 20
        ss = 0.1d+01/delta1+0.1d+01/delta2-0.1d+01/delta3
        epsinf = abs(ss*e1)
!
! test to detect irregular behaviour in the table, and
! eventually omit a part of the table adjusting the value
! of n.
!
        if(epsinf.gt.0.1d-03) go to 30
   20 n = i+i-1
! ***jump out of do-loop
        go to 50
!
! compute a new element and eventually adjust
! the value of result.
!
   30 res = e1+0.1d+01/ss
        epstab(k1) = res
        k1 = k1-2
        error = err2 + abs(res - e2) + err3
        if(error.gt.abserr) go to 40
        abserr = error
        result = res
   40 continue
!
! shift the table.
!
   50 if(n.eq.limexp) n = 2*(limexp/2)-1
      ib = 1
      if((num/2)*2.eq.num) ib = 2
      ie = newelm+1
      do 60 i=1,ie
        ib2 = ib+2
        epstab(ib) = epstab(ib2)
        ib = ib2
   60 continue
      if(num.eq.n) go to 80
      indx = num-n+1
      do 70 i = 1,n
        epstab(i)= epstab(indx)
        indx = indx+1
   70 continue
   80 if(nres.ge.4) go to 90
      res3la(nres) = result
      abserr = oflow
      go to 100
!
! compute error estimate
!
   90 abserr = abs(result - res3la(3)) + abs(result - res3la(2)) + abs(result - res3la(1))
      res3la(1) = res3la(2)
      res3la(2) = res3la(3)
      res3la(3) = result
  100 abserr = max(abserr, 0.5d+01*epmach*abs(result))
      return
      end
      pure subroutine dqk21_d64_1_7(f, a, b , result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_7):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_1_7), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
      ! type(Dual64_1_7), intent(in):: args(:)
      type(Dual64_1_7), intent(out):: result, abserr, resabs, resasc
      type(Dual64_1_7):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr )
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
      pure subroutine dqpsrt_d64_1_7(limit, last, maxerr, ermax, elist, iord, nrmax)
!***begin prologue dqpsrt
!***refer to dqage,dqagie,dqagpe,dqawse
!***routines called (none)
!***revision date 810101 (yymmdd)
!***keywords sequential sorting
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose this routine maintains the descending ordering in the
! list of the local error estimated resulting from the
! interval subdivision process. at each call two error
! estimates are inserted using the sequential search
! method, top-down for the largest error estimate and
! bottom-up for the smallest error estimate.
!***description
!
! ordering routine
! standard fortran subroutine
! double precision version
!
! parameters (meaning at output)
! limit - integer
! maximum number of error estimates the list
! can contain
!
! last - integer
! number of error estimates currently in the list
!
! maxerr - integer
! maxerr points to the nrmax-th largest error
! estimate currently in the list
!
! ermax - double precision
! nrmax-th largest error estimate
! ermax = elist(maxerr)
!
! elist - double precision
! vector of dimension last containing
! the error estimates
!
! iord - integer
! vector of dimension last, the first k elements
! of which contain pointers to the error
! estimates, such that
! elist(iord(1)),..., elist(iord(k))
! form a decreasing sequence, with
! k = last if last.le.(limit/2+2), and
! k = limit+1-last otherwise
!
! nrmax - integer
! maxerr = iord(nrmax)
!
!***end prologue dqpsrt
!
      Integer, intent(in):: limit, last
      Integer, intent(inout):: maxerr
      Integer, intent(inout):: nrmax
      type(Dual64_1_7), intent(in):: elist(last)
      Integer, intent(inout):: iord(last)
      type(Dual64_1_7), intent(out):: ermax
      type(Dual64_1_7):: errmin, errmax
      integer i, ibeg, ido, isucc, j, jbnd, jupbn, k
!
! check whether the list contains more than
! two error estimates.
!
!***first executable statement dqpsrt
      if(last.gt.2) go to 10
      iord(1) = 1
      iord(2) = 2
      go to 90
!
! this part of the routine is only executed if, due to a
! difficult integrand, subdivision increased the error
! estimate. in the normal case the insert procedure should
! start after the nrmax-th largest error estimate.
!
   10 errmax = elist(maxerr)
      if(nrmax.eq.1) go to 30
      ido = nrmax-1
      do 20 i = 1,ido
        isucc = iord(nrmax-1)
! ***jump out of do-loop
        if(errmax.le.elist(isucc)) go to 30
        iord(nrmax) = isucc
        nrmax = nrmax-1
   20 continue
!
! compute the number of elements in the list to be maintained
! in descending order. this number depends on the number of
! subdivisions still allowed.
!
   30 jupbn = last
      if(last.gt.(limit/2+2)) jupbn = limit+3-last
      errmin = elist(last)
!
! insert errmax by traversing the list top-down,
! starting comparison from the element elist(iord(nrmax+1)).
!
      jbnd = jupbn-1
      ibeg = nrmax+1
      if(ibeg.gt.jbnd) go to 50
      do 40 i=ibeg,jbnd
        isucc = iord(i)
! ***jump out of do-loop
        if(errmax.ge.elist(isucc)) go to 60
        iord(i-1) = isucc
   40 continue
   50 iord(jbnd) = maxerr
      iord(jupbn) = last
      go to 90
!
! insert errmin by traversing the list bottom-up.
!
   60 iord(i-1) = maxerr
      k = jbnd
      do 70 j=i,jbnd
        isucc = iord(k)
! ***jump out of do-loop
        if(errmin.lt.elist(isucc)) go to 80
        iord(k+1) = isucc
        k = k-1
   70 continue
      iord(i) = last
      go to 90
   80 iord(k+1) = last
!
! set maxerr and ermax.
!
   90 maxerr = iord(nrmax)
      ermax = elist(maxerr)
      return
      end
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_d64_1_8_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_8):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_1_8), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          type(Dual64_1_8), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         type(Dual64_1_8), intent(out):: ret
         type(Dual64_1_8), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         type(Dual64_1_8):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , args, ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_d64_1_8_args
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_d64_1_8_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_8):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_1_8), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          type(Dual64_1_8), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         type(Dual64_1_8), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         type(Dual64_1_8):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , args, atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_d64_1_8_args
      pure subroutine dqagse_d64_1_8_args(f, a, b , args, epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_8):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_1_8), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
          type(Dual64_1_8), intent(in):: args(:)
      type(Dual64_1_8), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      type(Dual64_1_8), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      type(Dual64_1_8):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , args, result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , args, area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , args, area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqk21_d64_1_8_args(f, a, b , args, result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_8):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_1_8), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
       type(Dual64_1_8), intent(in):: args(:)
      type(Dual64_1_8), intent(out):: result, abserr, resabs, resasc
      type(Dual64_1_8):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr , args)
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_d64_1_8(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_8):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_1_8), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_1_8), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         type(Dual64_1_8), intent(out):: ret
         type(Dual64_1_8), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         type(Dual64_1_8):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_d64_1_8
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_d64_1_8(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_8):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_1_8), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_1_8), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         type(Dual64_1_8), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         type(Dual64_1_8):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_d64_1_8
      pure subroutine dqagse_d64_1_8(f, a, b , epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_8):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_1_8), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
         ! type(Dual64_1_8), intent(in):: args(:)
      type(Dual64_1_8), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      type(Dual64_1_8), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      type(Dual64_1_8):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqelg_d64_1_8(n, epstab, result, abserr, res3la, nres)
!***begin prologue dqelg
!***refer to dqagie,dqagoe,dqagpe,dqagse
!***routines called
!***revision date 830518 (yymmdd)
!***keywords epsilon algorithm, convergence acceleration,
! extrapolation
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math & progr. div. - k.u.leuven
!***purpose the routine determines the limit of a given sequence of
! approximations, by means of the epsilon algorithm of
! p.wynn. an estimate of the absolute error is also given.
! the condensed epsilon table is computed. only those
! elements needed for the computation of the next diagonal
! are preserved.
!***description
!
! epsilon algorithm
! standard fortran subroutine
! double precision version
!
! parameters
! n - integer
! epstab(n) contains the new element in the
! first column of the epsilon table.
!
! epstab - double precision
! vector of dimension 52 containing the elements
! of the two lower diagonals of the triangular
! epsilon table. the elements are numbered
! starting at the right-hand corner of the
! triangle.
!
! result - double precision
! resulting approximation to the integral
!
! abserr - double precision
! estimate of the absolute error computed from
! result and the 3 previous results
!
! res3la - double precision
! vector of dimension 3 containing the last 3
! results
!
! nres - integer
! number of calls to the routine
! (should be zero at first call)
!
!***end prologue dqelg
!
      Integer, intent(inout):: n
      type(Dual64_1_8), intent(inout):: epstab(52), res3la(3)
      type(Dual64_1_8), intent(out):: result, abserr
      Integer, intent(inout):: nres
      type(Dual64_1_8):: res, e0, e1, e2, e3, e1abs, epsinf, error, delta1, delta2, delta3, err1, err2, err3, tol1, tol2, tol3, ss
      Real(kind=real64):: epmach, oflow
      integer i, ib, ib2, ie, indx, k1, k2, k3, limexp, newelm, num
!
! list of major variables
! -----------------------
!
! e0 - the 4 elements on which the computation of a new
! e1 element in the epsilon table is based
! e2
! e3 e0
! e3 e1 new
! e2
! newelm - number of elements to be computed in the new
! diagonal
! error - error = abs(e1-e0)+abs(e2-e1)+abs(new-e2)
! result - the element in the new diagonal with least value
! of error
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! oflow is the largest positive magnitude.
! limexp is the maximum number of elements the epsilon
! table can contain. if this number is reached, the upper
! diagonal of the epsilon table is deleted.
!
!***first executable statement dqelg
      epmach = epsilon(epmach)
      oflow = huge(oflow)
      nres = nres+1
      abserr = oflow
      result = epstab(n)
      if(n.lt.3) go to 100
      limexp = 50
      epstab(n+2) = epstab(n)
      newelm = (n-1)/2
      epstab(n) = oflow
      num = n
      k1 = n
      do 40 i = 1,newelm
        k2 = k1-1
        k3 = k1-2
        res = epstab(k1+2)
        e0 = epstab(k3)
        e1 = epstab(k2)
        e2 = res
        e1abs = abs(e1)
        delta2 = e2-e1
        err2 = abs(delta2)
        tol2 = max(abs(e2),e1abs)*epmach
        delta3 = e1-e0
        err3 = abs(delta3)
        tol3 = max(e1abs, abs(e0))*epmach
        if(err2.gt.tol2.or.err3.gt.tol3) go to 10
!
! if e0, e1 and e2 are equal to within machine
! accuracy, convergence is assumed.
! result = e2
! abserr = abs(e1-e0)+abs(e2-e1)
!
        result = res
        abserr = err2+err3
! ***jump out of do-loop
        go to 100
   10 e3 = epstab(k1)
        epstab(k1) = e1
        delta1 = e1-e3
        err1 = abs(delta1)
        tol1 = max(e1abs, abs(e3))*epmach
!
! if two elements are very close to each other, omit
! a part of the table by adjusting the value of n
!
        if(err1.le.tol1.or.err2.le.tol2.or.err3.le.tol3) go to 20
        ss = 0.1d+01/delta1+0.1d+01/delta2-0.1d+01/delta3
        epsinf = abs(ss*e1)
!
! test to detect irregular behaviour in the table, and
! eventually omit a part of the table adjusting the value
! of n.
!
        if(epsinf.gt.0.1d-03) go to 30
   20 n = i+i-1
! ***jump out of do-loop
        go to 50
!
! compute a new element and eventually adjust
! the value of result.
!
   30 res = e1+0.1d+01/ss
        epstab(k1) = res
        k1 = k1-2
        error = err2 + abs(res - e2) + err3
        if(error.gt.abserr) go to 40
        abserr = error
        result = res
   40 continue
!
! shift the table.
!
   50 if(n.eq.limexp) n = 2*(limexp/2)-1
      ib = 1
      if((num/2)*2.eq.num) ib = 2
      ie = newelm+1
      do 60 i=1,ie
        ib2 = ib+2
        epstab(ib) = epstab(ib2)
        ib = ib2
   60 continue
      if(num.eq.n) go to 80
      indx = num-n+1
      do 70 i = 1,n
        epstab(i)= epstab(indx)
        indx = indx+1
   70 continue
   80 if(nres.ge.4) go to 90
      res3la(nres) = result
      abserr = oflow
      go to 100
!
! compute error estimate
!
   90 abserr = abs(result - res3la(3)) + abs(result - res3la(2)) + abs(result - res3la(1))
      res3la(1) = res3la(2)
      res3la(2) = res3la(3)
      res3la(3) = result
  100 abserr = max(abserr, 0.5d+01*epmach*abs(result))
      return
      end
      pure subroutine dqk21_d64_1_8(f, a, b , result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_1_8):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_1_8), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
      ! type(Dual64_1_8), intent(in):: args(:)
      type(Dual64_1_8), intent(out):: result, abserr, resabs, resasc
      type(Dual64_1_8):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr )
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
      pure subroutine dqpsrt_d64_1_8(limit, last, maxerr, ermax, elist, iord, nrmax)
!***begin prologue dqpsrt
!***refer to dqage,dqagie,dqagpe,dqawse
!***routines called (none)
!***revision date 810101 (yymmdd)
!***keywords sequential sorting
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose this routine maintains the descending ordering in the
! list of the local error estimated resulting from the
! interval subdivision process. at each call two error
! estimates are inserted using the sequential search
! method, top-down for the largest error estimate and
! bottom-up for the smallest error estimate.
!***description
!
! ordering routine
! standard fortran subroutine
! double precision version
!
! parameters (meaning at output)
! limit - integer
! maximum number of error estimates the list
! can contain
!
! last - integer
! number of error estimates currently in the list
!
! maxerr - integer
! maxerr points to the nrmax-th largest error
! estimate currently in the list
!
! ermax - double precision
! nrmax-th largest error estimate
! ermax = elist(maxerr)
!
! elist - double precision
! vector of dimension last containing
! the error estimates
!
! iord - integer
! vector of dimension last, the first k elements
! of which contain pointers to the error
! estimates, such that
! elist(iord(1)),..., elist(iord(k))
! form a decreasing sequence, with
! k = last if last.le.(limit/2+2), and
! k = limit+1-last otherwise
!
! nrmax - integer
! maxerr = iord(nrmax)
!
!***end prologue dqpsrt
!
      Integer, intent(in):: limit, last
      Integer, intent(inout):: maxerr
      Integer, intent(inout):: nrmax
      type(Dual64_1_8), intent(in):: elist(last)
      Integer, intent(inout):: iord(last)
      type(Dual64_1_8), intent(out):: ermax
      type(Dual64_1_8):: errmin, errmax
      integer i, ibeg, ido, isucc, j, jbnd, jupbn, k
!
! check whether the list contains more than
! two error estimates.
!
!***first executable statement dqpsrt
      if(last.gt.2) go to 10
      iord(1) = 1
      iord(2) = 2
      go to 90
!
! this part of the routine is only executed if, due to a
! difficult integrand, subdivision increased the error
! estimate. in the normal case the insert procedure should
! start after the nrmax-th largest error estimate.
!
   10 errmax = elist(maxerr)
      if(nrmax.eq.1) go to 30
      ido = nrmax-1
      do 20 i = 1,ido
        isucc = iord(nrmax-1)
! ***jump out of do-loop
        if(errmax.le.elist(isucc)) go to 30
        iord(nrmax) = isucc
        nrmax = nrmax-1
   20 continue
!
! compute the number of elements in the list to be maintained
! in descending order. this number depends on the number of
! subdivisions still allowed.
!
   30 jupbn = last
      if(last.gt.(limit/2+2)) jupbn = limit+3-last
      errmin = elist(last)
!
! insert errmax by traversing the list top-down,
! starting comparison from the element elist(iord(nrmax+1)).
!
      jbnd = jupbn-1
      ibeg = nrmax+1
      if(ibeg.gt.jbnd) go to 50
      do 40 i=ibeg,jbnd
        isucc = iord(i)
! ***jump out of do-loop
        if(errmax.ge.elist(isucc)) go to 60
        iord(i-1) = isucc
   40 continue
   50 iord(jbnd) = maxerr
      iord(jupbn) = last
      go to 90
!
! insert errmin by traversing the list bottom-up.
!
   60 iord(i-1) = maxerr
      k = jbnd
      do 70 j=i,jbnd
        isucc = iord(k)
! ***jump out of do-loop
        if(errmin.lt.elist(isucc)) go to 80
        iord(k+1) = isucc
        k = k-1
   70 continue
      iord(i) = last
      go to 90
   80 iord(k+1) = last
!
! set maxerr and ermax.
!
   90 maxerr = iord(nrmax)
      ermax = elist(maxerr)
      return
      end
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_d64_2_1_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_1):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_2_1), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          type(Dual64_2_1), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         type(Dual64_2_1), intent(out):: ret
         type(Dual64_2_1), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         type(Dual64_2_1):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , args, ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_d64_2_1_args
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_d64_2_1_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_1):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_2_1), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          type(Dual64_2_1), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         type(Dual64_2_1), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         type(Dual64_2_1):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , args, atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_d64_2_1_args
      pure subroutine dqagse_d64_2_1_args(f, a, b , args, epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_1):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_2_1), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
          type(Dual64_2_1), intent(in):: args(:)
      type(Dual64_2_1), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      type(Dual64_2_1), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      type(Dual64_2_1):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , args, result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , args, area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , args, area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqk21_d64_2_1_args(f, a, b , args, result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_1):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_2_1), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
       type(Dual64_2_1), intent(in):: args(:)
      type(Dual64_2_1), intent(out):: result, abserr, resabs, resasc
      type(Dual64_2_1):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr , args)
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_d64_2_1(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_1):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_2_1), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_2_1), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         type(Dual64_2_1), intent(out):: ret
         type(Dual64_2_1), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         type(Dual64_2_1):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_d64_2_1
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_d64_2_1(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_1):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_2_1), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_2_1), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         type(Dual64_2_1), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         type(Dual64_2_1):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_d64_2_1
      pure subroutine dqagse_d64_2_1(f, a, b , epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_1):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_2_1), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
         ! type(Dual64_2_1), intent(in):: args(:)
      type(Dual64_2_1), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      type(Dual64_2_1), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      type(Dual64_2_1):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqelg_d64_2_1(n, epstab, result, abserr, res3la, nres)
!***begin prologue dqelg
!***refer to dqagie,dqagoe,dqagpe,dqagse
!***routines called
!***revision date 830518 (yymmdd)
!***keywords epsilon algorithm, convergence acceleration,
! extrapolation
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math & progr. div. - k.u.leuven
!***purpose the routine determines the limit of a given sequence of
! approximations, by means of the epsilon algorithm of
! p.wynn. an estimate of the absolute error is also given.
! the condensed epsilon table is computed. only those
! elements needed for the computation of the next diagonal
! are preserved.
!***description
!
! epsilon algorithm
! standard fortran subroutine
! double precision version
!
! parameters
! n - integer
! epstab(n) contains the new element in the
! first column of the epsilon table.
!
! epstab - double precision
! vector of dimension 52 containing the elements
! of the two lower diagonals of the triangular
! epsilon table. the elements are numbered
! starting at the right-hand corner of the
! triangle.
!
! result - double precision
! resulting approximation to the integral
!
! abserr - double precision
! estimate of the absolute error computed from
! result and the 3 previous results
!
! res3la - double precision
! vector of dimension 3 containing the last 3
! results
!
! nres - integer
! number of calls to the routine
! (should be zero at first call)
!
!***end prologue dqelg
!
      Integer, intent(inout):: n
      type(Dual64_2_1), intent(inout):: epstab(52), res3la(3)
      type(Dual64_2_1), intent(out):: result, abserr
      Integer, intent(inout):: nres
      type(Dual64_2_1):: res, e0, e1, e2, e3, e1abs, epsinf, error, delta1, delta2, delta3, err1, err2, err3, tol1, tol2, tol3, ss
      Real(kind=real64):: epmach, oflow
      integer i, ib, ib2, ie, indx, k1, k2, k3, limexp, newelm, num
!
! list of major variables
! -----------------------
!
! e0 - the 4 elements on which the computation of a new
! e1 element in the epsilon table is based
! e2
! e3 e0
! e3 e1 new
! e2
! newelm - number of elements to be computed in the new
! diagonal
! error - error = abs(e1-e0)+abs(e2-e1)+abs(new-e2)
! result - the element in the new diagonal with least value
! of error
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! oflow is the largest positive magnitude.
! limexp is the maximum number of elements the epsilon
! table can contain. if this number is reached, the upper
! diagonal of the epsilon table is deleted.
!
!***first executable statement dqelg
      epmach = epsilon(epmach)
      oflow = huge(oflow)
      nres = nres+1
      abserr = oflow
      result = epstab(n)
      if(n.lt.3) go to 100
      limexp = 50
      epstab(n+2) = epstab(n)
      newelm = (n-1)/2
      epstab(n) = oflow
      num = n
      k1 = n
      do 40 i = 1,newelm
        k2 = k1-1
        k3 = k1-2
        res = epstab(k1+2)
        e0 = epstab(k3)
        e1 = epstab(k2)
        e2 = res
        e1abs = abs(e1)
        delta2 = e2-e1
        err2 = abs(delta2)
        tol2 = max(abs(e2),e1abs)*epmach
        delta3 = e1-e0
        err3 = abs(delta3)
        tol3 = max(e1abs, abs(e0))*epmach
        if(err2.gt.tol2.or.err3.gt.tol3) go to 10
!
! if e0, e1 and e2 are equal to within machine
! accuracy, convergence is assumed.
! result = e2
! abserr = abs(e1-e0)+abs(e2-e1)
!
        result = res
        abserr = err2+err3
! ***jump out of do-loop
        go to 100
   10 e3 = epstab(k1)
        epstab(k1) = e1
        delta1 = e1-e3
        err1 = abs(delta1)
        tol1 = max(e1abs, abs(e3))*epmach
!
! if two elements are very close to each other, omit
! a part of the table by adjusting the value of n
!
        if(err1.le.tol1.or.err2.le.tol2.or.err3.le.tol3) go to 20
        ss = 0.1d+01/delta1+0.1d+01/delta2-0.1d+01/delta3
        epsinf = abs(ss*e1)
!
! test to detect irregular behaviour in the table, and
! eventually omit a part of the table adjusting the value
! of n.
!
        if(epsinf.gt.0.1d-03) go to 30
   20 n = i+i-1
! ***jump out of do-loop
        go to 50
!
! compute a new element and eventually adjust
! the value of result.
!
   30 res = e1+0.1d+01/ss
        epstab(k1) = res
        k1 = k1-2
        error = err2 + abs(res - e2) + err3
        if(error.gt.abserr) go to 40
        abserr = error
        result = res
   40 continue
!
! shift the table.
!
   50 if(n.eq.limexp) n = 2*(limexp/2)-1
      ib = 1
      if((num/2)*2.eq.num) ib = 2
      ie = newelm+1
      do 60 i=1,ie
        ib2 = ib+2
        epstab(ib) = epstab(ib2)
        ib = ib2
   60 continue
      if(num.eq.n) go to 80
      indx = num-n+1
      do 70 i = 1,n
        epstab(i)= epstab(indx)
        indx = indx+1
   70 continue
   80 if(nres.ge.4) go to 90
      res3la(nres) = result
      abserr = oflow
      go to 100
!
! compute error estimate
!
   90 abserr = abs(result - res3la(3)) + abs(result - res3la(2)) + abs(result - res3la(1))
      res3la(1) = res3la(2)
      res3la(2) = res3la(3)
      res3la(3) = result
  100 abserr = max(abserr, 0.5d+01*epmach*abs(result))
      return
      end
      pure subroutine dqk21_d64_2_1(f, a, b , result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_1):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_2_1), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
      ! type(Dual64_2_1), intent(in):: args(:)
      type(Dual64_2_1), intent(out):: result, abserr, resabs, resasc
      type(Dual64_2_1):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr )
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
      pure subroutine dqpsrt_d64_2_1(limit, last, maxerr, ermax, elist, iord, nrmax)
!***begin prologue dqpsrt
!***refer to dqage,dqagie,dqagpe,dqawse
!***routines called (none)
!***revision date 810101 (yymmdd)
!***keywords sequential sorting
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose this routine maintains the descending ordering in the
! list of the local error estimated resulting from the
! interval subdivision process. at each call two error
! estimates are inserted using the sequential search
! method, top-down for the largest error estimate and
! bottom-up for the smallest error estimate.
!***description
!
! ordering routine
! standard fortran subroutine
! double precision version
!
! parameters (meaning at output)
! limit - integer
! maximum number of error estimates the list
! can contain
!
! last - integer
! number of error estimates currently in the list
!
! maxerr - integer
! maxerr points to the nrmax-th largest error
! estimate currently in the list
!
! ermax - double precision
! nrmax-th largest error estimate
! ermax = elist(maxerr)
!
! elist - double precision
! vector of dimension last containing
! the error estimates
!
! iord - integer
! vector of dimension last, the first k elements
! of which contain pointers to the error
! estimates, such that
! elist(iord(1)),..., elist(iord(k))
! form a decreasing sequence, with
! k = last if last.le.(limit/2+2), and
! k = limit+1-last otherwise
!
! nrmax - integer
! maxerr = iord(nrmax)
!
!***end prologue dqpsrt
!
      Integer, intent(in):: limit, last
      Integer, intent(inout):: maxerr
      Integer, intent(inout):: nrmax
      type(Dual64_2_1), intent(in):: elist(last)
      Integer, intent(inout):: iord(last)
      type(Dual64_2_1), intent(out):: ermax
      type(Dual64_2_1):: errmin, errmax
      integer i, ibeg, ido, isucc, j, jbnd, jupbn, k
!
! check whether the list contains more than
! two error estimates.
!
!***first executable statement dqpsrt
      if(last.gt.2) go to 10
      iord(1) = 1
      iord(2) = 2
      go to 90
!
! this part of the routine is only executed if, due to a
! difficult integrand, subdivision increased the error
! estimate. in the normal case the insert procedure should
! start after the nrmax-th largest error estimate.
!
   10 errmax = elist(maxerr)
      if(nrmax.eq.1) go to 30
      ido = nrmax-1
      do 20 i = 1,ido
        isucc = iord(nrmax-1)
! ***jump out of do-loop
        if(errmax.le.elist(isucc)) go to 30
        iord(nrmax) = isucc
        nrmax = nrmax-1
   20 continue
!
! compute the number of elements in the list to be maintained
! in descending order. this number depends on the number of
! subdivisions still allowed.
!
   30 jupbn = last
      if(last.gt.(limit/2+2)) jupbn = limit+3-last
      errmin = elist(last)
!
! insert errmax by traversing the list top-down,
! starting comparison from the element elist(iord(nrmax+1)).
!
      jbnd = jupbn-1
      ibeg = nrmax+1
      if(ibeg.gt.jbnd) go to 50
      do 40 i=ibeg,jbnd
        isucc = iord(i)
! ***jump out of do-loop
        if(errmax.ge.elist(isucc)) go to 60
        iord(i-1) = isucc
   40 continue
   50 iord(jbnd) = maxerr
      iord(jupbn) = last
      go to 90
!
! insert errmin by traversing the list bottom-up.
!
   60 iord(i-1) = maxerr
      k = jbnd
      do 70 j=i,jbnd
        isucc = iord(k)
! ***jump out of do-loop
        if(errmin.lt.elist(isucc)) go to 80
        iord(k+1) = isucc
        k = k-1
   70 continue
      iord(i) = last
      go to 90
   80 iord(k+1) = last
!
! set maxerr and ermax.
!
   90 maxerr = iord(nrmax)
      ermax = elist(maxerr)
      return
      end
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_d64_2_2_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_2):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_2_2), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          type(Dual64_2_2), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         type(Dual64_2_2), intent(out):: ret
         type(Dual64_2_2), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         type(Dual64_2_2):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , args, ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_d64_2_2_args
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_d64_2_2_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_2):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_2_2), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          type(Dual64_2_2), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         type(Dual64_2_2), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         type(Dual64_2_2):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , args, atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_d64_2_2_args
      pure subroutine dqagse_d64_2_2_args(f, a, b , args, epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_2):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_2_2), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
          type(Dual64_2_2), intent(in):: args(:)
      type(Dual64_2_2), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      type(Dual64_2_2), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      type(Dual64_2_2):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , args, result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , args, area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , args, area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqk21_d64_2_2_args(f, a, b , args, result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_2):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_2_2), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
       type(Dual64_2_2), intent(in):: args(:)
      type(Dual64_2_2), intent(out):: result, abserr, resabs, resasc
      type(Dual64_2_2):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr , args)
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_d64_2_2(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_2):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_2_2), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_2_2), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         type(Dual64_2_2), intent(out):: ret
         type(Dual64_2_2), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         type(Dual64_2_2):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_d64_2_2
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_d64_2_2(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_2):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_2_2), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_2_2), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         type(Dual64_2_2), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         type(Dual64_2_2):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_d64_2_2
      pure subroutine dqagse_d64_2_2(f, a, b , epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_2):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_2_2), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
         ! type(Dual64_2_2), intent(in):: args(:)
      type(Dual64_2_2), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      type(Dual64_2_2), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      type(Dual64_2_2):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqelg_d64_2_2(n, epstab, result, abserr, res3la, nres)
!***begin prologue dqelg
!***refer to dqagie,dqagoe,dqagpe,dqagse
!***routines called
!***revision date 830518 (yymmdd)
!***keywords epsilon algorithm, convergence acceleration,
! extrapolation
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math & progr. div. - k.u.leuven
!***purpose the routine determines the limit of a given sequence of
! approximations, by means of the epsilon algorithm of
! p.wynn. an estimate of the absolute error is also given.
! the condensed epsilon table is computed. only those
! elements needed for the computation of the next diagonal
! are preserved.
!***description
!
! epsilon algorithm
! standard fortran subroutine
! double precision version
!
! parameters
! n - integer
! epstab(n) contains the new element in the
! first column of the epsilon table.
!
! epstab - double precision
! vector of dimension 52 containing the elements
! of the two lower diagonals of the triangular
! epsilon table. the elements are numbered
! starting at the right-hand corner of the
! triangle.
!
! result - double precision
! resulting approximation to the integral
!
! abserr - double precision
! estimate of the absolute error computed from
! result and the 3 previous results
!
! res3la - double precision
! vector of dimension 3 containing the last 3
! results
!
! nres - integer
! number of calls to the routine
! (should be zero at first call)
!
!***end prologue dqelg
!
      Integer, intent(inout):: n
      type(Dual64_2_2), intent(inout):: epstab(52), res3la(3)
      type(Dual64_2_2), intent(out):: result, abserr
      Integer, intent(inout):: nres
      type(Dual64_2_2):: res, e0, e1, e2, e3, e1abs, epsinf, error, delta1, delta2, delta3, err1, err2, err3, tol1, tol2, tol3, ss
      Real(kind=real64):: epmach, oflow
      integer i, ib, ib2, ie, indx, k1, k2, k3, limexp, newelm, num
!
! list of major variables
! -----------------------
!
! e0 - the 4 elements on which the computation of a new
! e1 element in the epsilon table is based
! e2
! e3 e0
! e3 e1 new
! e2
! newelm - number of elements to be computed in the new
! diagonal
! error - error = abs(e1-e0)+abs(e2-e1)+abs(new-e2)
! result - the element in the new diagonal with least value
! of error
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! oflow is the largest positive magnitude.
! limexp is the maximum number of elements the epsilon
! table can contain. if this number is reached, the upper
! diagonal of the epsilon table is deleted.
!
!***first executable statement dqelg
      epmach = epsilon(epmach)
      oflow = huge(oflow)
      nres = nres+1
      abserr = oflow
      result = epstab(n)
      if(n.lt.3) go to 100
      limexp = 50
      epstab(n+2) = epstab(n)
      newelm = (n-1)/2
      epstab(n) = oflow
      num = n
      k1 = n
      do 40 i = 1,newelm
        k2 = k1-1
        k3 = k1-2
        res = epstab(k1+2)
        e0 = epstab(k3)
        e1 = epstab(k2)
        e2 = res
        e1abs = abs(e1)
        delta2 = e2-e1
        err2 = abs(delta2)
        tol2 = max(abs(e2),e1abs)*epmach
        delta3 = e1-e0
        err3 = abs(delta3)
        tol3 = max(e1abs, abs(e0))*epmach
        if(err2.gt.tol2.or.err3.gt.tol3) go to 10
!
! if e0, e1 and e2 are equal to within machine
! accuracy, convergence is assumed.
! result = e2
! abserr = abs(e1-e0)+abs(e2-e1)
!
        result = res
        abserr = err2+err3
! ***jump out of do-loop
        go to 100
   10 e3 = epstab(k1)
        epstab(k1) = e1
        delta1 = e1-e3
        err1 = abs(delta1)
        tol1 = max(e1abs, abs(e3))*epmach
!
! if two elements are very close to each other, omit
! a part of the table by adjusting the value of n
!
        if(err1.le.tol1.or.err2.le.tol2.or.err3.le.tol3) go to 20
        ss = 0.1d+01/delta1+0.1d+01/delta2-0.1d+01/delta3
        epsinf = abs(ss*e1)
!
! test to detect irregular behaviour in the table, and
! eventually omit a part of the table adjusting the value
! of n.
!
        if(epsinf.gt.0.1d-03) go to 30
   20 n = i+i-1
! ***jump out of do-loop
        go to 50
!
! compute a new element and eventually adjust
! the value of result.
!
   30 res = e1+0.1d+01/ss
        epstab(k1) = res
        k1 = k1-2
        error = err2 + abs(res - e2) + err3
        if(error.gt.abserr) go to 40
        abserr = error
        result = res
   40 continue
!
! shift the table.
!
   50 if(n.eq.limexp) n = 2*(limexp/2)-1
      ib = 1
      if((num/2)*2.eq.num) ib = 2
      ie = newelm+1
      do 60 i=1,ie
        ib2 = ib+2
        epstab(ib) = epstab(ib2)
        ib = ib2
   60 continue
      if(num.eq.n) go to 80
      indx = num-n+1
      do 70 i = 1,n
        epstab(i)= epstab(indx)
        indx = indx+1
   70 continue
   80 if(nres.ge.4) go to 90
      res3la(nres) = result
      abserr = oflow
      go to 100
!
! compute error estimate
!
   90 abserr = abs(result - res3la(3)) + abs(result - res3la(2)) + abs(result - res3la(1))
      res3la(1) = res3la(2)
      res3la(2) = res3la(3)
      res3la(3) = result
  100 abserr = max(abserr, 0.5d+01*epmach*abs(result))
      return
      end
      pure subroutine dqk21_d64_2_2(f, a, b , result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_2):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_2_2), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
      ! type(Dual64_2_2), intent(in):: args(:)
      type(Dual64_2_2), intent(out):: result, abserr, resabs, resasc
      type(Dual64_2_2):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr )
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
      pure subroutine dqpsrt_d64_2_2(limit, last, maxerr, ermax, elist, iord, nrmax)
!***begin prologue dqpsrt
!***refer to dqage,dqagie,dqagpe,dqawse
!***routines called (none)
!***revision date 810101 (yymmdd)
!***keywords sequential sorting
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose this routine maintains the descending ordering in the
! list of the local error estimated resulting from the
! interval subdivision process. at each call two error
! estimates are inserted using the sequential search
! method, top-down for the largest error estimate and
! bottom-up for the smallest error estimate.
!***description
!
! ordering routine
! standard fortran subroutine
! double precision version
!
! parameters (meaning at output)
! limit - integer
! maximum number of error estimates the list
! can contain
!
! last - integer
! number of error estimates currently in the list
!
! maxerr - integer
! maxerr points to the nrmax-th largest error
! estimate currently in the list
!
! ermax - double precision
! nrmax-th largest error estimate
! ermax = elist(maxerr)
!
! elist - double precision
! vector of dimension last containing
! the error estimates
!
! iord - integer
! vector of dimension last, the first k elements
! of which contain pointers to the error
! estimates, such that
! elist(iord(1)),..., elist(iord(k))
! form a decreasing sequence, with
! k = last if last.le.(limit/2+2), and
! k = limit+1-last otherwise
!
! nrmax - integer
! maxerr = iord(nrmax)
!
!***end prologue dqpsrt
!
      Integer, intent(in):: limit, last
      Integer, intent(inout):: maxerr
      Integer, intent(inout):: nrmax
      type(Dual64_2_2), intent(in):: elist(last)
      Integer, intent(inout):: iord(last)
      type(Dual64_2_2), intent(out):: ermax
      type(Dual64_2_2):: errmin, errmax
      integer i, ibeg, ido, isucc, j, jbnd, jupbn, k
!
! check whether the list contains more than
! two error estimates.
!
!***first executable statement dqpsrt
      if(last.gt.2) go to 10
      iord(1) = 1
      iord(2) = 2
      go to 90
!
! this part of the routine is only executed if, due to a
! difficult integrand, subdivision increased the error
! estimate. in the normal case the insert procedure should
! start after the nrmax-th largest error estimate.
!
   10 errmax = elist(maxerr)
      if(nrmax.eq.1) go to 30
      ido = nrmax-1
      do 20 i = 1,ido
        isucc = iord(nrmax-1)
! ***jump out of do-loop
        if(errmax.le.elist(isucc)) go to 30
        iord(nrmax) = isucc
        nrmax = nrmax-1
   20 continue
!
! compute the number of elements in the list to be maintained
! in descending order. this number depends on the number of
! subdivisions still allowed.
!
   30 jupbn = last
      if(last.gt.(limit/2+2)) jupbn = limit+3-last
      errmin = elist(last)
!
! insert errmax by traversing the list top-down,
! starting comparison from the element elist(iord(nrmax+1)).
!
      jbnd = jupbn-1
      ibeg = nrmax+1
      if(ibeg.gt.jbnd) go to 50
      do 40 i=ibeg,jbnd
        isucc = iord(i)
! ***jump out of do-loop
        if(errmax.ge.elist(isucc)) go to 60
        iord(i-1) = isucc
   40 continue
   50 iord(jbnd) = maxerr
      iord(jupbn) = last
      go to 90
!
! insert errmin by traversing the list bottom-up.
!
   60 iord(i-1) = maxerr
      k = jbnd
      do 70 j=i,jbnd
        isucc = iord(k)
! ***jump out of do-loop
        if(errmin.lt.elist(isucc)) go to 80
        iord(k+1) = isucc
        k = k-1
   70 continue
      iord(i) = last
      go to 90
   80 iord(k+1) = last
!
! set maxerr and ermax.
!
   90 maxerr = iord(nrmax)
      ermax = elist(maxerr)
      return
      end
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_d64_2_5_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_2_5), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          type(Dual64_2_5), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         type(Dual64_2_5), intent(out):: ret
         type(Dual64_2_5), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         type(Dual64_2_5):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , args, ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_d64_2_5_args
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_d64_2_5_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_2_5), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          type(Dual64_2_5), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         type(Dual64_2_5), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         type(Dual64_2_5):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , args, atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_d64_2_5_args
      pure subroutine dqagse_d64_2_5_args(f, a, b , args, epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_2_5), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
          type(Dual64_2_5), intent(in):: args(:)
      type(Dual64_2_5), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      type(Dual64_2_5), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      type(Dual64_2_5):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , args, result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , args, area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , args, area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqk21_d64_2_5_args(f, a, b , args, result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_2_5), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
       type(Dual64_2_5), intent(in):: args(:)
      type(Dual64_2_5), intent(out):: result, abserr, resabs, resasc
      type(Dual64_2_5):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr , args)
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_d64_2_5(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_2_5), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_2_5), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         type(Dual64_2_5), intent(out):: ret
         type(Dual64_2_5), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         type(Dual64_2_5):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_d64_2_5
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_d64_2_5(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_2_5), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_2_5), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         type(Dual64_2_5), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         type(Dual64_2_5):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_d64_2_5
      pure subroutine dqagse_d64_2_5(f, a, b , epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_2_5), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
         ! type(Dual64_2_5), intent(in):: args(:)
      type(Dual64_2_5), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      type(Dual64_2_5), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      type(Dual64_2_5):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqelg_d64_2_5(n, epstab, result, abserr, res3la, nres)
!***begin prologue dqelg
!***refer to dqagie,dqagoe,dqagpe,dqagse
!***routines called
!***revision date 830518 (yymmdd)
!***keywords epsilon algorithm, convergence acceleration,
! extrapolation
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math & progr. div. - k.u.leuven
!***purpose the routine determines the limit of a given sequence of
! approximations, by means of the epsilon algorithm of
! p.wynn. an estimate of the absolute error is also given.
! the condensed epsilon table is computed. only those
! elements needed for the computation of the next diagonal
! are preserved.
!***description
!
! epsilon algorithm
! standard fortran subroutine
! double precision version
!
! parameters
! n - integer
! epstab(n) contains the new element in the
! first column of the epsilon table.
!
! epstab - double precision
! vector of dimension 52 containing the elements
! of the two lower diagonals of the triangular
! epsilon table. the elements are numbered
! starting at the right-hand corner of the
! triangle.
!
! result - double precision
! resulting approximation to the integral
!
! abserr - double precision
! estimate of the absolute error computed from
! result and the 3 previous results
!
! res3la - double precision
! vector of dimension 3 containing the last 3
! results
!
! nres - integer
! number of calls to the routine
! (should be zero at first call)
!
!***end prologue dqelg
!
      Integer, intent(inout):: n
      type(Dual64_2_5), intent(inout):: epstab(52), res3la(3)
      type(Dual64_2_5), intent(out):: result, abserr
      Integer, intent(inout):: nres
      type(Dual64_2_5):: res, e0, e1, e2, e3, e1abs, epsinf, error, delta1, delta2, delta3, err1, err2, err3, tol1, tol2, tol3, ss
      Real(kind=real64):: epmach, oflow
      integer i, ib, ib2, ie, indx, k1, k2, k3, limexp, newelm, num
!
! list of major variables
! -----------------------
!
! e0 - the 4 elements on which the computation of a new
! e1 element in the epsilon table is based
! e2
! e3 e0
! e3 e1 new
! e2
! newelm - number of elements to be computed in the new
! diagonal
! error - error = abs(e1-e0)+abs(e2-e1)+abs(new-e2)
! result - the element in the new diagonal with least value
! of error
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! oflow is the largest positive magnitude.
! limexp is the maximum number of elements the epsilon
! table can contain. if this number is reached, the upper
! diagonal of the epsilon table is deleted.
!
!***first executable statement dqelg
      epmach = epsilon(epmach)
      oflow = huge(oflow)
      nres = nres+1
      abserr = oflow
      result = epstab(n)
      if(n.lt.3) go to 100
      limexp = 50
      epstab(n+2) = epstab(n)
      newelm = (n-1)/2
      epstab(n) = oflow
      num = n
      k1 = n
      do 40 i = 1,newelm
        k2 = k1-1
        k3 = k1-2
        res = epstab(k1+2)
        e0 = epstab(k3)
        e1 = epstab(k2)
        e2 = res
        e1abs = abs(e1)
        delta2 = e2-e1
        err2 = abs(delta2)
        tol2 = max(abs(e2),e1abs)*epmach
        delta3 = e1-e0
        err3 = abs(delta3)
        tol3 = max(e1abs, abs(e0))*epmach
        if(err2.gt.tol2.or.err3.gt.tol3) go to 10
!
! if e0, e1 and e2 are equal to within machine
! accuracy, convergence is assumed.
! result = e2
! abserr = abs(e1-e0)+abs(e2-e1)
!
        result = res
        abserr = err2+err3
! ***jump out of do-loop
        go to 100
   10 e3 = epstab(k1)
        epstab(k1) = e1
        delta1 = e1-e3
        err1 = abs(delta1)
        tol1 = max(e1abs, abs(e3))*epmach
!
! if two elements are very close to each other, omit
! a part of the table by adjusting the value of n
!
        if(err1.le.tol1.or.err2.le.tol2.or.err3.le.tol3) go to 20
        ss = 0.1d+01/delta1+0.1d+01/delta2-0.1d+01/delta3
        epsinf = abs(ss*e1)
!
! test to detect irregular behaviour in the table, and
! eventually omit a part of the table adjusting the value
! of n.
!
        if(epsinf.gt.0.1d-03) go to 30
   20 n = i+i-1
! ***jump out of do-loop
        go to 50
!
! compute a new element and eventually adjust
! the value of result.
!
   30 res = e1+0.1d+01/ss
        epstab(k1) = res
        k1 = k1-2
        error = err2 + abs(res - e2) + err3
        if(error.gt.abserr) go to 40
        abserr = error
        result = res
   40 continue
!
! shift the table.
!
   50 if(n.eq.limexp) n = 2*(limexp/2)-1
      ib = 1
      if((num/2)*2.eq.num) ib = 2
      ie = newelm+1
      do 60 i=1,ie
        ib2 = ib+2
        epstab(ib) = epstab(ib2)
        ib = ib2
   60 continue
      if(num.eq.n) go to 80
      indx = num-n+1
      do 70 i = 1,n
        epstab(i)= epstab(indx)
        indx = indx+1
   70 continue
   80 if(nres.ge.4) go to 90
      res3la(nres) = result
      abserr = oflow
      go to 100
!
! compute error estimate
!
   90 abserr = abs(result - res3la(3)) + abs(result - res3la(2)) + abs(result - res3la(1))
      res3la(1) = res3la(2)
      res3la(2) = res3la(3)
      res3la(3) = result
  100 abserr = max(abserr, 0.5d+01*epmach*abs(result))
      return
      end
      pure subroutine dqk21_d64_2_5(f, a, b , result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_5):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_2_5), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
      ! type(Dual64_2_5), intent(in):: args(:)
      type(Dual64_2_5), intent(out):: result, abserr, resabs, resasc
      type(Dual64_2_5):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr )
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
      pure subroutine dqpsrt_d64_2_5(limit, last, maxerr, ermax, elist, iord, nrmax)
!***begin prologue dqpsrt
!***refer to dqage,dqagie,dqagpe,dqawse
!***routines called (none)
!***revision date 810101 (yymmdd)
!***keywords sequential sorting
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose this routine maintains the descending ordering in the
! list of the local error estimated resulting from the
! interval subdivision process. at each call two error
! estimates are inserted using the sequential search
! method, top-down for the largest error estimate and
! bottom-up for the smallest error estimate.
!***description
!
! ordering routine
! standard fortran subroutine
! double precision version
!
! parameters (meaning at output)
! limit - integer
! maximum number of error estimates the list
! can contain
!
! last - integer
! number of error estimates currently in the list
!
! maxerr - integer
! maxerr points to the nrmax-th largest error
! estimate currently in the list
!
! ermax - double precision
! nrmax-th largest error estimate
! ermax = elist(maxerr)
!
! elist - double precision
! vector of dimension last containing
! the error estimates
!
! iord - integer
! vector of dimension last, the first k elements
! of which contain pointers to the error
! estimates, such that
! elist(iord(1)),..., elist(iord(k))
! form a decreasing sequence, with
! k = last if last.le.(limit/2+2), and
! k = limit+1-last otherwise
!
! nrmax - integer
! maxerr = iord(nrmax)
!
!***end prologue dqpsrt
!
      Integer, intent(in):: limit, last
      Integer, intent(inout):: maxerr
      Integer, intent(inout):: nrmax
      type(Dual64_2_5), intent(in):: elist(last)
      Integer, intent(inout):: iord(last)
      type(Dual64_2_5), intent(out):: ermax
      type(Dual64_2_5):: errmin, errmax
      integer i, ibeg, ido, isucc, j, jbnd, jupbn, k
!
! check whether the list contains more than
! two error estimates.
!
!***first executable statement dqpsrt
      if(last.gt.2) go to 10
      iord(1) = 1
      iord(2) = 2
      go to 90
!
! this part of the routine is only executed if, due to a
! difficult integrand, subdivision increased the error
! estimate. in the normal case the insert procedure should
! start after the nrmax-th largest error estimate.
!
   10 errmax = elist(maxerr)
      if(nrmax.eq.1) go to 30
      ido = nrmax-1
      do 20 i = 1,ido
        isucc = iord(nrmax-1)
! ***jump out of do-loop
        if(errmax.le.elist(isucc)) go to 30
        iord(nrmax) = isucc
        nrmax = nrmax-1
   20 continue
!
! compute the number of elements in the list to be maintained
! in descending order. this number depends on the number of
! subdivisions still allowed.
!
   30 jupbn = last
      if(last.gt.(limit/2+2)) jupbn = limit+3-last
      errmin = elist(last)
!
! insert errmax by traversing the list top-down,
! starting comparison from the element elist(iord(nrmax+1)).
!
      jbnd = jupbn-1
      ibeg = nrmax+1
      if(ibeg.gt.jbnd) go to 50
      do 40 i=ibeg,jbnd
        isucc = iord(i)
! ***jump out of do-loop
        if(errmax.ge.elist(isucc)) go to 60
        iord(i-1) = isucc
   40 continue
   50 iord(jbnd) = maxerr
      iord(jupbn) = last
      go to 90
!
! insert errmin by traversing the list bottom-up.
!
   60 iord(i-1) = maxerr
      k = jbnd
      do 70 j=i,jbnd
        isucc = iord(k)
! ***jump out of do-loop
        if(errmin.lt.elist(isucc)) go to 80
        iord(k+1) = isucc
        k = k-1
   70 continue
      iord(i) = last
      go to 90
   80 iord(k+1) = last
!
! set maxerr and ermax.
!
   90 maxerr = iord(nrmax)
      ermax = elist(maxerr)
      return
      end
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_d64_2_7_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_2_7), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          type(Dual64_2_7), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         type(Dual64_2_7), intent(out):: ret
         type(Dual64_2_7), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         type(Dual64_2_7):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , args, ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_d64_2_7_args
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_d64_2_7_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_2_7), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          type(Dual64_2_7), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         type(Dual64_2_7), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         type(Dual64_2_7):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , args, atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_d64_2_7_args
      pure subroutine dqagse_d64_2_7_args(f, a, b , args, epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_2_7), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
          type(Dual64_2_7), intent(in):: args(:)
      type(Dual64_2_7), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      type(Dual64_2_7), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      type(Dual64_2_7):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , args, result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , args, area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , args, area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqk21_d64_2_7_args(f, a, b , args, result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_2_7), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
       type(Dual64_2_7), intent(in):: args(:)
      type(Dual64_2_7), intent(out):: result, abserr, resabs, resasc
      type(Dual64_2_7):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr , args)
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_d64_2_7(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_2_7), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_2_7), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         type(Dual64_2_7), intent(out):: ret
         type(Dual64_2_7), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         type(Dual64_2_7):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_d64_2_7
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_d64_2_7(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_2_7), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_2_7), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         type(Dual64_2_7), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         type(Dual64_2_7):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_d64_2_7
      pure subroutine dqagse_d64_2_7(f, a, b , epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_2_7), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
         ! type(Dual64_2_7), intent(in):: args(:)
      type(Dual64_2_7), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      type(Dual64_2_7), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      type(Dual64_2_7):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqelg_d64_2_7(n, epstab, result, abserr, res3la, nres)
!***begin prologue dqelg
!***refer to dqagie,dqagoe,dqagpe,dqagse
!***routines called
!***revision date 830518 (yymmdd)
!***keywords epsilon algorithm, convergence acceleration,
! extrapolation
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math & progr. div. - k.u.leuven
!***purpose the routine determines the limit of a given sequence of
! approximations, by means of the epsilon algorithm of
! p.wynn. an estimate of the absolute error is also given.
! the condensed epsilon table is computed. only those
! elements needed for the computation of the next diagonal
! are preserved.
!***description
!
! epsilon algorithm
! standard fortran subroutine
! double precision version
!
! parameters
! n - integer
! epstab(n) contains the new element in the
! first column of the epsilon table.
!
! epstab - double precision
! vector of dimension 52 containing the elements
! of the two lower diagonals of the triangular
! epsilon table. the elements are numbered
! starting at the right-hand corner of the
! triangle.
!
! result - double precision
! resulting approximation to the integral
!
! abserr - double precision
! estimate of the absolute error computed from
! result and the 3 previous results
!
! res3la - double precision
! vector of dimension 3 containing the last 3
! results
!
! nres - integer
! number of calls to the routine
! (should be zero at first call)
!
!***end prologue dqelg
!
      Integer, intent(inout):: n
      type(Dual64_2_7), intent(inout):: epstab(52), res3la(3)
      type(Dual64_2_7), intent(out):: result, abserr
      Integer, intent(inout):: nres
      type(Dual64_2_7):: res, e0, e1, e2, e3, e1abs, epsinf, error, delta1, delta2, delta3, err1, err2, err3, tol1, tol2, tol3, ss
      Real(kind=real64):: epmach, oflow
      integer i, ib, ib2, ie, indx, k1, k2, k3, limexp, newelm, num
!
! list of major variables
! -----------------------
!
! e0 - the 4 elements on which the computation of a new
! e1 element in the epsilon table is based
! e2
! e3 e0
! e3 e1 new
! e2
! newelm - number of elements to be computed in the new
! diagonal
! error - error = abs(e1-e0)+abs(e2-e1)+abs(new-e2)
! result - the element in the new diagonal with least value
! of error
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! oflow is the largest positive magnitude.
! limexp is the maximum number of elements the epsilon
! table can contain. if this number is reached, the upper
! diagonal of the epsilon table is deleted.
!
!***first executable statement dqelg
      epmach = epsilon(epmach)
      oflow = huge(oflow)
      nres = nres+1
      abserr = oflow
      result = epstab(n)
      if(n.lt.3) go to 100
      limexp = 50
      epstab(n+2) = epstab(n)
      newelm = (n-1)/2
      epstab(n) = oflow
      num = n
      k1 = n
      do 40 i = 1,newelm
        k2 = k1-1
        k3 = k1-2
        res = epstab(k1+2)
        e0 = epstab(k3)
        e1 = epstab(k2)
        e2 = res
        e1abs = abs(e1)
        delta2 = e2-e1
        err2 = abs(delta2)
        tol2 = max(abs(e2),e1abs)*epmach
        delta3 = e1-e0
        err3 = abs(delta3)
        tol3 = max(e1abs, abs(e0))*epmach
        if(err2.gt.tol2.or.err3.gt.tol3) go to 10
!
! if e0, e1 and e2 are equal to within machine
! accuracy, convergence is assumed.
! result = e2
! abserr = abs(e1-e0)+abs(e2-e1)
!
        result = res
        abserr = err2+err3
! ***jump out of do-loop
        go to 100
   10 e3 = epstab(k1)
        epstab(k1) = e1
        delta1 = e1-e3
        err1 = abs(delta1)
        tol1 = max(e1abs, abs(e3))*epmach
!
! if two elements are very close to each other, omit
! a part of the table by adjusting the value of n
!
        if(err1.le.tol1.or.err2.le.tol2.or.err3.le.tol3) go to 20
        ss = 0.1d+01/delta1+0.1d+01/delta2-0.1d+01/delta3
        epsinf = abs(ss*e1)
!
! test to detect irregular behaviour in the table, and
! eventually omit a part of the table adjusting the value
! of n.
!
        if(epsinf.gt.0.1d-03) go to 30
   20 n = i+i-1
! ***jump out of do-loop
        go to 50
!
! compute a new element and eventually adjust
! the value of result.
!
   30 res = e1+0.1d+01/ss
        epstab(k1) = res
        k1 = k1-2
        error = err2 + abs(res - e2) + err3
        if(error.gt.abserr) go to 40
        abserr = error
        result = res
   40 continue
!
! shift the table.
!
   50 if(n.eq.limexp) n = 2*(limexp/2)-1
      ib = 1
      if((num/2)*2.eq.num) ib = 2
      ie = newelm+1
      do 60 i=1,ie
        ib2 = ib+2
        epstab(ib) = epstab(ib2)
        ib = ib2
   60 continue
      if(num.eq.n) go to 80
      indx = num-n+1
      do 70 i = 1,n
        epstab(i)= epstab(indx)
        indx = indx+1
   70 continue
   80 if(nres.ge.4) go to 90
      res3la(nres) = result
      abserr = oflow
      go to 100
!
! compute error estimate
!
   90 abserr = abs(result - res3la(3)) + abs(result - res3la(2)) + abs(result - res3la(1))
      res3la(1) = res3la(2)
      res3la(2) = res3la(3)
      res3la(3) = result
  100 abserr = max(abserr, 0.5d+01*epmach*abs(result))
      return
      end
      pure subroutine dqk21_d64_2_7(f, a, b , result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_7):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_2_7), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
      ! type(Dual64_2_7), intent(in):: args(:)
      type(Dual64_2_7), intent(out):: result, abserr, resabs, resasc
      type(Dual64_2_7):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr )
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
      pure subroutine dqpsrt_d64_2_7(limit, last, maxerr, ermax, elist, iord, nrmax)
!***begin prologue dqpsrt
!***refer to dqage,dqagie,dqagpe,dqawse
!***routines called (none)
!***revision date 810101 (yymmdd)
!***keywords sequential sorting
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose this routine maintains the descending ordering in the
! list of the local error estimated resulting from the
! interval subdivision process. at each call two error
! estimates are inserted using the sequential search
! method, top-down for the largest error estimate and
! bottom-up for the smallest error estimate.
!***description
!
! ordering routine
! standard fortran subroutine
! double precision version
!
! parameters (meaning at output)
! limit - integer
! maximum number of error estimates the list
! can contain
!
! last - integer
! number of error estimates currently in the list
!
! maxerr - integer
! maxerr points to the nrmax-th largest error
! estimate currently in the list
!
! ermax - double precision
! nrmax-th largest error estimate
! ermax = elist(maxerr)
!
! elist - double precision
! vector of dimension last containing
! the error estimates
!
! iord - integer
! vector of dimension last, the first k elements
! of which contain pointers to the error
! estimates, such that
! elist(iord(1)),..., elist(iord(k))
! form a decreasing sequence, with
! k = last if last.le.(limit/2+2), and
! k = limit+1-last otherwise
!
! nrmax - integer
! maxerr = iord(nrmax)
!
!***end prologue dqpsrt
!
      Integer, intent(in):: limit, last
      Integer, intent(inout):: maxerr
      Integer, intent(inout):: nrmax
      type(Dual64_2_7), intent(in):: elist(last)
      Integer, intent(inout):: iord(last)
      type(Dual64_2_7), intent(out):: ermax
      type(Dual64_2_7):: errmin, errmax
      integer i, ibeg, ido, isucc, j, jbnd, jupbn, k
!
! check whether the list contains more than
! two error estimates.
!
!***first executable statement dqpsrt
      if(last.gt.2) go to 10
      iord(1) = 1
      iord(2) = 2
      go to 90
!
! this part of the routine is only executed if, due to a
! difficult integrand, subdivision increased the error
! estimate. in the normal case the insert procedure should
! start after the nrmax-th largest error estimate.
!
   10 errmax = elist(maxerr)
      if(nrmax.eq.1) go to 30
      ido = nrmax-1
      do 20 i = 1,ido
        isucc = iord(nrmax-1)
! ***jump out of do-loop
        if(errmax.le.elist(isucc)) go to 30
        iord(nrmax) = isucc
        nrmax = nrmax-1
   20 continue
!
! compute the number of elements in the list to be maintained
! in descending order. this number depends on the number of
! subdivisions still allowed.
!
   30 jupbn = last
      if(last.gt.(limit/2+2)) jupbn = limit+3-last
      errmin = elist(last)
!
! insert errmax by traversing the list top-down,
! starting comparison from the element elist(iord(nrmax+1)).
!
      jbnd = jupbn-1
      ibeg = nrmax+1
      if(ibeg.gt.jbnd) go to 50
      do 40 i=ibeg,jbnd
        isucc = iord(i)
! ***jump out of do-loop
        if(errmax.ge.elist(isucc)) go to 60
        iord(i-1) = isucc
   40 continue
   50 iord(jbnd) = maxerr
      iord(jupbn) = last
      go to 90
!
! insert errmin by traversing the list bottom-up.
!
   60 iord(i-1) = maxerr
      k = jbnd
      do 70 j=i,jbnd
        isucc = iord(k)
! ***jump out of do-loop
        if(errmin.lt.elist(isucc)) go to 80
        iord(k+1) = isucc
        k = k-1
   70 continue
      iord(i) = last
      go to 90
   80 iord(k+1) = last
!
! set maxerr and ermax.
!
   90 maxerr = iord(nrmax)
      ermax = elist(maxerr)
      return
      end
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_d64_2_8_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_8):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_2_8), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          type(Dual64_2_8), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         type(Dual64_2_8), intent(out):: ret
         type(Dual64_2_8), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         type(Dual64_2_8):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , args, ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_d64_2_8_args
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_d64_2_8_args(f, a, b , args, ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_8):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_2_8), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
          type(Dual64_2_8), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         type(Dual64_2_8), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         type(Dual64_2_8):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , args, atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_d64_2_8_args
      pure subroutine dqagse_d64_2_8_args(f, a, b , args, epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_8):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_2_8), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
          type(Dual64_2_8), intent(in):: args(:)
      type(Dual64_2_8), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      type(Dual64_2_8), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      type(Dual64_2_8):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , args, result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , args, area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , args, area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqk21_d64_2_8_args(f, a, b , args, result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x , args) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_8):: ret
         Real(kind=real64), intent(in):: x
          type(Dual64_2_8), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
       type(Dual64_2_8), intent(in):: args(:)
      type(Dual64_2_8), intent(out):: result, abserr, resabs, resasc
      type(Dual64_2_8):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr , args)
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc , args)
        fval2 = f(centr + absc , args)
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & prog. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!
! atol - absolute accuracy requesteddouble precision
! rtol - relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! on return
! ret - approximation to the integral
!
! abserr - estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! n_eval - integer
! number of integrand evaluations
!
! err - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! err = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account. however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table. it is presumed that
! the requested tolerance cannot be
! achieved, and that the returned result is
! the best which can be obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! (epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28)
! or limit.lt.1 or lenw.lt.limit*4.
! result, abserr, neval, last are set to
! zero.except when limit or lenw is invalid,
! iwork(1), work(limit*2+1) and
! work(limit*3+1) are set to zero, work(1)
! is set to a and work(limit+1) to b.
!
! dimensioning parameters
! limit - integer
! dimensioning parameter for iwork
! limit determines the maximum number of subintervals
! in the partition of the given integration interval
! (a,b), limit.ge.1.
! if limit.lt.1, the routine will end with ier = 6.
!
! last - integer
! on return, last equals the number of subintervals
! produced in the subdivision process, detemines the
! number of significant elements actually in the work
! arrays.
!
! work arrays
! iwork - integer
! vector of dimension at least limit, the first k
! elements of which contain pointers
! to the error estimates over the subintervals
! such that work(limit*3+iwork(1)),... ,
! work(limit*3+iwork(k)) form a decreasing
! sequence, with k = last if last.le.(limit/2+2),
! and k = limit+1-last otherwise
      pure subroutine qags_d64_2_8(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
         ! todo: optional workspace arguments
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_8):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_2_8), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_2_8), intent(in):: args(:)
         Real(kind=real64), intent(in), optional:: atol, rtol
         Integer, intent(in), optional:: limit
         type(Dual64_2_8), intent(out):: ret
         type(Dual64_2_8), intent(out), optional:: abs_err
         Integer, intent(out), optional:: n_eval, last, err
         Real(kind=real64):: atol_, rtol_
         Integer:: limit_
         type(Dual64_2_8):: abs_err_
         Integer:: n_eval_, last_, err_
         ! based on scipy/integrate/quadpack.py
         atol_ = sqrt(epsilon(atol_))
         rtol_ = sqrt(epsilon(atol_))
         limit_ = 50
         if(present(atol)) atol_ = atol
         if(present(rtol)) rtol_ = rtol
         if(present(limit)) limit_ = limit
         call qags_impl(f, a, b , ret, abs_err_, atol_, rtol_, limit_, n_eval_, last_, err_)
         if(present(abs_err)) abs_err = abs_err_
         if(present(n_eval)) n_eval = n_eval_
         if(present(last)) last = last_
         if(present(err)) err = err_
      end subroutine qags_d64_2_8
      ! I made this wrapper routine to make working arrays automatic rather than allocated.
      pure subroutine qags_impl_d64_2_8(f, a, b , ret, abs_err, atol, rtol, limit, n_eval, last, err)
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_8):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_2_8), intent(in):: args(:)
      end function f
   end interface
         Real(kind=real64), intent(in):: a, b
         ! type(Dual64_2_8), intent(in):: args(:)
         Real(kind=real64), intent(in):: atol, rtol
         Integer, intent(in):: limit
         type(Dual64_2_8), intent(out):: ret, abs_err
         Integer, intent(out):: n_eval, last, err
         Real(kind=real64):: alist(limit), blist(limit)
         type(Dual64_2_8):: rlist(limit), elist(limit)
         Integer:: iwork(limit)
         call dqagse(f, a, b , atol, rtol, limit, ret, abs_err, n_eval, err, alist, blist, rlist, elist, iwork, last)
      end subroutine qags_impl_d64_2_8
      pure subroutine dqagse_d64_2_8(f, a, b , epsabs, epsrel, limit, result, abserr, neval, ier, alist, blist, rlist, elist, iord, last)
!***begin prologue dqagse
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a1
!***keywords automatic integrator, general-purpose,
! (end point) singularities, extrapolation,
! globally adaptive
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose the routine calculates an approximation result to a given
! definite integral i = integral of f over (a,b),
! hopefully satisfying following claim for accuracy
! abs(i-result).le.max(epsabs,epsrel*abs(i)).
!***description
!
! computation of a definite integral
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! epsabs - double precision
! absolute accuracy requested
! epsrel - double precision
! relative accuracy requested
! if epsabs.le.0
! and epsrel.lt.max(50*rel.mach.acc.,0.5d-28),
! the routine will end with ier = 6.
!
! limit - integer
! gives an upperbound on the number of subintervals
! in the partition of (a,b)
!
! on return
! result - double precision
! approximation to the integral
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should equal or exceed abs(i-result)
!
! neval - integer
! number of integrand evaluations
!
! ier - integer
! ier = 0 normal and reliable termination of the
! routine. it is assumed that the requested
! accuracy has been achieved.
! ier.gt.0 abnormal termination of the routine
! the estimates for integral and error are
! less reliable. it is assumed that the
! requested accuracy has not been achieved.
! error messages
! = 1 maximum number of subdivisions allowed
! has been achieved. one can allow more sub-
! divisions by increasing the value of limit
! (and taking the according dimension
! adjustments into account). however, if
! this yields no improvement it is advised
! to analyze the integrand in order to
! determine the integration difficulties. if
! the position of a local difficulty can be
! determined (e.g. singularity,
! discontinuity within the interval) one
! will probably gain from splitting up the
! interval at this point and calling the
! integrator on the subranges. if possible,
! an appropriate special-purpose integrator
! should be used, which is designed for
! handling the type of difficulty involved.
! = 2 the occurrence of roundoff error is detec-
! ted, which prevents the requested
! tolerance from being achieved.
! the error may be under-estimated.
! = 3 extremely bad integrand behaviour
! occurs at some points of the integration
! interval.
! = 4 the algorithm does not converge.
! roundoff error is detected in the
! extrapolation table.
! it is presumed that the requested
! tolerance cannot be achieved, and that the
! returned result is the best which can be
! obtained.
! = 5 the integral is probably divergent, or
! slowly convergent. it must be noted that
! divergence can occur with any other value
! of ier.
! = 6 the input is invalid, because
! epsabs.le.0 and
! epsrel.lt.max(50*rel.mach.acc.,0.5d-28).
! result, abserr, neval, last, rlist(1),
! iord(1) and elist(1) are set to zero.
! alist(1) and blist(1) are set to a and b
! respectively.
!
! alist - double precision
! vector of dimension at least limit, the first
! last elements of which are the left end points
! of the subintervals in the partition of the
! given integration range (a,b)
!
! blist - double precision
! vector of dimension at least limit, the first
! last elements of which are the right end points
! of the subintervals in the partition of the given
! integration range (a,b)
!
! rlist - double precision
! vector of dimension at least limit, the first
! last elements of which are the integral
! approximations on the subintervals
!
! elist - double precision
! vector of dimension at least limit, the first
! last elements of which are the moduli of the
! absolute error estimates on the subintervals
!
! iord - integer
! vector of dimension at least limit, the first k
! elements of which are pointers to the
! error estimates over the subintervals,
! such that elist(iord(1)), ..., elist(iord(k))
! form a decreasing sequence, with k = last
! if last.le.(limit/2+2), and k = limit+1-last
! otherwise
!
! last - integer
! number of subintervals actually produced in the
! subdivision process
!
!***references (none)
!***routines called dqelg,dqk21,dqpsrt
!***end prologue dqagse
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_8):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_2_8), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), intent(in):: a, b, epsabs, epsrel
         ! type(Dual64_2_8), intent(in):: args(:)
      type(Dual64_2_8), intent(out):: result, abserr
      Integer, intent(in):: limit
      Integer, intent(out):: last, neval, ier
      Real(kind=real64), intent(inout):: alist(limit), blist(limit)
      type(Dual64_2_8), intent(inout):: rlist(limit), elist(limit)
      Integer, intent(inout):: iord(limit)
      type(Dual64_2_8):: abseps, area, area1, area12, area2, correc, dres, erlarg, erlast, errbnd, errmax, error1, error2, erro12, errsum, ertest, defabs, defab1, defab2, resabs, res3la(3), reseps, rlist2(52)
      Real(kind=real64):: a1, a2, b1, b2, epmach, oflow, small, uflow
      integer id, ierro, iroff1, iroff2, iroff3, jupbnd, k, ksgn, ktmin, maxerr, nres, nrmax, numrl2
      logical extrap,noext
!
!
! the dimension of rlist2 is determined by the value of
! limexp in subroutine dqelg (rlist2 should be of dimension
! (limexp+2) at least).
!
! list of major variables
! -----------------------
!
! alist - list of left end points of all subintervals
! considered up to now
! blist - list of right end points of all subintervals
! considered up to now
! rlist(i) - approximation to the integral over
! (alist(i),blist(i))
! rlist2 - array of dimension at least limexp+2 containing
! the part of the epsilon table which is still
! needed for further computations
! elist(i) - error estimate applying to rlist(i)
! maxerr - pointer to the interval with largest error
! estimate
! errmax - elist(maxerr)
! erlast - error on the interval currently subdivided
! (before that subdivision has taken place)
! area - sum of the integrals over the subintervals
! errsum - sum of the errors over the subintervals
! errbnd - requested accuracy max(epsabs,epsrel*
! abs(result))
! *****1 - variable for the left interval
! *****2 - variable for the right interval
! last - index for subdivision
! nres - number of calls to the extrapolation routine
! numrl2 - number of elements currently in rlist2. if an
! appropriate approximation to the compounded
! integral has been obtained it is put in
! rlist2(numrl2) after numrl2 has been increased
! by one.
! small - length of the smallest interval considered up
! to now, multiplied by 1.5
! erlarg - sum of the errors over the intervals larger
! than the smallest interval considered up to now
! extrap - logical variable denoting that the routine is
! attempting to perform extrapolation i.e. before
! subdividing the smallest interval we try to
! decrease the value of erlarg.
! noext - logical variable denoting that extrapolation
! is no longer allowed (true value)
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
! oflow is the largest positive magnitude.
!
!***first executable statement dqagse
      epmach = epsilon(epmach)
!
! test on validity of parameters
! ------------------------------
      ier = 0
      neval = 0
      last = 0
      result = 0.0d+00
      abserr = 0.0d+00
      alist(1) = a
      blist(1) = b
      rlist(1) = 0.0d+00
      elist(1) = 0.0d+00
      if(epsabs.le.0.0d+00.and.epsrel.lt.max(0.5d+02*epmach, 0.5d-28)) ier = 6
      if(ier.eq.6) go to 999
!
! first approximation to the integral
! -----------------------------------
!
      uflow = tiny(uflow)
      oflow = huge(oflow)
      ierro = 0
      call dqk21(f, a, b , result, abserr, defabs, resabs)
!
! test on accuracy.
!
      dres = abs(result)
      errbnd = max(epsabs,epsrel*dres)
      last = 1
      rlist(1) = result
      elist(1) = abserr
      iord(1) = 1
      if(abserr.le.1.0d+02*epmach*defabs.and.abserr.gt.errbnd) ier = 2
      if(limit.eq.1) ier = 1
      if(ier.ne.0.or.(abserr.le.errbnd.and.abserr.ne.resabs).or. abserr.eq.0.0d+00) go to 140
!
! initialization
! --------------
!
      rlist2(1) = result
      errmax = abserr
      maxerr = 1
      area = result
      errsum = abserr
      abserr = oflow
      nrmax = 1
      nres = 0
      numrl2 = 2
      ktmin = 0
      extrap = .false.
      noext = .false.
      iroff1 = 0
      iroff2 = 0
      iroff3 = 0
      ksgn = -1
      if(dres.ge.(0.1d+01-0.5d+02*epmach)*defabs) ksgn = 1
!
! main do-loop
! ------------
!
      do 90 last = 2,limit
!
! bisect the subinterval with the nrmax-th largest error
! estimate.
!
        a1 = alist(maxerr)
        b1 = 0.5d+00*(alist(maxerr)+blist(maxerr))
        a2 = b1
        b2 = blist(maxerr)
        erlast = errmax
        call dqk21(f, a1, b1 , area1, error1, resabs, defab1)
        call dqk21(f, a2, b2 , area2, error2, resabs, defab2)
!
! improve previous approximations to integral
! and error and test for accuracy.
!
        area12 = area1+area2
        erro12 = error1+error2
        errsum = errsum+erro12-errmax
        area = area+area12-rlist(maxerr)
        if(defab1.eq.error1.or.defab2.eq.error2) go to 15
        if(abs(rlist(maxerr)-area12).gt.0.1d-04*abs(area12) .or.erro12.lt.0.99d+00*errmax) go to 10
        if(extrap) iroff2 = iroff2+1
        if(.not.extrap) iroff1 = iroff1+1
   10 if(last.gt.10.and.erro12.gt.errmax) iroff3 = iroff3+1
   15 rlist(maxerr) = area1
        rlist(last) = area2
        errbnd = max(epsabs,epsrel*abs(area))
!
! test for roundoff error and eventually set error flag.
!
        if(iroff1+iroff2.ge.10.or.iroff3.ge.20) ier = 2
        if(iroff2.ge.5) ierro = 3
!
! set error flag in the case that the number of subintervals
! equals limit.
!
        if(last.eq.limit) ier = 1
!
! set error flag in the case of bad integrand behaviour
! at a point of the integration range.
!
        if(max(abs(a1), abs(b2)).le.(0.1d+01+0.1d+03*epmach)*(abs(a2)+0.1d+04*uflow)) ier = 4
!
! append the newly-created intervals to the list.
!
        if(error2.gt.error1) go to 20
        alist(last) = a2
        blist(maxerr) = b1
        blist(last) = b2
        elist(maxerr) = error1
        elist(last) = error2
        go to 30
   20 alist(maxerr) = a2
        alist(last) = a1
        blist(last) = b1
        rlist(maxerr) = area2
        rlist(last) = area1
        elist(maxerr) = error2
        elist(last) = error1
!
! call subroutine dqpsrt to maintain the descending ordering
! in the list of error estimates and select the subinterval
! with nrmax-th largest error estimate (to be bisected next).
!
   30 call dqpsrt(limit,last,maxerr,errmax,elist,iord,nrmax)
! ***jump out of do-loop
        if(errsum.le.errbnd) go to 115
! ***jump out of do-loop
        if(ier.ne.0) go to 100
        if(last.eq.2) go to 80
        if(noext) go to 90
        erlarg = erlarg-erlast
        if(abs(b1 - a1).gt.small) erlarg = erlarg + erro12
        if(extrap) go to 40
!
! test whether the interval to be bisected next is the
! smallest interval.
!
        if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
        extrap = .true.
        nrmax = 2
   40 if(ierro.eq.3.or.erlarg.le.ertest) go to 60
!
! the smallest interval has the largest error.
! before bisecting decrease the sum of the errors over the
! larger intervals (erlarg) and perform extrapolation.
!
        id = nrmax
        jupbnd = last
        if(last.gt.(2+limit/2)) jupbnd = limit+3-last
        do 50 k = id,jupbnd
          maxerr = iord(nrmax)
          errmax = elist(maxerr)
! ***jump out of do-loop
          if(abs(blist(maxerr)-alist(maxerr)).gt.small) go to 90
          nrmax = nrmax+1
   50 continue
!
! perform extrapolation.
!
   60 numrl2 = numrl2+1
        rlist2(numrl2) = area
        call dqelg(numrl2,rlist2,reseps,abseps,res3la,nres)
        ktmin = ktmin+1
        if(ktmin.gt.5.and.abserr.lt.0.1d-02*errsum) ier = 5
        if(abseps.ge.abserr) go to 70
        ktmin = 0
        abserr = abseps
        result = reseps
        correc = erlarg
        ertest = max(epsabs,epsrel*abs(reseps))
! ***jump out of do-loop
        if(abserr.le.ertest) go to 100
!
! prepare bisection of the smallest interval.
!
   70 if(numrl2.eq.1) noext = .true.
        if(ier.eq.5) go to 100
        maxerr = iord(1)
        errmax = elist(maxerr)
        nrmax = 1
        extrap = .false.
        small = small*0.5d+00
        erlarg = errsum
        go to 90
   80 small = abs(b-a)*0.375d+00
        erlarg = errsum
        ertest = errbnd
        rlist2(2) = area
   90 continue
!
! set final result and error estimate.
! ------------------------------------
!
  100 if(abserr.eq.oflow) go to 115
      if(ier+ierro.eq.0) go to 110
      if(ierro.eq.3) abserr = abserr+correc
      if(ier.eq.0) ier = 3
      if(result.ne.0.0d+00.and.area.ne.0.0d+00) go to 105
      if(abserr.gt.errsum) go to 115
      if(area.eq.0.0d+00) go to 130
      go to 110
  105 if(abserr/abs(result).gt.errsum/abs(area)) go to 115
!
! test on divergence.
!
  110 if(ksgn.eq.(-1).and.max(abs(result),abs(area)).le. defabs*0.1d-01) go to 130
      if(0.1d-01.gt.(result/area).or.(result/area).gt.0.1d+03 .or.errsum.gt.abs(area)) ier = 6
      go to 130
!
! compute global integral sum.
!
  115 result = 0.0d+00
      do 120 k = 1,last
         result = result+rlist(k)
  120 continue
      abserr = errsum
  130 if(ier.gt.2) ier = ier-1
  140 neval = 42*last-21
  999 return
      end
      pure subroutine dqelg_d64_2_8(n, epstab, result, abserr, res3la, nres)
!***begin prologue dqelg
!***refer to dqagie,dqagoe,dqagpe,dqagse
!***routines called
!***revision date 830518 (yymmdd)
!***keywords epsilon algorithm, convergence acceleration,
! extrapolation
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math & progr. div. - k.u.leuven
!***purpose the routine determines the limit of a given sequence of
! approximations, by means of the epsilon algorithm of
! p.wynn. an estimate of the absolute error is also given.
! the condensed epsilon table is computed. only those
! elements needed for the computation of the next diagonal
! are preserved.
!***description
!
! epsilon algorithm
! standard fortran subroutine
! double precision version
!
! parameters
! n - integer
! epstab(n) contains the new element in the
! first column of the epsilon table.
!
! epstab - double precision
! vector of dimension 52 containing the elements
! of the two lower diagonals of the triangular
! epsilon table. the elements are numbered
! starting at the right-hand corner of the
! triangle.
!
! result - double precision
! resulting approximation to the integral
!
! abserr - double precision
! estimate of the absolute error computed from
! result and the 3 previous results
!
! res3la - double precision
! vector of dimension 3 containing the last 3
! results
!
! nres - integer
! number of calls to the routine
! (should be zero at first call)
!
!***end prologue dqelg
!
      Integer, intent(inout):: n
      type(Dual64_2_8), intent(inout):: epstab(52), res3la(3)
      type(Dual64_2_8), intent(out):: result, abserr
      Integer, intent(inout):: nres
      type(Dual64_2_8):: res, e0, e1, e2, e3, e1abs, epsinf, error, delta1, delta2, delta3, err1, err2, err3, tol1, tol2, tol3, ss
      Real(kind=real64):: epmach, oflow
      integer i, ib, ib2, ie, indx, k1, k2, k3, limexp, newelm, num
!
! list of major variables
! -----------------------
!
! e0 - the 4 elements on which the computation of a new
! e1 element in the epsilon table is based
! e2
! e3 e0
! e3 e1 new
! e2
! newelm - number of elements to be computed in the new
! diagonal
! error - error = abs(e1-e0)+abs(e2-e1)+abs(new-e2)
! result - the element in the new diagonal with least value
! of error
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! oflow is the largest positive magnitude.
! limexp is the maximum number of elements the epsilon
! table can contain. if this number is reached, the upper
! diagonal of the epsilon table is deleted.
!
!***first executable statement dqelg
      epmach = epsilon(epmach)
      oflow = huge(oflow)
      nres = nres+1
      abserr = oflow
      result = epstab(n)
      if(n.lt.3) go to 100
      limexp = 50
      epstab(n+2) = epstab(n)
      newelm = (n-1)/2
      epstab(n) = oflow
      num = n
      k1 = n
      do 40 i = 1,newelm
        k2 = k1-1
        k3 = k1-2
        res = epstab(k1+2)
        e0 = epstab(k3)
        e1 = epstab(k2)
        e2 = res
        e1abs = abs(e1)
        delta2 = e2-e1
        err2 = abs(delta2)
        tol2 = max(abs(e2),e1abs)*epmach
        delta3 = e1-e0
        err3 = abs(delta3)
        tol3 = max(e1abs, abs(e0))*epmach
        if(err2.gt.tol2.or.err3.gt.tol3) go to 10
!
! if e0, e1 and e2 are equal to within machine
! accuracy, convergence is assumed.
! result = e2
! abserr = abs(e1-e0)+abs(e2-e1)
!
        result = res
        abserr = err2+err3
! ***jump out of do-loop
        go to 100
   10 e3 = epstab(k1)
        epstab(k1) = e1
        delta1 = e1-e3
        err1 = abs(delta1)
        tol1 = max(e1abs, abs(e3))*epmach
!
! if two elements are very close to each other, omit
! a part of the table by adjusting the value of n
!
        if(err1.le.tol1.or.err2.le.tol2.or.err3.le.tol3) go to 20
        ss = 0.1d+01/delta1+0.1d+01/delta2-0.1d+01/delta3
        epsinf = abs(ss*e1)
!
! test to detect irregular behaviour in the table, and
! eventually omit a part of the table adjusting the value
! of n.
!
        if(epsinf.gt.0.1d-03) go to 30
   20 n = i+i-1
! ***jump out of do-loop
        go to 50
!
! compute a new element and eventually adjust
! the value of result.
!
   30 res = e1+0.1d+01/ss
        epstab(k1) = res
        k1 = k1-2
        error = err2 + abs(res - e2) + err3
        if(error.gt.abserr) go to 40
        abserr = error
        result = res
   40 continue
!
! shift the table.
!
   50 if(n.eq.limexp) n = 2*(limexp/2)-1
      ib = 1
      if((num/2)*2.eq.num) ib = 2
      ie = newelm+1
      do 60 i=1,ie
        ib2 = ib+2
        epstab(ib) = epstab(ib2)
        ib = ib2
   60 continue
      if(num.eq.n) go to 80
      indx = num-n+1
      do 70 i = 1,n
        epstab(i)= epstab(indx)
        indx = indx+1
   70 continue
   80 if(nres.ge.4) go to 90
      res3la(nres) = result
      abserr = oflow
      go to 100
!
! compute error estimate
!
   90 abserr = abs(result - res3la(3)) + abs(result - res3la(2)) + abs(result - res3la(1))
      res3la(1) = res3la(2)
      res3la(2) = res3la(3)
      res3la(3) = result
  100 abserr = max(abserr, 0.5d+01*epmach*abs(result))
      return
      end
      pure subroutine dqk21_d64_2_8(f, a, b , result, abserr, resabs, resasc)
!***begin prologue dqk21
!***date written 800101 (yymmdd)
!***revision date 830518 (yymmdd)
!***category no. h2a1a2
!***keywords 21-point gauss-kronrod rules
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose to compute i = integral of f over (a,b), with error
! estimate
! j = integral of abs(f) over (a,b)
!***description
!
! integration rules
! standard fortran subroutine
! double precision version
!
! parameters
! on entry
! f - double precision
! function subprogram defining the integrand
! function f(x). the actual name for f needs to be
! declared e x t e r n a l in the driver program.
!
! a - double precision
! lower limit of integration
!
! b - double precision
! upper limit of integration
!
! on return
! result - double precision
! approximation to the integral i
! result is computed by applying the 21-point
! kronrod rule (resk) obtained by optimal addition
! of abscissae to the 10-point gauss rule (resg).
!
! abserr - double precision
! estimate of the modulus of the absolute error,
! which should not exceed abs(i-result)
!
! resabs - double precision
! approximation to the integral j
!
! resasc - double precision
! approximation to the integral of abs(f-i/(b-a))
! over (a,b)
!
!***references (none)
!***routines called
!***end prologue dqk21
!
   interface
      pure function f(x ) result(ret)
         use, intrinsic:: iso_fortran_env, only: real64
         use, non_intrinsic:: ad_lib
         type(Dual64_2_8):: ret
         Real(kind=real64), intent(in):: x
         ! type(Dual64_2_8), intent(in):: args(:)
      end function f
   end interface
      Real(kind=real64), parameter:: wg(5) = [ &
         0.066671344308688137593568809893332d0, &
         0.149451349150580593145776339657697d0, &
         0.219086362515982043995534934228163d0, &
         0.269266719309996355091226921569469d0, &
         0.295524224714752870173892994651338d0]
      Real(kind=real64), parameter:: xgk(11) = [ &
         0.995657163025808080735527280689003d0, &
         0.973906528517171720077964012084452d0, &
         0.930157491355708226001207180059508d0, &
         0.865063366688984510732096688423493d0, &
         0.780817726586416897063717578345042d0, &
         0.679409568299024406234327365114874d0, &
         0.562757134668604683339000099272694d0, &
         0.433395394129247190799265943165784d0, &
         0.294392862701460198131126603103866d0, &
         0.148874338981631210884826001129720d0, &
         0.000000000000000000000000000000000d0]
      Real(kind=real64), parameter:: wgk(11) = [ &
         0.011694638867371874278064396062192d0, &
         0.032558162307964727478818972459390d0, &
         0.054755896574351996031381300244580d0, &
         0.075039674810919952767043140916190d0, &
         0.093125454583697605535065465083366d0, &
         0.109387158802297641899210590325805d0, &
         0.123491976262065851077958109831074d0, &
         0.134709217311473325928054001771707d0, &
         0.142775938577060080797094273138717d0, &
         0.147739104901338491374841515972068d0, &
         0.149445554002916905664936468389821d0]
      Real(kind=real64), intent(in):: a, b
      ! type(Dual64_2_8), intent(in):: args(:)
      type(Dual64_2_8), intent(out):: result, abserr, resabs, resasc
      type(Dual64_2_8):: dhlgth, fc, fsum, fv1(10), fv2(10), fval1, fval2, resg, resk, reskh
      Real(kind=real64):: absc, centr, epmach, hlgth, uflow
      integer j,jtw,jtwm1
!
! the abscissae and weights are given for the interval (-1,1).
! because of symmetry only the positive abscissae and their
! corresponding weights are given.
!
! xgk - abscissae of the 21-point kronrod rule
! xgk(2), xgk(4), ... abscissae of the 10-point
! gauss rule
! xgk(1), xgk(3), ... abscissae which are optimally
! added to the 10-point gauss rule
!
! wgk - weights of the 21-point kronrod rule
!
! wg - weights of the 10-point gauss rule
!
!
! gauss quadrature weights and kronron quadrature abscissae and weights
! as evaluated with 80 decimal digit arithmetic by l. w. fullerton,
! bell labs, nov. 1981.
!
!
! list of major variables
! -----------------------
!
! centr - mid point of the interval
! hlgth - half-length of the interval
! absc - abscissa
! fval* - function value
! resg - result of the 10-point gauss formula
! resk - result of the 21-point kronrod formula
! reskh - approximation to the mean value of f over (a,b),
! i.e. to i/(b-a)
!
!
! machine dependent constants
! ---------------------------
!
! epmach is the largest relative spacing.
! uflow is the smallest positive magnitude.
!
!***first executable statement dqk21
      epmach = epsilon(epmach)
      uflow = tiny(uflow)
!
      centr = 0.5d+00*(a+b)
      hlgth = 0.5d+00*(b-a)
      dhlgth = abs(hlgth)
!
! compute the 21-point kronrod approximation to
! the integral, and estimate the absolute error.
!
      resg = 0.0d+00
      fc = f(centr )
      resk = wgk(11)*fc
      resabs = abs(resk)
      do 10 j=1,5
        jtw = 2*j
        absc = hlgth*xgk(jtw)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtw) = fval1
        fv2(jtw) = fval2
        fsum = fval1+fval2
        resg = resg+wg(j)*fsum
        resk = resk+wgk(jtw)*fsum
        resabs = resabs + wgk(jtw)*(abs(fval1) + abs(fval2))
   10 continue
      do 15 j = 1,5
        jtwm1 = 2*j-1
        absc = hlgth*xgk(jtwm1)
        fval1 = f(centr - absc )
        fval2 = f(centr + absc )
        fv1(jtwm1) = fval1
        fv2(jtwm1) = fval2
        fsum = fval1+fval2
        resk = resk+wgk(jtwm1)*fsum
        resabs = resabs + wgk(jtwm1)*(abs(fval1) + abs(fval2))
   15 continue
      reskh = resk*0.5d+00
      resasc = wgk(11)*abs(fc - reskh)
      do 20 j=1,10
        resasc = resasc+wgk(j)*(abs(fv1(j) - reskh) + abs(fv2(j) - reskh))
   20 continue
      result = resk*hlgth
      resabs = resabs*dhlgth
      resasc = resasc*dhlgth
      abserr = abs((resk - resg)*hlgth)
      if(resasc.ne.0.0d+00.and.abserr.ne.0.0d+00) abserr = resasc*min(0.1d+01, (0.2d+03*abserr/resasc)**1.5d+00)
      if(resabs.gt.uflow/(0.5d+02*epmach)) abserr = max((epmach*0.5d+02)*resabs,abserr)
      return
      end
      pure subroutine dqpsrt_d64_2_8(limit, last, maxerr, ermax, elist, iord, nrmax)
!***begin prologue dqpsrt
!***refer to dqage,dqagie,dqagpe,dqawse
!***routines called (none)
!***revision date 810101 (yymmdd)
!***keywords sequential sorting
!***author piessens,robert,appl. math. & progr. div. - k.u.leuven
! de doncker,elise,appl. math. & progr. div. - k.u.leuven
!***purpose this routine maintains the descending ordering in the
! list of the local error estimated resulting from the
! interval subdivision process. at each call two error
! estimates are inserted using the sequential search
! method, top-down for the largest error estimate and
! bottom-up for the smallest error estimate.
!***description
!
! ordering routine
! standard fortran subroutine
! double precision version
!
! parameters (meaning at output)
! limit - integer
! maximum number of error estimates the list
! can contain
!
! last - integer
! number of error estimates currently in the list
!
! maxerr - integer
! maxerr points to the nrmax-th largest error
! estimate currently in the list
!
! ermax - double precision
! nrmax-th largest error estimate
! ermax = elist(maxerr)
!
! elist - double precision
! vector of dimension last containing
! the error estimates
!
! iord - integer
! vector of dimension last, the first k elements
! of which contain pointers to the error
! estimates, such that
! elist(iord(1)),..., elist(iord(k))
! form a decreasing sequence, with
! k = last if last.le.(limit/2+2), and
! k = limit+1-last otherwise
!
! nrmax - integer
! maxerr = iord(nrmax)
!
!***end prologue dqpsrt
!
      Integer, intent(in):: limit, last
      Integer, intent(inout):: maxerr
      Integer, intent(inout):: nrmax
      type(Dual64_2_8), intent(in):: elist(last)
      Integer, intent(inout):: iord(last)
      type(Dual64_2_8), intent(out):: ermax
      type(Dual64_2_8):: errmin, errmax
      integer i, ibeg, ido, isucc, j, jbnd, jupbn, k
!
! check whether the list contains more than
! two error estimates.
!
!***first executable statement dqpsrt
      if(last.gt.2) go to 10
      iord(1) = 1
      iord(2) = 2
      go to 90
!
! this part of the routine is only executed if, due to a
! difficult integrand, subdivision increased the error
! estimate. in the normal case the insert procedure should
! start after the nrmax-th largest error estimate.
!
   10 errmax = elist(maxerr)
      if(nrmax.eq.1) go to 30
      ido = nrmax-1
      do 20 i = 1,ido
        isucc = iord(nrmax-1)
! ***jump out of do-loop
        if(errmax.le.elist(isucc)) go to 30
        iord(nrmax) = isucc
        nrmax = nrmax-1
   20 continue
!
! compute the number of elements in the list to be maintained
! in descending order. this number depends on the number of
! subdivisions still allowed.
!
   30 jupbn = last
      if(last.gt.(limit/2+2)) jupbn = limit+3-last
      errmin = elist(last)
!
! insert errmax by traversing the list top-down,
! starting comparison from the element elist(iord(nrmax+1)).
!
      jbnd = jupbn-1
      ibeg = nrmax+1
      if(ibeg.gt.jbnd) go to 50
      do 40 i=ibeg,jbnd
        isucc = iord(i)
! ***jump out of do-loop
        if(errmax.ge.elist(isucc)) go to 60
        iord(i-1) = isucc
   40 continue
   50 iord(jbnd) = maxerr
      iord(jupbn) = last
      go to 90
!
! insert errmin by traversing the list bottom-up.
!
   60 iord(i-1) = maxerr
      k = jbnd
      do 70 j=i,jbnd
        isucc = iord(k)
! ***jump out of do-loop
        if(errmin.lt.elist(isucc)) go to 80
        iord(k+1) = isucc
        k = k-1
   70 continue
      iord(i) = last
      go to 90
   80 iord(k+1) = last
!
! set maxerr and ermax.
!
   90 maxerr = iord(nrmax)
      ermax = elist(maxerr)
      return
      end
end module quadpack_lib
