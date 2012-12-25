# 1 "lib_sort.f90"
# 1 "<command-line>"
# 1 "lib_sort.f90"

# 1 "utils.h" 1
# 3 "lib_sort.f90" 2
module lib_sort
  use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
  use lib_comparable, only: is_nan

  implicit none

  private

  public:: qsort

    interface qsort
      module procedure qsortIntegerDim1KindINT8
    end interface qsort
    interface qsort
      module procedure qsortIntegerDim1KindINT16
    end interface qsort
    interface qsort
      module procedure qsortIntegerDim1KindINT32
    end interface qsort
    interface qsort
      module procedure qsortIntegerDim1KindINT64
    end interface qsort
    interface qsort
      module procedure qsortRealDim1KindREAL32
    end interface qsort
    interface qsort
      module procedure qsortRealDim1KindREAL64
    end interface qsort
    interface qsort
      module procedure qsortRealDim1KindREAL128
    end interface qsort

contains

    recursive function qsortIntegerDim1KindINT8(a) result(this)
      Integer(kind = INT8), dimension(:):: this
      Integer(kind = INT8), dimension(:), intent(in):: a
      Integer(kind = INT8), dimension(:):: aMin, aMax

      if(size(a) <= 1)then
        this = a
        return
      end if

      aMin = minval(a)
      aMax = maxval(a)
      if(aMax <= aMin)then
        this = a
        return
      end if

      pib = intermediate_floor_avoid_overflow(aMin, aMax)
      this = [qsort(pack(a, a <= pib)), qsort(pack(a, a > pib))]
    end function qsortIntegerDim1KindINT8

    ! this: Floor of m/n.
    function div_floorIntegerDim1KindINT8(m, n) result(this)
      Integer(kind = INT8), dimension(:):: this
      Integer(kind = INT8), dimension(:), intent(in):: m, n

      this = m/n
      if(mod(m, n) < 0) this = this - 1
    end function div_floorIntegerDim1KindINT8

    ! this: Floor of intermediate of m and n without suffering overflow.
    function intermediate_floor_avoid_overflowIntegerDim1KindINT8(m, n) result(this)
      Integer(kind = INT8), dimension(:):: this
      Integer(kind = INT8), dimension(:), intent(in):: m, n

      this = div_floor(m, 2) + div_floor(n, 2)
      if((mod(m, 2) == 1 .and. mod(n, 2) == 1) .or. (mod(m, 2) == -1 .and. mod(n, 2) == -1)) this = this + 1
    end function intermediate_floor_avoid_overflowIntegerDim1KindINT8
    recursive function qsortIntegerDim1KindINT16(a) result(this)
      Integer(kind = INT16), dimension(:):: this
      Integer(kind = INT16), dimension(:), intent(in):: a
      Integer(kind = INT16), dimension(:):: aMin, aMax

      if(size(a) <= 1)then
        this = a
        return
      end if

      aMin = minval(a)
      aMax = maxval(a)
      if(aMax <= aMin)then
        this = a
        return
      end if

      pib = intermediate_floor_avoid_overflow(aMin, aMax)
      this = [qsort(pack(a, a <= pib)), qsort(pack(a, a > pib))]
    end function qsortIntegerDim1KindINT16

    ! this: Floor of m/n.
    function div_floorIntegerDim1KindINT16(m, n) result(this)
      Integer(kind = INT16), dimension(:):: this
      Integer(kind = INT16), dimension(:), intent(in):: m, n

      this = m/n
      if(mod(m, n) < 0) this = this - 1
    end function div_floorIntegerDim1KindINT16

    ! this: Floor of intermediate of m and n without suffering overflow.
    function intermediate_floor_avoid_overflowIntegerDim1KindINT16(m, n) result(this)
      Integer(kind = INT16), dimension(:):: this
      Integer(kind = INT16), dimension(:), intent(in):: m, n

      this = div_floor(m, 2) + div_floor(n, 2)
      if((mod(m, 2) == 1 .and. mod(n, 2) == 1) .or. (mod(m, 2) == -1 .and. mod(n, 2) == -1)) this = this + 1
    end function intermediate_floor_avoid_overflowIntegerDim1KindINT16
    recursive function qsortIntegerDim1KindINT32(a) result(this)
      Integer(kind = INT32), dimension(:):: this
      Integer(kind = INT32), dimension(:), intent(in):: a
      Integer(kind = INT32), dimension(:):: aMin, aMax

      if(size(a) <= 1)then
        this = a
        return
      end if

      aMin = minval(a)
      aMax = maxval(a)
      if(aMax <= aMin)then
        this = a
        return
      end if

      pib = intermediate_floor_avoid_overflow(aMin, aMax)
      this = [qsort(pack(a, a <= pib)), qsort(pack(a, a > pib))]
    end function qsortIntegerDim1KindINT32

    ! this: Floor of m/n.
    function div_floorIntegerDim1KindINT32(m, n) result(this)
      Integer(kind = INT32), dimension(:):: this
      Integer(kind = INT32), dimension(:), intent(in):: m, n

      this = m/n
      if(mod(m, n) < 0) this = this - 1
    end function div_floorIntegerDim1KindINT32

    ! this: Floor of intermediate of m and n without suffering overflow.
    function intermediate_floor_avoid_overflowIntegerDim1KindINT32(m, n) result(this)
      Integer(kind = INT32), dimension(:):: this
      Integer(kind = INT32), dimension(:), intent(in):: m, n

      this = div_floor(m, 2) + div_floor(n, 2)
      if((mod(m, 2) == 1 .and. mod(n, 2) == 1) .or. (mod(m, 2) == -1 .and. mod(n, 2) == -1)) this = this + 1
    end function intermediate_floor_avoid_overflowIntegerDim1KindINT32
    recursive function qsortIntegerDim1KindINT64(a) result(this)
      Integer(kind = INT64), dimension(:):: this
      Integer(kind = INT64), dimension(:), intent(in):: a
      Integer(kind = INT64), dimension(:):: aMin, aMax

      if(size(a) <= 1)then
        this = a
        return
      end if

      aMin = minval(a)
      aMax = maxval(a)
      if(aMax <= aMin)then
        this = a
        return
      end if

      pib = intermediate_floor_avoid_overflow(aMin, aMax)
      this = [qsort(pack(a, a <= pib)), qsort(pack(a, a > pib))]
    end function qsortIntegerDim1KindINT64

    ! this: Floor of m/n.
    function div_floorIntegerDim1KindINT64(m, n) result(this)
      Integer(kind = INT64), dimension(:):: this
      Integer(kind = INT64), dimension(:), intent(in):: m, n

      this = m/n
      if(mod(m, n) < 0) this = this - 1
    end function div_floorIntegerDim1KindINT64

    ! this: Floor of intermediate of m and n without suffering overflow.
    function intermediate_floor_avoid_overflowIntegerDim1KindINT64(m, n) result(this)
      Integer(kind = INT64), dimension(:):: this
      Integer(kind = INT64), dimension(:), intent(in):: m, n

      this = div_floor(m, 2) + div_floor(n, 2)
      if((mod(m, 2) == 1 .and. mod(n, 2) == 1) .or. (mod(m, 2) == -1 .and. mod(n, 2) == -1)) this = this + 1
    end function intermediate_floor_avoid_overflowIntegerDim1KindINT64

    recursive function qsortRealDim1KindREAL32(a) result(this)
      Real(kind = REAL32), dimension(:), intent(in):: a
      Real(kind = REAL32), dimension(:):: this

      Real(kind = REAL32), dimension(:):: aMin, aMax, pib
      Integer:: maxlocA(1:1), minlocA(1:1)

      if(any(is_nan(a)))then; write(ERROR_UNIT, *) "RAISE: ", "lib_sort.f90", " ", 197,"any(is_nan(a))", " ", a; stop 1; end if

      if(size(a) <= 1)then ! Anchor case.
        this = a
        return
      end if

      aMin = minval(a)
      aMax = maxval(a)
      if(aMax <= aMin)then ! Quick return if possible: aMin equal aMax means all values in a are same.
        this = a
        return
      end if

      ! Infinity case.
      ! These case is separately handled since Inf - Inf = NaN although pib should not be NaN.
      if(aMin < -huge(aMin))then ! -Inf
        minlocA = minloc(a)
        this = [aMin, qsort([a(1:minlocA(1) - 1), a(minlocA(1) + 1:size(a))])]
        return
      end if

      if(huge(aMax) < aMax)then ! +Inf
        maxlocA = maxloc(a)
        this = [qsort([a(1:maxlocA(1) - 1), a(maxlocA(1) + 1:size(a))]), aMax]
        return
      end if


      pib = aMin/2 + aMax/2 ! Avoid overflow.
      this = [qsort(pack(a, a <= pib)), qsort(pack(a, a > pib))]
    end function qsortRealDim1KindREAL32
    recursive function qsortRealDim1KindREAL64(a) result(this)
      Real(kind = REAL64), dimension(:), intent(in):: a
      Real(kind = REAL64), dimension(:):: this

      Real(kind = REAL64), dimension(:):: aMin, aMax, pib
      Integer:: maxlocA(1:1), minlocA(1:1)

      if(any(is_nan(a)))then; write(ERROR_UNIT, *) "RAISE: ", "lib_sort.f90", " ", 236,"any(is_nan(a))", " ", a; stop 1; end if

      if(size(a) <= 1)then ! Anchor case.
        this = a
        return
      end if

      aMin = minval(a)
      aMax = maxval(a)
      if(aMax <= aMin)then ! Quick return if possible: aMin equal aMax means all values in a are same.
        this = a
        return
      end if

      ! Infinity case.
      ! These case is separately handled since Inf - Inf = NaN although pib should not be NaN.
      if(aMin < -huge(aMin))then ! -Inf
        minlocA = minloc(a)
        this = [aMin, qsort([a(1:minlocA(1) - 1), a(minlocA(1) + 1:size(a))])]
        return
      end if

      if(huge(aMax) < aMax)then ! +Inf
        maxlocA = maxloc(a)
        this = [qsort([a(1:maxlocA(1) - 1), a(maxlocA(1) + 1:size(a))]), aMax]
        return
      end if


      pib = aMin/2 + aMax/2 ! Avoid overflow.
      this = [qsort(pack(a, a <= pib)), qsort(pack(a, a > pib))]
    end function qsortRealDim1KindREAL64
    recursive function qsortRealDim1KindREAL128(a) result(this)
      Real(kind = REAL128), dimension(:), intent(in):: a
      Real(kind = REAL128), dimension(:):: this

      Real(kind = REAL128), dimension(:):: aMin, aMax, pib
      Integer:: maxlocA(1:1), minlocA(1:1)

      if(any(is_nan(a)))then; write(ERROR_UNIT, *) "RAISE: ", "lib_sort.f90", " ", 275,"any(is_nan(a))", " ", a; stop 1; end if

      if(size(a) <= 1)then ! Anchor case.
        this = a
        return
      end if

      aMin = minval(a)
      aMax = maxval(a)
      if(aMax <= aMin)then ! Quick return if possible: aMin equal aMax means all values in a are same.
        this = a
        return
      end if

      ! Infinity case.
      ! These case is separately handled since Inf - Inf = NaN although pib should not be NaN.
      if(aMin < -huge(aMin))then ! -Inf
        minlocA = minloc(a)
        this = [aMin, qsort([a(1:minlocA(1) - 1), a(minlocA(1) + 1:size(a))])]
        return
      end if

      if(huge(aMax) < aMax)then ! +Inf
        maxlocA = maxloc(a)
        this = [qsort([a(1:maxlocA(1) - 1), a(maxlocA(1) + 1:size(a))]), aMax]
        return
      end if


      pib = aMin/2 + aMax/2 ! Avoid overflow.
      this = [qsort(pack(a, a <= pib)), qsort(pack(a, a > pib))]
    end function qsortRealDim1KindREAL128
end module lib_sort
