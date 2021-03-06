module geodetic_lib
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: int8, int16, int32, int64, real32, real64, real128
   use, non_intrinsic:: constant_lib, only: deg_from_rad, rad_from_deg
      use, non_intrinsic:: constant_lib, only: PIRealDim0Kindreal32
      use, non_intrinsic:: constant_lib, only: PIRealDim0Kindreal64
      use, non_intrinsic:: constant_lib, only: PIRealDim0Kindreal128
   implicit none
   private
   public:: ecef_from_wgs84, wgs84_from_ecef
   ! WGS84
   ! http://earth-info.nga.mil/GandG/publications/tr8350.2/wgs84fin.pdf (google by nga wgs84)
   Real(kind = REAL64), parameter, public:: WGS84_A = 6378137.0_REAL64 ! semi-major axis (m)
   Real(kind = REAL64), parameter, public:: WGS84_F = 1/298.257223563_REAL64 ! flattening
   Real(kind = REAL64), parameter, public:: WGS84_W = 7292115.0_REAL64*10**(-11) ! angular velocity of the earth (rad/s)
   Real(kind = REAL64), parameter, public:: WGS84_GM = 3986004.418_REAL64*10**8 ! earth's gravitational constant (mass of earth's atmosphere included) (m**3/s**2)
   Real(kind = REAL64), parameter, public:: WGS84_GM_PRIME = 3986000.9_REAL64*10**8 ! gravitational constant (mass of earth's atmosphere not included) (m**3/s**2) 1 sigma is +/- 0.1*10**8 (m**3/s**2)
   Real(kind = REAL32), parameter, public:: WGS84_GM_A = 3.5_REAL32*10**8 ! gm of the earth's atmosphere (m**3/s**2) 1 sigma is +/- 0.1*10**8 (m**3/s**2)
   Real(kind = REAL64), parameter, public:: WGS84_B = 6356752.3142_REAL64 ! semi-minor axis (m)
   Real(kind = REAL64), parameter, public:: WGS84_E_2 = (WGS84_A**2 - WGS84_B**2)/WGS84_A**2 ! first eccentricity squared (original: 6.69437999014_REAL64*10**(-3))
   Real(kind = REAL64), parameter, public:: WGS84_E = sqrt(WGS84_E_2) ! first eccentricity: sqrt(1 - b**2/a**2) (original: 8.1819190842622_REAL64*10**(-2))
   Real(kind = REAL64), parameter, public:: WGS84_E_PRIME = 8.2094437949696_REAL64*10**(-2) ! second eccentricity: sqrt(a**2/b**2 - 1)
   Real(kind = REAL64), parameter, public:: WGS84_E_PRIME_2 = 6.73949674228_REAL64*10**(-3) ! second eccentricity squared
     interface ecef_from_wgs84
        module procedure ecef_from_wgs84RealDim0Kindreal32
        module procedure ecef_from_wgs84_arrayRealDim0Kindreal32
     end interface ecef_from_wgs84
     interface ecef_from_wgs84_rad
        module procedure ecef_from_wgs84_radRealDim0Kindreal32
     end interface ecef_from_wgs84_rad
     interface wgs84_from_ecef
        module procedure wgs84_from_ecefRealDim0Kindreal32
        module procedure wgs84_from_ecef_arrayRealDim0Kindreal32
     end interface wgs84_from_ecef
     interface wgs84_rad_from_ecef
        module procedure wgs84_rad_from_ecefRealDim0Kindreal32
     end interface wgs84_rad_from_ecef
     interface normalize_lon
        module procedure normalize_lonRealDim0Kindreal32
     end interface normalize_lon
     interface normalize_lon_rad
        module procedure normalize_lon_radRealDim0Kindreal32
     end interface normalize_lon_rad
     interface get_l
        module procedure get_lRealDim0Kindreal32
     end interface get_l
     interface ecef_from_wgs84
        module procedure ecef_from_wgs84RealDim0Kindreal64
        module procedure ecef_from_wgs84_arrayRealDim0Kindreal64
     end interface ecef_from_wgs84
     interface ecef_from_wgs84_rad
        module procedure ecef_from_wgs84_radRealDim0Kindreal64
     end interface ecef_from_wgs84_rad
     interface wgs84_from_ecef
        module procedure wgs84_from_ecefRealDim0Kindreal64
        module procedure wgs84_from_ecef_arrayRealDim0Kindreal64
     end interface wgs84_from_ecef
     interface wgs84_rad_from_ecef
        module procedure wgs84_rad_from_ecefRealDim0Kindreal64
     end interface wgs84_rad_from_ecef
     interface normalize_lon
        module procedure normalize_lonRealDim0Kindreal64
     end interface normalize_lon
     interface normalize_lon_rad
        module procedure normalize_lon_radRealDim0Kindreal64
     end interface normalize_lon_rad
     interface get_l
        module procedure get_lRealDim0Kindreal64
     end interface get_l
     interface ecef_from_wgs84
        module procedure ecef_from_wgs84RealDim0Kindreal128
        module procedure ecef_from_wgs84_arrayRealDim0Kindreal128
     end interface ecef_from_wgs84
     interface ecef_from_wgs84_rad
        module procedure ecef_from_wgs84_radRealDim0Kindreal128
     end interface ecef_from_wgs84_rad
     interface wgs84_from_ecef
        module procedure wgs84_from_ecefRealDim0Kindreal128
        module procedure wgs84_from_ecef_arrayRealDim0Kindreal128
     end interface wgs84_from_ecef
     interface wgs84_rad_from_ecef
        module procedure wgs84_rad_from_ecefRealDim0Kindreal128
     end interface wgs84_rad_from_ecef
     interface normalize_lon
        module procedure normalize_lonRealDim0Kindreal128
     end interface normalize_lon
     interface normalize_lon_rad
        module procedure normalize_lon_radRealDim0Kindreal128
     end interface normalize_lon_rad
     interface get_l
        module procedure get_lRealDim0Kindreal128
     end interface get_l
contains
      function ecef_from_wgs84_arrayRealDim0Kindreal32(lonLatH) result(xyz)
         Real(kind=real32), intent(in):: lonLatH(1:3) ! (deg, deg, m)
         Real(kind=real32):: xyz(1:3) ! (m, m, m)
         xyz = ecef_from_wgs84(lonLatH(1), lonLatH(2), lonLatH(3))
      end function ecef_from_wgs84_arrayRealDim0Kindreal32
      function ecef_from_wgs84RealDim0Kindreal32(lon, lat, h) result(xyz)
         Real(kind=real32), intent(in):: lat ! (deg)
         Real(kind=real32), intent(in):: lon ! (deg)
         Real(kind=real32), intent(in):: h ! (m)
         Real(kind=real32):: xyz(1:3) ! (m, m, m)
         if(.not.(-90 <= lat .and. lat <= 90))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 144, (".not.(-90 <= lat .and. lat <= 90)"); error stop; end if
         xyz = ecef_from_wgs84_rad(rad_from_deg(lon), rad_from_deg(lat), h)
      end function ecef_from_wgs84RealDim0Kindreal32
      function ecef_from_wgs84_radRealDim0Kindreal32(lon, lat, h) result(xyz)
         Real(kind = min(real32, kind(WGS84_E_2))), parameter:: E_2 = real(WGS84_E_2, kind = min(real32, kind(WGS84_E_2)))
         Real(kind=real32), parameter:: HALF_PI = PIRealDim0Kindreal32/2
         Real(kind=real32), intent(in):: lat ! (rad)
         Real(kind=real32), intent(in):: lon ! (rad)
         Real(kind=real32), intent(in):: h ! (m)
         Real(kind=real32):: xyz(1:3) ! (m, m, m)
         Real(kind=real32):: l
         if(.not.(-HALF_PI <= lat .and. lat <= HALF_PI))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 157, (".not.(-HALF_PI <= lat .and. lat <= HALF_PI)"); error stop; end if
         l = get_l(lat)
         xyz(1) = (l + h)*cos(lat)*cos(lon)
         xyz(2) = (l + h)*cos(lat)*sin(lon)
         xyz(3) = ((1 - E_2)*l + h)*sin(lat)
      end function ecef_from_wgs84_radRealDim0Kindreal32
      function wgs84_from_ecef_arrayRealDim0Kindreal32(xyz) result(lonLatH)
         Real(kind=real32), intent(in):: xyz(1:3) ! (m, m, m)
         Real(kind=real32):: lonLatH(1:3)
         lonLatH = wgs84_from_ecef(xyz(1), xyz(2), xyz(3))
         if(.not.(-180 <= lonLatH(1) .and. lonLatH(1) <= 180))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 171, (".not.(-180 <= lonLatH(1) .and. lonLatH(1) <= 180)"); error stop; end if
         if(.not.(-90 <= lonLatH(2) .and. lonLatH(2) <= 90))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 172, (".not.(-90 <= lonLatH(2) .and. lonLatH(2) <= 90)"); error stop; end if
      end function wgs84_from_ecef_arrayRealDim0Kindreal32
      function wgs84_from_ecefRealDim0Kindreal32(x, y, z) result(lonLatH)
         Real(kind=real32), intent(in):: x ! (m)
         Real(kind=real32), intent(in):: y ! (m)
         Real(kind=real32), intent(in):: z ! (m)
         Real(kind=real32):: lonLatH(1:3) ! (deg, deg, m)
         Real(kind=real32):: lonLatHRad(1:3)
         lonLatHRad = wgs84_rad_from_ecef(x, y, z)
         lonLatH(1:2) = deg_from_rad(lonLatHRad(1:2))
         lonLatH(3) = lonLatHRad(3)
         if(.not.(-180 <= lonLatH(1) .and. lonLatH(1) <= 180))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 186, (".not.(-180 <= lonLatH(1) .and. lonLatH(1) <= 180)"); error stop; end if
         if(.not.(-90 <= lonLatH(2) .and. lonLatH(2) <= 90))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 187, (".not.(-90 <= lonLatH(2) .and. lonLatH(2) <= 90)"); error stop; end if
      end function wgs84_from_ecefRealDim0Kindreal32
      recursive function wgs84_rad_from_ecefRealDim0Kindreal32(x, y, z) result(lonLatH)
         Real(kind=real32), parameter:: PI = PIRealDim0Kindreal32
         Real(kind = kind(WGS84_A)), parameter:: A = WGS84_A
         Real(kind = kind(WGS84_B)), parameter:: B = WGS84_B
         Real(kind = min(real32, kind(WGS84_E_2))), parameter:: E_2 = real(WGS84_E_2, kind = min(real32, kind(WGS84_E_2)))
         Integer, parameter:: N_DIVISION = 2**3
         Real(kind=real32), intent(in):: x ! (m)
         Real(kind=real32), intent(in):: y ! (m)
         Real(kind=real32), intent(in):: z ! (m)
         Real(kind=real32):: lonLatH(1:3) ! (rad, rad, m)
         Real(kind=real32):: lon, lat
         Real(kind=real32):: xy
         Logical:: isLatGe45Degree
         if(.not.(N_DIVISION >= 2))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 204, (".not.(N_DIVISION >= 2)"); error stop; end if
         if(z < 0)then
            lonLatH = wgs84_rad_from_ecef(x, y, -z)
            lonLatH(2) = -lonLatH(2)
         else
            lon = atan2(y, x)
            xy = hypot(x, y)
            isLatGe45Degree = (z >= xy - (A**2 - B**2)/sqrt(A**2 + B**2))
            if(isLatGe45Degree)then
               call get_lat(get_x, xy, z, (3*PI)/8, PI/8, lat)
               lonLatH(3) = z/sin(lat) - (1 - E_2)*get_l(lat)
            else
               call get_lat(get_z, z, xy, PI/8, PI/8, lat)
               lonLatH(3) = xy/cos(lat) - get_l(lat)
            end if
            lonLatH(1) = lon
            lonLatH(2) = lat
         end if
         if(.not.(-PI <= lonLatH(1) .and. lonLatH(1) <= PI))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 226, (".not.(-PI <= lonLatH(1) .and. lonLatH(1) <= PI)"); error stop; end if
         if(.not.(-PI/2 <= lonLatH(2) .and. lonLatH(2) <= PI/2))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 227, (".not.(-PI/2 <= lonLatH(2) .and. lonLatH(2) <= PI/2)"); error stop; end if
      contains
         subroutine get_lat(get_p, p, q, lat0, latWidth, lat)
            interface
               function get_p (lat, c) result(answer)
                  use, intrinsic:: iso_fortran_env, only: int8, int16, int32, int64, real32, real64, real128
                  Real(kind=real32), intent(in):: lat
                  Real(kind=real32), intent(in):: c
                  Real(kind=real32):: answer
               end function get_p
            end interface
            Integer, parameter:: N_DIVISION = 2**3
            Real(kind=real32), intent(in):: p ! (m)
            Real(kind=real32), intent(in):: q ! (m)
            Real(kind=real32), intent(in):: lat0 ! Initial value (rad)
            Real(kind=real32), intent(in):: latWidth ! (rad)
            Real(kind=real32), intent(out):: lat ! (rad)
            Real(kind=real32):: latBest, lat0_, lat_, dLat
            Real(kind=real32):: residualMin, residual
            Integer:: iLat
            lat0_ = lat0
            latBest = lat0_
            lat_ = latBest
            residualMin = abs(p - get_p(lat_, q))
            dLat = latWidth
            ! Grid search for the best lat.
            do while(dLat >= tiny(dLat) .and. dLat >= latBest*epsilon(latBest)/N_DIVISION)
               dLat = dLat/N_DIVISION ! Increase precision
               do iLat = -N_DIVISION + 1, N_DIVISION - 1
                  lat_ = lat0_ + iLat*dLat
                  residual = abs(p - get_p(lat_, q))
                  if(residual < residualMin)then
                     latBest = lat_
                     residualMin = residual
                  end if
               end do
               lat0_ = latBest
            end do
            lat = latBest
         end subroutine get_lat
         function get_x(lat, z) result(answer)
            Real(kind = min(real32, kind(WGS84_E_2))), parameter:: E_2 = real(WGS84_E_2, kind = min(real32, kind(WGS84_E_2)))
            Real(kind=real32), intent(in):: lat ! (rad)
            Real(kind=real32), intent(in):: z ! (m)
            Real(kind=real32):: answer
            answer = (z/sin(lat) + E_2*get_l(lat))*cos(lat)
         end function get_x
         function get_z(lat, xy) result(answer)
            Real(kind = min(real32, kind(WGS84_E_2))), parameter:: E_2 = real(WGS84_E_2, kind = min(real32, kind(WGS84_E_2)))
            Real(kind=real32), intent(in):: lat ! (rad)
            Real(kind=real32), intent(in):: xy ! (m)
            Real(kind=real32):: answer
            answer = (xy - E_2*get_l(lat)*cos(lat))*tan(lat)
         end function get_z
      end function wgs84_rad_from_ecefRealDim0Kindreal32
      function get_lRealDim0Kindreal32(lat) result(answer)
         Real(kind = min(real32, kind(WGS84_E_2))), parameter:: E_2 = real(WGS84_E_2, kind = min(real32, kind(WGS84_E_2)))
         Real(kind = min(real32, kind(WGS84_A))), parameter:: A = real(WGS84_A, kind = min(real32, kind(WGS84_A)))
         Real(kind=real32), intent(in):: lat ! (rad)
         Real(kind=real32):: answer
         answer = A/sqrt(1 - E_2*(sin(lat)**2))
      end function get_lRealDim0Kindreal32
      function normalize_lonRealDim0Kindreal32(lon) result(answer)
         Real(kind=real32), intent(in):: lon ! (deg)
         Real(kind=real32):: answer ! (deg)
         if(lon < -180 .or. 180 < lon)then
            answer = lon - floor(lon/180)*180
         else
            answer = lon
         end if
         if(.not.(-180 <= lon .and. lon <= 180))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 313, (".not.(-180 <= lon .and. lon <= 180)"); error stop; end if
      end function normalize_lonRealDim0Kindreal32
      function normalize_lon_radRealDim0Kindreal32(lon) result(answer)
         Real(kind=real32), parameter:: PI = PIRealDim0Kindreal32
         Real(kind=real32), intent(in):: lon ! (rad)
         Real(kind=real32):: answer ! (rad)
         if(lon < PI .or. PI < lon)then
            answer = lon - floor(lon/PI)*PI
         else
            answer = lon
         end if
         if(.not.(-PI <= lon .and. lon <= PI))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 327, (".not.(-PI <= lon .and. lon <= PI)"); error stop; end if
      end function normalize_lon_radRealDim0Kindreal32
      function ecef_from_wgs84_arrayRealDim0Kindreal64(lonLatH) result(xyz)
         Real(kind=real64), intent(in):: lonLatH(1:3) ! (deg, deg, m)
         Real(kind=real64):: xyz(1:3) ! (m, m, m)
         xyz = ecef_from_wgs84(lonLatH(1), lonLatH(2), lonLatH(3))
      end function ecef_from_wgs84_arrayRealDim0Kindreal64
      function ecef_from_wgs84RealDim0Kindreal64(lon, lat, h) result(xyz)
         Real(kind=real64), intent(in):: lat ! (deg)
         Real(kind=real64), intent(in):: lon ! (deg)
         Real(kind=real64), intent(in):: h ! (m)
         Real(kind=real64):: xyz(1:3) ! (m, m, m)
         if(.not.(-90 <= lat .and. lat <= 90))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 343, (".not.(-90 <= lat .and. lat <= 90)"); error stop; end if
         xyz = ecef_from_wgs84_rad(rad_from_deg(lon), rad_from_deg(lat), h)
      end function ecef_from_wgs84RealDim0Kindreal64
      function ecef_from_wgs84_radRealDim0Kindreal64(lon, lat, h) result(xyz)
         Real(kind = min(real64, kind(WGS84_E_2))), parameter:: E_2 = real(WGS84_E_2, kind = min(real64, kind(WGS84_E_2)))
         Real(kind=real64), parameter:: HALF_PI = PIRealDim0Kindreal64/2
         Real(kind=real64), intent(in):: lat ! (rad)
         Real(kind=real64), intent(in):: lon ! (rad)
         Real(kind=real64), intent(in):: h ! (m)
         Real(kind=real64):: xyz(1:3) ! (m, m, m)
         Real(kind=real64):: l
         if(.not.(-HALF_PI <= lat .and. lat <= HALF_PI))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 356, (".not.(-HALF_PI <= lat .and. lat <= HALF_PI)"); error stop; end if
         l = get_l(lat)
         xyz(1) = (l + h)*cos(lat)*cos(lon)
         xyz(2) = (l + h)*cos(lat)*sin(lon)
         xyz(3) = ((1 - E_2)*l + h)*sin(lat)
      end function ecef_from_wgs84_radRealDim0Kindreal64
      function wgs84_from_ecef_arrayRealDim0Kindreal64(xyz) result(lonLatH)
         Real(kind=real64), intent(in):: xyz(1:3) ! (m, m, m)
         Real(kind=real64):: lonLatH(1:3)
         lonLatH = wgs84_from_ecef(xyz(1), xyz(2), xyz(3))
         if(.not.(-180 <= lonLatH(1) .and. lonLatH(1) <= 180))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 370, (".not.(-180 <= lonLatH(1) .and. lonLatH(1) <= 180)"); error stop; end if
         if(.not.(-90 <= lonLatH(2) .and. lonLatH(2) <= 90))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 371, (".not.(-90 <= lonLatH(2) .and. lonLatH(2) <= 90)"); error stop; end if
      end function wgs84_from_ecef_arrayRealDim0Kindreal64
      function wgs84_from_ecefRealDim0Kindreal64(x, y, z) result(lonLatH)
         Real(kind=real64), intent(in):: x ! (m)
         Real(kind=real64), intent(in):: y ! (m)
         Real(kind=real64), intent(in):: z ! (m)
         Real(kind=real64):: lonLatH(1:3) ! (deg, deg, m)
         Real(kind=real64):: lonLatHRad(1:3)
         lonLatHRad = wgs84_rad_from_ecef(x, y, z)
         lonLatH(1:2) = deg_from_rad(lonLatHRad(1:2))
         lonLatH(3) = lonLatHRad(3)
         if(.not.(-180 <= lonLatH(1) .and. lonLatH(1) <= 180))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 385, (".not.(-180 <= lonLatH(1) .and. lonLatH(1) <= 180)"); error stop; end if
         if(.not.(-90 <= lonLatH(2) .and. lonLatH(2) <= 90))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 386, (".not.(-90 <= lonLatH(2) .and. lonLatH(2) <= 90)"); error stop; end if
      end function wgs84_from_ecefRealDim0Kindreal64
      recursive function wgs84_rad_from_ecefRealDim0Kindreal64(x, y, z) result(lonLatH)
         Real(kind=real64), parameter:: PI = PIRealDim0Kindreal64
         Real(kind = kind(WGS84_A)), parameter:: A = WGS84_A
         Real(kind = kind(WGS84_B)), parameter:: B = WGS84_B
         Real(kind = min(real64, kind(WGS84_E_2))), parameter:: E_2 = real(WGS84_E_2, kind = min(real64, kind(WGS84_E_2)))
         Integer, parameter:: N_DIVISION = 2**3
         Real(kind=real64), intent(in):: x ! (m)
         Real(kind=real64), intent(in):: y ! (m)
         Real(kind=real64), intent(in):: z ! (m)
         Real(kind=real64):: lonLatH(1:3) ! (rad, rad, m)
         Real(kind=real64):: lon, lat
         Real(kind=real64):: xy
         Logical:: isLatGe45Degree
         if(.not.(N_DIVISION >= 2))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 403, (".not.(N_DIVISION >= 2)"); error stop; end if
         if(z < 0)then
            lonLatH = wgs84_rad_from_ecef(x, y, -z)
            lonLatH(2) = -lonLatH(2)
         else
            lon = atan2(y, x)
            xy = hypot(x, y)
            isLatGe45Degree = (z >= xy - (A**2 - B**2)/sqrt(A**2 + B**2))
            if(isLatGe45Degree)then
               call get_lat(get_x, xy, z, (3*PI)/8, PI/8, lat)
               lonLatH(3) = z/sin(lat) - (1 - E_2)*get_l(lat)
            else
               call get_lat(get_z, z, xy, PI/8, PI/8, lat)
               lonLatH(3) = xy/cos(lat) - get_l(lat)
            end if
            lonLatH(1) = lon
            lonLatH(2) = lat
         end if
         if(.not.(-PI <= lonLatH(1) .and. lonLatH(1) <= PI))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 425, (".not.(-PI <= lonLatH(1) .and. lonLatH(1) <= PI)"); error stop; end if
         if(.not.(-PI/2 <= lonLatH(2) .and. lonLatH(2) <= PI/2))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 426, (".not.(-PI/2 <= lonLatH(2) .and. lonLatH(2) <= PI/2)"); error stop; end if
      contains
         subroutine get_lat(get_p, p, q, lat0, latWidth, lat)
            interface
               function get_p (lat, c) result(answer)
                  use, intrinsic:: iso_fortran_env, only: int8, int16, int32, int64, real32, real64, real128
                  Real(kind=real64), intent(in):: lat
                  Real(kind=real64), intent(in):: c
                  Real(kind=real64):: answer
               end function get_p
            end interface
            Integer, parameter:: N_DIVISION = 2**3
            Real(kind=real64), intent(in):: p ! (m)
            Real(kind=real64), intent(in):: q ! (m)
            Real(kind=real64), intent(in):: lat0 ! Initial value (rad)
            Real(kind=real64), intent(in):: latWidth ! (rad)
            Real(kind=real64), intent(out):: lat ! (rad)
            Real(kind=real64):: latBest, lat0_, lat_, dLat
            Real(kind=real64):: residualMin, residual
            Integer:: iLat
            lat0_ = lat0
            latBest = lat0_
            lat_ = latBest
            residualMin = abs(p - get_p(lat_, q))
            dLat = latWidth
            ! Grid search for the best lat.
            do while(dLat >= tiny(dLat) .and. dLat >= latBest*epsilon(latBest)/N_DIVISION)
               dLat = dLat/N_DIVISION ! Increase precision
               do iLat = -N_DIVISION + 1, N_DIVISION - 1
                  lat_ = lat0_ + iLat*dLat
                  residual = abs(p - get_p(lat_, q))
                  if(residual < residualMin)then
                     latBest = lat_
                     residualMin = residual
                  end if
               end do
               lat0_ = latBest
            end do
            lat = latBest
         end subroutine get_lat
         function get_x(lat, z) result(answer)
            Real(kind = min(real64, kind(WGS84_E_2))), parameter:: E_2 = real(WGS84_E_2, kind = min(real64, kind(WGS84_E_2)))
            Real(kind=real64), intent(in):: lat ! (rad)
            Real(kind=real64), intent(in):: z ! (m)
            Real(kind=real64):: answer
            answer = (z/sin(lat) + E_2*get_l(lat))*cos(lat)
         end function get_x
         function get_z(lat, xy) result(answer)
            Real(kind = min(real64, kind(WGS84_E_2))), parameter:: E_2 = real(WGS84_E_2, kind = min(real64, kind(WGS84_E_2)))
            Real(kind=real64), intent(in):: lat ! (rad)
            Real(kind=real64), intent(in):: xy ! (m)
            Real(kind=real64):: answer
            answer = (xy - E_2*get_l(lat)*cos(lat))*tan(lat)
         end function get_z
      end function wgs84_rad_from_ecefRealDim0Kindreal64
      function get_lRealDim0Kindreal64(lat) result(answer)
         Real(kind = min(real64, kind(WGS84_E_2))), parameter:: E_2 = real(WGS84_E_2, kind = min(real64, kind(WGS84_E_2)))
         Real(kind = min(real64, kind(WGS84_A))), parameter:: A = real(WGS84_A, kind = min(real64, kind(WGS84_A)))
         Real(kind=real64), intent(in):: lat ! (rad)
         Real(kind=real64):: answer
         answer = A/sqrt(1 - E_2*(sin(lat)**2))
      end function get_lRealDim0Kindreal64
      function normalize_lonRealDim0Kindreal64(lon) result(answer)
         Real(kind=real64), intent(in):: lon ! (deg)
         Real(kind=real64):: answer ! (deg)
         if(lon < -180 .or. 180 < lon)then
            answer = lon - floor(lon/180)*180
         else
            answer = lon
         end if
         if(.not.(-180 <= lon .and. lon <= 180))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 512, (".not.(-180 <= lon .and. lon <= 180)"); error stop; end if
      end function normalize_lonRealDim0Kindreal64
      function normalize_lon_radRealDim0Kindreal64(lon) result(answer)
         Real(kind=real64), parameter:: PI = PIRealDim0Kindreal64
         Real(kind=real64), intent(in):: lon ! (rad)
         Real(kind=real64):: answer ! (rad)
         if(lon < PI .or. PI < lon)then
            answer = lon - floor(lon/PI)*PI
         else
            answer = lon
         end if
         if(.not.(-PI <= lon .and. lon <= PI))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 526, (".not.(-PI <= lon .and. lon <= PI)"); error stop; end if
      end function normalize_lon_radRealDim0Kindreal64
      function ecef_from_wgs84_arrayRealDim0Kindreal128(lonLatH) result(xyz)
         Real(kind=real128), intent(in):: lonLatH(1:3) ! (deg, deg, m)
         Real(kind=real128):: xyz(1:3) ! (m, m, m)
         xyz = ecef_from_wgs84(lonLatH(1), lonLatH(2), lonLatH(3))
      end function ecef_from_wgs84_arrayRealDim0Kindreal128
      function ecef_from_wgs84RealDim0Kindreal128(lon, lat, h) result(xyz)
         Real(kind=real128), intent(in):: lat ! (deg)
         Real(kind=real128), intent(in):: lon ! (deg)
         Real(kind=real128), intent(in):: h ! (m)
         Real(kind=real128):: xyz(1:3) ! (m, m, m)
         if(.not.(-90 <= lat .and. lat <= 90))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 542, (".not.(-90 <= lat .and. lat <= 90)"); error stop; end if
         xyz = ecef_from_wgs84_rad(rad_from_deg(lon), rad_from_deg(lat), h)
      end function ecef_from_wgs84RealDim0Kindreal128
      function ecef_from_wgs84_radRealDim0Kindreal128(lon, lat, h) result(xyz)
         Real(kind = min(real128, kind(WGS84_E_2))), parameter:: E_2 = real(WGS84_E_2, kind = min(real128, kind(WGS84_E_2)))
         Real(kind=real128), parameter:: HALF_PI = PIRealDim0Kindreal128/2
         Real(kind=real128), intent(in):: lat ! (rad)
         Real(kind=real128), intent(in):: lon ! (rad)
         Real(kind=real128), intent(in):: h ! (m)
         Real(kind=real128):: xyz(1:3) ! (m, m, m)
         Real(kind=real128):: l
         if(.not.(-HALF_PI <= lat .and. lat <= HALF_PI))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 555, (".not.(-HALF_PI <= lat .and. lat <= HALF_PI)"); error stop; end if
         l = get_l(lat)
         xyz(1) = (l + h)*cos(lat)*cos(lon)
         xyz(2) = (l + h)*cos(lat)*sin(lon)
         xyz(3) = ((1 - E_2)*l + h)*sin(lat)
      end function ecef_from_wgs84_radRealDim0Kindreal128
      function wgs84_from_ecef_arrayRealDim0Kindreal128(xyz) result(lonLatH)
         Real(kind=real128), intent(in):: xyz(1:3) ! (m, m, m)
         Real(kind=real128):: lonLatH(1:3)
         lonLatH = wgs84_from_ecef(xyz(1), xyz(2), xyz(3))
         if(.not.(-180 <= lonLatH(1) .and. lonLatH(1) <= 180))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 569, (".not.(-180 <= lonLatH(1) .and. lonLatH(1) <= 180)"); error stop; end if
         if(.not.(-90 <= lonLatH(2) .and. lonLatH(2) <= 90))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 570, (".not.(-90 <= lonLatH(2) .and. lonLatH(2) <= 90)"); error stop; end if
      end function wgs84_from_ecef_arrayRealDim0Kindreal128
      function wgs84_from_ecefRealDim0Kindreal128(x, y, z) result(lonLatH)
         Real(kind=real128), intent(in):: x ! (m)
         Real(kind=real128), intent(in):: y ! (m)
         Real(kind=real128), intent(in):: z ! (m)
         Real(kind=real128):: lonLatH(1:3) ! (deg, deg, m)
         Real(kind=real128):: lonLatHRad(1:3)
         lonLatHRad = wgs84_rad_from_ecef(x, y, z)
         lonLatH(1:2) = deg_from_rad(lonLatHRad(1:2))
         lonLatH(3) = lonLatHRad(3)
         if(.not.(-180 <= lonLatH(1) .and. lonLatH(1) <= 180))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 584, (".not.(-180 <= lonLatH(1) .and. lonLatH(1) <= 180)"); error stop; end if
         if(.not.(-90 <= lonLatH(2) .and. lonLatH(2) <= 90))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 585, (".not.(-90 <= lonLatH(2) .and. lonLatH(2) <= 90)"); error stop; end if
      end function wgs84_from_ecefRealDim0Kindreal128
      recursive function wgs84_rad_from_ecefRealDim0Kindreal128(x, y, z) result(lonLatH)
         Real(kind=real128), parameter:: PI = PIRealDim0Kindreal128
         Real(kind = kind(WGS84_A)), parameter:: A = WGS84_A
         Real(kind = kind(WGS84_B)), parameter:: B = WGS84_B
         Real(kind = min(real128, kind(WGS84_E_2))), parameter:: E_2 = real(WGS84_E_2, kind = min(real128, kind(WGS84_E_2)))
         Integer, parameter:: N_DIVISION = 2**3
         Real(kind=real128), intent(in):: x ! (m)
         Real(kind=real128), intent(in):: y ! (m)
         Real(kind=real128), intent(in):: z ! (m)
         Real(kind=real128):: lonLatH(1:3) ! (rad, rad, m)
         Real(kind=real128):: lon, lat
         Real(kind=real128):: xy
         Logical:: isLatGe45Degree
         if(.not.(N_DIVISION >= 2))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 602, (".not.(N_DIVISION >= 2)"); error stop; end if
         if(z < 0)then
            lonLatH = wgs84_rad_from_ecef(x, y, -z)
            lonLatH(2) = -lonLatH(2)
         else
            lon = atan2(y, x)
            xy = hypot(x, y)
            isLatGe45Degree = (z >= xy - (A**2 - B**2)/sqrt(A**2 + B**2))
            if(isLatGe45Degree)then
               call get_lat(get_x, xy, z, (3*PI)/8, PI/8, lat)
               lonLatH(3) = z/sin(lat) - (1 - E_2)*get_l(lat)
            else
               call get_lat(get_z, z, xy, PI/8, PI/8, lat)
               lonLatH(3) = xy/cos(lat) - get_l(lat)
            end if
            lonLatH(1) = lon
            lonLatH(2) = lat
         end if
         if(.not.(-PI <= lonLatH(1) .and. lonLatH(1) <= PI))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 624, (".not.(-PI <= lonLatH(1) .and. lonLatH(1) <= PI)"); error stop; end if
         if(.not.(-PI/2 <= lonLatH(2) .and. lonLatH(2) <= PI/2))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 625, (".not.(-PI/2 <= lonLatH(2) .and. lonLatH(2) <= PI/2)"); error stop; end if
      contains
         subroutine get_lat(get_p, p, q, lat0, latWidth, lat)
            interface
               function get_p (lat, c) result(answer)
                  use, intrinsic:: iso_fortran_env, only: int8, int16, int32, int64, real32, real64, real128
                  Real(kind=real128), intent(in):: lat
                  Real(kind=real128), intent(in):: c
                  Real(kind=real128):: answer
               end function get_p
            end interface
            Integer, parameter:: N_DIVISION = 2**3
            Real(kind=real128), intent(in):: p ! (m)
            Real(kind=real128), intent(in):: q ! (m)
            Real(kind=real128), intent(in):: lat0 ! Initial value (rad)
            Real(kind=real128), intent(in):: latWidth ! (rad)
            Real(kind=real128), intent(out):: lat ! (rad)
            Real(kind=real128):: latBest, lat0_, lat_, dLat
            Real(kind=real128):: residualMin, residual
            Integer:: iLat
            lat0_ = lat0
            latBest = lat0_
            lat_ = latBest
            residualMin = abs(p - get_p(lat_, q))
            dLat = latWidth
            ! Grid search for the best lat.
            do while(dLat >= tiny(dLat) .and. dLat >= latBest*epsilon(latBest)/N_DIVISION)
               dLat = dLat/N_DIVISION ! Increase precision
               do iLat = -N_DIVISION + 1, N_DIVISION - 1
                  lat_ = lat0_ + iLat*dLat
                  residual = abs(p - get_p(lat_, q))
                  if(residual < residualMin)then
                     latBest = lat_
                     residualMin = residual
                  end if
               end do
               lat0_ = latBest
            end do
            lat = latBest
         end subroutine get_lat
         function get_x(lat, z) result(answer)
            Real(kind = min(real128, kind(WGS84_E_2))), parameter:: E_2 = real(WGS84_E_2, kind = min(real128, kind(WGS84_E_2)))
            Real(kind=real128), intent(in):: lat ! (rad)
            Real(kind=real128), intent(in):: z ! (m)
            Real(kind=real128):: answer
            answer = (z/sin(lat) + E_2*get_l(lat))*cos(lat)
         end function get_x
         function get_z(lat, xy) result(answer)
            Real(kind = min(real128, kind(WGS84_E_2))), parameter:: E_2 = real(WGS84_E_2, kind = min(real128, kind(WGS84_E_2)))
            Real(kind=real128), intent(in):: lat ! (rad)
            Real(kind=real128), intent(in):: xy ! (m)
            Real(kind=real128):: answer
            answer = (xy - E_2*get_l(lat)*cos(lat))*tan(lat)
         end function get_z
      end function wgs84_rad_from_ecefRealDim0Kindreal128
      function get_lRealDim0Kindreal128(lat) result(answer)
         Real(kind = min(real128, kind(WGS84_E_2))), parameter:: E_2 = real(WGS84_E_2, kind = min(real128, kind(WGS84_E_2)))
         Real(kind = min(real128, kind(WGS84_A))), parameter:: A = real(WGS84_A, kind = min(real128, kind(WGS84_A)))
         Real(kind=real128), intent(in):: lat ! (rad)
         Real(kind=real128):: answer
         answer = A/sqrt(1 - E_2*(sin(lat)**2))
      end function get_lRealDim0Kindreal128
      function normalize_lonRealDim0Kindreal128(lon) result(answer)
         Real(kind=real128), intent(in):: lon ! (deg)
         Real(kind=real128):: answer ! (deg)
         if(lon < -180 .or. 180 < lon)then
            answer = lon - floor(lon/180)*180
         else
            answer = lon
         end if
         if(.not.(-180 <= lon .and. lon <= 180))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 711, (".not.(-180 <= lon .and. lon <= 180)"); error stop; end if
      end function normalize_lonRealDim0Kindreal128
      function normalize_lon_radRealDim0Kindreal128(lon) result(answer)
         Real(kind=real128), parameter:: PI = PIRealDim0Kindreal128
         Real(kind=real128), intent(in):: lon ! (rad)
         Real(kind=real128):: answer ! (rad)
         if(lon < PI .or. PI < lon)then
            answer = lon - floor(lon/PI)*PI
         else
            answer = lon
         end if
         if(.not.(-PI <= lon .and. lon <= PI))then; write(error_unit, *) "ERROR: ", "geodetic_lib.f90", " ", 725, (".not.(-PI <= lon .and. lon <= PI)"); error stop; end if
      end function normalize_lon_radRealDim0Kindreal128
end module geodetic_lib
