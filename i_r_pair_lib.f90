module i_r_pair_lib
      use, intrinsic:: iso_fortran_env, only: int32, real32
      use, intrinsic:: iso_fortran_env, only: int64, real64
   implicit none
   private
   public:: key
   public:: val
   public:: pair
      type, public:: PairInt32Real32
         Integer(kind=int32):: key
         Real(kind=real32):: val
      end type PairInt32Real32
      interface key
         module procedure key_Int32Real32
      end interface key
      interface val
         module procedure val_Int32Real32
      end interface val
      interface pair
         module procedure pair_Int32Real32
      end interface pair
      type, public:: PairInt64Real64
         Integer(kind=int64):: key
         Real(kind=real64):: val
      end type PairInt64Real64
      interface key
         module procedure key_Int64Real64
      end interface key
      interface val
         module procedure val_Int64Real64
      end interface val
      interface pair
         module procedure pair_Int64Real64
      end interface pair
contains
      elemental function key_Int32Real32(p) result(k)
         Integer(kind=int32):: k
         type(PairInt32Real32), intent(in):: p
         k = p%key
      end function key_Int32Real32
      elemental function val_Int32Real32(p) result(v)
         Real(kind=real32):: v
         type(PairInt32Real32), intent(in):: p
         v = p%val
      end function val_Int32Real32
      elemental function pair_Int32Real32(k, v) result(p)
         type(PairInt32Real32):: p
         Integer(kind=int32), intent(in):: k
         Real(kind=real32), intent(in):: v
         p = PairInt32Real32(k, v)
      end function pair_Int32Real32
      elemental function key_Int64Real64(p) result(k)
         Integer(kind=int64):: k
         type(PairInt64Real64), intent(in):: p
         k = p%key
      end function key_Int64Real64
      elemental function val_Int64Real64(p) result(v)
         Real(kind=real64):: v
         type(PairInt64Real64), intent(in):: p
         v = p%val
      end function val_Int64Real64
      elemental function pair_Int64Real64(k, v) result(p)
         type(PairInt64Real64):: p
         Integer(kind=int64), intent(in):: k
         Real(kind=real64), intent(in):: v
         p = PairInt64Real64(k, v)
      end function pair_Int64Real64
end module i_r_pair_lib
