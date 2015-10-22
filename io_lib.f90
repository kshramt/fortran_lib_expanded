module io_lib
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: error_unit, input_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: iostat_eor, iostat_end
   use, intrinsic:: iso_fortran_env, only: int64
   use, intrinsic:: iso_fortran_env, only: int8, int16, int32, int64, real32, real64, real128
   use, non_intrinsic:: character_lib, only: str, operator(+)
   implicit none
   private
   public:: get_column_format_string
   public:: dump, load, load_version, load_meta_v_3
   public:: lines_of, columns_of, file_shape
   public:: mktemp
   public:: sh
   Integer(kind=int64), parameter, public:: version = 3 ! array serialization format version
   Character(len=*), parameter, public:: array_data_file = 'data.bin'
   Character(len=*), parameter:: array_meta_file_v_1 = 'meta.nml'
   Character(len=*), parameter:: array_meta_file_v_2 = 'meta.kv'
   Character(len=*), parameter:: array_meta_file_v_3 = 'meta.dat'
   Character(len=*), parameter, public:: array_meta_file = array_meta_file_v_3
   Character(len=*), parameter, public:: array_version_file = 'version.dat'
   Character(len=*), parameter, public:: array_description_file = 'description.txt'
   type, public:: ArrayMeta
   end type ArrayMeta
   type, extends(ArrayMeta), public:: ArrayMetaV3
      Character(len=7):: type_ = 'UNINIT'
      Integer(kind=int8):: kind_ = -1
      Integer(kind=int8):: dim = -1
      Integer(kind=int64), allocatable:: sizes(:)
   end type ArrayMetaV3
      interface get_column_format_string
         module procedure get_column_format_stringT99T103
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT99T104
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT99T105
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT99T106
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT100T103
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT100T104
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT100T105
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT100T106
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT101T103
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT101T104
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT101T105
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT101T106
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT102T103
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT102T104
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT102T105
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT102T106
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT103T103
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT103T104
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT103T105
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT103T106
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT104T103
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT104T104
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT104T105
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT104T106
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT105T103
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT105T104
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT105T105
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT105T106
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT106T103
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT106T104
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT106T105
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT106T106
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT107T103
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT107T104
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT107T105
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT107T106
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT108T103
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT108T104
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT108T105
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT108T106
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT109T103
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT109T104
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT109T105
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT109T106
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT110T103
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT110T104
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT110T105
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT110T106
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT111T103
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT111T104
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT111T105
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT111T106
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT112T103
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT112T104
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT112T105
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT112T106
      end interface get_column_format_string
   interface lines_of
      module procedure lines_of
   end interface lines_of
   interface columns_of
      module procedure columns_of
   end interface columns_of
   interface load_meta_v_3
      module procedure load_array_meta_v_3
   end interface load_meta_v_3
   interface load_version
      module procedure load_array_version
   end interface load_version
      interface dump
         module procedure dump_arrayLogicalDim1Kindint8
      end interface dump
      interface load
         module procedure load_arrayLogicalDim1Kindint8
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim1Kindint16
      end interface dump
      interface load
         module procedure load_arrayLogicalDim1Kindint16
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim1Kindint32
      end interface dump
      interface load
         module procedure load_arrayLogicalDim1Kindint32
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim1Kindint64
      end interface dump
      interface load
         module procedure load_arrayLogicalDim1Kindint64
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim2Kindint8
      end interface dump
      interface load
         module procedure load_arrayLogicalDim2Kindint8
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim2Kindint16
      end interface dump
      interface load
         module procedure load_arrayLogicalDim2Kindint16
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim2Kindint32
      end interface dump
      interface load
         module procedure load_arrayLogicalDim2Kindint32
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim2Kindint64
      end interface dump
      interface load
         module procedure load_arrayLogicalDim2Kindint64
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim3Kindint8
      end interface dump
      interface load
         module procedure load_arrayLogicalDim3Kindint8
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim3Kindint16
      end interface dump
      interface load
         module procedure load_arrayLogicalDim3Kindint16
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim3Kindint32
      end interface dump
      interface load
         module procedure load_arrayLogicalDim3Kindint32
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim3Kindint64
      end interface dump
      interface load
         module procedure load_arrayLogicalDim3Kindint64
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim4Kindint8
      end interface dump
      interface load
         module procedure load_arrayLogicalDim4Kindint8
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim4Kindint16
      end interface dump
      interface load
         module procedure load_arrayLogicalDim4Kindint16
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim4Kindint32
      end interface dump
      interface load
         module procedure load_arrayLogicalDim4Kindint32
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim4Kindint64
      end interface dump
      interface load
         module procedure load_arrayLogicalDim4Kindint64
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim5Kindint8
      end interface dump
      interface load
         module procedure load_arrayLogicalDim5Kindint8
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim5Kindint16
      end interface dump
      interface load
         module procedure load_arrayLogicalDim5Kindint16
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim5Kindint32
      end interface dump
      interface load
         module procedure load_arrayLogicalDim5Kindint32
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim5Kindint64
      end interface dump
      interface load
         module procedure load_arrayLogicalDim5Kindint64
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim6Kindint8
      end interface dump
      interface load
         module procedure load_arrayLogicalDim6Kindint8
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim6Kindint16
      end interface dump
      interface load
         module procedure load_arrayLogicalDim6Kindint16
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim6Kindint32
      end interface dump
      interface load
         module procedure load_arrayLogicalDim6Kindint32
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim6Kindint64
      end interface dump
      interface load
         module procedure load_arrayLogicalDim6Kindint64
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim7Kindint8
      end interface dump
      interface load
         module procedure load_arrayLogicalDim7Kindint8
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim7Kindint16
      end interface dump
      interface load
         module procedure load_arrayLogicalDim7Kindint16
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim7Kindint32
      end interface dump
      interface load
         module procedure load_arrayLogicalDim7Kindint32
      end interface load
      interface dump
         module procedure dump_arrayLogicalDim7Kindint64
      end interface dump
      interface load
         module procedure load_arrayLogicalDim7Kindint64
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim1Kindint8
      end interface dump
      interface load
         module procedure load_arrayIntegerDim1Kindint8
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim1Kindint16
      end interface dump
      interface load
         module procedure load_arrayIntegerDim1Kindint16
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim1Kindint32
      end interface dump
      interface load
         module procedure load_arrayIntegerDim1Kindint32
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim1Kindint64
      end interface dump
      interface load
         module procedure load_arrayIntegerDim1Kindint64
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim2Kindint8
      end interface dump
      interface load
         module procedure load_arrayIntegerDim2Kindint8
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim2Kindint16
      end interface dump
      interface load
         module procedure load_arrayIntegerDim2Kindint16
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim2Kindint32
      end interface dump
      interface load
         module procedure load_arrayIntegerDim2Kindint32
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim2Kindint64
      end interface dump
      interface load
         module procedure load_arrayIntegerDim2Kindint64
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim3Kindint8
      end interface dump
      interface load
         module procedure load_arrayIntegerDim3Kindint8
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim3Kindint16
      end interface dump
      interface load
         module procedure load_arrayIntegerDim3Kindint16
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim3Kindint32
      end interface dump
      interface load
         module procedure load_arrayIntegerDim3Kindint32
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim3Kindint64
      end interface dump
      interface load
         module procedure load_arrayIntegerDim3Kindint64
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim4Kindint8
      end interface dump
      interface load
         module procedure load_arrayIntegerDim4Kindint8
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim4Kindint16
      end interface dump
      interface load
         module procedure load_arrayIntegerDim4Kindint16
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim4Kindint32
      end interface dump
      interface load
         module procedure load_arrayIntegerDim4Kindint32
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim4Kindint64
      end interface dump
      interface load
         module procedure load_arrayIntegerDim4Kindint64
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim5Kindint8
      end interface dump
      interface load
         module procedure load_arrayIntegerDim5Kindint8
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim5Kindint16
      end interface dump
      interface load
         module procedure load_arrayIntegerDim5Kindint16
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim5Kindint32
      end interface dump
      interface load
         module procedure load_arrayIntegerDim5Kindint32
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim5Kindint64
      end interface dump
      interface load
         module procedure load_arrayIntegerDim5Kindint64
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim6Kindint8
      end interface dump
      interface load
         module procedure load_arrayIntegerDim6Kindint8
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim6Kindint16
      end interface dump
      interface load
         module procedure load_arrayIntegerDim6Kindint16
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim6Kindint32
      end interface dump
      interface load
         module procedure load_arrayIntegerDim6Kindint32
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim6Kindint64
      end interface dump
      interface load
         module procedure load_arrayIntegerDim6Kindint64
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim7Kindint8
      end interface dump
      interface load
         module procedure load_arrayIntegerDim7Kindint8
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim7Kindint16
      end interface dump
      interface load
         module procedure load_arrayIntegerDim7Kindint16
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim7Kindint32
      end interface dump
      interface load
         module procedure load_arrayIntegerDim7Kindint32
      end interface load
      interface dump
         module procedure dump_arrayIntegerDim7Kindint64
      end interface dump
      interface load
         module procedure load_arrayIntegerDim7Kindint64
      end interface load
      interface dump
         module procedure dump_arrayRealDim1Kindreal32
      end interface dump
      interface load
         module procedure load_arrayRealDim1Kindreal32
      end interface load
      interface dump
         module procedure dump_arrayRealDim1Kindreal64
      end interface dump
      interface load
         module procedure load_arrayRealDim1Kindreal64
      end interface load
      interface dump
         module procedure dump_arrayRealDim1Kindreal128
      end interface dump
      interface load
         module procedure load_arrayRealDim1Kindreal128
      end interface load
      interface dump
         module procedure dump_arrayRealDim2Kindreal32
      end interface dump
      interface load
         module procedure load_arrayRealDim2Kindreal32
      end interface load
      interface dump
         module procedure dump_arrayRealDim2Kindreal64
      end interface dump
      interface load
         module procedure load_arrayRealDim2Kindreal64
      end interface load
      interface dump
         module procedure dump_arrayRealDim2Kindreal128
      end interface dump
      interface load
         module procedure load_arrayRealDim2Kindreal128
      end interface load
      interface dump
         module procedure dump_arrayRealDim3Kindreal32
      end interface dump
      interface load
         module procedure load_arrayRealDim3Kindreal32
      end interface load
      interface dump
         module procedure dump_arrayRealDim3Kindreal64
      end interface dump
      interface load
         module procedure load_arrayRealDim3Kindreal64
      end interface load
      interface dump
         module procedure dump_arrayRealDim3Kindreal128
      end interface dump
      interface load
         module procedure load_arrayRealDim3Kindreal128
      end interface load
      interface dump
         module procedure dump_arrayRealDim4Kindreal32
      end interface dump
      interface load
         module procedure load_arrayRealDim4Kindreal32
      end interface load
      interface dump
         module procedure dump_arrayRealDim4Kindreal64
      end interface dump
      interface load
         module procedure load_arrayRealDim4Kindreal64
      end interface load
      interface dump
         module procedure dump_arrayRealDim4Kindreal128
      end interface dump
      interface load
         module procedure load_arrayRealDim4Kindreal128
      end interface load
      interface dump
         module procedure dump_arrayRealDim5Kindreal32
      end interface dump
      interface load
         module procedure load_arrayRealDim5Kindreal32
      end interface load
      interface dump
         module procedure dump_arrayRealDim5Kindreal64
      end interface dump
      interface load
         module procedure load_arrayRealDim5Kindreal64
      end interface load
      interface dump
         module procedure dump_arrayRealDim5Kindreal128
      end interface dump
      interface load
         module procedure load_arrayRealDim5Kindreal128
      end interface load
      interface dump
         module procedure dump_arrayRealDim6Kindreal32
      end interface dump
      interface load
         module procedure load_arrayRealDim6Kindreal32
      end interface load
      interface dump
         module procedure dump_arrayRealDim6Kindreal64
      end interface dump
      interface load
         module procedure load_arrayRealDim6Kindreal64
      end interface load
      interface dump
         module procedure dump_arrayRealDim6Kindreal128
      end interface dump
      interface load
         module procedure load_arrayRealDim6Kindreal128
      end interface load
      interface dump
         module procedure dump_arrayRealDim7Kindreal32
      end interface dump
      interface load
         module procedure load_arrayRealDim7Kindreal32
      end interface load
      interface dump
         module procedure dump_arrayRealDim7Kindreal64
      end interface dump
      interface load
         module procedure load_arrayRealDim7Kindreal64
      end interface load
      interface dump
         module procedure dump_arrayRealDim7Kindreal128
      end interface dump
      interface load
         module procedure load_arrayRealDim7Kindreal128
      end interface load
      interface dump
         module procedure dump_arrayComplexDim1Kindreal32
      end interface dump
      interface load
         module procedure load_arrayComplexDim1Kindreal32
      end interface load
      interface dump
         module procedure dump_arrayComplexDim1Kindreal64
      end interface dump
      interface load
         module procedure load_arrayComplexDim1Kindreal64
      end interface load
      interface dump
         module procedure dump_arrayComplexDim1Kindreal128
      end interface dump
      interface load
         module procedure load_arrayComplexDim1Kindreal128
      end interface load
      interface dump
         module procedure dump_arrayComplexDim2Kindreal32
      end interface dump
      interface load
         module procedure load_arrayComplexDim2Kindreal32
      end interface load
      interface dump
         module procedure dump_arrayComplexDim2Kindreal64
      end interface dump
      interface load
         module procedure load_arrayComplexDim2Kindreal64
      end interface load
      interface dump
         module procedure dump_arrayComplexDim2Kindreal128
      end interface dump
      interface load
         module procedure load_arrayComplexDim2Kindreal128
      end interface load
      interface dump
         module procedure dump_arrayComplexDim3Kindreal32
      end interface dump
      interface load
         module procedure load_arrayComplexDim3Kindreal32
      end interface load
      interface dump
         module procedure dump_arrayComplexDim3Kindreal64
      end interface dump
      interface load
         module procedure load_arrayComplexDim3Kindreal64
      end interface load
      interface dump
         module procedure dump_arrayComplexDim3Kindreal128
      end interface dump
      interface load
         module procedure load_arrayComplexDim3Kindreal128
      end interface load
      interface dump
         module procedure dump_arrayComplexDim4Kindreal32
      end interface dump
      interface load
         module procedure load_arrayComplexDim4Kindreal32
      end interface load
      interface dump
         module procedure dump_arrayComplexDim4Kindreal64
      end interface dump
      interface load
         module procedure load_arrayComplexDim4Kindreal64
      end interface load
      interface dump
         module procedure dump_arrayComplexDim4Kindreal128
      end interface dump
      interface load
         module procedure load_arrayComplexDim4Kindreal128
      end interface load
      interface dump
         module procedure dump_arrayComplexDim5Kindreal32
      end interface dump
      interface load
         module procedure load_arrayComplexDim5Kindreal32
      end interface load
      interface dump
         module procedure dump_arrayComplexDim5Kindreal64
      end interface dump
      interface load
         module procedure load_arrayComplexDim5Kindreal64
      end interface load
      interface dump
         module procedure dump_arrayComplexDim5Kindreal128
      end interface dump
      interface load
         module procedure load_arrayComplexDim5Kindreal128
      end interface load
      interface dump
         module procedure dump_arrayComplexDim6Kindreal32
      end interface dump
      interface load
         module procedure load_arrayComplexDim6Kindreal32
      end interface load
      interface dump
         module procedure dump_arrayComplexDim6Kindreal64
      end interface dump
      interface load
         module procedure load_arrayComplexDim6Kindreal64
      end interface load
      interface dump
         module procedure dump_arrayComplexDim6Kindreal128
      end interface dump
      interface load
         module procedure load_arrayComplexDim6Kindreal128
      end interface load
      interface dump
         module procedure dump_arrayComplexDim7Kindreal32
      end interface dump
      interface load
         module procedure load_arrayComplexDim7Kindreal32
      end interface load
      interface dump
         module procedure dump_arrayComplexDim7Kindreal64
      end interface dump
      interface load
         module procedure load_arrayComplexDim7Kindreal64
      end interface load
      interface dump
         module procedure dump_arrayComplexDim7Kindreal128
      end interface dump
      interface load
         module procedure load_arrayComplexDim7Kindreal128
      end interface load
