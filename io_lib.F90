

#include "utils.h"
module io_lib
   use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, INPUT_UNIT, OUTPUT_UNIT
   use, intrinsic:: iso_fortran_env, only: INT64
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
# ifdef __INTEL_COMPILER
   use, non_intrinsic:: ifport, only: system
# endif
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
   Integer, parameter, public:: LEN_FORMAT_STRING_MAX = 2**10
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
         Character(len=LEN_FORMAT_STRING_MAX):: ret

         ASSERT(n >= 1)
         ret = '(' + str(n) + '(1x, l1))'
      end function get_column_format_stringLogicalDim0

      ! '(256(1x, i11))'
      function get_column_format_stringIntegerDim0KindINT8(x, n) result(ret)
         Integer(kind=INT8), intent(in):: x
         Integer, intent(in):: n
         Character(len=LEN_FORMAT_STRING_MAX):: ret

         ASSERT(n >= 1)
         ret = '(' + str(n) + '(1x, i' + str(len(str(huge(x))) + 1) + '))'
      end function get_column_format_stringIntegerDim0KindINT8
      ! '(256(1x, i11))'
      function get_column_format_stringIntegerDim0KindINT16(x, n) result(ret)
         Integer(kind=INT16), intent(in):: x
         Integer, intent(in):: n
         Character(len=LEN_FORMAT_STRING_MAX):: ret

         ASSERT(n >= 1)
         ret = '(' + str(n) + '(1x, i' + str(len(str(huge(x))) + 1) + '))'
      end function get_column_format_stringIntegerDim0KindINT16
      ! '(256(1x, i11))'
      function get_column_format_stringIntegerDim0KindINT32(x, n) result(ret)
         Integer(kind=INT32), intent(in):: x
         Integer, intent(in):: n
         Character(len=LEN_FORMAT_STRING_MAX):: ret

         ASSERT(n >= 1)
         ret = '(' + str(n) + '(1x, i' + str(len(str(huge(x))) + 1) + '))'
      end function get_column_format_stringIntegerDim0KindINT32
      ! '(256(1x, i11))'
      function get_column_format_stringIntegerDim0KindINT64(x, n) result(ret)
         Integer(kind=INT64), intent(in):: x
         Integer, intent(in):: n
         Character(len=LEN_FORMAT_STRING_MAX):: ret

         ASSERT(n >= 1)
         ret = '(' + str(n) + '(1x, i' + str(len(str(huge(x))) + 1) + '))'
      end function get_column_format_stringIntegerDim0KindINT64

      ! '(256(1x, es13.7))'
      function get_column_format_stringRealDim0KindREAL32(x, n) result(ret)
         Integer, parameter:: PADDING_FOR_ES = 6
         Integer, parameter:: MORE_PREC = 1

         Real(kind=REAL32), intent(in):: x
         Integer, intent(in):: n

         Character(len=LEN_FORMAT_STRING_MAX):: ret

         Integer:: prec

         ASSERT(n >= 1)

         prec = precision(x) + MORE_PREC
         ret = '(' + str(n) + '(1x, es' + str(prec + PADDING_FOR_ES) + '.' + str(prec) + '))'
      end function get_column_format_stringRealDim0KindREAL32
      ! '(256(1x, es13.7))'
      function get_column_format_stringRealDim0KindREAL64(x, n) result(ret)
         Integer, parameter:: PADDING_FOR_ES = 6
         Integer, parameter:: MORE_PREC = 1

         Real(kind=REAL64), intent(in):: x
         Integer, intent(in):: n

         Character(len=LEN_FORMAT_STRING_MAX):: ret

         Integer:: prec

         ASSERT(n >= 1)

         prec = precision(x) + MORE_PREC
         ret = '(' + str(n) + '(1x, es' + str(prec + PADDING_FOR_ES) + '.' + str(prec) + '))'
      end function get_column_format_stringRealDim0KindREAL64
      ! '(256(1x, es13.7))'
      function get_column_format_stringRealDim0KindREAL128(x, n) result(ret)
         Integer, parameter:: PADDING_FOR_ES = 6
         Integer, parameter:: MORE_PREC = 1

         Real(kind=REAL128), intent(in):: x
         Integer, intent(in):: n

         Character(len=LEN_FORMAT_STRING_MAX):: ret

         Integer:: prec

         ASSERT(n >= 1)

         prec = precision(x) + MORE_PREC
         ret = '(' + str(n) + '(1x, es' + str(prec + PADDING_FOR_ES) + '.' + str(prec) + '))'
      end function get_column_format_stringRealDim0KindREAL128

      ! '(256(1x, "(", es13.7, ",", es13.7, ")"))'
      function get_column_format_stringComplexDim0KindREAL32(x, n) result(ret)
         Integer, parameter:: PADDING_FOR_ES = 6
         Integer, parameter:: MORE_PREC = 1

         Complex(kind=REAL32), intent(in):: x
         Integer, intent(in):: n

         Character(len=LEN_FORMAT_STRING_MAX):: ret

         Integer:: prec

         ASSERT(n >= 1)

         prec = precision(x) + MORE_PREC
         ret = '(' + str(n) + '(1x, "(", es' + str(prec + PADDING_FOR_ES) + '.' + str(prec) + ', ",", es' + str(prec + PADDING_FOR_ES) + '.' + str(prec) + ', ")"))'
      end function get_column_format_stringComplexDim0KindREAL32
      ! '(256(1x, "(", es13.7, ",", es13.7, ")"))'
      function get_column_format_stringComplexDim0KindREAL64(x, n) result(ret)
         Integer, parameter:: PADDING_FOR_ES = 6
         Integer, parameter:: MORE_PREC = 1

         Complex(kind=REAL64), intent(in):: x
         Integer, intent(in):: n

         Character(len=LEN_FORMAT_STRING_MAX):: ret

         Integer:: prec

         ASSERT(n >= 1)

         prec = precision(x) + MORE_PREC
         ret = '(' + str(n) + '(1x, "(", es' + str(prec + PADDING_FOR_ES) + '.' + str(prec) + ', ",", es' + str(prec + PADDING_FOR_ES) + '.' + str(prec) + ', ")"))'
      end function get_column_format_stringComplexDim0KindREAL64
      ! '(256(1x, "(", es13.7, ",", es13.7, ")"))'
      function get_column_format_stringComplexDim0KindREAL128(x, n) result(ret)
         Integer, parameter:: PADDING_FOR_ES = 6
         Integer, parameter:: MORE_PREC = 1

         Complex(kind=REAL128), intent(in):: x
         Integer, intent(in):: n

         Character(len=LEN_FORMAT_STRING_MAX):: ret

         Integer:: prec

         ASSERT(n >= 1)

         prec = precision(x) + MORE_PREC
         ret = '(' + str(n) + '(1x, "(", es' + str(prec + PADDING_FOR_ES) + '.' + str(prec) + ', ",", es' + str(prec + PADDING_FOR_ES) + '.' + str(prec) + ', ")"))'
      end function get_column_format_stringComplexDim0KindREAL128

   function sh(cmd) result(isSuccess)
      Character(len = *), intent(in):: cmd
      Logical:: isSuccess
      Integer:: exitStatus

