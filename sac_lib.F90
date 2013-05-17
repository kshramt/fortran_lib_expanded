#ifndef UTILS_HAVE_ALREADY_LOADED
#  define UTILS_HAVE_ALREADY_LOADED
#  define USE_UTILS_H use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, OUTPUT_UNIT
#  define WHERE_AM_I __FILE__, " ", __LINE__
#  ifdef __GFORTRAN__
#    define quote(x) "x"
#  else
#    ifdef __INTEL_COMPILER
#      define quote(x) #x
#    else
#      define quote(x) #x
#    endif
#  endif
#  define WARN(message) write(ERROR_UNIT, *) "WARN: ", WHERE_AM_I, (message)
#  define RAISE(message) write(ERROR_UNIT, *) "RAISE: ", WHERE_AM_I, (message); stop 1
#  define ALL_OF(index, array, dim_) index = lbound(array, dim = dim_, kind = kind(index)), ubound(array, dim = dim_, kind = kind(index))
#  define has_val(array, val) (any((array) == (val)))
#  define is_iostat_ok(ios) (ios == 0)
#  define is_iostat_bad(ios) (.not.is_iostat_ok(ios))
#  define I (0, 1)
#  define PRINT(x) write(ERROR_UNIT, *) "INFO: ", WHERE_AM_I, (x)
#  define PRINT_VARIABLE(x) write(ERROR_UNIT, *) "INFO: ", WHERE_AM_I, quote(x), ": ", (x)

#  define WARN_IF(isBad) \
     if(isBad)then; \
       WARN(quote(isBad)); \
     end if

#  define RAISE_IF(isBad) \
     if(isBad)then; \
       RAISE(quote(isBad)); \
     end if
#  define ASSERT(isOk) RAISE_IF(.not.(isOk))
#  define TEST(isOk) \
     ASSERT(isOk); \
     write(OUTPUT_UNIT, '(a)', advance = 'no') '.'
#  define check_bound(index, array, dim_) \
     (lbound(array, dim_) <= index .and. index <= ubound(array, dim_))

#  ifdef DEBUG
#    define DEBUG_RAISE_IF(isBad) RAISE_IF(isBad)
#    define DEBUG_PRINT(x) write(ERROR_UNIT, *) "DEBUG: ", WHERE_AM_I, (x)
#    define DEBUG_PRINT_VARIABLE(x) write(ERROR_UNIT, *) "DEBUG: ", WHERE_AM_I, quote(x), ": ", (x)
#  else
#    define DEBUG_RAISE_IF(isBad)
#    define DEBUG_PRINT(x)
#    define DEBUG_PRINT_VARIABLE(x)
#  endif
#  define DEBUG_ASSERT(isOk) DEBUG_RAISE_IF(.not.(isOk))
#endif