contains
   function seek(unit, s) result(found)
      Logical:: found
      Integer(kind=kind(input_unit)), intent(in):: unit
      Character(len=*), intent(in):: s
      Character(len=100 + 2*len(s)):: buf
      Integer(kind=kind(iostat_eor)):: ios
      found = .false.
      rewind(unit)
      do
         read(unit, '(a)', iostat=ios) buf
         if(ios == iostat_end) return
         if(ios == iostat_eor) cycle
         if(buf == s)then
            found = .true.
            return
         end if
      end do
   end function seek
         function get_column_format_stringT99T103(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Logical(kind=int8), intent(in):: x
            Integer(kind=int8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT99T103
         function get_column_format_stringT100T103(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Logical(kind=int16), intent(in):: x
            Integer(kind=int8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT100T103
         function get_column_format_stringT101T103(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Logical(kind=int32), intent(in):: x
            Integer(kind=int8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT101T103
         function get_column_format_stringT102T103(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Logical(kind=int64), intent(in):: x
            Integer(kind=int8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT102T103
         function get_column_format_stringT103T103(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Integer(kind=int8), intent(in):: x
            Integer(kind=int8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT103T103
         function get_column_format_stringT104T103(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Integer(kind=int16), intent(in):: x
            Integer(kind=int8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT104T103
         function get_column_format_stringT105T103(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Integer(kind=int32), intent(in):: x
            Integer(kind=int8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT105T103
         function get_column_format_stringT106T103(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Integer(kind=int64), intent(in):: x
            Integer(kind=int8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT106T103
         function get_column_format_stringT107T103(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Real(kind=real32), intent(in):: x
            Integer(kind=int8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT107T103
         function get_column_format_stringT108T103(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Real(kind=real64), intent(in):: x
            Integer(kind=int8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT108T103
         function get_column_format_stringT109T103(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Real(kind=real128), intent(in):: x
            Integer(kind=int8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT109T103
      ! `get_column_format_string` is used to produce re-readable complex output.
      ! number of columns should explicitly be given since unlimited format gives an extra parenthesis ` (` at the end.
         function get_column_format_stringT110T103(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *(" ", "(", g0, ", ", g0, ")"))'
            Complex(kind=real32), intent(in):: x
            Integer(kind=int8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT110T103
         function get_column_format_stringT111T103(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *(" ", "(", g0, ", ", g0, ")"))'
            Complex(kind=real64), intent(in):: x
            Integer(kind=int8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT111T103
         function get_column_format_stringT112T103(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *(" ", "(", g0, ", ", g0, ")"))'
            Complex(kind=real128), intent(in):: x
            Integer(kind=int8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT112T103
         function get_column_format_stringT99T104(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Logical(kind=int8), intent(in):: x
            Integer(kind=int16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT99T104
         function get_column_format_stringT100T104(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Logical(kind=int16), intent(in):: x
            Integer(kind=int16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT100T104
         function get_column_format_stringT101T104(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Logical(kind=int32), intent(in):: x
            Integer(kind=int16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT101T104
         function get_column_format_stringT102T104(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Logical(kind=int64), intent(in):: x
            Integer(kind=int16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT102T104
         function get_column_format_stringT103T104(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Integer(kind=int8), intent(in):: x
            Integer(kind=int16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT103T104
         function get_column_format_stringT104T104(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Integer(kind=int16), intent(in):: x
            Integer(kind=int16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT104T104
         function get_column_format_stringT105T104(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Integer(kind=int32), intent(in):: x
            Integer(kind=int16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT105T104
         function get_column_format_stringT106T104(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Integer(kind=int64), intent(in):: x
            Integer(kind=int16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT106T104
         function get_column_format_stringT107T104(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Real(kind=real32), intent(in):: x
            Integer(kind=int16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT107T104
         function get_column_format_stringT108T104(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Real(kind=real64), intent(in):: x
            Integer(kind=int16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT108T104
         function get_column_format_stringT109T104(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Real(kind=real128), intent(in):: x
            Integer(kind=int16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT109T104
      ! `get_column_format_string` is used to produce re-readable complex output.
      ! number of columns should explicitly be given since unlimited format gives an extra parenthesis ` (` at the end.
         function get_column_format_stringT110T104(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *(" ", "(", g0, ", ", g0, ")"))'
            Complex(kind=real32), intent(in):: x
            Integer(kind=int16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT110T104
         function get_column_format_stringT111T104(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *(" ", "(", g0, ", ", g0, ")"))'
            Complex(kind=real64), intent(in):: x
            Integer(kind=int16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT111T104
         function get_column_format_stringT112T104(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *(" ", "(", g0, ", ", g0, ")"))'
            Complex(kind=real128), intent(in):: x
            Integer(kind=int16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT112T104
         function get_column_format_stringT99T105(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Logical(kind=int8), intent(in):: x
            Integer(kind=int32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT99T105
         function get_column_format_stringT100T105(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Logical(kind=int16), intent(in):: x
            Integer(kind=int32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT100T105
         function get_column_format_stringT101T105(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Logical(kind=int32), intent(in):: x
            Integer(kind=int32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT101T105
         function get_column_format_stringT102T105(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Logical(kind=int64), intent(in):: x
            Integer(kind=int32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT102T105
         function get_column_format_stringT103T105(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Integer(kind=int8), intent(in):: x
            Integer(kind=int32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT103T105
         function get_column_format_stringT104T105(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Integer(kind=int16), intent(in):: x
            Integer(kind=int32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT104T105
         function get_column_format_stringT105T105(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Integer(kind=int32), intent(in):: x
            Integer(kind=int32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT105T105
         function get_column_format_stringT106T105(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Integer(kind=int64), intent(in):: x
            Integer(kind=int32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT106T105
         function get_column_format_stringT107T105(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Real(kind=real32), intent(in):: x
            Integer(kind=int32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT107T105
         function get_column_format_stringT108T105(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Real(kind=real64), intent(in):: x
            Integer(kind=int32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT108T105
         function get_column_format_stringT109T105(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Real(kind=real128), intent(in):: x
            Integer(kind=int32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT109T105
      ! `get_column_format_string` is used to produce re-readable complex output.
      ! number of columns should explicitly be given since unlimited format gives an extra parenthesis ` (` at the end.
         function get_column_format_stringT110T105(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *(" ", "(", g0, ", ", g0, ")"))'
            Complex(kind=real32), intent(in):: x
            Integer(kind=int32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT110T105
         function get_column_format_stringT111T105(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *(" ", "(", g0, ", ", g0, ")"))'
            Complex(kind=real64), intent(in):: x
            Integer(kind=int32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT111T105
         function get_column_format_stringT112T105(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *(" ", "(", g0, ", ", g0, ")"))'
            Complex(kind=real128), intent(in):: x
            Integer(kind=int32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT112T105
         function get_column_format_stringT99T106(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Logical(kind=int8), intent(in):: x
            Integer(kind=int64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT99T106
         function get_column_format_stringT100T106(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Logical(kind=int16), intent(in):: x
            Integer(kind=int64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT100T106
         function get_column_format_stringT101T106(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Logical(kind=int32), intent(in):: x
            Integer(kind=int64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT101T106
         function get_column_format_stringT102T106(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Logical(kind=int64), intent(in):: x
            Integer(kind=int64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT102T106
         function get_column_format_stringT103T106(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Integer(kind=int8), intent(in):: x
            Integer(kind=int64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT103T106
         function get_column_format_stringT104T106(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Integer(kind=int16), intent(in):: x
            Integer(kind=int64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT104T106
         function get_column_format_stringT105T106(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Integer(kind=int32), intent(in):: x
            Integer(kind=int64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT105T106
         function get_column_format_stringT106T106(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Integer(kind=int64), intent(in):: x
            Integer(kind=int64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT106T106
         function get_column_format_stringT107T106(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Real(kind=real32), intent(in):: x
            Integer(kind=int64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT107T106
         function get_column_format_stringT108T106(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Real(kind=real64), intent(in):: x
            Integer(kind=int64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT108T106
         function get_column_format_stringT109T106(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *(" ", g0))'
            Real(kind=real128), intent(in):: x
            Integer(kind=int64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT109T106
      ! `get_column_format_string` is used to produce re-readable complex output.
      ! number of columns should explicitly be given since unlimited format gives an extra parenthesis ` (` at the end.
         function get_column_format_stringT110T106(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *(" ", "(", g0, ", ", g0, ")"))'
            Complex(kind=real32), intent(in):: x
            Integer(kind=int64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT110T106
         function get_column_format_stringT111T106(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *(" ", "(", g0, ", ", g0, ")"))'
            Complex(kind=real64), intent(in):: x
            Integer(kind=int64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT111T106
         function get_column_format_stringT112T106(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *(" ", "(", g0, ", ", g0, ")"))'
            Complex(kind=real128), intent(in):: x
            Integer(kind=int64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT112T106
   function sh(cmd) result(isSuccess)
      Character(len=*), intent(in):: cmd
      Logical:: isSuccess
      Integer:: exitStatus
      call execute_command_line(trim(cmd), exitstat=exitStatus)
      isSuccess = (exitStatus == 0)
   end function sh
   subroutine mktemp(unit, suffixMin, form, file, suffix)
      Character(len=*), parameter:: PREFIX = '/tmp/io_lib_mktemp.'
      Integer(kind=kind(input_unit)), intent(out):: unit
      Integer(kind=int64), intent(in), optional:: suffixMin
      Character(len=*), intent(in), optional:: form
      Character(len=*), intent(out), optional:: file
      Integer(kind=kind(suffixMin)), intent(out), optional:: suffix
      Integer(kind=kind(suffixMin)):: suffix_, suffixMin_
      Integer(kind=kind(iostat_eor)):: ios
      Character(len=len(PREFIX) + ceiling(log10(real(huge(suffix_))))):: file_
      Character(len=max(len('unformatted'), len('formatted'))):: form_
      form_ = 'formatted'
      if(present(form))then
         if(.not.(form == 'formatted' .or. form == 'unformatted'))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2049, (".not.(form == 'formatted' .or. form == 'unformatted')"); error stop; end if
         form_ = form
      end if
      suffixMin_ = 0
      if(present(suffixMin)) suffixMin_ = suffixMin
      do suffix_ = suffixMin_, huge(suffix)
         file_ = PREFIX + str(suffix_)
         open(newunit=unit, file=trim(file_), status='new', action='readwrite', form=trim(form_), iostat=ios)
         if(ios == 0)then
            if(.not.(sh('chmod og-rwx ' + trim(file_))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2059, (".not.(sh('chmod og-rwx ' + trim(file_)))"); error stop; end if
            if(present(file))then
               if(.not.(len_trim(file_) <= len(file)))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2062, (".not.(len_trim(file_) <= len(file))"); error stop; end if
               file = file_
            end if
            if(present(suffix)) suffix = suffix_
            return
         end if
      end do
      write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2071, ('Could not create temp file'); error stop
   end subroutine mktemp
   function file_shape(file, n_headers) result(ret)
      ! Return a size 2 vector which contains `[n_lines, n_columns]` of `file`.
      Integer(int64):: ret(1:2)
      Character(len=*), intent(in):: file
      Integer(kind=kind(ret)), intent(in), optional:: n_headers
      Integer(kind=kind(n_headers)):: n_headers_
      n_headers_ = 0
      if(present(n_headers)) n_headers_ = n_headers
      ret = [lines_of(file) - n_headers_, columns_of(file, n_headers_)]
   end function file_shape
   function lines_of(file) result(ret)
      Integer(kind=int64):: ret
      Character(len=*), intent(in):: file
      Integer(kind=kind(input_unit)):: unit
      Integer(kind=kind(iostat_eor)):: ios
      Character:: trash
      open(newunit=unit, file=file, status='old', action='read')
      ret = 0
      do
         read(unit, *, iostat=ios) trash
         if(ios /= 0) exit
         if(.not.(ret < huge(ret)))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2101, (".not.(ret < huge(ret))"); error stop; end if
         ret = ret + 1
      end do
      close(unit)
   end function lines_of
   function columns_of(file, n_headers) result(ret)
      ! Return number of columns at line `(n_headers + 1)` in `file`.
      ! The line is assumed to be separated by space and TAB characters.
      ! Quoted string containing space/TAB characteres is not handled properly.
      Integer(kind=int64):: ret
      Character(len=*), intent(in):: file
      Integer(kind=kind(ret)), intent(in), optional:: n_headers
      enum, bind(c)
         enumerator:: seek_normal_char, seek_separator
      end enum
      Character, parameter:: separators(1:2) = [' ', '	'] ! space and TAB
      Integer(kind=kind(input_unit)):: unit
      Integer(kind=kind(iostat_eor)):: ios
      Integer:: mode
      Character:: c
      Integer(kind=kind(n_headers)):: n_headers_, i
      n_headers_ = 0
      if(present(n_headers)) n_headers_ = n_headers
      mode = seek_normal_char
      ret = 0
      open(newunit=unit, file=file, status='old', action='read')
      do i = 1, n_headers_
         read(unit, *)
      end do
      do
         read(unit, '(a1)', advance='no', iostat=ios) c
         if((.not.(ios == 0)) .or. c == new_line('_')) exit
         select case(mode)
         case(seek_separator)
            if((any((separators) == (c)))) mode = seek_normal_char
         case(seek_normal_char)
            if(.not.(any((separators) == (c))))then
               if(.not.(ret <= huge(ret) - 1))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2146, (".not.(ret <= huge(ret) - 1)"); error stop; end if
               ret = ret + 1
               mode = seek_separator
            end if
         end select
      end do
      close(unit)
   end function columns_of
   function load_array_version(dir) result(version_)
      Character(len=*), intent(in):: dir
      Integer:: version_
      Integer(kind=kind(input_unit)):: unit
      open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='old', action='read')
      read(unit, *) version_
      close(unit)
   end function load_array_version
   subroutine load_array_meta_v_3(self, dir)
      type(ArrayMetaV3), intent(inout):: self
      Character(len=*), intent(in):: dir
      Integer(kind=kind(input_unit)):: unit
      Integer(kind=kind(self%dim)):: i
      open(newunit=unit, file=trim(dir) + '/' + array_meta_file_v_3, status='old', action='read')
      read(unit, '(a)') self%type_
      read(unit, *) self%kind_
      read(unit, *) self%dim
      if(allocated(self%sizes)) deallocate(self%sizes)
      allocate(self%sizes(self%dim))
      do i = 1, self%dim
         read(unit, *) self%sizes(i)
      end do
      close(unit)
   end subroutine load_array_meta_v_3
      subroutine dump_arrayLogicalDim1Kindint8(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 1
         Logical(kind=int8), dimension(:), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2201, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim1Kindint8
      subroutine load_arrayLogicalDim1Kindint8(self, dir)
         Logical(kind=int8), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim1Kindint8(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2261, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim1Kindint8
      subroutine load_array_v_3LogicalDim1Kindint8(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 1
         Logical(kind=int8), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2278, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2279, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2280, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim1Kindint8
      subroutine dump_arrayLogicalDim1Kindint16(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 1
         Logical(kind=int16), dimension(:), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2305, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim1Kindint16
      subroutine load_arrayLogicalDim1Kindint16(self, dir)
         Logical(kind=int16), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim1Kindint16(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2365, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim1Kindint16
      subroutine load_array_v_3LogicalDim1Kindint16(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 1
         Logical(kind=int16), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2382, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2383, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2384, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim1Kindint16
      subroutine dump_arrayLogicalDim1Kindint32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 1
         Logical(kind=int32), dimension(:), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2409, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim1Kindint32
      subroutine load_arrayLogicalDim1Kindint32(self, dir)
         Logical(kind=int32), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim1Kindint32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2469, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim1Kindint32
      subroutine load_array_v_3LogicalDim1Kindint32(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 1
         Logical(kind=int32), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2486, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2487, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2488, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim1Kindint32
      subroutine dump_arrayLogicalDim1Kindint64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 1
         Logical(kind=int64), dimension(:), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2513, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim1Kindint64
      subroutine load_arrayLogicalDim1Kindint64(self, dir)
         Logical(kind=int64), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim1Kindint64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2573, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim1Kindint64
      subroutine load_array_v_3LogicalDim1Kindint64(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 1
         Logical(kind=int64), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2590, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2591, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2592, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim1Kindint64
      subroutine dump_arrayLogicalDim2Kindint8(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 2
         Logical(kind=int8), dimension(:, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2617, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim2Kindint8
      subroutine load_arrayLogicalDim2Kindint8(self, dir)
         Logical(kind=int8), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim2Kindint8(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2677, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim2Kindint8
      subroutine load_array_v_3LogicalDim2Kindint8(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 2
         Logical(kind=int8), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2694, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2695, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2696, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim2Kindint8
      subroutine dump_arrayLogicalDim2Kindint16(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 2
         Logical(kind=int16), dimension(:, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2721, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim2Kindint16
      subroutine load_arrayLogicalDim2Kindint16(self, dir)
         Logical(kind=int16), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim2Kindint16(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2781, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim2Kindint16
      subroutine load_array_v_3LogicalDim2Kindint16(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 2
         Logical(kind=int16), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2798, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2799, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2800, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim2Kindint16
      subroutine dump_arrayLogicalDim2Kindint32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 2
         Logical(kind=int32), dimension(:, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2825, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim2Kindint32
      subroutine load_arrayLogicalDim2Kindint32(self, dir)
         Logical(kind=int32), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim2Kindint32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2885, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim2Kindint32
      subroutine load_array_v_3LogicalDim2Kindint32(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 2
         Logical(kind=int32), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2902, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2903, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2904, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim2Kindint32
      subroutine dump_arrayLogicalDim2Kindint64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 2
         Logical(kind=int64), dimension(:, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2929, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim2Kindint64
      subroutine load_arrayLogicalDim2Kindint64(self, dir)
         Logical(kind=int64), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim2Kindint64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 2989, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim2Kindint64
      subroutine load_array_v_3LogicalDim2Kindint64(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 2
         Logical(kind=int64), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3006, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3007, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3008, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim2Kindint64
      subroutine dump_arrayLogicalDim3Kindint8(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 3
         Logical(kind=int8), dimension(:, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3033, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim3Kindint8
      subroutine load_arrayLogicalDim3Kindint8(self, dir)
         Logical(kind=int8), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim3Kindint8(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3093, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim3Kindint8
      subroutine load_array_v_3LogicalDim3Kindint8(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 3
         Logical(kind=int8), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3110, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3111, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3112, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim3Kindint8
      subroutine dump_arrayLogicalDim3Kindint16(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 3
         Logical(kind=int16), dimension(:, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3137, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim3Kindint16
      subroutine load_arrayLogicalDim3Kindint16(self, dir)
         Logical(kind=int16), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim3Kindint16(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3197, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim3Kindint16
      subroutine load_array_v_3LogicalDim3Kindint16(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 3
         Logical(kind=int16), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3214, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3215, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3216, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim3Kindint16
      subroutine dump_arrayLogicalDim3Kindint32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 3
         Logical(kind=int32), dimension(:, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3241, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim3Kindint32
      subroutine load_arrayLogicalDim3Kindint32(self, dir)
         Logical(kind=int32), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim3Kindint32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3301, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim3Kindint32
      subroutine load_array_v_3LogicalDim3Kindint32(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 3
         Logical(kind=int32), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3318, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3319, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3320, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim3Kindint32
      subroutine dump_arrayLogicalDim3Kindint64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 3
         Logical(kind=int64), dimension(:, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3345, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim3Kindint64
      subroutine load_arrayLogicalDim3Kindint64(self, dir)
         Logical(kind=int64), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim3Kindint64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3405, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim3Kindint64
      subroutine load_array_v_3LogicalDim3Kindint64(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 3
         Logical(kind=int64), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3422, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3423, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3424, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim3Kindint64
      subroutine dump_arrayLogicalDim4Kindint8(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 4
         Logical(kind=int8), dimension(:, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3449, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim4Kindint8
      subroutine load_arrayLogicalDim4Kindint8(self, dir)
         Logical(kind=int8), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim4Kindint8(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3509, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim4Kindint8
      subroutine load_array_v_3LogicalDim4Kindint8(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 4
         Logical(kind=int8), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3526, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3527, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3528, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim4Kindint8
      subroutine dump_arrayLogicalDim4Kindint16(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 4
         Logical(kind=int16), dimension(:, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3553, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim4Kindint16
      subroutine load_arrayLogicalDim4Kindint16(self, dir)
         Logical(kind=int16), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim4Kindint16(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3613, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim4Kindint16
      subroutine load_array_v_3LogicalDim4Kindint16(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 4
         Logical(kind=int16), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3630, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3631, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3632, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim4Kindint16
      subroutine dump_arrayLogicalDim4Kindint32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 4
         Logical(kind=int32), dimension(:, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3657, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim4Kindint32
      subroutine load_arrayLogicalDim4Kindint32(self, dir)
         Logical(kind=int32), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim4Kindint32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3717, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim4Kindint32
      subroutine load_array_v_3LogicalDim4Kindint32(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 4
         Logical(kind=int32), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3734, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3735, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3736, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim4Kindint32
      subroutine dump_arrayLogicalDim4Kindint64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 4
         Logical(kind=int64), dimension(:, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3761, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim4Kindint64
      subroutine load_arrayLogicalDim4Kindint64(self, dir)
         Logical(kind=int64), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim4Kindint64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3821, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim4Kindint64
      subroutine load_array_v_3LogicalDim4Kindint64(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 4
         Logical(kind=int64), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3838, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3839, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3840, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim4Kindint64
      subroutine dump_arrayLogicalDim5Kindint8(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 5
         Logical(kind=int8), dimension(:, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3865, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim5Kindint8
      subroutine load_arrayLogicalDim5Kindint8(self, dir)
         Logical(kind=int8), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim5Kindint8(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3925, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim5Kindint8
      subroutine load_array_v_3LogicalDim5Kindint8(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 5
         Logical(kind=int8), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3942, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3943, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3944, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim5Kindint8
      subroutine dump_arrayLogicalDim5Kindint16(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 5
         Logical(kind=int16), dimension(:, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 3969, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim5Kindint16
      subroutine load_arrayLogicalDim5Kindint16(self, dir)
         Logical(kind=int16), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim5Kindint16(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4029, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim5Kindint16
      subroutine load_array_v_3LogicalDim5Kindint16(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 5
         Logical(kind=int16), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4046, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4047, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4048, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim5Kindint16
      subroutine dump_arrayLogicalDim5Kindint32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 5
         Logical(kind=int32), dimension(:, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4073, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim5Kindint32
      subroutine load_arrayLogicalDim5Kindint32(self, dir)
         Logical(kind=int32), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim5Kindint32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4133, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim5Kindint32
      subroutine load_array_v_3LogicalDim5Kindint32(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 5
         Logical(kind=int32), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4150, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4151, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4152, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim5Kindint32
      subroutine dump_arrayLogicalDim5Kindint64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 5
         Logical(kind=int64), dimension(:, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4177, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim5Kindint64
      subroutine load_arrayLogicalDim5Kindint64(self, dir)
         Logical(kind=int64), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim5Kindint64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4237, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim5Kindint64
      subroutine load_array_v_3LogicalDim5Kindint64(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 5
         Logical(kind=int64), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4254, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4255, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4256, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim5Kindint64
      subroutine dump_arrayLogicalDim6Kindint8(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 6
         Logical(kind=int8), dimension(:, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4281, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim6Kindint8
      subroutine load_arrayLogicalDim6Kindint8(self, dir)
         Logical(kind=int8), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim6Kindint8(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4341, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim6Kindint8
      subroutine load_array_v_3LogicalDim6Kindint8(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 6
         Logical(kind=int8), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4358, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4359, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4360, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim6Kindint8
      subroutine dump_arrayLogicalDim6Kindint16(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 6
         Logical(kind=int16), dimension(:, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4385, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim6Kindint16
      subroutine load_arrayLogicalDim6Kindint16(self, dir)
         Logical(kind=int16), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim6Kindint16(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4445, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim6Kindint16
      subroutine load_array_v_3LogicalDim6Kindint16(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 6
         Logical(kind=int16), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4462, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4463, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4464, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim6Kindint16
      subroutine dump_arrayLogicalDim6Kindint32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 6
         Logical(kind=int32), dimension(:, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4489, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim6Kindint32
      subroutine load_arrayLogicalDim6Kindint32(self, dir)
         Logical(kind=int32), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim6Kindint32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4549, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim6Kindint32
      subroutine load_array_v_3LogicalDim6Kindint32(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 6
         Logical(kind=int32), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4566, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4567, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4568, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim6Kindint32
      subroutine dump_arrayLogicalDim6Kindint64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 6
         Logical(kind=int64), dimension(:, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4593, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim6Kindint64
      subroutine load_arrayLogicalDim6Kindint64(self, dir)
         Logical(kind=int64), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim6Kindint64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4653, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim6Kindint64
      subroutine load_array_v_3LogicalDim6Kindint64(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 6
         Logical(kind=int64), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4670, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4671, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4672, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim6Kindint64
      subroutine dump_arrayLogicalDim7Kindint8(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 7
         Logical(kind=int8), dimension(:, :, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4697, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim7Kindint8
      subroutine load_arrayLogicalDim7Kindint8(self, dir)
         Logical(kind=int8), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim7Kindint8(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4757, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim7Kindint8
      subroutine load_array_v_3LogicalDim7Kindint8(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 7
         Logical(kind=int8), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4774, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4775, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4776, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim7Kindint8
      subroutine dump_arrayLogicalDim7Kindint16(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 7
         Logical(kind=int16), dimension(:, :, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4801, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim7Kindint16
      subroutine load_arrayLogicalDim7Kindint16(self, dir)
         Logical(kind=int16), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim7Kindint16(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4861, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim7Kindint16
      subroutine load_array_v_3LogicalDim7Kindint16(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 7
         Logical(kind=int16), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4878, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4879, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4880, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim7Kindint16
      subroutine dump_arrayLogicalDim7Kindint32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 7
         Logical(kind=int32), dimension(:, :, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4905, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim7Kindint32
      subroutine load_arrayLogicalDim7Kindint32(self, dir)
         Logical(kind=int32), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim7Kindint32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4965, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim7Kindint32
      subroutine load_array_v_3LogicalDim7Kindint32(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 7
         Logical(kind=int32), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4982, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4983, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 4984, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim7Kindint32
      subroutine dump_arrayLogicalDim7Kindint64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 7
         Logical(kind=int64), dimension(:, :, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5009, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayLogicalDim7Kindint64
      subroutine load_arrayLogicalDim7Kindint64(self, dir)
         Logical(kind=int64), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3LogicalDim7Kindint64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5069, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayLogicalDim7Kindint64
      subroutine load_array_v_3LogicalDim7Kindint64(self, dir)
         Character(len=*), parameter:: type_ = 'Logical'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 7
         Logical(kind=int64), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5086, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5087, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5088, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3LogicalDim7Kindint64
      subroutine dump_arrayIntegerDim1Kindint8(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 1
         Integer(kind=int8), dimension(:), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5113, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim1Kindint8
      subroutine load_arrayIntegerDim1Kindint8(self, dir)
         Integer(kind=int8), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim1Kindint8(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5173, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim1Kindint8
      subroutine load_array_v_3IntegerDim1Kindint8(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 1
         Integer(kind=int8), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5190, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5191, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5192, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim1Kindint8
      subroutine dump_arrayIntegerDim1Kindint16(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 1
         Integer(kind=int16), dimension(:), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5217, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim1Kindint16
      subroutine load_arrayIntegerDim1Kindint16(self, dir)
         Integer(kind=int16), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim1Kindint16(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5277, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim1Kindint16
      subroutine load_array_v_3IntegerDim1Kindint16(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 1
         Integer(kind=int16), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5294, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5295, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5296, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim1Kindint16
      subroutine dump_arrayIntegerDim1Kindint32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 1
         Integer(kind=int32), dimension(:), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5321, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim1Kindint32
      subroutine load_arrayIntegerDim1Kindint32(self, dir)
         Integer(kind=int32), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim1Kindint32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5381, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim1Kindint32
      subroutine load_array_v_3IntegerDim1Kindint32(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 1
         Integer(kind=int32), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5398, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5399, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5400, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim1Kindint32
      subroutine dump_arrayIntegerDim1Kindint64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 1
         Integer(kind=int64), dimension(:), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5425, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim1Kindint64
      subroutine load_arrayIntegerDim1Kindint64(self, dir)
         Integer(kind=int64), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim1Kindint64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5485, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim1Kindint64
      subroutine load_array_v_3IntegerDim1Kindint64(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 1
         Integer(kind=int64), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5502, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5503, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5504, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim1Kindint64
      subroutine dump_arrayIntegerDim2Kindint8(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 2
         Integer(kind=int8), dimension(:, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5529, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim2Kindint8
      subroutine load_arrayIntegerDim2Kindint8(self, dir)
         Integer(kind=int8), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim2Kindint8(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5589, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim2Kindint8
      subroutine load_array_v_3IntegerDim2Kindint8(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 2
         Integer(kind=int8), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5606, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5607, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5608, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim2Kindint8
      subroutine dump_arrayIntegerDim2Kindint16(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 2
         Integer(kind=int16), dimension(:, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5633, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim2Kindint16
      subroutine load_arrayIntegerDim2Kindint16(self, dir)
         Integer(kind=int16), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim2Kindint16(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5693, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim2Kindint16
      subroutine load_array_v_3IntegerDim2Kindint16(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 2
         Integer(kind=int16), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5710, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5711, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5712, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim2Kindint16
      subroutine dump_arrayIntegerDim2Kindint32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 2
         Integer(kind=int32), dimension(:, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5737, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim2Kindint32
      subroutine load_arrayIntegerDim2Kindint32(self, dir)
         Integer(kind=int32), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim2Kindint32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5797, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim2Kindint32
      subroutine load_array_v_3IntegerDim2Kindint32(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 2
         Integer(kind=int32), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5814, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5815, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5816, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim2Kindint32
      subroutine dump_arrayIntegerDim2Kindint64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 2
         Integer(kind=int64), dimension(:, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5841, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim2Kindint64
      subroutine load_arrayIntegerDim2Kindint64(self, dir)
         Integer(kind=int64), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim2Kindint64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5901, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim2Kindint64
      subroutine load_array_v_3IntegerDim2Kindint64(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 2
         Integer(kind=int64), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5918, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5919, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5920, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim2Kindint64
      subroutine dump_arrayIntegerDim3Kindint8(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 3
         Integer(kind=int8), dimension(:, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 5945, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim3Kindint8
      subroutine load_arrayIntegerDim3Kindint8(self, dir)
         Integer(kind=int8), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim3Kindint8(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6005, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim3Kindint8
      subroutine load_array_v_3IntegerDim3Kindint8(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 3
         Integer(kind=int8), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6022, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6023, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6024, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim3Kindint8
      subroutine dump_arrayIntegerDim3Kindint16(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 3
         Integer(kind=int16), dimension(:, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6049, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim3Kindint16
      subroutine load_arrayIntegerDim3Kindint16(self, dir)
         Integer(kind=int16), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim3Kindint16(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6109, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim3Kindint16
      subroutine load_array_v_3IntegerDim3Kindint16(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 3
         Integer(kind=int16), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6126, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6127, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6128, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim3Kindint16
      subroutine dump_arrayIntegerDim3Kindint32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 3
         Integer(kind=int32), dimension(:, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6153, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim3Kindint32
      subroutine load_arrayIntegerDim3Kindint32(self, dir)
         Integer(kind=int32), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim3Kindint32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6213, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim3Kindint32
      subroutine load_array_v_3IntegerDim3Kindint32(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 3
         Integer(kind=int32), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6230, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6231, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6232, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim3Kindint32
      subroutine dump_arrayIntegerDim3Kindint64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 3
         Integer(kind=int64), dimension(:, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6257, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim3Kindint64
      subroutine load_arrayIntegerDim3Kindint64(self, dir)
         Integer(kind=int64), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim3Kindint64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6317, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim3Kindint64
      subroutine load_array_v_3IntegerDim3Kindint64(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 3
         Integer(kind=int64), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6334, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6335, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6336, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim3Kindint64
      subroutine dump_arrayIntegerDim4Kindint8(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 4
         Integer(kind=int8), dimension(:, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6361, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim4Kindint8
      subroutine load_arrayIntegerDim4Kindint8(self, dir)
         Integer(kind=int8), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim4Kindint8(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6421, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim4Kindint8
      subroutine load_array_v_3IntegerDim4Kindint8(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 4
         Integer(kind=int8), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6438, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6439, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6440, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim4Kindint8
      subroutine dump_arrayIntegerDim4Kindint16(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 4
         Integer(kind=int16), dimension(:, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6465, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim4Kindint16
      subroutine load_arrayIntegerDim4Kindint16(self, dir)
         Integer(kind=int16), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim4Kindint16(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6525, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim4Kindint16
      subroutine load_array_v_3IntegerDim4Kindint16(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 4
         Integer(kind=int16), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6542, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6543, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6544, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim4Kindint16
      subroutine dump_arrayIntegerDim4Kindint32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 4
         Integer(kind=int32), dimension(:, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6569, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim4Kindint32
      subroutine load_arrayIntegerDim4Kindint32(self, dir)
         Integer(kind=int32), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim4Kindint32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6629, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim4Kindint32
      subroutine load_array_v_3IntegerDim4Kindint32(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 4
         Integer(kind=int32), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6646, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6647, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6648, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim4Kindint32
      subroutine dump_arrayIntegerDim4Kindint64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 4
         Integer(kind=int64), dimension(:, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6673, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim4Kindint64
      subroutine load_arrayIntegerDim4Kindint64(self, dir)
         Integer(kind=int64), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim4Kindint64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6733, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim4Kindint64
      subroutine load_array_v_3IntegerDim4Kindint64(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 4
         Integer(kind=int64), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6750, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6751, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6752, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim4Kindint64
      subroutine dump_arrayIntegerDim5Kindint8(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 5
         Integer(kind=int8), dimension(:, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6777, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim5Kindint8
      subroutine load_arrayIntegerDim5Kindint8(self, dir)
         Integer(kind=int8), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim5Kindint8(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6837, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim5Kindint8
      subroutine load_array_v_3IntegerDim5Kindint8(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 5
         Integer(kind=int8), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6854, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6855, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6856, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim5Kindint8
      subroutine dump_arrayIntegerDim5Kindint16(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 5
         Integer(kind=int16), dimension(:, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6881, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim5Kindint16
      subroutine load_arrayIntegerDim5Kindint16(self, dir)
         Integer(kind=int16), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim5Kindint16(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6941, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim5Kindint16
      subroutine load_array_v_3IntegerDim5Kindint16(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 5
         Integer(kind=int16), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6958, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6959, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6960, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim5Kindint16
      subroutine dump_arrayIntegerDim5Kindint32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 5
         Integer(kind=int32), dimension(:, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 6985, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim5Kindint32
      subroutine load_arrayIntegerDim5Kindint32(self, dir)
         Integer(kind=int32), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim5Kindint32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7045, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim5Kindint32
      subroutine load_array_v_3IntegerDim5Kindint32(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 5
         Integer(kind=int32), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7062, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7063, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7064, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim5Kindint32
      subroutine dump_arrayIntegerDim5Kindint64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 5
         Integer(kind=int64), dimension(:, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7089, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim5Kindint64
      subroutine load_arrayIntegerDim5Kindint64(self, dir)
         Integer(kind=int64), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim5Kindint64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7149, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim5Kindint64
      subroutine load_array_v_3IntegerDim5Kindint64(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 5
         Integer(kind=int64), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7166, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7167, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7168, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim5Kindint64
      subroutine dump_arrayIntegerDim6Kindint8(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 6
         Integer(kind=int8), dimension(:, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7193, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim6Kindint8
      subroutine load_arrayIntegerDim6Kindint8(self, dir)
         Integer(kind=int8), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim6Kindint8(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7253, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim6Kindint8
      subroutine load_array_v_3IntegerDim6Kindint8(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 6
         Integer(kind=int8), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7270, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7271, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7272, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim6Kindint8
      subroutine dump_arrayIntegerDim6Kindint16(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 6
         Integer(kind=int16), dimension(:, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7297, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim6Kindint16
      subroutine load_arrayIntegerDim6Kindint16(self, dir)
         Integer(kind=int16), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim6Kindint16(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7357, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim6Kindint16
      subroutine load_array_v_3IntegerDim6Kindint16(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 6
         Integer(kind=int16), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7374, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7375, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7376, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim6Kindint16
      subroutine dump_arrayIntegerDim6Kindint32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 6
         Integer(kind=int32), dimension(:, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7401, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim6Kindint32
      subroutine load_arrayIntegerDim6Kindint32(self, dir)
         Integer(kind=int32), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim6Kindint32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7461, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim6Kindint32
      subroutine load_array_v_3IntegerDim6Kindint32(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 6
         Integer(kind=int32), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7478, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7479, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7480, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim6Kindint32
      subroutine dump_arrayIntegerDim6Kindint64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 6
         Integer(kind=int64), dimension(:, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7505, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim6Kindint64
      subroutine load_arrayIntegerDim6Kindint64(self, dir)
         Integer(kind=int64), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim6Kindint64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7565, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim6Kindint64
      subroutine load_array_v_3IntegerDim6Kindint64(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 6
         Integer(kind=int64), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7582, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7583, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7584, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim6Kindint64
      subroutine dump_arrayIntegerDim7Kindint8(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 7
         Integer(kind=int8), dimension(:, :, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7609, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim7Kindint8
      subroutine load_arrayIntegerDim7Kindint8(self, dir)
         Integer(kind=int8), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim7Kindint8(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7669, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim7Kindint8
      subroutine load_array_v_3IntegerDim7Kindint8(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int8
         Integer(kind=int8), parameter:: dim = 7
         Integer(kind=int8), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7686, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7687, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7688, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim7Kindint8
      subroutine dump_arrayIntegerDim7Kindint16(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 7
         Integer(kind=int16), dimension(:, :, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7713, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim7Kindint16
      subroutine load_arrayIntegerDim7Kindint16(self, dir)
         Integer(kind=int16), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim7Kindint16(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7773, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim7Kindint16
      subroutine load_array_v_3IntegerDim7Kindint16(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int16
         Integer(kind=int8), parameter:: dim = 7
         Integer(kind=int16), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7790, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7791, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7792, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim7Kindint16
      subroutine dump_arrayIntegerDim7Kindint32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 7
         Integer(kind=int32), dimension(:, :, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7817, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim7Kindint32
      subroutine load_arrayIntegerDim7Kindint32(self, dir)
         Integer(kind=int32), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim7Kindint32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7877, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim7Kindint32
      subroutine load_array_v_3IntegerDim7Kindint32(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int32
         Integer(kind=int8), parameter:: dim = 7
         Integer(kind=int32), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7894, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7895, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7896, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim7Kindint32
      subroutine dump_arrayIntegerDim7Kindint64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 7
         Integer(kind=int64), dimension(:, :, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7921, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayIntegerDim7Kindint64
      subroutine load_arrayIntegerDim7Kindint64(self, dir)
         Integer(kind=int64), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3IntegerDim7Kindint64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7981, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayIntegerDim7Kindint64
      subroutine load_array_v_3IntegerDim7Kindint64(self, dir)
         Character(len=*), parameter:: type_ = 'Integer'
         Integer(kind=int8), parameter:: kind_ = int64
         Integer(kind=int8), parameter:: dim = 7
         Integer(kind=int64), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7998, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 7999, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8000, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3IntegerDim7Kindint64
      subroutine dump_arrayRealDim1Kindreal32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 1
         Real(kind=real32), dimension(:), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8025, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayRealDim1Kindreal32
      subroutine load_arrayRealDim1Kindreal32(self, dir)
         Real(kind=real32), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3RealDim1Kindreal32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8085, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayRealDim1Kindreal32
      subroutine load_array_v_3RealDim1Kindreal32(self, dir)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 1
         Real(kind=real32), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8102, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8103, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8104, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3RealDim1Kindreal32
      subroutine dump_arrayRealDim1Kindreal64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 1
         Real(kind=real64), dimension(:), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8129, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayRealDim1Kindreal64
      subroutine load_arrayRealDim1Kindreal64(self, dir)
         Real(kind=real64), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3RealDim1Kindreal64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8189, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayRealDim1Kindreal64
      subroutine load_array_v_3RealDim1Kindreal64(self, dir)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 1
         Real(kind=real64), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8206, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8207, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8208, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3RealDim1Kindreal64
      subroutine dump_arrayRealDim1Kindreal128(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 1
         Real(kind=real128), dimension(:), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8233, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayRealDim1Kindreal128
      subroutine load_arrayRealDim1Kindreal128(self, dir)
         Real(kind=real128), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3RealDim1Kindreal128(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8293, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayRealDim1Kindreal128
      subroutine load_array_v_3RealDim1Kindreal128(self, dir)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 1
         Real(kind=real128), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8310, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8311, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8312, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3RealDim1Kindreal128
      subroutine dump_arrayRealDim2Kindreal32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 2
         Real(kind=real32), dimension(:, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8337, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayRealDim2Kindreal32
      subroutine load_arrayRealDim2Kindreal32(self, dir)
         Real(kind=real32), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3RealDim2Kindreal32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8397, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayRealDim2Kindreal32
      subroutine load_array_v_3RealDim2Kindreal32(self, dir)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 2
         Real(kind=real32), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8414, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8415, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8416, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3RealDim2Kindreal32
      subroutine dump_arrayRealDim2Kindreal64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 2
         Real(kind=real64), dimension(:, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8441, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayRealDim2Kindreal64
      subroutine load_arrayRealDim2Kindreal64(self, dir)
         Real(kind=real64), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3RealDim2Kindreal64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8501, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayRealDim2Kindreal64
      subroutine load_array_v_3RealDim2Kindreal64(self, dir)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 2
         Real(kind=real64), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8518, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8519, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8520, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3RealDim2Kindreal64
      subroutine dump_arrayRealDim2Kindreal128(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 2
         Real(kind=real128), dimension(:, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8545, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayRealDim2Kindreal128
      subroutine load_arrayRealDim2Kindreal128(self, dir)
         Real(kind=real128), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3RealDim2Kindreal128(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8605, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayRealDim2Kindreal128
      subroutine load_array_v_3RealDim2Kindreal128(self, dir)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 2
         Real(kind=real128), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8622, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8623, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8624, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3RealDim2Kindreal128
      subroutine dump_arrayRealDim3Kindreal32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 3
         Real(kind=real32), dimension(:, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8649, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayRealDim3Kindreal32
      subroutine load_arrayRealDim3Kindreal32(self, dir)
         Real(kind=real32), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3RealDim3Kindreal32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8709, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayRealDim3Kindreal32
      subroutine load_array_v_3RealDim3Kindreal32(self, dir)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 3
         Real(kind=real32), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8726, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8727, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8728, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3RealDim3Kindreal32
      subroutine dump_arrayRealDim3Kindreal64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 3
         Real(kind=real64), dimension(:, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8753, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayRealDim3Kindreal64
      subroutine load_arrayRealDim3Kindreal64(self, dir)
         Real(kind=real64), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3RealDim3Kindreal64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8813, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayRealDim3Kindreal64
      subroutine load_array_v_3RealDim3Kindreal64(self, dir)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 3
         Real(kind=real64), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8830, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8831, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8832, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3RealDim3Kindreal64
      subroutine dump_arrayRealDim3Kindreal128(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 3
         Real(kind=real128), dimension(:, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8857, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayRealDim3Kindreal128
      subroutine load_arrayRealDim3Kindreal128(self, dir)
         Real(kind=real128), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3RealDim3Kindreal128(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8917, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayRealDim3Kindreal128
      subroutine load_array_v_3RealDim3Kindreal128(self, dir)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 3
         Real(kind=real128), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8934, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8935, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8936, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3RealDim3Kindreal128
      subroutine dump_arrayRealDim4Kindreal32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 4
         Real(kind=real32), dimension(:, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 8961, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayRealDim4Kindreal32
      subroutine load_arrayRealDim4Kindreal32(self, dir)
         Real(kind=real32), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3RealDim4Kindreal32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9021, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayRealDim4Kindreal32
      subroutine load_array_v_3RealDim4Kindreal32(self, dir)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 4
         Real(kind=real32), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9038, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9039, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9040, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3RealDim4Kindreal32
      subroutine dump_arrayRealDim4Kindreal64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 4
         Real(kind=real64), dimension(:, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9065, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayRealDim4Kindreal64
      subroutine load_arrayRealDim4Kindreal64(self, dir)
         Real(kind=real64), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3RealDim4Kindreal64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9125, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayRealDim4Kindreal64
      subroutine load_array_v_3RealDim4Kindreal64(self, dir)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 4
         Real(kind=real64), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9142, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9143, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9144, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3RealDim4Kindreal64
      subroutine dump_arrayRealDim4Kindreal128(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 4
         Real(kind=real128), dimension(:, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9169, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayRealDim4Kindreal128
      subroutine load_arrayRealDim4Kindreal128(self, dir)
         Real(kind=real128), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3RealDim4Kindreal128(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9229, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayRealDim4Kindreal128
      subroutine load_array_v_3RealDim4Kindreal128(self, dir)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 4
         Real(kind=real128), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9246, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9247, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9248, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3RealDim4Kindreal128
      subroutine dump_arrayRealDim5Kindreal32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 5
         Real(kind=real32), dimension(:, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9273, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayRealDim5Kindreal32
      subroutine load_arrayRealDim5Kindreal32(self, dir)
         Real(kind=real32), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3RealDim5Kindreal32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9333, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayRealDim5Kindreal32
      subroutine load_array_v_3RealDim5Kindreal32(self, dir)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 5
         Real(kind=real32), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9350, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9351, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9352, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3RealDim5Kindreal32
      subroutine dump_arrayRealDim5Kindreal64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 5
         Real(kind=real64), dimension(:, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9377, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayRealDim5Kindreal64
      subroutine load_arrayRealDim5Kindreal64(self, dir)
         Real(kind=real64), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3RealDim5Kindreal64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9437, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayRealDim5Kindreal64
      subroutine load_array_v_3RealDim5Kindreal64(self, dir)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 5
         Real(kind=real64), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9454, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9455, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9456, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3RealDim5Kindreal64
      subroutine dump_arrayRealDim5Kindreal128(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 5
         Real(kind=real128), dimension(:, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9481, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayRealDim5Kindreal128
      subroutine load_arrayRealDim5Kindreal128(self, dir)
         Real(kind=real128), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3RealDim5Kindreal128(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9541, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayRealDim5Kindreal128
      subroutine load_array_v_3RealDim5Kindreal128(self, dir)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 5
         Real(kind=real128), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9558, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9559, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9560, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3RealDim5Kindreal128
      subroutine dump_arrayRealDim6Kindreal32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 6
         Real(kind=real32), dimension(:, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9585, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayRealDim6Kindreal32
      subroutine load_arrayRealDim6Kindreal32(self, dir)
         Real(kind=real32), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3RealDim6Kindreal32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9645, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayRealDim6Kindreal32
      subroutine load_array_v_3RealDim6Kindreal32(self, dir)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 6
         Real(kind=real32), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9662, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9663, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9664, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3RealDim6Kindreal32
      subroutine dump_arrayRealDim6Kindreal64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 6
         Real(kind=real64), dimension(:, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9689, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayRealDim6Kindreal64
      subroutine load_arrayRealDim6Kindreal64(self, dir)
         Real(kind=real64), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3RealDim6Kindreal64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9749, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayRealDim6Kindreal64
      subroutine load_array_v_3RealDim6Kindreal64(self, dir)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 6
         Real(kind=real64), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9766, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9767, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9768, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3RealDim6Kindreal64
      subroutine dump_arrayRealDim6Kindreal128(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 6
         Real(kind=real128), dimension(:, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9793, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayRealDim6Kindreal128
      subroutine load_arrayRealDim6Kindreal128(self, dir)
         Real(kind=real128), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3RealDim6Kindreal128(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9853, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayRealDim6Kindreal128
      subroutine load_array_v_3RealDim6Kindreal128(self, dir)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 6
         Real(kind=real128), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9870, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9871, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9872, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3RealDim6Kindreal128
      subroutine dump_arrayRealDim7Kindreal32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 7
         Real(kind=real32), dimension(:, :, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9897, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayRealDim7Kindreal32
      subroutine load_arrayRealDim7Kindreal32(self, dir)
         Real(kind=real32), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3RealDim7Kindreal32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9957, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayRealDim7Kindreal32
      subroutine load_array_v_3RealDim7Kindreal32(self, dir)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 7
         Real(kind=real32), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9974, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9975, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 9976, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3RealDim7Kindreal32
      subroutine dump_arrayRealDim7Kindreal64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 7
         Real(kind=real64), dimension(:, :, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10001, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayRealDim7Kindreal64
      subroutine load_arrayRealDim7Kindreal64(self, dir)
         Real(kind=real64), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3RealDim7Kindreal64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10061, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayRealDim7Kindreal64
      subroutine load_array_v_3RealDim7Kindreal64(self, dir)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 7
         Real(kind=real64), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10078, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10079, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10080, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3RealDim7Kindreal64
      subroutine dump_arrayRealDim7Kindreal128(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 7
         Real(kind=real128), dimension(:, :, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10105, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayRealDim7Kindreal128
      subroutine load_arrayRealDim7Kindreal128(self, dir)
         Real(kind=real128), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3RealDim7Kindreal128(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10165, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayRealDim7Kindreal128
      subroutine load_array_v_3RealDim7Kindreal128(self, dir)
         Character(len=*), parameter:: type_ = 'Real'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 7
         Real(kind=real128), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10182, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10183, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10184, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3RealDim7Kindreal128
      subroutine dump_arrayComplexDim1Kindreal32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 1
         Complex(kind=real32), dimension(:), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10209, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayComplexDim1Kindreal32
      subroutine load_arrayComplexDim1Kindreal32(self, dir)
         Complex(kind=real32), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3ComplexDim1Kindreal32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10269, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayComplexDim1Kindreal32
      subroutine load_array_v_3ComplexDim1Kindreal32(self, dir)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 1
         Complex(kind=real32), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10286, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10287, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10288, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3ComplexDim1Kindreal32
      subroutine dump_arrayComplexDim1Kindreal64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 1
         Complex(kind=real64), dimension(:), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10313, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayComplexDim1Kindreal64
      subroutine load_arrayComplexDim1Kindreal64(self, dir)
         Complex(kind=real64), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3ComplexDim1Kindreal64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10373, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayComplexDim1Kindreal64
      subroutine load_array_v_3ComplexDim1Kindreal64(self, dir)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 1
         Complex(kind=real64), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10390, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10391, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10392, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3ComplexDim1Kindreal64
      subroutine dump_arrayComplexDim1Kindreal128(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 1
         Complex(kind=real128), dimension(:), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10417, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayComplexDim1Kindreal128
      subroutine load_arrayComplexDim1Kindreal128(self, dir)
         Complex(kind=real128), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3ComplexDim1Kindreal128(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10477, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayComplexDim1Kindreal128
      subroutine load_array_v_3ComplexDim1Kindreal128(self, dir)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 1
         Complex(kind=real128), dimension(:), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10494, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10495, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10496, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3ComplexDim1Kindreal128
      subroutine dump_arrayComplexDim2Kindreal32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 2
         Complex(kind=real32), dimension(:, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10521, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayComplexDim2Kindreal32
      subroutine load_arrayComplexDim2Kindreal32(self, dir)
         Complex(kind=real32), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3ComplexDim2Kindreal32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10581, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayComplexDim2Kindreal32
      subroutine load_array_v_3ComplexDim2Kindreal32(self, dir)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 2
         Complex(kind=real32), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10598, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10599, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10600, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3ComplexDim2Kindreal32
      subroutine dump_arrayComplexDim2Kindreal64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 2
         Complex(kind=real64), dimension(:, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10625, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayComplexDim2Kindreal64
      subroutine load_arrayComplexDim2Kindreal64(self, dir)
         Complex(kind=real64), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3ComplexDim2Kindreal64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10685, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayComplexDim2Kindreal64
      subroutine load_array_v_3ComplexDim2Kindreal64(self, dir)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 2
         Complex(kind=real64), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10702, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10703, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10704, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3ComplexDim2Kindreal64
      subroutine dump_arrayComplexDim2Kindreal128(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 2
         Complex(kind=real128), dimension(:, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10729, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayComplexDim2Kindreal128
      subroutine load_arrayComplexDim2Kindreal128(self, dir)
         Complex(kind=real128), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3ComplexDim2Kindreal128(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10789, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayComplexDim2Kindreal128
      subroutine load_array_v_3ComplexDim2Kindreal128(self, dir)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 2
         Complex(kind=real128), dimension(:, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10806, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10807, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10808, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3ComplexDim2Kindreal128
      subroutine dump_arrayComplexDim3Kindreal32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 3
         Complex(kind=real32), dimension(:, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10833, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayComplexDim3Kindreal32
      subroutine load_arrayComplexDim3Kindreal32(self, dir)
         Complex(kind=real32), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3ComplexDim3Kindreal32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10893, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayComplexDim3Kindreal32
      subroutine load_array_v_3ComplexDim3Kindreal32(self, dir)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 3
         Complex(kind=real32), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10910, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10911, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10912, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3ComplexDim3Kindreal32
      subroutine dump_arrayComplexDim3Kindreal64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 3
         Complex(kind=real64), dimension(:, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10937, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayComplexDim3Kindreal64
      subroutine load_arrayComplexDim3Kindreal64(self, dir)
         Complex(kind=real64), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3ComplexDim3Kindreal64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 10997, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayComplexDim3Kindreal64
      subroutine load_array_v_3ComplexDim3Kindreal64(self, dir)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 3
         Complex(kind=real64), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11014, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11015, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11016, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3ComplexDim3Kindreal64
      subroutine dump_arrayComplexDim3Kindreal128(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 3
         Complex(kind=real128), dimension(:, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11041, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayComplexDim3Kindreal128
      subroutine load_arrayComplexDim3Kindreal128(self, dir)
         Complex(kind=real128), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3ComplexDim3Kindreal128(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11101, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayComplexDim3Kindreal128
      subroutine load_array_v_3ComplexDim3Kindreal128(self, dir)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 3
         Complex(kind=real128), dimension(:, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11118, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11119, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11120, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3ComplexDim3Kindreal128
      subroutine dump_arrayComplexDim4Kindreal32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 4
         Complex(kind=real32), dimension(:, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11145, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayComplexDim4Kindreal32
      subroutine load_arrayComplexDim4Kindreal32(self, dir)
         Complex(kind=real32), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3ComplexDim4Kindreal32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11205, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayComplexDim4Kindreal32
      subroutine load_array_v_3ComplexDim4Kindreal32(self, dir)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 4
         Complex(kind=real32), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11222, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11223, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11224, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3ComplexDim4Kindreal32
      subroutine dump_arrayComplexDim4Kindreal64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 4
         Complex(kind=real64), dimension(:, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11249, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayComplexDim4Kindreal64
      subroutine load_arrayComplexDim4Kindreal64(self, dir)
         Complex(kind=real64), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3ComplexDim4Kindreal64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11309, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayComplexDim4Kindreal64
      subroutine load_array_v_3ComplexDim4Kindreal64(self, dir)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 4
         Complex(kind=real64), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11326, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11327, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11328, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3ComplexDim4Kindreal64
      subroutine dump_arrayComplexDim4Kindreal128(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 4
         Complex(kind=real128), dimension(:, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11353, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayComplexDim4Kindreal128
      subroutine load_arrayComplexDim4Kindreal128(self, dir)
         Complex(kind=real128), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3ComplexDim4Kindreal128(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11413, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayComplexDim4Kindreal128
      subroutine load_array_v_3ComplexDim4Kindreal128(self, dir)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 4
         Complex(kind=real128), dimension(:, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11430, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11431, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11432, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3ComplexDim4Kindreal128
      subroutine dump_arrayComplexDim5Kindreal32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 5
         Complex(kind=real32), dimension(:, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11457, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayComplexDim5Kindreal32
      subroutine load_arrayComplexDim5Kindreal32(self, dir)
         Complex(kind=real32), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3ComplexDim5Kindreal32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11517, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayComplexDim5Kindreal32
      subroutine load_array_v_3ComplexDim5Kindreal32(self, dir)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 5
         Complex(kind=real32), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11534, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11535, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11536, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3ComplexDim5Kindreal32
      subroutine dump_arrayComplexDim5Kindreal64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 5
         Complex(kind=real64), dimension(:, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11561, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayComplexDim5Kindreal64
      subroutine load_arrayComplexDim5Kindreal64(self, dir)
         Complex(kind=real64), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3ComplexDim5Kindreal64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11621, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayComplexDim5Kindreal64
      subroutine load_array_v_3ComplexDim5Kindreal64(self, dir)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 5
         Complex(kind=real64), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11638, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11639, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11640, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3ComplexDim5Kindreal64
      subroutine dump_arrayComplexDim5Kindreal128(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 5
         Complex(kind=real128), dimension(:, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11665, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayComplexDim5Kindreal128
      subroutine load_arrayComplexDim5Kindreal128(self, dir)
         Complex(kind=real128), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3ComplexDim5Kindreal128(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11725, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayComplexDim5Kindreal128
      subroutine load_array_v_3ComplexDim5Kindreal128(self, dir)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 5
         Complex(kind=real128), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11742, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11743, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11744, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3ComplexDim5Kindreal128
      subroutine dump_arrayComplexDim6Kindreal32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 6
         Complex(kind=real32), dimension(:, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11769, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayComplexDim6Kindreal32
      subroutine load_arrayComplexDim6Kindreal32(self, dir)
         Complex(kind=real32), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3ComplexDim6Kindreal32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11829, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayComplexDim6Kindreal32
      subroutine load_array_v_3ComplexDim6Kindreal32(self, dir)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 6
         Complex(kind=real32), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11846, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11847, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11848, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3ComplexDim6Kindreal32
      subroutine dump_arrayComplexDim6Kindreal64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 6
         Complex(kind=real64), dimension(:, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11873, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayComplexDim6Kindreal64
      subroutine load_arrayComplexDim6Kindreal64(self, dir)
         Complex(kind=real64), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3ComplexDim6Kindreal64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11933, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayComplexDim6Kindreal64
      subroutine load_array_v_3ComplexDim6Kindreal64(self, dir)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 6
         Complex(kind=real64), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11950, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11951, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11952, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3ComplexDim6Kindreal64
      subroutine dump_arrayComplexDim6Kindreal128(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 6
         Complex(kind=real128), dimension(:, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 11977, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayComplexDim6Kindreal128
      subroutine load_arrayComplexDim6Kindreal128(self, dir)
         Complex(kind=real128), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3ComplexDim6Kindreal128(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 12037, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayComplexDim6Kindreal128
      subroutine load_array_v_3ComplexDim6Kindreal128(self, dir)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 6
         Complex(kind=real128), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 12054, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 12055, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 12056, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3ComplexDim6Kindreal128
      subroutine dump_arrayComplexDim7Kindreal32(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 7
         Complex(kind=real32), dimension(:, :, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 12081, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayComplexDim7Kindreal32
      subroutine load_arrayComplexDim7Kindreal32(self, dir)
         Complex(kind=real32), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3ComplexDim7Kindreal32(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 12141, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayComplexDim7Kindreal32
      subroutine load_array_v_3ComplexDim7Kindreal32(self, dir)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real32
         Integer(kind=int8), parameter:: dim = 7
         Complex(kind=real32), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 12158, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 12159, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 12160, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3ComplexDim7Kindreal32
      subroutine dump_arrayComplexDim7Kindreal64(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 7
         Complex(kind=real64), dimension(:, :, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 12185, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayComplexDim7Kindreal64
      subroutine load_arrayComplexDim7Kindreal64(self, dir)
         Complex(kind=real64), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3ComplexDim7Kindreal64(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 12245, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayComplexDim7Kindreal64
      subroutine load_array_v_3ComplexDim7Kindreal64(self, dir)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real64
         Integer(kind=int8), parameter:: dim = 7
         Complex(kind=real64), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 12262, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 12263, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 12264, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3ComplexDim7Kindreal64
      subroutine dump_arrayComplexDim7Kindreal128(self, dir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 7
         Complex(kind=real128), dimension(:, :, :, :, :, :, :), intent(in):: self
         Character(len=*), intent(in):: dir
            Character(len=*), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         Integer(kind=int64):: sizes(dim)
         Integer(kind=kind(dim)):: i
         Integer(kind=kind(input_unit)):: unit
         if(.not.(sh('mkdir -p ' + trim(dir))))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 12289, (".not.(sh('mkdir -p ' + trim(dir)))"); error stop; end if
         ! version
         open(newunit=unit, file=trim(dir) + '/' + array_version_file, status='replace', action='write')
         write(unit, '(g0)') version
         close(unit)
         ! metadata
         open(newunit=unit, file=trim(dir) + '/' + array_meta_file, status='replace', action='write')
         write(unit, '(a)') type_
         write(unit, '(g0)') kind_
         write(unit, '(g0)') dim
         sizes = shape(self)
         do i = 1, dim
            write(unit, '(g0)') sizes(i)
         end do
         close(unit)
         ! data
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='replace', action='write', form='unformatted', access='stream')
         write(unit) self
         close(unit)
         ! descriptions
         open(newunit=unit, file=trim(dir) + '/' + array_description_file, status='replace', action='write')
            if(present(desc1)) write(unit, '(a)') desc1
            if(present(desc2)) write(unit, '(a)') desc2
            if(present(desc3)) write(unit, '(a)') desc3
            if(present(desc4)) write(unit, '(a)') desc4
            if(present(desc5)) write(unit, '(a)') desc5
            if(present(desc6)) write(unit, '(a)') desc6
            if(present(desc7)) write(unit, '(a)') desc7
            if(present(desc8)) write(unit, '(a)') desc8
            if(present(desc9)) write(unit, '(a)') desc9
            if(present(desc10)) write(unit, '(a)') desc10
         close(unit)
      end subroutine dump_arrayComplexDim7Kindreal128
      subroutine load_arrayComplexDim7Kindreal128(self, dir)
         Complex(kind=real128), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         Integer:: version_
         version_ = load_array_version(trim(dir))
         select case(version_)
         case(3)
            call load_array_v_3ComplexDim7Kindreal128(self, dir)
         case default
            write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 12349, ('Unsupported version ' + str(version_) + ' for ' + trim(dir)); error stop
         end select
      end subroutine load_arrayComplexDim7Kindreal128
      subroutine load_array_v_3ComplexDim7Kindreal128(self, dir)
         Character(len=*), parameter:: type_ = 'Complex'
         Integer(kind=int8), parameter:: kind_ = real128
         Integer(kind=int8), parameter:: dim = 7
         Complex(kind=real128), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         Character(len=*), intent(in):: dir
         type(ArrayMetaV3):: meta
         Integer(kind=kind(input_unit)):: unit
         call load_array_meta_v_3(meta, trim(dir))
         if(.not.(meta%type_ == type_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 12366, (".not.(meta%type_ == type_)"); error stop; end if
         if(.not.(meta%kind_ == kind_))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 12367, (".not.(meta%kind_ == kind_)"); error stop; end if
         if(.not.(meta%dim == dim))then; write(error_unit, *) "ERROR: ", "io_lib.f90", " ", 12368, (".not.(meta%dim == dim)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=unit, file=trim(dir) + '/' + array_data_file, status='old', action='read', form='unformatted', access='stream')
         read(unit) self
         close(unit)
      end subroutine load_array_v_3ComplexDim7Kindreal128
end module io_lib
