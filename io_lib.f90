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
         module procedure get_column_format_stringT106T110
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT106T111
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT106T112
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT106T113
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT107T110
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT107T111
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT107T112
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT107T113
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT108T110
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT108T111
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT108T112
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT108T113
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT109T110
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT109T111
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT109T112
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT109T113
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT110T110
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT110T111
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT110T112
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT110T113
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT111T110
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT111T111
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT111T112
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT111T113
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT112T110
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT112T111
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT112T112
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT112T113
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT113T110
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT113T111
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT113T112
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT113T113
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT114T110
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT114T111
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT114T112
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT114T113
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT115T110
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT115T111
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT115T112
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT115T113
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT116T110
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT116T111
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT116T112
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT116T113
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT117T110
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT117T111
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT117T112
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT117T113
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT118T110
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT118T111
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT118T112
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT118T113
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT119T110
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT119T111
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT119T112
      end interface get_column_format_string
      interface get_column_format_string
         module procedure get_column_format_stringT119T113
      end interface get_column_format_string
   interface load_meta
      module procedure load_array_meta
   end interface load_meta
   interface load_version
      module procedure load_array_version
   end interface load_version
      interface dump
         module procedure dump_arrayLogicalDim1KindINT8
      end interface dump
      interface load
         module procedure load_arrayLogicalDim1KindINT8
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim1KindINT8
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim1KindINT8
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim1KindINT16
      end interface dump
      interface load
         module procedure load_arrayLogicalDim1KindINT16
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim1KindINT16
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim1KindINT16
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim1KindINT32
      end interface dump
      interface load
         module procedure load_arrayLogicalDim1KindINT32
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim1KindINT32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim1KindINT32
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim1KindINT64
      end interface dump
      interface load
         module procedure load_arrayLogicalDim1KindINT64
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim1KindINT64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim1KindINT64
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim2KindINT8
      end interface dump
      interface load
         module procedure load_arrayLogicalDim2KindINT8
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim2KindINT8
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim2KindINT8
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim2KindINT16
      end interface dump
      interface load
         module procedure load_arrayLogicalDim2KindINT16
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim2KindINT16
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim2KindINT16
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim2KindINT32
      end interface dump
      interface load
         module procedure load_arrayLogicalDim2KindINT32
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim2KindINT32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim2KindINT32
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim2KindINT64
      end interface dump
      interface load
         module procedure load_arrayLogicalDim2KindINT64
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim2KindINT64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim2KindINT64
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim3KindINT8
      end interface dump
      interface load
         module procedure load_arrayLogicalDim3KindINT8
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim3KindINT8
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim3KindINT8
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim3KindINT16
      end interface dump
      interface load
         module procedure load_arrayLogicalDim3KindINT16
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim3KindINT16
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim3KindINT16
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim3KindINT32
      end interface dump
      interface load
         module procedure load_arrayLogicalDim3KindINT32
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim3KindINT32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim3KindINT32
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim3KindINT64
      end interface dump
      interface load
         module procedure load_arrayLogicalDim3KindINT64
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim3KindINT64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim3KindINT64
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim4KindINT8
      end interface dump
      interface load
         module procedure load_arrayLogicalDim4KindINT8
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim4KindINT8
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim4KindINT8
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim4KindINT16
      end interface dump
      interface load
         module procedure load_arrayLogicalDim4KindINT16
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim4KindINT16
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim4KindINT16
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim4KindINT32
      end interface dump
      interface load
         module procedure load_arrayLogicalDim4KindINT32
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim4KindINT32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim4KindINT32
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim4KindINT64
      end interface dump
      interface load
         module procedure load_arrayLogicalDim4KindINT64
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim4KindINT64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim4KindINT64
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim5KindINT8
      end interface dump
      interface load
         module procedure load_arrayLogicalDim5KindINT8
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim5KindINT8
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim5KindINT8
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim5KindINT16
      end interface dump
      interface load
         module procedure load_arrayLogicalDim5KindINT16
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim5KindINT16
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim5KindINT16
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim5KindINT32
      end interface dump
      interface load
         module procedure load_arrayLogicalDim5KindINT32
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim5KindINT32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim5KindINT32
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim5KindINT64
      end interface dump
      interface load
         module procedure load_arrayLogicalDim5KindINT64
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim5KindINT64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim5KindINT64
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim6KindINT8
      end interface dump
      interface load
         module procedure load_arrayLogicalDim6KindINT8
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim6KindINT8
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim6KindINT8
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim6KindINT16
      end interface dump
      interface load
         module procedure load_arrayLogicalDim6KindINT16
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim6KindINT16
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim6KindINT16
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim6KindINT32
      end interface dump
      interface load
         module procedure load_arrayLogicalDim6KindINT32
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim6KindINT32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim6KindINT32
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim6KindINT64
      end interface dump
      interface load
         module procedure load_arrayLogicalDim6KindINT64
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim6KindINT64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim6KindINT64
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim7KindINT8
      end interface dump
      interface load
         module procedure load_arrayLogicalDim7KindINT8
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim7KindINT8
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim7KindINT8
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim7KindINT16
      end interface dump
      interface load
         module procedure load_arrayLogicalDim7KindINT16
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim7KindINT16
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim7KindINT16
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim7KindINT32
      end interface dump
      interface load
         module procedure load_arrayLogicalDim7KindINT32
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim7KindINT32
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim7KindINT32
      end interface load_v_1
      interface dump
         module procedure dump_arrayLogicalDim7KindINT64
      end interface dump
      interface load
         module procedure load_arrayLogicalDim7KindINT64
      end interface load
      interface load_v_2
         module procedure load_array_v_2LogicalDim7KindINT64
      end interface load_v_2
      interface load_v_1
         module procedure load_array_v_1LogicalDim7KindINT64
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
         function get_column_format_stringT106T110(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Logical(kind=INT8), intent(in):: x
            Integer(kind=INT8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT106T110
         function get_column_format_stringT107T110(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Logical(kind=INT16), intent(in):: x
            Integer(kind=INT8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT107T110
         function get_column_format_stringT108T110(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Logical(kind=INT32), intent(in):: x
            Integer(kind=INT8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT108T110
         function get_column_format_stringT109T110(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Logical(kind=INT64), intent(in):: x
            Integer(kind=INT8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT109T110
         function get_column_format_stringT110T110(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Integer(kind=INT8), intent(in):: x
            Integer(kind=INT8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT110T110
         function get_column_format_stringT111T110(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Integer(kind=INT16), intent(in):: x
            Integer(kind=INT8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT111T110
         function get_column_format_stringT112T110(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Integer(kind=INT32), intent(in):: x
            Integer(kind=INT8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT112T110
         function get_column_format_stringT113T110(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Integer(kind=INT64), intent(in):: x
            Integer(kind=INT8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT113T110
         function get_column_format_stringT114T110(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Real(kind=REAL32), intent(in):: x
            Integer(kind=INT8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT114T110
         function get_column_format_stringT115T110(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Real(kind=REAL64), intent(in):: x
            Integer(kind=INT8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT115T110
         function get_column_format_stringT116T110(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Real(kind=REAL128), intent(in):: x
            Integer(kind=INT8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT116T110
      ! `get_column_format_string` is used to produce re-readable complex output.
      ! number of columns should explicitly be given since unlimited format gives an extra parenthesis ` (` at the end.
         function get_column_format_stringT117T110(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *("	", "(", g0, ", ", g0, ")"))'
            Complex(kind=REAL32), intent(in):: x
            Integer(kind=INT8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT117T110
         function get_column_format_stringT118T110(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *("	", "(", g0, ", ", g0, ")"))'
            Complex(kind=REAL64), intent(in):: x
            Integer(kind=INT8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT118T110
         function get_column_format_stringT119T110(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *("	", "(", g0, ", ", g0, ")"))'
            Complex(kind=REAL128), intent(in):: x
            Integer(kind=INT8), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT119T110
         function get_column_format_stringT106T111(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Logical(kind=INT8), intent(in):: x
            Integer(kind=INT16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT106T111
         function get_column_format_stringT107T111(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Logical(kind=INT16), intent(in):: x
            Integer(kind=INT16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT107T111
         function get_column_format_stringT108T111(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Logical(kind=INT32), intent(in):: x
            Integer(kind=INT16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT108T111
         function get_column_format_stringT109T111(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Logical(kind=INT64), intent(in):: x
            Integer(kind=INT16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT109T111
         function get_column_format_stringT110T111(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Integer(kind=INT8), intent(in):: x
            Integer(kind=INT16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT110T111
         function get_column_format_stringT111T111(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Integer(kind=INT16), intent(in):: x
            Integer(kind=INT16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT111T111
         function get_column_format_stringT112T111(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Integer(kind=INT32), intent(in):: x
            Integer(kind=INT16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT112T111
         function get_column_format_stringT113T111(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Integer(kind=INT64), intent(in):: x
            Integer(kind=INT16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT113T111
         function get_column_format_stringT114T111(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Real(kind=REAL32), intent(in):: x
            Integer(kind=INT16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT114T111
         function get_column_format_stringT115T111(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Real(kind=REAL64), intent(in):: x
            Integer(kind=INT16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT115T111
         function get_column_format_stringT116T111(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Real(kind=REAL128), intent(in):: x
            Integer(kind=INT16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT116T111
      ! `get_column_format_string` is used to produce re-readable complex output.
      ! number of columns should explicitly be given since unlimited format gives an extra parenthesis ` (` at the end.
         function get_column_format_stringT117T111(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *("	", "(", g0, ", ", g0, ")"))'
            Complex(kind=REAL32), intent(in):: x
            Integer(kind=INT16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT117T111
         function get_column_format_stringT118T111(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *("	", "(", g0, ", ", g0, ")"))'
            Complex(kind=REAL64), intent(in):: x
            Integer(kind=INT16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT118T111
         function get_column_format_stringT119T111(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *("	", "(", g0, ", ", g0, ")"))'
            Complex(kind=REAL128), intent(in):: x
            Integer(kind=INT16), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT119T111
         function get_column_format_stringT106T112(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Logical(kind=INT8), intent(in):: x
            Integer(kind=INT32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT106T112
         function get_column_format_stringT107T112(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Logical(kind=INT16), intent(in):: x
            Integer(kind=INT32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT107T112
         function get_column_format_stringT108T112(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Logical(kind=INT32), intent(in):: x
            Integer(kind=INT32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT108T112
         function get_column_format_stringT109T112(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Logical(kind=INT64), intent(in):: x
            Integer(kind=INT32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT109T112
         function get_column_format_stringT110T112(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Integer(kind=INT8), intent(in):: x
            Integer(kind=INT32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT110T112
         function get_column_format_stringT111T112(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Integer(kind=INT16), intent(in):: x
            Integer(kind=INT32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT111T112
         function get_column_format_stringT112T112(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Integer(kind=INT32), intent(in):: x
            Integer(kind=INT32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT112T112
         function get_column_format_stringT113T112(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Integer(kind=INT64), intent(in):: x
            Integer(kind=INT32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT113T112
         function get_column_format_stringT114T112(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Real(kind=REAL32), intent(in):: x
            Integer(kind=INT32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT114T112
         function get_column_format_stringT115T112(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Real(kind=REAL64), intent(in):: x
            Integer(kind=INT32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT115T112
         function get_column_format_stringT116T112(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Real(kind=REAL128), intent(in):: x
            Integer(kind=INT32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT116T112
      ! `get_column_format_string` is used to produce re-readable complex output.
      ! number of columns should explicitly be given since unlimited format gives an extra parenthesis ` (` at the end.
         function get_column_format_stringT117T112(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *("	", "(", g0, ", ", g0, ")"))'
            Complex(kind=REAL32), intent(in):: x
            Integer(kind=INT32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT117T112
         function get_column_format_stringT118T112(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *("	", "(", g0, ", ", g0, ")"))'
            Complex(kind=REAL64), intent(in):: x
            Integer(kind=INT32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT118T112
         function get_column_format_stringT119T112(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *("	", "(", g0, ", ", g0, ")"))'
            Complex(kind=REAL128), intent(in):: x
            Integer(kind=INT32), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT119T112
         function get_column_format_stringT106T113(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Logical(kind=INT8), intent(in):: x
            Integer(kind=INT64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT106T113
         function get_column_format_stringT107T113(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Logical(kind=INT16), intent(in):: x
            Integer(kind=INT64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT107T113
         function get_column_format_stringT108T113(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Logical(kind=INT32), intent(in):: x
            Integer(kind=INT64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT108T113
         function get_column_format_stringT109T113(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Logical(kind=INT64), intent(in):: x
            Integer(kind=INT64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT109T113
         function get_column_format_stringT110T113(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Integer(kind=INT8), intent(in):: x
            Integer(kind=INT64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT110T113
         function get_column_format_stringT111T113(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Integer(kind=INT16), intent(in):: x
            Integer(kind=INT64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT111T113
         function get_column_format_stringT112T113(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Integer(kind=INT32), intent(in):: x
            Integer(kind=INT64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT112T113
         function get_column_format_stringT113T113(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Integer(kind=INT64), intent(in):: x
            Integer(kind=INT64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT113T113
         function get_column_format_stringT114T113(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Real(kind=REAL32), intent(in):: x
            Integer(kind=INT64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT114T113
         function get_column_format_stringT115T113(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Real(kind=REAL64), intent(in):: x
            Integer(kind=INT64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT115T113
         function get_column_format_stringT116T113(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '(g0, *("	", g0))'
            Real(kind=REAL128), intent(in):: x
            Integer(kind=INT64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '(g0)'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT116T113
      ! `get_column_format_string` is used to produce re-readable complex output.
      ! number of columns should explicitly be given since unlimited format gives an extra parenthesis ` (` at the end.
         function get_column_format_stringT117T113(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *("	", "(", g0, ", ", g0, ")"))'
            Complex(kind=REAL32), intent(in):: x
            Integer(kind=INT64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT117T113
         function get_column_format_stringT118T113(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *("	", "(", g0, ", ", g0, ")"))'
            Complex(kind=REAL64), intent(in):: x
            Integer(kind=INT64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT118T113
         function get_column_format_stringT119T113(x, n) result(ret)
            Character(len=*), parameter:: multi_args = '("(", g0, ", ", g0, ")", *("	", "(", g0, ", ", g0, ")"))'
            Complex(kind=REAL128), intent(in):: x
            Integer(kind=INT64), intent(in):: n
            Character(len=len(multi_args)):: ret
            select case(n)
            case(:0)
               ret = '()'
            case(1)
               ret = '("(", g0, ", ", g0, ")")'
            case(2:)
               ret = multi_args
            end select
         end function get_column_format_stringT119T113
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
         if(.not.(form == 'formatted' .or. form == 'unformatted'))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2678, (".not.(form == 'formatted' .or. form == 'unformatted')"); error stop; end if
         form_ = form
      end if
      suffixMin_ = 0
      if(present(suffixMin)) suffixMin_ = suffixMin
      do suffix_ = suffixMin_, huge(suffix)
         file_ = PREFIX + str(suffix_)
         open(newunit = io, file = trim(file_), status = 'new', action = 'readwrite', form = trim(form_), iostat = openStatus)
         if(openStatus == 0)then
            if(.not.(sh('chmod og-rwx ' + trim(file_))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2688, (".not.(sh('chmod og-rwx ' + trim(file_)))"); error stop; end if
            if(present(file))then
               if(.not.(len_trim(file_) <= len(file)))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2691, (".not.(len_trim(file_) <= len(file))"); error stop; end if
               file = file_
            end if
            if(present(suffix)) suffix = suffix_
            return
         end if
      end do
      write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2700, ('Could not create temp file'); error stop
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
         if(.not.(ret < huge(ret)))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2729, (".not.(ret < huge(ret))"); error stop; end if
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
               if(.not.(answer <= huge(answer) - 1))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2772, (".not.(answer <= huge(answer) - 1)"); error stop; end if
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
         write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2802, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
      end select
   end subroutine load_array_meta
   subroutine load_array_meta_v_2(self, arrayDir)
      type(ArrayMeta), intent(inout):: self
      Character(len=*), intent(in):: arrayDir
      Integer:: io
      Integer:: dim
      open(newunit=io, file=s(arrayDir) + '/' + ARRAY_META_FILE_V_2, status='old', action='read')
      if(.not.(get_config_value(io, 'dataType', self%dataType)))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2814, (".not.(get_config_value(io, 'dataType', self%dataType))"); error stop; end if
      if(.not.(get_config_value(io, 'dim', self%dim)))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2815, (".not.(get_config_value(io, 'dim', self%dim))"); error stop; end if
      if(allocated(self%sizes)) deallocate(self%sizes)
      allocate(self%sizes(1:self%dim))
      do dim = lbound(self%sizes, dim=1, kind=kind(dim)), ubound(self%sizes, dim=1, kind=kind(dim))
         if(.not.(get_config_value(io, 'sizes(' + str(dim) + ')', self%sizes(dim))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2819, (".not.(get_config_value(io, 'sizes(' + str(dim) + ')', self%sizes(dim)))"); error stop; end if
      end do
      close(io)
   end subroutine load_array_meta_v_2
      subroutine dump_arrayLogicalDim1KindINT8(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT8), dimension(:), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim1KindINT8'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2837, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim1KindINT8
      subroutine load_arrayLogicalDim1KindINT8(self, arrayDir)
         Logical(kind=INT8), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2884, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim1KindINT8
      subroutine load_array_v_2LogicalDim1KindINT8(self, arrayDir)
         Logical(kind=INT8), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim1KindINT8'
         integer, parameter:: DIM_FOR_SELF = 1
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2899, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2900, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim1KindINT8
      subroutine load_array_v_1LogicalDim1KindINT8(self, arrayDir)
         Logical(kind=INT8), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim1KindINT8'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2924, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2925, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim1KindINT8
      subroutine dump_arrayLogicalDim1KindINT16(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT16), dimension(:), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim1KindINT16'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2948, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim1KindINT16
      subroutine load_arrayLogicalDim1KindINT16(self, arrayDir)
         Logical(kind=INT16), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 2995, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim1KindINT16
      subroutine load_array_v_2LogicalDim1KindINT16(self, arrayDir)
         Logical(kind=INT16), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim1KindINT16'
         integer, parameter:: DIM_FOR_SELF = 1
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3010, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3011, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim1KindINT16
      subroutine load_array_v_1LogicalDim1KindINT16(self, arrayDir)
         Logical(kind=INT16), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim1KindINT16'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3035, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3036, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim1KindINT16
      subroutine dump_arrayLogicalDim1KindINT32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT32), dimension(:), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim1KindINT32'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3059, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim1KindINT32
      subroutine load_arrayLogicalDim1KindINT32(self, arrayDir)
         Logical(kind=INT32), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3106, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim1KindINT32
      subroutine load_array_v_2LogicalDim1KindINT32(self, arrayDir)
         Logical(kind=INT32), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim1KindINT32'
         integer, parameter:: DIM_FOR_SELF = 1
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3121, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3122, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim1KindINT32
      subroutine load_array_v_1LogicalDim1KindINT32(self, arrayDir)
         Logical(kind=INT32), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim1KindINT32'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3146, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3147, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim1KindINT32
      subroutine dump_arrayLogicalDim1KindINT64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT64), dimension(:), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim1KindINT64'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3170, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim1KindINT64
      subroutine load_arrayLogicalDim1KindINT64(self, arrayDir)
         Logical(kind=INT64), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3217, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim1KindINT64
      subroutine load_array_v_2LogicalDim1KindINT64(self, arrayDir)
         Logical(kind=INT64), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim1KindINT64'
         integer, parameter:: DIM_FOR_SELF = 1
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3232, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3233, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim1KindINT64
      subroutine load_array_v_1LogicalDim1KindINT64(self, arrayDir)
         Logical(kind=INT64), dimension(:), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim1KindINT64'
         integer, parameter:: DIM_FOR_SELF = 1
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3257, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3258, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim1KindINT64
      subroutine dump_arrayLogicalDim2KindINT8(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT8), dimension(:, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim2KindINT8'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3281, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim2KindINT8
      subroutine load_arrayLogicalDim2KindINT8(self, arrayDir)
         Logical(kind=INT8), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3329, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim2KindINT8
      subroutine load_array_v_2LogicalDim2KindINT8(self, arrayDir)
         Logical(kind=INT8), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim2KindINT8'
         integer, parameter:: DIM_FOR_SELF = 2
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3344, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3345, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim2KindINT8
      subroutine load_array_v_1LogicalDim2KindINT8(self, arrayDir)
         Logical(kind=INT8), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim2KindINT8'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3369, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3370, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim2KindINT8
      subroutine dump_arrayLogicalDim2KindINT16(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT16), dimension(:, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim2KindINT16'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3393, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim2KindINT16
      subroutine load_arrayLogicalDim2KindINT16(self, arrayDir)
         Logical(kind=INT16), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3441, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim2KindINT16
      subroutine load_array_v_2LogicalDim2KindINT16(self, arrayDir)
         Logical(kind=INT16), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim2KindINT16'
         integer, parameter:: DIM_FOR_SELF = 2
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3456, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3457, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim2KindINT16
      subroutine load_array_v_1LogicalDim2KindINT16(self, arrayDir)
         Logical(kind=INT16), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim2KindINT16'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3481, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3482, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim2KindINT16
      subroutine dump_arrayLogicalDim2KindINT32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT32), dimension(:, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim2KindINT32'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3505, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim2KindINT32
      subroutine load_arrayLogicalDim2KindINT32(self, arrayDir)
         Logical(kind=INT32), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3553, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim2KindINT32
      subroutine load_array_v_2LogicalDim2KindINT32(self, arrayDir)
         Logical(kind=INT32), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim2KindINT32'
         integer, parameter:: DIM_FOR_SELF = 2
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3568, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3569, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim2KindINT32
      subroutine load_array_v_1LogicalDim2KindINT32(self, arrayDir)
         Logical(kind=INT32), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim2KindINT32'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3593, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3594, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim2KindINT32
      subroutine dump_arrayLogicalDim2KindINT64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT64), dimension(:, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim2KindINT64'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3617, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim2KindINT64
      subroutine load_arrayLogicalDim2KindINT64(self, arrayDir)
         Logical(kind=INT64), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3665, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim2KindINT64
      subroutine load_array_v_2LogicalDim2KindINT64(self, arrayDir)
         Logical(kind=INT64), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim2KindINT64'
         integer, parameter:: DIM_FOR_SELF = 2
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3680, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3681, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim2KindINT64
      subroutine load_array_v_1LogicalDim2KindINT64(self, arrayDir)
         Logical(kind=INT64), dimension(:, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim2KindINT64'
         integer, parameter:: DIM_FOR_SELF = 2
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3705, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3706, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim2KindINT64
      subroutine dump_arrayLogicalDim3KindINT8(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT8), dimension(:, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim3KindINT8'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3729, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim3KindINT8
      subroutine load_arrayLogicalDim3KindINT8(self, arrayDir)
         Logical(kind=INT8), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3778, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim3KindINT8
      subroutine load_array_v_2LogicalDim3KindINT8(self, arrayDir)
         Logical(kind=INT8), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim3KindINT8'
         integer, parameter:: DIM_FOR_SELF = 3
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3793, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3794, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim3KindINT8
      subroutine load_array_v_1LogicalDim3KindINT8(self, arrayDir)
         Logical(kind=INT8), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim3KindINT8'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3818, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3819, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim3KindINT8
      subroutine dump_arrayLogicalDim3KindINT16(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT16), dimension(:, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim3KindINT16'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3842, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim3KindINT16
      subroutine load_arrayLogicalDim3KindINT16(self, arrayDir)
         Logical(kind=INT16), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3891, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim3KindINT16
      subroutine load_array_v_2LogicalDim3KindINT16(self, arrayDir)
         Logical(kind=INT16), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim3KindINT16'
         integer, parameter:: DIM_FOR_SELF = 3
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3906, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3907, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim3KindINT16
      subroutine load_array_v_1LogicalDim3KindINT16(self, arrayDir)
         Logical(kind=INT16), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim3KindINT16'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3931, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3932, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim3KindINT16
      subroutine dump_arrayLogicalDim3KindINT32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT32), dimension(:, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim3KindINT32'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 3955, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim3KindINT32
      subroutine load_arrayLogicalDim3KindINT32(self, arrayDir)
         Logical(kind=INT32), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4004, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim3KindINT32
      subroutine load_array_v_2LogicalDim3KindINT32(self, arrayDir)
         Logical(kind=INT32), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim3KindINT32'
         integer, parameter:: DIM_FOR_SELF = 3
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4019, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4020, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim3KindINT32
      subroutine load_array_v_1LogicalDim3KindINT32(self, arrayDir)
         Logical(kind=INT32), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim3KindINT32'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4044, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4045, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim3KindINT32
      subroutine dump_arrayLogicalDim3KindINT64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT64), dimension(:, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim3KindINT64'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4068, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim3KindINT64
      subroutine load_arrayLogicalDim3KindINT64(self, arrayDir)
         Logical(kind=INT64), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4117, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim3KindINT64
      subroutine load_array_v_2LogicalDim3KindINT64(self, arrayDir)
         Logical(kind=INT64), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim3KindINT64'
         integer, parameter:: DIM_FOR_SELF = 3
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4132, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4133, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim3KindINT64
      subroutine load_array_v_1LogicalDim3KindINT64(self, arrayDir)
         Logical(kind=INT64), dimension(:, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim3KindINT64'
         integer, parameter:: DIM_FOR_SELF = 3
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4157, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4158, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim3KindINT64
      subroutine dump_arrayLogicalDim4KindINT8(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT8), dimension(:, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim4KindINT8'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4181, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim4KindINT8
      subroutine load_arrayLogicalDim4KindINT8(self, arrayDir)
         Logical(kind=INT8), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4231, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim4KindINT8
      subroutine load_array_v_2LogicalDim4KindINT8(self, arrayDir)
         Logical(kind=INT8), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim4KindINT8'
         integer, parameter:: DIM_FOR_SELF = 4
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4246, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4247, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim4KindINT8
      subroutine load_array_v_1LogicalDim4KindINT8(self, arrayDir)
         Logical(kind=INT8), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim4KindINT8'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4271, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4272, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim4KindINT8
      subroutine dump_arrayLogicalDim4KindINT16(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT16), dimension(:, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim4KindINT16'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4295, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim4KindINT16
      subroutine load_arrayLogicalDim4KindINT16(self, arrayDir)
         Logical(kind=INT16), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4345, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim4KindINT16
      subroutine load_array_v_2LogicalDim4KindINT16(self, arrayDir)
         Logical(kind=INT16), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim4KindINT16'
         integer, parameter:: DIM_FOR_SELF = 4
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4360, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4361, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim4KindINT16
      subroutine load_array_v_1LogicalDim4KindINT16(self, arrayDir)
         Logical(kind=INT16), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim4KindINT16'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4385, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4386, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim4KindINT16
      subroutine dump_arrayLogicalDim4KindINT32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT32), dimension(:, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim4KindINT32'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4409, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim4KindINT32
      subroutine load_arrayLogicalDim4KindINT32(self, arrayDir)
         Logical(kind=INT32), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4459, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim4KindINT32
      subroutine load_array_v_2LogicalDim4KindINT32(self, arrayDir)
         Logical(kind=INT32), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim4KindINT32'
         integer, parameter:: DIM_FOR_SELF = 4
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4474, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4475, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim4KindINT32
      subroutine load_array_v_1LogicalDim4KindINT32(self, arrayDir)
         Logical(kind=INT32), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim4KindINT32'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4499, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4500, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim4KindINT32
      subroutine dump_arrayLogicalDim4KindINT64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT64), dimension(:, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim4KindINT64'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4523, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim4KindINT64
      subroutine load_arrayLogicalDim4KindINT64(self, arrayDir)
         Logical(kind=INT64), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4573, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim4KindINT64
      subroutine load_array_v_2LogicalDim4KindINT64(self, arrayDir)
         Logical(kind=INT64), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim4KindINT64'
         integer, parameter:: DIM_FOR_SELF = 4
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4588, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4589, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim4KindINT64
      subroutine load_array_v_1LogicalDim4KindINT64(self, arrayDir)
         Logical(kind=INT64), dimension(:, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim4KindINT64'
         integer, parameter:: DIM_FOR_SELF = 4
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4613, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4614, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim4KindINT64
      subroutine dump_arrayLogicalDim5KindINT8(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT8), dimension(:, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim5KindINT8'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4637, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim5KindINT8
      subroutine load_arrayLogicalDim5KindINT8(self, arrayDir)
         Logical(kind=INT8), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4688, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim5KindINT8
      subroutine load_array_v_2LogicalDim5KindINT8(self, arrayDir)
         Logical(kind=INT8), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim5KindINT8'
         integer, parameter:: DIM_FOR_SELF = 5
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4703, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4704, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim5KindINT8
      subroutine load_array_v_1LogicalDim5KindINT8(self, arrayDir)
         Logical(kind=INT8), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim5KindINT8'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4728, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4729, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim5KindINT8
      subroutine dump_arrayLogicalDim5KindINT16(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT16), dimension(:, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim5KindINT16'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4752, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim5KindINT16
      subroutine load_arrayLogicalDim5KindINT16(self, arrayDir)
         Logical(kind=INT16), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4803, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim5KindINT16
      subroutine load_array_v_2LogicalDim5KindINT16(self, arrayDir)
         Logical(kind=INT16), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim5KindINT16'
         integer, parameter:: DIM_FOR_SELF = 5
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4818, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4819, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim5KindINT16
      subroutine load_array_v_1LogicalDim5KindINT16(self, arrayDir)
         Logical(kind=INT16), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim5KindINT16'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4843, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4844, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim5KindINT16
      subroutine dump_arrayLogicalDim5KindINT32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT32), dimension(:, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim5KindINT32'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4867, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim5KindINT32
      subroutine load_arrayLogicalDim5KindINT32(self, arrayDir)
         Logical(kind=INT32), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4918, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim5KindINT32
      subroutine load_array_v_2LogicalDim5KindINT32(self, arrayDir)
         Logical(kind=INT32), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim5KindINT32'
         integer, parameter:: DIM_FOR_SELF = 5
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4933, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4934, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim5KindINT32
      subroutine load_array_v_1LogicalDim5KindINT32(self, arrayDir)
         Logical(kind=INT32), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim5KindINT32'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4958, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4959, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim5KindINT32
      subroutine dump_arrayLogicalDim5KindINT64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT64), dimension(:, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim5KindINT64'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 4982, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim5KindINT64
      subroutine load_arrayLogicalDim5KindINT64(self, arrayDir)
         Logical(kind=INT64), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5033, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim5KindINT64
      subroutine load_array_v_2LogicalDim5KindINT64(self, arrayDir)
         Logical(kind=INT64), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim5KindINT64'
         integer, parameter:: DIM_FOR_SELF = 5
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5048, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5049, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim5KindINT64
      subroutine load_array_v_1LogicalDim5KindINT64(self, arrayDir)
         Logical(kind=INT64), dimension(:, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim5KindINT64'
         integer, parameter:: DIM_FOR_SELF = 5
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5073, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5074, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim5KindINT64
      subroutine dump_arrayLogicalDim6KindINT8(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT8), dimension(:, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim6KindINT8'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5097, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim6KindINT8
      subroutine load_arrayLogicalDim6KindINT8(self, arrayDir)
         Logical(kind=INT8), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5149, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim6KindINT8
      subroutine load_array_v_2LogicalDim6KindINT8(self, arrayDir)
         Logical(kind=INT8), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim6KindINT8'
         integer, parameter:: DIM_FOR_SELF = 6
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5164, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5165, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim6KindINT8
      subroutine load_array_v_1LogicalDim6KindINT8(self, arrayDir)
         Logical(kind=INT8), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim6KindINT8'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5189, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5190, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim6KindINT8
      subroutine dump_arrayLogicalDim6KindINT16(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT16), dimension(:, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim6KindINT16'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5213, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim6KindINT16
      subroutine load_arrayLogicalDim6KindINT16(self, arrayDir)
         Logical(kind=INT16), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5265, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim6KindINT16
      subroutine load_array_v_2LogicalDim6KindINT16(self, arrayDir)
         Logical(kind=INT16), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim6KindINT16'
         integer, parameter:: DIM_FOR_SELF = 6
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5280, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5281, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim6KindINT16
      subroutine load_array_v_1LogicalDim6KindINT16(self, arrayDir)
         Logical(kind=INT16), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim6KindINT16'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5305, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5306, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim6KindINT16
      subroutine dump_arrayLogicalDim6KindINT32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT32), dimension(:, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim6KindINT32'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5329, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim6KindINT32
      subroutine load_arrayLogicalDim6KindINT32(self, arrayDir)
         Logical(kind=INT32), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5381, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim6KindINT32
      subroutine load_array_v_2LogicalDim6KindINT32(self, arrayDir)
         Logical(kind=INT32), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim6KindINT32'
         integer, parameter:: DIM_FOR_SELF = 6
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5396, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5397, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim6KindINT32
      subroutine load_array_v_1LogicalDim6KindINT32(self, arrayDir)
         Logical(kind=INT32), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim6KindINT32'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5421, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5422, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim6KindINT32
      subroutine dump_arrayLogicalDim6KindINT64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT64), dimension(:, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim6KindINT64'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5445, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim6KindINT64
      subroutine load_arrayLogicalDim6KindINT64(self, arrayDir)
         Logical(kind=INT64), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5497, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim6KindINT64
      subroutine load_array_v_2LogicalDim6KindINT64(self, arrayDir)
         Logical(kind=INT64), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim6KindINT64'
         integer, parameter:: DIM_FOR_SELF = 6
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5512, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5513, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim6KindINT64
      subroutine load_array_v_1LogicalDim6KindINT64(self, arrayDir)
         Logical(kind=INT64), dimension(:, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim6KindINT64'
         integer, parameter:: DIM_FOR_SELF = 6
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5537, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5538, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim6KindINT64
      subroutine dump_arrayLogicalDim7KindINT8(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT8), dimension(:, :, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim7KindINT8'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5561, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim7KindINT8
      subroutine load_arrayLogicalDim7KindINT8(self, arrayDir)
         Logical(kind=INT8), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5614, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim7KindINT8
      subroutine load_array_v_2LogicalDim7KindINT8(self, arrayDir)
         Logical(kind=INT8), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim7KindINT8'
         integer, parameter:: DIM_FOR_SELF = 7
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5629, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5630, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim7KindINT8
      subroutine load_array_v_1LogicalDim7KindINT8(self, arrayDir)
         Logical(kind=INT8), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim7KindINT8'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5654, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5655, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim7KindINT8
      subroutine dump_arrayLogicalDim7KindINT16(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT16), dimension(:, :, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim7KindINT16'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5678, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim7KindINT16
      subroutine load_arrayLogicalDim7KindINT16(self, arrayDir)
         Logical(kind=INT16), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5731, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim7KindINT16
      subroutine load_array_v_2LogicalDim7KindINT16(self, arrayDir)
         Logical(kind=INT16), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim7KindINT16'
         integer, parameter:: DIM_FOR_SELF = 7
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5746, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5747, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim7KindINT16
      subroutine load_array_v_1LogicalDim7KindINT16(self, arrayDir)
         Logical(kind=INT16), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim7KindINT16'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5771, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5772, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim7KindINT16
      subroutine dump_arrayLogicalDim7KindINT32(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT32), dimension(:, :, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim7KindINT32'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5795, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim7KindINT32
      subroutine load_arrayLogicalDim7KindINT32(self, arrayDir)
         Logical(kind=INT32), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5848, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim7KindINT32
      subroutine load_array_v_2LogicalDim7KindINT32(self, arrayDir)
         Logical(kind=INT32), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim7KindINT32'
         integer, parameter:: DIM_FOR_SELF = 7
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5863, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5864, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim7KindINT32
      subroutine load_array_v_1LogicalDim7KindINT32(self, arrayDir)
         Logical(kind=INT32), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim7KindINT32'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5888, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5889, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim7KindINT32
      subroutine dump_arrayLogicalDim7KindINT64(self, arrayDir, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
         Logical(kind=INT64), dimension(:, :, :, :, :, :, :), intent(in):: self
         character(len = *), intent(in):: arrayDir
            character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim7KindINT64'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = len(DATA_TYPE_FOR_SELF)) dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: wU1
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5912, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
      end subroutine dump_arrayLogicalDim7KindINT64
      subroutine load_arrayLogicalDim7KindINT64(self, arrayDir)
         Logical(kind=INT64), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         Integer:: version_
         version_ = load_array_version(trim(arrayDir))
         select case(version_)
         case(1)
            call load_v_1(self, arrayDir)
         case(2)
            call load_v_2(self, arrayDir)
         case default
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5965, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
         end select
      end subroutine load_arrayLogicalDim7KindINT64
      subroutine load_array_v_2LogicalDim7KindINT64(self, arrayDir)
         Logical(kind=INT64), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim7KindINT64'
         integer, parameter:: DIM_FOR_SELF = 7
         type(ArrayMeta):: meta
         integer:: io
         call load_array_meta_v_2(meta, trim(arrayDir))
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5980, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 5981, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
         if(allocated(self)) deallocate(self)
         allocate(self(1:meta%sizes(1), 1:meta%sizes(2), 1:meta%sizes(3), 1:meta%sizes(4), 1:meta%sizes(5), 1:meta%sizes(6), 1:meta%sizes(7)))
         open(newunit=io, file=s(arrayDir) + '/' + ARRAY_DATA_FILE, status='old', action='read', form='unformatted', access='stream')
         read(io) self
      end subroutine load_array_v_2LogicalDim7KindINT64
      subroutine load_array_v_1LogicalDim7KindINT64(self, arrayDir)
         Logical(kind=INT64), dimension(:, :, :, :, :, :, :), intent(inout), allocatable:: self
         character(len = *), intent(in):: arrayDir
         character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim7KindINT64'
         integer, parameter:: DIM_FOR_SELF = 7
         character(len = 24):: dataType
         integer:: dim
         integer:: sizes(1:DIM_FOR_SELF)
         integer:: rU1
         namelist /array_meta/ dataType, dim, sizes
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE_V_1, status = 'old', action = 'read', delim = 'quote')
         read(rU1, nml = array_meta)
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6005, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6006, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1LogicalDim7KindINT64
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6029, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6076, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6091, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6092, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6116, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6117, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6140, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6187, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6202, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6203, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6227, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6228, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6251, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6298, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6313, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6314, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6338, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6339, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6362, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6409, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6424, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6425, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6449, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6450, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6473, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6521, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6536, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6537, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6561, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6562, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6585, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6633, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6648, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6649, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6673, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6674, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6697, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6745, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6760, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6761, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6785, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6786, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6809, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6857, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6872, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6873, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6897, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6898, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6921, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6970, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6985, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 6986, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7010, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7011, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7034, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7083, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7098, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7099, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7123, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7124, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7147, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7196, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7211, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7212, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7236, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7237, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7260, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7309, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7324, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7325, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7349, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7350, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7373, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7423, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7438, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7439, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7463, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7464, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7487, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7537, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7552, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7553, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7577, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7578, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7601, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7651, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7666, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7667, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7691, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7692, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7715, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7765, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7780, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7781, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7805, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7806, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7829, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7880, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7895, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7896, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7920, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7921, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7944, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 7995, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8010, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8011, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8035, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8036, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8059, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8110, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8125, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8126, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8150, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8151, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8174, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8225, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8240, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8241, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8265, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8266, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8289, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8341, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8356, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8357, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8381, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8382, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8405, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8457, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8472, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8473, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8497, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8498, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8521, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8573, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8588, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8589, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8613, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8614, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8637, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8689, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8704, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8705, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8729, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8730, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8753, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8806, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8821, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8822, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8846, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8847, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8870, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8923, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8938, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8939, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8963, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8964, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 8987, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9040, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9055, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9056, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9080, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9081, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9104, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9157, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9172, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9173, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9197, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9198, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9221, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9268, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9283, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9284, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9308, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9309, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9332, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9379, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9394, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9395, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9419, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9420, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9443, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9490, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9505, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9506, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9530, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9531, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9554, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9602, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9617, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9618, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9642, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9643, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9666, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9714, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9729, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9730, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9754, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9755, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9778, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9826, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9841, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9842, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9866, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9867, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9890, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9939, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9954, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9955, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9979, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 9980, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10003, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10052, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10067, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10068, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10092, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10093, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10116, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10165, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10180, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10181, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10205, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10206, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10279, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10294, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10295, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10319, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10320, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10343, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10393, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10408, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10409, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10433, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10434, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10457, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10507, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10522, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10523, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10547, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10548, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10571, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10622, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10637, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10638, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10662, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10663, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10737, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10752, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10753, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10777, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10778, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10801, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10852, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10867, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10868, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10892, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10893, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10916, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10968, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10983, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 10984, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11008, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11009, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11032, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11084, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11099, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11100, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11124, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11125, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11148, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11200, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11215, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11216, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11240, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11241, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11264, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11317, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11332, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11333, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11357, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11358, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11381, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11434, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11449, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11450, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11474, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11475, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11498, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11551, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11566, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11567, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11591, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11592, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11615, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11662, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11677, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11678, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11702, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11703, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11726, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11773, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11788, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11789, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11813, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11814, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11837, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11884, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11899, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11900, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11924, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11925, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11948, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 11996, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12011, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12012, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12036, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12037, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12060, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12108, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12123, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12124, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12148, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12149, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12172, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12220, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12235, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12236, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12260, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12261, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12284, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12333, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12348, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12349, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12373, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12374, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12397, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12446, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12461, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12462, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12486, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12487, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12510, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12559, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12574, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12575, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12599, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12600, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12623, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12673, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12688, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12689, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12713, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12714, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12737, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12787, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12802, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12803, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12827, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12828, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12851, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12901, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12916, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12917, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12941, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12942, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 12965, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13016, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13031, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13032, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13056, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13057, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13080, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13131, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13146, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13147, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13171, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13172, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13195, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13246, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13261, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13262, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13286, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13287, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13310, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13362, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13377, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13378, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13402, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13403, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13426, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13478, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13493, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13494, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13518, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13519, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13542, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13594, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13609, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13610, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13634, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13635, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13658, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13711, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13726, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13727, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13751, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13752, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13775, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13828, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13843, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13844, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13868, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13869, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13892, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13945, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13960, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13961, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13985, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 13986, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14009, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14056, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14071, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14072, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14096, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14097, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14120, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14168, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14183, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14184, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14208, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14209, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14232, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14281, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14296, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14297, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14321, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14322, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14345, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14395, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14410, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14411, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14435, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14436, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14459, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14510, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14525, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14526, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14550, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14551, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14574, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14626, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14641, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14642, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14666, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14667, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(sh('mkdir -p ' + trim(arrayDir))))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14690, (".not.(sh('mkdir -p ' + trim(arrayDir)))"); error stop; end if
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
            write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14743, ('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir)); error stop
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
         if(.not.(meta%dataType == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14758, (".not.(meta%dataType == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(meta%dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14759, (".not.(meta%dim == DIM_FOR_SELF)"); error stop; end if
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
         if(.not.(s(dataType) == DATA_TYPE_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14783, (".not.(s(dataType) == DATA_TYPE_FOR_SELF)"); error stop; end if
         if(.not.(dim == DIM_FOR_SELF))then; write(ERROR_UNIT, *) "RAISE: ", "io_lib.f90", " ", 14784, (".not.(dim == DIM_FOR_SELF)"); error stop; end if
         close(rU1)
         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))
         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1CharacterDim7LenAsterisk
end module io_lib