! LICENSE: GPL Ver. 3
! REFERENCE: http://www.iris.edu/software/sac/manual/file_format.html
! COMPILE: gfortran -ffree-line-length-none -fmax-identifier-length=63 -C -c sac_lib.F90
!
! This module provides
!   - I/O routines for a binary SAC file
!   - user defined types to hold a SAC data
!   - setters and getters for the Sac type
!
! This module provides few consistency check for header variables.
! You should be careful if you change number of data points, time interval, data type, origin time and so on.
module sac_lib
   USE_UTILS_H
   use, intrinsic:: iso_fortran_env, only: &
      INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT, &
      REAL32, INT32

   implicit none

   private

   public:: read_sac, write_sac
   public:: set_body, get_body
      public:: set_body_itime, get_body_itime
      public:: set_body_ixy, get_body_ixy
      public:: set_body_iamph, get_body_iamph
      public:: set_body_irlim, get_body_irlim
      public:: set_body_ixyz, get_body_ixyz
      public:: set_delta, is_delta_defined, get_delta
      public:: set_depmin, is_depmin_defined, get_depmin
      public:: set_depmax, is_depmax_defined, get_depmax
      public:: set_scale, is_scale_defined, get_scale
      public:: set_odelta, is_odelta_defined, get_odelta
      public:: set_b, is_b_defined, get_b
      public:: set_e, is_e_defined, get_e
      public:: set_o, is_o_defined, get_o
      public:: set_a, is_a_defined, get_a
      public:: set_internal1, is_internal1_defined, get_internal1
      public:: set_t0, is_t0_defined, get_t0
      public:: set_t1, is_t1_defined, get_t1
      public:: set_t2, is_t2_defined, get_t2
      public:: set_t3, is_t3_defined, get_t3
      public:: set_t4, is_t4_defined, get_t4
      public:: set_t5, is_t5_defined, get_t5
      public:: set_t6, is_t6_defined, get_t6
      public:: set_t7, is_t7_defined, get_t7
      public:: set_t8, is_t8_defined, get_t8
      public:: set_t9, is_t9_defined, get_t9
      public:: set_f, is_f_defined, get_f
      public:: set_resp0, is_resp0_defined, get_resp0
      public:: set_resp1, is_resp1_defined, get_resp1
      public:: set_resp2, is_resp2_defined, get_resp2
      public:: set_resp3, is_resp3_defined, get_resp3
      public:: set_resp4, is_resp4_defined, get_resp4
      public:: set_resp5, is_resp5_defined, get_resp5
      public:: set_resp6, is_resp6_defined, get_resp6
      public:: set_resp7, is_resp7_defined, get_resp7
      public:: set_resp8, is_resp8_defined, get_resp8
      public:: set_resp9, is_resp9_defined, get_resp9
      public:: set_stla, is_stla_defined, get_stla
      public:: set_stlo, is_stlo_defined, get_stlo
      public:: set_stel, is_stel_defined, get_stel
      public:: set_stdp, is_stdp_defined, get_stdp
      public:: set_evla, is_evla_defined, get_evla
      public:: set_evlo, is_evlo_defined, get_evlo
      public:: set_evel, is_evel_defined, get_evel
      public:: set_evdp, is_evdp_defined, get_evdp
      public:: set_mag, is_mag_defined, get_mag
      public:: set_user0, is_user0_defined, get_user0
      public:: set_user1, is_user1_defined, get_user1
      public:: set_user2, is_user2_defined, get_user2
      public:: set_user3, is_user3_defined, get_user3
      public:: set_user4, is_user4_defined, get_user4
      public:: set_user5, is_user5_defined, get_user5
      public:: set_user6, is_user6_defined, get_user6
      public:: set_user7, is_user7_defined, get_user7
      public:: set_user8, is_user8_defined, get_user8
      public:: set_user9, is_user9_defined, get_user9
      public:: set_dist, is_dist_defined, get_dist
      public:: set_az, is_az_defined, get_az
      public:: set_baz, is_baz_defined, get_baz
      public:: set_gcarc, is_gcarc_defined, get_gcarc
      public:: set_internal2, is_internal2_defined, get_internal2
      public:: set_internal3, is_internal3_defined, get_internal3
      public:: set_depmen, is_depmen_defined, get_depmen
      public:: set_cmpaz, is_cmpaz_defined, get_cmpaz
      public:: set_cmpinc, is_cmpinc_defined, get_cmpinc
      public:: set_xminimum, is_xminimum_defined, get_xminimum
      public:: set_xmaximum, is_xmaximum_defined, get_xmaximum
      public:: set_yminimum, is_yminimum_defined, get_yminimum
      public:: set_ymaximum, is_ymaximum_defined, get_ymaximum
      public:: set_adjtm, is_adjtm_defined, get_adjtm
      public:: set_unused1, is_unused1_defined, get_unused1
      public:: set_unused2, is_unused2_defined, get_unused2
      public:: set_unused3, is_unused3_defined, get_unused3
      public:: set_unused4, is_unused4_defined, get_unused4
      public:: set_unused5, is_unused5_defined, get_unused5
      public:: set_unused6, is_unused6_defined, get_unused6
      public:: set_nzyear, is_nzyear_defined, get_nzyear
      public:: set_nzjday, is_nzjday_defined, get_nzjday
      public:: set_nzhour, is_nzhour_defined, get_nzhour
      public:: set_nzmin, is_nzmin_defined, get_nzmin
      public:: set_nzsec, is_nzsec_defined, get_nzsec
      public:: set_nzmsec, is_nzmsec_defined, get_nzmsec
      public:: set_nvhdr, is_nvhdr_defined, get_nvhdr
      public:: set_norid, is_norid_defined, get_norid
      public:: set_nevid, is_nevid_defined, get_nevid
      public:: set_npts, is_npts_defined, get_npts
      public:: set_nsnpts, is_nsnpts_defined, get_nsnpts
      public:: set_nwfid, is_nwfid_defined, get_nwfid
      public:: set_nxsize, is_nxsize_defined, get_nxsize
      public:: set_nysize, is_nysize_defined, get_nysize
      public:: set_unused7, is_unused7_defined, get_unused7
      public:: set_iftype, is_iftype_defined, get_iftype
      public:: set_idep, is_idep_defined, get_idep
      public:: set_iztype, is_iztype_defined, get_iztype
      public:: set_unused8, is_unused8_defined, get_unused8
      public:: set_iinst, is_iinst_defined, get_iinst
      public:: set_istreg, is_istreg_defined, get_istreg
      public:: set_ievreg, is_ievreg_defined, get_ievreg
      public:: set_ievtyp, is_ievtyp_defined, get_ievtyp
      public:: set_iqual, is_iqual_defined, get_iqual
      public:: set_isynth, is_isynth_defined, get_isynth
      public:: set_imagtyp, is_imagtyp_defined, get_imagtyp
      public:: set_imagsrc, is_imagsrc_defined, get_imagsrc
      public:: set_unused9, is_unused9_defined, get_unused9
      public:: set_unused10, is_unused10_defined, get_unused10
      public:: set_unused11, is_unused11_defined, get_unused11
      public:: set_unused12, is_unused12_defined, get_unused12
      public:: set_unused13, is_unused13_defined, get_unused13
      public:: set_unused14, is_unused14_defined, get_unused14
      public:: set_unused15, is_unused15_defined, get_unused15
      public:: set_unused16, is_unused16_defined, get_unused16
      public:: set_leven, is_leven_defined, get_leven
      public:: set_lpspol, is_lpspol_defined, get_lpspol
      public:: set_lovrok, is_lovrok_defined, get_lovrok
      public:: set_lcalda, is_lcalda_defined, get_lcalda
      public:: set_unused17, is_unused17_defined, get_unused17
      public:: set_kstnm, is_kstnm_defined, get_kstnm
      public:: set_kevnm, is_kevnm_defined, get_kevnm
      public:: set_khole, is_khole_defined, get_khole
      public:: set_ko, is_ko_defined, get_ko
      public:: set_ka, is_ka_defined, get_ka
      public:: set_kt0, is_kt0_defined, get_kt0
      public:: set_kt1, is_kt1_defined, get_kt1
      public:: set_kt2, is_kt2_defined, get_kt2
      public:: set_kt3, is_kt3_defined, get_kt3
      public:: set_kt4, is_kt4_defined, get_kt4
      public:: set_kt5, is_kt5_defined, get_kt5
      public:: set_kt6, is_kt6_defined, get_kt6
      public:: set_kt7, is_kt7_defined, get_kt7
      public:: set_kt8, is_kt8_defined, get_kt8
      public:: set_kt9, is_kt9_defined, get_kt9
      public:: set_kf, is_kf_defined, get_kf
      public:: set_kuser0, is_kuser0_defined, get_kuser0
      public:: set_kuser1, is_kuser1_defined, get_kuser1
      public:: set_kuser2, is_kuser2_defined, get_kuser2
      public:: set_kcmpnm, is_kcmpnm_defined, get_kcmpnm
      public:: set_knetwk, is_knetwk_defined, get_knetwk
      public:: set_kdatrd, is_kdatrd_defined, get_kdatrd
      public:: set_kinst, is_kinst_defined, get_kinst

   Integer(kind = INT32), parameter, public:: SAC_INTEGER_KIND = INT32
   Integer(kind = INT32), parameter, public:: SAC_REAL_KIND = REAL32
   Integer(kind = SAC_INTEGER_KIND), parameter, public:: LEN_SHORT_STRING = 8
   Integer(kind = SAC_INTEGER_KIND), parameter, public:: LEN_LONG_STRING = 2*LEN_SHORT_STRING
   Integer(kind = SAC_INTEGER_KIND), parameter, public:: LEN_ENUMERATED_VALUE_MAX = 8

   Integer(kind = SAC_INTEGER_KIND), parameter, public:: INTEGER_UNDEFINED = -12345
   Integer(kind = SAC_INTEGER_KIND), parameter, public:: ENUMERATED_VALUE_UNDEFINED = -12345
   Real(kind = SAC_REAL_KIND), parameter, public:: FLOAT_UNDEFINED = -12345
   Character(len = *), parameter, public:: STRING_UNDEFINED = '-12345'
   Character(len = LEN_ENUMERATED_VALUE_MAX), parameter, public:: ENUMERATED_VALUES(1:86) = [ &
      "itime   ", "irlim   ", "iamph   ", "ixy     ", "iunkn   ", "idisp   ", "ivel    ", "iacc    ", &
      "ib      ", "iday    ", "io      ", "ia      ", "it0     ", "it1     ", "it2     ", "it3     ", &
      "it4     ", "it5     ", "it6     ", "it7     ", "it8     ", "it9     ", "iradnv  ", "itannv  ", &
      "iradev  ", "itanev  ", "inorth  ", "ieast   ", "ihorza  ", "idown   ", "iup     ", "illlbb  ", &
      "iwwsn1  ", "iwwsn2  ", "ihglp   ", "isro    ", "inucl   ", "ipren   ", "ipostn  ", "iquake  ", &
      "ipreq   ", "ipostq  ", "ichem   ", "iother  ", "igood   ", "iglch   ", "idrop   ", "ilowsn  ", &
      "irldta  ", "ivolts  ", "ixyz    ", "imb     ", "ims     ", "iml     ", "imw     ", "imd     ", &
      "imx     ", "ineic   ", "ipde    ", "iisc    ", "ireb    ", "iusgs   ", "ibrk    ", "icaltech", &
      "illnl   ", "ievloc  ", "ijsop   ", "iuser   ", "iunknown", "iqb     ", "iqb1    ", "iqb2    ", &
      "iqbx    ", "iqmt    ", "ieq     ", "ieq1    ", "ieq2    ", "ime     ", "iex     ", "inu     ", &
      "inc     ", "io      ", "il      ", "ir      ", "it      ", "iu      "]
   Integer(kind = SAC_INTEGER_KIND), parameter, public:: NVHDR_DEFAULT = 6
   Integer(kind = SAC_INTEGER_KIND), parameter, public:: SAC_TRUE = 1, SAC_FALSE = 0

   type:: Object
   end type Object

   ! npts, nvhdr, b, e, iftype, leven and delta are required variables.
   type, extends(Object), public:: SacHead
      private

         Real(kind = SAC_REAL_KIND):: delta = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: depmin = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: depmax = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: scale = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: odelta = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: e = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: o = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: a = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: internal1 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: t0 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: t1 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: t2 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: t3 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: t4 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: t5 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: t6 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: t7 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: t8 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: t9 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: f = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: resp0 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: resp1 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: resp2 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: resp3 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: resp4 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: resp5 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: resp6 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: resp7 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: resp8 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: resp9 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: stla = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: stlo = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: stel = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: stdp = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: evla = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: evlo = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: evel = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: evdp = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: mag = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: user0 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: user1 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: user2 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: user3 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: user4 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: user5 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: user6 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: user7 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: user8 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: user9 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: dist = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: az = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: baz = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: gcarc = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: internal2 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: internal3 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: depmen = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: cmpaz = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: cmpinc = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: xminimum = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: xmaximum = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: yminimum = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: ymaximum = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: adjtm = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: unused1 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: unused2 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: unused3 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: unused4 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: unused5 = FLOAT_UNDEFINED
         Real(kind = SAC_REAL_KIND):: unused6 = FLOAT_UNDEFINED
      Real(kind = SAC_REAL_KIND):: b = 0

         Integer(kind = SAC_INTEGER_KIND):: nzyear = INTEGER_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: nzjday = INTEGER_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: nzhour = INTEGER_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: nzmin = INTEGER_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: nzsec = INTEGER_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: nzmsec = INTEGER_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: norid = INTEGER_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: nevid = INTEGER_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: npts = INTEGER_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: nsnpts = INTEGER_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: nwfid = INTEGER_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: nxsize = INTEGER_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: nysize = INTEGER_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: unused7 = INTEGER_UNDEFINED
      Integer(kind = SAC_INTEGER_KIND):: nvhdr = NVHDR_DEFAULT

         Integer(kind = SAC_INTEGER_KIND):: iftype = ENUMERATED_VALUE_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: idep = ENUMERATED_VALUE_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: iztype = ENUMERATED_VALUE_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: unused8 = ENUMERATED_VALUE_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: iinst = ENUMERATED_VALUE_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: istreg = ENUMERATED_VALUE_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: ievreg = ENUMERATED_VALUE_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: ievtyp = ENUMERATED_VALUE_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: iqual = ENUMERATED_VALUE_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: isynth = ENUMERATED_VALUE_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: imagtyp = ENUMERATED_VALUE_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: imagsrc = ENUMERATED_VALUE_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: unused9 = ENUMERATED_VALUE_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: unused10 = ENUMERATED_VALUE_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: unused11 = ENUMERATED_VALUE_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: unused12 = ENUMERATED_VALUE_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: unused13 = ENUMERATED_VALUE_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: unused14 = ENUMERATED_VALUE_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: unused15 = ENUMERATED_VALUE_UNDEFINED
         Integer(kind = SAC_INTEGER_KIND):: unused16 = ENUMERATED_VALUE_UNDEFINED

         Integer(kind = SAC_INTEGER_KIND):: leven = SAC_FALSE
         Integer(kind = SAC_INTEGER_KIND):: lpspol = SAC_FALSE
         Integer(kind = SAC_INTEGER_KIND):: lovrok = SAC_FALSE
         Integer(kind = SAC_INTEGER_KIND):: lcalda = SAC_FALSE
         Integer(kind = SAC_INTEGER_KIND):: unused17 = SAC_FALSE

         Character(len = LEN_LONG_STRING):: kstnm = STRING_UNDEFINED

         Character(len = LEN_SHORT_STRING):: kevnm = STRING_UNDEFINED
         Character(len = LEN_SHORT_STRING):: khole = STRING_UNDEFINED
         Character(len = LEN_SHORT_STRING):: ko = STRING_UNDEFINED
         Character(len = LEN_SHORT_STRING):: ka = STRING_UNDEFINED
         Character(len = LEN_SHORT_STRING):: kt0 = STRING_UNDEFINED
         Character(len = LEN_SHORT_STRING):: kt1 = STRING_UNDEFINED
         Character(len = LEN_SHORT_STRING):: kt2 = STRING_UNDEFINED
         Character(len = LEN_SHORT_STRING):: kt3 = STRING_UNDEFINED
         Character(len = LEN_SHORT_STRING):: kt4 = STRING_UNDEFINED
         Character(len = LEN_SHORT_STRING):: kt5 = STRING_UNDEFINED
         Character(len = LEN_SHORT_STRING):: kt6 = STRING_UNDEFINED
         Character(len = LEN_SHORT_STRING):: kt7 = STRING_UNDEFINED
         Character(len = LEN_SHORT_STRING):: kt8 = STRING_UNDEFINED
         Character(len = LEN_SHORT_STRING):: kt9 = STRING_UNDEFINED
         Character(len = LEN_SHORT_STRING):: kf = STRING_UNDEFINED
         Character(len = LEN_SHORT_STRING):: kuser0 = STRING_UNDEFINED
         Character(len = LEN_SHORT_STRING):: kuser1 = STRING_UNDEFINED
         Character(len = LEN_SHORT_STRING):: kuser2 = STRING_UNDEFINED
         Character(len = LEN_SHORT_STRING):: kcmpnm = STRING_UNDEFINED
         Character(len = LEN_SHORT_STRING):: knetwk = STRING_UNDEFINED
         Character(len = LEN_SHORT_STRING):: kdatrd = STRING_UNDEFINED
         Character(len = LEN_SHORT_STRING):: kinst = STRING_UNDEFINED
   end type SacHead

   type, extends(Object), public:: SacBody
      private

      Real(kind = SAC_REAL_KIND), allocatable:: &
         itime(:), &
         ixy(:, :), &
         iamph(:, :), &
         ixyz(:, :)
      Complex(kind = SAC_REAL_KIND), allocatable:: irlim(:)
   end type SacBody

   type, extends(Object), public:: Sac
      ! I left these parameters public so that a head or body of a SAC data can easily be copied to another SAC data.
      type(SacHead):: head
      type(SacBody):: body
   end type Sac

   interface set_body
      module procedure set_body_itime
      module procedure set_body_irlim
      module procedure set_body_ixy_or_iamph_or_ixyz
   end interface set_body

   interface get_body
      module procedure get_body_itime_
      module procedure get_body_irlim_
      module procedure get_body_ixy_or_iamph_or_ixyz_
   end interface get_body

