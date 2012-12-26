# 1 "lib_io.f90"
# 1 "<command-line>"
# 1 "lib_io.f90"


# 1 "utils.h" 1
# 4 "lib_io.f90" 2
module lib_io
  use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, INPUT_UNIT, OUTPUT_UNIT
  use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
  use lib_constant, only: TAB
  use lib_character, only: s, operator(+)

  implicit none

  private
  public:: VERSION, ARRAY_DATA_FILE, ARRAY_META_FILE, ARRAY_VERSION_FILE, ARRAY_DESCRIPTION_FILE
  public:: TMP_DIR
  public:: SHELL_INTERFACE_FILE
  public:: new_unit
  public:: write_array, read_array
  public:: number_of_lines, number_of_columns, file_shape
  public:: mkdir_p
  public:: tempfile
  public:: close_tempfile
  public:: init_shell_interface_file
  public:: read_shell_interface_file

  integer, parameter:: VERSION = 1 ! Array file format's compatibility.
  integer, parameter:: NEW_UNIT_MIN = max(ERROR_UNIT, INPUT_UNIT, OUTPUT_UNIT, 0) + 1 ! 0 is decraled to handle a case where *_UNIT <= -1.
  integer, parameter:: NEW_UNIT_MAX = huge(0)
  character(len = *), parameter:: ARRAY_DATA_FILE = 'data.bin'
  character(len = *), parameter:: ARRAY_META_FILE = 'meta.nml'
  character(len = *), parameter:: ARRAY_VERSION_FILE = 'version.dat'
  character(len = *), parameter:: ARRAY_DESCRIPTION_FILE = 'description.txt'
  character(len = *), parameter:: TMP_DIR = 'tmp'
  ! Non-intrinsic function `+' can not be used in initialization expression.
  character(len = *), parameter:: SHELL_INTERFACE_FILE = TMP_DIR // '/' // 'shell_interface.dat'

  interface new_unit
      module procedure new_unitIntegerDim0KindINT8
      module procedure new_unitIntegerDim0KindINT16
      module procedure new_unitIntegerDim0KindINT32
      module procedure new_unitIntegerDim0KindINT64
  end interface new_unit

    interface write_array
      module procedure write_arrayLogicalDim1
    end interface write_array

    interface read_array
      module procedure read_arrayLogicalDim1
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1LogicalDim1
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim1KindINT8
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim1KindINT8
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim1KindINT8
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim1KindINT16
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim1KindINT16
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim1KindINT16
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim1KindINT32
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim1KindINT32
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim1KindINT32
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim1KindINT64
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim1KindINT64
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim1KindINT64
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim2KindINT8
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim2KindINT8
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim2KindINT8
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim2KindINT16
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim2KindINT16
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim2KindINT16
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim2KindINT32
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim2KindINT32
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim2KindINT32
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim2KindINT64
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim2KindINT64
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim2KindINT64
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim3KindINT8
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim3KindINT8
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim3KindINT8
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim3KindINT16
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim3KindINT16
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim3KindINT16
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim3KindINT32
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim3KindINT32
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim3KindINT32
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim3KindINT64
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim3KindINT64
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim3KindINT64
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim4KindINT8
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim4KindINT8
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim4KindINT8
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim4KindINT16
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim4KindINT16
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim4KindINT16
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim4KindINT32
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim4KindINT32
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim4KindINT32
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim4KindINT64
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim4KindINT64
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim4KindINT64
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim5KindINT8
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim5KindINT8
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim5KindINT8
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim5KindINT16
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim5KindINT16
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim5KindINT16
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim5KindINT32
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim5KindINT32
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim5KindINT32
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim5KindINT64
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim5KindINT64
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim5KindINT64
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim6KindINT8
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim6KindINT8
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim6KindINT8
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim6KindINT16
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim6KindINT16
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim6KindINT16
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim6KindINT32
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim6KindINT32
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim6KindINT32
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim6KindINT64
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim6KindINT64
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim6KindINT64
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim7KindINT8
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim7KindINT8
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim7KindINT8
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim7KindINT16
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim7KindINT16
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim7KindINT16
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim7KindINT32
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim7KindINT32
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim7KindINT32
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayIntegerDim7KindINT64
    end interface write_array

    interface read_array
      module procedure read_arrayIntegerDim7KindINT64
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1IntegerDim7KindINT64
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayRealDim1KindREAL32
    end interface write_array

    interface read_array
      module procedure read_arrayRealDim1KindREAL32
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1RealDim1KindREAL32
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayRealDim1KindREAL64
    end interface write_array

    interface read_array
      module procedure read_arrayRealDim1KindREAL64
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1RealDim1KindREAL64
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayRealDim1KindREAL128
    end interface write_array

    interface read_array
      module procedure read_arrayRealDim1KindREAL128
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1RealDim1KindREAL128
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayRealDim2KindREAL32
    end interface write_array

    interface read_array
      module procedure read_arrayRealDim2KindREAL32
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1RealDim2KindREAL32
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayRealDim2KindREAL64
    end interface write_array

    interface read_array
      module procedure read_arrayRealDim2KindREAL64
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1RealDim2KindREAL64
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayRealDim2KindREAL128
    end interface write_array

    interface read_array
      module procedure read_arrayRealDim2KindREAL128
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1RealDim2KindREAL128
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayRealDim3KindREAL32
    end interface write_array

    interface read_array
      module procedure read_arrayRealDim3KindREAL32
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1RealDim3KindREAL32
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayRealDim3KindREAL64
    end interface write_array

    interface read_array
      module procedure read_arrayRealDim3KindREAL64
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1RealDim3KindREAL64
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayRealDim3KindREAL128
    end interface write_array

    interface read_array
      module procedure read_arrayRealDim3KindREAL128
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1RealDim3KindREAL128
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayRealDim4KindREAL32
    end interface write_array

    interface read_array
      module procedure read_arrayRealDim4KindREAL32
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1RealDim4KindREAL32
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayRealDim4KindREAL64
    end interface write_array

    interface read_array
      module procedure read_arrayRealDim4KindREAL64
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1RealDim4KindREAL64
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayRealDim4KindREAL128
    end interface write_array

    interface read_array
      module procedure read_arrayRealDim4KindREAL128
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1RealDim4KindREAL128
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayRealDim5KindREAL32
    end interface write_array

    interface read_array
      module procedure read_arrayRealDim5KindREAL32
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1RealDim5KindREAL32
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayRealDim5KindREAL64
    end interface write_array

    interface read_array
      module procedure read_arrayRealDim5KindREAL64
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1RealDim5KindREAL64
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayRealDim5KindREAL128
    end interface write_array

    interface read_array
      module procedure read_arrayRealDim5KindREAL128
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1RealDim5KindREAL128
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayRealDim6KindREAL32
    end interface write_array

    interface read_array
      module procedure read_arrayRealDim6KindREAL32
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1RealDim6KindREAL32
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayRealDim6KindREAL64
    end interface write_array

    interface read_array
      module procedure read_arrayRealDim6KindREAL64
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1RealDim6KindREAL64
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayRealDim6KindREAL128
    end interface write_array

    interface read_array
      module procedure read_arrayRealDim6KindREAL128
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1RealDim6KindREAL128
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayRealDim7KindREAL32
    end interface write_array

    interface read_array
      module procedure read_arrayRealDim7KindREAL32
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1RealDim7KindREAL32
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayRealDim7KindREAL64
    end interface write_array

    interface read_array
      module procedure read_arrayRealDim7KindREAL64
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1RealDim7KindREAL64
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayRealDim7KindREAL128
    end interface write_array

    interface read_array
      module procedure read_arrayRealDim7KindREAL128
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1RealDim7KindREAL128
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayComplexDim1KindREAL32
    end interface write_array

    interface read_array
      module procedure read_arrayComplexDim1KindREAL32
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1ComplexDim1KindREAL32
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayComplexDim1KindREAL64
    end interface write_array

    interface read_array
      module procedure read_arrayComplexDim1KindREAL64
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1ComplexDim1KindREAL64
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayComplexDim1KindREAL128
    end interface write_array

    interface read_array
      module procedure read_arrayComplexDim1KindREAL128
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1ComplexDim1KindREAL128
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayComplexDim2KindREAL32
    end interface write_array

    interface read_array
      module procedure read_arrayComplexDim2KindREAL32
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1ComplexDim2KindREAL32
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayComplexDim2KindREAL64
    end interface write_array

    interface read_array
      module procedure read_arrayComplexDim2KindREAL64
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1ComplexDim2KindREAL64
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayComplexDim2KindREAL128
    end interface write_array

    interface read_array
      module procedure read_arrayComplexDim2KindREAL128
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1ComplexDim2KindREAL128
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayComplexDim3KindREAL32
    end interface write_array

    interface read_array
      module procedure read_arrayComplexDim3KindREAL32
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1ComplexDim3KindREAL32
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayComplexDim3KindREAL64
    end interface write_array

    interface read_array
      module procedure read_arrayComplexDim3KindREAL64
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1ComplexDim3KindREAL64
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayComplexDim3KindREAL128
    end interface write_array

    interface read_array
      module procedure read_arrayComplexDim3KindREAL128
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1ComplexDim3KindREAL128
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayComplexDim4KindREAL32
    end interface write_array

    interface read_array
      module procedure read_arrayComplexDim4KindREAL32
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1ComplexDim4KindREAL32
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayComplexDim4KindREAL64
    end interface write_array

    interface read_array
      module procedure read_arrayComplexDim4KindREAL64
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1ComplexDim4KindREAL64
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayComplexDim4KindREAL128
    end interface write_array

    interface read_array
      module procedure read_arrayComplexDim4KindREAL128
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1ComplexDim4KindREAL128
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayComplexDim5KindREAL32
    end interface write_array

    interface read_array
      module procedure read_arrayComplexDim5KindREAL32
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1ComplexDim5KindREAL32
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayComplexDim5KindREAL64
    end interface write_array

    interface read_array
      module procedure read_arrayComplexDim5KindREAL64
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1ComplexDim5KindREAL64
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayComplexDim5KindREAL128
    end interface write_array

    interface read_array
      module procedure read_arrayComplexDim5KindREAL128
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1ComplexDim5KindREAL128
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayComplexDim6KindREAL32
    end interface write_array

    interface read_array
      module procedure read_arrayComplexDim6KindREAL32
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1ComplexDim6KindREAL32
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayComplexDim6KindREAL64
    end interface write_array

    interface read_array
      module procedure read_arrayComplexDim6KindREAL64
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1ComplexDim6KindREAL64
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayComplexDim6KindREAL128
    end interface write_array

    interface read_array
      module procedure read_arrayComplexDim6KindREAL128
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1ComplexDim6KindREAL128
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayComplexDim7KindREAL32
    end interface write_array

    interface read_array
      module procedure read_arrayComplexDim7KindREAL32
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1ComplexDim7KindREAL32
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayComplexDim7KindREAL64
    end interface write_array

    interface read_array
      module procedure read_arrayComplexDim7KindREAL64
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1ComplexDim7KindREAL64
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayComplexDim7KindREAL128
    end interface write_array

    interface read_array
      module procedure read_arrayComplexDim7KindREAL128
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1ComplexDim7KindREAL128
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayCharacterDim1LenAst
    end interface write_array

    interface read_array
      module procedure read_arrayCharacterDim1LenAst
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1CharacterDim1LenAst
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayCharacterDim2LenAst
    end interface write_array

    interface read_array
      module procedure read_arrayCharacterDim2LenAst
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1CharacterDim2LenAst
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayCharacterDim3LenAst
    end interface write_array

    interface read_array
      module procedure read_arrayCharacterDim3LenAst
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1CharacterDim3LenAst
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayCharacterDim4LenAst
    end interface write_array

    interface read_array
      module procedure read_arrayCharacterDim4LenAst
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1CharacterDim4LenAst
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayCharacterDim5LenAst
    end interface write_array

    interface read_array
      module procedure read_arrayCharacterDim5LenAst
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1CharacterDim5LenAst
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayCharacterDim6LenAst
    end interface write_array

    interface read_array
      module procedure read_arrayCharacterDim6LenAst
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1CharacterDim6LenAst
    end interface read_array_v_1
    interface write_array
      module procedure write_arrayCharacterDim7LenAst
    end interface write_array

    interface read_array
      module procedure read_arrayCharacterDim7LenAst
    end interface read_array

    interface read_array_v_1
      module procedure read_array_v_1CharacterDim7LenAst
    end interface read_array_v_1

contains

  subroutine init_shell_interface_file()
    call mkdir_p(TMP_DIR)
    call execute_command_line("cat /dev/null > " + SHELL_INTERFACE_FILE)
  end subroutine init_shell_interface_file

  ! YAGNI: this can easily expand to val for r, R, i, (0, 1), z, Z, and l.
  subroutine read_shell_interface_file(val)
    character(len = *), intent(out):: val

    integer:: ioU

    call new_unit(ioU)
    open(ioU, file = SHELL_INTERFACE_FILE, status = 'old', action = 'read')
    read(ioU, *) val
    close(ioU)
  end subroutine read_shell_interface_file

  subroutine tempfile(ioU, file)
    integer, intent(out):: ioU
    character(len = *), intent(out):: file

    call init_shell_interface_file()
    ! tempfile name must be quoted since '/' mark is regarded to be end of record (same as namelist).
    call execute_command_line('echo \"$(tempfile)\" > ' + SHELL_INTERFACE_FILE)
    call read_shell_interface_file(file)
    call new_unit(ioU)
    open(ioU, file = s(file), status = 'old', action = 'readwrite')
  end subroutine tempfile

  subroutine close_tempfile(ioU)
    integer, intent(in):: ioU

    close(ioU, status = 'delete')
  end subroutine close_tempfile

  subroutine mkdir_p(path, exitStatus)
    character(len = *) path
    integer, intent(out), optional:: exitStatus
    integer:: exitStatus_
    call execute_command_line("mkdir -p " + s(path), .true., exitStatus_)

    if(present(exitStatus))then
      exitStatus = exitStatus_
    elseif(exitStatus_ /= 0)then
      write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 948,'Failed to execute mkdir -p ', s(path); stop 1
    end if
  end subroutine mkdir_p

  ! @desc Return a size 2 array which contains (/numberOfLines, numberOfColumns/) of the file fileName.
  function file_shape(fileName, numberOfHeaders) result(this)
    integer(8):: this(1:2)
    character(len = *), intent(in):: fileName
    integer, intent(in), optional:: numberOfHeaders

    integer:: numberOfHeaders_

    numberOfHeaders_ = 0
    if(present(numberOfHeaders)) numberOfHeaders_ = numberOfHeaders

    this = (/number_of_lines(fileName) - numberOfHeaders_, number_of_columns(fileName, numberOfHeaders_)/)
  end function file_shape

  function number_of_lines(fileName) result(this)
    integer(8):: this
    character(len = *), intent(in):: fileName

    integer:: rU1, ios
    character:: dummy

    call new_unit(rU1)
    open(rU1, file = fileName, status = 'old', action = 'read', delim = 'quote')

    this = 0
    do
      read(rU1, *, iostat = ios) dummy
      if((is_iostat_eor(ios) .or. is_iostat_end(ios))) exit
      if(this >= huge(this))then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 980,"this >= huge(this)", " ", 'Line number too large.'; stop 1; end if

      this = this + 1
    end do
    close(rU1)
  end function number_of_lines

  ! @desc Return number of columns at line (numberOfHeaders + 1) in file fileName.
  ! @desc The line is separated by space and tabs character.
  ! @desc Quoted string containing space/tab characteres is not considared.
  function number_of_columns(fileName, numberOfHeaders) result(this)
    integer(8):: this
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
    this = 0
    call new_unit(rU1)
    open(rU1, file = fileName, status = 'old', action = 'read', delim = 'quote')
    do i = 1, numberOfHeaders_
      read(rU1, *)
    end do
    do
      read(rU1, '(a1)', advance = 'no', iostat = ios) c
      if((is_iostat_eor(ios) .or. is_iostat_end(ios)) .or. c == new_line('_')) exit

      select case(mode)
      case(SEEK_SEPARATOR)
        if(any(SEPARATORS == c)) mode = SEEK_NORMAL_CHAR
      case(SEEK_NORMAL_CHAR)
        if(.not.any(SEPARATORS == c))then
          if(this >= huge(this))then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1024,"this >= huge(this)", " ", "Column number too large."; stop 1; end if

          this = this + 1
          mode = SEEK_SEPARATOR
        end if
      end select
    end do
    close(rU1)
  end function number_of_columns

    subroutine write_arrayLogicalDim1(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Logical, dimension(:), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim1'
      integer, parameter:: DIM_FOR_SELF = 1

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayLogicalDim1

    subroutine read_arrayLogicalDim1(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Logical, dimension(:), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1099,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayLogicalDim1

    subroutine read_array_v_1LogicalDim1(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Logical, dimension(:), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'LogicalDim1'
      integer, parameter:: DIM_FOR_SELF = 1
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1119,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1120,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1LogicalDim1
    subroutine write_arrayIntegerDim1KindINT8(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT8), dimension(:), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim1KindINT8'
      integer, parameter:: DIM_FOR_SELF = 1

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim1KindINT8

    subroutine read_arrayIntegerDim1KindINT8(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT8), dimension(:), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1195,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim1KindINT8

    subroutine read_array_v_1IntegerDim1KindINT8(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT8), dimension(:), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim1KindINT8'
      integer, parameter:: DIM_FOR_SELF = 1
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1215,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1216,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim1KindINT8
    subroutine write_arrayIntegerDim1KindINT16(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT16), dimension(:), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim1KindINT16'
      integer, parameter:: DIM_FOR_SELF = 1

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim1KindINT16

    subroutine read_arrayIntegerDim1KindINT16(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT16), dimension(:), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1291,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim1KindINT16

    subroutine read_array_v_1IntegerDim1KindINT16(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT16), dimension(:), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim1KindINT16'
      integer, parameter:: DIM_FOR_SELF = 1
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1311,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1312,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim1KindINT16
    subroutine write_arrayIntegerDim1KindINT32(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT32), dimension(:), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim1KindINT32'
      integer, parameter:: DIM_FOR_SELF = 1

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim1KindINT32

    subroutine read_arrayIntegerDim1KindINT32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT32), dimension(:), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1387,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim1KindINT32

    subroutine read_array_v_1IntegerDim1KindINT32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT32), dimension(:), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim1KindINT32'
      integer, parameter:: DIM_FOR_SELF = 1
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1407,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1408,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim1KindINT32
    subroutine write_arrayIntegerDim1KindINT64(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT64), dimension(:), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim1KindINT64'
      integer, parameter:: DIM_FOR_SELF = 1

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim1KindINT64

    subroutine read_arrayIntegerDim1KindINT64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT64), dimension(:), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1483,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim1KindINT64

    subroutine read_array_v_1IntegerDim1KindINT64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT64), dimension(:), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim1KindINT64'
      integer, parameter:: DIM_FOR_SELF = 1
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1503,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1504,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim1KindINT64
    subroutine write_arrayIntegerDim2KindINT8(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT8), dimension(:, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim2KindINT8'
      integer, parameter:: DIM_FOR_SELF = 2

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim2KindINT8

    subroutine read_arrayIntegerDim2KindINT8(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT8), dimension(:, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1579,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim2KindINT8

    subroutine read_array_v_1IntegerDim2KindINT8(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT8), dimension(:, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim2KindINT8'
      integer, parameter:: DIM_FOR_SELF = 2
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1599,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1600,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim2KindINT8
    subroutine write_arrayIntegerDim2KindINT16(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT16), dimension(:, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim2KindINT16'
      integer, parameter:: DIM_FOR_SELF = 2

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim2KindINT16

    subroutine read_arrayIntegerDim2KindINT16(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT16), dimension(:, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1675,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim2KindINT16

    subroutine read_array_v_1IntegerDim2KindINT16(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT16), dimension(:, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim2KindINT16'
      integer, parameter:: DIM_FOR_SELF = 2
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1695,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1696,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim2KindINT16
    subroutine write_arrayIntegerDim2KindINT32(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT32), dimension(:, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim2KindINT32'
      integer, parameter:: DIM_FOR_SELF = 2

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim2KindINT32

    subroutine read_arrayIntegerDim2KindINT32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT32), dimension(:, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1771,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim2KindINT32

    subroutine read_array_v_1IntegerDim2KindINT32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT32), dimension(:, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim2KindINT32'
      integer, parameter:: DIM_FOR_SELF = 2
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1791,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1792,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim2KindINT32
    subroutine write_arrayIntegerDim2KindINT64(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT64), dimension(:, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim2KindINT64'
      integer, parameter:: DIM_FOR_SELF = 2

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim2KindINT64

    subroutine read_arrayIntegerDim2KindINT64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT64), dimension(:, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1867,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim2KindINT64

    subroutine read_array_v_1IntegerDim2KindINT64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT64), dimension(:, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim2KindINT64'
      integer, parameter:: DIM_FOR_SELF = 2
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1887,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1888,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim2KindINT64
    subroutine write_arrayIntegerDim3KindINT8(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT8), dimension(:, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim3KindINT8'
      integer, parameter:: DIM_FOR_SELF = 3

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim3KindINT8

    subroutine read_arrayIntegerDim3KindINT8(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT8), dimension(:, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1963,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim3KindINT8

    subroutine read_array_v_1IntegerDim3KindINT8(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT8), dimension(:, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim3KindINT8'
      integer, parameter:: DIM_FOR_SELF = 3
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1983,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 1984,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim3KindINT8
    subroutine write_arrayIntegerDim3KindINT16(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT16), dimension(:, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim3KindINT16'
      integer, parameter:: DIM_FOR_SELF = 3

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim3KindINT16

    subroutine read_arrayIntegerDim3KindINT16(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT16), dimension(:, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2059,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim3KindINT16

    subroutine read_array_v_1IntegerDim3KindINT16(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT16), dimension(:, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim3KindINT16'
      integer, parameter:: DIM_FOR_SELF = 3
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2079,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2080,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim3KindINT16
    subroutine write_arrayIntegerDim3KindINT32(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT32), dimension(:, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim3KindINT32'
      integer, parameter:: DIM_FOR_SELF = 3

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim3KindINT32

    subroutine read_arrayIntegerDim3KindINT32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT32), dimension(:, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2155,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim3KindINT32

    subroutine read_array_v_1IntegerDim3KindINT32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT32), dimension(:, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim3KindINT32'
      integer, parameter:: DIM_FOR_SELF = 3
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2175,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2176,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim3KindINT32
    subroutine write_arrayIntegerDim3KindINT64(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT64), dimension(:, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim3KindINT64'
      integer, parameter:: DIM_FOR_SELF = 3

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim3KindINT64

    subroutine read_arrayIntegerDim3KindINT64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT64), dimension(:, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2251,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim3KindINT64

    subroutine read_array_v_1IntegerDim3KindINT64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT64), dimension(:, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim3KindINT64'
      integer, parameter:: DIM_FOR_SELF = 3
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2271,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2272,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim3KindINT64
    subroutine write_arrayIntegerDim4KindINT8(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT8), dimension(:, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim4KindINT8'
      integer, parameter:: DIM_FOR_SELF = 4

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim4KindINT8

    subroutine read_arrayIntegerDim4KindINT8(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT8), dimension(:, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2347,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim4KindINT8

    subroutine read_array_v_1IntegerDim4KindINT8(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT8), dimension(:, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim4KindINT8'
      integer, parameter:: DIM_FOR_SELF = 4
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2367,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2368,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim4KindINT8
    subroutine write_arrayIntegerDim4KindINT16(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT16), dimension(:, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim4KindINT16'
      integer, parameter:: DIM_FOR_SELF = 4

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim4KindINT16

    subroutine read_arrayIntegerDim4KindINT16(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT16), dimension(:, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2443,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim4KindINT16

    subroutine read_array_v_1IntegerDim4KindINT16(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT16), dimension(:, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim4KindINT16'
      integer, parameter:: DIM_FOR_SELF = 4
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2463,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2464,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim4KindINT16
    subroutine write_arrayIntegerDim4KindINT32(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT32), dimension(:, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim4KindINT32'
      integer, parameter:: DIM_FOR_SELF = 4

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim4KindINT32

    subroutine read_arrayIntegerDim4KindINT32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT32), dimension(:, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2539,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim4KindINT32

    subroutine read_array_v_1IntegerDim4KindINT32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT32), dimension(:, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim4KindINT32'
      integer, parameter:: DIM_FOR_SELF = 4
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2559,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2560,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim4KindINT32
    subroutine write_arrayIntegerDim4KindINT64(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT64), dimension(:, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim4KindINT64'
      integer, parameter:: DIM_FOR_SELF = 4

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim4KindINT64

    subroutine read_arrayIntegerDim4KindINT64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT64), dimension(:, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2635,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim4KindINT64

    subroutine read_array_v_1IntegerDim4KindINT64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT64), dimension(:, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim4KindINT64'
      integer, parameter:: DIM_FOR_SELF = 4
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2655,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2656,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim4KindINT64
    subroutine write_arrayIntegerDim5KindINT8(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT8), dimension(:, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim5KindINT8'
      integer, parameter:: DIM_FOR_SELF = 5

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim5KindINT8

    subroutine read_arrayIntegerDim5KindINT8(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT8), dimension(:, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2731,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim5KindINT8

    subroutine read_array_v_1IntegerDim5KindINT8(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT8), dimension(:, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim5KindINT8'
      integer, parameter:: DIM_FOR_SELF = 5
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2751,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2752,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim5KindINT8
    subroutine write_arrayIntegerDim5KindINT16(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT16), dimension(:, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim5KindINT16'
      integer, parameter:: DIM_FOR_SELF = 5

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim5KindINT16

    subroutine read_arrayIntegerDim5KindINT16(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT16), dimension(:, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2827,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim5KindINT16

    subroutine read_array_v_1IntegerDim5KindINT16(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT16), dimension(:, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim5KindINT16'
      integer, parameter:: DIM_FOR_SELF = 5
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2847,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2848,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim5KindINT16
    subroutine write_arrayIntegerDim5KindINT32(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT32), dimension(:, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim5KindINT32'
      integer, parameter:: DIM_FOR_SELF = 5

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim5KindINT32

    subroutine read_arrayIntegerDim5KindINT32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT32), dimension(:, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2923,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim5KindINT32

    subroutine read_array_v_1IntegerDim5KindINT32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT32), dimension(:, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim5KindINT32'
      integer, parameter:: DIM_FOR_SELF = 5
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2943,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 2944,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim5KindINT32
    subroutine write_arrayIntegerDim5KindINT64(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT64), dimension(:, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim5KindINT64'
      integer, parameter:: DIM_FOR_SELF = 5

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim5KindINT64

    subroutine read_arrayIntegerDim5KindINT64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT64), dimension(:, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3019,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim5KindINT64

    subroutine read_array_v_1IntegerDim5KindINT64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT64), dimension(:, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim5KindINT64'
      integer, parameter:: DIM_FOR_SELF = 5
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3039,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3040,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim5KindINT64
    subroutine write_arrayIntegerDim6KindINT8(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT8), dimension(:, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim6KindINT8'
      integer, parameter:: DIM_FOR_SELF = 6

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim6KindINT8

    subroutine read_arrayIntegerDim6KindINT8(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT8), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3115,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim6KindINT8

    subroutine read_array_v_1IntegerDim6KindINT8(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT8), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim6KindINT8'
      integer, parameter:: DIM_FOR_SELF = 6
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3135,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3136,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim6KindINT8
    subroutine write_arrayIntegerDim6KindINT16(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT16), dimension(:, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim6KindINT16'
      integer, parameter:: DIM_FOR_SELF = 6

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim6KindINT16

    subroutine read_arrayIntegerDim6KindINT16(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT16), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3211,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim6KindINT16

    subroutine read_array_v_1IntegerDim6KindINT16(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT16), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim6KindINT16'
      integer, parameter:: DIM_FOR_SELF = 6
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3231,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3232,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim6KindINT16
    subroutine write_arrayIntegerDim6KindINT32(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT32), dimension(:, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim6KindINT32'
      integer, parameter:: DIM_FOR_SELF = 6

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim6KindINT32

    subroutine read_arrayIntegerDim6KindINT32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT32), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3307,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim6KindINT32

    subroutine read_array_v_1IntegerDim6KindINT32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT32), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim6KindINT32'
      integer, parameter:: DIM_FOR_SELF = 6
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3327,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3328,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim6KindINT32
    subroutine write_arrayIntegerDim6KindINT64(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT64), dimension(:, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim6KindINT64'
      integer, parameter:: DIM_FOR_SELF = 6

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim6KindINT64

    subroutine read_arrayIntegerDim6KindINT64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT64), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3403,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim6KindINT64

    subroutine read_array_v_1IntegerDim6KindINT64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT64), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim6KindINT64'
      integer, parameter:: DIM_FOR_SELF = 6
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3423,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3424,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim6KindINT64
    subroutine write_arrayIntegerDim7KindINT8(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT8), dimension(:, :, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim7KindINT8'
      integer, parameter:: DIM_FOR_SELF = 7

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim7KindINT8

    subroutine read_arrayIntegerDim7KindINT8(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT8), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3499,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim7KindINT8

    subroutine read_array_v_1IntegerDim7KindINT8(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT8), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim7KindINT8'
      integer, parameter:: DIM_FOR_SELF = 7
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3519,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3520,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim7KindINT8
    subroutine write_arrayIntegerDim7KindINT16(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT16), dimension(:, :, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim7KindINT16'
      integer, parameter:: DIM_FOR_SELF = 7

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim7KindINT16

    subroutine read_arrayIntegerDim7KindINT16(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT16), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3595,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim7KindINT16

    subroutine read_array_v_1IntegerDim7KindINT16(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT16), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim7KindINT16'
      integer, parameter:: DIM_FOR_SELF = 7
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3615,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3616,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim7KindINT16
    subroutine write_arrayIntegerDim7KindINT32(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT32), dimension(:, :, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim7KindINT32'
      integer, parameter:: DIM_FOR_SELF = 7

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim7KindINT32

    subroutine read_arrayIntegerDim7KindINT32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT32), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3691,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim7KindINT32

    subroutine read_array_v_1IntegerDim7KindINT32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT32), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim7KindINT32'
      integer, parameter:: DIM_FOR_SELF = 7
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3711,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3712,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim7KindINT32
    subroutine write_arrayIntegerDim7KindINT64(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT64), dimension(:, :, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim7KindINT64'
      integer, parameter:: DIM_FOR_SELF = 7

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayIntegerDim7KindINT64

    subroutine read_arrayIntegerDim7KindINT64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT64), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3787,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayIntegerDim7KindINT64

    subroutine read_array_v_1IntegerDim7KindINT64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Integer(kind = INT64), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'IntegerDim7KindINT64'
      integer, parameter:: DIM_FOR_SELF = 7
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3807,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3808,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1IntegerDim7KindINT64
    subroutine write_arrayRealDim1KindREAL32(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL32), dimension(:), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim1KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 1

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayRealDim1KindREAL32

    subroutine read_arrayRealDim1KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL32), dimension(:), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3883,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayRealDim1KindREAL32

    subroutine read_array_v_1RealDim1KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL32), dimension(:), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim1KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 1
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3903,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3904,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1RealDim1KindREAL32
    subroutine write_arrayRealDim1KindREAL64(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL64), dimension(:), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim1KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 1

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayRealDim1KindREAL64

    subroutine read_arrayRealDim1KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL64), dimension(:), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3979,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayRealDim1KindREAL64

    subroutine read_array_v_1RealDim1KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL64), dimension(:), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim1KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 1
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 3999,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4000,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1RealDim1KindREAL64
    subroutine write_arrayRealDim1KindREAL128(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL128), dimension(:), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim1KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 1

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayRealDim1KindREAL128

    subroutine read_arrayRealDim1KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL128), dimension(:), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4075,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayRealDim1KindREAL128

    subroutine read_array_v_1RealDim1KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL128), dimension(:), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim1KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 1
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4095,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4096,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1RealDim1KindREAL128
    subroutine write_arrayRealDim2KindREAL32(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL32), dimension(:, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim2KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 2

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayRealDim2KindREAL32

    subroutine read_arrayRealDim2KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL32), dimension(:, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4171,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayRealDim2KindREAL32

    subroutine read_array_v_1RealDim2KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL32), dimension(:, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim2KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 2
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4191,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4192,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1RealDim2KindREAL32
    subroutine write_arrayRealDim2KindREAL64(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL64), dimension(:, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim2KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 2

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayRealDim2KindREAL64

    subroutine read_arrayRealDim2KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL64), dimension(:, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4267,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayRealDim2KindREAL64

    subroutine read_array_v_1RealDim2KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL64), dimension(:, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim2KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 2
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4287,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4288,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1RealDim2KindREAL64
    subroutine write_arrayRealDim2KindREAL128(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL128), dimension(:, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim2KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 2

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayRealDim2KindREAL128

    subroutine read_arrayRealDim2KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL128), dimension(:, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4363,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayRealDim2KindREAL128

    subroutine read_array_v_1RealDim2KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL128), dimension(:, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim2KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 2
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4383,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4384,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1RealDim2KindREAL128
    subroutine write_arrayRealDim3KindREAL32(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL32), dimension(:, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim3KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 3

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayRealDim3KindREAL32

    subroutine read_arrayRealDim3KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL32), dimension(:, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4459,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayRealDim3KindREAL32

    subroutine read_array_v_1RealDim3KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL32), dimension(:, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim3KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 3
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4479,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4480,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1RealDim3KindREAL32
    subroutine write_arrayRealDim3KindREAL64(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL64), dimension(:, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim3KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 3

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayRealDim3KindREAL64

    subroutine read_arrayRealDim3KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL64), dimension(:, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4555,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayRealDim3KindREAL64

    subroutine read_array_v_1RealDim3KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL64), dimension(:, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim3KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 3
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4575,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4576,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1RealDim3KindREAL64
    subroutine write_arrayRealDim3KindREAL128(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL128), dimension(:, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim3KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 3

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayRealDim3KindREAL128

    subroutine read_arrayRealDim3KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL128), dimension(:, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4651,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayRealDim3KindREAL128

    subroutine read_array_v_1RealDim3KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL128), dimension(:, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim3KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 3
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4671,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4672,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1RealDim3KindREAL128
    subroutine write_arrayRealDim4KindREAL32(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL32), dimension(:, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim4KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 4

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayRealDim4KindREAL32

    subroutine read_arrayRealDim4KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL32), dimension(:, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4747,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayRealDim4KindREAL32

    subroutine read_array_v_1RealDim4KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL32), dimension(:, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim4KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 4
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4767,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4768,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1RealDim4KindREAL32
    subroutine write_arrayRealDim4KindREAL64(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL64), dimension(:, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim4KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 4

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayRealDim4KindREAL64

    subroutine read_arrayRealDim4KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL64), dimension(:, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4843,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayRealDim4KindREAL64

    subroutine read_array_v_1RealDim4KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL64), dimension(:, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim4KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 4
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4863,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4864,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1RealDim4KindREAL64
    subroutine write_arrayRealDim4KindREAL128(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL128), dimension(:, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim4KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 4

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayRealDim4KindREAL128

    subroutine read_arrayRealDim4KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL128), dimension(:, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4939,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayRealDim4KindREAL128

    subroutine read_array_v_1RealDim4KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL128), dimension(:, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim4KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 4
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4959,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 4960,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1RealDim4KindREAL128
    subroutine write_arrayRealDim5KindREAL32(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL32), dimension(:, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim5KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 5

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayRealDim5KindREAL32

    subroutine read_arrayRealDim5KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL32), dimension(:, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5035,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayRealDim5KindREAL32

    subroutine read_array_v_1RealDim5KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL32), dimension(:, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim5KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 5
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5055,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5056,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1RealDim5KindREAL32
    subroutine write_arrayRealDim5KindREAL64(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL64), dimension(:, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim5KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 5

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayRealDim5KindREAL64

    subroutine read_arrayRealDim5KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL64), dimension(:, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5131,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayRealDim5KindREAL64

    subroutine read_array_v_1RealDim5KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL64), dimension(:, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim5KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 5
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5151,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5152,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1RealDim5KindREAL64
    subroutine write_arrayRealDim5KindREAL128(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL128), dimension(:, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim5KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 5

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayRealDim5KindREAL128

    subroutine read_arrayRealDim5KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL128), dimension(:, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5227,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayRealDim5KindREAL128

    subroutine read_array_v_1RealDim5KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL128), dimension(:, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim5KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 5
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5247,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5248,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1RealDim5KindREAL128
    subroutine write_arrayRealDim6KindREAL32(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL32), dimension(:, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim6KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 6

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayRealDim6KindREAL32

    subroutine read_arrayRealDim6KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL32), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5323,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayRealDim6KindREAL32

    subroutine read_array_v_1RealDim6KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL32), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim6KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 6
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5343,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5344,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1RealDim6KindREAL32
    subroutine write_arrayRealDim6KindREAL64(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL64), dimension(:, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim6KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 6

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayRealDim6KindREAL64

    subroutine read_arrayRealDim6KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL64), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5419,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayRealDim6KindREAL64

    subroutine read_array_v_1RealDim6KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL64), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim6KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 6
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5439,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5440,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1RealDim6KindREAL64
    subroutine write_arrayRealDim6KindREAL128(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL128), dimension(:, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim6KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 6

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayRealDim6KindREAL128

    subroutine read_arrayRealDim6KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL128), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5515,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayRealDim6KindREAL128

    subroutine read_array_v_1RealDim6KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL128), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim6KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 6
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5535,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5536,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1RealDim6KindREAL128
    subroutine write_arrayRealDim7KindREAL32(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL32), dimension(:, :, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim7KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 7

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayRealDim7KindREAL32

    subroutine read_arrayRealDim7KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL32), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5611,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayRealDim7KindREAL32

    subroutine read_array_v_1RealDim7KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL32), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim7KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 7
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5631,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5632,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1RealDim7KindREAL32
    subroutine write_arrayRealDim7KindREAL64(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL64), dimension(:, :, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim7KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 7

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayRealDim7KindREAL64

    subroutine read_arrayRealDim7KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL64), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5707,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayRealDim7KindREAL64

    subroutine read_array_v_1RealDim7KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL64), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim7KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 7
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5727,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5728,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1RealDim7KindREAL64
    subroutine write_arrayRealDim7KindREAL128(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL128), dimension(:, :, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim7KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 7

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayRealDim7KindREAL128

    subroutine read_arrayRealDim7KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL128), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5803,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayRealDim7KindREAL128

    subroutine read_array_v_1RealDim7KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Real(kind = REAL128), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'RealDim7KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 7
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5823,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5824,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1RealDim7KindREAL128
    subroutine write_arrayComplexDim1KindREAL32(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL32), dimension(:), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim1KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 1

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayComplexDim1KindREAL32

    subroutine read_arrayComplexDim1KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL32), dimension(:), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5899,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayComplexDim1KindREAL32

    subroutine read_array_v_1ComplexDim1KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL32), dimension(:), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim1KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 1
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5919,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5920,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1ComplexDim1KindREAL32
    subroutine write_arrayComplexDim1KindREAL64(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL64), dimension(:), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim1KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 1

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayComplexDim1KindREAL64

    subroutine read_arrayComplexDim1KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL64), dimension(:), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 5995,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayComplexDim1KindREAL64

    subroutine read_array_v_1ComplexDim1KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL64), dimension(:), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim1KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 1
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6015,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6016,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1ComplexDim1KindREAL64
    subroutine write_arrayComplexDim1KindREAL128(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL128), dimension(:), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim1KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 1

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayComplexDim1KindREAL128

    subroutine read_arrayComplexDim1KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL128), dimension(:), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6091,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayComplexDim1KindREAL128

    subroutine read_array_v_1ComplexDim1KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL128), dimension(:), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim1KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 1
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6111,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6112,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1ComplexDim1KindREAL128
    subroutine write_arrayComplexDim2KindREAL32(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL32), dimension(:, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim2KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 2

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayComplexDim2KindREAL32

    subroutine read_arrayComplexDim2KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL32), dimension(:, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6187,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayComplexDim2KindREAL32

    subroutine read_array_v_1ComplexDim2KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL32), dimension(:, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim2KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 2
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6207,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6208,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1ComplexDim2KindREAL32
    subroutine write_arrayComplexDim2KindREAL64(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL64), dimension(:, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim2KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 2

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayComplexDim2KindREAL64

    subroutine read_arrayComplexDim2KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL64), dimension(:, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6283,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayComplexDim2KindREAL64

    subroutine read_array_v_1ComplexDim2KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL64), dimension(:, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim2KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 2
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6303,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6304,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1ComplexDim2KindREAL64
    subroutine write_arrayComplexDim2KindREAL128(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL128), dimension(:, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim2KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 2

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayComplexDim2KindREAL128

    subroutine read_arrayComplexDim2KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL128), dimension(:, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6379,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayComplexDim2KindREAL128

    subroutine read_array_v_1ComplexDim2KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL128), dimension(:, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim2KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 2
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6399,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6400,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1ComplexDim2KindREAL128
    subroutine write_arrayComplexDim3KindREAL32(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL32), dimension(:, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim3KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 3

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayComplexDim3KindREAL32

    subroutine read_arrayComplexDim3KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL32), dimension(:, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6475,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayComplexDim3KindREAL32

    subroutine read_array_v_1ComplexDim3KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL32), dimension(:, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim3KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 3
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6495,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6496,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1ComplexDim3KindREAL32
    subroutine write_arrayComplexDim3KindREAL64(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL64), dimension(:, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim3KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 3

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayComplexDim3KindREAL64

    subroutine read_arrayComplexDim3KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL64), dimension(:, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6571,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayComplexDim3KindREAL64

    subroutine read_array_v_1ComplexDim3KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL64), dimension(:, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim3KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 3
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6591,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6592,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1ComplexDim3KindREAL64
    subroutine write_arrayComplexDim3KindREAL128(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL128), dimension(:, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim3KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 3

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayComplexDim3KindREAL128

    subroutine read_arrayComplexDim3KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL128), dimension(:, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6667,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayComplexDim3KindREAL128

    subroutine read_array_v_1ComplexDim3KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL128), dimension(:, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim3KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 3
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6687,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6688,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1ComplexDim3KindREAL128
    subroutine write_arrayComplexDim4KindREAL32(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL32), dimension(:, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim4KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 4

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayComplexDim4KindREAL32

    subroutine read_arrayComplexDim4KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL32), dimension(:, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6763,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayComplexDim4KindREAL32

    subroutine read_array_v_1ComplexDim4KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL32), dimension(:, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim4KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 4
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6783,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6784,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1ComplexDim4KindREAL32
    subroutine write_arrayComplexDim4KindREAL64(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL64), dimension(:, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim4KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 4

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayComplexDim4KindREAL64

    subroutine read_arrayComplexDim4KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL64), dimension(:, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6859,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayComplexDim4KindREAL64

    subroutine read_array_v_1ComplexDim4KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL64), dimension(:, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim4KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 4
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6879,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6880,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1ComplexDim4KindREAL64
    subroutine write_arrayComplexDim4KindREAL128(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL128), dimension(:, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim4KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 4

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayComplexDim4KindREAL128

    subroutine read_arrayComplexDim4KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL128), dimension(:, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6955,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayComplexDim4KindREAL128

    subroutine read_array_v_1ComplexDim4KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL128), dimension(:, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim4KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 4
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6975,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 6976,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1ComplexDim4KindREAL128
    subroutine write_arrayComplexDim5KindREAL32(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL32), dimension(:, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim5KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 5

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayComplexDim5KindREAL32

    subroutine read_arrayComplexDim5KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL32), dimension(:, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7051,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayComplexDim5KindREAL32

    subroutine read_array_v_1ComplexDim5KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL32), dimension(:, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim5KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 5
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7071,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7072,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1ComplexDim5KindREAL32
    subroutine write_arrayComplexDim5KindREAL64(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL64), dimension(:, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim5KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 5

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayComplexDim5KindREAL64

    subroutine read_arrayComplexDim5KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL64), dimension(:, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7147,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayComplexDim5KindREAL64

    subroutine read_array_v_1ComplexDim5KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL64), dimension(:, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim5KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 5
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7167,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7168,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1ComplexDim5KindREAL64
    subroutine write_arrayComplexDim5KindREAL128(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL128), dimension(:, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim5KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 5

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayComplexDim5KindREAL128

    subroutine read_arrayComplexDim5KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL128), dimension(:, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7243,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayComplexDim5KindREAL128

    subroutine read_array_v_1ComplexDim5KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL128), dimension(:, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim5KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 5
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7263,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7264,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1ComplexDim5KindREAL128
    subroutine write_arrayComplexDim6KindREAL32(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL32), dimension(:, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim6KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 6

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayComplexDim6KindREAL32

    subroutine read_arrayComplexDim6KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL32), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7339,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayComplexDim6KindREAL32

    subroutine read_array_v_1ComplexDim6KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL32), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim6KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 6
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7359,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7360,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1ComplexDim6KindREAL32
    subroutine write_arrayComplexDim6KindREAL64(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL64), dimension(:, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim6KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 6

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayComplexDim6KindREAL64

    subroutine read_arrayComplexDim6KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL64), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7435,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayComplexDim6KindREAL64

    subroutine read_array_v_1ComplexDim6KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL64), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim6KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 6
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7455,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7456,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1ComplexDim6KindREAL64
    subroutine write_arrayComplexDim6KindREAL128(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL128), dimension(:, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim6KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 6

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayComplexDim6KindREAL128

    subroutine read_arrayComplexDim6KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL128), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7531,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayComplexDim6KindREAL128

    subroutine read_array_v_1ComplexDim6KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL128), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim6KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 6
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7551,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7552,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1ComplexDim6KindREAL128
    subroutine write_arrayComplexDim7KindREAL32(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL32), dimension(:, :, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim7KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 7

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayComplexDim7KindREAL32

    subroutine read_arrayComplexDim7KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL32), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7627,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayComplexDim7KindREAL32

    subroutine read_array_v_1ComplexDim7KindREAL32(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL32), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim7KindREAL32'
      integer, parameter:: DIM_FOR_SELF = 7
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7647,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7648,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1ComplexDim7KindREAL32
    subroutine write_arrayComplexDim7KindREAL64(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL64), dimension(:, :, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim7KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 7

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayComplexDim7KindREAL64

    subroutine read_arrayComplexDim7KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL64), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7723,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayComplexDim7KindREAL64

    subroutine read_array_v_1ComplexDim7KindREAL64(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL64), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim7KindREAL64'
      integer, parameter:: DIM_FOR_SELF = 7
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7743,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7744,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1ComplexDim7KindREAL64
    subroutine write_arrayComplexDim7KindREAL128(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL128), dimension(:, :, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim7KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 7

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayComplexDim7KindREAL128

    subroutine read_arrayComplexDim7KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL128), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7819,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayComplexDim7KindREAL128

    subroutine read_array_v_1ComplexDim7KindREAL128(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Complex(kind = REAL128), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'ComplexDim7KindREAL128'
      integer, parameter:: DIM_FOR_SELF = 7
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7839,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7840,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1ComplexDim7KindREAL128
    subroutine write_arrayCharacterDim1LenAst(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Character(len = *), dimension(:), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim1LenAst'
      integer, parameter:: DIM_FOR_SELF = 1

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayCharacterDim1LenAst

    subroutine read_arrayCharacterDim1LenAst(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Character(len = *), dimension(:), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7915,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayCharacterDim1LenAst

    subroutine read_array_v_1CharacterDim1LenAst(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Character(len = *), dimension(:), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim1LenAst'
      integer, parameter:: DIM_FOR_SELF = 1
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7935,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 7936,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1CharacterDim1LenAst
    subroutine write_arrayCharacterDim2LenAst(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Character(len = *), dimension(:, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim2LenAst'
      integer, parameter:: DIM_FOR_SELF = 2

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayCharacterDim2LenAst

    subroutine read_arrayCharacterDim2LenAst(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Character(len = *), dimension(:, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8011,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayCharacterDim2LenAst

    subroutine read_array_v_1CharacterDim2LenAst(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Character(len = *), dimension(:, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim2LenAst'
      integer, parameter:: DIM_FOR_SELF = 2
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8031,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8032,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1CharacterDim2LenAst
    subroutine write_arrayCharacterDim3LenAst(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Character(len = *), dimension(:, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim3LenAst'
      integer, parameter:: DIM_FOR_SELF = 3

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayCharacterDim3LenAst

    subroutine read_arrayCharacterDim3LenAst(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Character(len = *), dimension(:, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8107,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayCharacterDim3LenAst

    subroutine read_array_v_1CharacterDim3LenAst(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Character(len = *), dimension(:, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim3LenAst'
      integer, parameter:: DIM_FOR_SELF = 3
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8127,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8128,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1CharacterDim3LenAst
    subroutine write_arrayCharacterDim4LenAst(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Character(len = *), dimension(:, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim4LenAst'
      integer, parameter:: DIM_FOR_SELF = 4

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayCharacterDim4LenAst

    subroutine read_arrayCharacterDim4LenAst(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Character(len = *), dimension(:, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8203,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayCharacterDim4LenAst

    subroutine read_array_v_1CharacterDim4LenAst(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Character(len = *), dimension(:, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim4LenAst'
      integer, parameter:: DIM_FOR_SELF = 4
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8223,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8224,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1CharacterDim4LenAst
    subroutine write_arrayCharacterDim5LenAst(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Character(len = *), dimension(:, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim5LenAst'
      integer, parameter:: DIM_FOR_SELF = 5

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayCharacterDim5LenAst

    subroutine read_arrayCharacterDim5LenAst(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Character(len = *), dimension(:, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8299,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayCharacterDim5LenAst

    subroutine read_array_v_1CharacterDim5LenAst(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Character(len = *), dimension(:, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim5LenAst'
      integer, parameter:: DIM_FOR_SELF = 5
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8319,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8320,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1CharacterDim5LenAst
    subroutine write_arrayCharacterDim6LenAst(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Character(len = *), dimension(:, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim6LenAst'
      integer, parameter:: DIM_FOR_SELF = 6

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayCharacterDim6LenAst

    subroutine read_arrayCharacterDim6LenAst(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Character(len = *), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8395,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayCharacterDim6LenAst

    subroutine read_array_v_1CharacterDim6LenAst(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Character(len = *), dimension(:, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim6LenAst'
      integer, parameter:: DIM_FOR_SELF = 6
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8415,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8416,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1CharacterDim6LenAst
    subroutine write_arrayCharacterDim7LenAst(arrayDir, array, desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10)
      character(len = *), intent(in):: arrayDir
      Character(len = *), dimension(:, :, :, :, :, :, :), intent(in):: array
        character(len = *), intent(in), optional:: desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9, desc10

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim7LenAst'
      integer, parameter:: DIM_FOR_SELF = 7

      character(len = len(DATA_TYPE_FOR_SELF)) dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: wU1
      integer:: i

      namelist /array_meta/ dataType, dim, sizes

      call mkdir_p(s(arrayDir))

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'replace', action = 'write')
      write(wU1, *) VERSION
      close(wU1)

      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'replace', action = 'write', form = 'unformatted', access = 'stream')
      write(wU1) array
      close(wU1)

      dataType = DATA_TYPE_FOR_SELF
      dim = DIM_FOR_SELF
      forall(i = 1:dim) sizes(i) = size(array, i)
      call new_unit(wU1)
      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'replace', action = 'write', delim = 'quote')
      write(wU1, nml = array_meta)
      close(wU1)

      open(unit = wU1, file = s(arrayDir) + '/' + ARRAY_DESCRIPTION_FILE, status = 'replace', action = 'write')
        if(present(desc1)) write(wU1, *) desc1
        if(present(desc2)) write(wU1, *) desc2
        if(present(desc3)) write(wU1, *) desc3
        if(present(desc4)) write(wU1, *) desc4
        if(present(desc5)) write(wU1, *) desc5
        if(present(desc6)) write(wU1, *) desc6
        if(present(desc7)) write(wU1, *) desc7
        if(present(desc8)) write(wU1, *) desc8
        if(present(desc9)) write(wU1, *) desc9
        if(present(desc10)) write(wU1, *) desc10
      close(wU1)
    end subroutine write_arrayCharacterDim7LenAst

    subroutine read_arrayCharacterDim7LenAst(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Character(len = *), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      integer:: rU1, libIoVersion

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_VERSION_FILE, status = 'old', action = 'read')
      read(rU1, *) libIoVersion
      close(rU1)

      select case(libIoVersion)
      case(1)
        call read_array_v_1(arrayDir, array)
      case default
        write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8491,'Unsupported version: ', libIoVersion; stop 1
      end select
    end subroutine read_arrayCharacterDim7LenAst

    subroutine read_array_v_1CharacterDim7LenAst(arrayDir, array)
      character(len = *), intent(in):: arrayDir
      Character(len = *), dimension(:, :, :, :, :, :, :), intent(out), allocatable:: array

      character(len = *), parameter:: DATA_TYPE_FOR_SELF = 'CharacterDim7LenAst'
      integer, parameter:: DIM_FOR_SELF = 7
      character(len = 22):: dataType
      integer:: dim
      integer:: sizes(1:DIM_FOR_SELF)
      integer:: rU1
      namelist /array_meta/ dataType, dim, sizes

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_META_FILE, status = 'old', action = 'read', delim = 'quote')
      read(rU1, nml = array_meta)

      if(s(dataType) /= DATA_TYPE_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8511,"s(dataType) /= DATA_TYPE_FOR_SELF", " ", 'Expected: ', DATA_TYPE_FOR_SELF, ' Got: ', s(dataType), ' for ', s(arrayDir); stop 1; end if
      if(dim /= DIM_FOR_SELF)then; write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8512,"dim /= DIM_FOR_SELF", " ", 'Expected: ', DIM_FOR_SELF, ' ', ' Got: ', dim, ' for ', s(arrayDir); stop 1; end if

      close(rU1)

      allocate(array(1:sizes(1), 1:sizes(2), 1:sizes(3), 1:sizes(4), 1:sizes(5), 1:sizes(6), 1:sizes(7)))

      call new_unit(rU1)
      open(unit = rU1, file = s(arrayDir) + '/' + ARRAY_DATA_FILE, status = 'old', action = 'read', form = 'unformatted', access = 'stream')
      read(rU1) array
    end subroutine read_array_v_1CharacterDim7LenAst


    subroutine new_unitIntegerDim0KindINT8(n)
      Integer(kind = INT8), intent(out):: n
      integer(kind(n)):: i
      logical:: isOpened

      do i = NEW_UNIT_MIN, min(huge(n), NEW_UNIT_MAX)
        inquire(unit = i, opened = isOpened)
        if(.not.(isOpened))then
          n = i
          return
        end if
      end do

      write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8537,"No available unit number exist between: ", NEW_UNIT_MIN, NEW_UNIT_MAX; stop 1
    end subroutine new_unitIntegerDim0KindINT8
    subroutine new_unitIntegerDim0KindINT16(n)
      Integer(kind = INT16), intent(out):: n
      integer(kind(n)):: i
      logical:: isOpened

      do i = NEW_UNIT_MIN, min(huge(n), NEW_UNIT_MAX)
        inquire(unit = i, opened = isOpened)
        if(.not.(isOpened))then
          n = i
          return
        end if
      end do

      write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8552,"No available unit number exist between: ", NEW_UNIT_MIN, NEW_UNIT_MAX; stop 1
    end subroutine new_unitIntegerDim0KindINT16
    subroutine new_unitIntegerDim0KindINT32(n)
      Integer(kind = INT32), intent(out):: n
      integer(kind(n)):: i
      logical:: isOpened

      do i = NEW_UNIT_MIN, min(huge(n), NEW_UNIT_MAX)
        inquire(unit = i, opened = isOpened)
        if(.not.(isOpened))then
          n = i
          return
        end if
      end do

      write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8567,"No available unit number exist between: ", NEW_UNIT_MIN, NEW_UNIT_MAX; stop 1
    end subroutine new_unitIntegerDim0KindINT32
    subroutine new_unitIntegerDim0KindINT64(n)
      Integer(kind = INT64), intent(out):: n
      integer(kind(n)):: i
      logical:: isOpened

      do i = NEW_UNIT_MIN, min(huge(n), NEW_UNIT_MAX)
        inquire(unit = i, opened = isOpened)
        if(.not.(isOpened))then
          n = i
          return
        end if
      end do

      write(ERROR_UNIT, *) "RAISE: ", "lib_io.f90", " ", 8582,"No available unit number exist between: ", NEW_UNIT_MIN, NEW_UNIT_MAX; stop 1
    end subroutine new_unitIntegerDim0KindINT64
end module lib_io
