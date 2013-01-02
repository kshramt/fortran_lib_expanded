

module lib_reflectable
  use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128

  implicit none

  private

  public:: str_from_type
  public:: dim_from_type
  public:: stem_from_type

    interface str_from_type
      module procedure str_from_typeLogicalDim0
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeLogicalDim0
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeLogicalDim0
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim0KindINT8
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim0KindINT8
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim0KindINT8
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim0KindINT16
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim0KindINT16
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim0KindINT16
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim0KindINT32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim0KindINT32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim0KindINT32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim0KindINT64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim0KindINT64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim0KindINT64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim1KindINT8
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim1KindINT8
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim1KindINT8
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim1KindINT16
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim1KindINT16
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim1KindINT16
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim1KindINT32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim1KindINT32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim1KindINT32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim1KindINT64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim1KindINT64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim1KindINT64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim2KindINT8
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim2KindINT8
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim2KindINT8
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim2KindINT16
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim2KindINT16
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim2KindINT16
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim2KindINT32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim2KindINT32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim2KindINT32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim2KindINT64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim2KindINT64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim2KindINT64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim3KindINT8
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim3KindINT8
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim3KindINT8
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim3KindINT16
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim3KindINT16
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim3KindINT16
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim3KindINT32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim3KindINT32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim3KindINT32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim3KindINT64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim3KindINT64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim3KindINT64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim4KindINT8
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim4KindINT8
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim4KindINT8
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim4KindINT16
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim4KindINT16
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim4KindINT16
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim4KindINT32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim4KindINT32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim4KindINT32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim4KindINT64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim4KindINT64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim4KindINT64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim5KindINT8
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim5KindINT8
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim5KindINT8
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim5KindINT16
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim5KindINT16
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim5KindINT16
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim5KindINT32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim5KindINT32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim5KindINT32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim5KindINT64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim5KindINT64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim5KindINT64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim6KindINT8
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim6KindINT8
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim6KindINT8
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim6KindINT16
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim6KindINT16
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim6KindINT16
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim6KindINT32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim6KindINT32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim6KindINT32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim6KindINT64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim6KindINT64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim6KindINT64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim7KindINT8
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim7KindINT8
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim7KindINT8
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim7KindINT16
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim7KindINT16
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim7KindINT16
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim7KindINT32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim7KindINT32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim7KindINT32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeIntegerDim7KindINT64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeIntegerDim7KindINT64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeIntegerDim7KindINT64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim0KindREAL32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim0KindREAL32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim0KindREAL32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim0KindREAL64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim0KindREAL64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim0KindREAL64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim0KindREAL128
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim0KindREAL128
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim0KindREAL128
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim1KindREAL32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim1KindREAL32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim1KindREAL32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim1KindREAL64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim1KindREAL64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim1KindREAL64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim1KindREAL128
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim1KindREAL128
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim1KindREAL128
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim2KindREAL32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim2KindREAL32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim2KindREAL32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim2KindREAL64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim2KindREAL64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim2KindREAL64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim2KindREAL128
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim2KindREAL128
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim2KindREAL128
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim3KindREAL32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim3KindREAL32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim3KindREAL32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim3KindREAL64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim3KindREAL64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim3KindREAL64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim3KindREAL128
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim3KindREAL128
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim3KindREAL128
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim4KindREAL32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim4KindREAL32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim4KindREAL32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim4KindREAL64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim4KindREAL64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim4KindREAL64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim4KindREAL128
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim4KindREAL128
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim4KindREAL128
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim5KindREAL32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim5KindREAL32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim5KindREAL32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim5KindREAL64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim5KindREAL64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim5KindREAL64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim5KindREAL128
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim5KindREAL128
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim5KindREAL128
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim6KindREAL32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim6KindREAL32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim6KindREAL32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim6KindREAL64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim6KindREAL64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim6KindREAL64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim6KindREAL128
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim6KindREAL128
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim6KindREAL128
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim7KindREAL32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim7KindREAL32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim7KindREAL32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim7KindREAL64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim7KindREAL64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim7KindREAL64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeRealDim7KindREAL128
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeRealDim7KindREAL128
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeRealDim7KindREAL128
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim0KindREAL32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim0KindREAL32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim0KindREAL32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim0KindREAL64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim0KindREAL64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim0KindREAL64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim0KindREAL128
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim0KindREAL128
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim0KindREAL128
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim1KindREAL32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim1KindREAL32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim1KindREAL32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim1KindREAL64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim1KindREAL64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim1KindREAL64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim1KindREAL128
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim1KindREAL128
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim1KindREAL128
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim2KindREAL32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim2KindREAL32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim2KindREAL32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim2KindREAL64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim2KindREAL64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim2KindREAL64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim2KindREAL128
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim2KindREAL128
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim2KindREAL128
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim3KindREAL32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim3KindREAL32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim3KindREAL32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim3KindREAL64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim3KindREAL64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim3KindREAL64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim3KindREAL128
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim3KindREAL128
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim3KindREAL128
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim4KindREAL32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim4KindREAL32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim4KindREAL32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim4KindREAL64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim4KindREAL64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim4KindREAL64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim4KindREAL128
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim4KindREAL128
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim4KindREAL128
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim5KindREAL32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim5KindREAL32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim5KindREAL32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim5KindREAL64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim5KindREAL64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim5KindREAL64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim5KindREAL128
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim5KindREAL128
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim5KindREAL128
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim6KindREAL32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim6KindREAL32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim6KindREAL32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim6KindREAL64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim6KindREAL64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim6KindREAL64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim6KindREAL128
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim6KindREAL128
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim6KindREAL128
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim7KindREAL32
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim7KindREAL32
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim7KindREAL32
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim7KindREAL64
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim7KindREAL64
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim7KindREAL64
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeComplexDim7KindREAL128
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeComplexDim7KindREAL128
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeComplexDim7KindREAL128
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeCharacterDim0LenAst
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeCharacterDim0LenAst
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeCharacterDim0LenAst
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeCharacterDim1LenAst
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeCharacterDim1LenAst
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeCharacterDim1LenAst
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeCharacterDim2LenAst
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeCharacterDim2LenAst
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeCharacterDim2LenAst
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeCharacterDim3LenAst
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeCharacterDim3LenAst
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeCharacterDim3LenAst
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeCharacterDim4LenAst
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeCharacterDim4LenAst
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeCharacterDim4LenAst
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeCharacterDim5LenAst
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeCharacterDim5LenAst
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeCharacterDim5LenAst
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeCharacterDim6LenAst
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeCharacterDim6LenAst
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeCharacterDim6LenAst
    end interface stem_from_type
    interface str_from_type
      module procedure str_from_typeCharacterDim7LenAst
    end interface str_from_type

    interface dim_from_type
      module procedure dim_from_typeCharacterDim7LenAst
    end interface dim_from_type

    interface stem_from_type
      module procedure stem_from_typeCharacterDim7LenAst
    end interface stem_from_type

