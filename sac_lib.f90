! LICENSE: GPL Ver. 3
! REFERENCE: http://www.iris.edu/software/sac/manual/file_format.html
! COMPILE: gfortran -ffree-line-length-none -fmax-identifier-length=63 -C -c sac_lib.F90
!
! This module provides
! - I/O routines for a binary SAC file
! - user defined types to hold a SAC data
! - setters and getters for the Sac type
!
! This module provides few consistency check for header variables.
! You should be careful if you change number of data points, time interval, data type, origin time and so on.
module sac_lib
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: &
      INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT, &
      REAL32, INT32, INT64
   use, non_intrinsic:: character_lib, only: s, operator(+), replace
   implicit none
   private
   public:: load, dump, dump_json
   public:: set_data, get_data
      public:: set_data_itime, get_data_itime
      public:: set_data_ixy, get_data_ixy
      public:: set_data_iamph, get_data_iamph
      public:: set_data_irlim, get_data_irlim
      public:: set_data_ixyz, get_data_ixyz
      public:: set_delta, is_delta_defined, get_delta
      public:: set_depmin, is_depmin_defined, get_depmin
      public:: set_depmax, is_depmax_defined, get_depmax
      public:: set_scale, is_scale_defined, get_scale
      public:: set_odelta, is_odelta_defined, get_odelta
      public:: set_b, is_b_defined, get_b
      public:: set_e, is_e_defined, get_e
      public:: set_o, is_o_defined, get_o
      public:: set_a, is_a_defined, get_a
      public:: set_fmt, is_fmt_defined, get_fmt
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
      public:: set_sb, is_sb_defined, get_sb
      public:: set_sdelta, is_sdelta_defined, get_sdelta
      public:: set_depmen, is_depmen_defined, get_depmen
      public:: set_cmpaz, is_cmpaz_defined, get_cmpaz
      public:: set_cmpinc, is_cmpinc_defined, get_cmpinc
      public:: set_xminimum, is_xminimum_defined, get_xminimum
      public:: set_xmaximum, is_xmaximum_defined, get_xmaximum
      public:: set_yminimum, is_yminimum_defined, get_yminimum
      public:: set_ymaximum, is_ymaximum_defined, get_ymaximum
      public:: set_fhdr64, is_fhdr64_defined, get_fhdr64
      public:: set_fhdr65, is_fhdr65_defined, get_fhdr65
      public:: set_fhdr66, is_fhdr66_defined, get_fhdr66
      public:: set_fhdr67, is_fhdr67_defined, get_fhdr67
      public:: set_fhdr68, is_fhdr68_defined, get_fhdr68
      public:: set_fhdr69, is_fhdr69_defined, get_fhdr69
      public:: set_fhdr70, is_fhdr70_defined, get_fhdr70
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
      public:: set_nhdr56, is_nhdr56_defined, get_nhdr56
      public:: set_iftype, is_iftype_defined, get_iftype
      public:: set_idep, is_idep_defined, get_idep
      public:: set_iztype, is_iztype_defined, get_iztype
      public:: set_ihdr4, is_ihdr4_defined, get_ihdr4
      public:: set_iinst, is_iinst_defined, get_iinst
      public:: set_istreg, is_istreg_defined, get_istreg
      public:: set_ievreg, is_ievreg_defined, get_ievreg
      public:: set_ievtyp, is_ievtyp_defined, get_ievtyp
      public:: set_iqual, is_iqual_defined, get_iqual
      public:: set_isynth, is_isynth_defined, get_isynth
      public:: set_imagtyp, is_imagtyp_defined, get_imagtyp
      public:: set_imagsrc, is_imagsrc_defined, get_imagsrc
      public:: set_ihdr13, is_ihdr13_defined, get_ihdr13
      public:: set_ihdr14, is_ihdr14_defined, get_ihdr14
      public:: set_ihdr15, is_ihdr15_defined, get_ihdr15
      public:: set_ihdr16, is_ihdr16_defined, get_ihdr16
      public:: set_ihdr17, is_ihdr17_defined, get_ihdr17
      public:: set_ihdr18, is_ihdr18_defined, get_ihdr18
      public:: set_ihdr19, is_ihdr19_defined, get_ihdr19
      public:: set_ihdr20, is_ihdr20_defined, get_ihdr20
      public:: set_leven, is_leven_defined, get_leven
      public:: set_lpspol, is_lpspol_defined, get_lpspol
      public:: set_lovrok, is_lovrok_defined, get_lovrok
      public:: set_lcalda, is_lcalda_defined, get_lcalda
      public:: set_lhdr5, is_lhdr5_defined, get_lhdr5
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
   interface load
      module procedure load
   end interface load
   interface dump
      module procedure dump
   end interface dump
   Integer(kind=INT32), parameter, public:: SAC_INTEGER_KIND = INT32
   Integer(kind=INT32), parameter, public:: SAC_REAL_KIND = REAL32
   Integer(kind=SAC_INTEGER_KIND), parameter, public:: LEN_SHORT_STRING = 8
   Integer(kind=SAC_INTEGER_KIND), parameter, public:: LEN_LONG_STRING = 2*LEN_SHORT_STRING
   Integer(kind=SAC_INTEGER_KIND), parameter, public:: LEN_ENUMERATED_VALUE_MAX = 8
   Integer(kind=SAC_INTEGER_KIND), parameter, public:: INTEGER_UNDEFINED = -12345
   Integer(kind=SAC_INTEGER_KIND), parameter, public:: ENUMERATED_VALUE_UNDEFINED = -12345
   Real(kind=SAC_REAL_KIND), parameter, public:: FLOAT_UNDEFINED = -12345
   Character(len=*), parameter, public:: STRING_UNDEFINED = '-12345'
   Character(len=LEN_ENUMERATED_VALUE_MAX), parameter, public:: ENUMERATED_VALUES(1:86) = [ &
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
   Integer(kind=SAC_INTEGER_KIND), parameter, public:: NVHDR_DEFAULT = 6
   Integer(kind=SAC_INTEGER_KIND), parameter, public:: SAC_TRUE = 1, SAC_FALSE = 0
   type:: Object
   end type Object
   ! npts, nvhdr, b, e, iftype, leven and delta are required variables.
   type, extends(Object), public:: SacMeta
      private
         Real(kind=SAC_REAL_KIND):: delta = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: depmin = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: depmax = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: scale = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: odelta = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: e = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: o = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: a = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: fmt = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: t0 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: t1 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: t2 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: t3 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: t4 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: t5 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: t6 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: t7 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: t8 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: t9 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: f = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: resp0 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: resp1 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: resp2 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: resp3 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: resp4 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: resp5 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: resp6 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: resp7 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: resp8 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: resp9 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: stla = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: stlo = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: stel = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: stdp = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: evla = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: evlo = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: evel = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: evdp = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: mag = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: user0 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: user1 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: user2 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: user3 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: user4 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: user5 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: user6 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: user7 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: user8 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: user9 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: dist = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: az = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: baz = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: gcarc = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: sb = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: sdelta = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: depmen = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: cmpaz = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: cmpinc = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: xminimum = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: xmaximum = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: yminimum = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: ymaximum = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: fhdr64 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: fhdr65 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: fhdr66 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: fhdr67 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: fhdr68 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: fhdr69 = FLOAT_UNDEFINED
         Real(kind=SAC_REAL_KIND):: fhdr70 = FLOAT_UNDEFINED
      Real(kind=SAC_REAL_KIND):: b = 0
         Integer(kind=SAC_INTEGER_KIND):: nzyear = INTEGER_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: nzjday = INTEGER_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: nzhour = INTEGER_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: nzmin = INTEGER_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: nzsec = INTEGER_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: nzmsec = INTEGER_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: norid = INTEGER_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: nevid = INTEGER_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: npts = INTEGER_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: nsnpts = INTEGER_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: nwfid = INTEGER_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: nxsize = INTEGER_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: nysize = INTEGER_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: nhdr56 = INTEGER_UNDEFINED
      Integer(kind=SAC_INTEGER_KIND):: nvhdr = NVHDR_DEFAULT
         Integer(kind=SAC_INTEGER_KIND):: iftype = ENUMERATED_VALUE_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: idep = ENUMERATED_VALUE_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: iztype = ENUMERATED_VALUE_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: ihdr4 = ENUMERATED_VALUE_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: iinst = ENUMERATED_VALUE_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: istreg = ENUMERATED_VALUE_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: ievreg = ENUMERATED_VALUE_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: ievtyp = ENUMERATED_VALUE_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: iqual = ENUMERATED_VALUE_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: isynth = ENUMERATED_VALUE_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: imagtyp = ENUMERATED_VALUE_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: imagsrc = ENUMERATED_VALUE_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: ihdr13 = ENUMERATED_VALUE_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: ihdr14 = ENUMERATED_VALUE_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: ihdr15 = ENUMERATED_VALUE_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: ihdr16 = ENUMERATED_VALUE_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: ihdr17 = ENUMERATED_VALUE_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: ihdr18 = ENUMERATED_VALUE_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: ihdr19 = ENUMERATED_VALUE_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: ihdr20 = ENUMERATED_VALUE_UNDEFINED
         Integer(kind=SAC_INTEGER_KIND):: leven = SAC_FALSE
         Integer(kind=SAC_INTEGER_KIND):: lpspol = SAC_FALSE
         Integer(kind=SAC_INTEGER_KIND):: lovrok = SAC_FALSE
         Integer(kind=SAC_INTEGER_KIND):: lcalda = SAC_FALSE
         Integer(kind=SAC_INTEGER_KIND):: lhdr5 = SAC_FALSE
         Character(len=LEN_SHORT_STRING):: kstnm = STRING_UNDEFINED
         Character(len=LEN_LONG_STRING):: kevnm = STRING_UNDEFINED
         Character(len=LEN_SHORT_STRING):: khole = STRING_UNDEFINED
         Character(len=LEN_SHORT_STRING):: ko = STRING_UNDEFINED
         Character(len=LEN_SHORT_STRING):: ka = STRING_UNDEFINED
         Character(len=LEN_SHORT_STRING):: kt0 = STRING_UNDEFINED
         Character(len=LEN_SHORT_STRING):: kt1 = STRING_UNDEFINED
         Character(len=LEN_SHORT_STRING):: kt2 = STRING_UNDEFINED
         Character(len=LEN_SHORT_STRING):: kt3 = STRING_UNDEFINED
         Character(len=LEN_SHORT_STRING):: kt4 = STRING_UNDEFINED
         Character(len=LEN_SHORT_STRING):: kt5 = STRING_UNDEFINED
         Character(len=LEN_SHORT_STRING):: kt6 = STRING_UNDEFINED
         Character(len=LEN_SHORT_STRING):: kt7 = STRING_UNDEFINED
         Character(len=LEN_SHORT_STRING):: kt8 = STRING_UNDEFINED
         Character(len=LEN_SHORT_STRING):: kt9 = STRING_UNDEFINED
         Character(len=LEN_SHORT_STRING):: kf = STRING_UNDEFINED
         Character(len=LEN_SHORT_STRING):: kuser0 = STRING_UNDEFINED
         Character(len=LEN_SHORT_STRING):: kuser1 = STRING_UNDEFINED
         Character(len=LEN_SHORT_STRING):: kuser2 = STRING_UNDEFINED
         Character(len=LEN_SHORT_STRING):: kcmpnm = STRING_UNDEFINED
         Character(len=LEN_SHORT_STRING):: knetwk = STRING_UNDEFINED
         Character(len=LEN_SHORT_STRING):: kdatrd = STRING_UNDEFINED
         Character(len=LEN_SHORT_STRING):: kinst = STRING_UNDEFINED
   end type SacMeta
   type, extends(Object), public:: SacData
      private
      Real(kind=SAC_REAL_KIND), allocatable:: &
         itime(:), &
         ixy(:, :), &
         iamph(:, :), &
         ixyz(:, :)
      Complex(kind=SAC_REAL_KIND), allocatable:: irlim(:)
   end type SacData
   type, extends(Object), public:: Sac
      ! I left these parameters public so that a head or body of a SAC data can easily be copied to another SAC data.
      type(SacMeta):: meta
      type(SacData):: data
   end type Sac
   interface set_data
      module procedure set_data_itime
      module procedure set_data_irlim
      module procedure set_data_ixy_or_iamph_or_ixyz
   end interface set_data
   interface get_data
      module procedure get_data_itime_
      module procedure get_data_irlim_
      module procedure get_data_ixy_or_iamph_or_ixyz_
   end interface get_data
      interface get_delta
         module procedure get_delta_i_v
         module procedure get_delta_v_i
         module procedure get_delta_v
      end interface get_delta
      interface get_depmin
         module procedure get_depmin_i_v
         module procedure get_depmin_v_i
         module procedure get_depmin_v
      end interface get_depmin
      interface get_depmax
         module procedure get_depmax_i_v
         module procedure get_depmax_v_i
         module procedure get_depmax_v
      end interface get_depmax
      interface get_scale
         module procedure get_scale_i_v
         module procedure get_scale_v_i
         module procedure get_scale_v
      end interface get_scale
      interface get_odelta
         module procedure get_odelta_i_v
         module procedure get_odelta_v_i
         module procedure get_odelta_v
      end interface get_odelta
      interface get_b
         module procedure get_b_i_v
         module procedure get_b_v_i
         module procedure get_b_v
      end interface get_b
      interface get_e
         module procedure get_e_i_v
         module procedure get_e_v_i
         module procedure get_e_v
      end interface get_e
      interface get_o
         module procedure get_o_i_v
         module procedure get_o_v_i
         module procedure get_o_v
      end interface get_o
      interface get_a
         module procedure get_a_i_v
         module procedure get_a_v_i
         module procedure get_a_v
      end interface get_a
      interface get_fmt
         module procedure get_fmt_i_v
         module procedure get_fmt_v_i
         module procedure get_fmt_v
      end interface get_fmt
      interface get_t0
         module procedure get_t0_i_v
         module procedure get_t0_v_i
         module procedure get_t0_v
      end interface get_t0
      interface get_t1
         module procedure get_t1_i_v
         module procedure get_t1_v_i
         module procedure get_t1_v
      end interface get_t1
      interface get_t2
         module procedure get_t2_i_v
         module procedure get_t2_v_i
         module procedure get_t2_v
      end interface get_t2
      interface get_t3
         module procedure get_t3_i_v
         module procedure get_t3_v_i
         module procedure get_t3_v
      end interface get_t3
      interface get_t4
         module procedure get_t4_i_v
         module procedure get_t4_v_i
         module procedure get_t4_v
      end interface get_t4
      interface get_t5
         module procedure get_t5_i_v
         module procedure get_t5_v_i
         module procedure get_t5_v
      end interface get_t5
      interface get_t6
         module procedure get_t6_i_v
         module procedure get_t6_v_i
         module procedure get_t6_v
      end interface get_t6
      interface get_t7
         module procedure get_t7_i_v
         module procedure get_t7_v_i
         module procedure get_t7_v
      end interface get_t7
      interface get_t8
         module procedure get_t8_i_v
         module procedure get_t8_v_i
         module procedure get_t8_v
      end interface get_t8
      interface get_t9
         module procedure get_t9_i_v
         module procedure get_t9_v_i
         module procedure get_t9_v
      end interface get_t9
      interface get_f
         module procedure get_f_i_v
         module procedure get_f_v_i
         module procedure get_f_v
      end interface get_f
      interface get_resp0
         module procedure get_resp0_i_v
         module procedure get_resp0_v_i
         module procedure get_resp0_v
      end interface get_resp0
      interface get_resp1
         module procedure get_resp1_i_v
         module procedure get_resp1_v_i
         module procedure get_resp1_v
      end interface get_resp1
      interface get_resp2
         module procedure get_resp2_i_v
         module procedure get_resp2_v_i
         module procedure get_resp2_v
      end interface get_resp2
      interface get_resp3
         module procedure get_resp3_i_v
         module procedure get_resp3_v_i
         module procedure get_resp3_v
      end interface get_resp3
      interface get_resp4
         module procedure get_resp4_i_v
         module procedure get_resp4_v_i
         module procedure get_resp4_v
      end interface get_resp4
      interface get_resp5
         module procedure get_resp5_i_v
         module procedure get_resp5_v_i
         module procedure get_resp5_v
      end interface get_resp5
      interface get_resp6
         module procedure get_resp6_i_v
         module procedure get_resp6_v_i
         module procedure get_resp6_v
      end interface get_resp6
      interface get_resp7
         module procedure get_resp7_i_v
         module procedure get_resp7_v_i
         module procedure get_resp7_v
      end interface get_resp7
      interface get_resp8
         module procedure get_resp8_i_v
         module procedure get_resp8_v_i
         module procedure get_resp8_v
      end interface get_resp8
      interface get_resp9
         module procedure get_resp9_i_v
         module procedure get_resp9_v_i
         module procedure get_resp9_v
      end interface get_resp9
      interface get_stla
         module procedure get_stla_i_v
         module procedure get_stla_v_i
         module procedure get_stla_v
      end interface get_stla
      interface get_stlo
         module procedure get_stlo_i_v
         module procedure get_stlo_v_i
         module procedure get_stlo_v
      end interface get_stlo
      interface get_stel
         module procedure get_stel_i_v
         module procedure get_stel_v_i
         module procedure get_stel_v
      end interface get_stel
      interface get_stdp
         module procedure get_stdp_i_v
         module procedure get_stdp_v_i
         module procedure get_stdp_v
      end interface get_stdp
      interface get_evla
         module procedure get_evla_i_v
         module procedure get_evla_v_i
         module procedure get_evla_v
      end interface get_evla
      interface get_evlo
         module procedure get_evlo_i_v
         module procedure get_evlo_v_i
         module procedure get_evlo_v
      end interface get_evlo
      interface get_evel
         module procedure get_evel_i_v
         module procedure get_evel_v_i
         module procedure get_evel_v
      end interface get_evel
      interface get_evdp
         module procedure get_evdp_i_v
         module procedure get_evdp_v_i
         module procedure get_evdp_v
      end interface get_evdp
      interface get_mag
         module procedure get_mag_i_v
         module procedure get_mag_v_i
         module procedure get_mag_v
      end interface get_mag
      interface get_user0
         module procedure get_user0_i_v
         module procedure get_user0_v_i
         module procedure get_user0_v
      end interface get_user0
      interface get_user1
         module procedure get_user1_i_v
         module procedure get_user1_v_i
         module procedure get_user1_v
      end interface get_user1
      interface get_user2
         module procedure get_user2_i_v
         module procedure get_user2_v_i
         module procedure get_user2_v
      end interface get_user2
      interface get_user3
         module procedure get_user3_i_v
         module procedure get_user3_v_i
         module procedure get_user3_v
      end interface get_user3
      interface get_user4
         module procedure get_user4_i_v
         module procedure get_user4_v_i
         module procedure get_user4_v
      end interface get_user4
      interface get_user5
         module procedure get_user5_i_v
         module procedure get_user5_v_i
         module procedure get_user5_v
      end interface get_user5
      interface get_user6
         module procedure get_user6_i_v
         module procedure get_user6_v_i
         module procedure get_user6_v
      end interface get_user6
      interface get_user7
         module procedure get_user7_i_v
         module procedure get_user7_v_i
         module procedure get_user7_v
      end interface get_user7
      interface get_user8
         module procedure get_user8_i_v
         module procedure get_user8_v_i
         module procedure get_user8_v
      end interface get_user8
      interface get_user9
         module procedure get_user9_i_v
         module procedure get_user9_v_i
         module procedure get_user9_v
      end interface get_user9
      interface get_dist
         module procedure get_dist_i_v
         module procedure get_dist_v_i
         module procedure get_dist_v
      end interface get_dist
      interface get_az
         module procedure get_az_i_v
         module procedure get_az_v_i
         module procedure get_az_v
      end interface get_az
      interface get_baz
         module procedure get_baz_i_v
         module procedure get_baz_v_i
         module procedure get_baz_v
      end interface get_baz
      interface get_gcarc
         module procedure get_gcarc_i_v
         module procedure get_gcarc_v_i
         module procedure get_gcarc_v
      end interface get_gcarc
      interface get_sb
         module procedure get_sb_i_v
         module procedure get_sb_v_i
         module procedure get_sb_v
      end interface get_sb
      interface get_sdelta
         module procedure get_sdelta_i_v
         module procedure get_sdelta_v_i
         module procedure get_sdelta_v
      end interface get_sdelta
      interface get_depmen
         module procedure get_depmen_i_v
         module procedure get_depmen_v_i
         module procedure get_depmen_v
      end interface get_depmen
      interface get_cmpaz
         module procedure get_cmpaz_i_v
         module procedure get_cmpaz_v_i
         module procedure get_cmpaz_v
      end interface get_cmpaz
      interface get_cmpinc
         module procedure get_cmpinc_i_v
         module procedure get_cmpinc_v_i
         module procedure get_cmpinc_v
      end interface get_cmpinc
      interface get_xminimum
         module procedure get_xminimum_i_v
         module procedure get_xminimum_v_i
         module procedure get_xminimum_v
      end interface get_xminimum
      interface get_xmaximum
         module procedure get_xmaximum_i_v
         module procedure get_xmaximum_v_i
         module procedure get_xmaximum_v
      end interface get_xmaximum
      interface get_yminimum
         module procedure get_yminimum_i_v
         module procedure get_yminimum_v_i
         module procedure get_yminimum_v
      end interface get_yminimum
      interface get_ymaximum
         module procedure get_ymaximum_i_v
         module procedure get_ymaximum_v_i
         module procedure get_ymaximum_v
      end interface get_ymaximum
      interface get_fhdr64
         module procedure get_fhdr64_i_v
         module procedure get_fhdr64_v_i
         module procedure get_fhdr64_v
      end interface get_fhdr64
      interface get_fhdr65
         module procedure get_fhdr65_i_v
         module procedure get_fhdr65_v_i
         module procedure get_fhdr65_v
      end interface get_fhdr65
      interface get_fhdr66
         module procedure get_fhdr66_i_v
         module procedure get_fhdr66_v_i
         module procedure get_fhdr66_v
      end interface get_fhdr66
      interface get_fhdr67
         module procedure get_fhdr67_i_v
         module procedure get_fhdr67_v_i
         module procedure get_fhdr67_v
      end interface get_fhdr67
      interface get_fhdr68
         module procedure get_fhdr68_i_v
         module procedure get_fhdr68_v_i
         module procedure get_fhdr68_v
      end interface get_fhdr68
      interface get_fhdr69
         module procedure get_fhdr69_i_v
         module procedure get_fhdr69_v_i
         module procedure get_fhdr69_v
      end interface get_fhdr69
      interface get_fhdr70
         module procedure get_fhdr70_i_v
         module procedure get_fhdr70_v_i
         module procedure get_fhdr70_v
      end interface get_fhdr70
      interface get_nzyear
         module procedure get_nzyear_i_v
         module procedure get_nzyear_v_i
         module procedure get_nzyear_v
      end interface get_nzyear
      interface get_nzjday
         module procedure get_nzjday_i_v
         module procedure get_nzjday_v_i
         module procedure get_nzjday_v
      end interface get_nzjday
      interface get_nzhour
         module procedure get_nzhour_i_v
         module procedure get_nzhour_v_i
         module procedure get_nzhour_v
      end interface get_nzhour
      interface get_nzmin
         module procedure get_nzmin_i_v
         module procedure get_nzmin_v_i
         module procedure get_nzmin_v
      end interface get_nzmin
      interface get_nzsec
         module procedure get_nzsec_i_v
         module procedure get_nzsec_v_i
         module procedure get_nzsec_v
      end interface get_nzsec
      interface get_nzmsec
         module procedure get_nzmsec_i_v
         module procedure get_nzmsec_v_i
         module procedure get_nzmsec_v
      end interface get_nzmsec
      interface get_nvhdr
         module procedure get_nvhdr_i_v
         module procedure get_nvhdr_v_i
         module procedure get_nvhdr_v
      end interface get_nvhdr
      interface get_norid
         module procedure get_norid_i_v
         module procedure get_norid_v_i
         module procedure get_norid_v
      end interface get_norid
      interface get_nevid
         module procedure get_nevid_i_v
         module procedure get_nevid_v_i
         module procedure get_nevid_v
      end interface get_nevid
      interface get_npts
         module procedure get_npts_i_v
         module procedure get_npts_v_i
         module procedure get_npts_v
      end interface get_npts
      interface get_nsnpts
         module procedure get_nsnpts_i_v
         module procedure get_nsnpts_v_i
         module procedure get_nsnpts_v
      end interface get_nsnpts
      interface get_nwfid
         module procedure get_nwfid_i_v
         module procedure get_nwfid_v_i
         module procedure get_nwfid_v
      end interface get_nwfid
      interface get_nxsize
         module procedure get_nxsize_i_v
         module procedure get_nxsize_v_i
         module procedure get_nxsize_v
      end interface get_nxsize
      interface get_nysize
         module procedure get_nysize_i_v
         module procedure get_nysize_v_i
         module procedure get_nysize_v
      end interface get_nysize
      interface get_nhdr56
         module procedure get_nhdr56_i_v
         module procedure get_nhdr56_v_i
         module procedure get_nhdr56_v
      end interface get_nhdr56
      interface get_iftype
         module procedure get_iftype_i_v
         module procedure get_iftype_v_i
         module procedure get_iftype_v
      end interface get_iftype
      interface get_idep
         module procedure get_idep_i_v
         module procedure get_idep_v_i
         module procedure get_idep_v
      end interface get_idep
      interface get_iztype
         module procedure get_iztype_i_v
         module procedure get_iztype_v_i
         module procedure get_iztype_v
      end interface get_iztype
      interface get_ihdr4
         module procedure get_ihdr4_i_v
         module procedure get_ihdr4_v_i
         module procedure get_ihdr4_v
      end interface get_ihdr4
      interface get_iinst
         module procedure get_iinst_i_v
         module procedure get_iinst_v_i
         module procedure get_iinst_v
      end interface get_iinst
      interface get_istreg
         module procedure get_istreg_i_v
         module procedure get_istreg_v_i
         module procedure get_istreg_v
      end interface get_istreg
      interface get_ievreg
         module procedure get_ievreg_i_v
         module procedure get_ievreg_v_i
         module procedure get_ievreg_v
      end interface get_ievreg
      interface get_ievtyp
         module procedure get_ievtyp_i_v
         module procedure get_ievtyp_v_i
         module procedure get_ievtyp_v
      end interface get_ievtyp
      interface get_iqual
         module procedure get_iqual_i_v
         module procedure get_iqual_v_i
         module procedure get_iqual_v
      end interface get_iqual
      interface get_isynth
         module procedure get_isynth_i_v
         module procedure get_isynth_v_i
         module procedure get_isynth_v
      end interface get_isynth
      interface get_imagtyp
         module procedure get_imagtyp_i_v
         module procedure get_imagtyp_v_i
         module procedure get_imagtyp_v
      end interface get_imagtyp
      interface get_imagsrc
         module procedure get_imagsrc_i_v
         module procedure get_imagsrc_v_i
         module procedure get_imagsrc_v
      end interface get_imagsrc
      interface get_ihdr13
         module procedure get_ihdr13_i_v
         module procedure get_ihdr13_v_i
         module procedure get_ihdr13_v
      end interface get_ihdr13
      interface get_ihdr14
         module procedure get_ihdr14_i_v
         module procedure get_ihdr14_v_i
         module procedure get_ihdr14_v
      end interface get_ihdr14
      interface get_ihdr15
         module procedure get_ihdr15_i_v
         module procedure get_ihdr15_v_i
         module procedure get_ihdr15_v
      end interface get_ihdr15
      interface get_ihdr16
         module procedure get_ihdr16_i_v
         module procedure get_ihdr16_v_i
         module procedure get_ihdr16_v
      end interface get_ihdr16
      interface get_ihdr17
         module procedure get_ihdr17_i_v
         module procedure get_ihdr17_v_i
         module procedure get_ihdr17_v
      end interface get_ihdr17
      interface get_ihdr18
         module procedure get_ihdr18_i_v
         module procedure get_ihdr18_v_i
         module procedure get_ihdr18_v
      end interface get_ihdr18
      interface get_ihdr19
         module procedure get_ihdr19_i_v
         module procedure get_ihdr19_v_i
         module procedure get_ihdr19_v
      end interface get_ihdr19
      interface get_ihdr20
         module procedure get_ihdr20_i_v
         module procedure get_ihdr20_v_i
         module procedure get_ihdr20_v
      end interface get_ihdr20
      interface get_kstnm
         module procedure get_kstnm_i_v
         module procedure get_kstnm_v_i
         module procedure get_kstnm_v
      end interface get_kstnm
      interface get_kevnm
         module procedure get_kevnm_i_v
         module procedure get_kevnm_v_i
         module procedure get_kevnm_v
      end interface get_kevnm
      interface get_khole
         module procedure get_khole_i_v
         module procedure get_khole_v_i
         module procedure get_khole_v
      end interface get_khole
      interface get_ko
         module procedure get_ko_i_v
         module procedure get_ko_v_i
         module procedure get_ko_v
      end interface get_ko
      interface get_ka
         module procedure get_ka_i_v
         module procedure get_ka_v_i
         module procedure get_ka_v
      end interface get_ka
      interface get_kt0
         module procedure get_kt0_i_v
         module procedure get_kt0_v_i
         module procedure get_kt0_v
      end interface get_kt0
      interface get_kt1
         module procedure get_kt1_i_v
         module procedure get_kt1_v_i
         module procedure get_kt1_v
      end interface get_kt1
      interface get_kt2
         module procedure get_kt2_i_v
         module procedure get_kt2_v_i
         module procedure get_kt2_v
      end interface get_kt2
      interface get_kt3
         module procedure get_kt3_i_v
         module procedure get_kt3_v_i
         module procedure get_kt3_v
      end interface get_kt3
      interface get_kt4
         module procedure get_kt4_i_v
         module procedure get_kt4_v_i
         module procedure get_kt4_v
      end interface get_kt4
      interface get_kt5
         module procedure get_kt5_i_v
         module procedure get_kt5_v_i
         module procedure get_kt5_v
      end interface get_kt5
      interface get_kt6
         module procedure get_kt6_i_v
         module procedure get_kt6_v_i
         module procedure get_kt6_v
      end interface get_kt6
      interface get_kt7
         module procedure get_kt7_i_v
         module procedure get_kt7_v_i
         module procedure get_kt7_v
      end interface get_kt7
      interface get_kt8
         module procedure get_kt8_i_v
         module procedure get_kt8_v_i
         module procedure get_kt8_v
      end interface get_kt8
      interface get_kt9
         module procedure get_kt9_i_v
         module procedure get_kt9_v_i
         module procedure get_kt9_v
      end interface get_kt9
      interface get_kf
         module procedure get_kf_i_v
         module procedure get_kf_v_i
         module procedure get_kf_v
      end interface get_kf
      interface get_kuser0
         module procedure get_kuser0_i_v
         module procedure get_kuser0_v_i
         module procedure get_kuser0_v
      end interface get_kuser0
      interface get_kuser1
         module procedure get_kuser1_i_v
         module procedure get_kuser1_v_i
         module procedure get_kuser1_v
      end interface get_kuser1
      interface get_kuser2
         module procedure get_kuser2_i_v
         module procedure get_kuser2_v_i
         module procedure get_kuser2_v
      end interface get_kuser2
      interface get_kcmpnm
         module procedure get_kcmpnm_i_v
         module procedure get_kcmpnm_v_i
         module procedure get_kcmpnm_v
      end interface get_kcmpnm
      interface get_knetwk
         module procedure get_knetwk_i_v
         module procedure get_knetwk_v_i
         module procedure get_knetwk_v
      end interface get_knetwk
      interface get_kdatrd
         module procedure get_kdatrd_i_v
         module procedure get_kdatrd_v_i
         module procedure get_kdatrd_v
      end interface get_kdatrd
      interface get_kinst
         module procedure get_kinst_i_v
         module procedure get_kinst_v_i
         module procedure get_kinst_v
      end interface get_kinst
      interface get_leven
         module procedure get_leven_i_v
         module procedure get_leven_v
      end interface get_leven
      interface get_lpspol
         module procedure get_lpspol_i_v
         module procedure get_lpspol_v
      end interface get_lpspol
      interface get_lovrok
         module procedure get_lovrok_i_v
         module procedure get_lovrok_v
      end interface get_lovrok
      interface get_lcalda
         module procedure get_lcalda_i_v
         module procedure get_lcalda_v
      end interface get_lcalda
      interface get_lhdr5
         module procedure get_lhdr5_i_v
         module procedure get_lhdr5_v
      end interface get_lhdr5
contains
   subroutine load(self, fileName)
      type(Sac), intent(out):: self
      Character(len=*), intent(in):: fileName
      Integer(kind=SAC_INTEGER_KIND):: npts, nxsize, nysize
      Integer(kind=INT32):: io
      Real(kind=SAC_REAL_KIND), allocatable:: &
         xs(:), ys(:), &
         amplitudes(:), thetas(:), &
         reals(:), imaginaries(:)
      open(newunit = io, file = trim(fileName), status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(io) self%meta%delta
         read(io) self%meta%depmin
         read(io) self%meta%depmax
         read(io) self%meta%scale
         read(io) self%meta%odelta
         read(io) self%meta%b
         read(io) self%meta%e
         read(io) self%meta%o
         read(io) self%meta%a
         read(io) self%meta%fmt
         read(io) self%meta%t0
         read(io) self%meta%t1
         read(io) self%meta%t2
         read(io) self%meta%t3
         read(io) self%meta%t4
         read(io) self%meta%t5
         read(io) self%meta%t6
         read(io) self%meta%t7
         read(io) self%meta%t8
         read(io) self%meta%t9
         read(io) self%meta%f
         read(io) self%meta%resp0
         read(io) self%meta%resp1
         read(io) self%meta%resp2
         read(io) self%meta%resp3
         read(io) self%meta%resp4
         read(io) self%meta%resp5
         read(io) self%meta%resp6
         read(io) self%meta%resp7
         read(io) self%meta%resp8
         read(io) self%meta%resp9
         read(io) self%meta%stla
         read(io) self%meta%stlo
         read(io) self%meta%stel
         read(io) self%meta%stdp
         read(io) self%meta%evla
         read(io) self%meta%evlo
         read(io) self%meta%evel
         read(io) self%meta%evdp
         read(io) self%meta%mag
         read(io) self%meta%user0
         read(io) self%meta%user1
         read(io) self%meta%user2
         read(io) self%meta%user3
         read(io) self%meta%user4
         read(io) self%meta%user5
         read(io) self%meta%user6
         read(io) self%meta%user7
         read(io) self%meta%user8
         read(io) self%meta%user9
         read(io) self%meta%dist
         read(io) self%meta%az
         read(io) self%meta%baz
         read(io) self%meta%gcarc
         read(io) self%meta%sb
         read(io) self%meta%sdelta
         read(io) self%meta%depmen
         read(io) self%meta%cmpaz
         read(io) self%meta%cmpinc
         read(io) self%meta%xminimum
         read(io) self%meta%xmaximum
         read(io) self%meta%yminimum
         read(io) self%meta%ymaximum
         read(io) self%meta%fhdr64
         read(io) self%meta%fhdr65
         read(io) self%meta%fhdr66
         read(io) self%meta%fhdr67
         read(io) self%meta%fhdr68
         read(io) self%meta%fhdr69
         read(io) self%meta%fhdr70
         read(io) self%meta%nzyear
         read(io) self%meta%nzjday
         read(io) self%meta%nzhour
         read(io) self%meta%nzmin
         read(io) self%meta%nzsec
         read(io) self%meta%nzmsec
         read(io) self%meta%nvhdr
         read(io) self%meta%norid
         read(io) self%meta%nevid
         read(io) self%meta%npts
         read(io) self%meta%nsnpts
         read(io) self%meta%nwfid
         read(io) self%meta%nxsize
         read(io) self%meta%nysize
         read(io) self%meta%nhdr56
         read(io) self%meta%iftype
         read(io) self%meta%idep
         read(io) self%meta%iztype
         read(io) self%meta%ihdr4
         read(io) self%meta%iinst
         read(io) self%meta%istreg
         read(io) self%meta%ievreg
         read(io) self%meta%ievtyp
         read(io) self%meta%iqual
         read(io) self%meta%isynth
         read(io) self%meta%imagtyp
         read(io) self%meta%imagsrc
         read(io) self%meta%ihdr13
         read(io) self%meta%ihdr14
         read(io) self%meta%ihdr15
         read(io) self%meta%ihdr16
         read(io) self%meta%ihdr17
         read(io) self%meta%ihdr18
         read(io) self%meta%ihdr19
         read(io) self%meta%ihdr20
         read(io) self%meta%leven
         read(io) self%meta%lpspol
         read(io) self%meta%lovrok
         read(io) self%meta%lcalda
         read(io) self%meta%lhdr5
         read(io) self%meta%kstnm
         read(io) self%meta%kevnm
         read(io) self%meta%khole
         read(io) self%meta%ko
         read(io) self%meta%ka
         read(io) self%meta%kt0
         read(io) self%meta%kt1
         read(io) self%meta%kt2
         read(io) self%meta%kt3
         read(io) self%meta%kt4
         read(io) self%meta%kt5
         read(io) self%meta%kt6
         read(io) self%meta%kt7
         read(io) self%meta%kt8
         read(io) self%meta%kt9
         read(io) self%meta%kf
         read(io) self%meta%kuser0
         read(io) self%meta%kuser1
         read(io) self%meta%kuser2
         read(io) self%meta%kcmpnm
         read(io) self%meta%knetwk
         read(io) self%meta%kdatrd
         read(io) self%meta%kinst
      if(.not.(is_iftype_defined(self)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 1732, (".not.(is_iftype_defined(self))"); error stop; end if
      select case(get_iftype(self))
      case('itime')
         if(.not.(get_npts(self, npts)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 1735, (".not.(get_npts(self, npts))"); error stop; end if
         allocate(self%data%itime(1:npts))
         read(io) self%data%itime
      case('ixy')
         if(.not.(get_npts(self, npts)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 1741, (".not.(get_npts(self, npts))"); error stop; end if
         allocate(self%data%ixy(1:npts, 2))
         allocate(xs(1:npts))
         allocate(ys(1:npts))
         read(io) ys, xs
         self%data%ixy(:, 1) = xs
         self%data%ixy(:, 2) = ys
      case('iamph')
         if(.not.(get_npts(self, npts)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 1752, (".not.(get_npts(self, npts))"); error stop; end if
         allocate(self%data%iamph(1:npts, 2))
         allocate(amplitudes(1:npts))
         allocate(thetas(1:npts))
         read(io) amplitudes, thetas
         self%data%iamph(:, 1) = amplitudes
         self%data%iamph(:, 2) = thetas
      case('irlim')
         if(.not.(get_npts(self, npts)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 1763, (".not.(get_npts(self, npts))"); error stop; end if
         allocate(self%data%irlim(1:npts))
         allocate(reals(1:npts))
         allocate(imaginaries(1:npts))
         read(io) reals, imaginaries
         self%data%irlim = cmplx(reals, imaginaries)
      case('ixyz')
         if(.not.(get_nxsize(self, nxsize)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 1773, (".not.(get_nxsize(self, nxsize))"); error stop; end if
         if(.not.(get_nysize(self, nysize)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 1774, (".not.(get_nysize(self, nysize))"); error stop; end if
         allocate(self%data%ixyz(1:nxsize, 1:nysize))
         read(io) self%data%ixyz
      case default
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 1780, ('Unknown iftype: ' + s(get_iftype(self))); error stop
      end select
      close(io)
   end subroutine load
   subroutine dump(self, fileName)
      type(Sac), intent(inout):: self
      Character(len=*), intent(in):: fileName
      Integer(kind=INT32):: io
      Real(kind=SAC_REAL_KIND), allocatable:: ixy(:, :)
      Complex(kind=SAC_REAL_KIND), allocatable:: irlim(:)
      open(newunit = io, file = trim(fileName), status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(io) self%meta%delta
         write(io) self%meta%depmin
         write(io) self%meta%depmax
         write(io) self%meta%scale
         write(io) self%meta%odelta
         write(io) self%meta%b
         write(io) self%meta%e
         write(io) self%meta%o
         write(io) self%meta%a
         write(io) self%meta%fmt
         write(io) self%meta%t0
         write(io) self%meta%t1
         write(io) self%meta%t2
         write(io) self%meta%t3
         write(io) self%meta%t4
         write(io) self%meta%t5
         write(io) self%meta%t6
         write(io) self%meta%t7
         write(io) self%meta%t8
         write(io) self%meta%t9
         write(io) self%meta%f
         write(io) self%meta%resp0
         write(io) self%meta%resp1
         write(io) self%meta%resp2
         write(io) self%meta%resp3
         write(io) self%meta%resp4
         write(io) self%meta%resp5
         write(io) self%meta%resp6
         write(io) self%meta%resp7
         write(io) self%meta%resp8
         write(io) self%meta%resp9
         write(io) self%meta%stla
         write(io) self%meta%stlo
         write(io) self%meta%stel
         write(io) self%meta%stdp
         write(io) self%meta%evla
         write(io) self%meta%evlo
         write(io) self%meta%evel
         write(io) self%meta%evdp
         write(io) self%meta%mag
         write(io) self%meta%user0
         write(io) self%meta%user1
         write(io) self%meta%user2
         write(io) self%meta%user3
         write(io) self%meta%user4
         write(io) self%meta%user5
         write(io) self%meta%user6
         write(io) self%meta%user7
         write(io) self%meta%user8
         write(io) self%meta%user9
         write(io) self%meta%dist
         write(io) self%meta%az
         write(io) self%meta%baz
         write(io) self%meta%gcarc
         write(io) self%meta%sb
         write(io) self%meta%sdelta
         write(io) self%meta%depmen
         write(io) self%meta%cmpaz
         write(io) self%meta%cmpinc
         write(io) self%meta%xminimum
         write(io) self%meta%xmaximum
         write(io) self%meta%yminimum
         write(io) self%meta%ymaximum
         write(io) self%meta%fhdr64
         write(io) self%meta%fhdr65
         write(io) self%meta%fhdr66
         write(io) self%meta%fhdr67
         write(io) self%meta%fhdr68
         write(io) self%meta%fhdr69
         write(io) self%meta%fhdr70
         write(io) self%meta%nzyear
         write(io) self%meta%nzjday
         write(io) self%meta%nzhour
         write(io) self%meta%nzmin
         write(io) self%meta%nzsec
         write(io) self%meta%nzmsec
         write(io) self%meta%nvhdr
         write(io) self%meta%norid
         write(io) self%meta%nevid
         write(io) self%meta%npts
         write(io) self%meta%nsnpts
         write(io) self%meta%nwfid
         write(io) self%meta%nxsize
         write(io) self%meta%nysize
         write(io) self%meta%nhdr56
         write(io) self%meta%iftype
         write(io) self%meta%idep
         write(io) self%meta%iztype
         write(io) self%meta%ihdr4
         write(io) self%meta%iinst
         write(io) self%meta%istreg
         write(io) self%meta%ievreg
         write(io) self%meta%ievtyp
         write(io) self%meta%iqual
         write(io) self%meta%isynth
         write(io) self%meta%imagtyp
         write(io) self%meta%imagsrc
         write(io) self%meta%ihdr13
         write(io) self%meta%ihdr14
         write(io) self%meta%ihdr15
         write(io) self%meta%ihdr16
         write(io) self%meta%ihdr17
         write(io) self%meta%ihdr18
         write(io) self%meta%ihdr19
         write(io) self%meta%ihdr20
         write(io) self%meta%leven
         write(io) self%meta%lpspol
         write(io) self%meta%lovrok
         write(io) self%meta%lcalda
         write(io) self%meta%lhdr5
         write(io) self%meta%kstnm
         write(io) self%meta%kevnm
         write(io) self%meta%khole
         write(io) self%meta%ko
         write(io) self%meta%ka
         write(io) self%meta%kt0
         write(io) self%meta%kt1
         write(io) self%meta%kt2
         write(io) self%meta%kt3
         write(io) self%meta%kt4
         write(io) self%meta%kt5
         write(io) self%meta%kt6
         write(io) self%meta%kt7
         write(io) self%meta%kt8
         write(io) self%meta%kt9
         write(io) self%meta%kf
         write(io) self%meta%kuser0
         write(io) self%meta%kuser1
         write(io) self%meta%kuser2
         write(io) self%meta%kcmpnm
         write(io) self%meta%knetwk
         write(io) self%meta%kdatrd
         write(io) self%meta%kinst
      if(.not.(is_iftype_defined(self)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 2064, (".not.(is_iftype_defined(self))"); error stop; end if
      select case(get_iftype(self))
      case('itime')
         write(io) get_data_itime(self)
      case('ixy')
         ixy = get_data_ixy(self)
         write(io) ixy(:, 2), ixy(:, 1)
      case('iamph')
         write(io) get_data_iamph(self)
      case('irlim')
         irlim = get_data_irlim(self)
         write(io) real(irlim), aimag(irlim)
      case('ixyz')
         write(io) get_data_ixyz(self)
      case default
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 2081, ('Unknown iftype: ' + s(get_iftype(self))); error stop
      end select
      close(io)
   end subroutine dump
   subroutine dump_json(self, io)
      type(Sac), intent(in):: self
      Integer, intent(in):: io
      Integer(kind=INT64):: iData, nData, iX, uX, lY, iY, uY
      Real(kind=SAC_REAL_KIND), allocatable:: itime(:), ixy(:, :), iamph(:, :), ixyz(:, :)
      Complex(kind=SAC_REAL_KIND), allocatable:: irlim(:)
      write(io, '(a)') '{"meta": {'
         if(is_delta_defined(self))then
            write(io, *, delim='none') '"delta": ', get_delta(self), ','
         else
            write(io, *, delim='none') '"delta": null,'
         end if
         if(is_depmin_defined(self))then
            write(io, *, delim='none') '"depmin": ', get_depmin(self), ','
         else
            write(io, *, delim='none') '"depmin": null,'
         end if
         if(is_depmax_defined(self))then
            write(io, *, delim='none') '"depmax": ', get_depmax(self), ','
         else
            write(io, *, delim='none') '"depmax": null,'
         end if
         if(is_scale_defined(self))then
            write(io, *, delim='none') '"scale": ', get_scale(self), ','
         else
            write(io, *, delim='none') '"scale": null,'
         end if
         if(is_odelta_defined(self))then
            write(io, *, delim='none') '"odelta": ', get_odelta(self), ','
         else
            write(io, *, delim='none') '"odelta": null,'
         end if
         if(is_b_defined(self))then
            write(io, *, delim='none') '"b": ', get_b(self), ','
         else
            write(io, *, delim='none') '"b": null,'
         end if
         if(is_e_defined(self))then
            write(io, *, delim='none') '"e": ', get_e(self), ','
         else
            write(io, *, delim='none') '"e": null,'
         end if
         if(is_o_defined(self))then
            write(io, *, delim='none') '"o": ', get_o(self), ','
         else
            write(io, *, delim='none') '"o": null,'
         end if
         if(is_a_defined(self))then
            write(io, *, delim='none') '"a": ', get_a(self), ','
         else
            write(io, *, delim='none') '"a": null,'
         end if
         if(is_fmt_defined(self))then
            write(io, *, delim='none') '"fmt": ', get_fmt(self), ','
         else
            write(io, *, delim='none') '"fmt": null,'
         end if
         if(is_t0_defined(self))then
            write(io, *, delim='none') '"t0": ', get_t0(self), ','
         else
            write(io, *, delim='none') '"t0": null,'
         end if
         if(is_t1_defined(self))then
            write(io, *, delim='none') '"t1": ', get_t1(self), ','
         else
            write(io, *, delim='none') '"t1": null,'
         end if
         if(is_t2_defined(self))then
            write(io, *, delim='none') '"t2": ', get_t2(self), ','
         else
            write(io, *, delim='none') '"t2": null,'
         end if
         if(is_t3_defined(self))then
            write(io, *, delim='none') '"t3": ', get_t3(self), ','
         else
            write(io, *, delim='none') '"t3": null,'
         end if
         if(is_t4_defined(self))then
            write(io, *, delim='none') '"t4": ', get_t4(self), ','
         else
            write(io, *, delim='none') '"t4": null,'
         end if
         if(is_t5_defined(self))then
            write(io, *, delim='none') '"t5": ', get_t5(self), ','
         else
            write(io, *, delim='none') '"t5": null,'
         end if
         if(is_t6_defined(self))then
            write(io, *, delim='none') '"t6": ', get_t6(self), ','
         else
            write(io, *, delim='none') '"t6": null,'
         end if
         if(is_t7_defined(self))then
            write(io, *, delim='none') '"t7": ', get_t7(self), ','
         else
            write(io, *, delim='none') '"t7": null,'
         end if
         if(is_t8_defined(self))then
            write(io, *, delim='none') '"t8": ', get_t8(self), ','
         else
            write(io, *, delim='none') '"t8": null,'
         end if
         if(is_t9_defined(self))then
            write(io, *, delim='none') '"t9": ', get_t9(self), ','
         else
            write(io, *, delim='none') '"t9": null,'
         end if
         if(is_f_defined(self))then
            write(io, *, delim='none') '"f": ', get_f(self), ','
         else
            write(io, *, delim='none') '"f": null,'
         end if
         if(is_resp0_defined(self))then
            write(io, *, delim='none') '"resp0": ', get_resp0(self), ','
         else
            write(io, *, delim='none') '"resp0": null,'
         end if
         if(is_resp1_defined(self))then
            write(io, *, delim='none') '"resp1": ', get_resp1(self), ','
         else
            write(io, *, delim='none') '"resp1": null,'
         end if
         if(is_resp2_defined(self))then
            write(io, *, delim='none') '"resp2": ', get_resp2(self), ','
         else
            write(io, *, delim='none') '"resp2": null,'
         end if
         if(is_resp3_defined(self))then
            write(io, *, delim='none') '"resp3": ', get_resp3(self), ','
         else
            write(io, *, delim='none') '"resp3": null,'
         end if
         if(is_resp4_defined(self))then
            write(io, *, delim='none') '"resp4": ', get_resp4(self), ','
         else
            write(io, *, delim='none') '"resp4": null,'
         end if
         if(is_resp5_defined(self))then
            write(io, *, delim='none') '"resp5": ', get_resp5(self), ','
         else
            write(io, *, delim='none') '"resp5": null,'
         end if
         if(is_resp6_defined(self))then
            write(io, *, delim='none') '"resp6": ', get_resp6(self), ','
         else
            write(io, *, delim='none') '"resp6": null,'
         end if
         if(is_resp7_defined(self))then
            write(io, *, delim='none') '"resp7": ', get_resp7(self), ','
         else
            write(io, *, delim='none') '"resp7": null,'
         end if
         if(is_resp8_defined(self))then
            write(io, *, delim='none') '"resp8": ', get_resp8(self), ','
         else
            write(io, *, delim='none') '"resp8": null,'
         end if
         if(is_resp9_defined(self))then
            write(io, *, delim='none') '"resp9": ', get_resp9(self), ','
         else
            write(io, *, delim='none') '"resp9": null,'
         end if
         if(is_stla_defined(self))then
            write(io, *, delim='none') '"stla": ', get_stla(self), ','
         else
            write(io, *, delim='none') '"stla": null,'
         end if
         if(is_stlo_defined(self))then
            write(io, *, delim='none') '"stlo": ', get_stlo(self), ','
         else
            write(io, *, delim='none') '"stlo": null,'
         end if
         if(is_stel_defined(self))then
            write(io, *, delim='none') '"stel": ', get_stel(self), ','
         else
            write(io, *, delim='none') '"stel": null,'
         end if
         if(is_stdp_defined(self))then
            write(io, *, delim='none') '"stdp": ', get_stdp(self), ','
         else
            write(io, *, delim='none') '"stdp": null,'
         end if
         if(is_evla_defined(self))then
            write(io, *, delim='none') '"evla": ', get_evla(self), ','
         else
            write(io, *, delim='none') '"evla": null,'
         end if
         if(is_evlo_defined(self))then
            write(io, *, delim='none') '"evlo": ', get_evlo(self), ','
         else
            write(io, *, delim='none') '"evlo": null,'
         end if
         if(is_evel_defined(self))then
            write(io, *, delim='none') '"evel": ', get_evel(self), ','
         else
            write(io, *, delim='none') '"evel": null,'
         end if
         if(is_evdp_defined(self))then
            write(io, *, delim='none') '"evdp": ', get_evdp(self), ','
         else
            write(io, *, delim='none') '"evdp": null,'
         end if
         if(is_mag_defined(self))then
            write(io, *, delim='none') '"mag": ', get_mag(self), ','
         else
            write(io, *, delim='none') '"mag": null,'
         end if
         if(is_user0_defined(self))then
            write(io, *, delim='none') '"user0": ', get_user0(self), ','
         else
            write(io, *, delim='none') '"user0": null,'
         end if
         if(is_user1_defined(self))then
            write(io, *, delim='none') '"user1": ', get_user1(self), ','
         else
            write(io, *, delim='none') '"user1": null,'
         end if
         if(is_user2_defined(self))then
            write(io, *, delim='none') '"user2": ', get_user2(self), ','
         else
            write(io, *, delim='none') '"user2": null,'
         end if
         if(is_user3_defined(self))then
            write(io, *, delim='none') '"user3": ', get_user3(self), ','
         else
            write(io, *, delim='none') '"user3": null,'
         end if
         if(is_user4_defined(self))then
            write(io, *, delim='none') '"user4": ', get_user4(self), ','
         else
            write(io, *, delim='none') '"user4": null,'
         end if
         if(is_user5_defined(self))then
            write(io, *, delim='none') '"user5": ', get_user5(self), ','
         else
            write(io, *, delim='none') '"user5": null,'
         end if
         if(is_user6_defined(self))then
            write(io, *, delim='none') '"user6": ', get_user6(self), ','
         else
            write(io, *, delim='none') '"user6": null,'
         end if
         if(is_user7_defined(self))then
            write(io, *, delim='none') '"user7": ', get_user7(self), ','
         else
            write(io, *, delim='none') '"user7": null,'
         end if
         if(is_user8_defined(self))then
            write(io, *, delim='none') '"user8": ', get_user8(self), ','
         else
            write(io, *, delim='none') '"user8": null,'
         end if
         if(is_user9_defined(self))then
            write(io, *, delim='none') '"user9": ', get_user9(self), ','
         else
            write(io, *, delim='none') '"user9": null,'
         end if
         if(is_dist_defined(self))then
            write(io, *, delim='none') '"dist": ', get_dist(self), ','
         else
            write(io, *, delim='none') '"dist": null,'
         end if
         if(is_az_defined(self))then
            write(io, *, delim='none') '"az": ', get_az(self), ','
         else
            write(io, *, delim='none') '"az": null,'
         end if
         if(is_baz_defined(self))then
            write(io, *, delim='none') '"baz": ', get_baz(self), ','
         else
            write(io, *, delim='none') '"baz": null,'
         end if
         if(is_gcarc_defined(self))then
            write(io, *, delim='none') '"gcarc": ', get_gcarc(self), ','
         else
            write(io, *, delim='none') '"gcarc": null,'
         end if
         if(is_sb_defined(self))then
            write(io, *, delim='none') '"sb": ', get_sb(self), ','
         else
            write(io, *, delim='none') '"sb": null,'
         end if
         if(is_sdelta_defined(self))then
            write(io, *, delim='none') '"sdelta": ', get_sdelta(self), ','
         else
            write(io, *, delim='none') '"sdelta": null,'
         end if
         if(is_depmen_defined(self))then
            write(io, *, delim='none') '"depmen": ', get_depmen(self), ','
         else
            write(io, *, delim='none') '"depmen": null,'
         end if
         if(is_cmpaz_defined(self))then
            write(io, *, delim='none') '"cmpaz": ', get_cmpaz(self), ','
         else
            write(io, *, delim='none') '"cmpaz": null,'
         end if
         if(is_cmpinc_defined(self))then
            write(io, *, delim='none') '"cmpinc": ', get_cmpinc(self), ','
         else
            write(io, *, delim='none') '"cmpinc": null,'
         end if
         if(is_xminimum_defined(self))then
            write(io, *, delim='none') '"xminimum": ', get_xminimum(self), ','
         else
            write(io, *, delim='none') '"xminimum": null,'
         end if
         if(is_xmaximum_defined(self))then
            write(io, *, delim='none') '"xmaximum": ', get_xmaximum(self), ','
         else
            write(io, *, delim='none') '"xmaximum": null,'
         end if
         if(is_yminimum_defined(self))then
            write(io, *, delim='none') '"yminimum": ', get_yminimum(self), ','
         else
            write(io, *, delim='none') '"yminimum": null,'
         end if
         if(is_ymaximum_defined(self))then
            write(io, *, delim='none') '"ymaximum": ', get_ymaximum(self), ','
         else
            write(io, *, delim='none') '"ymaximum": null,'
         end if
         if(is_fhdr64_defined(self))then
            write(io, *, delim='none') '"fhdr64": ', get_fhdr64(self), ','
         else
            write(io, *, delim='none') '"fhdr64": null,'
         end if
         if(is_fhdr65_defined(self))then
            write(io, *, delim='none') '"fhdr65": ', get_fhdr65(self), ','
         else
            write(io, *, delim='none') '"fhdr65": null,'
         end if
         if(is_fhdr66_defined(self))then
            write(io, *, delim='none') '"fhdr66": ', get_fhdr66(self), ','
         else
            write(io, *, delim='none') '"fhdr66": null,'
         end if
         if(is_fhdr67_defined(self))then
            write(io, *, delim='none') '"fhdr67": ', get_fhdr67(self), ','
         else
            write(io, *, delim='none') '"fhdr67": null,'
         end if
         if(is_fhdr68_defined(self))then
            write(io, *, delim='none') '"fhdr68": ', get_fhdr68(self), ','
         else
            write(io, *, delim='none') '"fhdr68": null,'
         end if
         if(is_fhdr69_defined(self))then
            write(io, *, delim='none') '"fhdr69": ', get_fhdr69(self), ','
         else
            write(io, *, delim='none') '"fhdr69": null,'
         end if
         if(is_fhdr70_defined(self))then
            write(io, *, delim='none') '"fhdr70": ', get_fhdr70(self), ','
         else
            write(io, *, delim='none') '"fhdr70": null,'
         end if
         if(is_nzyear_defined(self))then
            write(io, *, delim='none') '"nzyear": ', get_nzyear(self), ','
         else
            write(io, *, delim='none') '"nzyear": null,'
         end if
         if(is_nzjday_defined(self))then
            write(io, *, delim='none') '"nzjday": ', get_nzjday(self), ','
         else
            write(io, *, delim='none') '"nzjday": null,'
         end if
         if(is_nzhour_defined(self))then
            write(io, *, delim='none') '"nzhour": ', get_nzhour(self), ','
         else
            write(io, *, delim='none') '"nzhour": null,'
         end if
         if(is_nzmin_defined(self))then
            write(io, *, delim='none') '"nzmin": ', get_nzmin(self), ','
         else
            write(io, *, delim='none') '"nzmin": null,'
         end if
         if(is_nzsec_defined(self))then
            write(io, *, delim='none') '"nzsec": ', get_nzsec(self), ','
         else
            write(io, *, delim='none') '"nzsec": null,'
         end if
         if(is_nzmsec_defined(self))then
            write(io, *, delim='none') '"nzmsec": ', get_nzmsec(self), ','
         else
            write(io, *, delim='none') '"nzmsec": null,'
         end if
         if(is_nvhdr_defined(self))then
            write(io, *, delim='none') '"nvhdr": ', get_nvhdr(self), ','
         else
            write(io, *, delim='none') '"nvhdr": null,'
         end if
         if(is_norid_defined(self))then
            write(io, *, delim='none') '"norid": ', get_norid(self), ','
         else
            write(io, *, delim='none') '"norid": null,'
         end if
         if(is_nevid_defined(self))then
            write(io, *, delim='none') '"nevid": ', get_nevid(self), ','
         else
            write(io, *, delim='none') '"nevid": null,'
         end if
         if(is_npts_defined(self))then
            write(io, *, delim='none') '"npts": ', get_npts(self), ','
         else
            write(io, *, delim='none') '"npts": null,'
         end if
         if(is_nsnpts_defined(self))then
            write(io, *, delim='none') '"nsnpts": ', get_nsnpts(self), ','
         else
            write(io, *, delim='none') '"nsnpts": null,'
         end if
         if(is_nwfid_defined(self))then
            write(io, *, delim='none') '"nwfid": ', get_nwfid(self), ','
         else
            write(io, *, delim='none') '"nwfid": null,'
         end if
         if(is_nxsize_defined(self))then
            write(io, *, delim='none') '"nxsize": ', get_nxsize(self), ','
         else
            write(io, *, delim='none') '"nxsize": null,'
         end if
         if(is_nysize_defined(self))then
            write(io, *, delim='none') '"nysize": ', get_nysize(self), ','
         else
            write(io, *, delim='none') '"nysize": null,'
         end if
         if(is_nhdr56_defined(self))then
            write(io, *, delim='none') '"nhdr56": ', get_nhdr56(self), ','
         else
            write(io, *, delim='none') '"nhdr56": null,'
         end if
         if(is_iftype_defined(self))then
            write(io, *, delim='none') '"iftype": ', '"' + trim(get_iftype(self)) + '"', ','
         else
            write(io, *, delim='none') '"iftype": null,'
         end if
         if(is_idep_defined(self))then
            write(io, *, delim='none') '"idep": ', '"' + trim(get_idep(self)) + '"', ','
         else
            write(io, *, delim='none') '"idep": null,'
         end if
         if(is_iztype_defined(self))then
            write(io, *, delim='none') '"iztype": ', '"' + trim(get_iztype(self)) + '"', ','
         else
            write(io, *, delim='none') '"iztype": null,'
         end if
         if(is_ihdr4_defined(self))then
            write(io, *, delim='none') '"ihdr4": ', '"' + trim(get_ihdr4(self)) + '"', ','
         else
            write(io, *, delim='none') '"ihdr4": null,'
         end if
         if(is_iinst_defined(self))then
            write(io, *, delim='none') '"iinst": ', '"' + trim(get_iinst(self)) + '"', ','
         else
            write(io, *, delim='none') '"iinst": null,'
         end if
         if(is_istreg_defined(self))then
            write(io, *, delim='none') '"istreg": ', '"' + trim(get_istreg(self)) + '"', ','
         else
            write(io, *, delim='none') '"istreg": null,'
         end if
         if(is_ievreg_defined(self))then
            write(io, *, delim='none') '"ievreg": ', '"' + trim(get_ievreg(self)) + '"', ','
         else
            write(io, *, delim='none') '"ievreg": null,'
         end if
         if(is_ievtyp_defined(self))then
            write(io, *, delim='none') '"ievtyp": ', '"' + trim(get_ievtyp(self)) + '"', ','
         else
            write(io, *, delim='none') '"ievtyp": null,'
         end if
         if(is_iqual_defined(self))then
            write(io, *, delim='none') '"iqual": ', '"' + trim(get_iqual(self)) + '"', ','
         else
            write(io, *, delim='none') '"iqual": null,'
         end if
         if(is_isynth_defined(self))then
            write(io, *, delim='none') '"isynth": ', '"' + trim(get_isynth(self)) + '"', ','
         else
            write(io, *, delim='none') '"isynth": null,'
         end if
         if(is_imagtyp_defined(self))then
            write(io, *, delim='none') '"imagtyp": ', '"' + trim(get_imagtyp(self)) + '"', ','
         else
            write(io, *, delim='none') '"imagtyp": null,'
         end if
         if(is_imagsrc_defined(self))then
            write(io, *, delim='none') '"imagsrc": ', '"' + trim(get_imagsrc(self)) + '"', ','
         else
            write(io, *, delim='none') '"imagsrc": null,'
         end if
         if(is_ihdr13_defined(self))then
            write(io, *, delim='none') '"ihdr13": ', '"' + trim(get_ihdr13(self)) + '"', ','
         else
            write(io, *, delim='none') '"ihdr13": null,'
         end if
         if(is_ihdr14_defined(self))then
            write(io, *, delim='none') '"ihdr14": ', '"' + trim(get_ihdr14(self)) + '"', ','
         else
            write(io, *, delim='none') '"ihdr14": null,'
         end if
         if(is_ihdr15_defined(self))then
            write(io, *, delim='none') '"ihdr15": ', '"' + trim(get_ihdr15(self)) + '"', ','
         else
            write(io, *, delim='none') '"ihdr15": null,'
         end if
         if(is_ihdr16_defined(self))then
            write(io, *, delim='none') '"ihdr16": ', '"' + trim(get_ihdr16(self)) + '"', ','
         else
            write(io, *, delim='none') '"ihdr16": null,'
         end if
         if(is_ihdr17_defined(self))then
            write(io, *, delim='none') '"ihdr17": ', '"' + trim(get_ihdr17(self)) + '"', ','
         else
            write(io, *, delim='none') '"ihdr17": null,'
         end if
         if(is_ihdr18_defined(self))then
            write(io, *, delim='none') '"ihdr18": ', '"' + trim(get_ihdr18(self)) + '"', ','
         else
            write(io, *, delim='none') '"ihdr18": null,'
         end if
         if(is_ihdr19_defined(self))then
            write(io, *, delim='none') '"ihdr19": ', '"' + trim(get_ihdr19(self)) + '"', ','
         else
            write(io, *, delim='none') '"ihdr19": null,'
         end if
         if(is_ihdr20_defined(self))then
            write(io, *, delim='none') '"ihdr20": ', '"' + trim(get_ihdr20(self)) + '"', ','
         else
            write(io, *, delim='none') '"ihdr20": null,'
         end if
         if(is_leven_defined(self))then
            if(get_leven(self))then
               write(io, *, delim='none') '"leven": true,'
            else
               write(io, *, delim='none') '"leven": false,'
            end if
         else
            write(io, *, delim='none') '"leven": null,'
         end if
         if(is_lpspol_defined(self))then
            if(get_lpspol(self))then
               write(io, *, delim='none') '"lpspol": true,'
            else
               write(io, *, delim='none') '"lpspol": false,'
            end if
         else
            write(io, *, delim='none') '"lpspol": null,'
         end if
         if(is_lovrok_defined(self))then
            if(get_lovrok(self))then
               write(io, *, delim='none') '"lovrok": true,'
            else
               write(io, *, delim='none') '"lovrok": false,'
            end if
         else
            write(io, *, delim='none') '"lovrok": null,'
         end if
         if(is_lcalda_defined(self))then
            if(get_lcalda(self))then
               write(io, *, delim='none') '"lcalda": true,'
            else
               write(io, *, delim='none') '"lcalda": false,'
            end if
         else
            write(io, *, delim='none') '"lcalda": null,'
         end if
         if(is_lhdr5_defined(self))then
            if(get_lhdr5(self))then
               write(io, *, delim='none') '"lhdr5": true,'
            else
               write(io, *, delim='none') '"lhdr5": false,'
            end if
         else
            write(io, *, delim='none') '"lhdr5": null,'
         end if
         if(is_kevnm_defined(self))then
            write(io, *, delim='none') '"kevnm": ', '"' + replace(trim(get_kevnm(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"kevnm": null,'
         end if
         if(is_khole_defined(self))then
            write(io, *, delim='none') '"khole": ', '"' + replace(trim(get_khole(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"khole": null,'
         end if
         if(is_ko_defined(self))then
            write(io, *, delim='none') '"ko": ', '"' + replace(trim(get_ko(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"ko": null,'
         end if
         if(is_ka_defined(self))then
            write(io, *, delim='none') '"ka": ', '"' + replace(trim(get_ka(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"ka": null,'
         end if
         if(is_kt0_defined(self))then
            write(io, *, delim='none') '"kt0": ', '"' + replace(trim(get_kt0(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"kt0": null,'
         end if
         if(is_kt1_defined(self))then
            write(io, *, delim='none') '"kt1": ', '"' + replace(trim(get_kt1(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"kt1": null,'
         end if
         if(is_kt2_defined(self))then
            write(io, *, delim='none') '"kt2": ', '"' + replace(trim(get_kt2(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"kt2": null,'
         end if
         if(is_kt3_defined(self))then
            write(io, *, delim='none') '"kt3": ', '"' + replace(trim(get_kt3(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"kt3": null,'
         end if
         if(is_kt4_defined(self))then
            write(io, *, delim='none') '"kt4": ', '"' + replace(trim(get_kt4(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"kt4": null,'
         end if
         if(is_kt5_defined(self))then
            write(io, *, delim='none') '"kt5": ', '"' + replace(trim(get_kt5(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"kt5": null,'
         end if
         if(is_kt6_defined(self))then
            write(io, *, delim='none') '"kt6": ', '"' + replace(trim(get_kt6(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"kt6": null,'
         end if
         if(is_kt7_defined(self))then
            write(io, *, delim='none') '"kt7": ', '"' + replace(trim(get_kt7(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"kt7": null,'
         end if
         if(is_kt8_defined(self))then
            write(io, *, delim='none') '"kt8": ', '"' + replace(trim(get_kt8(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"kt8": null,'
         end if
         if(is_kt9_defined(self))then
            write(io, *, delim='none') '"kt9": ', '"' + replace(trim(get_kt9(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"kt9": null,'
         end if
         if(is_kf_defined(self))then
            write(io, *, delim='none') '"kf": ', '"' + replace(trim(get_kf(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"kf": null,'
         end if
         if(is_kuser0_defined(self))then
            write(io, *, delim='none') '"kuser0": ', '"' + replace(trim(get_kuser0(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"kuser0": null,'
         end if
         if(is_kuser1_defined(self))then
            write(io, *, delim='none') '"kuser1": ', '"' + replace(trim(get_kuser1(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"kuser1": null,'
         end if
         if(is_kuser2_defined(self))then
            write(io, *, delim='none') '"kuser2": ', '"' + replace(trim(get_kuser2(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"kuser2": null,'
         end if
         if(is_kcmpnm_defined(self))then
            write(io, *, delim='none') '"kcmpnm": ', '"' + replace(trim(get_kcmpnm(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"kcmpnm": null,'
         end if
         if(is_knetwk_defined(self))then
            write(io, *, delim='none') '"knetwk": ', '"' + replace(trim(get_knetwk(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"knetwk": null,'
         end if
         if(is_kdatrd_defined(self))then
            write(io, *, delim='none') '"kdatrd": ', '"' + replace(trim(get_kdatrd(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"kdatrd": null,'
         end if
         if(is_kinst_defined(self))then
            write(io, *, delim='none') '"kinst": ', '"' + replace(trim(get_kinst(self)), '"', '\"') + '"', ','
         else
            write(io, *, delim='none') '"kinst": null,'
         end if
      if(is_kstnm_defined(self))then
         write(io, *, delim='none') '"kstnm": ', '"' + replace(trim(get_kstnm(self)), '"', '\"') + '"'
      else
         write(io, *, delim='none') '"kstnm": null'
      end if
      write(io, '(a)') '         },'
      write(io, '(a)') '"data": ['
      if(.not.(is_iftype_defined(self)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 2921, (".not.(is_iftype_defined(self))"); error stop; end if
      select case(get_iftype(self))
      case('itime')
         itime = get_data_itime(self)
         nData = ubound(itime, dim=1, kind=kind(iData))
         do iData = lbound(itime, dim=1, kind=kind(iData)), nData - 1
            write(io, *, delim='none') itime(iData), ','
         end do
         write(io, *, delim='none') itime(nData)
      case('ixy')
         ixy = get_data_ixy(self)
         nData = ubound(ixy, dim=1, kind=kind(iData))
         do iData = lbound(ixy, dim=1, kind=kind(iData)), nData - 1
            write(io, *, delim='none') '[', ixy(iData, 1), ', ', ixy(iData, 2), '],'
         end do
         write(io, *, delim='none') '[', ixy(nData, 1), ', ', ixy(nData, 2), ']'
      case('iamph')
         iamph = get_data_iamph(self)
         nData = ubound(iamph, dim=1, kind=kind(iData))
         do iData = lbound(iamph, dim=1, kind=kind(iData)), nData - 1
            write(io, *, delim='none') '[', iamph(iData, 1), ', ', iamph(iData, 2), '],'
         end do
         write(io, *, delim='none') '[', iamph(nData, 1), ', ', iamph(nData, 2), ']'
      case('irlim')
         irlim = get_data_irlim(self)
         nData = ubound(irlim, dim=1, kind=kind(iData))
         do iData = lbound(irlim, dim=1, kind=kind(iData)), nData - 1
            write(io, *, delim='none') '[', real(irlim(iData)), ', ', imag(irlim(iData)), '],'
         end do
         write(io, *, delim='none') '[', real(irlim(iData)), ', ', imag(irlim(iData)), ']'
      case('ixyz')
         ixyz = get_data_ixyz(self)
         uX = ubound(ixyz, 1, kind=kind(iX))
         lY = lbound(ixyz, 2, kind=kind(iY))
         uY = ubound(ixyz, 2, kind=kind(iY))
         do iX = lbound(ixyz, 1, kind=kind(iX)), uX - 1
            write(io, *, delim='none') '['
            do iY = lY, uY - 1
               write(io, *, delim='none') ixyz(iX, iY), ','
            end do
            write(io, *, delim='none') ixyz(iX, uY)
            write(io, *, delim='none') '],'
         end do
         write(io, *, delim='none') '['
         do iY = lY, uY - 1
            write(io, *, delim='none') ixyz(uX, iY), ','
         end do
         write(io, *, delim='none') ixyz(uX, uY)
         write(io, *, delim='none') ']'
      case default
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 2971, ('Unknown iftype: ' + s(get_iftype(self))); error stop
      end select
      write(io, '(a)') '         ]'
      write(io, '(a)') '}'
   end subroutine dump_json
   subroutine set_data_itime(self, value)
      type(Sac), intent(inout):: self
      Real(kind=SAC_REAL_KIND), intent(in):: value(:)
      Real(kind=SAC_REAL_KIND):: b, delta
      Integer(kind=SAC_INTEGER_KIND):: npts
      npts = size(value, 1)
      if(.not.(get_b(self, b)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 2986, (".not.(get_b(self, b))"); error stop; end if
      if(.not.(get_delta(self, delta)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 2987, (".not.(get_delta(self, delta))"); error stop; end if
      call set_iftype(self, 'itime')
      call set_leven(self, .true.)
      call set_npts(self, npts)
      call set_e(self, b + (npts - 1)*delta)
      call set_depmin(self, minval(value))
      call set_depmax(self, maxval(value))
      call set_depmen(self, sum(value)/npts)
      self%data%itime = value
      if(allocated(self%data%ixy)) deallocate(self%data%ixy)
      if(allocated(self%data%iamph)) deallocate(self%data%iamph)
      if(allocated(self%data%irlim)) deallocate(self%data%irlim)
      if(allocated(self%data%ixyz)) deallocate(self%data%ixyz)
   end subroutine set_data_itime
   function get_data_itime(self) result(value)
      type(Sac), intent(in):: self
      Real(kind=SAC_REAL_KIND), allocatable:: value(:)
      if(.not.(is_iftype_defined(self)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3009, (".not.(is_iftype_defined(self))"); error stop; end if
      if(.not.(get_iftype(self) == 'itime'))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3010, (".not.(get_iftype(self) == 'itime')"); error stop; end if
      if(.not.(allocated(self%data%itime)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3011, (".not.(allocated(self%data%itime))"); error stop; end if
      value = self%data%itime
      if(.not.(size(value, 1) == get_npts(self)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3013, (".not.(size(value, 1) == get_npts(self))"); error stop; end if
   end function get_data_itime
   subroutine get_data_itime_(self, value)
      type(Sac), intent(in):: self
      Real(kind=SAC_REAL_KIND), allocatable, intent(out):: value(:)
      value = get_data_itime(self)
   end subroutine get_data_itime_
      subroutine set_data_ixy(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND):: value(:, :)
         Integer(kind=SAC_INTEGER_KIND):: npts
         if(.not.(size(value, 2) == 2))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3030, (".not.(size(value, 2) == 2)"); error stop; end if ! [[x1, y1], [x2, y2], ...]
         npts = size(value, 1)
         call set_iftype(self, 'ixy')
         call set_leven(self, .false.)
         call set_npts(self, npts)
         call set_b(self, value(1, 1))
         call set_e(self, value(npts, 1))
         call set_depmin(self, minval(value(:, 2)))
         call set_depmax(self, maxval(value(:, 2)))
         call set_depmen(self, sum(value(:, 2))/npts)
         self%data%ixy = value
         if(allocated(self%data%itime)) deallocate(self%data%itime)
         if(allocated(self%data%iamph)) deallocate(self%data%iamph)
         if(allocated(self%data%irlim)) deallocate(self%data%irlim)
         if(allocated(self%data%ixyz)) deallocate(self%data%ixyz)
      end subroutine set_data_ixy
      function get_data_ixy(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), allocatable:: value(:, :)
         if(.not.(get_iftype(self) == 'ixy'))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3055, (".not.(get_iftype(self) == 'ixy')"); error stop; end if
         if(.not.(allocated(self%data%ixy)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3056, (".not.(allocated(self%data%ixy))"); error stop; end if
         value = self%data%ixy
         if(.not.(size(value, 1) == get_npts(self)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3058, (".not.(size(value, 1) == get_npts(self))"); error stop; end if
      end function get_data_ixy
      subroutine set_data_iamph(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND):: value(:, :)
         Integer(kind=SAC_INTEGER_KIND):: npts
         if(.not.(size(value, 2) == 2))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3067, (".not.(size(value, 2) == 2)"); error stop; end if ! [[x1, y1], [x2, y2], ...]
         npts = size(value, 1)
         call set_iftype(self, 'iamph')
         call set_leven(self, .false.)
         call set_npts(self, npts)
         call set_b(self, value(1, 1))
         call set_e(self, value(npts, 1))
         call set_depmin(self, minval(value(:, 2)))
         call set_depmax(self, maxval(value(:, 2)))
         call set_depmen(self, sum(value(:, 2))/npts)
         self%data%iamph = value
         if(allocated(self%data%itime)) deallocate(self%data%itime)
         if(allocated(self%data%ixy)) deallocate(self%data%ixy)
         if(allocated(self%data%irlim)) deallocate(self%data%irlim)
         if(allocated(self%data%ixyz)) deallocate(self%data%ixyz)
      end subroutine set_data_iamph
      function get_data_iamph(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), allocatable:: value(:, :)
         if(.not.(get_iftype(self) == 'iamph'))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3092, (".not.(get_iftype(self) == 'iamph')"); error stop; end if
         if(.not.(allocated(self%data%iamph)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3093, (".not.(allocated(self%data%iamph))"); error stop; end if
         value = self%data%iamph
         if(.not.(size(value, 1) == get_npts(self)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3095, (".not.(size(value, 1) == get_npts(self))"); error stop; end if
      end function get_data_iamph
   subroutine set_data_irlim(self, value)
      type(Sac), intent(inout):: self
      Complex(kind=SAC_REAL_KIND), intent(in):: value(:)
      call set_iftype(self, 'irlim')
      call set_leven(self, .false.)
      call set_npts(self, size(value, 1))
      self%data%irlim = value
      if(allocated(self%data%itime)) deallocate(self%data%itime)
      if(allocated(self%data%ixy)) deallocate(self%data%ixy)
      if(allocated(self%data%iamph)) deallocate(self%data%iamph)
      if(allocated(self%data%ixyz)) deallocate(self%data%ixyz)
   end subroutine set_data_irlim
   function get_data_irlim(self) result(value)
      type(Sac), intent(in):: self
      Complex(kind=SAC_REAL_KIND), allocatable:: value(:)
      if(.not.(get_iftype(self) == 'irlim'))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3119, (".not.(get_iftype(self) == 'irlim')"); error stop; end if
      if(.not.(allocated(self%data%irlim)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3120, (".not.(allocated(self%data%irlim))"); error stop; end if
      value = self%data%irlim
      if(.not.(size(value, 1) == get_npts(self)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3122, (".not.(size(value, 1) == get_npts(self))"); error stop; end if
   end function get_data_irlim
   subroutine get_data_irlim_(self, value)
      type(Sac), intent(in):: self
      Complex(kind=SAC_REAL_KIND), allocatable, intent(out):: value(:)
      value = get_data_itime(self)
   end subroutine get_data_irlim_
   subroutine set_data_ixyz(self, value)
      type(Sac), intent(inout):: self
      Real(kind=SAC_REAL_KIND), intent(in):: value(:, :)
      call set_iftype(self, 'ixyz')
      call set_leven(self, .true.)
      call set_nxsize(self, size(value, 1))
      call set_nysize(self, size(value, 2))
      self%data%ixyz = value
      if(allocated(self%data%itime)) deallocate(self%data%itime)
      if(allocated(self%data%ixy)) deallocate(self%data%ixy)
      if(allocated(self%data%iamph)) deallocate(self%data%iamph)
      if(allocated(self%data%irlim)) deallocate(self%data%irlim)
   end subroutine set_data_ixyz
   function get_data_ixyz(self) result(value)
      type(Sac), intent(in):: self
      Real(kind=SAC_REAL_KIND), allocatable:: value(:, :)
      if(.not.(get_iftype(self) == 'ixyz'))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3153, (".not.(get_iftype(self) == 'ixyz')"); error stop; end if
      if(.not.(allocated(self%data%ixyz)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3154, (".not.(allocated(self%data%ixyz))"); error stop; end if
      value = self%data%ixyz
      if(.not.(size(value, 1) == get_nxsize(self)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3156, (".not.(size(value, 1) == get_nxsize(self))"); error stop; end if
      if(.not.(size(value, 2) == get_nysize(self)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3157, (".not.(size(value, 2) == get_nysize(self))"); error stop; end if
   end function get_data_ixyz
   subroutine set_data_ixy_or_iamph_or_ixyz(self, value)
      type(Sac), intent(inout):: self
      Real(kind=SAC_REAL_KIND):: value(:, :)
      if(.not.(is_iftype_defined(self)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3164, (".not.(is_iftype_defined(self))"); error stop; end if
      select case(get_iftype(self))
         case('ixy')
            call set_data_ixy(self, value)
         case('iamph')
            call set_data_iamph(self, value)
         case('ixyz')
            call set_data_ixyz(self, value)
      case default
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3177, ('Unknown iftype: ' + s(get_iftype(self))); error stop
      end select
   end subroutine set_data_ixy_or_iamph_or_ixyz
   subroutine get_data_ixy_or_iamph_or_ixyz_(self, value)
      type(Sac), intent(in):: self
      Real(kind=SAC_REAL_KIND), allocatable, intent(out):: value(:, :)
      if(.not.(is_iftype_defined(self)))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3185, (".not.(is_iftype_defined(self))"); error stop; end if
      select case(get_iftype(self))
         case('ixy')
            value = get_data_ixy(self)
         case('iamph')
            value = get_data_iamph(self)
         case('ixyz')
            value = get_data_ixyz(self)
      case default
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 3198, ('Unknown iftype: ' + s(get_iftype(self))); error stop
      end select
   end subroutine get_data_ixy_or_iamph_or_ixyz_
      function get_delta_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_delta(self)
         isDefined = is_delta_defined(self)
      end function get_delta_i_v
      function get_delta_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_delta(self)
         isDefined = is_delta_defined(self)
      end function get_delta_v_i
      function get_delta_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%delta
      end function get_delta_v
      function is_delta_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%delta /= FLOAT_UNDEFINED)
      end function is_delta_defined
      subroutine set_delta(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%delta = value
      end subroutine set_delta
      function get_depmin_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_depmin(self)
         isDefined = is_depmin_defined(self)
      end function get_depmin_i_v
      function get_depmin_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_depmin(self)
         isDefined = is_depmin_defined(self)
      end function get_depmin_v_i
      function get_depmin_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%depmin
      end function get_depmin_v
      function is_depmin_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%depmin /= FLOAT_UNDEFINED)
      end function is_depmin_defined
      subroutine set_depmin(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%depmin = value
      end subroutine set_depmin
      function get_depmax_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_depmax(self)
         isDefined = is_depmax_defined(self)
      end function get_depmax_i_v
      function get_depmax_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_depmax(self)
         isDefined = is_depmax_defined(self)
      end function get_depmax_v_i
      function get_depmax_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%depmax
      end function get_depmax_v
      function is_depmax_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%depmax /= FLOAT_UNDEFINED)
      end function is_depmax_defined
      subroutine set_depmax(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%depmax = value
      end subroutine set_depmax
      function get_scale_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_scale(self)
         isDefined = is_scale_defined(self)
      end function get_scale_i_v
      function get_scale_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_scale(self)
         isDefined = is_scale_defined(self)
      end function get_scale_v_i
      function get_scale_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%scale
      end function get_scale_v
      function is_scale_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%scale /= FLOAT_UNDEFINED)
      end function is_scale_defined
      subroutine set_scale(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%scale = value
      end subroutine set_scale
      function get_odelta_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_odelta(self)
         isDefined = is_odelta_defined(self)
      end function get_odelta_i_v
      function get_odelta_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_odelta(self)
         isDefined = is_odelta_defined(self)
      end function get_odelta_v_i
      function get_odelta_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%odelta
      end function get_odelta_v
      function is_odelta_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%odelta /= FLOAT_UNDEFINED)
      end function is_odelta_defined
      subroutine set_odelta(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%odelta = value
      end subroutine set_odelta
      function get_b_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_b(self)
         isDefined = is_b_defined(self)
      end function get_b_i_v
      function get_b_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_b(self)
         isDefined = is_b_defined(self)
      end function get_b_v_i
      function get_b_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%b
      end function get_b_v
      function is_b_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%b /= FLOAT_UNDEFINED)
      end function is_b_defined
      subroutine set_b(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%b = value
      end subroutine set_b
      function get_e_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_e(self)
         isDefined = is_e_defined(self)
      end function get_e_i_v
      function get_e_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_e(self)
         isDefined = is_e_defined(self)
      end function get_e_v_i
      function get_e_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%e
      end function get_e_v
      function is_e_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%e /= FLOAT_UNDEFINED)
      end function is_e_defined
      subroutine set_e(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%e = value
      end subroutine set_e
      function get_o_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_o(self)
         isDefined = is_o_defined(self)
      end function get_o_i_v
      function get_o_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_o(self)
         isDefined = is_o_defined(self)
      end function get_o_v_i
      function get_o_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%o
      end function get_o_v
      function is_o_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%o /= FLOAT_UNDEFINED)
      end function is_o_defined
      subroutine set_o(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%o = value
      end subroutine set_o
      function get_a_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_a(self)
         isDefined = is_a_defined(self)
      end function get_a_i_v
      function get_a_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_a(self)
         isDefined = is_a_defined(self)
      end function get_a_v_i
      function get_a_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%a
      end function get_a_v
      function is_a_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%a /= FLOAT_UNDEFINED)
      end function is_a_defined
      subroutine set_a(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%a = value
      end subroutine set_a
      function get_fmt_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_fmt(self)
         isDefined = is_fmt_defined(self)
      end function get_fmt_i_v
      function get_fmt_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_fmt(self)
         isDefined = is_fmt_defined(self)
      end function get_fmt_v_i
      function get_fmt_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%fmt
      end function get_fmt_v
      function is_fmt_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%fmt /= FLOAT_UNDEFINED)
      end function is_fmt_defined
      subroutine set_fmt(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%fmt = value
      end subroutine set_fmt
      function get_t0_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_t0(self)
         isDefined = is_t0_defined(self)
      end function get_t0_i_v
      function get_t0_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_t0(self)
         isDefined = is_t0_defined(self)
      end function get_t0_v_i
      function get_t0_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%t0
      end function get_t0_v
      function is_t0_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%t0 /= FLOAT_UNDEFINED)
      end function is_t0_defined
      subroutine set_t0(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%t0 = value
      end subroutine set_t0
      function get_t1_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_t1(self)
         isDefined = is_t1_defined(self)
      end function get_t1_i_v
      function get_t1_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_t1(self)
         isDefined = is_t1_defined(self)
      end function get_t1_v_i
      function get_t1_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%t1
      end function get_t1_v
      function is_t1_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%t1 /= FLOAT_UNDEFINED)
      end function is_t1_defined
      subroutine set_t1(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%t1 = value
      end subroutine set_t1
      function get_t2_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_t2(self)
         isDefined = is_t2_defined(self)
      end function get_t2_i_v
      function get_t2_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_t2(self)
         isDefined = is_t2_defined(self)
      end function get_t2_v_i
      function get_t2_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%t2
      end function get_t2_v
      function is_t2_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%t2 /= FLOAT_UNDEFINED)
      end function is_t2_defined
      subroutine set_t2(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%t2 = value
      end subroutine set_t2
      function get_t3_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_t3(self)
         isDefined = is_t3_defined(self)
      end function get_t3_i_v
      function get_t3_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_t3(self)
         isDefined = is_t3_defined(self)
      end function get_t3_v_i
      function get_t3_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%t3
      end function get_t3_v
      function is_t3_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%t3 /= FLOAT_UNDEFINED)
      end function is_t3_defined
      subroutine set_t3(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%t3 = value
      end subroutine set_t3
      function get_t4_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_t4(self)
         isDefined = is_t4_defined(self)
      end function get_t4_i_v
      function get_t4_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_t4(self)
         isDefined = is_t4_defined(self)
      end function get_t4_v_i
      function get_t4_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%t4
      end function get_t4_v
      function is_t4_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%t4 /= FLOAT_UNDEFINED)
      end function is_t4_defined
      subroutine set_t4(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%t4 = value
      end subroutine set_t4
      function get_t5_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_t5(self)
         isDefined = is_t5_defined(self)
      end function get_t5_i_v
      function get_t5_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_t5(self)
         isDefined = is_t5_defined(self)
      end function get_t5_v_i
      function get_t5_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%t5
      end function get_t5_v
      function is_t5_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%t5 /= FLOAT_UNDEFINED)
      end function is_t5_defined
      subroutine set_t5(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%t5 = value
      end subroutine set_t5
      function get_t6_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_t6(self)
         isDefined = is_t6_defined(self)
      end function get_t6_i_v
      function get_t6_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_t6(self)
         isDefined = is_t6_defined(self)
      end function get_t6_v_i
      function get_t6_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%t6
      end function get_t6_v
      function is_t6_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%t6 /= FLOAT_UNDEFINED)
      end function is_t6_defined
      subroutine set_t6(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%t6 = value
      end subroutine set_t6
      function get_t7_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_t7(self)
         isDefined = is_t7_defined(self)
      end function get_t7_i_v
      function get_t7_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_t7(self)
         isDefined = is_t7_defined(self)
      end function get_t7_v_i
      function get_t7_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%t7
      end function get_t7_v
      function is_t7_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%t7 /= FLOAT_UNDEFINED)
      end function is_t7_defined
      subroutine set_t7(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%t7 = value
      end subroutine set_t7
      function get_t8_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_t8(self)
         isDefined = is_t8_defined(self)
      end function get_t8_i_v
      function get_t8_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_t8(self)
         isDefined = is_t8_defined(self)
      end function get_t8_v_i
      function get_t8_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%t8
      end function get_t8_v
      function is_t8_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%t8 /= FLOAT_UNDEFINED)
      end function is_t8_defined
      subroutine set_t8(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%t8 = value
      end subroutine set_t8
      function get_t9_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_t9(self)
         isDefined = is_t9_defined(self)
      end function get_t9_i_v
      function get_t9_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_t9(self)
         isDefined = is_t9_defined(self)
      end function get_t9_v_i
      function get_t9_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%t9
      end function get_t9_v
      function is_t9_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%t9 /= FLOAT_UNDEFINED)
      end function is_t9_defined
      subroutine set_t9(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%t9 = value
      end subroutine set_t9
      function get_f_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_f(self)
         isDefined = is_f_defined(self)
      end function get_f_i_v
      function get_f_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_f(self)
         isDefined = is_f_defined(self)
      end function get_f_v_i
      function get_f_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%f
      end function get_f_v
      function is_f_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%f /= FLOAT_UNDEFINED)
      end function is_f_defined
      subroutine set_f(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%f = value
      end subroutine set_f
      function get_resp0_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_resp0(self)
         isDefined = is_resp0_defined(self)
      end function get_resp0_i_v
      function get_resp0_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_resp0(self)
         isDefined = is_resp0_defined(self)
      end function get_resp0_v_i
      function get_resp0_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%resp0
      end function get_resp0_v
      function is_resp0_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%resp0 /= FLOAT_UNDEFINED)
      end function is_resp0_defined
      subroutine set_resp0(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%resp0 = value
      end subroutine set_resp0
      function get_resp1_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_resp1(self)
         isDefined = is_resp1_defined(self)
      end function get_resp1_i_v
      function get_resp1_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_resp1(self)
         isDefined = is_resp1_defined(self)
      end function get_resp1_v_i
      function get_resp1_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%resp1
      end function get_resp1_v
      function is_resp1_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%resp1 /= FLOAT_UNDEFINED)
      end function is_resp1_defined
      subroutine set_resp1(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%resp1 = value
      end subroutine set_resp1
      function get_resp2_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_resp2(self)
         isDefined = is_resp2_defined(self)
      end function get_resp2_i_v
      function get_resp2_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_resp2(self)
         isDefined = is_resp2_defined(self)
      end function get_resp2_v_i
      function get_resp2_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%resp2
      end function get_resp2_v
      function is_resp2_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%resp2 /= FLOAT_UNDEFINED)
      end function is_resp2_defined
      subroutine set_resp2(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%resp2 = value
      end subroutine set_resp2
      function get_resp3_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_resp3(self)
         isDefined = is_resp3_defined(self)
      end function get_resp3_i_v
      function get_resp3_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_resp3(self)
         isDefined = is_resp3_defined(self)
      end function get_resp3_v_i
      function get_resp3_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%resp3
      end function get_resp3_v
      function is_resp3_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%resp3 /= FLOAT_UNDEFINED)
      end function is_resp3_defined
      subroutine set_resp3(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%resp3 = value
      end subroutine set_resp3
      function get_resp4_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_resp4(self)
         isDefined = is_resp4_defined(self)
      end function get_resp4_i_v
      function get_resp4_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_resp4(self)
         isDefined = is_resp4_defined(self)
      end function get_resp4_v_i
      function get_resp4_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%resp4
      end function get_resp4_v
      function is_resp4_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%resp4 /= FLOAT_UNDEFINED)
      end function is_resp4_defined
      subroutine set_resp4(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%resp4 = value
      end subroutine set_resp4
      function get_resp5_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_resp5(self)
         isDefined = is_resp5_defined(self)
      end function get_resp5_i_v
      function get_resp5_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_resp5(self)
         isDefined = is_resp5_defined(self)
      end function get_resp5_v_i
      function get_resp5_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%resp5
      end function get_resp5_v
      function is_resp5_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%resp5 /= FLOAT_UNDEFINED)
      end function is_resp5_defined
      subroutine set_resp5(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%resp5 = value
      end subroutine set_resp5
      function get_resp6_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_resp6(self)
         isDefined = is_resp6_defined(self)
      end function get_resp6_i_v
      function get_resp6_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_resp6(self)
         isDefined = is_resp6_defined(self)
      end function get_resp6_v_i
      function get_resp6_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%resp6
      end function get_resp6_v
      function is_resp6_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%resp6 /= FLOAT_UNDEFINED)
      end function is_resp6_defined
      subroutine set_resp6(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%resp6 = value
      end subroutine set_resp6
      function get_resp7_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_resp7(self)
         isDefined = is_resp7_defined(self)
      end function get_resp7_i_v
      function get_resp7_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_resp7(self)
         isDefined = is_resp7_defined(self)
      end function get_resp7_v_i
      function get_resp7_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%resp7
      end function get_resp7_v
      function is_resp7_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%resp7 /= FLOAT_UNDEFINED)
      end function is_resp7_defined
      subroutine set_resp7(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%resp7 = value
      end subroutine set_resp7
      function get_resp8_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_resp8(self)
         isDefined = is_resp8_defined(self)
      end function get_resp8_i_v
      function get_resp8_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_resp8(self)
         isDefined = is_resp8_defined(self)
      end function get_resp8_v_i
      function get_resp8_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%resp8
      end function get_resp8_v
      function is_resp8_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%resp8 /= FLOAT_UNDEFINED)
      end function is_resp8_defined
      subroutine set_resp8(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%resp8 = value
      end subroutine set_resp8
      function get_resp9_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_resp9(self)
         isDefined = is_resp9_defined(self)
      end function get_resp9_i_v
      function get_resp9_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_resp9(self)
         isDefined = is_resp9_defined(self)
      end function get_resp9_v_i
      function get_resp9_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%resp9
      end function get_resp9_v
      function is_resp9_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%resp9 /= FLOAT_UNDEFINED)
      end function is_resp9_defined
      subroutine set_resp9(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%resp9 = value
      end subroutine set_resp9
      function get_stla_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_stla(self)
         isDefined = is_stla_defined(self)
      end function get_stla_i_v
      function get_stla_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_stla(self)
         isDefined = is_stla_defined(self)
      end function get_stla_v_i
      function get_stla_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%stla
      end function get_stla_v
      function is_stla_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%stla /= FLOAT_UNDEFINED)
      end function is_stla_defined
      subroutine set_stla(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%stla = value
      end subroutine set_stla
      function get_stlo_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_stlo(self)
         isDefined = is_stlo_defined(self)
      end function get_stlo_i_v
      function get_stlo_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_stlo(self)
         isDefined = is_stlo_defined(self)
      end function get_stlo_v_i
      function get_stlo_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%stlo
      end function get_stlo_v
      function is_stlo_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%stlo /= FLOAT_UNDEFINED)
      end function is_stlo_defined
      subroutine set_stlo(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%stlo = value
      end subroutine set_stlo
      function get_stel_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_stel(self)
         isDefined = is_stel_defined(self)
      end function get_stel_i_v
      function get_stel_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_stel(self)
         isDefined = is_stel_defined(self)
      end function get_stel_v_i
      function get_stel_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%stel
      end function get_stel_v
      function is_stel_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%stel /= FLOAT_UNDEFINED)
      end function is_stel_defined
      subroutine set_stel(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%stel = value
      end subroutine set_stel
      function get_stdp_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_stdp(self)
         isDefined = is_stdp_defined(self)
      end function get_stdp_i_v
      function get_stdp_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_stdp(self)
         isDefined = is_stdp_defined(self)
      end function get_stdp_v_i
      function get_stdp_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%stdp
      end function get_stdp_v
      function is_stdp_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%stdp /= FLOAT_UNDEFINED)
      end function is_stdp_defined
      subroutine set_stdp(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%stdp = value
      end subroutine set_stdp
      function get_evla_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_evla(self)
         isDefined = is_evla_defined(self)
      end function get_evla_i_v
      function get_evla_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_evla(self)
         isDefined = is_evla_defined(self)
      end function get_evla_v_i
      function get_evla_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%evla
      end function get_evla_v
      function is_evla_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%evla /= FLOAT_UNDEFINED)
      end function is_evla_defined
      subroutine set_evla(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%evla = value
      end subroutine set_evla
      function get_evlo_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_evlo(self)
         isDefined = is_evlo_defined(self)
      end function get_evlo_i_v
      function get_evlo_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_evlo(self)
         isDefined = is_evlo_defined(self)
      end function get_evlo_v_i
      function get_evlo_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%evlo
      end function get_evlo_v
      function is_evlo_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%evlo /= FLOAT_UNDEFINED)
      end function is_evlo_defined
      subroutine set_evlo(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%evlo = value
      end subroutine set_evlo
      function get_evel_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_evel(self)
         isDefined = is_evel_defined(self)
      end function get_evel_i_v
      function get_evel_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_evel(self)
         isDefined = is_evel_defined(self)
      end function get_evel_v_i
      function get_evel_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%evel
      end function get_evel_v
      function is_evel_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%evel /= FLOAT_UNDEFINED)
      end function is_evel_defined
      subroutine set_evel(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%evel = value
      end subroutine set_evel
      function get_evdp_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_evdp(self)
         isDefined = is_evdp_defined(self)
      end function get_evdp_i_v
      function get_evdp_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_evdp(self)
         isDefined = is_evdp_defined(self)
      end function get_evdp_v_i
      function get_evdp_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%evdp
      end function get_evdp_v
      function is_evdp_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%evdp /= FLOAT_UNDEFINED)
      end function is_evdp_defined
      subroutine set_evdp(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%evdp = value
      end subroutine set_evdp
      function get_mag_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_mag(self)
         isDefined = is_mag_defined(self)
      end function get_mag_i_v
      function get_mag_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_mag(self)
         isDefined = is_mag_defined(self)
      end function get_mag_v_i
      function get_mag_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%mag
      end function get_mag_v
      function is_mag_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%mag /= FLOAT_UNDEFINED)
      end function is_mag_defined
      subroutine set_mag(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%mag = value
      end subroutine set_mag
      function get_user0_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_user0(self)
         isDefined = is_user0_defined(self)
      end function get_user0_i_v
      function get_user0_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_user0(self)
         isDefined = is_user0_defined(self)
      end function get_user0_v_i
      function get_user0_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%user0
      end function get_user0_v
      function is_user0_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%user0 /= FLOAT_UNDEFINED)
      end function is_user0_defined
      subroutine set_user0(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%user0 = value
      end subroutine set_user0
      function get_user1_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_user1(self)
         isDefined = is_user1_defined(self)
      end function get_user1_i_v
      function get_user1_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_user1(self)
         isDefined = is_user1_defined(self)
      end function get_user1_v_i
      function get_user1_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%user1
      end function get_user1_v
      function is_user1_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%user1 /= FLOAT_UNDEFINED)
      end function is_user1_defined
      subroutine set_user1(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%user1 = value
      end subroutine set_user1
      function get_user2_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_user2(self)
         isDefined = is_user2_defined(self)
      end function get_user2_i_v
      function get_user2_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_user2(self)
         isDefined = is_user2_defined(self)
      end function get_user2_v_i
      function get_user2_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%user2
      end function get_user2_v
      function is_user2_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%user2 /= FLOAT_UNDEFINED)
      end function is_user2_defined
      subroutine set_user2(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%user2 = value
      end subroutine set_user2
      function get_user3_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_user3(self)
         isDefined = is_user3_defined(self)
      end function get_user3_i_v
      function get_user3_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_user3(self)
         isDefined = is_user3_defined(self)
      end function get_user3_v_i
      function get_user3_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%user3
      end function get_user3_v
      function is_user3_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%user3 /= FLOAT_UNDEFINED)
      end function is_user3_defined
      subroutine set_user3(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%user3 = value
      end subroutine set_user3
      function get_user4_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_user4(self)
         isDefined = is_user4_defined(self)
      end function get_user4_i_v
      function get_user4_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_user4(self)
         isDefined = is_user4_defined(self)
      end function get_user4_v_i
      function get_user4_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%user4
      end function get_user4_v
      function is_user4_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%user4 /= FLOAT_UNDEFINED)
      end function is_user4_defined
      subroutine set_user4(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%user4 = value
      end subroutine set_user4
      function get_user5_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_user5(self)
         isDefined = is_user5_defined(self)
      end function get_user5_i_v
      function get_user5_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_user5(self)
         isDefined = is_user5_defined(self)
      end function get_user5_v_i
      function get_user5_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%user5
      end function get_user5_v
      function is_user5_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%user5 /= FLOAT_UNDEFINED)
      end function is_user5_defined
      subroutine set_user5(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%user5 = value
      end subroutine set_user5
      function get_user6_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_user6(self)
         isDefined = is_user6_defined(self)
      end function get_user6_i_v
      function get_user6_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_user6(self)
         isDefined = is_user6_defined(self)
      end function get_user6_v_i
      function get_user6_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%user6
      end function get_user6_v
      function is_user6_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%user6 /= FLOAT_UNDEFINED)
      end function is_user6_defined
      subroutine set_user6(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%user6 = value
      end subroutine set_user6
      function get_user7_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_user7(self)
         isDefined = is_user7_defined(self)
      end function get_user7_i_v
      function get_user7_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_user7(self)
         isDefined = is_user7_defined(self)
      end function get_user7_v_i
      function get_user7_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%user7
      end function get_user7_v
      function is_user7_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%user7 /= FLOAT_UNDEFINED)
      end function is_user7_defined
      subroutine set_user7(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%user7 = value
      end subroutine set_user7
      function get_user8_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_user8(self)
         isDefined = is_user8_defined(self)
      end function get_user8_i_v
      function get_user8_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_user8(self)
         isDefined = is_user8_defined(self)
      end function get_user8_v_i
      function get_user8_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%user8
      end function get_user8_v
      function is_user8_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%user8 /= FLOAT_UNDEFINED)
      end function is_user8_defined
      subroutine set_user8(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%user8 = value
      end subroutine set_user8
      function get_user9_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_user9(self)
         isDefined = is_user9_defined(self)
      end function get_user9_i_v
      function get_user9_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_user9(self)
         isDefined = is_user9_defined(self)
      end function get_user9_v_i
      function get_user9_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%user9
      end function get_user9_v
      function is_user9_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%user9 /= FLOAT_UNDEFINED)
      end function is_user9_defined
      subroutine set_user9(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%user9 = value
      end subroutine set_user9
      function get_dist_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_dist(self)
         isDefined = is_dist_defined(self)
      end function get_dist_i_v
      function get_dist_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_dist(self)
         isDefined = is_dist_defined(self)
      end function get_dist_v_i
      function get_dist_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%dist
      end function get_dist_v
      function is_dist_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%dist /= FLOAT_UNDEFINED)
      end function is_dist_defined
      subroutine set_dist(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%dist = value
      end subroutine set_dist
      function get_az_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_az(self)
         isDefined = is_az_defined(self)
      end function get_az_i_v
      function get_az_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_az(self)
         isDefined = is_az_defined(self)
      end function get_az_v_i
      function get_az_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%az
      end function get_az_v
      function is_az_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%az /= FLOAT_UNDEFINED)
      end function is_az_defined
      subroutine set_az(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%az = value
      end subroutine set_az
      function get_baz_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_baz(self)
         isDefined = is_baz_defined(self)
      end function get_baz_i_v
      function get_baz_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_baz(self)
         isDefined = is_baz_defined(self)
      end function get_baz_v_i
      function get_baz_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%baz
      end function get_baz_v
      function is_baz_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%baz /= FLOAT_UNDEFINED)
      end function is_baz_defined
      subroutine set_baz(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%baz = value
      end subroutine set_baz
      function get_gcarc_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_gcarc(self)
         isDefined = is_gcarc_defined(self)
      end function get_gcarc_i_v
      function get_gcarc_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_gcarc(self)
         isDefined = is_gcarc_defined(self)
      end function get_gcarc_v_i
      function get_gcarc_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%gcarc
      end function get_gcarc_v
      function is_gcarc_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%gcarc /= FLOAT_UNDEFINED)
      end function is_gcarc_defined
      subroutine set_gcarc(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%gcarc = value
      end subroutine set_gcarc
      function get_sb_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_sb(self)
         isDefined = is_sb_defined(self)
      end function get_sb_i_v
      function get_sb_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_sb(self)
         isDefined = is_sb_defined(self)
      end function get_sb_v_i
      function get_sb_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%sb
      end function get_sb_v
      function is_sb_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%sb /= FLOAT_UNDEFINED)
      end function is_sb_defined
      subroutine set_sb(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%sb = value
      end subroutine set_sb
      function get_sdelta_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_sdelta(self)
         isDefined = is_sdelta_defined(self)
      end function get_sdelta_i_v
      function get_sdelta_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_sdelta(self)
         isDefined = is_sdelta_defined(self)
      end function get_sdelta_v_i
      function get_sdelta_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%sdelta
      end function get_sdelta_v
      function is_sdelta_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%sdelta /= FLOAT_UNDEFINED)
      end function is_sdelta_defined
      subroutine set_sdelta(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%sdelta = value
      end subroutine set_sdelta
      function get_depmen_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_depmen(self)
         isDefined = is_depmen_defined(self)
      end function get_depmen_i_v
      function get_depmen_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_depmen(self)
         isDefined = is_depmen_defined(self)
      end function get_depmen_v_i
      function get_depmen_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%depmen
      end function get_depmen_v
      function is_depmen_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%depmen /= FLOAT_UNDEFINED)
      end function is_depmen_defined
      subroutine set_depmen(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%depmen = value
      end subroutine set_depmen
      function get_cmpaz_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_cmpaz(self)
         isDefined = is_cmpaz_defined(self)
      end function get_cmpaz_i_v
      function get_cmpaz_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_cmpaz(self)
         isDefined = is_cmpaz_defined(self)
      end function get_cmpaz_v_i
      function get_cmpaz_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%cmpaz
      end function get_cmpaz_v
      function is_cmpaz_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%cmpaz /= FLOAT_UNDEFINED)
      end function is_cmpaz_defined
      subroutine set_cmpaz(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%cmpaz = value
      end subroutine set_cmpaz
      function get_cmpinc_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_cmpinc(self)
         isDefined = is_cmpinc_defined(self)
      end function get_cmpinc_i_v
      function get_cmpinc_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_cmpinc(self)
         isDefined = is_cmpinc_defined(self)
      end function get_cmpinc_v_i
      function get_cmpinc_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%cmpinc
      end function get_cmpinc_v
      function is_cmpinc_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%cmpinc /= FLOAT_UNDEFINED)
      end function is_cmpinc_defined
      subroutine set_cmpinc(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%cmpinc = value
      end subroutine set_cmpinc
      function get_xminimum_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_xminimum(self)
         isDefined = is_xminimum_defined(self)
      end function get_xminimum_i_v
      function get_xminimum_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_xminimum(self)
         isDefined = is_xminimum_defined(self)
      end function get_xminimum_v_i
      function get_xminimum_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%xminimum
      end function get_xminimum_v
      function is_xminimum_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%xminimum /= FLOAT_UNDEFINED)
      end function is_xminimum_defined
      subroutine set_xminimum(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%xminimum = value
      end subroutine set_xminimum
      function get_xmaximum_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_xmaximum(self)
         isDefined = is_xmaximum_defined(self)
      end function get_xmaximum_i_v
      function get_xmaximum_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_xmaximum(self)
         isDefined = is_xmaximum_defined(self)
      end function get_xmaximum_v_i
      function get_xmaximum_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%xmaximum
      end function get_xmaximum_v
      function is_xmaximum_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%xmaximum /= FLOAT_UNDEFINED)
      end function is_xmaximum_defined
      subroutine set_xmaximum(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%xmaximum = value
      end subroutine set_xmaximum
      function get_yminimum_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_yminimum(self)
         isDefined = is_yminimum_defined(self)
      end function get_yminimum_i_v
      function get_yminimum_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_yminimum(self)
         isDefined = is_yminimum_defined(self)
      end function get_yminimum_v_i
      function get_yminimum_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%yminimum
      end function get_yminimum_v
      function is_yminimum_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%yminimum /= FLOAT_UNDEFINED)
      end function is_yminimum_defined
      subroutine set_yminimum(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%yminimum = value
      end subroutine set_yminimum
      function get_ymaximum_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_ymaximum(self)
         isDefined = is_ymaximum_defined(self)
      end function get_ymaximum_i_v
      function get_ymaximum_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_ymaximum(self)
         isDefined = is_ymaximum_defined(self)
      end function get_ymaximum_v_i
      function get_ymaximum_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%ymaximum
      end function get_ymaximum_v
      function is_ymaximum_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%ymaximum /= FLOAT_UNDEFINED)
      end function is_ymaximum_defined
      subroutine set_ymaximum(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%ymaximum = value
      end subroutine set_ymaximum
      function get_fhdr64_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_fhdr64(self)
         isDefined = is_fhdr64_defined(self)
      end function get_fhdr64_i_v
      function get_fhdr64_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_fhdr64(self)
         isDefined = is_fhdr64_defined(self)
      end function get_fhdr64_v_i
      function get_fhdr64_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%fhdr64
      end function get_fhdr64_v
      function is_fhdr64_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%fhdr64 /= FLOAT_UNDEFINED)
      end function is_fhdr64_defined
      subroutine set_fhdr64(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%fhdr64 = value
      end subroutine set_fhdr64
      function get_fhdr65_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_fhdr65(self)
         isDefined = is_fhdr65_defined(self)
      end function get_fhdr65_i_v
      function get_fhdr65_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_fhdr65(self)
         isDefined = is_fhdr65_defined(self)
      end function get_fhdr65_v_i
      function get_fhdr65_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%fhdr65
      end function get_fhdr65_v
      function is_fhdr65_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%fhdr65 /= FLOAT_UNDEFINED)
      end function is_fhdr65_defined
      subroutine set_fhdr65(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%fhdr65 = value
      end subroutine set_fhdr65
      function get_fhdr66_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_fhdr66(self)
         isDefined = is_fhdr66_defined(self)
      end function get_fhdr66_i_v
      function get_fhdr66_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_fhdr66(self)
         isDefined = is_fhdr66_defined(self)
      end function get_fhdr66_v_i
      function get_fhdr66_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%fhdr66
      end function get_fhdr66_v
      function is_fhdr66_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%fhdr66 /= FLOAT_UNDEFINED)
      end function is_fhdr66_defined
      subroutine set_fhdr66(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%fhdr66 = value
      end subroutine set_fhdr66
      function get_fhdr67_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_fhdr67(self)
         isDefined = is_fhdr67_defined(self)
      end function get_fhdr67_i_v
      function get_fhdr67_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_fhdr67(self)
         isDefined = is_fhdr67_defined(self)
      end function get_fhdr67_v_i
      function get_fhdr67_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%fhdr67
      end function get_fhdr67_v
      function is_fhdr67_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%fhdr67 /= FLOAT_UNDEFINED)
      end function is_fhdr67_defined
      subroutine set_fhdr67(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%fhdr67 = value
      end subroutine set_fhdr67
      function get_fhdr68_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_fhdr68(self)
         isDefined = is_fhdr68_defined(self)
      end function get_fhdr68_i_v
      function get_fhdr68_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_fhdr68(self)
         isDefined = is_fhdr68_defined(self)
      end function get_fhdr68_v_i
      function get_fhdr68_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%fhdr68
      end function get_fhdr68_v
      function is_fhdr68_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%fhdr68 /= FLOAT_UNDEFINED)
      end function is_fhdr68_defined
      subroutine set_fhdr68(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%fhdr68 = value
      end subroutine set_fhdr68
      function get_fhdr69_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_fhdr69(self)
         isDefined = is_fhdr69_defined(self)
      end function get_fhdr69_i_v
      function get_fhdr69_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_fhdr69(self)
         isDefined = is_fhdr69_defined(self)
      end function get_fhdr69_v_i
      function get_fhdr69_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%fhdr69
      end function get_fhdr69_v
      function is_fhdr69_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%fhdr69 /= FLOAT_UNDEFINED)
      end function is_fhdr69_defined
      subroutine set_fhdr69(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%fhdr69 = value
      end subroutine set_fhdr69
      function get_fhdr70_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND), intent(out):: value
         Logical:: isDefined
         value = get_fhdr70(self)
         isDefined = is_fhdr70_defined(self)
      end function get_fhdr70_i_v
      function get_fhdr70_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Real(kind=SAC_REAL_KIND):: value
         value = get_fhdr70(self)
         isDefined = is_fhdr70_defined(self)
      end function get_fhdr70_v_i
      function get_fhdr70_v(self) result(value)
         type(Sac), intent(in):: self
         Real(kind=SAC_REAL_KIND):: value
         value = self%meta%fhdr70
      end function get_fhdr70_v
      function is_fhdr70_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%fhdr70 /= FLOAT_UNDEFINED)
      end function is_fhdr70_defined
      subroutine set_fhdr70(self, value)
         type(Sac), intent(inout):: self
         Real(kind=SAC_REAL_KIND), intent(in):: value
         self%meta%fhdr70 = value
      end subroutine set_fhdr70
      function get_nzyear_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND), intent(out):: value
         Logical:: isDefined
         value = get_nzyear(self)
         isDefined = is_nzyear_defined(self)
      end function get_nzyear_i_v
      function get_nzyear_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Integer(kind=SAC_INTEGER_KIND):: value
         value = get_nzyear(self)
         isDefined = is_nzyear_defined(self)
      end function get_nzyear_v_i
      function get_nzyear_v(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND):: value
         value = self%meta%nzyear
      end function get_nzyear_v
      function is_nzyear_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%nzyear /= INTEGER_UNDEFINED)
      end function is_nzyear_defined
      subroutine set_nzyear(self, value)
         type(Sac), intent(inout):: self
         Integer(kind=SAC_INTEGER_KIND), intent(in):: value
         self%meta%nzyear = value
      end subroutine set_nzyear
      function get_nzjday_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND), intent(out):: value
         Logical:: isDefined
         value = get_nzjday(self)
         isDefined = is_nzjday_defined(self)
      end function get_nzjday_i_v
      function get_nzjday_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Integer(kind=SAC_INTEGER_KIND):: value
         value = get_nzjday(self)
         isDefined = is_nzjday_defined(self)
      end function get_nzjday_v_i
      function get_nzjday_v(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND):: value
         value = self%meta%nzjday
      end function get_nzjday_v
      function is_nzjday_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%nzjday /= INTEGER_UNDEFINED)
      end function is_nzjday_defined
      subroutine set_nzjday(self, value)
         type(Sac), intent(inout):: self
         Integer(kind=SAC_INTEGER_KIND), intent(in):: value
         self%meta%nzjday = value
      end subroutine set_nzjday
      function get_nzhour_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND), intent(out):: value
         Logical:: isDefined
         value = get_nzhour(self)
         isDefined = is_nzhour_defined(self)
      end function get_nzhour_i_v
      function get_nzhour_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Integer(kind=SAC_INTEGER_KIND):: value
         value = get_nzhour(self)
         isDefined = is_nzhour_defined(self)
      end function get_nzhour_v_i
      function get_nzhour_v(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND):: value
         value = self%meta%nzhour
      end function get_nzhour_v
      function is_nzhour_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%nzhour /= INTEGER_UNDEFINED)
      end function is_nzhour_defined
      subroutine set_nzhour(self, value)
         type(Sac), intent(inout):: self
         Integer(kind=SAC_INTEGER_KIND), intent(in):: value
         self%meta%nzhour = value
      end subroutine set_nzhour
      function get_nzmin_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND), intent(out):: value
         Logical:: isDefined
         value = get_nzmin(self)
         isDefined = is_nzmin_defined(self)
      end function get_nzmin_i_v
      function get_nzmin_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Integer(kind=SAC_INTEGER_KIND):: value
         value = get_nzmin(self)
         isDefined = is_nzmin_defined(self)
      end function get_nzmin_v_i
      function get_nzmin_v(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND):: value
         value = self%meta%nzmin
      end function get_nzmin_v
      function is_nzmin_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%nzmin /= INTEGER_UNDEFINED)
      end function is_nzmin_defined
      subroutine set_nzmin(self, value)
         type(Sac), intent(inout):: self
         Integer(kind=SAC_INTEGER_KIND), intent(in):: value
         self%meta%nzmin = value
      end subroutine set_nzmin
      function get_nzsec_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND), intent(out):: value
         Logical:: isDefined
         value = get_nzsec(self)
         isDefined = is_nzsec_defined(self)
      end function get_nzsec_i_v
      function get_nzsec_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Integer(kind=SAC_INTEGER_KIND):: value
         value = get_nzsec(self)
         isDefined = is_nzsec_defined(self)
      end function get_nzsec_v_i
      function get_nzsec_v(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND):: value
         value = self%meta%nzsec
      end function get_nzsec_v
      function is_nzsec_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%nzsec /= INTEGER_UNDEFINED)
      end function is_nzsec_defined
      subroutine set_nzsec(self, value)
         type(Sac), intent(inout):: self
         Integer(kind=SAC_INTEGER_KIND), intent(in):: value
         self%meta%nzsec = value
      end subroutine set_nzsec
      function get_nzmsec_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND), intent(out):: value
         Logical:: isDefined
         value = get_nzmsec(self)
         isDefined = is_nzmsec_defined(self)
      end function get_nzmsec_i_v
      function get_nzmsec_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Integer(kind=SAC_INTEGER_KIND):: value
         value = get_nzmsec(self)
         isDefined = is_nzmsec_defined(self)
      end function get_nzmsec_v_i
      function get_nzmsec_v(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND):: value
         value = self%meta%nzmsec
      end function get_nzmsec_v
      function is_nzmsec_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%nzmsec /= INTEGER_UNDEFINED)
      end function is_nzmsec_defined
      subroutine set_nzmsec(self, value)
         type(Sac), intent(inout):: self
         Integer(kind=SAC_INTEGER_KIND), intent(in):: value
         self%meta%nzmsec = value
      end subroutine set_nzmsec
      function get_nvhdr_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND), intent(out):: value
         Logical:: isDefined
         value = get_nvhdr(self)
         isDefined = is_nvhdr_defined(self)
      end function get_nvhdr_i_v
      function get_nvhdr_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Integer(kind=SAC_INTEGER_KIND):: value
         value = get_nvhdr(self)
         isDefined = is_nvhdr_defined(self)
      end function get_nvhdr_v_i
      function get_nvhdr_v(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND):: value
         value = self%meta%nvhdr
      end function get_nvhdr_v
      function is_nvhdr_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%nvhdr /= INTEGER_UNDEFINED)
      end function is_nvhdr_defined
      subroutine set_nvhdr(self, value)
         type(Sac), intent(inout):: self
         Integer(kind=SAC_INTEGER_KIND), intent(in):: value
         self%meta%nvhdr = value
      end subroutine set_nvhdr
      function get_norid_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND), intent(out):: value
         Logical:: isDefined
         value = get_norid(self)
         isDefined = is_norid_defined(self)
      end function get_norid_i_v
      function get_norid_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Integer(kind=SAC_INTEGER_KIND):: value
         value = get_norid(self)
         isDefined = is_norid_defined(self)
      end function get_norid_v_i
      function get_norid_v(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND):: value
         value = self%meta%norid
      end function get_norid_v
      function is_norid_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%norid /= INTEGER_UNDEFINED)
      end function is_norid_defined
      subroutine set_norid(self, value)
         type(Sac), intent(inout):: self
         Integer(kind=SAC_INTEGER_KIND), intent(in):: value
         self%meta%norid = value
      end subroutine set_norid
      function get_nevid_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND), intent(out):: value
         Logical:: isDefined
         value = get_nevid(self)
         isDefined = is_nevid_defined(self)
      end function get_nevid_i_v
      function get_nevid_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Integer(kind=SAC_INTEGER_KIND):: value
         value = get_nevid(self)
         isDefined = is_nevid_defined(self)
      end function get_nevid_v_i
      function get_nevid_v(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND):: value
         value = self%meta%nevid
      end function get_nevid_v
      function is_nevid_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%nevid /= INTEGER_UNDEFINED)
      end function is_nevid_defined
      subroutine set_nevid(self, value)
         type(Sac), intent(inout):: self
         Integer(kind=SAC_INTEGER_KIND), intent(in):: value
         self%meta%nevid = value
      end subroutine set_nevid
      function get_npts_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND), intent(out):: value
         Logical:: isDefined
         value = get_npts(self)
         isDefined = is_npts_defined(self)
      end function get_npts_i_v
      function get_npts_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Integer(kind=SAC_INTEGER_KIND):: value
         value = get_npts(self)
         isDefined = is_npts_defined(self)
      end function get_npts_v_i
      function get_npts_v(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND):: value
         value = self%meta%npts
      end function get_npts_v
      function is_npts_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%npts /= INTEGER_UNDEFINED)
      end function is_npts_defined
      subroutine set_npts(self, value)
         type(Sac), intent(inout):: self
         Integer(kind=SAC_INTEGER_KIND), intent(in):: value
         self%meta%npts = value
      end subroutine set_npts
      function get_nsnpts_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND), intent(out):: value
         Logical:: isDefined
         value = get_nsnpts(self)
         isDefined = is_nsnpts_defined(self)
      end function get_nsnpts_i_v
      function get_nsnpts_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Integer(kind=SAC_INTEGER_KIND):: value
         value = get_nsnpts(self)
         isDefined = is_nsnpts_defined(self)
      end function get_nsnpts_v_i
      function get_nsnpts_v(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND):: value
         value = self%meta%nsnpts
      end function get_nsnpts_v
      function is_nsnpts_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%nsnpts /= INTEGER_UNDEFINED)
      end function is_nsnpts_defined
      subroutine set_nsnpts(self, value)
         type(Sac), intent(inout):: self
         Integer(kind=SAC_INTEGER_KIND), intent(in):: value
         self%meta%nsnpts = value
      end subroutine set_nsnpts
      function get_nwfid_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND), intent(out):: value
         Logical:: isDefined
         value = get_nwfid(self)
         isDefined = is_nwfid_defined(self)
      end function get_nwfid_i_v
      function get_nwfid_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Integer(kind=SAC_INTEGER_KIND):: value
         value = get_nwfid(self)
         isDefined = is_nwfid_defined(self)
      end function get_nwfid_v_i
      function get_nwfid_v(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND):: value
         value = self%meta%nwfid
      end function get_nwfid_v
      function is_nwfid_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%nwfid /= INTEGER_UNDEFINED)
      end function is_nwfid_defined
      subroutine set_nwfid(self, value)
         type(Sac), intent(inout):: self
         Integer(kind=SAC_INTEGER_KIND), intent(in):: value
         self%meta%nwfid = value
      end subroutine set_nwfid
      function get_nxsize_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND), intent(out):: value
         Logical:: isDefined
         value = get_nxsize(self)
         isDefined = is_nxsize_defined(self)
      end function get_nxsize_i_v
      function get_nxsize_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Integer(kind=SAC_INTEGER_KIND):: value
         value = get_nxsize(self)
         isDefined = is_nxsize_defined(self)
      end function get_nxsize_v_i
      function get_nxsize_v(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND):: value
         value = self%meta%nxsize
      end function get_nxsize_v
      function is_nxsize_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%nxsize /= INTEGER_UNDEFINED)
      end function is_nxsize_defined
      subroutine set_nxsize(self, value)
         type(Sac), intent(inout):: self
         Integer(kind=SAC_INTEGER_KIND), intent(in):: value
         self%meta%nxsize = value
      end subroutine set_nxsize
      function get_nysize_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND), intent(out):: value
         Logical:: isDefined
         value = get_nysize(self)
         isDefined = is_nysize_defined(self)
      end function get_nysize_i_v
      function get_nysize_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Integer(kind=SAC_INTEGER_KIND):: value
         value = get_nysize(self)
         isDefined = is_nysize_defined(self)
      end function get_nysize_v_i
      function get_nysize_v(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND):: value
         value = self%meta%nysize
      end function get_nysize_v
      function is_nysize_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%nysize /= INTEGER_UNDEFINED)
      end function is_nysize_defined
      subroutine set_nysize(self, value)
         type(Sac), intent(inout):: self
         Integer(kind=SAC_INTEGER_KIND), intent(in):: value
         self%meta%nysize = value
      end subroutine set_nysize
      function get_nhdr56_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND), intent(out):: value
         Logical:: isDefined
         value = get_nhdr56(self)
         isDefined = is_nhdr56_defined(self)
      end function get_nhdr56_i_v
      function get_nhdr56_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Integer(kind=SAC_INTEGER_KIND):: value
         value = get_nhdr56(self)
         isDefined = is_nhdr56_defined(self)
      end function get_nhdr56_v_i
      function get_nhdr56_v(self) result(value)
         type(Sac), intent(in):: self
         Integer(kind=SAC_INTEGER_KIND):: value
         value = self%meta%nhdr56
      end function get_nhdr56_v
      function is_nhdr56_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%nhdr56 /= INTEGER_UNDEFINED)
      end function is_nhdr56_defined
      subroutine set_nhdr56(self, value)
         type(Sac), intent(inout):: self
         Integer(kind=SAC_INTEGER_KIND), intent(in):: value
         self%meta%nhdr56 = value
      end subroutine set_nhdr56
      function get_iftype_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         value = get_iftype(self)
         isDefined = is_iftype_defined(self)
      end function get_iftype_v_i
      function get_iftype_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX), intent(out):: value
         Logical:: isDefined
         value = get_iftype(self)
         isDefined = is_iftype_defined(self)
      end function get_iftype_i_v
      function get_iftype_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         Integer:: internalValue
         internalValue = self%meta%iftype
         if(.not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1))))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 6547, (".not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1)))"); error stop; end if
         value = ENUMERATED_VALUES(internalValue)
      end function get_iftype_v
      function is_iftype_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         ret = &
            (self%meta%iftype /= ENUMERATED_VALUE_UNDEFINED) &
            .and. (lbound(ENUMERATED_VALUES, 1) <= self%meta%iftype .and. self%meta%iftype <= ubound(ENUMERATED_VALUES, 1))
      end function is_iftype_defined
      subroutine set_iftype(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         Integer:: internalValue
         do internalValue = lbound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue)), ubound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue))
            if(value == ENUMERATED_VALUES(internalValue))then
               self%meta%iftype = internalValue
               return
            end if
         end do
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 6574, ('Unknown iftype: ' + s(value)); error stop
      end subroutine set_iftype
      function get_idep_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         value = get_idep(self)
         isDefined = is_idep_defined(self)
      end function get_idep_v_i
      function get_idep_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX), intent(out):: value
         Logical:: isDefined
         value = get_idep(self)
         isDefined = is_idep_defined(self)
      end function get_idep_i_v
      function get_idep_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         Integer:: internalValue
         internalValue = self%meta%idep
         if(.not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1))))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 6602, (".not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1)))"); error stop; end if
         value = ENUMERATED_VALUES(internalValue)
      end function get_idep_v
      function is_idep_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         ret = &
            (self%meta%idep /= ENUMERATED_VALUE_UNDEFINED) &
            .and. (lbound(ENUMERATED_VALUES, 1) <= self%meta%idep .and. self%meta%idep <= ubound(ENUMERATED_VALUES, 1))
      end function is_idep_defined
      subroutine set_idep(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         Integer:: internalValue
         do internalValue = lbound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue)), ubound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue))
            if(value == ENUMERATED_VALUES(internalValue))then
               self%meta%idep = internalValue
               return
            end if
         end do
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 6629, ('Unknown idep: ' + s(value)); error stop
      end subroutine set_idep
      function get_iztype_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         value = get_iztype(self)
         isDefined = is_iztype_defined(self)
      end function get_iztype_v_i
      function get_iztype_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX), intent(out):: value
         Logical:: isDefined
         value = get_iztype(self)
         isDefined = is_iztype_defined(self)
      end function get_iztype_i_v
      function get_iztype_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         Integer:: internalValue
         internalValue = self%meta%iztype
         if(.not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1))))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 6657, (".not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1)))"); error stop; end if
         value = ENUMERATED_VALUES(internalValue)
      end function get_iztype_v
      function is_iztype_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         ret = &
            (self%meta%iztype /= ENUMERATED_VALUE_UNDEFINED) &
            .and. (lbound(ENUMERATED_VALUES, 1) <= self%meta%iztype .and. self%meta%iztype <= ubound(ENUMERATED_VALUES, 1))
      end function is_iztype_defined
      subroutine set_iztype(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         Integer:: internalValue
         do internalValue = lbound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue)), ubound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue))
            if(value == ENUMERATED_VALUES(internalValue))then
               self%meta%iztype = internalValue
               return
            end if
         end do
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 6684, ('Unknown iztype: ' + s(value)); error stop
      end subroutine set_iztype
      function get_ihdr4_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         value = get_ihdr4(self)
         isDefined = is_ihdr4_defined(self)
      end function get_ihdr4_v_i
      function get_ihdr4_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX), intent(out):: value
         Logical:: isDefined
         value = get_ihdr4(self)
         isDefined = is_ihdr4_defined(self)
      end function get_ihdr4_i_v
      function get_ihdr4_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         Integer:: internalValue
         internalValue = self%meta%ihdr4
         if(.not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1))))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 6712, (".not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1)))"); error stop; end if
         value = ENUMERATED_VALUES(internalValue)
      end function get_ihdr4_v
      function is_ihdr4_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         ret = &
            (self%meta%ihdr4 /= ENUMERATED_VALUE_UNDEFINED) &
            .and. (lbound(ENUMERATED_VALUES, 1) <= self%meta%ihdr4 .and. self%meta%ihdr4 <= ubound(ENUMERATED_VALUES, 1))
      end function is_ihdr4_defined
      subroutine set_ihdr4(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         Integer:: internalValue
         do internalValue = lbound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue)), ubound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue))
            if(value == ENUMERATED_VALUES(internalValue))then
               self%meta%ihdr4 = internalValue
               return
            end if
         end do
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 6739, ('Unknown ihdr4: ' + s(value)); error stop
      end subroutine set_ihdr4
      function get_iinst_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         value = get_iinst(self)
         isDefined = is_iinst_defined(self)
      end function get_iinst_v_i
      function get_iinst_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX), intent(out):: value
         Logical:: isDefined
         value = get_iinst(self)
         isDefined = is_iinst_defined(self)
      end function get_iinst_i_v
      function get_iinst_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         Integer:: internalValue
         internalValue = self%meta%iinst
         if(.not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1))))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 6767, (".not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1)))"); error stop; end if
         value = ENUMERATED_VALUES(internalValue)
      end function get_iinst_v
      function is_iinst_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         ret = &
            (self%meta%iinst /= ENUMERATED_VALUE_UNDEFINED) &
            .and. (lbound(ENUMERATED_VALUES, 1) <= self%meta%iinst .and. self%meta%iinst <= ubound(ENUMERATED_VALUES, 1))
      end function is_iinst_defined
      subroutine set_iinst(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         Integer:: internalValue
         do internalValue = lbound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue)), ubound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue))
            if(value == ENUMERATED_VALUES(internalValue))then
               self%meta%iinst = internalValue
               return
            end if
         end do
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 6794, ('Unknown iinst: ' + s(value)); error stop
      end subroutine set_iinst
      function get_istreg_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         value = get_istreg(self)
         isDefined = is_istreg_defined(self)
      end function get_istreg_v_i
      function get_istreg_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX), intent(out):: value
         Logical:: isDefined
         value = get_istreg(self)
         isDefined = is_istreg_defined(self)
      end function get_istreg_i_v
      function get_istreg_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         Integer:: internalValue
         internalValue = self%meta%istreg
         if(.not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1))))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 6822, (".not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1)))"); error stop; end if
         value = ENUMERATED_VALUES(internalValue)
      end function get_istreg_v
      function is_istreg_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         ret = &
            (self%meta%istreg /= ENUMERATED_VALUE_UNDEFINED) &
            .and. (lbound(ENUMERATED_VALUES, 1) <= self%meta%istreg .and. self%meta%istreg <= ubound(ENUMERATED_VALUES, 1))
      end function is_istreg_defined
      subroutine set_istreg(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         Integer:: internalValue
         do internalValue = lbound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue)), ubound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue))
            if(value == ENUMERATED_VALUES(internalValue))then
               self%meta%istreg = internalValue
               return
            end if
         end do
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 6849, ('Unknown istreg: ' + s(value)); error stop
      end subroutine set_istreg
      function get_ievreg_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         value = get_ievreg(self)
         isDefined = is_ievreg_defined(self)
      end function get_ievreg_v_i
      function get_ievreg_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX), intent(out):: value
         Logical:: isDefined
         value = get_ievreg(self)
         isDefined = is_ievreg_defined(self)
      end function get_ievreg_i_v
      function get_ievreg_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         Integer:: internalValue
         internalValue = self%meta%ievreg
         if(.not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1))))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 6877, (".not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1)))"); error stop; end if
         value = ENUMERATED_VALUES(internalValue)
      end function get_ievreg_v
      function is_ievreg_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         ret = &
            (self%meta%ievreg /= ENUMERATED_VALUE_UNDEFINED) &
            .and. (lbound(ENUMERATED_VALUES, 1) <= self%meta%ievreg .and. self%meta%ievreg <= ubound(ENUMERATED_VALUES, 1))
      end function is_ievreg_defined
      subroutine set_ievreg(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         Integer:: internalValue
         do internalValue = lbound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue)), ubound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue))
            if(value == ENUMERATED_VALUES(internalValue))then
               self%meta%ievreg = internalValue
               return
            end if
         end do
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 6904, ('Unknown ievreg: ' + s(value)); error stop
      end subroutine set_ievreg
      function get_ievtyp_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         value = get_ievtyp(self)
         isDefined = is_ievtyp_defined(self)
      end function get_ievtyp_v_i
      function get_ievtyp_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX), intent(out):: value
         Logical:: isDefined
         value = get_ievtyp(self)
         isDefined = is_ievtyp_defined(self)
      end function get_ievtyp_i_v
      function get_ievtyp_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         Integer:: internalValue
         internalValue = self%meta%ievtyp
         if(.not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1))))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 6932, (".not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1)))"); error stop; end if
         value = ENUMERATED_VALUES(internalValue)
      end function get_ievtyp_v
      function is_ievtyp_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         ret = &
            (self%meta%ievtyp /= ENUMERATED_VALUE_UNDEFINED) &
            .and. (lbound(ENUMERATED_VALUES, 1) <= self%meta%ievtyp .and. self%meta%ievtyp <= ubound(ENUMERATED_VALUES, 1))
      end function is_ievtyp_defined
      subroutine set_ievtyp(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         Integer:: internalValue
         do internalValue = lbound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue)), ubound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue))
            if(value == ENUMERATED_VALUES(internalValue))then
               self%meta%ievtyp = internalValue
               return
            end if
         end do
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 6959, ('Unknown ievtyp: ' + s(value)); error stop
      end subroutine set_ievtyp
      function get_iqual_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         value = get_iqual(self)
         isDefined = is_iqual_defined(self)
      end function get_iqual_v_i
      function get_iqual_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX), intent(out):: value
         Logical:: isDefined
         value = get_iqual(self)
         isDefined = is_iqual_defined(self)
      end function get_iqual_i_v
      function get_iqual_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         Integer:: internalValue
         internalValue = self%meta%iqual
         if(.not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1))))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 6987, (".not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1)))"); error stop; end if
         value = ENUMERATED_VALUES(internalValue)
      end function get_iqual_v
      function is_iqual_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         ret = &
            (self%meta%iqual /= ENUMERATED_VALUE_UNDEFINED) &
            .and. (lbound(ENUMERATED_VALUES, 1) <= self%meta%iqual .and. self%meta%iqual <= ubound(ENUMERATED_VALUES, 1))
      end function is_iqual_defined
      subroutine set_iqual(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         Integer:: internalValue
         do internalValue = lbound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue)), ubound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue))
            if(value == ENUMERATED_VALUES(internalValue))then
               self%meta%iqual = internalValue
               return
            end if
         end do
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7014, ('Unknown iqual: ' + s(value)); error stop
      end subroutine set_iqual
      function get_isynth_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         value = get_isynth(self)
         isDefined = is_isynth_defined(self)
      end function get_isynth_v_i
      function get_isynth_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX), intent(out):: value
         Logical:: isDefined
         value = get_isynth(self)
         isDefined = is_isynth_defined(self)
      end function get_isynth_i_v
      function get_isynth_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         Integer:: internalValue
         internalValue = self%meta%isynth
         if(.not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1))))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7042, (".not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1)))"); error stop; end if
         value = ENUMERATED_VALUES(internalValue)
      end function get_isynth_v
      function is_isynth_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         ret = &
            (self%meta%isynth /= ENUMERATED_VALUE_UNDEFINED) &
            .and. (lbound(ENUMERATED_VALUES, 1) <= self%meta%isynth .and. self%meta%isynth <= ubound(ENUMERATED_VALUES, 1))
      end function is_isynth_defined
      subroutine set_isynth(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         Integer:: internalValue
         do internalValue = lbound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue)), ubound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue))
            if(value == ENUMERATED_VALUES(internalValue))then
               self%meta%isynth = internalValue
               return
            end if
         end do
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7069, ('Unknown isynth: ' + s(value)); error stop
      end subroutine set_isynth
      function get_imagtyp_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         value = get_imagtyp(self)
         isDefined = is_imagtyp_defined(self)
      end function get_imagtyp_v_i
      function get_imagtyp_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX), intent(out):: value
         Logical:: isDefined
         value = get_imagtyp(self)
         isDefined = is_imagtyp_defined(self)
      end function get_imagtyp_i_v
      function get_imagtyp_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         Integer:: internalValue
         internalValue = self%meta%imagtyp
         if(.not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1))))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7097, (".not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1)))"); error stop; end if
         value = ENUMERATED_VALUES(internalValue)
      end function get_imagtyp_v
      function is_imagtyp_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         ret = &
            (self%meta%imagtyp /= ENUMERATED_VALUE_UNDEFINED) &
            .and. (lbound(ENUMERATED_VALUES, 1) <= self%meta%imagtyp .and. self%meta%imagtyp <= ubound(ENUMERATED_VALUES, 1))
      end function is_imagtyp_defined
      subroutine set_imagtyp(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         Integer:: internalValue
         do internalValue = lbound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue)), ubound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue))
            if(value == ENUMERATED_VALUES(internalValue))then
               self%meta%imagtyp = internalValue
               return
            end if
         end do
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7124, ('Unknown imagtyp: ' + s(value)); error stop
      end subroutine set_imagtyp
      function get_imagsrc_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         value = get_imagsrc(self)
         isDefined = is_imagsrc_defined(self)
      end function get_imagsrc_v_i
      function get_imagsrc_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX), intent(out):: value
         Logical:: isDefined
         value = get_imagsrc(self)
         isDefined = is_imagsrc_defined(self)
      end function get_imagsrc_i_v
      function get_imagsrc_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         Integer:: internalValue
         internalValue = self%meta%imagsrc
         if(.not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1))))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7152, (".not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1)))"); error stop; end if
         value = ENUMERATED_VALUES(internalValue)
      end function get_imagsrc_v
      function is_imagsrc_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         ret = &
            (self%meta%imagsrc /= ENUMERATED_VALUE_UNDEFINED) &
            .and. (lbound(ENUMERATED_VALUES, 1) <= self%meta%imagsrc .and. self%meta%imagsrc <= ubound(ENUMERATED_VALUES, 1))
      end function is_imagsrc_defined
      subroutine set_imagsrc(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         Integer:: internalValue
         do internalValue = lbound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue)), ubound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue))
            if(value == ENUMERATED_VALUES(internalValue))then
               self%meta%imagsrc = internalValue
               return
            end if
         end do
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7179, ('Unknown imagsrc: ' + s(value)); error stop
      end subroutine set_imagsrc
      function get_ihdr13_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         value = get_ihdr13(self)
         isDefined = is_ihdr13_defined(self)
      end function get_ihdr13_v_i
      function get_ihdr13_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX), intent(out):: value
         Logical:: isDefined
         value = get_ihdr13(self)
         isDefined = is_ihdr13_defined(self)
      end function get_ihdr13_i_v
      function get_ihdr13_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         Integer:: internalValue
         internalValue = self%meta%ihdr13
         if(.not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1))))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7207, (".not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1)))"); error stop; end if
         value = ENUMERATED_VALUES(internalValue)
      end function get_ihdr13_v
      function is_ihdr13_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         ret = &
            (self%meta%ihdr13 /= ENUMERATED_VALUE_UNDEFINED) &
            .and. (lbound(ENUMERATED_VALUES, 1) <= self%meta%ihdr13 .and. self%meta%ihdr13 <= ubound(ENUMERATED_VALUES, 1))
      end function is_ihdr13_defined
      subroutine set_ihdr13(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         Integer:: internalValue
         do internalValue = lbound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue)), ubound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue))
            if(value == ENUMERATED_VALUES(internalValue))then
               self%meta%ihdr13 = internalValue
               return
            end if
         end do
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7234, ('Unknown ihdr13: ' + s(value)); error stop
      end subroutine set_ihdr13
      function get_ihdr14_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         value = get_ihdr14(self)
         isDefined = is_ihdr14_defined(self)
      end function get_ihdr14_v_i
      function get_ihdr14_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX), intent(out):: value
         Logical:: isDefined
         value = get_ihdr14(self)
         isDefined = is_ihdr14_defined(self)
      end function get_ihdr14_i_v
      function get_ihdr14_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         Integer:: internalValue
         internalValue = self%meta%ihdr14
         if(.not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1))))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7262, (".not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1)))"); error stop; end if
         value = ENUMERATED_VALUES(internalValue)
      end function get_ihdr14_v
      function is_ihdr14_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         ret = &
            (self%meta%ihdr14 /= ENUMERATED_VALUE_UNDEFINED) &
            .and. (lbound(ENUMERATED_VALUES, 1) <= self%meta%ihdr14 .and. self%meta%ihdr14 <= ubound(ENUMERATED_VALUES, 1))
      end function is_ihdr14_defined
      subroutine set_ihdr14(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         Integer:: internalValue
         do internalValue = lbound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue)), ubound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue))
            if(value == ENUMERATED_VALUES(internalValue))then
               self%meta%ihdr14 = internalValue
               return
            end if
         end do
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7289, ('Unknown ihdr14: ' + s(value)); error stop
      end subroutine set_ihdr14
      function get_ihdr15_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         value = get_ihdr15(self)
         isDefined = is_ihdr15_defined(self)
      end function get_ihdr15_v_i
      function get_ihdr15_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX), intent(out):: value
         Logical:: isDefined
         value = get_ihdr15(self)
         isDefined = is_ihdr15_defined(self)
      end function get_ihdr15_i_v
      function get_ihdr15_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         Integer:: internalValue
         internalValue = self%meta%ihdr15
         if(.not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1))))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7317, (".not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1)))"); error stop; end if
         value = ENUMERATED_VALUES(internalValue)
      end function get_ihdr15_v
      function is_ihdr15_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         ret = &
            (self%meta%ihdr15 /= ENUMERATED_VALUE_UNDEFINED) &
            .and. (lbound(ENUMERATED_VALUES, 1) <= self%meta%ihdr15 .and. self%meta%ihdr15 <= ubound(ENUMERATED_VALUES, 1))
      end function is_ihdr15_defined
      subroutine set_ihdr15(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         Integer:: internalValue
         do internalValue = lbound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue)), ubound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue))
            if(value == ENUMERATED_VALUES(internalValue))then
               self%meta%ihdr15 = internalValue
               return
            end if
         end do
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7344, ('Unknown ihdr15: ' + s(value)); error stop
      end subroutine set_ihdr15
      function get_ihdr16_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         value = get_ihdr16(self)
         isDefined = is_ihdr16_defined(self)
      end function get_ihdr16_v_i
      function get_ihdr16_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX), intent(out):: value
         Logical:: isDefined
         value = get_ihdr16(self)
         isDefined = is_ihdr16_defined(self)
      end function get_ihdr16_i_v
      function get_ihdr16_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         Integer:: internalValue
         internalValue = self%meta%ihdr16
         if(.not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1))))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7372, (".not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1)))"); error stop; end if
         value = ENUMERATED_VALUES(internalValue)
      end function get_ihdr16_v
      function is_ihdr16_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         ret = &
            (self%meta%ihdr16 /= ENUMERATED_VALUE_UNDEFINED) &
            .and. (lbound(ENUMERATED_VALUES, 1) <= self%meta%ihdr16 .and. self%meta%ihdr16 <= ubound(ENUMERATED_VALUES, 1))
      end function is_ihdr16_defined
      subroutine set_ihdr16(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         Integer:: internalValue
         do internalValue = lbound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue)), ubound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue))
            if(value == ENUMERATED_VALUES(internalValue))then
               self%meta%ihdr16 = internalValue
               return
            end if
         end do
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7399, ('Unknown ihdr16: ' + s(value)); error stop
      end subroutine set_ihdr16
      function get_ihdr17_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         value = get_ihdr17(self)
         isDefined = is_ihdr17_defined(self)
      end function get_ihdr17_v_i
      function get_ihdr17_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX), intent(out):: value
         Logical:: isDefined
         value = get_ihdr17(self)
         isDefined = is_ihdr17_defined(self)
      end function get_ihdr17_i_v
      function get_ihdr17_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         Integer:: internalValue
         internalValue = self%meta%ihdr17
         if(.not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1))))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7427, (".not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1)))"); error stop; end if
         value = ENUMERATED_VALUES(internalValue)
      end function get_ihdr17_v
      function is_ihdr17_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         ret = &
            (self%meta%ihdr17 /= ENUMERATED_VALUE_UNDEFINED) &
            .and. (lbound(ENUMERATED_VALUES, 1) <= self%meta%ihdr17 .and. self%meta%ihdr17 <= ubound(ENUMERATED_VALUES, 1))
      end function is_ihdr17_defined
      subroutine set_ihdr17(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         Integer:: internalValue
         do internalValue = lbound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue)), ubound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue))
            if(value == ENUMERATED_VALUES(internalValue))then
               self%meta%ihdr17 = internalValue
               return
            end if
         end do
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7454, ('Unknown ihdr17: ' + s(value)); error stop
      end subroutine set_ihdr17
      function get_ihdr18_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         value = get_ihdr18(self)
         isDefined = is_ihdr18_defined(self)
      end function get_ihdr18_v_i
      function get_ihdr18_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX), intent(out):: value
         Logical:: isDefined
         value = get_ihdr18(self)
         isDefined = is_ihdr18_defined(self)
      end function get_ihdr18_i_v
      function get_ihdr18_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         Integer:: internalValue
         internalValue = self%meta%ihdr18
         if(.not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1))))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7482, (".not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1)))"); error stop; end if
         value = ENUMERATED_VALUES(internalValue)
      end function get_ihdr18_v
      function is_ihdr18_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         ret = &
            (self%meta%ihdr18 /= ENUMERATED_VALUE_UNDEFINED) &
            .and. (lbound(ENUMERATED_VALUES, 1) <= self%meta%ihdr18 .and. self%meta%ihdr18 <= ubound(ENUMERATED_VALUES, 1))
      end function is_ihdr18_defined
      subroutine set_ihdr18(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         Integer:: internalValue
         do internalValue = lbound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue)), ubound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue))
            if(value == ENUMERATED_VALUES(internalValue))then
               self%meta%ihdr18 = internalValue
               return
            end if
         end do
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7509, ('Unknown ihdr18: ' + s(value)); error stop
      end subroutine set_ihdr18
      function get_ihdr19_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         value = get_ihdr19(self)
         isDefined = is_ihdr19_defined(self)
      end function get_ihdr19_v_i
      function get_ihdr19_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX), intent(out):: value
         Logical:: isDefined
         value = get_ihdr19(self)
         isDefined = is_ihdr19_defined(self)
      end function get_ihdr19_i_v
      function get_ihdr19_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         Integer:: internalValue
         internalValue = self%meta%ihdr19
         if(.not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1))))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7537, (".not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1)))"); error stop; end if
         value = ENUMERATED_VALUES(internalValue)
      end function get_ihdr19_v
      function is_ihdr19_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         ret = &
            (self%meta%ihdr19 /= ENUMERATED_VALUE_UNDEFINED) &
            .and. (lbound(ENUMERATED_VALUES, 1) <= self%meta%ihdr19 .and. self%meta%ihdr19 <= ubound(ENUMERATED_VALUES, 1))
      end function is_ihdr19_defined
      subroutine set_ihdr19(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         Integer:: internalValue
         do internalValue = lbound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue)), ubound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue))
            if(value == ENUMERATED_VALUES(internalValue))then
               self%meta%ihdr19 = internalValue
               return
            end if
         end do
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7564, ('Unknown ihdr19: ' + s(value)); error stop
      end subroutine set_ihdr19
      function get_ihdr20_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         value = get_ihdr20(self)
         isDefined = is_ihdr20_defined(self)
      end function get_ihdr20_v_i
      function get_ihdr20_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX), intent(out):: value
         Logical:: isDefined
         value = get_ihdr20(self)
         isDefined = is_ihdr20_defined(self)
      end function get_ihdr20_i_v
      function get_ihdr20_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_ENUMERATED_VALUE_MAX):: value
         Integer:: internalValue
         internalValue = self%meta%ihdr20
         if(.not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1))))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7592, (".not.((lbound(ENUMERATED_VALUES, 1) <= internalValue .and. internalValue <= ubound(ENUMERATED_VALUES, 1)))"); error stop; end if
         value = ENUMERATED_VALUES(internalValue)
      end function get_ihdr20_v
      function is_ihdr20_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ! 2nd condition is enough since ENUMERATED_VALUE_UNDEFINED is -12345.
         ret = &
            (self%meta%ihdr20 /= ENUMERATED_VALUE_UNDEFINED) &
            .and. (lbound(ENUMERATED_VALUES, 1) <= self%meta%ihdr20 .and. self%meta%ihdr20 <= ubound(ENUMERATED_VALUES, 1))
      end function is_ihdr20_defined
      subroutine set_ihdr20(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         Integer:: internalValue
         do internalValue = lbound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue)), ubound(ENUMERATED_VALUES, dim=1, kind=kind(internalValue))
            if(value == ENUMERATED_VALUES(internalValue))then
               self%meta%ihdr20 = internalValue
               return
            end if
         end do
         write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7619, ('Unknown ihdr20: ' + s(value)); error stop
      end subroutine set_ihdr20
      function get_leven_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Logical, intent(out):: value
         Logical:: isDefined
         value = get_leven(self)
         isDefined = is_leven_defined(self)
      end function get_leven_i_v
      function get_leven_v(self) result(value)
         type(Sac), intent(in):: self
         Logical:: value
         Integer:: internalValue
         internalValue = self%meta%leven
         value = (internalValue == 1)
      end function get_leven_v
      function is_leven_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = ((self%meta%leven == 1) .or. (self%meta%leven == 0))
      end function is_leven_defined
      subroutine set_leven(self, value)
         type(Sac), intent(inout):: self
         Logical, intent(in):: value
         if(value)then
            self%meta%leven = 1
         else
            self%meta%leven = 0
         end if
      end subroutine set_leven
      function get_lpspol_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Logical, intent(out):: value
         Logical:: isDefined
         value = get_lpspol(self)
         isDefined = is_lpspol_defined(self)
      end function get_lpspol_i_v
      function get_lpspol_v(self) result(value)
         type(Sac), intent(in):: self
         Logical:: value
         Integer:: internalValue
         internalValue = self%meta%lpspol
         value = (internalValue == 1)
      end function get_lpspol_v
      function is_lpspol_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = ((self%meta%lpspol == 1) .or. (self%meta%lpspol == 0))
      end function is_lpspol_defined
      subroutine set_lpspol(self, value)
         type(Sac), intent(inout):: self
         Logical, intent(in):: value
         if(value)then
            self%meta%lpspol = 1
         else
            self%meta%lpspol = 0
         end if
      end subroutine set_lpspol
      function get_lovrok_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Logical, intent(out):: value
         Logical:: isDefined
         value = get_lovrok(self)
         isDefined = is_lovrok_defined(self)
      end function get_lovrok_i_v
      function get_lovrok_v(self) result(value)
         type(Sac), intent(in):: self
         Logical:: value
         Integer:: internalValue
         internalValue = self%meta%lovrok
         value = (internalValue == 1)
      end function get_lovrok_v
      function is_lovrok_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = ((self%meta%lovrok == 1) .or. (self%meta%lovrok == 0))
      end function is_lovrok_defined
      subroutine set_lovrok(self, value)
         type(Sac), intent(inout):: self
         Logical, intent(in):: value
         if(value)then
            self%meta%lovrok = 1
         else
            self%meta%lovrok = 0
         end if
      end subroutine set_lovrok
      function get_lcalda_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Logical, intent(out):: value
         Logical:: isDefined
         value = get_lcalda(self)
         isDefined = is_lcalda_defined(self)
      end function get_lcalda_i_v
      function get_lcalda_v(self) result(value)
         type(Sac), intent(in):: self
         Logical:: value
         Integer:: internalValue
         internalValue = self%meta%lcalda
         value = (internalValue == 1)
      end function get_lcalda_v
      function is_lcalda_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = ((self%meta%lcalda == 1) .or. (self%meta%lcalda == 0))
      end function is_lcalda_defined
      subroutine set_lcalda(self, value)
         type(Sac), intent(inout):: self
         Logical, intent(in):: value
         if(value)then
            self%meta%lcalda = 1
         else
            self%meta%lcalda = 0
         end if
      end subroutine set_lcalda
      function get_lhdr5_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Logical, intent(out):: value
         Logical:: isDefined
         value = get_lhdr5(self)
         isDefined = is_lhdr5_defined(self)
      end function get_lhdr5_i_v
      function get_lhdr5_v(self) result(value)
         type(Sac), intent(in):: self
         Logical:: value
         Integer:: internalValue
         internalValue = self%meta%lhdr5
         value = (internalValue == 1)
      end function get_lhdr5_v
      function is_lhdr5_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = ((self%meta%lhdr5 == 1) .or. (self%meta%lhdr5 == 0))
      end function is_lhdr5_defined
      subroutine set_lhdr5(self, value)
         type(Sac), intent(inout):: self
         Logical, intent(in):: value
         if(value)then
            self%meta%lhdr5 = 1
         else
            self%meta%lhdr5 = 0
         end if
      end subroutine set_lhdr5
      function get_kstnm_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_kstnm(self)
         isDefined = is_kstnm_defined(self)
      end function get_kstnm_i_v
      function get_kstnm_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_kstnm(self)
         isDefined = is_kstnm_defined(self)
      end function get_kstnm_v_i
      function get_kstnm_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%kstnm
      end function get_kstnm_v
      function is_kstnm_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%kstnm /= STRING_UNDEFINED)
      end function is_kstnm_defined
      subroutine set_kstnm(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7847, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%kstnm = value
      end subroutine set_kstnm
      function get_kevnm_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_LONG_STRING), intent(out):: value
         Logical:: isDefined
         value = get_kevnm(self)
         isDefined = is_kevnm_defined(self)
      end function get_kevnm_i_v
      function get_kevnm_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_LONG_STRING):: value
         value = get_kevnm(self)
         isDefined = is_kevnm_defined(self)
      end function get_kevnm_v_i
      function get_kevnm_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_LONG_STRING):: value
         value = self%meta%kevnm
      end function get_kevnm_v
      function is_kevnm_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%kevnm /= STRING_UNDEFINED)
      end function is_kevnm_defined
      subroutine set_kevnm(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_LONG_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7887, (".not.(len_trim(value) <= LEN_LONG_STRING)"); error stop; end if
         self%meta%kevnm = value
      end subroutine set_kevnm
      function get_khole_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_khole(self)
         isDefined = is_khole_defined(self)
      end function get_khole_i_v
      function get_khole_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_khole(self)
         isDefined = is_khole_defined(self)
      end function get_khole_v_i
      function get_khole_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%khole
      end function get_khole_v
      function is_khole_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%khole /= STRING_UNDEFINED)
      end function is_khole_defined
      subroutine set_khole(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7927, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%khole = value
      end subroutine set_khole
      function get_ko_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_ko(self)
         isDefined = is_ko_defined(self)
      end function get_ko_i_v
      function get_ko_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_ko(self)
         isDefined = is_ko_defined(self)
      end function get_ko_v_i
      function get_ko_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%ko
      end function get_ko_v
      function is_ko_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%ko /= STRING_UNDEFINED)
      end function is_ko_defined
      subroutine set_ko(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 7967, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%ko = value
      end subroutine set_ko
      function get_ka_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_ka(self)
         isDefined = is_ka_defined(self)
      end function get_ka_i_v
      function get_ka_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_ka(self)
         isDefined = is_ka_defined(self)
      end function get_ka_v_i
      function get_ka_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%ka
      end function get_ka_v
      function is_ka_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%ka /= STRING_UNDEFINED)
      end function is_ka_defined
      subroutine set_ka(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 8007, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%ka = value
      end subroutine set_ka
      function get_kt0_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_kt0(self)
         isDefined = is_kt0_defined(self)
      end function get_kt0_i_v
      function get_kt0_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_kt0(self)
         isDefined = is_kt0_defined(self)
      end function get_kt0_v_i
      function get_kt0_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%kt0
      end function get_kt0_v
      function is_kt0_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%kt0 /= STRING_UNDEFINED)
      end function is_kt0_defined
      subroutine set_kt0(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 8047, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%kt0 = value
      end subroutine set_kt0
      function get_kt1_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_kt1(self)
         isDefined = is_kt1_defined(self)
      end function get_kt1_i_v
      function get_kt1_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_kt1(self)
         isDefined = is_kt1_defined(self)
      end function get_kt1_v_i
      function get_kt1_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%kt1
      end function get_kt1_v
      function is_kt1_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%kt1 /= STRING_UNDEFINED)
      end function is_kt1_defined
      subroutine set_kt1(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 8087, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%kt1 = value
      end subroutine set_kt1
      function get_kt2_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_kt2(self)
         isDefined = is_kt2_defined(self)
      end function get_kt2_i_v
      function get_kt2_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_kt2(self)
         isDefined = is_kt2_defined(self)
      end function get_kt2_v_i
      function get_kt2_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%kt2
      end function get_kt2_v
      function is_kt2_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%kt2 /= STRING_UNDEFINED)
      end function is_kt2_defined
      subroutine set_kt2(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 8127, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%kt2 = value
      end subroutine set_kt2
      function get_kt3_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_kt3(self)
         isDefined = is_kt3_defined(self)
      end function get_kt3_i_v
      function get_kt3_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_kt3(self)
         isDefined = is_kt3_defined(self)
      end function get_kt3_v_i
      function get_kt3_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%kt3
      end function get_kt3_v
      function is_kt3_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%kt3 /= STRING_UNDEFINED)
      end function is_kt3_defined
      subroutine set_kt3(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 8167, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%kt3 = value
      end subroutine set_kt3
      function get_kt4_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_kt4(self)
         isDefined = is_kt4_defined(self)
      end function get_kt4_i_v
      function get_kt4_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_kt4(self)
         isDefined = is_kt4_defined(self)
      end function get_kt4_v_i
      function get_kt4_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%kt4
      end function get_kt4_v
      function is_kt4_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%kt4 /= STRING_UNDEFINED)
      end function is_kt4_defined
      subroutine set_kt4(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 8207, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%kt4 = value
      end subroutine set_kt4
      function get_kt5_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_kt5(self)
         isDefined = is_kt5_defined(self)
      end function get_kt5_i_v
      function get_kt5_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_kt5(self)
         isDefined = is_kt5_defined(self)
      end function get_kt5_v_i
      function get_kt5_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%kt5
      end function get_kt5_v
      function is_kt5_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%kt5 /= STRING_UNDEFINED)
      end function is_kt5_defined
      subroutine set_kt5(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 8247, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%kt5 = value
      end subroutine set_kt5
      function get_kt6_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_kt6(self)
         isDefined = is_kt6_defined(self)
      end function get_kt6_i_v
      function get_kt6_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_kt6(self)
         isDefined = is_kt6_defined(self)
      end function get_kt6_v_i
      function get_kt6_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%kt6
      end function get_kt6_v
      function is_kt6_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%kt6 /= STRING_UNDEFINED)
      end function is_kt6_defined
      subroutine set_kt6(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 8287, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%kt6 = value
      end subroutine set_kt6
      function get_kt7_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_kt7(self)
         isDefined = is_kt7_defined(self)
      end function get_kt7_i_v
      function get_kt7_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_kt7(self)
         isDefined = is_kt7_defined(self)
      end function get_kt7_v_i
      function get_kt7_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%kt7
      end function get_kt7_v
      function is_kt7_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%kt7 /= STRING_UNDEFINED)
      end function is_kt7_defined
      subroutine set_kt7(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 8327, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%kt7 = value
      end subroutine set_kt7
      function get_kt8_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_kt8(self)
         isDefined = is_kt8_defined(self)
      end function get_kt8_i_v
      function get_kt8_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_kt8(self)
         isDefined = is_kt8_defined(self)
      end function get_kt8_v_i
      function get_kt8_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%kt8
      end function get_kt8_v
      function is_kt8_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%kt8 /= STRING_UNDEFINED)
      end function is_kt8_defined
      subroutine set_kt8(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 8367, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%kt8 = value
      end subroutine set_kt8
      function get_kt9_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_kt9(self)
         isDefined = is_kt9_defined(self)
      end function get_kt9_i_v
      function get_kt9_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_kt9(self)
         isDefined = is_kt9_defined(self)
      end function get_kt9_v_i
      function get_kt9_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%kt9
      end function get_kt9_v
      function is_kt9_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%kt9 /= STRING_UNDEFINED)
      end function is_kt9_defined
      subroutine set_kt9(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 8407, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%kt9 = value
      end subroutine set_kt9
      function get_kf_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_kf(self)
         isDefined = is_kf_defined(self)
      end function get_kf_i_v
      function get_kf_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_kf(self)
         isDefined = is_kf_defined(self)
      end function get_kf_v_i
      function get_kf_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%kf
      end function get_kf_v
      function is_kf_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%kf /= STRING_UNDEFINED)
      end function is_kf_defined
      subroutine set_kf(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 8447, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%kf = value
      end subroutine set_kf
      function get_kuser0_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_kuser0(self)
         isDefined = is_kuser0_defined(self)
      end function get_kuser0_i_v
      function get_kuser0_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_kuser0(self)
         isDefined = is_kuser0_defined(self)
      end function get_kuser0_v_i
      function get_kuser0_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%kuser0
      end function get_kuser0_v
      function is_kuser0_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%kuser0 /= STRING_UNDEFINED)
      end function is_kuser0_defined
      subroutine set_kuser0(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 8487, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%kuser0 = value
      end subroutine set_kuser0
      function get_kuser1_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_kuser1(self)
         isDefined = is_kuser1_defined(self)
      end function get_kuser1_i_v
      function get_kuser1_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_kuser1(self)
         isDefined = is_kuser1_defined(self)
      end function get_kuser1_v_i
      function get_kuser1_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%kuser1
      end function get_kuser1_v
      function is_kuser1_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%kuser1 /= STRING_UNDEFINED)
      end function is_kuser1_defined
      subroutine set_kuser1(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 8527, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%kuser1 = value
      end subroutine set_kuser1
      function get_kuser2_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_kuser2(self)
         isDefined = is_kuser2_defined(self)
      end function get_kuser2_i_v
      function get_kuser2_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_kuser2(self)
         isDefined = is_kuser2_defined(self)
      end function get_kuser2_v_i
      function get_kuser2_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%kuser2
      end function get_kuser2_v
      function is_kuser2_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%kuser2 /= STRING_UNDEFINED)
      end function is_kuser2_defined
      subroutine set_kuser2(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 8567, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%kuser2 = value
      end subroutine set_kuser2
      function get_kcmpnm_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_kcmpnm(self)
         isDefined = is_kcmpnm_defined(self)
      end function get_kcmpnm_i_v
      function get_kcmpnm_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_kcmpnm(self)
         isDefined = is_kcmpnm_defined(self)
      end function get_kcmpnm_v_i
      function get_kcmpnm_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%kcmpnm
      end function get_kcmpnm_v
      function is_kcmpnm_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%kcmpnm /= STRING_UNDEFINED)
      end function is_kcmpnm_defined
      subroutine set_kcmpnm(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 8607, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%kcmpnm = value
      end subroutine set_kcmpnm
      function get_knetwk_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_knetwk(self)
         isDefined = is_knetwk_defined(self)
      end function get_knetwk_i_v
      function get_knetwk_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_knetwk(self)
         isDefined = is_knetwk_defined(self)
      end function get_knetwk_v_i
      function get_knetwk_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%knetwk
      end function get_knetwk_v
      function is_knetwk_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%knetwk /= STRING_UNDEFINED)
      end function is_knetwk_defined
      subroutine set_knetwk(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 8647, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%knetwk = value
      end subroutine set_knetwk
      function get_kdatrd_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_kdatrd(self)
         isDefined = is_kdatrd_defined(self)
      end function get_kdatrd_i_v
      function get_kdatrd_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_kdatrd(self)
         isDefined = is_kdatrd_defined(self)
      end function get_kdatrd_v_i
      function get_kdatrd_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%kdatrd
      end function get_kdatrd_v
      function is_kdatrd_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%kdatrd /= STRING_UNDEFINED)
      end function is_kdatrd_defined
      subroutine set_kdatrd(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 8687, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%kdatrd = value
      end subroutine set_kdatrd
      function get_kinst_i_v(self, value) result(isDefined)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING), intent(out):: value
         Logical:: isDefined
         value = get_kinst(self)
         isDefined = is_kinst_defined(self)
      end function get_kinst_i_v
      function get_kinst_v_i(self, isDefined) result(value)
         type(Sac), intent(in):: self
         Logical, intent(out):: isDefined
         Character(len=LEN_SHORT_STRING):: value
         value = get_kinst(self)
         isDefined = is_kinst_defined(self)
      end function get_kinst_v_i
      function get_kinst_v(self) result(value)
         type(Sac), intent(in):: self
         Character(len=LEN_SHORT_STRING):: value
         value = self%meta%kinst
      end function get_kinst_v
      function is_kinst_defined(self) result(ret)
         type(Sac), intent(in):: self
         Logical:: ret
         ret = (self%meta%kinst /= STRING_UNDEFINED)
      end function is_kinst_defined
      subroutine set_kinst(self, value)
         type(Sac), intent(inout):: self
         Character(len=*), intent(in):: value
         if(.not.(len_trim(value) <= LEN_SHORT_STRING))then; write(error_unit, *) "ERROR: ", "sac_lib.f90", " ", 8727, (".not.(len_trim(value) <= LEN_SHORT_STRING)"); error stop; end if
         self%meta%kinst = value
      end subroutine set_kinst
end module sac_lib
