! type: real, complex
! kind: 32, 64, 128
! dim: 1, 2, 3, 4
! op: + (v, n), - (v, n), * (dot_product, s), / (s)
module geometry_lib
   use, intrinsic:: iso_fortran_env, only: INPUT_UNIT, OUTPUT_UNIT, ERROR_UNIT
   use, intrinsic:: iso_fortran_env, only: REAL64, INT16
   implicit none
   private
   public:: dim
   public:: operator(+)
   public:: operator(-)
   type, public:: Vector
   end type Vector
      type, extends(Vector), public:: Vector1D
            Real(kind=REAL64):: x = 0
      end type Vector1D
      type, extends(Vector), public:: Vector2D
            Real(kind=REAL64):: x = 0
            Real(kind=REAL64):: y = 0
      end type Vector2D
      type, extends(Vector), public:: Vector3D
            Real(kind=REAL64):: x = 0
            Real(kind=REAL64):: y = 0
            Real(kind=REAL64):: z = 0
      end type Vector3D
      type, extends(Vector), public:: Vector4D
            Real(kind=REAL64):: x = 0
            Real(kind=REAL64):: y = 0
            Real(kind=REAL64):: z = 0
            Real(kind=REAL64):: t = 0
      end type Vector4D
      interface dim
         module procedure dimVector1D
      end interface dim
      interface operator(+)
         module procedure addVector1DVector1D
      end interface operator(+)
      interface operator(-)
         module procedure subVector1DVector1D
      end interface operator(-)
      interface dim
         module procedure dimVector2D
      end interface dim
      interface operator(+)
         module procedure addVector2DVector2D
      end interface operator(+)
      interface operator(-)
         module procedure subVector2DVector2D
      end interface operator(-)
      interface dim
         module procedure dimVector3D
      end interface dim
      interface operator(+)
         module procedure addVector3DVector3D
      end interface operator(+)
      interface operator(-)
         module procedure subVector3DVector3D
      end interface operator(-)
      interface dim
         module procedure dimVector4D
      end interface dim
      interface operator(+)
         module procedure addVector4DVector4D
      end interface operator(+)
      interface operator(-)
         module procedure subVector4DVector4D
      end interface operator(-)
contains
      function dimVector1D(a) result(ret)
         type(Vector1D), intent(in):: a
         Integer(kind=INT16):: ret
         ret = 1
      end function dimVector1D
      function addVector1DVector1D(a, b) result(ret)
         type(Vector1D), intent(in):: a, b
         type(Vector1D):: ret
            ret%x = a%x + b%x
      end function addVector1DVector1D
      function subVector1DVector1D(a, b) result(ret)
         type(Vector1D), intent(in):: a, b
         type(Vector1D):: ret
            ret%x = a%x - b%x
      end function subVector1DVector1D
      function dimVector2D(a) result(ret)
         type(Vector2D), intent(in):: a
         Integer(kind=INT16):: ret
         ret = 2
      end function dimVector2D
      function addVector2DVector2D(a, b) result(ret)
         type(Vector2D), intent(in):: a, b
         type(Vector2D):: ret
            ret%x = a%x + b%x
            ret%y = a%y + b%y
      end function addVector2DVector2D
      function subVector2DVector2D(a, b) result(ret)
         type(Vector2D), intent(in):: a, b
         type(Vector2D):: ret
            ret%x = a%x - b%x
            ret%y = a%y - b%y
      end function subVector2DVector2D
      function dimVector3D(a) result(ret)
         type(Vector3D), intent(in):: a
         Integer(kind=INT16):: ret
         ret = 3
      end function dimVector3D
      function addVector3DVector3D(a, b) result(ret)
         type(Vector3D), intent(in):: a, b
         type(Vector3D):: ret
            ret%x = a%x + b%x
            ret%y = a%y + b%y
            ret%z = a%z + b%z
      end function addVector3DVector3D
      function subVector3DVector3D(a, b) result(ret)
         type(Vector3D), intent(in):: a, b
         type(Vector3D):: ret
            ret%x = a%x - b%x
            ret%y = a%y - b%y
            ret%z = a%z - b%z
      end function subVector3DVector3D
      function dimVector4D(a) result(ret)
         type(Vector4D), intent(in):: a
         Integer(kind=INT16):: ret
         ret = 4
      end function dimVector4D
      function addVector4DVector4D(a, b) result(ret)
         type(Vector4D), intent(in):: a, b
         type(Vector4D):: ret
            ret%x = a%x + b%x
            ret%y = a%y + b%y
            ret%z = a%z + b%z
            ret%t = a%t + b%t
      end function addVector4DVector4D
      function subVector4DVector4D(a, b) result(ret)
         type(Vector4D), intent(in):: a, b
         type(Vector4D):: ret
            ret%x = a%x - b%x
            ret%y = a%y - b%y
            ret%z = a%z - b%z
            ret%t = a%t - b%t
      end function subVector4DVector4D
end module geometry_lib