contains

    pure function str_from_typeLogicalDim0(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "LogicalDim0"
      character(len = len(STRING_EXPRESSION)):: this
      Logical, intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeLogicalDim0

    pure function dim_from_typeLogicalDim0(v) result(this)
      integer, parameter:: DIM = 0
      integer:: this
      Logical, intent(in):: v

      this = DIM
    end function dim_from_typeLogicalDim0

    pure function stem_from_typeLogicalDim0(v) result(this)
      character(len = *), parameter:: STEM = "Logical"
      character(len = len(STEM)):: this
      Logical, intent(in):: v

      this = STEM
    end function stem_from_typeLogicalDim0
    pure function str_from_typeIntegerDim0KindINT8(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim0KindINT8"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT8), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim0KindINT8

    pure function dim_from_typeIntegerDim0KindINT8(v) result(this)
      integer, parameter:: DIM = 0
      integer:: this
      Integer(kind = INT8), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim0KindINT8

    pure function stem_from_typeIntegerDim0KindINT8(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT8), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim0KindINT8
    pure function str_from_typeIntegerDim0KindINT16(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim0KindINT16"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT16), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim0KindINT16

    pure function dim_from_typeIntegerDim0KindINT16(v) result(this)
      integer, parameter:: DIM = 0
      integer:: this
      Integer(kind = INT16), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim0KindINT16

    pure function stem_from_typeIntegerDim0KindINT16(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT16), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim0KindINT16
    pure function str_from_typeIntegerDim0KindINT32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim0KindINT32"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT32), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim0KindINT32

    pure function dim_from_typeIntegerDim0KindINT32(v) result(this)
      integer, parameter:: DIM = 0
      integer:: this
      Integer(kind = INT32), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim0KindINT32

    pure function stem_from_typeIntegerDim0KindINT32(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT32), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim0KindINT32
    pure function str_from_typeIntegerDim0KindINT64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim0KindINT64"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT64), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim0KindINT64

    pure function dim_from_typeIntegerDim0KindINT64(v) result(this)
      integer, parameter:: DIM = 0
      integer:: this
      Integer(kind = INT64), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim0KindINT64

    pure function stem_from_typeIntegerDim0KindINT64(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT64), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim0KindINT64
    pure function str_from_typeIntegerDim1KindINT8(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim1KindINT8"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT8), dimension(:), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim1KindINT8

    pure function dim_from_typeIntegerDim1KindINT8(v) result(this)
      integer, parameter:: DIM = 1
      integer:: this
      Integer(kind = INT8), dimension(:), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim1KindINT8

    pure function stem_from_typeIntegerDim1KindINT8(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT8), dimension(:), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim1KindINT8
    pure function str_from_typeIntegerDim1KindINT16(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim1KindINT16"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT16), dimension(:), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim1KindINT16

    pure function dim_from_typeIntegerDim1KindINT16(v) result(this)
      integer, parameter:: DIM = 1
      integer:: this
      Integer(kind = INT16), dimension(:), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim1KindINT16

    pure function stem_from_typeIntegerDim1KindINT16(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT16), dimension(:), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim1KindINT16
    pure function str_from_typeIntegerDim1KindINT32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim1KindINT32"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT32), dimension(:), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim1KindINT32

    pure function dim_from_typeIntegerDim1KindINT32(v) result(this)
      integer, parameter:: DIM = 1
      integer:: this
      Integer(kind = INT32), dimension(:), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim1KindINT32

    pure function stem_from_typeIntegerDim1KindINT32(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT32), dimension(:), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim1KindINT32
    pure function str_from_typeIntegerDim1KindINT64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim1KindINT64"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT64), dimension(:), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim1KindINT64

    pure function dim_from_typeIntegerDim1KindINT64(v) result(this)
      integer, parameter:: DIM = 1
      integer:: this
      Integer(kind = INT64), dimension(:), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim1KindINT64

    pure function stem_from_typeIntegerDim1KindINT64(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT64), dimension(:), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim1KindINT64
    pure function str_from_typeIntegerDim2KindINT8(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim2KindINT8"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT8), dimension(:, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim2KindINT8

    pure function dim_from_typeIntegerDim2KindINT8(v) result(this)
      integer, parameter:: DIM = 2
      integer:: this
      Integer(kind = INT8), dimension(:, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim2KindINT8

    pure function stem_from_typeIntegerDim2KindINT8(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT8), dimension(:, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim2KindINT8
    pure function str_from_typeIntegerDim2KindINT16(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim2KindINT16"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT16), dimension(:, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim2KindINT16

    pure function dim_from_typeIntegerDim2KindINT16(v) result(this)
      integer, parameter:: DIM = 2
      integer:: this
      Integer(kind = INT16), dimension(:, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim2KindINT16

    pure function stem_from_typeIntegerDim2KindINT16(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT16), dimension(:, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim2KindINT16
    pure function str_from_typeIntegerDim2KindINT32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim2KindINT32"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT32), dimension(:, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim2KindINT32

    pure function dim_from_typeIntegerDim2KindINT32(v) result(this)
      integer, parameter:: DIM = 2
      integer:: this
      Integer(kind = INT32), dimension(:, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim2KindINT32

    pure function stem_from_typeIntegerDim2KindINT32(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT32), dimension(:, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim2KindINT32
    pure function str_from_typeIntegerDim2KindINT64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim2KindINT64"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT64), dimension(:, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim2KindINT64

    pure function dim_from_typeIntegerDim2KindINT64(v) result(this)
      integer, parameter:: DIM = 2
      integer:: this
      Integer(kind = INT64), dimension(:, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim2KindINT64

    pure function stem_from_typeIntegerDim2KindINT64(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT64), dimension(:, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim2KindINT64
    pure function str_from_typeIntegerDim3KindINT8(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim3KindINT8"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT8), dimension(:, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim3KindINT8

    pure function dim_from_typeIntegerDim3KindINT8(v) result(this)
      integer, parameter:: DIM = 3
      integer:: this
      Integer(kind = INT8), dimension(:, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim3KindINT8

    pure function stem_from_typeIntegerDim3KindINT8(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT8), dimension(:, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim3KindINT8
    pure function str_from_typeIntegerDim3KindINT16(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim3KindINT16"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT16), dimension(:, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim3KindINT16

    pure function dim_from_typeIntegerDim3KindINT16(v) result(this)
      integer, parameter:: DIM = 3
      integer:: this
      Integer(kind = INT16), dimension(:, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim3KindINT16

    pure function stem_from_typeIntegerDim3KindINT16(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT16), dimension(:, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim3KindINT16
    pure function str_from_typeIntegerDim3KindINT32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim3KindINT32"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT32), dimension(:, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim3KindINT32

    pure function dim_from_typeIntegerDim3KindINT32(v) result(this)
      integer, parameter:: DIM = 3
      integer:: this
      Integer(kind = INT32), dimension(:, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim3KindINT32

    pure function stem_from_typeIntegerDim3KindINT32(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT32), dimension(:, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim3KindINT32
    pure function str_from_typeIntegerDim3KindINT64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim3KindINT64"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT64), dimension(:, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim3KindINT64

    pure function dim_from_typeIntegerDim3KindINT64(v) result(this)
      integer, parameter:: DIM = 3
      integer:: this
      Integer(kind = INT64), dimension(:, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim3KindINT64

    pure function stem_from_typeIntegerDim3KindINT64(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT64), dimension(:, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim3KindINT64
    pure function str_from_typeIntegerDim4KindINT8(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim4KindINT8"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT8), dimension(:, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim4KindINT8

    pure function dim_from_typeIntegerDim4KindINT8(v) result(this)
      integer, parameter:: DIM = 4
      integer:: this
      Integer(kind = INT8), dimension(:, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim4KindINT8

    pure function stem_from_typeIntegerDim4KindINT8(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT8), dimension(:, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim4KindINT8
    pure function str_from_typeIntegerDim4KindINT16(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim4KindINT16"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT16), dimension(:, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim4KindINT16

    pure function dim_from_typeIntegerDim4KindINT16(v) result(this)
      integer, parameter:: DIM = 4
      integer:: this
      Integer(kind = INT16), dimension(:, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim4KindINT16

    pure function stem_from_typeIntegerDim4KindINT16(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT16), dimension(:, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim4KindINT16
    pure function str_from_typeIntegerDim4KindINT32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim4KindINT32"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT32), dimension(:, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim4KindINT32

    pure function dim_from_typeIntegerDim4KindINT32(v) result(this)
      integer, parameter:: DIM = 4
      integer:: this
      Integer(kind = INT32), dimension(:, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim4KindINT32

    pure function stem_from_typeIntegerDim4KindINT32(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT32), dimension(:, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim4KindINT32
    pure function str_from_typeIntegerDim4KindINT64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim4KindINT64"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT64), dimension(:, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim4KindINT64

    pure function dim_from_typeIntegerDim4KindINT64(v) result(this)
      integer, parameter:: DIM = 4
      integer:: this
      Integer(kind = INT64), dimension(:, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim4KindINT64

    pure function stem_from_typeIntegerDim4KindINT64(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT64), dimension(:, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim4KindINT64
    pure function str_from_typeIntegerDim5KindINT8(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim5KindINT8"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT8), dimension(:, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim5KindINT8

    pure function dim_from_typeIntegerDim5KindINT8(v) result(this)
      integer, parameter:: DIM = 5
      integer:: this
      Integer(kind = INT8), dimension(:, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim5KindINT8

    pure function stem_from_typeIntegerDim5KindINT8(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT8), dimension(:, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim5KindINT8
    pure function str_from_typeIntegerDim5KindINT16(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim5KindINT16"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT16), dimension(:, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim5KindINT16

    pure function dim_from_typeIntegerDim5KindINT16(v) result(this)
      integer, parameter:: DIM = 5
      integer:: this
      Integer(kind = INT16), dimension(:, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim5KindINT16

    pure function stem_from_typeIntegerDim5KindINT16(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT16), dimension(:, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim5KindINT16
    pure function str_from_typeIntegerDim5KindINT32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim5KindINT32"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT32), dimension(:, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim5KindINT32

    pure function dim_from_typeIntegerDim5KindINT32(v) result(this)
      integer, parameter:: DIM = 5
      integer:: this
      Integer(kind = INT32), dimension(:, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim5KindINT32

    pure function stem_from_typeIntegerDim5KindINT32(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT32), dimension(:, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim5KindINT32
    pure function str_from_typeIntegerDim5KindINT64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim5KindINT64"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT64), dimension(:, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim5KindINT64

    pure function dim_from_typeIntegerDim5KindINT64(v) result(this)
      integer, parameter:: DIM = 5
      integer:: this
      Integer(kind = INT64), dimension(:, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim5KindINT64

    pure function stem_from_typeIntegerDim5KindINT64(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT64), dimension(:, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim5KindINT64
    pure function str_from_typeIntegerDim6KindINT8(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim6KindINT8"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT8), dimension(:, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim6KindINT8

    pure function dim_from_typeIntegerDim6KindINT8(v) result(this)
      integer, parameter:: DIM = 6
      integer:: this
      Integer(kind = INT8), dimension(:, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim6KindINT8

    pure function stem_from_typeIntegerDim6KindINT8(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT8), dimension(:, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim6KindINT8
    pure function str_from_typeIntegerDim6KindINT16(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim6KindINT16"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT16), dimension(:, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim6KindINT16

    pure function dim_from_typeIntegerDim6KindINT16(v) result(this)
      integer, parameter:: DIM = 6
      integer:: this
      Integer(kind = INT16), dimension(:, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim6KindINT16

    pure function stem_from_typeIntegerDim6KindINT16(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT16), dimension(:, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim6KindINT16
    pure function str_from_typeIntegerDim6KindINT32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim6KindINT32"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT32), dimension(:, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim6KindINT32

    pure function dim_from_typeIntegerDim6KindINT32(v) result(this)
      integer, parameter:: DIM = 6
      integer:: this
      Integer(kind = INT32), dimension(:, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim6KindINT32

    pure function stem_from_typeIntegerDim6KindINT32(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT32), dimension(:, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim6KindINT32
    pure function str_from_typeIntegerDim6KindINT64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim6KindINT64"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT64), dimension(:, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim6KindINT64

    pure function dim_from_typeIntegerDim6KindINT64(v) result(this)
      integer, parameter:: DIM = 6
      integer:: this
      Integer(kind = INT64), dimension(:, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim6KindINT64

    pure function stem_from_typeIntegerDim6KindINT64(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT64), dimension(:, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim6KindINT64
    pure function str_from_typeIntegerDim7KindINT8(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim7KindINT8"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT8), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim7KindINT8

    pure function dim_from_typeIntegerDim7KindINT8(v) result(this)
      integer, parameter:: DIM = 7
      integer:: this
      Integer(kind = INT8), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim7KindINT8

    pure function stem_from_typeIntegerDim7KindINT8(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT8), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim7KindINT8
    pure function str_from_typeIntegerDim7KindINT16(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim7KindINT16"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT16), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim7KindINT16

    pure function dim_from_typeIntegerDim7KindINT16(v) result(this)
      integer, parameter:: DIM = 7
      integer:: this
      Integer(kind = INT16), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim7KindINT16

    pure function stem_from_typeIntegerDim7KindINT16(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT16), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim7KindINT16
    pure function str_from_typeIntegerDim7KindINT32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim7KindINT32"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT32), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim7KindINT32

    pure function dim_from_typeIntegerDim7KindINT32(v) result(this)
      integer, parameter:: DIM = 7
      integer:: this
      Integer(kind = INT32), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim7KindINT32

    pure function stem_from_typeIntegerDim7KindINT32(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT32), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim7KindINT32
    pure function str_from_typeIntegerDim7KindINT64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "IntegerDim7KindINT64"
      character(len = len(STRING_EXPRESSION)):: this
      Integer(kind = INT64), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeIntegerDim7KindINT64

    pure function dim_from_typeIntegerDim7KindINT64(v) result(this)
      integer, parameter:: DIM = 7
      integer:: this
      Integer(kind = INT64), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeIntegerDim7KindINT64

    pure function stem_from_typeIntegerDim7KindINT64(v) result(this)
      character(len = *), parameter:: STEM = "Integer"
      character(len = len(STEM)):: this
      Integer(kind = INT64), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeIntegerDim7KindINT64
    pure function str_from_typeRealDim0KindREAL32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim0KindREAL32"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL32), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim0KindREAL32

    pure function dim_from_typeRealDim0KindREAL32(v) result(this)
      integer, parameter:: DIM = 0
      integer:: this
      Real(kind = REAL32), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim0KindREAL32

    pure function stem_from_typeRealDim0KindREAL32(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL32), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim0KindREAL32
    pure function str_from_typeRealDim0KindREAL64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim0KindREAL64"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL64), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim0KindREAL64

    pure function dim_from_typeRealDim0KindREAL64(v) result(this)
      integer, parameter:: DIM = 0
      integer:: this
      Real(kind = REAL64), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim0KindREAL64

    pure function stem_from_typeRealDim0KindREAL64(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL64), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim0KindREAL64
    pure function str_from_typeRealDim0KindREAL128(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim0KindREAL128"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL128), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim0KindREAL128

    pure function dim_from_typeRealDim0KindREAL128(v) result(this)
      integer, parameter:: DIM = 0
      integer:: this
      Real(kind = REAL128), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim0KindREAL128

    pure function stem_from_typeRealDim0KindREAL128(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL128), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim0KindREAL128
    pure function str_from_typeRealDim1KindREAL32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim1KindREAL32"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL32), dimension(:), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim1KindREAL32

    pure function dim_from_typeRealDim1KindREAL32(v) result(this)
      integer, parameter:: DIM = 1
      integer:: this
      Real(kind = REAL32), dimension(:), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim1KindREAL32

    pure function stem_from_typeRealDim1KindREAL32(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL32), dimension(:), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim1KindREAL32
    pure function str_from_typeRealDim1KindREAL64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim1KindREAL64"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL64), dimension(:), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim1KindREAL64

    pure function dim_from_typeRealDim1KindREAL64(v) result(this)
      integer, parameter:: DIM = 1
      integer:: this
      Real(kind = REAL64), dimension(:), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim1KindREAL64

    pure function stem_from_typeRealDim1KindREAL64(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL64), dimension(:), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim1KindREAL64
    pure function str_from_typeRealDim1KindREAL128(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim1KindREAL128"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL128), dimension(:), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim1KindREAL128

    pure function dim_from_typeRealDim1KindREAL128(v) result(this)
      integer, parameter:: DIM = 1
      integer:: this
      Real(kind = REAL128), dimension(:), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim1KindREAL128

    pure function stem_from_typeRealDim1KindREAL128(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL128), dimension(:), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim1KindREAL128
    pure function str_from_typeRealDim2KindREAL32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim2KindREAL32"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL32), dimension(:, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim2KindREAL32

    pure function dim_from_typeRealDim2KindREAL32(v) result(this)
      integer, parameter:: DIM = 2
      integer:: this
      Real(kind = REAL32), dimension(:, :), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim2KindREAL32

    pure function stem_from_typeRealDim2KindREAL32(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL32), dimension(:, :), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim2KindREAL32
    pure function str_from_typeRealDim2KindREAL64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim2KindREAL64"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL64), dimension(:, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim2KindREAL64

    pure function dim_from_typeRealDim2KindREAL64(v) result(this)
      integer, parameter:: DIM = 2
      integer:: this
      Real(kind = REAL64), dimension(:, :), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim2KindREAL64

    pure function stem_from_typeRealDim2KindREAL64(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL64), dimension(:, :), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim2KindREAL64
    pure function str_from_typeRealDim2KindREAL128(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim2KindREAL128"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL128), dimension(:, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim2KindREAL128

    pure function dim_from_typeRealDim2KindREAL128(v) result(this)
      integer, parameter:: DIM = 2
      integer:: this
      Real(kind = REAL128), dimension(:, :), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim2KindREAL128

    pure function stem_from_typeRealDim2KindREAL128(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL128), dimension(:, :), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim2KindREAL128
    pure function str_from_typeRealDim3KindREAL32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim3KindREAL32"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL32), dimension(:, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim3KindREAL32

    pure function dim_from_typeRealDim3KindREAL32(v) result(this)
      integer, parameter:: DIM = 3
      integer:: this
      Real(kind = REAL32), dimension(:, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim3KindREAL32

    pure function stem_from_typeRealDim3KindREAL32(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL32), dimension(:, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim3KindREAL32
    pure function str_from_typeRealDim3KindREAL64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim3KindREAL64"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL64), dimension(:, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim3KindREAL64

    pure function dim_from_typeRealDim3KindREAL64(v) result(this)
      integer, parameter:: DIM = 3
      integer:: this
      Real(kind = REAL64), dimension(:, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim3KindREAL64

    pure function stem_from_typeRealDim3KindREAL64(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL64), dimension(:, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim3KindREAL64
    pure function str_from_typeRealDim3KindREAL128(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim3KindREAL128"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL128), dimension(:, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim3KindREAL128

    pure function dim_from_typeRealDim3KindREAL128(v) result(this)
      integer, parameter:: DIM = 3
      integer:: this
      Real(kind = REAL128), dimension(:, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim3KindREAL128

    pure function stem_from_typeRealDim3KindREAL128(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL128), dimension(:, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim3KindREAL128
    pure function str_from_typeRealDim4KindREAL32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim4KindREAL32"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL32), dimension(:, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim4KindREAL32

    pure function dim_from_typeRealDim4KindREAL32(v) result(this)
      integer, parameter:: DIM = 4
      integer:: this
      Real(kind = REAL32), dimension(:, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim4KindREAL32

    pure function stem_from_typeRealDim4KindREAL32(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL32), dimension(:, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim4KindREAL32
    pure function str_from_typeRealDim4KindREAL64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim4KindREAL64"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL64), dimension(:, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim4KindREAL64

    pure function dim_from_typeRealDim4KindREAL64(v) result(this)
      integer, parameter:: DIM = 4
      integer:: this
      Real(kind = REAL64), dimension(:, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim4KindREAL64

    pure function stem_from_typeRealDim4KindREAL64(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL64), dimension(:, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim4KindREAL64
    pure function str_from_typeRealDim4KindREAL128(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim4KindREAL128"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL128), dimension(:, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim4KindREAL128

    pure function dim_from_typeRealDim4KindREAL128(v) result(this)
      integer, parameter:: DIM = 4
      integer:: this
      Real(kind = REAL128), dimension(:, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim4KindREAL128

    pure function stem_from_typeRealDim4KindREAL128(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL128), dimension(:, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim4KindREAL128
    pure function str_from_typeRealDim5KindREAL32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim5KindREAL32"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL32), dimension(:, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim5KindREAL32

    pure function dim_from_typeRealDim5KindREAL32(v) result(this)
      integer, parameter:: DIM = 5
      integer:: this
      Real(kind = REAL32), dimension(:, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim5KindREAL32

    pure function stem_from_typeRealDim5KindREAL32(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL32), dimension(:, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim5KindREAL32
    pure function str_from_typeRealDim5KindREAL64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim5KindREAL64"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL64), dimension(:, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim5KindREAL64

    pure function dim_from_typeRealDim5KindREAL64(v) result(this)
      integer, parameter:: DIM = 5
      integer:: this
      Real(kind = REAL64), dimension(:, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim5KindREAL64

    pure function stem_from_typeRealDim5KindREAL64(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL64), dimension(:, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim5KindREAL64
    pure function str_from_typeRealDim5KindREAL128(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim5KindREAL128"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL128), dimension(:, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim5KindREAL128

    pure function dim_from_typeRealDim5KindREAL128(v) result(this)
      integer, parameter:: DIM = 5
      integer:: this
      Real(kind = REAL128), dimension(:, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim5KindREAL128

    pure function stem_from_typeRealDim5KindREAL128(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL128), dimension(:, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim5KindREAL128
    pure function str_from_typeRealDim6KindREAL32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim6KindREAL32"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL32), dimension(:, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim6KindREAL32

    pure function dim_from_typeRealDim6KindREAL32(v) result(this)
      integer, parameter:: DIM = 6
      integer:: this
      Real(kind = REAL32), dimension(:, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim6KindREAL32

    pure function stem_from_typeRealDim6KindREAL32(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL32), dimension(:, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim6KindREAL32
    pure function str_from_typeRealDim6KindREAL64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim6KindREAL64"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL64), dimension(:, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim6KindREAL64

    pure function dim_from_typeRealDim6KindREAL64(v) result(this)
      integer, parameter:: DIM = 6
      integer:: this
      Real(kind = REAL64), dimension(:, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim6KindREAL64

    pure function stem_from_typeRealDim6KindREAL64(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL64), dimension(:, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim6KindREAL64
    pure function str_from_typeRealDim6KindREAL128(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim6KindREAL128"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL128), dimension(:, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim6KindREAL128

    pure function dim_from_typeRealDim6KindREAL128(v) result(this)
      integer, parameter:: DIM = 6
      integer:: this
      Real(kind = REAL128), dimension(:, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim6KindREAL128

    pure function stem_from_typeRealDim6KindREAL128(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL128), dimension(:, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim6KindREAL128
    pure function str_from_typeRealDim7KindREAL32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim7KindREAL32"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL32), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim7KindREAL32

    pure function dim_from_typeRealDim7KindREAL32(v) result(this)
      integer, parameter:: DIM = 7
      integer:: this
      Real(kind = REAL32), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim7KindREAL32

    pure function stem_from_typeRealDim7KindREAL32(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL32), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim7KindREAL32
    pure function str_from_typeRealDim7KindREAL64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim7KindREAL64"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL64), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim7KindREAL64

    pure function dim_from_typeRealDim7KindREAL64(v) result(this)
      integer, parameter:: DIM = 7
      integer:: this
      Real(kind = REAL64), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim7KindREAL64

    pure function stem_from_typeRealDim7KindREAL64(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL64), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim7KindREAL64
    pure function str_from_typeRealDim7KindREAL128(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "RealDim7KindREAL128"
      character(len = len(STRING_EXPRESSION)):: this
      Real(kind = REAL128), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeRealDim7KindREAL128

    pure function dim_from_typeRealDim7KindREAL128(v) result(this)
      integer, parameter:: DIM = 7
      integer:: this
      Real(kind = REAL128), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeRealDim7KindREAL128

    pure function stem_from_typeRealDim7KindREAL128(v) result(this)
      character(len = *), parameter:: STEM = "Real"
      character(len = len(STEM)):: this
      Real(kind = REAL128), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeRealDim7KindREAL128
    pure function str_from_typeComplexDim0KindREAL32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim0KindREAL32"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL32), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim0KindREAL32

    pure function dim_from_typeComplexDim0KindREAL32(v) result(this)
      integer, parameter:: DIM = 0
      integer:: this
      Complex(kind = REAL32), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim0KindREAL32

    pure function stem_from_typeComplexDim0KindREAL32(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL32), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim0KindREAL32
    pure function str_from_typeComplexDim0KindREAL64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim0KindREAL64"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL64), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim0KindREAL64

    pure function dim_from_typeComplexDim0KindREAL64(v) result(this)
      integer, parameter:: DIM = 0
      integer:: this
      Complex(kind = REAL64), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim0KindREAL64

    pure function stem_from_typeComplexDim0KindREAL64(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL64), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim0KindREAL64
    pure function str_from_typeComplexDim0KindREAL128(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim0KindREAL128"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL128), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim0KindREAL128

    pure function dim_from_typeComplexDim0KindREAL128(v) result(this)
      integer, parameter:: DIM = 0
      integer:: this
      Complex(kind = REAL128), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim0KindREAL128

    pure function stem_from_typeComplexDim0KindREAL128(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL128), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim0KindREAL128
    pure function str_from_typeComplexDim1KindREAL32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim1KindREAL32"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL32), dimension(:), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim1KindREAL32

    pure function dim_from_typeComplexDim1KindREAL32(v) result(this)
      integer, parameter:: DIM = 1
      integer:: this
      Complex(kind = REAL32), dimension(:), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim1KindREAL32

    pure function stem_from_typeComplexDim1KindREAL32(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL32), dimension(:), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim1KindREAL32
    pure function str_from_typeComplexDim1KindREAL64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim1KindREAL64"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL64), dimension(:), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim1KindREAL64

    pure function dim_from_typeComplexDim1KindREAL64(v) result(this)
      integer, parameter:: DIM = 1
      integer:: this
      Complex(kind = REAL64), dimension(:), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim1KindREAL64

    pure function stem_from_typeComplexDim1KindREAL64(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL64), dimension(:), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim1KindREAL64
    pure function str_from_typeComplexDim1KindREAL128(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim1KindREAL128"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL128), dimension(:), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim1KindREAL128

    pure function dim_from_typeComplexDim1KindREAL128(v) result(this)
      integer, parameter:: DIM = 1
      integer:: this
      Complex(kind = REAL128), dimension(:), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim1KindREAL128

    pure function stem_from_typeComplexDim1KindREAL128(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL128), dimension(:), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim1KindREAL128
    pure function str_from_typeComplexDim2KindREAL32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim2KindREAL32"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL32), dimension(:, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim2KindREAL32

    pure function dim_from_typeComplexDim2KindREAL32(v) result(this)
      integer, parameter:: DIM = 2
      integer:: this
      Complex(kind = REAL32), dimension(:, :), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim2KindREAL32

    pure function stem_from_typeComplexDim2KindREAL32(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL32), dimension(:, :), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim2KindREAL32
    pure function str_from_typeComplexDim2KindREAL64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim2KindREAL64"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL64), dimension(:, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim2KindREAL64

    pure function dim_from_typeComplexDim2KindREAL64(v) result(this)
      integer, parameter:: DIM = 2
      integer:: this
      Complex(kind = REAL64), dimension(:, :), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim2KindREAL64

    pure function stem_from_typeComplexDim2KindREAL64(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL64), dimension(:, :), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim2KindREAL64
    pure function str_from_typeComplexDim2KindREAL128(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim2KindREAL128"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL128), dimension(:, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim2KindREAL128

    pure function dim_from_typeComplexDim2KindREAL128(v) result(this)
      integer, parameter:: DIM = 2
      integer:: this
      Complex(kind = REAL128), dimension(:, :), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim2KindREAL128

    pure function stem_from_typeComplexDim2KindREAL128(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL128), dimension(:, :), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim2KindREAL128
    pure function str_from_typeComplexDim3KindREAL32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim3KindREAL32"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL32), dimension(:, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim3KindREAL32

    pure function dim_from_typeComplexDim3KindREAL32(v) result(this)
      integer, parameter:: DIM = 3
      integer:: this
      Complex(kind = REAL32), dimension(:, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim3KindREAL32

    pure function stem_from_typeComplexDim3KindREAL32(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL32), dimension(:, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim3KindREAL32
    pure function str_from_typeComplexDim3KindREAL64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim3KindREAL64"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL64), dimension(:, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim3KindREAL64

    pure function dim_from_typeComplexDim3KindREAL64(v) result(this)
      integer, parameter:: DIM = 3
      integer:: this
      Complex(kind = REAL64), dimension(:, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim3KindREAL64

    pure function stem_from_typeComplexDim3KindREAL64(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL64), dimension(:, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim3KindREAL64
    pure function str_from_typeComplexDim3KindREAL128(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim3KindREAL128"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL128), dimension(:, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim3KindREAL128

    pure function dim_from_typeComplexDim3KindREAL128(v) result(this)
      integer, parameter:: DIM = 3
      integer:: this
      Complex(kind = REAL128), dimension(:, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim3KindREAL128

    pure function stem_from_typeComplexDim3KindREAL128(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL128), dimension(:, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim3KindREAL128
    pure function str_from_typeComplexDim4KindREAL32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim4KindREAL32"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL32), dimension(:, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim4KindREAL32

    pure function dim_from_typeComplexDim4KindREAL32(v) result(this)
      integer, parameter:: DIM = 4
      integer:: this
      Complex(kind = REAL32), dimension(:, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim4KindREAL32

    pure function stem_from_typeComplexDim4KindREAL32(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL32), dimension(:, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim4KindREAL32
    pure function str_from_typeComplexDim4KindREAL64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim4KindREAL64"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL64), dimension(:, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim4KindREAL64

    pure function dim_from_typeComplexDim4KindREAL64(v) result(this)
      integer, parameter:: DIM = 4
      integer:: this
      Complex(kind = REAL64), dimension(:, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim4KindREAL64

    pure function stem_from_typeComplexDim4KindREAL64(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL64), dimension(:, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim4KindREAL64
    pure function str_from_typeComplexDim4KindREAL128(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim4KindREAL128"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL128), dimension(:, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim4KindREAL128

    pure function dim_from_typeComplexDim4KindREAL128(v) result(this)
      integer, parameter:: DIM = 4
      integer:: this
      Complex(kind = REAL128), dimension(:, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim4KindREAL128

    pure function stem_from_typeComplexDim4KindREAL128(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL128), dimension(:, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim4KindREAL128
    pure function str_from_typeComplexDim5KindREAL32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim5KindREAL32"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL32), dimension(:, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim5KindREAL32

    pure function dim_from_typeComplexDim5KindREAL32(v) result(this)
      integer, parameter:: DIM = 5
      integer:: this
      Complex(kind = REAL32), dimension(:, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim5KindREAL32

    pure function stem_from_typeComplexDim5KindREAL32(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL32), dimension(:, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim5KindREAL32
    pure function str_from_typeComplexDim5KindREAL64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim5KindREAL64"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL64), dimension(:, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim5KindREAL64

    pure function dim_from_typeComplexDim5KindREAL64(v) result(this)
      integer, parameter:: DIM = 5
      integer:: this
      Complex(kind = REAL64), dimension(:, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim5KindREAL64

    pure function stem_from_typeComplexDim5KindREAL64(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL64), dimension(:, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim5KindREAL64
    pure function str_from_typeComplexDim5KindREAL128(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim5KindREAL128"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL128), dimension(:, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim5KindREAL128

    pure function dim_from_typeComplexDim5KindREAL128(v) result(this)
      integer, parameter:: DIM = 5
      integer:: this
      Complex(kind = REAL128), dimension(:, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim5KindREAL128

    pure function stem_from_typeComplexDim5KindREAL128(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL128), dimension(:, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim5KindREAL128
    pure function str_from_typeComplexDim6KindREAL32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim6KindREAL32"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL32), dimension(:, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim6KindREAL32

    pure function dim_from_typeComplexDim6KindREAL32(v) result(this)
      integer, parameter:: DIM = 6
      integer:: this
      Complex(kind = REAL32), dimension(:, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim6KindREAL32

    pure function stem_from_typeComplexDim6KindREAL32(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL32), dimension(:, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim6KindREAL32
    pure function str_from_typeComplexDim6KindREAL64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim6KindREAL64"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL64), dimension(:, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim6KindREAL64

    pure function dim_from_typeComplexDim6KindREAL64(v) result(this)
      integer, parameter:: DIM = 6
      integer:: this
      Complex(kind = REAL64), dimension(:, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim6KindREAL64

    pure function stem_from_typeComplexDim6KindREAL64(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL64), dimension(:, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim6KindREAL64
    pure function str_from_typeComplexDim6KindREAL128(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim6KindREAL128"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL128), dimension(:, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim6KindREAL128

    pure function dim_from_typeComplexDim6KindREAL128(v) result(this)
      integer, parameter:: DIM = 6
      integer:: this
      Complex(kind = REAL128), dimension(:, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim6KindREAL128

    pure function stem_from_typeComplexDim6KindREAL128(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL128), dimension(:, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim6KindREAL128
    pure function str_from_typeComplexDim7KindREAL32(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim7KindREAL32"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL32), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim7KindREAL32

    pure function dim_from_typeComplexDim7KindREAL32(v) result(this)
      integer, parameter:: DIM = 7
      integer:: this
      Complex(kind = REAL32), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim7KindREAL32

    pure function stem_from_typeComplexDim7KindREAL32(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL32), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim7KindREAL32
    pure function str_from_typeComplexDim7KindREAL64(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim7KindREAL64"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL64), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim7KindREAL64

    pure function dim_from_typeComplexDim7KindREAL64(v) result(this)
      integer, parameter:: DIM = 7
      integer:: this
      Complex(kind = REAL64), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim7KindREAL64

    pure function stem_from_typeComplexDim7KindREAL64(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL64), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim7KindREAL64
    pure function str_from_typeComplexDim7KindREAL128(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "ComplexDim7KindREAL128"
      character(len = len(STRING_EXPRESSION)):: this
      Complex(kind = REAL128), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeComplexDim7KindREAL128

    pure function dim_from_typeComplexDim7KindREAL128(v) result(this)
      integer, parameter:: DIM = 7
      integer:: this
      Complex(kind = REAL128), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeComplexDim7KindREAL128

    pure function stem_from_typeComplexDim7KindREAL128(v) result(this)
      character(len = *), parameter:: STEM = "Complex"
      character(len = len(STEM)):: this
      Complex(kind = REAL128), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeComplexDim7KindREAL128
    pure function str_from_typeCharacterDim0LenAst(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "CharacterDim0LenAst"
      character(len = len(STRING_EXPRESSION)):: this
      Character(len = *), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeCharacterDim0LenAst

    pure function dim_from_typeCharacterDim0LenAst(v) result(this)
      integer, parameter:: DIM = 0
      integer:: this
      Character(len = *), intent(in):: v

      this = DIM
    end function dim_from_typeCharacterDim0LenAst

    pure function stem_from_typeCharacterDim0LenAst(v) result(this)
      character(len = *), parameter:: STEM = "Character"
      character(len = len(STEM)):: this
      Character(len = *), intent(in):: v

      this = STEM
    end function stem_from_typeCharacterDim0LenAst
    pure function str_from_typeCharacterDim1LenAst(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "CharacterDim1LenAst"
      character(len = len(STRING_EXPRESSION)):: this
      Character(len = *), dimension(:), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeCharacterDim1LenAst

    pure function dim_from_typeCharacterDim1LenAst(v) result(this)
      integer, parameter:: DIM = 1
      integer:: this
      Character(len = *), dimension(:), intent(in):: v

      this = DIM
    end function dim_from_typeCharacterDim1LenAst

    pure function stem_from_typeCharacterDim1LenAst(v) result(this)
      character(len = *), parameter:: STEM = "Character"
      character(len = len(STEM)):: this
      Character(len = *), dimension(:), intent(in):: v

      this = STEM
    end function stem_from_typeCharacterDim1LenAst
    pure function str_from_typeCharacterDim2LenAst(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "CharacterDim2LenAst"
      character(len = len(STRING_EXPRESSION)):: this
      Character(len = *), dimension(:, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeCharacterDim2LenAst

    pure function dim_from_typeCharacterDim2LenAst(v) result(this)
      integer, parameter:: DIM = 2
      integer:: this
      Character(len = *), dimension(:, :), intent(in):: v

      this = DIM
    end function dim_from_typeCharacterDim2LenAst

    pure function stem_from_typeCharacterDim2LenAst(v) result(this)
      character(len = *), parameter:: STEM = "Character"
      character(len = len(STEM)):: this
      Character(len = *), dimension(:, :), intent(in):: v

      this = STEM
    end function stem_from_typeCharacterDim2LenAst
    pure function str_from_typeCharacterDim3LenAst(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "CharacterDim3LenAst"
      character(len = len(STRING_EXPRESSION)):: this
      Character(len = *), dimension(:, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeCharacterDim3LenAst

    pure function dim_from_typeCharacterDim3LenAst(v) result(this)
      integer, parameter:: DIM = 3
      integer:: this
      Character(len = *), dimension(:, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeCharacterDim3LenAst

    pure function stem_from_typeCharacterDim3LenAst(v) result(this)
      character(len = *), parameter:: STEM = "Character"
      character(len = len(STEM)):: this
      Character(len = *), dimension(:, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeCharacterDim3LenAst
    pure function str_from_typeCharacterDim4LenAst(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "CharacterDim4LenAst"
      character(len = len(STRING_EXPRESSION)):: this
      Character(len = *), dimension(:, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeCharacterDim4LenAst

    pure function dim_from_typeCharacterDim4LenAst(v) result(this)
      integer, parameter:: DIM = 4
      integer:: this
      Character(len = *), dimension(:, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeCharacterDim4LenAst

    pure function stem_from_typeCharacterDim4LenAst(v) result(this)
      character(len = *), parameter:: STEM = "Character"
      character(len = len(STEM)):: this
      Character(len = *), dimension(:, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeCharacterDim4LenAst
    pure function str_from_typeCharacterDim5LenAst(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "CharacterDim5LenAst"
      character(len = len(STRING_EXPRESSION)):: this
      Character(len = *), dimension(:, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeCharacterDim5LenAst

    pure function dim_from_typeCharacterDim5LenAst(v) result(this)
      integer, parameter:: DIM = 5
      integer:: this
      Character(len = *), dimension(:, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeCharacterDim5LenAst

    pure function stem_from_typeCharacterDim5LenAst(v) result(this)
      character(len = *), parameter:: STEM = "Character"
      character(len = len(STEM)):: this
      Character(len = *), dimension(:, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeCharacterDim5LenAst
    pure function str_from_typeCharacterDim6LenAst(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "CharacterDim6LenAst"
      character(len = len(STRING_EXPRESSION)):: this
      Character(len = *), dimension(:, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeCharacterDim6LenAst

    pure function dim_from_typeCharacterDim6LenAst(v) result(this)
      integer, parameter:: DIM = 6
      integer:: this
      Character(len = *), dimension(:, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeCharacterDim6LenAst

    pure function stem_from_typeCharacterDim6LenAst(v) result(this)
      character(len = *), parameter:: STEM = "Character"
      character(len = len(STEM)):: this
      Character(len = *), dimension(:, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeCharacterDim6LenAst
    pure function str_from_typeCharacterDim7LenAst(v) result(this)
      character(len = *), parameter:: STRING_EXPRESSION = "CharacterDim7LenAst"
      character(len = len(STRING_EXPRESSION)):: this
      Character(len = *), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STRING_EXPRESSION
    end function str_from_typeCharacterDim7LenAst

    pure function dim_from_typeCharacterDim7LenAst(v) result(this)
      integer, parameter:: DIM = 7
      integer:: this
      Character(len = *), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = DIM
    end function dim_from_typeCharacterDim7LenAst

    pure function stem_from_typeCharacterDim7LenAst(v) result(this)
      character(len = *), parameter:: STEM = "Character"
      character(len = len(STEM)):: this
      Character(len = *), dimension(:, :, :, :, :, :, :), intent(in):: v

      this = STEM
    end function stem_from_typeCharacterDim7LenAst
end module lib_reflectable