contains

   subroutine read_sac(self, fileName)
      type(Sac), intent(out):: self
      Character(len = *), intent(in):: fileName

      Integer(kind = SAC_INTEGER_KIND):: npts, nxsize, nysize
      Integer(kind = INT32):: io
      Real(kind = SAC_REAL_KIND), allocatable:: &
         xs(:), ys(:), &
         amplitudes(:), thetas(:), &
         reals(:), imaginaries(:)

      open(newunit = io, file = trim(fileName), status = 'old', action = 'read', form = 'unformatted', access = 'stream')

         read(io) self%head%delta
         read(io) self%head%depmin
         read(io) self%head%depmax
         read(io) self%head%scale
         read(io) self%head%odelta
         read(io) self%head%b
         read(io) self%head%e
         read(io) self%head%o
         read(io) self%head%a
         read(io) self%head%internal1
         read(io) self%head%t0
         read(io) self%head%t1
         read(io) self%head%t2
         read(io) self%head%t3
         read(io) self%head%t4
         read(io) self%head%t5
         read(io) self%head%t6
         read(io) self%head%t7
         read(io) self%head%t8
         read(io) self%head%t9
         read(io) self%head%f
         read(io) self%head%resp0
         read(io) self%head%resp1
         read(io) self%head%resp2
         read(io) self%head%resp3
         read(io) self%head%resp4
         read(io) self%head%resp5
         read(io) self%head%resp6
         read(io) self%head%resp7
         read(io) self%head%resp8
         read(io) self%head%resp9
         read(io) self%head%stla
         read(io) self%head%stlo
         read(io) self%head%stel
         read(io) self%head%stdp
         read(io) self%head%evla
         read(io) self%head%evlo
         read(io) self%head%evel
         read(io) self%head%evdp
         read(io) self%head%mag
         read(io) self%head%user0
         read(io) self%head%user1
         read(io) self%head%user2
         read(io) self%head%user3
         read(io) self%head%user4
         read(io) self%head%user5
         read(io) self%head%user6
         read(io) self%head%user7
         read(io) self%head%user8
         read(io) self%head%user9
         read(io) self%head%dist
         read(io) self%head%az
         read(io) self%head%baz
         read(io) self%head%gcarc
         read(io) self%head%internal2
         read(io) self%head%internal3
         read(io) self%head%depmen
         read(io) self%head%cmpaz
         read(io) self%head%cmpinc
         read(io) self%head%xminimum
         read(io) self%head%xmaximum
         read(io) self%head%yminimum
         read(io) self%head%ymaximum
         read(io) self%head%adjtm
         read(io) self%head%unused1
         read(io) self%head%unused2
         read(io) self%head%unused3
         read(io) self%head%unused4
         read(io) self%head%unused5
         read(io) self%head%unused6
         read(io) self%head%nzyear
         read(io) self%head%nzjday
         read(io) self%head%nzhour
         read(io) self%head%nzmin
         read(io) self%head%nzsec
         read(io) self%head%nzmsec
         read(io) self%head%nvhdr
         read(io) self%head%norid
         read(io) self%head%nevid
         read(io) self%head%npts
         read(io) self%head%nsnpts
         read(io) self%head%nwfid
         read(io) self%head%nxsize
         read(io) self%head%nysize
         read(io) self%head%unused7
         read(io) self%head%iftype
         read(io) self%head%idep
         read(io) self%head%iztype
         read(io) self%head%unused8
         read(io) self%head%iinst
         read(io) self%head%istreg
         read(io) self%head%ievreg
         read(io) self%head%ievtyp
         read(io) self%head%iqual
         read(io) self%head%isynth
         read(io) self%head%imagtyp
         read(io) self%head%imagsrc
         read(io) self%head%unused9
         read(io) self%head%unused10
         read(io) self%head%unused11
         read(io) self%head%unused12
         read(io) self%head%unused13
         read(io) self%head%unused14
         read(io) self%head%unused15
         read(io) self%head%unused16
         read(io) self%head%leven
         read(io) self%head%lpspol
         read(io) self%head%lovrok
         read(io) self%head%lcalda
         read(io) self%head%unused17
         read(io) self%head%kstnm
         read(io) self%head%kevnm
         read(io) self%head%khole
         read(io) self%head%ko
         read(io) self%head%ka
         read(io) self%head%kt0
         read(io) self%head%kt1
         read(io) self%head%kt2
         read(io) self%head%kt3
         read(io) self%head%kt4
         read(io) self%head%kt5
         read(io) self%head%kt6
         read(io) self%head%kt7
         read(io) self%head%kt8
         read(io) self%head%kt9
         read(io) self%head%kf
         read(io) self%head%kuser0
         read(io) self%head%kuser1
         read(io) self%head%kuser2
         read(io) self%head%kcmpnm
         read(io) self%head%knetwk
         read(io) self%head%kdatrd
         read(io) self%head%kinst

      ASSERT(is_iftype_defined(self))
      select case(get_iftype(self))
      case('itime')
         ASSERT(is_npts_defined(self))
         npts = get_npts(self)

         allocate(self%body%itime(1:npts))

         read(io) self%body%itime
      case('ixy')
         ASSERT(is_npts_defined(self))
         npts = get_npts(self)

         allocate(self%body%ixy(1:npts, 2))
         allocate(xs(1:npts))
         allocate(ys(1:npts))

         read(io) ys, xs

         self%body%ixy(:, 1) = xs
         self%body%ixy(:, 2) = ys
      case('iamph')
         ASSERT(is_npts_defined(self))
         npts = get_npts(self)

         allocate(self%body%iamph(1:npts, 2))
         allocate(amplitudes(1:npts))
         allocate(thetas(1:npts))

         read(io) amplitudes, thetas

         self%body%iamph(:, 1) = amplitudes
         self%body%iamph(:, 2) = thetas
      case('irlim')
         ASSERT(is_npts_defined(self))
         npts = get_npts(self)

         allocate(self%body%irlim(1:npts))
         allocate(reals(1:npts))
         allocate(imaginaries(1:npts))

         read(io) reals, imaginaries

         self%body%irlim = cmplx(reals, imaginaries)
      case('ixyz')
         ASSERT(is_nxsize_defined(self))
         nxsize = get_nxsize(self)
         ASSERT(is_nysize_defined(self))
         nysize = get_nysize(self)

         allocate(self%body%ixyz(1:nxsize, 1:nysize))

         read(io) self%body%ixyz
      case default
         RAISE('Unknown iftype')
      end select

      close(io)
   end subroutine read_sac

   subroutine write_sac(self, fileName)
      type(Sac), intent(inout):: self
      Character(len = *), intent(in):: fileName

      Integer(kind = INT32):: io
      Real(kind = SAC_REAL_KIND), allocatable:: ixy(:, :)
      Complex(kind = SAC_REAL_KIND), allocatable:: irlim(:)

      open(newunit = io, file = trim(fileName), status = 'replace', action = 'write', form = 'unformatted', access = 'stream')

         write(io) self%head%delta
         write(io) self%head%depmin
         write(io) self%head%depmax
         write(io) self%head%scale
         write(io) self%head%odelta
         write(io) self%head%b
         write(io) self%head%e
         write(io) self%head%o
         write(io) self%head%a
         write(io) self%head%internal1
         write(io) self%head%t0
         write(io) self%head%t1
         write(io) self%head%t2
         write(io) self%head%t3
         write(io) self%head%t4
         write(io) self%head%t5
         write(io) self%head%t6
         write(io) self%head%t7
         write(io) self%head%t8
         write(io) self%head%t9
         write(io) self%head%f
         write(io) self%head%resp0
         write(io) self%head%resp1
         write(io) self%head%resp2
         write(io) self%head%resp3
         write(io) self%head%resp4
         write(io) self%head%resp5
         write(io) self%head%resp6
         write(io) self%head%resp7
         write(io) self%head%resp8
         write(io) self%head%resp9
         write(io) self%head%stla
         write(io) self%head%stlo
         write(io) self%head%stel
         write(io) self%head%stdp
         write(io) self%head%evla
         write(io) self%head%evlo
         write(io) self%head%evel
         write(io) self%head%evdp
         write(io) self%head%mag
         write(io) self%head%user0
         write(io) self%head%user1
         write(io) self%head%user2
         write(io) self%head%user3
         write(io) self%head%user4
         write(io) self%head%user5
         write(io) self%head%user6
         write(io) self%head%user7
         write(io) self%head%user8
         write(io) self%head%user9
         write(io) self%head%dist
         write(io) self%head%az
         write(io) self%head%baz
         write(io) self%head%gcarc
         write(io) self%head%internal2
         write(io) self%head%internal3
         write(io) self%head%depmen
         write(io) self%head%cmpaz
         write(io) self%head%cmpinc
         write(io) self%head%xminimum
         write(io) self%head%xmaximum
         write(io) self%head%yminimum
         write(io) self%head%ymaximum
         write(io) self%head%adjtm
         write(io) self%head%unused1
         write(io) self%head%unused2
         write(io) self%head%unused3
         write(io) self%head%unused4
         write(io) self%head%unused5
         write(io) self%head%unused6
         write(io) self%head%nzyear
         write(io) self%head%nzjday
         write(io) self%head%nzhour
         write(io) self%head%nzmin
         write(io) self%head%nzsec
         write(io) self%head%nzmsec
         write(io) self%head%nvhdr
         write(io) self%head%norid
         write(io) self%head%nevid
         write(io) self%head%npts
         write(io) self%head%nsnpts
         write(io) self%head%nwfid
         write(io) self%head%nxsize
         write(io) self%head%nysize
         write(io) self%head%unused7
         write(io) self%head%iftype
         write(io) self%head%idep
         write(io) self%head%iztype
         write(io) self%head%unused8
         write(io) self%head%iinst
         write(io) self%head%istreg
         write(io) self%head%ievreg
         write(io) self%head%ievtyp
         write(io) self%head%iqual
         write(io) self%head%isynth
         write(io) self%head%imagtyp
         write(io) self%head%imagsrc
         write(io) self%head%unused9
         write(io) self%head%unused10
         write(io) self%head%unused11
         write(io) self%head%unused12
         write(io) self%head%unused13
         write(io) self%head%unused14
         write(io) self%head%unused15
         write(io) self%head%unused16
         write(io) self%head%leven
         write(io) self%head%lpspol
         write(io) self%head%lovrok
         write(io) self%head%lcalda
         write(io) self%head%unused17
         write(io) self%head%kstnm
         write(io) self%head%kevnm
         write(io) self%head%khole
         write(io) self%head%ko
         write(io) self%head%ka
         write(io) self%head%kt0
         write(io) self%head%kt1
         write(io) self%head%kt2
         write(io) self%head%kt3
         write(io) self%head%kt4
         write(io) self%head%kt5
         write(io) self%head%kt6
         write(io) self%head%kt7
         write(io) self%head%kt8
         write(io) self%head%kt9
         write(io) self%head%kf
         write(io) self%head%kuser0
         write(io) self%head%kuser1
         write(io) self%head%kuser2
         write(io) self%head%kcmpnm
         write(io) self%head%knetwk
         write(io) self%head%kdatrd
         write(io) self%head%kinst

      ASSERT(is_iftype_defined(self))
      select case(get_iftype(self))
      case('itime')
         write(io) get_body_itime(self)
      case('ixy')
         ixy = get_body_ixy(self)

         write(io) ixy(:, 2), ixy(:, 1)
      case('iamph')
         write(io) get_body_iamph(self)
      case('irlim')
         irlim = get_body_irlim(self)

         write(io) real(irlim), aimag(irlim)
      case('ixyz')
         write(io) get_body_ixyz(self)
      case default
         RAISE('Unknown iftype')
      end select

      close(io)
   end subroutine write_sac

   subroutine set_body_itime(self, value)
      type(Sac), intent(inout):: self
      Real(kind = SAC_REAL_KIND), intent(in):: value(:)

      Real(kind = SAC_REAL_KIND):: b, delta
      Integer(kind = SAC_INTEGER_KIND):: npts

      npts = size(value, 1)
      ASSERT(is_b_defined(self))
      b = get_b(self)
      ASSERT(is_delta_defined(self))
      delta = get_delta(self)

      call set_iftype(self, 'itime')
      call set_leven(self, .true.)
      call set_npts(self, npts)
      call set_e(self, b + (npts - 1)*delta)
      call set_depmin(self, minval(value))
      call set_depmax(self, maxval(value))
      call set_depmen(self, sum(value)/npts)
      self%body%itime = value

      if(allocated(self%body%ixy)) deallocate(self%body%ixy)
      if(allocated(self%body%iamph)) deallocate(self%body%iamph)
      if(allocated(self%body%irlim)) deallocate(self%body%irlim)
      if(allocated(self%body%ixyz)) deallocate(self%body%ixyz)
   end subroutine set_body_itime

   function get_body_itime(self) result(value)
      type(Sac), intent(in):: self

      Real(kind = SAC_REAL_KIND), allocatable:: value(:)

      ASSERT(is_iftype_defined(self))
      ASSERT(get_iftype(self) == 'itime')
      ASSERT(allocated(self%body%itime))
      value = self%body%itime
      ASSERT(size(value, 1) == get_npts(self))
   end function get_body_itime

   subroutine get_body_itime_(self, value)
      type(Sac), intent(in):: self
      Real(kind = SAC_REAL_KIND), allocatable, intent(out):: value(:)

      value = get_body_itime(self)
   end subroutine get_body_itime_

      subroutine set_body_ixy(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND):: value(:, :)

         Integer(kind = SAC_INTEGER_KIND):: npts

         ASSERT(size(value, 2) == 2) ! [[x1, y1], [x2, y2], ...]
         npts = size(value, 1)

         call set_iftype(self, 'ixy')
         call set_leven(self, .false.)
         call set_npts(self, npts)
         call set_b(self, value(1, 1))
         call set_e(self, value(npts, 1))
         call set_depmin(self, minval(value(:, 2)))
         call set_depmax(self, maxval(value(:, 2)))
         call set_depmen(self, sum(value(:, 2))/npts)
         self%body%ixy = value

         if(allocated(self%body%itime)) deallocate(self%body%itime)
         if(allocated(self%body%iamph)) deallocate(self%body%iamph)
         if(allocated(self%body%irlim)) deallocate(self%body%irlim)
         if(allocated(self%body%ixyz)) deallocate(self%body%ixyz)
      end subroutine set_body_ixy

      function get_body_ixy(self) result(value)
         type(Sac), intent(in):: self

         Real(kind = SAC_REAL_KIND), allocatable:: value(:, :)

         ASSERT(get_iftype(self) == 'ixy')
         ASSERT(allocated(self%body%ixy))
         value = self%body%ixy
         ASSERT(size(value, 1) == get_npts(self))
      end function get_body_ixy
      subroutine set_body_iamph(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND):: value(:, :)

         Integer(kind = SAC_INTEGER_KIND):: npts

         ASSERT(size(value, 2) == 2) ! [[x1, y1], [x2, y2], ...]
         npts = size(value, 1)

         call set_iftype(self, 'iamph')
         call set_leven(self, .false.)
         call set_npts(self, npts)
         call set_b(self, value(1, 1))
         call set_e(self, value(npts, 1))
         call set_depmin(self, minval(value(:, 2)))
         call set_depmax(self, maxval(value(:, 2)))
         call set_depmen(self, sum(value(:, 2))/npts)
         self%body%iamph = value

         if(allocated(self%body%itime)) deallocate(self%body%itime)
         if(allocated(self%body%ixy)) deallocate(self%body%ixy)
         if(allocated(self%body%irlim)) deallocate(self%body%irlim)
         if(allocated(self%body%ixyz)) deallocate(self%body%ixyz)
      end subroutine set_body_iamph

      function get_body_iamph(self) result(value)
         type(Sac), intent(in):: self

         Real(kind = SAC_REAL_KIND), allocatable:: value(:, :)

         ASSERT(get_iftype(self) == 'iamph')
         ASSERT(allocated(self%body%iamph))
         value = self%body%iamph
         ASSERT(size(value, 1) == get_npts(self))
      end function get_body_iamph

   subroutine set_body_irlim(self, value)
      type(Sac), intent(inout):: self
      Complex(kind = SAC_REAL_KIND), intent(in):: value(:)

      call set_iftype(self, 'irlim')
      call set_leven(self, .false.)
      call set_npts(self, size(value, 1))
      self%body%irlim = value

      if(allocated(self%body%itime)) deallocate(self%body%ixy)
      if(allocated(self%body%ixy)) deallocate(self%body%ixy)
      if(allocated(self%body%iamph)) deallocate(self%body%iamph)
      if(allocated(self%body%ixyz)) deallocate(self%body%ixyz)
   end subroutine set_body_irlim

   function get_body_irlim(self) result(value)
      type(Sac), intent(in):: self

      Complex(kind = SAC_REAL_KIND), allocatable:: value(:)

      ASSERT(get_iftype(self) == 'irlim')
      ASSERT(allocated(self%body%irlim))
      value = self%body%irlim
      ASSERT(size(value, 1) == get_npts(self))
   end function get_body_irlim

   subroutine get_body_irlim_(self, value)
      type(Sac), intent(in):: self
      Complex(kind = SAC_REAL_KIND), allocatable, intent(out):: value(:)

      value = get_body_itime(self)
   end subroutine get_body_irlim_

   subroutine set_body_ixyz(self, value)
      type(Sac), intent(inout):: self
      Real(kind = SAC_REAL_KIND), intent(in):: value(:, :)

      call set_iftype(self, 'ixyz')
      call set_leven(self, .true.)
      call set_nxsize(self, size(value, 1))
      call set_nysize(self, size(value, 2))
      self%body%ixyz = value

      if(allocated(self%body%itime)) deallocate(self%body%ixy)
      if(allocated(self%body%ixy)) deallocate(self%body%ixy)
      if(allocated(self%body%iamph)) deallocate(self%body%iamph)
      if(allocated(self%body%irlim)) deallocate(self%body%ixyz)
   end subroutine set_body_ixyz

   function get_body_ixyz(self) result(value)
      type(Sac), intent(in):: self

      Real(kind = SAC_REAL_KIND), allocatable:: value(:, :)

      ASSERT(get_iftype(self) == 'ixyz')
      ASSERT(allocated(self%body%ixyz))
      value = self%body%ixyz
      ASSERT(size(value, 1) == get_nxsize(self))
      ASSERT(size(value, 2) == get_nysize(self))
   end function get_body_ixyz

   subroutine set_body_ixy_or_iamph_or_ixyz(self, value)
      type(Sac), intent(inout):: self
      Real(kind = SAC_REAL_KIND):: value(:, :)

      ASSERT(is_iftype_defined(self))
      select case(get_iftype(self))
         case('ixy')
            call set_body_ixy(self, value)
         case('iamph')
            call set_body_iamph(self, value)
         case('ixyz')
            call set_body_ixyz(self, value)
      case default
         RAISE('Unknown iftype')
      end select
   end subroutine set_body_ixy_or_iamph_or_ixyz

   subroutine get_body_ixy_or_iamph_or_ixyz_(self, value)
      type(Sac), intent(in):: self
      Real(kind = SAC_REAL_KIND), allocatable, intent(out):: value(:, :)

      ASSERT(is_iftype_defined(self))
      select case(get_iftype(self))
         case('ixy')
            value = get_body_ixy(self)
         case('iamph')
            value = get_body_iamph(self)
         case('ixyz')
            value = get_body_ixyz(self)
      case default
         RAISE('Unknown iftype')
      end select
   end subroutine get_body_ixy_or_iamph_or_ixyz_

      function get_delta(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%delta
      end function get_delta

      function is_delta_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%delta /= FLOAT_UNDEFINED)
      end function is_delta_defined

      subroutine set_delta(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%delta = value
      end subroutine set_delta
      function get_depmin(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%depmin
      end function get_depmin

      function is_depmin_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%depmin /= FLOAT_UNDEFINED)
      end function is_depmin_defined

      subroutine set_depmin(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%depmin = value
      end subroutine set_depmin
      function get_depmax(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%depmax
      end function get_depmax

      function is_depmax_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%depmax /= FLOAT_UNDEFINED)
      end function is_depmax_defined

      subroutine set_depmax(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%depmax = value
      end subroutine set_depmax
      function get_scale(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%scale
      end function get_scale

      function is_scale_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%scale /= FLOAT_UNDEFINED)
      end function is_scale_defined

      subroutine set_scale(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%scale = value
      end subroutine set_scale
      function get_odelta(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%odelta
      end function get_odelta

      function is_odelta_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%odelta /= FLOAT_UNDEFINED)
      end function is_odelta_defined

      subroutine set_odelta(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%odelta = value
      end subroutine set_odelta
      function get_b(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%b
      end function get_b

      function is_b_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%b /= FLOAT_UNDEFINED)
      end function is_b_defined

      subroutine set_b(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%b = value
      end subroutine set_b
      function get_e(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%e
      end function get_e

      function is_e_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%e /= FLOAT_UNDEFINED)
      end function is_e_defined

      subroutine set_e(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%e = value
      end subroutine set_e
      function get_o(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%o
      end function get_o

      function is_o_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%o /= FLOAT_UNDEFINED)
      end function is_o_defined

      subroutine set_o(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%o = value
      end subroutine set_o
      function get_a(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%a
      end function get_a

      function is_a_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%a /= FLOAT_UNDEFINED)
      end function is_a_defined

      subroutine set_a(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%a = value
      end subroutine set_a
      function get_internal1(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%internal1
      end function get_internal1

      function is_internal1_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%internal1 /= FLOAT_UNDEFINED)
      end function is_internal1_defined

      subroutine set_internal1(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%internal1 = value
      end subroutine set_internal1
      function get_t0(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%t0
      end function get_t0

      function is_t0_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%t0 /= FLOAT_UNDEFINED)
      end function is_t0_defined

      subroutine set_t0(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%t0 = value
      end subroutine set_t0
      function get_t1(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%t1
      end function get_t1

      function is_t1_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%t1 /= FLOAT_UNDEFINED)
      end function is_t1_defined

      subroutine set_t1(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%t1 = value
      end subroutine set_t1
      function get_t2(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%t2
      end function get_t2

      function is_t2_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%t2 /= FLOAT_UNDEFINED)
      end function is_t2_defined

      subroutine set_t2(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%t2 = value
      end subroutine set_t2
      function get_t3(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%t3
      end function get_t3

      function is_t3_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%t3 /= FLOAT_UNDEFINED)
      end function is_t3_defined

      subroutine set_t3(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%t3 = value
      end subroutine set_t3
      function get_t4(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%t4
      end function get_t4

      function is_t4_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%t4 /= FLOAT_UNDEFINED)
      end function is_t4_defined

      subroutine set_t4(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%t4 = value
      end subroutine set_t4
      function get_t5(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%t5
      end function get_t5

      function is_t5_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%t5 /= FLOAT_UNDEFINED)
      end function is_t5_defined

      subroutine set_t5(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%t5 = value
      end subroutine set_t5
      function get_t6(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%t6
      end function get_t6

      function is_t6_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%t6 /= FLOAT_UNDEFINED)
      end function is_t6_defined

      subroutine set_t6(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%t6 = value
      end subroutine set_t6
      function get_t7(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%t7
      end function get_t7

      function is_t7_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%t7 /= FLOAT_UNDEFINED)
      end function is_t7_defined

      subroutine set_t7(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%t7 = value
      end subroutine set_t7
      function get_t8(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%t8
      end function get_t8

      function is_t8_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%t8 /= FLOAT_UNDEFINED)
      end function is_t8_defined

      subroutine set_t8(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%t8 = value
      end subroutine set_t8
      function get_t9(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%t9
      end function get_t9

      function is_t9_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%t9 /= FLOAT_UNDEFINED)
      end function is_t9_defined

      subroutine set_t9(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%t9 = value
      end subroutine set_t9
      function get_f(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%f
      end function get_f

      function is_f_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%f /= FLOAT_UNDEFINED)
      end function is_f_defined

      subroutine set_f(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%f = value
      end subroutine set_f
      function get_resp0(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%resp0
      end function get_resp0

      function is_resp0_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%resp0 /= FLOAT_UNDEFINED)
      end function is_resp0_defined

      subroutine set_resp0(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%resp0 = value
      end subroutine set_resp0
      function get_resp1(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%resp1
      end function get_resp1

      function is_resp1_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%resp1 /= FLOAT_UNDEFINED)
      end function is_resp1_defined

      subroutine set_resp1(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%resp1 = value
      end subroutine set_resp1
      function get_resp2(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%resp2
      end function get_resp2

      function is_resp2_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%resp2 /= FLOAT_UNDEFINED)
      end function is_resp2_defined

      subroutine set_resp2(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%resp2 = value
      end subroutine set_resp2
      function get_resp3(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%resp3
      end function get_resp3

      function is_resp3_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%resp3 /= FLOAT_UNDEFINED)
      end function is_resp3_defined

      subroutine set_resp3(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%resp3 = value
      end subroutine set_resp3
      function get_resp4(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%resp4
      end function get_resp4

      function is_resp4_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%resp4 /= FLOAT_UNDEFINED)
      end function is_resp4_defined

      subroutine set_resp4(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%resp4 = value
      end subroutine set_resp4
      function get_resp5(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%resp5
      end function get_resp5

      function is_resp5_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%resp5 /= FLOAT_UNDEFINED)
      end function is_resp5_defined

      subroutine set_resp5(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%resp5 = value
      end subroutine set_resp5
      function get_resp6(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%resp6
      end function get_resp6

      function is_resp6_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%resp6 /= FLOAT_UNDEFINED)
      end function is_resp6_defined

      subroutine set_resp6(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%resp6 = value
      end subroutine set_resp6
      function get_resp7(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%resp7
      end function get_resp7

      function is_resp7_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%resp7 /= FLOAT_UNDEFINED)
      end function is_resp7_defined

      subroutine set_resp7(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%resp7 = value
      end subroutine set_resp7
      function get_resp8(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%resp8
      end function get_resp8

      function is_resp8_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%resp8 /= FLOAT_UNDEFINED)
      end function is_resp8_defined

      subroutine set_resp8(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%resp8 = value
      end subroutine set_resp8
      function get_resp9(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%resp9
      end function get_resp9

      function is_resp9_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%resp9 /= FLOAT_UNDEFINED)
      end function is_resp9_defined

      subroutine set_resp9(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%resp9 = value
      end subroutine set_resp9
      function get_stla(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%stla
      end function get_stla

      function is_stla_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%stla /= FLOAT_UNDEFINED)
      end function is_stla_defined

      subroutine set_stla(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%stla = value
      end subroutine set_stla
      function get_stlo(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%stlo
      end function get_stlo

      function is_stlo_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%stlo /= FLOAT_UNDEFINED)
      end function is_stlo_defined

      subroutine set_stlo(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%stlo = value
      end subroutine set_stlo
      function get_stel(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%stel
      end function get_stel

      function is_stel_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%stel /= FLOAT_UNDEFINED)
      end function is_stel_defined

      subroutine set_stel(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%stel = value
      end subroutine set_stel
      function get_stdp(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%stdp
      end function get_stdp

      function is_stdp_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%stdp /= FLOAT_UNDEFINED)
      end function is_stdp_defined

      subroutine set_stdp(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%stdp = value
      end subroutine set_stdp
      function get_evla(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%evla
      end function get_evla

      function is_evla_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%evla /= FLOAT_UNDEFINED)
      end function is_evla_defined

      subroutine set_evla(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%evla = value
      end subroutine set_evla
      function get_evlo(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%evlo
      end function get_evlo

      function is_evlo_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%evlo /= FLOAT_UNDEFINED)
      end function is_evlo_defined

      subroutine set_evlo(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%evlo = value
      end subroutine set_evlo
      function get_evel(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%evel
      end function get_evel

      function is_evel_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%evel /= FLOAT_UNDEFINED)
      end function is_evel_defined

      subroutine set_evel(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%evel = value
      end subroutine set_evel
      function get_evdp(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%evdp
      end function get_evdp

      function is_evdp_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%evdp /= FLOAT_UNDEFINED)
      end function is_evdp_defined

      subroutine set_evdp(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%evdp = value
      end subroutine set_evdp
      function get_mag(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%mag
      end function get_mag

      function is_mag_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%mag /= FLOAT_UNDEFINED)
      end function is_mag_defined

      subroutine set_mag(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%mag = value
      end subroutine set_mag
      function get_user0(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%user0
      end function get_user0

      function is_user0_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%user0 /= FLOAT_UNDEFINED)
      end function is_user0_defined

      subroutine set_user0(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%user0 = value
      end subroutine set_user0
      function get_user1(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%user1
      end function get_user1

      function is_user1_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%user1 /= FLOAT_UNDEFINED)
      end function is_user1_defined

      subroutine set_user1(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%user1 = value
      end subroutine set_user1
      function get_user2(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%user2
      end function get_user2

      function is_user2_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%user2 /= FLOAT_UNDEFINED)
      end function is_user2_defined

      subroutine set_user2(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%user2 = value
      end subroutine set_user2
      function get_user3(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%user3
      end function get_user3

      function is_user3_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%user3 /= FLOAT_UNDEFINED)
      end function is_user3_defined

      subroutine set_user3(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%user3 = value
      end subroutine set_user3
      function get_user4(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%user4
      end function get_user4

      function is_user4_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%user4 /= FLOAT_UNDEFINED)
      end function is_user4_defined

      subroutine set_user4(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%user4 = value
      end subroutine set_user4
      function get_user5(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%user5
      end function get_user5

      function is_user5_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%user5 /= FLOAT_UNDEFINED)
      end function is_user5_defined

      subroutine set_user5(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%user5 = value
      end subroutine set_user5
      function get_user6(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%user6
      end function get_user6

      function is_user6_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%user6 /= FLOAT_UNDEFINED)
      end function is_user6_defined

      subroutine set_user6(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%user6 = value
      end subroutine set_user6
      function get_user7(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%user7
      end function get_user7

      function is_user7_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%user7 /= FLOAT_UNDEFINED)
      end function is_user7_defined

      subroutine set_user7(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%user7 = value
      end subroutine set_user7
      function get_user8(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%user8
      end function get_user8

      function is_user8_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%user8 /= FLOAT_UNDEFINED)
      end function is_user8_defined

      subroutine set_user8(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%user8 = value
      end subroutine set_user8
      function get_user9(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%user9
      end function get_user9

      function is_user9_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%user9 /= FLOAT_UNDEFINED)
      end function is_user9_defined

      subroutine set_user9(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%user9 = value
      end subroutine set_user9
      function get_dist(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%dist
      end function get_dist

      function is_dist_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%dist /= FLOAT_UNDEFINED)
      end function is_dist_defined

      subroutine set_dist(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%dist = value
      end subroutine set_dist
      function get_az(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%az
      end function get_az

      function is_az_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%az /= FLOAT_UNDEFINED)
      end function is_az_defined

      subroutine set_az(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%az = value
      end subroutine set_az
      function get_baz(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%baz
      end function get_baz

      function is_baz_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%baz /= FLOAT_UNDEFINED)
      end function is_baz_defined

      subroutine set_baz(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%baz = value
      end subroutine set_baz
      function get_gcarc(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%gcarc
      end function get_gcarc

      function is_gcarc_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%gcarc /= FLOAT_UNDEFINED)
      end function is_gcarc_defined

      subroutine set_gcarc(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%gcarc = value
      end subroutine set_gcarc
      function get_internal2(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%internal2
      end function get_internal2

      function is_internal2_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%internal2 /= FLOAT_UNDEFINED)
      end function is_internal2_defined

      subroutine set_internal2(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%internal2 = value
      end subroutine set_internal2
      function get_internal3(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%internal3
      end function get_internal3

      function is_internal3_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%internal3 /= FLOAT_UNDEFINED)
      end function is_internal3_defined

      subroutine set_internal3(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%internal3 = value
      end subroutine set_internal3
      function get_depmen(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%depmen
      end function get_depmen

      function is_depmen_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%depmen /= FLOAT_UNDEFINED)
      end function is_depmen_defined

      subroutine set_depmen(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%depmen = value
      end subroutine set_depmen
      function get_cmpaz(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%cmpaz
      end function get_cmpaz

      function is_cmpaz_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%cmpaz /= FLOAT_UNDEFINED)
      end function is_cmpaz_defined

      subroutine set_cmpaz(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%cmpaz = value
      end subroutine set_cmpaz
      function get_cmpinc(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%cmpinc
      end function get_cmpinc

      function is_cmpinc_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%cmpinc /= FLOAT_UNDEFINED)
      end function is_cmpinc_defined

      subroutine set_cmpinc(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%cmpinc = value
      end subroutine set_cmpinc
      function get_xminimum(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%xminimum
      end function get_xminimum

      function is_xminimum_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%xminimum /= FLOAT_UNDEFINED)
      end function is_xminimum_defined

      subroutine set_xminimum(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%xminimum = value
      end subroutine set_xminimum
      function get_xmaximum(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%xmaximum
      end function get_xmaximum

      function is_xmaximum_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%xmaximum /= FLOAT_UNDEFINED)
      end function is_xmaximum_defined

      subroutine set_xmaximum(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%xmaximum = value
      end subroutine set_xmaximum
      function get_yminimum(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%yminimum
      end function get_yminimum

      function is_yminimum_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%yminimum /= FLOAT_UNDEFINED)
      end function is_yminimum_defined

      subroutine set_yminimum(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%yminimum = value
      end subroutine set_yminimum
      function get_ymaximum(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%ymaximum
      end function get_ymaximum

      function is_ymaximum_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%ymaximum /= FLOAT_UNDEFINED)
      end function is_ymaximum_defined

      subroutine set_ymaximum(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%ymaximum = value
      end subroutine set_ymaximum
      function get_adjtm(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%adjtm
      end function get_adjtm

      function is_adjtm_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%adjtm /= FLOAT_UNDEFINED)
      end function is_adjtm_defined

      subroutine set_adjtm(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%adjtm = value
      end subroutine set_adjtm
      function get_unused1(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%unused1
      end function get_unused1

      function is_unused1_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%unused1 /= FLOAT_UNDEFINED)
      end function is_unused1_defined

      subroutine set_unused1(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%unused1 = value
      end subroutine set_unused1
      function get_unused2(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%unused2
      end function get_unused2

      function is_unused2_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%unused2 /= FLOAT_UNDEFINED)
      end function is_unused2_defined

      subroutine set_unused2(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%unused2 = value
      end subroutine set_unused2
      function get_unused3(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%unused3
      end function get_unused3

      function is_unused3_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%unused3 /= FLOAT_UNDEFINED)
      end function is_unused3_defined

      subroutine set_unused3(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%unused3 = value
      end subroutine set_unused3
      function get_unused4(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%unused4
      end function get_unused4

      function is_unused4_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%unused4 /= FLOAT_UNDEFINED)
      end function is_unused4_defined

      subroutine set_unused4(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%unused4 = value
      end subroutine set_unused4
      function get_unused5(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%unused5
      end function get_unused5

      function is_unused5_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%unused5 /= FLOAT_UNDEFINED)
      end function is_unused5_defined

      subroutine set_unused5(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%unused5 = value
      end subroutine set_unused5
      function get_unused6(self) result(value)
         type(Sac), intent(in):: self
         Real(kind = SAC_REAL_KIND):: value

         value = self%head%unused6
      end function get_unused6

      function is_unused6_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%unused6 /= FLOAT_UNDEFINED)
      end function is_unused6_defined

      subroutine set_unused6(self, value)
         type(Sac), intent(inout):: self
         Real(kind = SAC_REAL_KIND), intent(in):: value

         self%head%unused6 = value
      end subroutine set_unused6

      function get_nzyear(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind = SAC_INTEGER_KIND):: value

         value = self%head%nzyear
      end function get_nzyear

      function is_nzyear_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%nzyear /= INTEGER_UNDEFINED)
      end function is_nzyear_defined

      subroutine set_nzyear(self, value)
         type(Sac), intent(inout):: self
         Integer(kind = SAC_INTEGER_KIND), intent(in):: value

         self%head%nzyear = value
      end subroutine set_nzyear
      function get_nzjday(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind = SAC_INTEGER_KIND):: value

         value = self%head%nzjday
      end function get_nzjday

      function is_nzjday_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%nzjday /= INTEGER_UNDEFINED)
      end function is_nzjday_defined

      subroutine set_nzjday(self, value)
         type(Sac), intent(inout):: self
         Integer(kind = SAC_INTEGER_KIND), intent(in):: value

         self%head%nzjday = value
      end subroutine set_nzjday
      function get_nzhour(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind = SAC_INTEGER_KIND):: value

         value = self%head%nzhour
      end function get_nzhour

      function is_nzhour_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%nzhour /= INTEGER_UNDEFINED)
      end function is_nzhour_defined

      subroutine set_nzhour(self, value)
         type(Sac), intent(inout):: self
         Integer(kind = SAC_INTEGER_KIND), intent(in):: value

         self%head%nzhour = value
      end subroutine set_nzhour
      function get_nzmin(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind = SAC_INTEGER_KIND):: value

         value = self%head%nzmin
      end function get_nzmin

      function is_nzmin_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%nzmin /= INTEGER_UNDEFINED)
      end function is_nzmin_defined

      subroutine set_nzmin(self, value)
         type(Sac), intent(inout):: self
         Integer(kind = SAC_INTEGER_KIND), intent(in):: value

         self%head%nzmin = value
      end subroutine set_nzmin
      function get_nzsec(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind = SAC_INTEGER_KIND):: value

         value = self%head%nzsec
      end function get_nzsec

      function is_nzsec_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%nzsec /= INTEGER_UNDEFINED)
      end function is_nzsec_defined

      subroutine set_nzsec(self, value)
         type(Sac), intent(inout):: self
         Integer(kind = SAC_INTEGER_KIND), intent(in):: value

         self%head%nzsec = value
      end subroutine set_nzsec
      function get_nzmsec(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind = SAC_INTEGER_KIND):: value

         value = self%head%nzmsec
      end function get_nzmsec

      function is_nzmsec_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%nzmsec /= INTEGER_UNDEFINED)
      end function is_nzmsec_defined

      subroutine set_nzmsec(self, value)
         type(Sac), intent(inout):: self
         Integer(kind = SAC_INTEGER_KIND), intent(in):: value

         self%head%nzmsec = value
      end subroutine set_nzmsec
      function get_nvhdr(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind = SAC_INTEGER_KIND):: value

         value = self%head%nvhdr
      end function get_nvhdr

      function is_nvhdr_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%nvhdr /= INTEGER_UNDEFINED)
      end function is_nvhdr_defined

      subroutine set_nvhdr(self, value)
         type(Sac), intent(inout):: self
         Integer(kind = SAC_INTEGER_KIND), intent(in):: value

         self%head%nvhdr = value
      end subroutine set_nvhdr
      function get_norid(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind = SAC_INTEGER_KIND):: value

         value = self%head%norid
      end function get_norid

      function is_norid_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%norid /= INTEGER_UNDEFINED)
      end function is_norid_defined

      subroutine set_norid(self, value)
         type(Sac), intent(inout):: self
         Integer(kind = SAC_INTEGER_KIND), intent(in):: value

         self%head%norid = value
      end subroutine set_norid
      function get_nevid(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind = SAC_INTEGER_KIND):: value

         value = self%head%nevid
      end function get_nevid

      function is_nevid_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%nevid /= INTEGER_UNDEFINED)
      end function is_nevid_defined

      subroutine set_nevid(self, value)
         type(Sac), intent(inout):: self
         Integer(kind = SAC_INTEGER_KIND), intent(in):: value

         self%head%nevid = value
      end subroutine set_nevid
      function get_npts(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind = SAC_INTEGER_KIND):: value

         value = self%head%npts
      end function get_npts

      function is_npts_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%npts /= INTEGER_UNDEFINED)
      end function is_npts_defined

      subroutine set_npts(self, value)
         type(Sac), intent(inout):: self
         Integer(kind = SAC_INTEGER_KIND), intent(in):: value

         self%head%npts = value
      end subroutine set_npts
      function get_nsnpts(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind = SAC_INTEGER_KIND):: value

         value = self%head%nsnpts
      end function get_nsnpts

      function is_nsnpts_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%nsnpts /= INTEGER_UNDEFINED)
      end function is_nsnpts_defined

      subroutine set_nsnpts(self, value)
         type(Sac), intent(inout):: self
         Integer(kind = SAC_INTEGER_KIND), intent(in):: value

         self%head%nsnpts = value
      end subroutine set_nsnpts
      function get_nwfid(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind = SAC_INTEGER_KIND):: value

         value = self%head%nwfid
      end function get_nwfid

      function is_nwfid_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%nwfid /= INTEGER_UNDEFINED)
      end function is_nwfid_defined

      subroutine set_nwfid(self, value)
         type(Sac), intent(inout):: self
         Integer(kind = SAC_INTEGER_KIND), intent(in):: value

         self%head%nwfid = value
      end subroutine set_nwfid
      function get_nxsize(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind = SAC_INTEGER_KIND):: value

         value = self%head%nxsize
      end function get_nxsize

      function is_nxsize_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%nxsize /= INTEGER_UNDEFINED)
      end function is_nxsize_defined

      subroutine set_nxsize(self, value)
         type(Sac), intent(inout):: self
         Integer(kind = SAC_INTEGER_KIND), intent(in):: value

         self%head%nxsize = value
      end subroutine set_nxsize
      function get_nysize(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind = SAC_INTEGER_KIND):: value

         value = self%head%nysize
      end function get_nysize

      function is_nysize_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%nysize /= INTEGER_UNDEFINED)
      end function is_nysize_defined

      subroutine set_nysize(self, value)
         type(Sac), intent(inout):: self
         Integer(kind = SAC_INTEGER_KIND), intent(in):: value

         self%head%nysize = value
      end subroutine set_nysize
      function get_unused7(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind = SAC_INTEGER_KIND):: value

         value = self%head%unused7
      end function get_unused7

      function is_unused7_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%unused7 /= INTEGER_UNDEFINED)
      end function is_unused7_defined

      subroutine set_unused7(self, value)
         type(Sac), intent(inout):: self
         Integer(kind = SAC_INTEGER_KIND), intent(in):: value

         self%head%unused7 = value
      end subroutine set_unused7

      function get_iftype(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_ENUMERATED_VALUE_MAX):: value

         Integer:: internalValue

         internalValue = self%head%iftype
         ASSERT(check_bound(internalValue, ENUMERATED_VALUES, 1))
         value = ENUMERATED_VALUES(internalValue)
      end function get_iftype

      function is_iftype_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         answer = &
            (self%head%iftype /= ENUMERATED_VALUE_UNDEFINED) &
            .and. check_bound(self%head%iftype, ENUMERATED_VALUES, 1)
      end function is_iftype_defined

      subroutine set_iftype(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         Integer:: internalValue

         do ALL_OF(internalValue, ENUMERATED_VALUES, 1)
            if(value == ENUMERATED_VALUES(internalValue))then
               self%head%iftype = internalValue
               return
            end if
         end do

         RAISE(value)
      end subroutine set_iftype
      function get_idep(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_ENUMERATED_VALUE_MAX):: value

         Integer:: internalValue

         internalValue = self%head%idep
         ASSERT(check_bound(internalValue, ENUMERATED_VALUES, 1))
         value = ENUMERATED_VALUES(internalValue)
      end function get_idep

      function is_idep_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         answer = &
            (self%head%idep /= ENUMERATED_VALUE_UNDEFINED) &
            .and. check_bound(self%head%idep, ENUMERATED_VALUES, 1)
      end function is_idep_defined

      subroutine set_idep(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         Integer:: internalValue

         do ALL_OF(internalValue, ENUMERATED_VALUES, 1)
            if(value == ENUMERATED_VALUES(internalValue))then
               self%head%idep = internalValue
               return
            end if
         end do

         RAISE(value)
      end subroutine set_idep
      function get_iztype(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_ENUMERATED_VALUE_MAX):: value

         Integer:: internalValue

         internalValue = self%head%iztype
         ASSERT(check_bound(internalValue, ENUMERATED_VALUES, 1))
         value = ENUMERATED_VALUES(internalValue)
      end function get_iztype

      function is_iztype_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         answer = &
            (self%head%iztype /= ENUMERATED_VALUE_UNDEFINED) &
            .and. check_bound(self%head%iztype, ENUMERATED_VALUES, 1)
      end function is_iztype_defined

      subroutine set_iztype(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         Integer:: internalValue

         do ALL_OF(internalValue, ENUMERATED_VALUES, 1)
            if(value == ENUMERATED_VALUES(internalValue))then
               self%head%iztype = internalValue
               return
            end if
         end do

         RAISE(value)
      end subroutine set_iztype
      function get_unused8(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_ENUMERATED_VALUE_MAX):: value

         Integer:: internalValue

         internalValue = self%head%unused8
         ASSERT(check_bound(internalValue, ENUMERATED_VALUES, 1))
         value = ENUMERATED_VALUES(internalValue)
      end function get_unused8

      function is_unused8_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         answer = &
            (self%head%unused8 /= ENUMERATED_VALUE_UNDEFINED) &
            .and. check_bound(self%head%unused8, ENUMERATED_VALUES, 1)
      end function is_unused8_defined

      subroutine set_unused8(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         Integer:: internalValue

         do ALL_OF(internalValue, ENUMERATED_VALUES, 1)
            if(value == ENUMERATED_VALUES(internalValue))then
               self%head%unused8 = internalValue
               return
            end if
         end do

         RAISE(value)
      end subroutine set_unused8
      function get_iinst(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_ENUMERATED_VALUE_MAX):: value

         Integer:: internalValue

         internalValue = self%head%iinst
         ASSERT(check_bound(internalValue, ENUMERATED_VALUES, 1))
         value = ENUMERATED_VALUES(internalValue)
      end function get_iinst

      function is_iinst_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         answer = &
            (self%head%iinst /= ENUMERATED_VALUE_UNDEFINED) &
            .and. check_bound(self%head%iinst, ENUMERATED_VALUES, 1)
      end function is_iinst_defined

      subroutine set_iinst(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         Integer:: internalValue

         do ALL_OF(internalValue, ENUMERATED_VALUES, 1)
            if(value == ENUMERATED_VALUES(internalValue))then
               self%head%iinst = internalValue
               return
            end if
         end do

         RAISE(value)
      end subroutine set_iinst
      function get_istreg(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_ENUMERATED_VALUE_MAX):: value

         Integer:: internalValue

         internalValue = self%head%istreg
         ASSERT(check_bound(internalValue, ENUMERATED_VALUES, 1))
         value = ENUMERATED_VALUES(internalValue)
      end function get_istreg

      function is_istreg_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         answer = &
            (self%head%istreg /= ENUMERATED_VALUE_UNDEFINED) &
            .and. check_bound(self%head%istreg, ENUMERATED_VALUES, 1)
      end function is_istreg_defined

      subroutine set_istreg(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         Integer:: internalValue

         do ALL_OF(internalValue, ENUMERATED_VALUES, 1)
            if(value == ENUMERATED_VALUES(internalValue))then
               self%head%istreg = internalValue
               return
            end if
         end do

         RAISE(value)
      end subroutine set_istreg
      function get_ievreg(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_ENUMERATED_VALUE_MAX):: value

         Integer:: internalValue

         internalValue = self%head%ievreg
         ASSERT(check_bound(internalValue, ENUMERATED_VALUES, 1))
         value = ENUMERATED_VALUES(internalValue)
      end function get_ievreg

      function is_ievreg_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         answer = &
            (self%head%ievreg /= ENUMERATED_VALUE_UNDEFINED) &
            .and. check_bound(self%head%ievreg, ENUMERATED_VALUES, 1)
      end function is_ievreg_defined

      subroutine set_ievreg(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         Integer:: internalValue

         do ALL_OF(internalValue, ENUMERATED_VALUES, 1)
            if(value == ENUMERATED_VALUES(internalValue))then
               self%head%ievreg = internalValue
               return
            end if
         end do

         RAISE(value)
      end subroutine set_ievreg
      function get_ievtyp(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_ENUMERATED_VALUE_MAX):: value

         Integer:: internalValue

         internalValue = self%head%ievtyp
         ASSERT(check_bound(internalValue, ENUMERATED_VALUES, 1))
         value = ENUMERATED_VALUES(internalValue)
      end function get_ievtyp

      function is_ievtyp_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         answer = &
            (self%head%ievtyp /= ENUMERATED_VALUE_UNDEFINED) &
            .and. check_bound(self%head%ievtyp, ENUMERATED_VALUES, 1)
      end function is_ievtyp_defined

      subroutine set_ievtyp(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         Integer:: internalValue

         do ALL_OF(internalValue, ENUMERATED_VALUES, 1)
            if(value == ENUMERATED_VALUES(internalValue))then
               self%head%ievtyp = internalValue
               return
            end if
         end do

         RAISE(value)
      end subroutine set_ievtyp
      function get_iqual(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_ENUMERATED_VALUE_MAX):: value

         Integer:: internalValue

         internalValue = self%head%iqual
         ASSERT(check_bound(internalValue, ENUMERATED_VALUES, 1))
         value = ENUMERATED_VALUES(internalValue)
      end function get_iqual

      function is_iqual_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         answer = &
            (self%head%iqual /= ENUMERATED_VALUE_UNDEFINED) &
            .and. check_bound(self%head%iqual, ENUMERATED_VALUES, 1)
      end function is_iqual_defined

      subroutine set_iqual(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         Integer:: internalValue

         do ALL_OF(internalValue, ENUMERATED_VALUES, 1)
            if(value == ENUMERATED_VALUES(internalValue))then
               self%head%iqual = internalValue
               return
            end if
         end do

         RAISE(value)
      end subroutine set_iqual
      function get_isynth(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_ENUMERATED_VALUE_MAX):: value

         Integer:: internalValue

         internalValue = self%head%isynth
         ASSERT(check_bound(internalValue, ENUMERATED_VALUES, 1))
         value = ENUMERATED_VALUES(internalValue)
      end function get_isynth

      function is_isynth_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         answer = &
            (self%head%isynth /= ENUMERATED_VALUE_UNDEFINED) &
            .and. check_bound(self%head%isynth, ENUMERATED_VALUES, 1)
      end function is_isynth_defined

      subroutine set_isynth(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         Integer:: internalValue

         do ALL_OF(internalValue, ENUMERATED_VALUES, 1)
            if(value == ENUMERATED_VALUES(internalValue))then
               self%head%isynth = internalValue
               return
            end if
         end do

         RAISE(value)
      end subroutine set_isynth
      function get_imagtyp(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_ENUMERATED_VALUE_MAX):: value

         Integer:: internalValue

         internalValue = self%head%imagtyp
         ASSERT(check_bound(internalValue, ENUMERATED_VALUES, 1))
         value = ENUMERATED_VALUES(internalValue)
      end function get_imagtyp

      function is_imagtyp_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         answer = &
            (self%head%imagtyp /= ENUMERATED_VALUE_UNDEFINED) &
            .and. check_bound(self%head%imagtyp, ENUMERATED_VALUES, 1)
      end function is_imagtyp_defined

      subroutine set_imagtyp(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         Integer:: internalValue

         do ALL_OF(internalValue, ENUMERATED_VALUES, 1)
            if(value == ENUMERATED_VALUES(internalValue))then
               self%head%imagtyp = internalValue
               return
            end if
         end do

         RAISE(value)
      end subroutine set_imagtyp
      function get_imagsrc(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_ENUMERATED_VALUE_MAX):: value

         Integer:: internalValue

         internalValue = self%head%imagsrc
         ASSERT(check_bound(internalValue, ENUMERATED_VALUES, 1))
         value = ENUMERATED_VALUES(internalValue)
      end function get_imagsrc

      function is_imagsrc_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         answer = &
            (self%head%imagsrc /= ENUMERATED_VALUE_UNDEFINED) &
            .and. check_bound(self%head%imagsrc, ENUMERATED_VALUES, 1)
      end function is_imagsrc_defined

      subroutine set_imagsrc(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         Integer:: internalValue

         do ALL_OF(internalValue, ENUMERATED_VALUES, 1)
            if(value == ENUMERATED_VALUES(internalValue))then
               self%head%imagsrc = internalValue
               return
            end if
         end do

         RAISE(value)
      end subroutine set_imagsrc
      function get_unused9(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_ENUMERATED_VALUE_MAX):: value

         Integer:: internalValue

         internalValue = self%head%unused9
         ASSERT(check_bound(internalValue, ENUMERATED_VALUES, 1))
         value = ENUMERATED_VALUES(internalValue)
      end function get_unused9

      function is_unused9_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         answer = &
            (self%head%unused9 /= ENUMERATED_VALUE_UNDEFINED) &
            .and. check_bound(self%head%unused9, ENUMERATED_VALUES, 1)
      end function is_unused9_defined

      subroutine set_unused9(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         Integer:: internalValue

         do ALL_OF(internalValue, ENUMERATED_VALUES, 1)
            if(value == ENUMERATED_VALUES(internalValue))then
               self%head%unused9 = internalValue
               return
            end if
         end do

         RAISE(value)
      end subroutine set_unused9
      function get_unused10(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_ENUMERATED_VALUE_MAX):: value

         Integer:: internalValue

         internalValue = self%head%unused10
         ASSERT(check_bound(internalValue, ENUMERATED_VALUES, 1))
         value = ENUMERATED_VALUES(internalValue)
      end function get_unused10

      function is_unused10_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         answer = &
            (self%head%unused10 /= ENUMERATED_VALUE_UNDEFINED) &
            .and. check_bound(self%head%unused10, ENUMERATED_VALUES, 1)
      end function is_unused10_defined

      subroutine set_unused10(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         Integer:: internalValue

         do ALL_OF(internalValue, ENUMERATED_VALUES, 1)
            if(value == ENUMERATED_VALUES(internalValue))then
               self%head%unused10 = internalValue
               return
            end if
         end do

         RAISE(value)
      end subroutine set_unused10
      function get_unused11(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_ENUMERATED_VALUE_MAX):: value

         Integer:: internalValue

         internalValue = self%head%unused11
         ASSERT(check_bound(internalValue, ENUMERATED_VALUES, 1))
         value = ENUMERATED_VALUES(internalValue)
      end function get_unused11

      function is_unused11_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         answer = &
            (self%head%unused11 /= ENUMERATED_VALUE_UNDEFINED) &
            .and. check_bound(self%head%unused11, ENUMERATED_VALUES, 1)
      end function is_unused11_defined

      subroutine set_unused11(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         Integer:: internalValue

         do ALL_OF(internalValue, ENUMERATED_VALUES, 1)
            if(value == ENUMERATED_VALUES(internalValue))then
               self%head%unused11 = internalValue
               return
            end if
         end do

         RAISE(value)
      end subroutine set_unused11
      function get_unused12(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_ENUMERATED_VALUE_MAX):: value

         Integer:: internalValue

         internalValue = self%head%unused12
         ASSERT(check_bound(internalValue, ENUMERATED_VALUES, 1))
         value = ENUMERATED_VALUES(internalValue)
      end function get_unused12

      function is_unused12_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         answer = &
            (self%head%unused12 /= ENUMERATED_VALUE_UNDEFINED) &
            .and. check_bound(self%head%unused12, ENUMERATED_VALUES, 1)
      end function is_unused12_defined

      subroutine set_unused12(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         Integer:: internalValue

         do ALL_OF(internalValue, ENUMERATED_VALUES, 1)
            if(value == ENUMERATED_VALUES(internalValue))then
               self%head%unused12 = internalValue
               return
            end if
         end do

         RAISE(value)
      end subroutine set_unused12
      function get_unused13(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_ENUMERATED_VALUE_MAX):: value

         Integer:: internalValue

         internalValue = self%head%unused13
         ASSERT(check_bound(internalValue, ENUMERATED_VALUES, 1))
         value = ENUMERATED_VALUES(internalValue)
      end function get_unused13

      function is_unused13_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         answer = &
            (self%head%unused13 /= ENUMERATED_VALUE_UNDEFINED) &
            .and. check_bound(self%head%unused13, ENUMERATED_VALUES, 1)
      end function is_unused13_defined

      subroutine set_unused13(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         Integer:: internalValue

         do ALL_OF(internalValue, ENUMERATED_VALUES, 1)
            if(value == ENUMERATED_VALUES(internalValue))then
               self%head%unused13 = internalValue
               return
            end if
         end do

         RAISE(value)
      end subroutine set_unused13
      function get_unused14(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_ENUMERATED_VALUE_MAX):: value

         Integer:: internalValue

         internalValue = self%head%unused14
         ASSERT(check_bound(internalValue, ENUMERATED_VALUES, 1))
         value = ENUMERATED_VALUES(internalValue)
      end function get_unused14

      function is_unused14_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         answer = &
            (self%head%unused14 /= ENUMERATED_VALUE_UNDEFINED) &
            .and. check_bound(self%head%unused14, ENUMERATED_VALUES, 1)
      end function is_unused14_defined

      subroutine set_unused14(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         Integer:: internalValue

         do ALL_OF(internalValue, ENUMERATED_VALUES, 1)
            if(value == ENUMERATED_VALUES(internalValue))then
               self%head%unused14 = internalValue
               return
            end if
         end do

         RAISE(value)
      end subroutine set_unused14
      function get_unused15(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_ENUMERATED_VALUE_MAX):: value

         Integer:: internalValue

         internalValue = self%head%unused15
         ASSERT(check_bound(internalValue, ENUMERATED_VALUES, 1))
         value = ENUMERATED_VALUES(internalValue)
      end function get_unused15

      function is_unused15_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         answer = &
            (self%head%unused15 /= ENUMERATED_VALUE_UNDEFINED) &
            .and. check_bound(self%head%unused15, ENUMERATED_VALUES, 1)
      end function is_unused15_defined

      subroutine set_unused15(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         Integer:: internalValue

         do ALL_OF(internalValue, ENUMERATED_VALUES, 1)
            if(value == ENUMERATED_VALUES(internalValue))then
               self%head%unused15 = internalValue
               return
            end if
         end do

         RAISE(value)
      end subroutine set_unused15
      function get_unused16(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_ENUMERATED_VALUE_MAX):: value

         Integer:: internalValue

         internalValue = self%head%unused16
         ASSERT(check_bound(internalValue, ENUMERATED_VALUES, 1))
         value = ENUMERATED_VALUES(internalValue)
      end function get_unused16

      function is_unused16_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         answer = &
            (self%head%unused16 /= ENUMERATED_VALUE_UNDEFINED) &
            .and. check_bound(self%head%unused16, ENUMERATED_VALUES, 1)
      end function is_unused16_defined

      subroutine set_unused16(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         Integer:: internalValue

         do ALL_OF(internalValue, ENUMERATED_VALUES, 1)
            if(value == ENUMERATED_VALUES(internalValue))then
               self%head%unused16 = internalValue
               return
            end if
         end do

         RAISE(value)
      end subroutine set_unused16

      function get_leven(self) result(value)
         type(Sac), intent(in):: self
         Logical:: value

         Integer:: internalValue

         internalValue = self%head%leven
         value = (internalValue == 1)
      end function get_leven

      function is_leven_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = ((self%head%leven == 1) .or. (self%head%leven == 0))
      end function is_leven_defined

      subroutine set_leven(self, value)
         type(Sac), intent(inout):: self
         Logical, intent(in):: value

         if(value)then
            self%head%leven = 1
         else
            self%head%leven = 0
         end if
      end subroutine set_leven
      function get_lpspol(self) result(value)
         type(Sac), intent(in):: self
         Logical:: value

         Integer:: internalValue

         internalValue = self%head%lpspol
         value = (internalValue == 1)
      end function get_lpspol

      function is_lpspol_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = ((self%head%lpspol == 1) .or. (self%head%lpspol == 0))
      end function is_lpspol_defined

      subroutine set_lpspol(self, value)
         type(Sac), intent(inout):: self
         Logical, intent(in):: value

         if(value)then
            self%head%lpspol = 1
         else
            self%head%lpspol = 0
         end if
      end subroutine set_lpspol
      function get_lovrok(self) result(value)
         type(Sac), intent(in):: self
         Logical:: value

         Integer:: internalValue

         internalValue = self%head%lovrok
         value = (internalValue == 1)
      end function get_lovrok

      function is_lovrok_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = ((self%head%lovrok == 1) .or. (self%head%lovrok == 0))
      end function is_lovrok_defined

      subroutine set_lovrok(self, value)
         type(Sac), intent(inout):: self
         Logical, intent(in):: value

         if(value)then
            self%head%lovrok = 1
         else
            self%head%lovrok = 0
         end if
      end subroutine set_lovrok
      function get_lcalda(self) result(value)
         type(Sac), intent(in):: self
         Logical:: value

         Integer:: internalValue

         internalValue = self%head%lcalda
         value = (internalValue == 1)
      end function get_lcalda

      function is_lcalda_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = ((self%head%lcalda == 1) .or. (self%head%lcalda == 0))
      end function is_lcalda_defined

      subroutine set_lcalda(self, value)
         type(Sac), intent(inout):: self
         Logical, intent(in):: value

         if(value)then
            self%head%lcalda = 1
         else
            self%head%lcalda = 0
         end if
      end subroutine set_lcalda
      function get_unused17(self) result(value)
         type(Sac), intent(in):: self
         Logical:: value

         Integer:: internalValue

         internalValue = self%head%unused17
         value = (internalValue == 1)
      end function get_unused17

      function is_unused17_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = ((self%head%unused17 == 1) .or. (self%head%unused17 == 0))
      end function is_unused17_defined

      subroutine set_unused17(self, value)
         type(Sac), intent(inout):: self
         Logical, intent(in):: value

         if(value)then
            self%head%unused17 = 1
         else
            self%head%unused17 = 0
         end if
      end subroutine set_unused17

      function get_kstnm(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_LONG_STRING):: value

         value = self%head%kstnm
      end function get_kstnm


      function is_kstnm_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%kstnm /= STRING_UNDEFINED)
      end function is_kstnm_defined

      subroutine set_kstnm(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_LONG_STRING)
         self%head%kstnm = value
      end subroutine set_kstnm
      function get_kevnm(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%kevnm
      end function get_kevnm


      function is_kevnm_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%kevnm /= STRING_UNDEFINED)
      end function is_kevnm_defined

      subroutine set_kevnm(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%kevnm = value
      end subroutine set_kevnm
      function get_khole(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%khole
      end function get_khole


      function is_khole_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%khole /= STRING_UNDEFINED)
      end function is_khole_defined

      subroutine set_khole(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%khole = value
      end subroutine set_khole
      function get_ko(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%ko
      end function get_ko


      function is_ko_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%ko /= STRING_UNDEFINED)
      end function is_ko_defined

      subroutine set_ko(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%ko = value
      end subroutine set_ko
      function get_ka(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%ka
      end function get_ka


      function is_ka_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%ka /= STRING_UNDEFINED)
      end function is_ka_defined

      subroutine set_ka(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%ka = value
      end subroutine set_ka
      function get_kt0(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%kt0
      end function get_kt0


      function is_kt0_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%kt0 /= STRING_UNDEFINED)
      end function is_kt0_defined

      subroutine set_kt0(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%kt0 = value
      end subroutine set_kt0
      function get_kt1(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%kt1
      end function get_kt1


      function is_kt1_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%kt1 /= STRING_UNDEFINED)
      end function is_kt1_defined

      subroutine set_kt1(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%kt1 = value
      end subroutine set_kt1
      function get_kt2(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%kt2
      end function get_kt2


      function is_kt2_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%kt2 /= STRING_UNDEFINED)
      end function is_kt2_defined

      subroutine set_kt2(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%kt2 = value
      end subroutine set_kt2
      function get_kt3(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%kt3
      end function get_kt3


      function is_kt3_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%kt3 /= STRING_UNDEFINED)
      end function is_kt3_defined

      subroutine set_kt3(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%kt3 = value
      end subroutine set_kt3
      function get_kt4(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%kt4
      end function get_kt4


      function is_kt4_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%kt4 /= STRING_UNDEFINED)
      end function is_kt4_defined

      subroutine set_kt4(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%kt4 = value
      end subroutine set_kt4
      function get_kt5(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%kt5
      end function get_kt5


      function is_kt5_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%kt5 /= STRING_UNDEFINED)
      end function is_kt5_defined

      subroutine set_kt5(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%kt5 = value
      end subroutine set_kt5
      function get_kt6(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%kt6
      end function get_kt6


      function is_kt6_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%kt6 /= STRING_UNDEFINED)
      end function is_kt6_defined

      subroutine set_kt6(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%kt6 = value
      end subroutine set_kt6
      function get_kt7(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%kt7
      end function get_kt7


      function is_kt7_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%kt7 /= STRING_UNDEFINED)
      end function is_kt7_defined

      subroutine set_kt7(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%kt7 = value
      end subroutine set_kt7
      function get_kt8(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%kt8
      end function get_kt8


      function is_kt8_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%kt8 /= STRING_UNDEFINED)
      end function is_kt8_defined

      subroutine set_kt8(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%kt8 = value
      end subroutine set_kt8
      function get_kt9(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%kt9
      end function get_kt9


      function is_kt9_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%kt9 /= STRING_UNDEFINED)
      end function is_kt9_defined

      subroutine set_kt9(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%kt9 = value
      end subroutine set_kt9
      function get_kf(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%kf
      end function get_kf


      function is_kf_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%kf /= STRING_UNDEFINED)
      end function is_kf_defined

      subroutine set_kf(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%kf = value
      end subroutine set_kf
      function get_kuser0(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%kuser0
      end function get_kuser0


      function is_kuser0_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%kuser0 /= STRING_UNDEFINED)
      end function is_kuser0_defined

      subroutine set_kuser0(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%kuser0 = value
      end subroutine set_kuser0
      function get_kuser1(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%kuser1
      end function get_kuser1


      function is_kuser1_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%kuser1 /= STRING_UNDEFINED)
      end function is_kuser1_defined

      subroutine set_kuser1(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%kuser1 = value
      end subroutine set_kuser1
      function get_kuser2(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%kuser2
      end function get_kuser2


      function is_kuser2_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%kuser2 /= STRING_UNDEFINED)
      end function is_kuser2_defined

      subroutine set_kuser2(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%kuser2 = value
      end subroutine set_kuser2
      function get_kcmpnm(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%kcmpnm
      end function get_kcmpnm


      function is_kcmpnm_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%kcmpnm /= STRING_UNDEFINED)
      end function is_kcmpnm_defined

      subroutine set_kcmpnm(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%kcmpnm = value
      end subroutine set_kcmpnm
      function get_knetwk(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%knetwk
      end function get_knetwk


      function is_knetwk_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%knetwk /= STRING_UNDEFINED)
      end function is_knetwk_defined

      subroutine set_knetwk(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%knetwk = value
      end subroutine set_knetwk
      function get_kdatrd(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%kdatrd
      end function get_kdatrd


      function is_kdatrd_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%kdatrd /= STRING_UNDEFINED)
      end function is_kdatrd_defined

      subroutine set_kdatrd(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%kdatrd = value
      end subroutine set_kdatrd
      function get_kinst(self) result(value)
         type(Sac), intent(in):: self
         Character(len = LEN_SHORT_STRING):: value

         value = self%head%kinst
      end function get_kinst


      function is_kinst_defined(self) result(answer)
         type(Sac), intent(in):: self
         Logical:: answer

         answer = (self%head%kinst /= STRING_UNDEFINED)
      end function is_kinst_defined

      subroutine set_kinst(self, value)
         type(Sac), intent(inout):: self
         Character(len = *), intent(in):: value

         ASSERT(len_trim(value) <= LEN_SHORT_STRING)
         self%head%kinst = value
      end subroutine set_kinst
end module sac_lib
