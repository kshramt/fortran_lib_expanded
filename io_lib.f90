module io_lib
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, INPUT_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: INT64
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
   use, non_intrinsic:: constant_lib, only: TAB
   use, non_intrinsic:: character_lib, only: s, str, operator(+)
   use, non_intrinsic:: config_lib, only: get_config_value
   implicit none
   private
   public:: VERSION, ARRAY_DATA_FILE, ARRAY_META_FILE, ARRAY_VERSION_FILE, ARRAY_DESCRIPTION_FILE
   public:: get_column_format_string
   public:: dump, load, load_version, load_meta
   public:: get_line_number, number_of_columns, file_shape
   public:: mktemp
   public:: sh
   integer, parameter:: VERSION = 2 ! Array file format's compatibility.
   Integer, parameter:: LEN_DATA_TYPE_STR_MAX = 24
   character(len = *), parameter:: ARRAY_DATA_FILE = 'data.bin'
   character(len=*), parameter:: ARRAY_META_FILE_V_1 = 'meta.nml'
   character(len=*), parameter:: ARRAY_META_FILE_V_2 = 'meta.kv'
   character(len=*), parameter:: ARRAY_META_FILE = ARRAY_META_FILE_V_2
   character(len = *), parameter:: ARRAY_VERSION_FILE = 'version.dat'
   character(len = *), parameter:: ARRAY_DESCRIPTION_FILE = 'description.txt'
   type, public:: ArrayMeta
      Character(len=LEN_DATA_TYPE_STR_MAX):: dataType
      Integer:: dim
      Integer, allocatable:: sizes(:)
   end type ArrayMeta
      interface get_column_format_string
         module procedure get_column_format_stringLogicalDim0
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringIntegerDim0KindINT8
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringIntegerDim0KindINT16
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringIntegerDim0KindINT32
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringIntegerDim0KindINT64
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringRealDim0KindREAL32
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringRealDim0KindREAL64
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringRealDim0KindREAL128
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringComplexDim0KindREAL32
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringComplexDim0KindREAL64
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringComplexDim0KindREAL128
      end interface get_column_format_string
   interface load_meta
      module procedure load_array_meta
   end interface load_meta
   interface load_version
      module procedure load_array_version
   end interface load_version
      interface dump
         module procedure dump_arrayLogicalDim1
      end interface dump
      interface load
         module procedure load_arrayLogicalDim1
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim1
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim1
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim2
      end interface dump
      interface load
         module procedure load_arrayLogicalDim2
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim2
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim2
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim3
      end interface dump
      interface load
         module procedure load_arrayLogicalDim3
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim3
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim3
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim4
      end interface dump
      interface load
         module procedure load_arrayLogicalDim4
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim4
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim4
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim5
      end interface dump
      interface load
         module procedure load_arrayLogicalDim5
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim5
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim5
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim6
      end interface dump
      interface load
         module procedure load_arrayLogicalDim6
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim6
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim6
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim7
      end interface dump
      interface load
         module procedure load_arrayLogicalDim7
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim7
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim7
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim1KindINT8
      end interface dump
      interface load
         module procedure load_arrayIntegerDim1KindINT8
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim1KindINT8
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim1KindINT8
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim1KindINT16
      end interface dump
      interface load
         module procedure load_arrayIntegerDim1KindINT16
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim1KindINT16
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim1KindINT16
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim1KindINT32
      end interface dump
      interface load
         module procedure load_arrayIntegerDim1KindINT32
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim1KindINT32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim1KindINT32
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim1KindINT64
      end interface dump
      interface load
         module procedure load_arrayIntegerDim1KindINT64
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim1KindINT64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim1KindINT64
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim2KindINT8
      end interface dump
      interface load
         module procedure load_arrayIntegerDim2KindINT8
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim2KindINT8
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim2KindINT8
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim2KindINT16
      end interface dump
      interface load
         module procedure load_arrayIntegerDim2KindINT16
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim2KindINT16
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim2KindINT16
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim2KindINT32
      end interface dump
      interface load
         module procedure load_arrayIntegerDim2KindINT32
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim2KindINT32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim2KindINT32
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim2KindINT64
      end interface dump
      interface load
         module procedure load_arrayIntegerDim2KindINT64
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim2KindINT64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim2KindINT64
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim3KindINT8
      end interface dump
      interface load
         module procedure load_arrayIntegerDim3KindINT8
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim3KindINT8
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim3KindINT8
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim3KindINT16
      end interface dump
      interface load
         module procedure load_arrayIntegerDim3KindINT16
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim3KindINT16
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim3KindINT16
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim3KindINT32
      end interface dump
      interface load
         module procedure load_arrayIntegerDim3KindINT32
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim3KindINT32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim3KindINT32
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim3KindINT64
      end interface dump
      interface load
         module procedure load_arrayIntegerDim3KindINT64
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim3KindINT64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim3KindINT64
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim4KindINT8
      end interface dump
      interface load
         module procedure load_arrayIntegerDim4KindINT8
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim4KindINT8
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim4KindINT8
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim4KindINT16
      end interface dump
      interface load
         module procedure load_arrayIntegerDim4KindINT16
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim4KindINT16
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim4KindINT16
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim4KindINT32
      end interface dump
      interface load
         module procedure load_arrayIntegerDim4KindINT32
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim4KindINT32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim4KindINT32
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim4KindINT64
      end interface dump
      interface load
         module procedure load_arrayIntegerDim4KindINT64
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim4KindINT64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim4KindINT64
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim5KindINT8
      end interface dump
      interface load
         module procedure load_arrayIntegerDim5KindINT8
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim5KindINT8
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim5KindINT8
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim5KindINT16
      end interface dump
      interface load
         module procedure load_arrayIntegerDim5KindINT16
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim5KindINT16
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim5KindINT16
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim5KindINT32
      end interface dump
      interface load
         module procedure load_arrayIntegerDim5KindINT32
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim5KindINT32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim5KindINT32
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim5KindINT64
      end interface dump
      interface load
         module procedure load_arrayIntegerDim5KindINT64
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim5KindINT64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim5KindINT64
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim6KindINT8
      end interface dump
      interface load
         module procedure load_arrayIntegerDim6KindINT8
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim6KindINT8
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim6KindINT8
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim6KindINT16
      end interface dump
      interface load
         module procedure load_arrayIntegerDim6KindINT16
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim6KindINT16
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim6KindINT16
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim6KindINT32
      end interface dump
      interface load
         module procedure load_arrayIntegerDim6KindINT32
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim6KindINT32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim6KindINT32
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim6KindINT64
      end interface dump
      interface load
         module procedure load_arrayIntegerDim6KindINT64
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim6KindINT64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim6KindINT64
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim7KindINT8
      end interface dump
      interface load
         module procedure load_arrayIntegerDim7KindINT8
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim7KindINT8
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim7KindINT8
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim7KindINT16
      end interface dump
      interface load
         module procedure load_arrayIntegerDim7KindINT16
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim7KindINT16
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim7KindINT16
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim7KindINT32
      end interface dump
      interface load
         module procedure load_arrayIntegerDim7KindINT32
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim7KindINT32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim7KindINT32
      end interface load_v_1
      interface dump
         module procedure dump_arrayIntegerDim7KindINT64
      end interface dump
      interface load
         module procedure load_arrayIntegerDim7KindINT64
      end interface load
      interface load_v_2
         module procedure load_array_v_2IntegerDim7KindINT64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1IntegerDim7KindINT64
      end interface load_v_1
      interface dump
         module procedure dump_arrayRealDim1KindREAL32
      end interface dump
      interface load
         module procedure load_arrayRealDim1KindREAL32
      end interface load
      interface load_v_2
         module procedure load_array_v_2RealDim1KindREAL32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1RealDim1KindREAL32
      end interface load_v_1
      interface dump
         module procedure dump_arrayRealDim1KindREAL64
      end interface dump
      interface load
         module procedure load_arrayRealDim1KindREAL64
      end interface load
      interface load_v_2
         module procedure load_array_v_2RealDim1KindREAL64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1RealDim1KindREAL64
      end interface load_v_1
      interface dump
         module procedure dump_arrayRealDim1KindREAL128
      end interface dump
      interface load
         module procedure load_arrayRealDim1KindREAL128
      end interface load
      interface load_v_2
         module procedure load_array_v_2RealDim1KindREAL128
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1RealDim1KindREAL128
      end interface load_v_1
      interface dump
         module procedure dump_arrayRealDim2KindREAL32
      end interface dump
      interface load
         module procedure load_arrayRealDim2KindREAL32
      end interface load
      interface load_v_2
         module procedure load_array_v_2RealDim2KindREAL32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1RealDim2KindREAL32
      end interface load_v_1
      interface dump
         module procedure dump_arrayRealDim2KindREAL64
      end interface dump
      interface load
         module procedure load_arrayRealDim2KindREAL64
      end interface load
      interface load_v_2
         module procedure load_array_v_2RealDim2KindREAL64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1RealDim2KindREAL64
      end interface load_v_1
      interface dump
         module procedure dump_arrayRealDim2KindREAL128
      end interface dump
      interface load
         module procedure load_arrayRealDim2KindREAL128
      end interface load
      interface load_v_2
         module procedure load_array_v_2RealDim2KindREAL128
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1RealDim2KindREAL128
      end interface load_v_1
      interface dump
         module procedure dump_arrayRealDim3KindREAL32
      end interface dump
      interface load
         module procedure load_arrayRealDim3KindREAL32
      end interface load
      interface load_v_2
         module procedure load_array_v_2RealDim3KindREAL32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1RealDim3KindREAL32
      end interface load_v_1
      interface dump
         module procedure dump_arrayRealDim3KindREAL64
      end interface dump
      interface load
         module procedure load_arrayRealDim3KindREAL64
      end interface load
      interface load_v_2
         module procedure load_array_v_2RealDim3KindREAL64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1RealDim3KindREAL64
      end interface load_v_1
      interface dump
         module procedure dump_arrayRealDim3KindREAL128
      end interface dump
      interface load
         module procedure load_arrayRealDim3KindREAL128
      end interface load
      interface load_v_2
         module procedure load_array_v_2RealDim3KindREAL128
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1RealDim3KindREAL128
      end interface load_v_1
      interface dump
         module procedure dump_arrayRealDim4KindREAL32
      end interface dump
      interface load
         module procedure load_arrayRealDim4KindREAL32
      end interface load
      interface load_v_2
         module procedure load_array_v_2RealDim4KindREAL32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1RealDim4KindREAL32
      end interface load_v_1
      interface dump
         module procedure dump_arrayRealDim4KindREAL64
      end interface dump
      interface load
         module procedure load_arrayRealDim4KindREAL64
      end interface load
      interface load_v_2
         module procedure load_array_v_2RealDim4KindREAL64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1RealDim4KindREAL64
      end interface load_v_1
      interface dump
         module procedure dump_arrayRealDim4KindREAL128
      end interface dump
      interface load
         module procedure load_arrayRealDim4KindREAL128
      end interface load
      interface load_v_2
         module procedure load_array_v_2RealDim4KindREAL128
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1RealDim4KindREAL128
      end interface load_v_1
      interface dump
         module procedure dump_arrayRealDim5KindREAL32
      end interface dump
      interface load
         module procedure load_arrayRealDim5KindREAL32
      end interface load
      interface load_v_2
         module procedure load_array_v_2RealDim5KindREAL32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1RealDim5KindREAL32
      end interface load_v_1
      interface dump
         module procedure dump_arrayRealDim5KindREAL64
      end interface dump
      interface load
         module procedure load_arrayRealDim5KindREAL64
      end interface load
      interface load_v_2
         module procedure load_array_v_2RealDim5KindREAL64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1RealDim5KindREAL64
      end interface load_v_1
      interface dump
         module procedure dump_arrayRealDim5KindREAL128
      end interface dump
      interface load
         module procedure load_arrayRealDim5KindREAL128
      end interface load
      interface load_v_2
         module procedure load_array_v_2RealDim5KindREAL128
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1RealDim5KindREAL128
      end interface load_v_1
      interface dump
         module procedure dump_arrayRealDim6KindREAL32
      end interface dump
      interface load
         module procedure load_arrayRealDim6KindREAL32
      end interface load
      interface load_v_2
         module procedure load_array_v_2RealDim6KindREAL32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1RealDim6KindREAL32
      end interface load_v_1
      interface dump
         module procedure dump_arrayRealDim6KindREAL64
      end interface dump
      interface load
         module procedure load_arrayRealDim6KindREAL64
      end interface load
      interface load_v_2
         module procedure load_array_v_2RealDim6KindREAL64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1RealDim6KindREAL64
      end interface load_v_1
      interface dump
         module procedure dump_arrayRealDim6KindREAL128
      end interface dump
      interface load
         module procedure load_arrayRealDim6KindREAL128
      end interface load
      interface load_v_2
         module procedure load_array_v_2RealDim6KindREAL128
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1RealDim6KindREAL128
      end interface load_v_1
      interface dump
         module procedure dump_arrayRealDim7KindREAL32
      end interface dump
      interface load
         module procedure load_arrayRealDim7KindREAL32
      end interface load
      interface load_v_2
         module procedure load_array_v_2RealDim7KindREAL32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1RealDim7KindREAL32
      end interface load_v_1
      interface dump
         module procedure dump_arrayRealDim7KindREAL64
      end interface dump
      interface load
         module procedure load_arrayRealDim7KindREAL64
      end interface load
      interface load_v_2
         module procedure load_array_v_2RealDim7KindREAL64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1RealDim7KindREAL64
      end interface load_v_1
      interface dump
         module procedure dump_arrayRealDim7KindREAL128
      end interface dump
      interface load
         module procedure load_arrayRealDim7KindREAL128
      end interface load
      interface load_v_2
         module procedure load_array_v_2RealDim7KindREAL128
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1RealDim7KindREAL128
      end interface load_v_1
      interface dump
         module procedure dump_arrayComplexDim1KindREAL32
      end interface dump
      interface load
         module procedure load_arrayComplexDim1KindREAL32
      end interface load
      interface load_v_2
         module procedure load_array_v_2ComplexDim1KindREAL32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1ComplexDim1KindREAL32
      end interface load_v_1
      interface dump
         module procedure dump_arrayComplexDim1KindREAL64
      end interface dump
      interface load
         module procedure load_arrayComplexDim1KindREAL64
      end interface load
      interface load_v_2
         module procedure load_array_v_2ComplexDim1KindREAL64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1ComplexDim1KindREAL64
      end interface load_v_1
      interface dump
         module procedure dump_arrayComplexDim1KindREAL128
      end interface dump
      interface load
         module procedure load_arrayComplexDim1KindREAL128
      end interface load
      interface load_v_2
         module procedure load_array_v_2ComplexDim1KindREAL128
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1ComplexDim1KindREAL128
      end interface load_v_1
      interface dump
         module procedure dump_arrayComplexDim2KindREAL32
      end interface dump
      interface load
         module procedure load_arrayComplexDim2KindREAL32
      end interface load
      interface load_v_2
         module procedure load_array_v_2ComplexDim2KindREAL32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1ComplexDim2KindREAL32
      end interface load_v_1
      interface dump
         module procedure dump_arrayComplexDim2KindREAL64
      end interface dump
      interface load
         module procedure load_arrayComplexDim2KindREAL64
      end interface load
      interface load_v_2
         module procedure load_array_v_2ComplexDim2KindREAL64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1ComplexDim2KindREAL64
      end interface load_v_1
      interface dump
         module procedure dump_arrayComplexDim2KindREAL128
      end interface dump
      interface load
         module procedure load_arrayComplexDim2KindREAL128
      end interface load
      interface load_v_2
         module procedure load_array_v_2ComplexDim2KindREAL128
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1ComplexDim2KindREAL128
      end interface load_v_1
      interface dump
         module procedure dump_arrayComplexDim3KindREAL32
      end interface dump
      interface load
         module procedure load_arrayComplexDim3KindREAL32
      end interface load
      interface load_v_2
         module procedure load_array_v_2ComplexDim3KindREAL32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1ComplexDim3KindREAL32
      end interface load_v_1
      interface dump
         module procedure dump_arrayComplexDim3KindREAL64
      end interface dump
      interface load
         module procedure load_arrayComplexDim3KindREAL64
      end interface load
      interface load_v_2
         module procedure load_array_v_2ComplexDim3KindREAL64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1ComplexDim3KindREAL64
      end interface load_v_1
      interface dump
         module procedure dump_arrayComplexDim3KindREAL128
      end interface dump
      interface load
         module procedure load_arrayComplexDim3KindREAL128
      end interface load
      interface load_v_2
         module procedure load_array_v_2ComplexDim3KindREAL128
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1ComplexDim3KindREAL128
      end interface load_v_1
      interface dump
         module procedure dump_arrayComplexDim4KindREAL32
      end interface dump
      interface load
         module procedure load_arrayComplexDim4KindREAL32
      end interface load
      interface load_v_2
         module procedure load_array_v_2ComplexDim4KindREAL32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1ComplexDim4KindREAL32
      end interface load_v_1
      interface dump
         module procedure dump_arrayComplexDim4KindREAL64
      end interface dump
      interface load
         module procedure load_arrayComplexDim4KindREAL64
      end interface load
      interface load_v_2
         module procedure load_array_v_2ComplexDim4KindREAL64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1ComplexDim4KindREAL64
      end interface load_v_1
      interface dump
         module procedure dump_arrayComplexDim4KindREAL128
      end interface dump
      interface load
         module procedure load_arrayComplexDim4KindREAL128
      end interface load
      interface load_v_2
         module procedure load_array_v_2ComplexDim4KindREAL128
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1ComplexDim4KindREAL128
      end interface load_v_1
      interface dump
         module procedure dump_arrayComplexDim5KindREAL32
      end interface dump
      interface load
         module procedure load_arrayComplexDim5KindREAL32
      end interface load
      interface load_v_2
         module procedure load_array_v_2ComplexDim5KindREAL32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1ComplexDim5KindREAL32
      end interface load_v_1
      interface dump
         module procedure dump_arrayComplexDim5KindREAL64
      end interface dump
      interface load
         module procedure load_arrayComplexDim5KindREAL64
      end interface load
      interface load_v_2
         module procedure load_array_v_2ComplexDim5KindREAL64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1ComplexDim5KindREAL64
      end interface load_v_1
      interface dump
         module procedure dump_arrayComplexDim5KindREAL128
      end interface dump
      interface load
         module procedure load_arrayComplexDim5KindREAL128
      end interface load
      interface load_v_2
         module procedure load_array_v_2ComplexDim5KindREAL128
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1ComplexDim5KindREAL128
      end interface load_v_1
      interface dump
         module procedure dump_arrayComplexDim6KindREAL32
      end interface dump
      interface load
         module procedure load_arrayComplexDim6KindREAL32
      end interface load
      interface load_v_2
         module procedure load_array_v_2ComplexDim6KindREAL32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1ComplexDim6KindREAL32
      end interface load_v_1
      interface dump
         module procedure dump_arrayComplexDim6KindREAL64
      end interface dump
      interface load
         module procedure load_arrayComplexDim6KindREAL64
      end interface load
      interface load_v_2
         module procedure load_array_v_2ComplexDim6KindREAL64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1ComplexDim6KindREAL64
      end interface load_v_1
      interface dump
         module procedure dump_arrayComplexDim6KindREAL128
      end interface dump
      interface load
         module procedure load_arrayComplexDim6KindREAL128
      end interface load
      interface load_v_2
         module procedure load_array_v_2ComplexDim6KindREAL128
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1ComplexDim6KindREAL128
      end interface load_v_1
      interface dump
         module procedure dump_arrayComplexDim7KindREAL32
      end interface dump
      interface load
         module procedure load_arrayComplexDim7KindREAL32
      end interface load
      interface load_v_2
         module procedure load_array_v_2ComplexDim7KindREAL32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1ComplexDim7KindREAL32
      end interface load_v_1
      interface dump
         module procedure dump_arrayComplexDim7KindREAL64
      end interface dump
      interface load
         module procedure load_arrayComplexDim7KindREAL64
      end interface load
      interface load_v_2
         module procedure load_array_v_2ComplexDim7KindREAL64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1ComplexDim7KindREAL64
      end interface load_v_1
      interface dump
         module procedure dump_arrayComplexDim7KindREAL128
      end interface dump
      interface load
         module procedure load_arrayComplexDim7KindREAL128
      end interface load
      interface load_v_2
         module procedure load_array_v_2ComplexDim7KindREAL128
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1ComplexDim7KindREAL128
      end interface load_v_1
      interface dump
         module procedure dump_arrayCharacterDim1LenAsterisk
      end interface dump
      interface load
         module procedure load_arrayCharacterDim1LenAsterisk
      end interface load
      interface load_v_2
         module procedure load_array_v_2CharacterDim1LenAsterisk
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1CharacterDim1LenAsterisk
      end interface load_v_1
      interface dump
         module procedure dump_arrayCharacterDim2LenAsterisk
      end interface dump
      interface load
         module procedure load_arrayCharacterDim2LenAsterisk
      end interface load
      interface load_v_2
         module procedure load_array_v_2CharacterDim2LenAsterisk
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1CharacterDim2LenAsterisk
      end interface load_v_1
      interface dump
         module procedure dump_arrayCharacterDim3LenAsterisk
      end interface dump
      interface load
         module procedure load_arrayCharacterDim3LenAsterisk
      end interface load
      interface load_v_2
         module procedure load_array_v_2CharacterDim3LenAsterisk
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1CharacterDim3LenAsterisk
      end interface load_v_1
      interface dump
         module procedure dump_arrayCharacterDim4LenAsterisk
      end interface dump
      interface load
         module procedure load_arrayCharacterDim4LenAsterisk
      end interface load
      interface load_v_2
         module procedure load_array_v_2CharacterDim4LenAsterisk
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1CharacterDim4LenAsterisk
      end interface load_v_1
      interface dump
         module procedure dump_arrayCharacterDim5LenAsterisk
      end interface dump
      interface load
         module procedure load_arrayCharacterDim5LenAsterisk
      end interface load
      interface load_v_2
         module procedure load_array_v_2CharacterDim5LenAsterisk
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1CharacterDim5LenAsterisk
      end interface load_v_1
      interface dump
         module procedure dump_arrayCharacterDim6LenAsterisk
      end interface dump
      interface load
         module procedure load_arrayCharacterDim6LenAsterisk
      end interface load
      interface load_v_2
         module procedure load_array_v_2CharacterDim6LenAsterisk
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1CharacterDim6LenAsterisk
      end interface load_v_1
      interface dump
         module procedure dump_arrayCharacterDim7LenAsterisk
      end interface dump
      interface load
         module procedure load_arrayCharacterDim7LenAsterisk
      end interface load
      interface load_v_2
         module procedure load_array_v_2CharacterDim7LenAsterisk
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1CharacterDim7LenAsterisk
      end interface load_v_1