# ifdef __INTEL_COMPILER
      exitStatus = system(trim(cmd))
# else
      call execute_command_line(trim(cmd), exitstat = exitStatus)
# endif

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
         ASSERT(form == 'formatted' .or. form == 'unformatted')
         form_ = form
      end if

      suffixMin_ = 0
      if(present(suffixMin)) suffixMin_ = suffixMin
      do suffix_ = suffixMin_, huge(suffix)
         file_ = PREFIX + str(suffix_)
         open(newunit = io, file = trim(file_), status = 'new', action = 'readwrite', form = trim(form_), iostat = openStatus)
         if(openStatus == 0)then
            ASSERT(sh('chmod og-rwx ' + trim(file_)))

            if(present(file))then
               ASSERT(len_trim(file_) <= len(file))
               file = file_
            end if
            if(present(suffix)) suffix = suffix_

            return
         end if
      end do

      RAISE('Could not create temp file')
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
         ASSERT(ret < huge(ret))

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
         if(is_iostat_bad(ios) .or. c == new_line('_')) exit

         select case(mode)
         case(SEEK_SEPARATOR)
            if(has_val(SEPARATORS, c)) mode = SEEK_NORMAL_CHAR
         case(SEEK_NORMAL_CHAR)
            if(.not.has_val(SEPARATORS, c))then
               ASSERT(answer <= huge(answer) - 1)

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
         RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
      end select
   end subroutine load_array_meta

   subroutine load_array_meta_v_2(self, arrayDir)
      type(ArrayMeta), intent(inout):: self
      Character(len=*), intent(in):: arrayDir

      Integer:: io
      Integer:: dim

      open(newunit=io, file=s(arrayDir) + '/' + ARRAY_META_FILE_V_2, status='old', action='read')
      ASSERT(get_config_value(io, 'dataType', self%dataType))
      ASSERT(get_config_value(io, 'dim', self%dim))
      if(allocated(self%sizes)) deallocate(self%sizes)
      allocate(self%sizes(1:self%dim))
      do ALL_OF(dim, self%sizes, 1)
         ASSERT(get_config_value(io, 'sizes(' + str(dim) + ')', self%sizes(dim)))
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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
           WRITE_KEY_VALUE(wU1, sizes(7))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
           WRITE_KEY_VALUE(wU1, sizes(7))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
           WRITE_KEY_VALUE(wU1, sizes(7))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
           WRITE_KEY_VALUE(wU1, sizes(7))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
           WRITE_KEY_VALUE(wU1, sizes(7))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
           WRITE_KEY_VALUE(wU1, sizes(7))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
           WRITE_KEY_VALUE(wU1, sizes(7))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
           WRITE_KEY_VALUE(wU1, sizes(7))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
           WRITE_KEY_VALUE(wU1, sizes(7))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
           WRITE_KEY_VALUE(wU1, sizes(7))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
           WRITE_KEY_VALUE(wU1, sizes(7))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

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

         ASSERT(sh('mkdir -p ' + trim(arrayDir)))

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
         WRITE_KEY_VALUE(wU1, dim)
         WRITE_KEY_VALUE(wU1, dataType)
           WRITE_KEY_VALUE(wU1, sizes(1))
           WRITE_KEY_VALUE(wU1, sizes(2))
           WRITE_KEY_VALUE(wU1, sizes(3))
           WRITE_KEY_VALUE(wU1, sizes(4))
           WRITE_KEY_VALUE(wU1, sizes(5))
           WRITE_KEY_VALUE(wU1, sizes(6))
           WRITE_KEY_VALUE(wU1, sizes(7))
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
            RAISE('Unsupported version ' + str(version_) + ' for ' + trim(arrayDir))
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

         ASSERT(meta%dataType == DATA_TYPE_FOR_SELF)
         ASSERT(meta%dim == DIM_FOR_SELF)

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

         ASSERT(s(dataType) == DATA_TYPE_FOR_SELF)
         ASSERT(dim == DIM_FOR_SELF)

         close(rU1)

         if(allocated(self)) deallocate(self)
         allocate(self(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))

         open(newunit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
         read(rU1) self
      end subroutine load_array_v_1CharacterDim7LenAsterisk
end module io_lib
