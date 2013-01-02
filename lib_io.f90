

#include "utils.h"
module lib_io
  use, intrinsic:: iso_fortran_env, only: ERROR_UNIT, INPUT_UNIT, OUTPUT_UNIT
  use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
  use lib_constant, only: TAB
  use lib_character, only: s, str, operator(+)

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

  ! YAGNI: this can easily expand to val for r, R, i, I, z, Z, and l.
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
      raise('Failed to execute mkdir -p ' + s(path))
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
      if(is_iostat_bad(ios)) exit
      raise_if(this >= huge(this))

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
      if(is_iostat_bad(ios) .or. c == new_line('_')) exit

      select case(mode)
      case(SEEK_SEPARATOR)
        if(has_val(SEPARATORS, c)) mode = SEEK_NORMAL_CHAR
      case(SEEK_NORMAL_CHAR)
        if(.not.has_val(SEPARATORS, c))then
          raise_if(this >= huge(this))

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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
        raise('Unsupported version: ' + str(libIoVersion))
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

      raise_if(s(dataType) /= DATA_TYPE_FOR_SELF)
      raise_if(dim /= DIM_FOR_SELF)

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

      raise('No available unit number exist between: ' + str(NEW_UNIT_MIN) + ' and ' + str(NEW_UNIT_MAX))
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

      raise('No available unit number exist between: ' + str(NEW_UNIT_MIN) + ' and ' + str(NEW_UNIT_MAX))
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

      raise('No available unit number exist between: ' + str(NEW_UNIT_MIN) + ' and ' + str(NEW_UNIT_MAX))
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

      raise('No available unit number exist between: ' + str(NEW_UNIT_MIN) + ' and ' + str(NEW_UNIT_MAX))
    end subroutine new_unitIntegerDim0KindINT64
end module lib_io