contains
      ! '(256(1x, l1))'
      function get_column_format_stringLogicalDim0(x, n) result(ret)
         Logical, intent(in):: x
         Integer, intent(in):: n
         Character(len=:), allocatable:: ret
         if(.not.(n >= 1))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1351, (".not.(n >= 1)"); error stop; end if
         ret = '(' + str(n) + '(1x, l1))'
      end function get_column_format_stringLogicalDim0
      ! '(256(1x, i11))'
      function get_column_format_stringIntegerDim0KindINT8(x, n) result(ret)
         Integer(kind=INT8), intent(in):: x
         Integer, intent(in):: n
         Character(len=:), allocatable:: ret
         if(.not.(n >= 1))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1361, (".not.(n >= 1)"); error stop; end if
         ret = '(' + str(n) + '(1x, i' + str(len(str(huge(x))) + 1) + '))'
      end function get_column_format_stringIntegerDim0KindINT8
      ! '(256(1x, i11))'
      function get_column_format_stringIntegerDim0KindINT16(x, n) result(ret)
         Integer(kind=INT16), intent(in):: x
         Integer, intent(in):: n
         Character(len=:), allocatable:: ret
         if(.not.(n >= 1))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1370, (".not.(n >= 1)"); error stop; end if
         ret = '(' + str(n) + '(1x, i' + str(len(str(huge(x))) + 1) + '))'
      end function get_column_format_stringIntegerDim0KindINT16
      ! '(256(1x, i11))'
      function get_column_format_stringIntegerDim0KindINT32(x, n) result(ret)
         Integer(kind=INT32), intent(in):: x
         Integer, intent(in):: n
         Character(len=:), allocatable:: ret
         if(.not.(n >= 1))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1379, (".not.(n >= 1)"); error stop; end if
         ret = '(' + str(n) + '(1x, i' + str(len(str(huge(x))) + 1) + '))'
      end function get_column_format_stringIntegerDim0KindINT32
      ! '(256(1x, i11))'
      function get_column_format_stringIntegerDim0KindINT64(x, n) result(ret)
         Integer(kind=INT64), intent(in):: x
         Integer, intent(in):: n
         Character(len=:), allocatable:: ret
         if(.not.(n >= 1))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1388, (".not.(n >= 1)"); error stop; end if
         ret = '(' + str(n) + '(1x, i' + str(len(str(huge(x))) + 1) + '))'
      end function get_column_format_stringIntegerDim0KindINT64
      ! '(256(1x, es13.7))'
      function get_column_format_stringRealDim0KindREAL32(x, n) result(ret)
         Integer, parameter:: PADDING_FOR_ES = 6
         Integer, parameter:: MORE_PREC = 1
         Real(kind=REAL32), intent(in):: x
         Integer, intent(in):: n
         Character(len=:), allocatable:: ret
         Integer:: prec
         if(.not.(n >= 1))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1404, (".not.(n >= 1)"); error stop; end if
         prec = precision(x) + MORE_PREC
         ret = '(' + str(n) + '(1x, es' + str(prec + PADDING_FOR_ES) + '.' + str(prec) + '))'
      end function get_column_format_stringRealDim0KindREAL32
      ! '(256(1x, es13.7))'
      function get_column_format_stringRealDim0KindREAL64(x, n) result(ret)
         Integer, parameter:: PADDING_FOR_ES = 6
         Integer, parameter:: MORE_PREC = 1
         Real(kind=REAL64), intent(in):: x
         Integer, intent(in):: n
         Character(len=:), allocatable:: ret
         Integer:: prec
         if(.not.(n >= 1))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1421, (".not.(n >= 1)"); error stop; end if
         prec = precision(x) + MORE_PREC
         ret = '(' + str(n) + '(1x, es' + str(prec + PADDING_FOR_ES) + '.' + str(prec) + '))'
      end function get_column_format_stringRealDim0KindREAL64
      ! '(256(1x, es13.7))'
      function get_column_format_stringRealDim0KindREAL128(x, n) result(ret)
         Integer, parameter:: PADDING_FOR_ES = 6
         Integer, parameter:: MORE_PREC = 1
         Real(kind=REAL128), intent(in):: x
         Integer, intent(in):: n
         Character(len=:), allocatable:: ret
         Integer:: prec
         if(.not.(n >= 1))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1438, (".not.(n >= 1)"); error stop; end if
         prec = precision(x) + MORE_PREC
         ret = '(' + str(n) + '(1x, es' + str(prec + PADDING_FOR_ES) + '.' + str(prec) + '))'
      end function get_column_format_stringRealDim0KindREAL128
      ! '(256(1x, "(", es13.7, ",", es13.7, ")"))'
      function get_column_format_stringComplexDim0KindREAL32(x, n) result(ret)
         Integer, parameter:: PADDING_FOR_ES = 6
         Integer, parameter:: MORE_PREC = 1
         Complex(kind=REAL32), intent(in):: x
         Integer, intent(in):: n
         Character(len=:), allocatable:: ret
         Integer:: prec
         if(.not.(n >= 1))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1456, (".not.(n >= 1)"); error stop; end if
         prec = precision(x) + MORE_PREC
         ret = '(' + str(n) + '(1x, "(", es' + str(prec + PADDING_FOR_ES) + '.' + str(prec) + ', ",", es' + str(prec + PADDING_FOR_ES) + '.' + str(prec) + ', ")"))'
      end function get_column_format_stringComplexDim0KindREAL32
      ! '(256(1x, "(", es13.7, ",", es13.7, ")"))'
      function get_column_format_stringComplexDim0KindREAL64(x, n) result(ret)
         Integer, parameter:: PADDING_FOR_ES = 6
         Integer, parameter:: MORE_PREC = 1
         Complex(kind=REAL64), intent(in):: x
         Integer, intent(in):: n
         Character(len=:), allocatable:: ret
         Integer:: prec
         if(.not.(n >= 1))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1473, (".not.(n >= 1)"); error stop; end if
         prec = precision(x) + MORE_PREC
         ret = '(' + str(n) + '(1x, "(", es' + str(prec + PADDING_FOR_ES) + '.' + str(prec) + ', ",", es' + str(prec + PADDING_FOR_ES) + '.' + str(prec) + ', ")"))'
      end function get_column_format_stringComplexDim0KindREAL64
      ! '(256(1x, "(", es13.7, ",", es13.7, ")"))'
      function get_column_format_stringComplexDim0KindREAL128(x, n) result(ret)
         Integer, parameter:: PADDING_FOR_ES = 6
         Integer, parameter:: MORE_PREC = 1
         Complex(kind=REAL128), intent(in):: x
         Integer, intent(in):: n
         Character(len=:), allocatable:: ret
         Integer:: prec
         if(.not.(n >= 1))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1490, (".not.(n >= 1)"); error stop; end if
         prec = precision(x) + MORE_PREC
         ret = '(' + str(n) + '(1x, "(", es' + str(prec + PADDING_FOR_ES) + '.' + str(prec) + ', ",", es' + str(prec + PADDING_FOR_ES) + '.' + str(prec) + ', ")"))'
      end function get_column_format_stringComplexDim0KindREAL128
   function sh(cmd) result(isSuccess)
      Character(len = *), intent(in):: cmd
      Logical:: isSuccess
      Integer:: exitStatus
      call execute_command_line(trim(cmd), exitstat = exitStatus)
      isSuccess = (exitStatus == 0)
   end function sh
   subroutine mktemp(io, suffixMin, form, file, suffix)
      Character(len = *), parameter:: PREFIX = '/tmp/io_lib_mktemp.'
      Integer, intent(out):: io
      Integer(kind = INT64), intent(in), optional:: suffixMin
      Character(len = *), intent(in), optional:: form
      Character(len = *), intent(out), optional:: file
      Integer(kind = kind(suffixMin)), intent(out), optional:: suffix
      Integer(kind = kind(suffixMin)):: suffix_, suffixMin_
      Integer:: openStatus
      Character(len = len(PREFIX) + ceiling(log10(real(huge(suffix_))))):: file_
      Character(len = max(len('unformatted'), len('formatted'))):: form_
      form_ = 'formatted'
      if(present(form))then
         if(.not.(form == 'formatted' .or. form == 'unformatted'))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1526, (".not.(form == 'formatted' .or. form == 'unformatted')"); error stop; end if
         form_ = form
      end if
      suffixMin_ = 0
      if(present(suffixMin)) suffixMin_ = suffixMin
      do suffix_ = suffixMin_, huge(suffix)
         file_ = PREFIX + str(suffix_)
         open(newunit = io, file = trim(file_), status = 'new', action = 'readwrite', form = trim(form_), iostat = openStatus)
         if(openStatus == 0)then
            if(.not.(sh('chmod og-rwx ' + trim(file_))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1536, (".not.(sh('chmod og-rwx ' + trim(file_)))"); error stop; end if
            if(present(file))then
               if(.not.(len_trim(file_) <= len(file)))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1539, (".not.(len_trim(file_) <= len(file))"); error stop; end if
               file = file_
            end if
            if(present(suffix)) suffix = suffix_
            return
         end if
      end do
      write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1548, ('Could not create temp file'); error stop
   end subroutine mktemp
   ! @desc Return a size 2 array which contains (/numberOfLines, numberOfColumns/) of the file fileName.
   function file_shape(fileName, numberOfHeaders) result(answer)
      integer(8):: answer(1:2)
      character(len = *), intent(in):: fileName
      integer, intent(in), optional:: numberOfHeaders
      integer:: numberOfHeaders_
      numberOfHeaders_ = 0
      if(present(numberOfHeaders)) numberOfHeaders_ = numberOfHeaders
      answer = (/get_line_number(fileName) - numberOfHeaders_, number_of_columns(fileName, numberOfHeaders_)/)
   end function file_shape
   function get_line_number(path) result(ret)
      Integer(kind=INT64):: ret
      character(len=*), intent(in):: path
      integer:: io, ios
      character:: trash
      open(newunit=io, file=path, status='old', action='read')
      ret = 0
      do
         read(io, *, iostat=ios) trash
         if(ios /= 0) exit
         if(.not.(ret < huge(ret)))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1577, (".not.(ret < huge(ret))"); error stop; end if
         ret = ret + 1
      end do
      close(io)
   end function get_line_number
   ! @desc Return number of columns at line (numberOfHeaders + 1) in file fileName.
   ! @desc The line is separated by space and tabs character.
   ! @desc Quoted string containing space/tab characteres is not considared.
   function number_of_columns(fileName, numberOfHeaders) result(answer)
      integer(8):: answer
      character(len = *), intent(in):: fileName
      integer, intent(in), optional:: numberOfHeaders
      enum, bind(c)
         enumerator:: SEEK_NORMAL_CHAR, SEEK_SEPARATOR
      end enum
      character, parameter:: SEPARATORS(1:2) = [' ', TAB]
      integer:: rU1, ios, i, mode
      character:: c
      integer:: numberOfHeaders_
      numberOfHeaders_ = 0
      if(present(numberOfHeaders)) numberOfHeaders_ = numberOfHeaders
      mode = SEEK_NORMAL_CHAR
      answer = 0
      open(newunit = rU1, file = fileName, status = 'old', action = 'read', delim = 'quote')
      do i = 1, numberOfHeaders_
         read(rU1, *)
      end do
      do
         read(rU1, '(a1)', advance = 'no', iostat = ios) c
         if((.not.(ios == 0)) .or. c == new_line('_')) exit
         select case(mode)
         case(SEEK_SEPARATOR)
            if((any((SEPARATORS) == (c)))) mode = SEEK_NORMAL_CHAR
         case(SEEK_NORMAL_CHAR)
            if(.not.(any((SEPARATORS) == (c))))then
               if(.not.(answer <= huge(answer) - 1))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1620, (".not.(answer <= huge(answer) - 1)"); error stop; end if
               answer = answer + 1
               mode = SEEK_SEPARATOR
            end if
         end select
      end do
      close(rU1)
   end function number_of_columns
   function load_array_version(arrayDir) result(version_)
      Character(len=*), intent(in):: arrayDir
      Integer:: version_
      Integer:: io
      open(newunit=io, file=s(arrayDir) + '/' + ARRAY_VERSION_FILE, status='old', action='read')
      read(io, *) version_
      close(io)
   end function load_array_version
   subroutine load_array_meta(self, arrayDir)
      type(ArrayMeta), intent(inout):: self
      Character(len=*), intent(in):: arrayDir
      Integer:: version_
      version_ = load_array_version(trim(arrayDir))
      select case(version_)
      case(2)
         call load_array_meta_v_2(self, trim(arrayDir))
      case default
         write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1650, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
      end select
   end subroutine load_array_meta
   subroutine load_array_meta_v_2(self, arrayDir)
      type(ArrayMeta), intent(inout):: self
      Character(len=*), intent(in):: arrayDir
      Integer:: io
      Integer:: dim
      open(newunit=io, file=s(arrayDir) + '/' + ARRAY_META_FILE_V_2, status='old', action='read')
      if(.not.(get_config_value(io, 'dataType', self%dataType)))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1662, (".not.(get_config_value(io, 'dataType', self%dataType))"); error stop; end if
      if(.not.(get_config_value(io, 'dim', self%dim)))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1663, (".not.(get_config_value(io, 'dim', self%dim))"); error stop; end if
      if(allocated(self%sizes)) deallocate(self%sizes)
      allocate(self%sizes(1:self%dim))
      do dim = lbound(self%sizes, dim=1, kind=kind(dim)), ubound(self%sizes, dim=1, kind=kind(dim))
         if(.not.(get_config_value(io, 'sizes(' + str(dim) + ')', self%sizes(dim))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1667, (".not.(get_config_value(io, 'sizes(' + str(dim) + ')', self%sizes(dim)))"); error stop; end if
      end do
      close(io)
   end subroutine load_array_meta_v_2
      subroutine dump_arrayLogicalDim1(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical, dimension(:), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim1'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1685, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayLogicalDim1
      subroutine load_arrayLogicalDim1(self, arrayDir)
         Logical, dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1732, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim1
      subroutine load_array_v_2LogicalDim1(self, arrayDir)
         Logical, dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim1'
         integer, parameter:: DIM_FOR_SELF = 1
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1747, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1748, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim1
      subroutine load_array_v_1LogicalDim1(self, arrayDir)
         Logical, dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim1'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1772, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1773, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim1
      subroutine dump_arrayLogicalDim2(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical, dimension(:, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim2'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1796, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayLogicalDim2
      subroutine load_arrayLogicalDim2(self, arrayDir)
         Logical, dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1844, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim2
      subroutine load_array_v_2LogicalDim2(self, arrayDir)
         Logical, dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim2'
         integer, parameter:: DIM_FOR_SELF = 2
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1859, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1860, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim2
      subroutine load_array_v_1LogicalDim2(self, arrayDir)
         Logical, dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim2'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1884, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1885, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim2
      subroutine dump_arrayLogicalDim3(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical, dimension(:, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim3'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1908, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayLogicalDim3
      subroutine load_arrayLogicalDim3(self, arrayDir)
         Logical, dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1957, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim3
      subroutine load_array_v_2LogicalDim3(self, arrayDir)
         Logical, dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim3'
         integer, parameter:: DIM_FOR_SELF = 3
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1972, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1973, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim3
      subroutine load_array_v_1LogicalDim3(self, arrayDir)
         Logical, dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim3'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1997, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 1998, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim3
      subroutine dump_arrayLogicalDim4(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical, dimension(:, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim4'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2021, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayLogicalDim4
      subroutine load_arrayLogicalDim4(self, arrayDir)
         Logical, dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2071, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim4
      subroutine load_array_v_2LogicalDim4(self, arrayDir)
         Logical, dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim4'
         integer, parameter:: DIM_FOR_SELF = 4
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2086, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2087, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim4
      subroutine load_array_v_1LogicalDim4(self, arrayDir)
         Logical, dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim4'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2111, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2112, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim4
      subroutine dump_arrayLogicalDim5(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical, dimension(:, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim5'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2135, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayLogicalDim5
      subroutine load_arrayLogicalDim5(self, arrayDir)
         Logical, dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2186, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim5
      subroutine load_array_v_2LogicalDim5(self, arrayDir)
         Logical, dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim5'
         integer, parameter:: DIM_FOR_SELF = 5
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2201, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2202, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim5
      subroutine load_array_v_1LogicalDim5(self, arrayDir)
         Logical, dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim5'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2226, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2227, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim5
      subroutine dump_arrayLogicalDim6(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical, dimension(:, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim6'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2250, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayLogicalDim6
      subroutine load_arrayLogicalDim6(self, arrayDir)
         Logical, dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2302, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim6
      subroutine load_array_v_2LogicalDim6(self, arrayDir)
         Logical, dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim6'
         integer, parameter:: DIM_FOR_SELF = 6
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2317, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2318, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim6
      subroutine load_array_v_1LogicalDim6(self, arrayDir)
         Logical, dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim6'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2342, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2343, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim6
      subroutine dump_arrayLogicalDim7(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical, dimension(:, :, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim7'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2366, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
           write(wU1, *, delim='none') "sizes(7)", ' ', sizes(7)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayLogicalDim7
      subroutine load_arrayLogicalDim7(self, arrayDir)
         Logical, dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2419, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim7
      subroutine load_array_v_2LogicalDim7(self, arrayDir)
         Logical, dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim7'
         integer, parameter:: DIM_FOR_SELF = 7
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2434, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2435, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim7
      subroutine load_array_v_1LogicalDim7(self, arrayDir)
         Logical, dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim7'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2459, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2460, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim7
      subroutine dump_arrayIntegerDim1KindINT8(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT8), dimension(:), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim1KindINT8'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2483, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim1KindINT8
      subroutine load_arrayIntegerDim1KindINT8(self, arrayDir)
         Integer(kind=INT8), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2530, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim1KindINT8
      subroutine load_array_v_2IntegerDim1KindINT8(self, arrayDir)
         Integer(kind=INT8), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim1KindINT8'
         integer, parameter:: DIM_FOR_SELF = 1
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2545, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2546, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim1KindINT8
      subroutine load_array_v_1IntegerDim1KindINT8(self, arrayDir)
         Integer(kind=INT8), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim1KindINT8'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2570, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2571, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim1KindINT8
      subroutine dump_arrayIntegerDim1KindINT16(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT16), dimension(:), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim1KindINT16'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2594, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim1KindINT16
      subroutine load_arrayIntegerDim1KindINT16(self, arrayDir)
         Integer(kind=INT16), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2641, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim1KindINT16
      subroutine load_array_v_2IntegerDim1KindINT16(self, arrayDir)
         Integer(kind=INT16), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim1KindINT16'
         integer, parameter:: DIM_FOR_SELF = 1
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2656, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2657, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim1KindINT16
      subroutine load_array_v_1IntegerDim1KindINT16(self, arrayDir)
         Integer(kind=INT16), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim1KindINT16'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2681, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2682, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim1KindINT16
      subroutine dump_arrayIntegerDim1KindINT32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT32), dimension(:), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim1KindINT32'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2705, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim1KindINT32
      subroutine load_arrayIntegerDim1KindINT32(self, arrayDir)
         Integer(kind=INT32), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2752, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim1KindINT32
      subroutine load_array_v_2IntegerDim1KindINT32(self, arrayDir)
         Integer(kind=INT32), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim1KindINT32'
         integer, parameter:: DIM_FOR_SELF = 1
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2767, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2768, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim1KindINT32
      subroutine load_array_v_1IntegerDim1KindINT32(self, arrayDir)
         Integer(kind=INT32), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim1KindINT32'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2792, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2793, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim1KindINT32
      subroutine dump_arrayIntegerDim1KindINT64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT64), dimension(:), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim1KindINT64'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2816, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim1KindINT64
      subroutine load_arrayIntegerDim1KindINT64(self, arrayDir)
         Integer(kind=INT64), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2863, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim1KindINT64
      subroutine load_array_v_2IntegerDim1KindINT64(self, arrayDir)
         Integer(kind=INT64), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim1KindINT64'
         integer, parameter:: DIM_FOR_SELF = 1
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2878, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2879, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim1KindINT64
      subroutine load_array_v_1IntegerDim1KindINT64(self, arrayDir)
         Integer(kind=INT64), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim1KindINT64'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2903, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2904, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim1KindINT64
      subroutine dump_arrayIntegerDim2KindINT8(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT8), dimension(:, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim2KindINT8'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2927, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim2KindINT8
      subroutine load_arrayIntegerDim2KindINT8(self, arrayDir)
         Integer(kind=INT8), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2975, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim2KindINT8
      subroutine load_array_v_2IntegerDim2KindINT8(self, arrayDir)
         Integer(kind=INT8), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim2KindINT8'
         integer, parameter:: DIM_FOR_SELF = 2
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2990, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2991, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim2KindINT8
      subroutine load_array_v_1IntegerDim2KindINT8(self, arrayDir)
         Integer(kind=INT8), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim2KindINT8'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3015, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3016, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim2KindINT8
      subroutine dump_arrayIntegerDim2KindINT16(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT16), dimension(:, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim2KindINT16'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3039, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim2KindINT16
      subroutine load_arrayIntegerDim2KindINT16(self, arrayDir)
         Integer(kind=INT16), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3087, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim2KindINT16
      subroutine load_array_v_2IntegerDim2KindINT16(self, arrayDir)
         Integer(kind=INT16), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim2KindINT16'
         integer, parameter:: DIM_FOR_SELF = 2
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3102, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3103, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim2KindINT16
      subroutine load_array_v_1IntegerDim2KindINT16(self, arrayDir)
         Integer(kind=INT16), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim2KindINT16'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3127, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3128, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim2KindINT16
      subroutine dump_arrayIntegerDim2KindINT32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT32), dimension(:, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim2KindINT32'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3151, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim2KindINT32
      subroutine load_arrayIntegerDim2KindINT32(self, arrayDir)
         Integer(kind=INT32), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3199, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim2KindINT32
      subroutine load_array_v_2IntegerDim2KindINT32(self, arrayDir)
         Integer(kind=INT32), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim2KindINT32'
         integer, parameter:: DIM_FOR_SELF = 2
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3214, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3215, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim2KindINT32
      subroutine load_array_v_1IntegerDim2KindINT32(self, arrayDir)
         Integer(kind=INT32), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim2KindINT32'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3239, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3240, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim2KindINT32
      subroutine dump_arrayIntegerDim2KindINT64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT64), dimension(:, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim2KindINT64'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3263, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim2KindINT64
      subroutine load_arrayIntegerDim2KindINT64(self, arrayDir)
         Integer(kind=INT64), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3311, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim2KindINT64
      subroutine load_array_v_2IntegerDim2KindINT64(self, arrayDir)
         Integer(kind=INT64), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim2KindINT64'
         integer, parameter:: DIM_FOR_SELF = 2
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3326, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3327, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim2KindINT64
      subroutine load_array_v_1IntegerDim2KindINT64(self, arrayDir)
         Integer(kind=INT64), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim2KindINT64'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3351, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3352, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim2KindINT64
      subroutine dump_arrayIntegerDim3KindINT8(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT8), dimension(:, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim3KindINT8'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3375, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim3KindINT8
      subroutine load_arrayIntegerDim3KindINT8(self, arrayDir)
         Integer(kind=INT8), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3424, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim3KindINT8
      subroutine load_array_v_2IntegerDim3KindINT8(self, arrayDir)
         Integer(kind=INT8), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim3KindINT8'
         integer, parameter:: DIM_FOR_SELF = 3
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3439, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3440, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim3KindINT8
      subroutine load_array_v_1IntegerDim3KindINT8(self, arrayDir)
         Integer(kind=INT8), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim3KindINT8'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3464, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3465, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim3KindINT8
      subroutine dump_arrayIntegerDim3KindINT16(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT16), dimension(:, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim3KindINT16'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3488, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim3KindINT16
      subroutine load_arrayIntegerDim3KindINT16(self, arrayDir)
         Integer(kind=INT16), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3537, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim3KindINT16
      subroutine load_array_v_2IntegerDim3KindINT16(self, arrayDir)
         Integer(kind=INT16), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim3KindINT16'
         integer, parameter:: DIM_FOR_SELF = 3
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3552, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3553, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim3KindINT16
      subroutine load_array_v_1IntegerDim3KindINT16(self, arrayDir)
         Integer(kind=INT16), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim3KindINT16'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3577, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3578, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim3KindINT16
      subroutine dump_arrayIntegerDim3KindINT32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT32), dimension(:, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim3KindINT32'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3601, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim3KindINT32
      subroutine load_arrayIntegerDim3KindINT32(self, arrayDir)
         Integer(kind=INT32), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3650, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim3KindINT32
      subroutine load_array_v_2IntegerDim3KindINT32(self, arrayDir)
         Integer(kind=INT32), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim3KindINT32'
         integer, parameter:: DIM_FOR_SELF = 3
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3665, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3666, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim3KindINT32
      subroutine load_array_v_1IntegerDim3KindINT32(self, arrayDir)
         Integer(kind=INT32), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim3KindINT32'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3690, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3691, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim3KindINT32
      subroutine dump_arrayIntegerDim3KindINT64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT64), dimension(:, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim3KindINT64'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3714, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim3KindINT64
      subroutine load_arrayIntegerDim3KindINT64(self, arrayDir)
         Integer(kind=INT64), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3763, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim3KindINT64
      subroutine load_array_v_2IntegerDim3KindINT64(self, arrayDir)
         Integer(kind=INT64), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim3KindINT64'
         integer, parameter:: DIM_FOR_SELF = 3
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3778, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3779, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim3KindINT64
      subroutine load_array_v_1IntegerDim3KindINT64(self, arrayDir)
         Integer(kind=INT64), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim3KindINT64'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3803, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3804, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim3KindINT64
      subroutine dump_arrayIntegerDim4KindINT8(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT8), dimension(:, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim4KindINT8'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3827, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim4KindINT8
      subroutine load_arrayIntegerDim4KindINT8(self, arrayDir)
         Integer(kind=INT8), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3877, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim4KindINT8
      subroutine load_array_v_2IntegerDim4KindINT8(self, arrayDir)
         Integer(kind=INT8), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim4KindINT8'
         integer, parameter:: DIM_FOR_SELF = 4
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3892, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3893, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim4KindINT8
      subroutine load_array_v_1IntegerDim4KindINT8(self, arrayDir)
         Integer(kind=INT8), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim4KindINT8'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3917, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3918, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim4KindINT8
      subroutine dump_arrayIntegerDim4KindINT16(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT16), dimension(:, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim4KindINT16'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3941, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim4KindINT16
      subroutine load_arrayIntegerDim4KindINT16(self, arrayDir)
         Integer(kind=INT16), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3991, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim4KindINT16
      subroutine load_array_v_2IntegerDim4KindINT16(self, arrayDir)
         Integer(kind=INT16), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim4KindINT16'
         integer, parameter:: DIM_FOR_SELF = 4
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4006, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4007, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim4KindINT16
      subroutine load_array_v_1IntegerDim4KindINT16(self, arrayDir)
         Integer(kind=INT16), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim4KindINT16'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4031, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4032, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim4KindINT16
      subroutine dump_arrayIntegerDim4KindINT32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT32), dimension(:, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim4KindINT32'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4055, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim4KindINT32
      subroutine load_arrayIntegerDim4KindINT32(self, arrayDir)
         Integer(kind=INT32), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4105, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim4KindINT32
      subroutine load_array_v_2IntegerDim4KindINT32(self, arrayDir)
         Integer(kind=INT32), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim4KindINT32'
         integer, parameter:: DIM_FOR_SELF = 4
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4120, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4121, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim4KindINT32
      subroutine load_array_v_1IntegerDim4KindINT32(self, arrayDir)
         Integer(kind=INT32), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim4KindINT32'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4145, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4146, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim4KindINT32
      subroutine dump_arrayIntegerDim4KindINT64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT64), dimension(:, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim4KindINT64'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4169, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim4KindINT64
      subroutine load_arrayIntegerDim4KindINT64(self, arrayDir)
         Integer(kind=INT64), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4219, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim4KindINT64
      subroutine load_array_v_2IntegerDim4KindINT64(self, arrayDir)
         Integer(kind=INT64), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim4KindINT64'
         integer, parameter:: DIM_FOR_SELF = 4
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4234, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4235, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim4KindINT64
      subroutine load_array_v_1IntegerDim4KindINT64(self, arrayDir)
         Integer(kind=INT64), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim4KindINT64'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4259, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4260, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim4KindINT64
      subroutine dump_arrayIntegerDim5KindINT8(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT8), dimension(:, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim5KindINT8'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4283, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim5KindINT8
      subroutine load_arrayIntegerDim5KindINT8(self, arrayDir)
         Integer(kind=INT8), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4334, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim5KindINT8
      subroutine load_array_v_2IntegerDim5KindINT8(self, arrayDir)
         Integer(kind=INT8), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim5KindINT8'
         integer, parameter:: DIM_FOR_SELF = 5
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4349, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4350, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim5KindINT8
      subroutine load_array_v_1IntegerDim5KindINT8(self, arrayDir)
         Integer(kind=INT8), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim5KindINT8'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4374, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4375, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim5KindINT8
      subroutine dump_arrayIntegerDim5KindINT16(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT16), dimension(:, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim5KindINT16'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4398, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim5KindINT16
      subroutine load_arrayIntegerDim5KindINT16(self, arrayDir)
         Integer(kind=INT16), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4449, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim5KindINT16
      subroutine load_array_v_2IntegerDim5KindINT16(self, arrayDir)
         Integer(kind=INT16), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim5KindINT16'
         integer, parameter:: DIM_FOR_SELF = 5
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4464, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4465, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim5KindINT16
      subroutine load_array_v_1IntegerDim5KindINT16(self, arrayDir)
         Integer(kind=INT16), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim5KindINT16'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4489, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4490, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim5KindINT16
      subroutine dump_arrayIntegerDim5KindINT32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT32), dimension(:, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim5KindINT32'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4513, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim5KindINT32
      subroutine load_arrayIntegerDim5KindINT32(self, arrayDir)
         Integer(kind=INT32), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4564, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim5KindINT32
      subroutine load_array_v_2IntegerDim5KindINT32(self, arrayDir)
         Integer(kind=INT32), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim5KindINT32'
         integer, parameter:: DIM_FOR_SELF = 5
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4579, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4580, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim5KindINT32
      subroutine load_array_v_1IntegerDim5KindINT32(self, arrayDir)
         Integer(kind=INT32), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim5KindINT32'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4604, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4605, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim5KindINT32
      subroutine dump_arrayIntegerDim5KindINT64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT64), dimension(:, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim5KindINT64'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4628, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim5KindINT64
      subroutine load_arrayIntegerDim5KindINT64(self, arrayDir)
         Integer(kind=INT64), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4679, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim5KindINT64
      subroutine load_array_v_2IntegerDim5KindINT64(self, arrayDir)
         Integer(kind=INT64), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim5KindINT64'
         integer, parameter:: DIM_FOR_SELF = 5
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4694, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4695, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim5KindINT64
      subroutine load_array_v_1IntegerDim5KindINT64(self, arrayDir)
         Integer(kind=INT64), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim5KindINT64'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4719, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4720, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim5KindINT64
      subroutine dump_arrayIntegerDim6KindINT8(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT8), dimension(:, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim6KindINT8'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4743, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim6KindINT8
      subroutine load_arrayIntegerDim6KindINT8(self, arrayDir)
         Integer(kind=INT8), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4795, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim6KindINT8
      subroutine load_array_v_2IntegerDim6KindINT8(self, arrayDir)
         Integer(kind=INT8), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim6KindINT8'
         integer, parameter:: DIM_FOR_SELF = 6
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4810, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4811, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim6KindINT8
      subroutine load_array_v_1IntegerDim6KindINT8(self, arrayDir)
         Integer(kind=INT8), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim6KindINT8'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4835, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4836, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim6KindINT8
      subroutine dump_arrayIntegerDim6KindINT16(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT16), dimension(:, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim6KindINT16'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4859, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim6KindINT16
      subroutine load_arrayIntegerDim6KindINT16(self, arrayDir)
         Integer(kind=INT16), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4911, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim6KindINT16
      subroutine load_array_v_2IntegerDim6KindINT16(self, arrayDir)
         Integer(kind=INT16), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim6KindINT16'
         integer, parameter:: DIM_FOR_SELF = 6
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4926, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4927, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim6KindINT16
      subroutine load_array_v_1IntegerDim6KindINT16(self, arrayDir)
         Integer(kind=INT16), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim6KindINT16'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4951, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4952, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim6KindINT16
      subroutine dump_arrayIntegerDim6KindINT32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT32), dimension(:, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim6KindINT32'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4975, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim6KindINT32
      subroutine load_arrayIntegerDim6KindINT32(self, arrayDir)
         Integer(kind=INT32), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5027, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim6KindINT32
      subroutine load_array_v_2IntegerDim6KindINT32(self, arrayDir)
         Integer(kind=INT32), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim6KindINT32'
         integer, parameter:: DIM_FOR_SELF = 6
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5042, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5043, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim6KindINT32
      subroutine load_array_v_1IntegerDim6KindINT32(self, arrayDir)
         Integer(kind=INT32), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim6KindINT32'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5067, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5068, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim6KindINT32
      subroutine dump_arrayIntegerDim6KindINT64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT64), dimension(:, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim6KindINT64'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5091, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim6KindINT64
      subroutine load_arrayIntegerDim6KindINT64(self, arrayDir)
         Integer(kind=INT64), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5143, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim6KindINT64
      subroutine load_array_v_2IntegerDim6KindINT64(self, arrayDir)
         Integer(kind=INT64), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim6KindINT64'
         integer, parameter:: DIM_FOR_SELF = 6
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5158, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5159, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim6KindINT64
      subroutine load_array_v_1IntegerDim6KindINT64(self, arrayDir)
         Integer(kind=INT64), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim6KindINT64'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5183, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5184, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim6KindINT64
      subroutine dump_arrayIntegerDim7KindINT8(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT8), dimension(:, :, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim7KindINT8'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5207, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
           write(wU1, *, delim='none') "sizes(7)", ' ', sizes(7)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim7KindINT8
      subroutine load_arrayIntegerDim7KindINT8(self, arrayDir)
         Integer(kind=INT8), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5260, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim7KindINT8
      subroutine load_array_v_2IntegerDim7KindINT8(self, arrayDir)
         Integer(kind=INT8), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim7KindINT8'
         integer, parameter:: DIM_FOR_SELF = 7
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5275, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5276, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim7KindINT8
      subroutine load_array_v_1IntegerDim7KindINT8(self, arrayDir)
         Integer(kind=INT8), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim7KindINT8'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5300, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5301, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim7KindINT8
      subroutine dump_arrayIntegerDim7KindINT16(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT16), dimension(:, :, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim7KindINT16'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5324, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
           write(wU1, *, delim='none') "sizes(7)", ' ', sizes(7)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim7KindINT16
      subroutine load_arrayIntegerDim7KindINT16(self, arrayDir)
         Integer(kind=INT16), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5377, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim7KindINT16
      subroutine load_array_v_2IntegerDim7KindINT16(self, arrayDir)
         Integer(kind=INT16), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim7KindINT16'
         integer, parameter:: DIM_FOR_SELF = 7
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5392, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5393, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim7KindINT16
      subroutine load_array_v_1IntegerDim7KindINT16(self, arrayDir)
         Integer(kind=INT16), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim7KindINT16'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5417, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5418, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim7KindINT16
      subroutine dump_arrayIntegerDim7KindINT32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT32), dimension(:, :, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim7KindINT32'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5441, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
           write(wU1, *, delim='none') "sizes(7)", ' ', sizes(7)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim7KindINT32
      subroutine load_arrayIntegerDim7KindINT32(self, arrayDir)
         Integer(kind=INT32), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5494, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim7KindINT32
      subroutine load_array_v_2IntegerDim7KindINT32(self, arrayDir)
         Integer(kind=INT32), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim7KindINT32'
         integer, parameter:: DIM_FOR_SELF = 7
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5509, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5510, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim7KindINT32
      subroutine load_array_v_1IntegerDim7KindINT32(self, arrayDir)
         Integer(kind=INT32), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim7KindINT32'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5534, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5535, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim7KindINT32
      subroutine dump_arrayIntegerDim7KindINT64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Integer(kind=INT64), dimension(:, :, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim7KindINT64'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5558, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
           write(wU1, *, delim='none') "sizes(7)", ' ', sizes(7)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayIntegerDim7KindINT64
      subroutine load_arrayIntegerDim7KindINT64(self, arrayDir)
         Integer(kind=INT64), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5611, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayIntegerDim7KindINT64
      subroutine load_array_v_2IntegerDim7KindINT64(self, arrayDir)
         Integer(kind=INT64), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim7KindINT64'
         integer, parameter:: DIM_FOR_SELF = 7
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5626, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5627, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2IntegerDim7KindINT64
      subroutine load_array_v_1IntegerDim7KindINT64(self, arrayDir)
         Integer(kind=INT64), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim7KindINT64'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5651, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5652, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1IntegerDim7KindINT64
      subroutine dump_arrayRealDim1KindREAL32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Real(kind=REAL32), dimension(:), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim1KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5675, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayRealDim1KindREAL32
      subroutine load_arrayRealDim1KindREAL32(self, arrayDir)
         Real(kind=REAL32), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5722, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayRealDim1KindREAL32
      subroutine load_array_v_2RealDim1KindREAL32(self, arrayDir)
         Real(kind=REAL32), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim1KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 1
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5737, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5738, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2RealDim1KindREAL32
      subroutine load_array_v_1RealDim1KindREAL32(self, arrayDir)
         Real(kind=REAL32), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim1KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5762, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5763, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1RealDim1KindREAL32
      subroutine dump_arrayRealDim1KindREAL64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Real(kind=REAL64), dimension(:), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim1KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5786, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayRealDim1KindREAL64
      subroutine load_arrayRealDim1KindREAL64(self, arrayDir)
         Real(kind=REAL64), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5833, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayRealDim1KindREAL64
      subroutine load_array_v_2RealDim1KindREAL64(self, arrayDir)
         Real(kind=REAL64), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim1KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 1
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5848, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5849, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2RealDim1KindREAL64
      subroutine load_array_v_1RealDim1KindREAL64(self, arrayDir)
         Real(kind=REAL64), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim1KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5873, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5874, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1RealDim1KindREAL64
      subroutine dump_arrayRealDim1KindREAL128(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Real(kind=REAL128), dimension(:), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim1KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5897, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayRealDim1KindREAL128
      subroutine load_arrayRealDim1KindREAL128(self, arrayDir)
         Real(kind=REAL128), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5944, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayRealDim1KindREAL128
      subroutine load_array_v_2RealDim1KindREAL128(self, arrayDir)
         Real(kind=REAL128), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim1KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 1
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5959, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5960, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2RealDim1KindREAL128
      subroutine load_array_v_1RealDim1KindREAL128(self, arrayDir)
         Real(kind=REAL128), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim1KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5984, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5985, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1RealDim1KindREAL128
      subroutine dump_arrayRealDim2KindREAL32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Real(kind=REAL32), dimension(:, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim2KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6008, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayRealDim2KindREAL32
      subroutine load_arrayRealDim2KindREAL32(self, arrayDir)
         Real(kind=REAL32), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6056, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayRealDim2KindREAL32
      subroutine load_array_v_2RealDim2KindREAL32(self, arrayDir)
         Real(kind=REAL32), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim2KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 2
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6071, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6072, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2RealDim2KindREAL32
      subroutine load_array_v_1RealDim2KindREAL32(self, arrayDir)
         Real(kind=REAL32), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim2KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6096, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6097, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1RealDim2KindREAL32
      subroutine dump_arrayRealDim2KindREAL64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Real(kind=REAL64), dimension(:, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim2KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6120, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayRealDim2KindREAL64
      subroutine load_arrayRealDim2KindREAL64(self, arrayDir)
         Real(kind=REAL64), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6168, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayRealDim2KindREAL64
      subroutine load_array_v_2RealDim2KindREAL64(self, arrayDir)
         Real(kind=REAL64), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim2KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 2
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6183, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6184, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2RealDim2KindREAL64
      subroutine load_array_v_1RealDim2KindREAL64(self, arrayDir)
         Real(kind=REAL64), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim2KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6208, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6209, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1RealDim2KindREAL64
      subroutine dump_arrayRealDim2KindREAL128(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Real(kind=REAL128), dimension(:, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim2KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6232, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayRealDim2KindREAL128
      subroutine load_arrayRealDim2KindREAL128(self, arrayDir)
         Real(kind=REAL128), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6280, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayRealDim2KindREAL128
      subroutine load_array_v_2RealDim2KindREAL128(self, arrayDir)
         Real(kind=REAL128), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim2KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 2
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6295, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6296, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2RealDim2KindREAL128
      subroutine load_array_v_1RealDim2KindREAL128(self, arrayDir)
         Real(kind=REAL128), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim2KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6320, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6321, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1RealDim2KindREAL128
      subroutine dump_arrayRealDim3KindREAL32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Real(kind=REAL32), dimension(:, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim3KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6344, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayRealDim3KindREAL32
      subroutine load_arrayRealDim3KindREAL32(self, arrayDir)
         Real(kind=REAL32), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6393, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayRealDim3KindREAL32
      subroutine load_array_v_2RealDim3KindREAL32(self, arrayDir)
         Real(kind=REAL32), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim3KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 3
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6408, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6409, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2RealDim3KindREAL32
      subroutine load_array_v_1RealDim3KindREAL32(self, arrayDir)
         Real(kind=REAL32), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim3KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6433, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6434, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1RealDim3KindREAL32
      subroutine dump_arrayRealDim3KindREAL64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Real(kind=REAL64), dimension(:, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim3KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6457, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayRealDim3KindREAL64
      subroutine load_arrayRealDim3KindREAL64(self, arrayDir)
         Real(kind=REAL64), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6506, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayRealDim3KindREAL64
      subroutine load_array_v_2RealDim3KindREAL64(self, arrayDir)
         Real(kind=REAL64), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim3KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 3
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6521, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6522, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2RealDim3KindREAL64
      subroutine load_array_v_1RealDim3KindREAL64(self, arrayDir)
         Real(kind=REAL64), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim3KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6546, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6547, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1RealDim3KindREAL64
      subroutine dump_arrayRealDim3KindREAL128(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Real(kind=REAL128), dimension(:, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim3KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6570, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayRealDim3KindREAL128
      subroutine load_arrayRealDim3KindREAL128(self, arrayDir)
         Real(kind=REAL128), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6619, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayRealDim3KindREAL128
      subroutine load_array_v_2RealDim3KindREAL128(self, arrayDir)
         Real(kind=REAL128), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim3KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 3
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6634, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6635, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2RealDim3KindREAL128
      subroutine load_array_v_1RealDim3KindREAL128(self, arrayDir)
         Real(kind=REAL128), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim3KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6659, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6660, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1RealDim3KindREAL128
      subroutine dump_arrayRealDim4KindREAL32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Real(kind=REAL32), dimension(:, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim4KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6683, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayRealDim4KindREAL32
      subroutine load_arrayRealDim4KindREAL32(self, arrayDir)
         Real(kind=REAL32), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6733, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayRealDim4KindREAL32
      subroutine load_array_v_2RealDim4KindREAL32(self, arrayDir)
         Real(kind=REAL32), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim4KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 4
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6748, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6749, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2RealDim4KindREAL32
      subroutine load_array_v_1RealDim4KindREAL32(self, arrayDir)
         Real(kind=REAL32), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim4KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6773, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6774, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1RealDim4KindREAL32
      subroutine dump_arrayRealDim4KindREAL64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Real(kind=REAL64), dimension(:, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim4KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6797, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayRealDim4KindREAL64
      subroutine load_arrayRealDim4KindREAL64(self, arrayDir)
         Real(kind=REAL64), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6847, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayRealDim4KindREAL64
      subroutine load_array_v_2RealDim4KindREAL64(self, arrayDir)
         Real(kind=REAL64), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim4KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 4
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6862, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6863, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2RealDim4KindREAL64
      subroutine load_array_v_1RealDim4KindREAL64(self, arrayDir)
         Real(kind=REAL64), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim4KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6887, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6888, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1RealDim4KindREAL64
      subroutine dump_arrayRealDim4KindREAL128(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Real(kind=REAL128), dimension(:, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim4KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6911, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayRealDim4KindREAL128
      subroutine load_arrayRealDim4KindREAL128(self, arrayDir)
         Real(kind=REAL128), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6961, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayRealDim4KindREAL128
      subroutine load_array_v_2RealDim4KindREAL128(self, arrayDir)
         Real(kind=REAL128), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim4KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 4
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6976, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6977, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2RealDim4KindREAL128
      subroutine load_array_v_1RealDim4KindREAL128(self, arrayDir)
         Real(kind=REAL128), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim4KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7001, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7002, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1RealDim4KindREAL128
      subroutine dump_arrayRealDim5KindREAL32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Real(kind=REAL32), dimension(:, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim5KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7025, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayRealDim5KindREAL32
      subroutine load_arrayRealDim5KindREAL32(self, arrayDir)
         Real(kind=REAL32), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7076, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayRealDim5KindREAL32
      subroutine load_array_v_2RealDim5KindREAL32(self, arrayDir)
         Real(kind=REAL32), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim5KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 5
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7091, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7092, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2RealDim5KindREAL32
      subroutine load_array_v_1RealDim5KindREAL32(self, arrayDir)
         Real(kind=REAL32), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim5KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7116, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7117, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1RealDim5KindREAL32
      subroutine dump_arrayRealDim5KindREAL64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Real(kind=REAL64), dimension(:, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim5KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7140, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayRealDim5KindREAL64
      subroutine load_arrayRealDim5KindREAL64(self, arrayDir)
         Real(kind=REAL64), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7191, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayRealDim5KindREAL64
      subroutine load_array_v_2RealDim5KindREAL64(self, arrayDir)
         Real(kind=REAL64), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim5KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 5
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7206, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7207, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2RealDim5KindREAL64
      subroutine load_array_v_1RealDim5KindREAL64(self, arrayDir)
         Real(kind=REAL64), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim5KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7231, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7232, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1RealDim5KindREAL64
      subroutine dump_arrayRealDim5KindREAL128(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Real(kind=REAL128), dimension(:, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim5KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7255, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayRealDim5KindREAL128
      subroutine load_arrayRealDim5KindREAL128(self, arrayDir)
         Real(kind=REAL128), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7306, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayRealDim5KindREAL128
      subroutine load_array_v_2RealDim5KindREAL128(self, arrayDir)
         Real(kind=REAL128), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim5KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 5
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7321, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7322, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2RealDim5KindREAL128
      subroutine load_array_v_1RealDim5KindREAL128(self, arrayDir)
         Real(kind=REAL128), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim5KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7346, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7347, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1RealDim5KindREAL128
      subroutine dump_arrayRealDim6KindREAL32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Real(kind=REAL32), dimension(:, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim6KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7370, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayRealDim6KindREAL32
      subroutine load_arrayRealDim6KindREAL32(self, arrayDir)
         Real(kind=REAL32), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7422, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayRealDim6KindREAL32
      subroutine load_array_v_2RealDim6KindREAL32(self, arrayDir)
         Real(kind=REAL32), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim6KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 6
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7437, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7438, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2RealDim6KindREAL32
      subroutine load_array_v_1RealDim6KindREAL32(self, arrayDir)
         Real(kind=REAL32), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim6KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7462, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7463, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1RealDim6KindREAL32
      subroutine dump_arrayRealDim6KindREAL64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Real(kind=REAL64), dimension(:, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim6KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7486, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayRealDim6KindREAL64
      subroutine load_arrayRealDim6KindREAL64(self, arrayDir)
         Real(kind=REAL64), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7538, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayRealDim6KindREAL64
      subroutine load_array_v_2RealDim6KindREAL64(self, arrayDir)
         Real(kind=REAL64), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim6KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 6
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7553, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7554, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2RealDim6KindREAL64
      subroutine load_array_v_1RealDim6KindREAL64(self, arrayDir)
         Real(kind=REAL64), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim6KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7578, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7579, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1RealDim6KindREAL64
      subroutine dump_arrayRealDim6KindREAL128(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Real(kind=REAL128), dimension(:, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim6KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7602, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayRealDim6KindREAL128
      subroutine load_arrayRealDim6KindREAL128(self, arrayDir)
         Real(kind=REAL128), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7654, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayRealDim6KindREAL128
      subroutine load_array_v_2RealDim6KindREAL128(self, arrayDir)
         Real(kind=REAL128), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim6KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 6
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7669, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7670, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2RealDim6KindREAL128
      subroutine load_array_v_1RealDim6KindREAL128(self, arrayDir)
         Real(kind=REAL128), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim6KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7694, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7695, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1RealDim6KindREAL128
      subroutine dump_arrayRealDim7KindREAL32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Real(kind=REAL32), dimension(:, :, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim7KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7718, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
           write(wU1, *, delim='none') "sizes(7)", ' ', sizes(7)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayRealDim7KindREAL32
      subroutine load_arrayRealDim7KindREAL32(self, arrayDir)
         Real(kind=REAL32), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7771, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayRealDim7KindREAL32
      subroutine load_array_v_2RealDim7KindREAL32(self, arrayDir)
         Real(kind=REAL32), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim7KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 7
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7786, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7787, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2RealDim7KindREAL32
      subroutine load_array_v_1RealDim7KindREAL32(self, arrayDir)
         Real(kind=REAL32), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim7KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7811, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7812, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1RealDim7KindREAL32
      subroutine dump_arrayRealDim7KindREAL64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Real(kind=REAL64), dimension(:, :, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim7KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7835, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
           write(wU1, *, delim='none') "sizes(7)", ' ', sizes(7)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayRealDim7KindREAL64
      subroutine load_arrayRealDim7KindREAL64(self, arrayDir)
         Real(kind=REAL64), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7888, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayRealDim7KindREAL64
      subroutine load_array_v_2RealDim7KindREAL64(self, arrayDir)
         Real(kind=REAL64), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim7KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 7
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7903, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7904, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2RealDim7KindREAL64
      subroutine load_array_v_1RealDim7KindREAL64(self, arrayDir)
         Real(kind=REAL64), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim7KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7928, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7929, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1RealDim7KindREAL64
      subroutine dump_arrayRealDim7KindREAL128(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Real(kind=REAL128), dimension(:, :, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim7KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7952, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
           write(wU1, *, delim='none') "sizes(7)", ' ', sizes(7)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayRealDim7KindREAL128
      subroutine load_arrayRealDim7KindREAL128(self, arrayDir)
         Real(kind=REAL128), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8005, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayRealDim7KindREAL128
      subroutine load_array_v_2RealDim7KindREAL128(self, arrayDir)
         Real(kind=REAL128), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim7KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 7
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8020, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8021, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2RealDim7KindREAL128
      subroutine load_array_v_1RealDim7KindREAL128(self, arrayDir)
         Real(kind=REAL128), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim7KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8045, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8046, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1RealDim7KindREAL128
      subroutine dump_arrayComplexDim1KindREAL32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Complex(kind=REAL32), dimension(:), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim1KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8069, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayComplexDim1KindREAL32
      subroutine load_arrayComplexDim1KindREAL32(self, arrayDir)
         Complex(kind=REAL32), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8116, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayComplexDim1KindREAL32
      subroutine load_array_v_2ComplexDim1KindREAL32(self, arrayDir)
         Complex(kind=REAL32), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim1KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 1
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8131, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8132, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2ComplexDim1KindREAL32
      subroutine load_array_v_1ComplexDim1KindREAL32(self, arrayDir)
         Complex(kind=REAL32), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim1KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8156, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8157, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1ComplexDim1KindREAL32
      subroutine dump_arrayComplexDim1KindREAL64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Complex(kind=REAL64), dimension(:), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim1KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8180, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayComplexDim1KindREAL64
      subroutine load_arrayComplexDim1KindREAL64(self, arrayDir)
         Complex(kind=REAL64), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8227, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayComplexDim1KindREAL64
      subroutine load_array_v_2ComplexDim1KindREAL64(self, arrayDir)
         Complex(kind=REAL64), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim1KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 1
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8242, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8243, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2ComplexDim1KindREAL64
      subroutine load_array_v_1ComplexDim1KindREAL64(self, arrayDir)
         Complex(kind=REAL64), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim1KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8267, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8268, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1ComplexDim1KindREAL64
      subroutine dump_arrayComplexDim1KindREAL128(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Complex(kind=REAL128), dimension(:), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim1KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8291, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayComplexDim1KindREAL128
      subroutine load_arrayComplexDim1KindREAL128(self, arrayDir)
         Complex(kind=REAL128), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8338, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayComplexDim1KindREAL128
      subroutine load_array_v_2ComplexDim1KindREAL128(self, arrayDir)
         Complex(kind=REAL128), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim1KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 1
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8353, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8354, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2ComplexDim1KindREAL128
      subroutine load_array_v_1ComplexDim1KindREAL128(self, arrayDir)
         Complex(kind=REAL128), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim1KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8378, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8379, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1ComplexDim1KindREAL128
      subroutine dump_arrayComplexDim2KindREAL32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Complex(kind=REAL32), dimension(:, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim2KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8402, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayComplexDim2KindREAL32
      subroutine load_arrayComplexDim2KindREAL32(self, arrayDir)
         Complex(kind=REAL32), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8450, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayComplexDim2KindREAL32
      subroutine load_array_v_2ComplexDim2KindREAL32(self, arrayDir)
         Complex(kind=REAL32), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim2KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 2
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8465, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8466, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2ComplexDim2KindREAL32
      subroutine load_array_v_1ComplexDim2KindREAL32(self, arrayDir)
         Complex(kind=REAL32), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim2KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8490, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8491, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1ComplexDim2KindREAL32
      subroutine dump_arrayComplexDim2KindREAL64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Complex(kind=REAL64), dimension(:, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim2KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8514, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayComplexDim2KindREAL64
      subroutine load_arrayComplexDim2KindREAL64(self, arrayDir)
         Complex(kind=REAL64), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8562, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayComplexDim2KindREAL64
      subroutine load_array_v_2ComplexDim2KindREAL64(self, arrayDir)
         Complex(kind=REAL64), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim2KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 2
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8577, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8578, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2ComplexDim2KindREAL64
      subroutine load_array_v_1ComplexDim2KindREAL64(self, arrayDir)
         Complex(kind=REAL64), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim2KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8602, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8603, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1ComplexDim2KindREAL64
      subroutine dump_arrayComplexDim2KindREAL128(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Complex(kind=REAL128), dimension(:, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim2KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8626, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayComplexDim2KindREAL128
      subroutine load_arrayComplexDim2KindREAL128(self, arrayDir)
         Complex(kind=REAL128), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8674, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayComplexDim2KindREAL128
      subroutine load_array_v_2ComplexDim2KindREAL128(self, arrayDir)
         Complex(kind=REAL128), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim2KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 2
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8689, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8690, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2ComplexDim2KindREAL128
      subroutine load_array_v_1ComplexDim2KindREAL128(self, arrayDir)
         Complex(kind=REAL128), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim2KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8714, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8715, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1ComplexDim2KindREAL128
      subroutine dump_arrayComplexDim3KindREAL32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Complex(kind=REAL32), dimension(:, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim3KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8738, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayComplexDim3KindREAL32
      subroutine load_arrayComplexDim3KindREAL32(self, arrayDir)
         Complex(kind=REAL32), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8787, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayComplexDim3KindREAL32
      subroutine load_array_v_2ComplexDim3KindREAL32(self, arrayDir)
         Complex(kind=REAL32), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim3KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 3
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8802, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8803, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2ComplexDim3KindREAL32
      subroutine load_array_v_1ComplexDim3KindREAL32(self, arrayDir)
         Complex(kind=REAL32), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim3KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8827, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8828, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1ComplexDim3KindREAL32
      subroutine dump_arrayComplexDim3KindREAL64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Complex(kind=REAL64), dimension(:, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim3KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8851, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayComplexDim3KindREAL64
      subroutine load_arrayComplexDim3KindREAL64(self, arrayDir)
         Complex(kind=REAL64), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8900, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayComplexDim3KindREAL64
      subroutine load_array_v_2ComplexDim3KindREAL64(self, arrayDir)
         Complex(kind=REAL64), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim3KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 3
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8915, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8916, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2ComplexDim3KindREAL64
      subroutine load_array_v_1ComplexDim3KindREAL64(self, arrayDir)
         Complex(kind=REAL64), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim3KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8940, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8941, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1ComplexDim3KindREAL64
      subroutine dump_arrayComplexDim3KindREAL128(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Complex(kind=REAL128), dimension(:, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim3KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8964, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayComplexDim3KindREAL128
      subroutine load_arrayComplexDim3KindREAL128(self, arrayDir)
         Complex(kind=REAL128), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9013, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayComplexDim3KindREAL128
      subroutine load_array_v_2ComplexDim3KindREAL128(self, arrayDir)
         Complex(kind=REAL128), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim3KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 3
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9028, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9029, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2ComplexDim3KindREAL128
      subroutine load_array_v_1ComplexDim3KindREAL128(self, arrayDir)
         Complex(kind=REAL128), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim3KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9053, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9054, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1ComplexDim3KindREAL128
      subroutine dump_arrayComplexDim4KindREAL32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Complex(kind=REAL32), dimension(:, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim4KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9077, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayComplexDim4KindREAL32
      subroutine load_arrayComplexDim4KindREAL32(self, arrayDir)
         Complex(kind=REAL32), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9127, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayComplexDim4KindREAL32
      subroutine load_array_v_2ComplexDim4KindREAL32(self, arrayDir)
         Complex(kind=REAL32), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim4KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 4
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9142, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9143, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2ComplexDim4KindREAL32
      subroutine load_array_v_1ComplexDim4KindREAL32(self, arrayDir)
         Complex(kind=REAL32), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim4KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9167, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9168, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1ComplexDim4KindREAL32
      subroutine dump_arrayComplexDim4KindREAL64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Complex(kind=REAL64), dimension(:, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim4KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9191, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayComplexDim4KindREAL64
      subroutine load_arrayComplexDim4KindREAL64(self, arrayDir)
         Complex(kind=REAL64), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9241, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayComplexDim4KindREAL64
      subroutine load_array_v_2ComplexDim4KindREAL64(self, arrayDir)
         Complex(kind=REAL64), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim4KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 4
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9256, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9257, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2ComplexDim4KindREAL64
      subroutine load_array_v_1ComplexDim4KindREAL64(self, arrayDir)
         Complex(kind=REAL64), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim4KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9281, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9282, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1ComplexDim4KindREAL64
      subroutine dump_arrayComplexDim4KindREAL128(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Complex(kind=REAL128), dimension(:, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim4KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9305, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayComplexDim4KindREAL128
      subroutine load_arrayComplexDim4KindREAL128(self, arrayDir)
         Complex(kind=REAL128), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9355, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayComplexDim4KindREAL128
      subroutine load_array_v_2ComplexDim4KindREAL128(self, arrayDir)
         Complex(kind=REAL128), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim4KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 4
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9370, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9371, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2ComplexDim4KindREAL128
      subroutine load_array_v_1ComplexDim4KindREAL128(self, arrayDir)
         Complex(kind=REAL128), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim4KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9395, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9396, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1ComplexDim4KindREAL128
      subroutine dump_arrayComplexDim5KindREAL32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Complex(kind=REAL32), dimension(:, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim5KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9419, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayComplexDim5KindREAL32
      subroutine load_arrayComplexDim5KindREAL32(self, arrayDir)
         Complex(kind=REAL32), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9470, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayComplexDim5KindREAL32
      subroutine load_array_v_2ComplexDim5KindREAL32(self, arrayDir)
         Complex(kind=REAL32), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim5KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 5
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9485, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9486, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2ComplexDim5KindREAL32
      subroutine load_array_v_1ComplexDim5KindREAL32(self, arrayDir)
         Complex(kind=REAL32), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim5KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9510, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9511, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1ComplexDim5KindREAL32
      subroutine dump_arrayComplexDim5KindREAL64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Complex(kind=REAL64), dimension(:, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim5KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9534, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayComplexDim5KindREAL64
      subroutine load_arrayComplexDim5KindREAL64(self, arrayDir)
         Complex(kind=REAL64), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9585, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayComplexDim5KindREAL64
      subroutine load_array_v_2ComplexDim5KindREAL64(self, arrayDir)
         Complex(kind=REAL64), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim5KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 5
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9600, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9601, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2ComplexDim5KindREAL64
      subroutine load_array_v_1ComplexDim5KindREAL64(self, arrayDir)
         Complex(kind=REAL64), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim5KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9625, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9626, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1ComplexDim5KindREAL64
      subroutine dump_arrayComplexDim5KindREAL128(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Complex(kind=REAL128), dimension(:, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim5KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9649, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayComplexDim5KindREAL128
      subroutine load_arrayComplexDim5KindREAL128(self, arrayDir)
         Complex(kind=REAL128), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9700, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayComplexDim5KindREAL128
      subroutine load_array_v_2ComplexDim5KindREAL128(self, arrayDir)
         Complex(kind=REAL128), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim5KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 5
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9715, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9716, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2ComplexDim5KindREAL128
      subroutine load_array_v_1ComplexDim5KindREAL128(self, arrayDir)
         Complex(kind=REAL128), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim5KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9740, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9741, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1ComplexDim5KindREAL128
      subroutine dump_arrayComplexDim6KindREAL32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Complex(kind=REAL32), dimension(:, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim6KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9764, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayComplexDim6KindREAL32
      subroutine load_arrayComplexDim6KindREAL32(self, arrayDir)
         Complex(kind=REAL32), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9816, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayComplexDim6KindREAL32
      subroutine load_array_v_2ComplexDim6KindREAL32(self, arrayDir)
         Complex(kind=REAL32), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim6KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 6
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9831, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9832, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2ComplexDim6KindREAL32
      subroutine load_array_v_1ComplexDim6KindREAL32(self, arrayDir)
         Complex(kind=REAL32), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim6KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9856, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9857, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1ComplexDim6KindREAL32
      subroutine dump_arrayComplexDim6KindREAL64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Complex(kind=REAL64), dimension(:, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim6KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9880, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayComplexDim6KindREAL64
      subroutine load_arrayComplexDim6KindREAL64(self, arrayDir)
         Complex(kind=REAL64), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9932, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayComplexDim6KindREAL64
      subroutine load_array_v_2ComplexDim6KindREAL64(self, arrayDir)
         Complex(kind=REAL64), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim6KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 6
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9947, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9948, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2ComplexDim6KindREAL64
      subroutine load_array_v_1ComplexDim6KindREAL64(self, arrayDir)
         Complex(kind=REAL64), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim6KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9972, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9973, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1ComplexDim6KindREAL64
      subroutine dump_arrayComplexDim6KindREAL128(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Complex(kind=REAL128), dimension(:, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim6KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9996, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayComplexDim6KindREAL128
      subroutine load_arrayComplexDim6KindREAL128(self, arrayDir)
         Complex(kind=REAL128), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10048, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayComplexDim6KindREAL128
      subroutine load_array_v_2ComplexDim6KindREAL128(self, arrayDir)
         Complex(kind=REAL128), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim6KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 6
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10063, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10064, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2ComplexDim6KindREAL128
      subroutine load_array_v_1ComplexDim6KindREAL128(self, arrayDir)
         Complex(kind=REAL128), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim6KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10088, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10089, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1ComplexDim6KindREAL128
      subroutine dump_arrayComplexDim7KindREAL32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Complex(kind=REAL32), dimension(:, :, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim7KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10112, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
           write(wU1, *, delim='none') "sizes(7)", ' ', sizes(7)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayComplexDim7KindREAL32
      subroutine load_arrayComplexDim7KindREAL32(self, arrayDir)
         Complex(kind=REAL32), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10165, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayComplexDim7KindREAL32
      subroutine load_array_v_2ComplexDim7KindREAL32(self, arrayDir)
         Complex(kind=REAL32), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim7KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 7
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10180, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10181, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2ComplexDim7KindREAL32
      subroutine load_array_v_1ComplexDim7KindREAL32(self, arrayDir)
         Complex(kind=REAL32), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim7KindREAL32'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10205, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10206, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1ComplexDim7KindREAL32
      subroutine dump_arrayComplexDim7KindREAL64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Complex(kind=REAL64), dimension(:, :, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim7KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10229, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
           write(wU1, *, delim='none') "sizes(7)", ' ', sizes(7)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayComplexDim7KindREAL64
      subroutine load_arrayComplexDim7KindREAL64(self, arrayDir)
         Complex(kind=REAL64), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10282, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayComplexDim7KindREAL64
      subroutine load_array_v_2ComplexDim7KindREAL64(self, arrayDir)
         Complex(kind=REAL64), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim7KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 7
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10297, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10298, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2ComplexDim7KindREAL64
      subroutine load_array_v_1ComplexDim7KindREAL64(self, arrayDir)
         Complex(kind=REAL64), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim7KindREAL64'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10322, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10323, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1ComplexDim7KindREAL64
      subroutine dump_arrayComplexDim7KindREAL128(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Complex(kind=REAL128), dimension(:, :, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim7KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10346, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
           write(wU1, *, delim='none') "sizes(7)", ' ', sizes(7)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayComplexDim7KindREAL128
      subroutine load_arrayComplexDim7KindREAL128(self, arrayDir)
         Complex(kind=REAL128), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10399, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayComplexDim7KindREAL128
      subroutine load_array_v_2ComplexDim7KindREAL128(self, arrayDir)
         Complex(kind=REAL128), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim7KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 7
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10414, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10415, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2ComplexDim7KindREAL128
      subroutine load_array_v_1ComplexDim7KindREAL128(self, arrayDir)
         Complex(kind=REAL128), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim7KindREAL128'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10439, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10440, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1ComplexDim7KindREAL128
      subroutine dump_arrayCharacterDim1LenAsterisk(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), dimension(:), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim1LenAsterisk'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10463, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayCharacterDim1LenAsterisk
      subroutine load_arrayCharacterDim1LenAsterisk(self, arrayDir)
         Character(len=*), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10510, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayCharacterDim1LenAsterisk
      subroutine load_array_v_2CharacterDim1LenAsterisk(self, arrayDir)
         Character(len=*), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim1LenAsterisk'
         integer, parameter:: DIM_FOR_SELF = 1
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10525, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10526, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2CharacterDim1LenAsterisk
      subroutine load_array_v_1CharacterDim1LenAsterisk(self, arrayDir)
         Character(len=*), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim1LenAsterisk'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10550, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10551, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1CharacterDim1LenAsterisk
      subroutine dump_arrayCharacterDim2LenAsterisk(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), dimension(:, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim2LenAsterisk'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10574, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayCharacterDim2LenAsterisk
      subroutine load_arrayCharacterDim2LenAsterisk(self, arrayDir)
         Character(len=*), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10622, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayCharacterDim2LenAsterisk
      subroutine load_array_v_2CharacterDim2LenAsterisk(self, arrayDir)
         Character(len=*), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim2LenAsterisk'
         integer, parameter:: DIM_FOR_SELF = 2
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10637, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10638, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2CharacterDim2LenAsterisk
      subroutine load_array_v_1CharacterDim2LenAsterisk(self, arrayDir)
         Character(len=*), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim2LenAsterisk'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10662, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10663, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1CharacterDim2LenAsterisk
      subroutine dump_arrayCharacterDim3LenAsterisk(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), dimension(:, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim3LenAsterisk'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10686, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayCharacterDim3LenAsterisk
      subroutine load_arrayCharacterDim3LenAsterisk(self, arrayDir)
         Character(len=*), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10735, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayCharacterDim3LenAsterisk
      subroutine load_array_v_2CharacterDim3LenAsterisk(self, arrayDir)
         Character(len=*), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim3LenAsterisk'
         integer, parameter:: DIM_FOR_SELF = 3
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10750, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10751, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2CharacterDim3LenAsterisk
      subroutine load_array_v_1CharacterDim3LenAsterisk(self, arrayDir)
         Character(len=*), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim3LenAsterisk'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10775, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10776, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1CharacterDim3LenAsterisk
      subroutine dump_arrayCharacterDim4LenAsterisk(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), dimension(:, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim4LenAsterisk'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10799, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayCharacterDim4LenAsterisk
      subroutine load_arrayCharacterDim4LenAsterisk(self, arrayDir)
         Character(len=*), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10849, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayCharacterDim4LenAsterisk
      subroutine load_array_v_2CharacterDim4LenAsterisk(self, arrayDir)
         Character(len=*), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim4LenAsterisk'
         integer, parameter:: DIM_FOR_SELF = 4
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10864, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10865, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2CharacterDim4LenAsterisk
      subroutine load_array_v_1CharacterDim4LenAsterisk(self, arrayDir)
         Character(len=*), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim4LenAsterisk'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10889, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10890, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1CharacterDim4LenAsterisk
      subroutine dump_arrayCharacterDim5LenAsterisk(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), dimension(:, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim5LenAsterisk'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10913, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayCharacterDim5LenAsterisk
      subroutine load_arrayCharacterDim5LenAsterisk(self, arrayDir)
         Character(len=*), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10964, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayCharacterDim5LenAsterisk
      subroutine load_array_v_2CharacterDim5LenAsterisk(self, arrayDir)
         Character(len=*), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim5LenAsterisk'
         integer, parameter:: DIM_FOR_SELF = 5
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10979, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10980, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2CharacterDim5LenAsterisk
      subroutine load_array_v_1CharacterDim5LenAsterisk(self, arrayDir)
         Character(len=*), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim5LenAsterisk'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11004, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11005, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1CharacterDim5LenAsterisk
      subroutine dump_arrayCharacterDim6LenAsterisk(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), dimension(:, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim6LenAsterisk'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11028, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayCharacterDim6LenAsterisk
      subroutine load_arrayCharacterDim6LenAsterisk(self, arrayDir)
         Character(len=*), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11080, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayCharacterDim6LenAsterisk
      subroutine load_array_v_2CharacterDim6LenAsterisk(self, arrayDir)
         Character(len=*), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim6LenAsterisk'
         integer, parameter:: DIM_FOR_SELF = 6
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11095, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11096, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2CharacterDim6LenAsterisk
      subroutine load_array_v_1CharacterDim6LenAsterisk(self, arrayDir)
         Character(len=*), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim6LenAsterisk'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11120, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11121, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1CharacterDim6LenAsterisk
      subroutine dump_arrayCharacterDim7LenAsterisk(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Character(len=*), dimension(:, :, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim7LenAsterisk'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11144, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
         write(wU1, *) VERSION
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
         write(wU1) self
         close(wU1)
         dataType = DATA_TYPE_FOR_SELF
         dim = DIM_FOR_SELF
         sizes = shape(self)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write')
         write(wU1, *, delim='none') "dim", ' ', dim
         write(wU1, *, delim='none') "dataType", ' ', dataType
           write(wU1, *, delim='none') "sizes(1)", ' ', sizes(1)
           write(wU1, *, delim='none') "sizes(2)", ' ', sizes(2)
           write(wU1, *, delim='none') "sizes(3)", ' ', sizes(3)
           write(wU1, *, delim='none') "sizes(4)", ' ', sizes(4)
           write(wU1, *, delim='none') "sizes(5)", ' ', sizes(5)
           write(wU1, *, delim='none') "sizes(6)", ' ', sizes(6)
           write(wU1, *, delim='none') "sizes(7)", ' ', sizes(7)
         close(wU1)
         open(newunit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
            if(present(desc1)) write(wU1, *) desc1
            if(present(desc2)) write(wU1, *) desc2
            if(present(desc3)) write(wU1, *) desc3
            if(present(desc4)) write(wU1, *) desc4
            if(present(desc5)) write(wU1, *) desc5
            if(present(desc6)) write(wU1, *) desc6
            if(present(desc7)) write(wU1, *) desc7
            if(present(desc8)) write(wU1, *) desc8
            if(present(desc9)) write(wU1, *) desc9
            if(present(desc10)) write(wU1, *) desc10
         close(wU1)
      end subroutine dump_arrayCharacterDim7LenAsterisk
      subroutine load_arrayCharacterDim7LenAsterisk(self, arrayDir)
         Character(len=*), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11197, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayCharacterDim7LenAsterisk
      subroutine load_array_v_2CharacterDim7LenAsterisk(self, arrayDir)
         Character(len=*), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim7LenAsterisk'
         integer, parameter:: DIM_FOR_SELF = 7
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11212, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11213, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2CharacterDim7LenAsterisk
      subroutine load_array_v_1CharacterDim7LenAsterisk(self, arrayDir)
         Character(len=*), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim7LenAsterisk'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11237, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11238, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1CharacterDim7LenAsterisk
end module io_lib
