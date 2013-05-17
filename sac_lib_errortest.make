all: sac_lib_errortest/set_kstnm_with_too_long_argument.exe sac_lib_errortest/set_kevnm_with_too_long_argument.exe sac_lib_errortest/set_iftype_with_invalid_argument.exe sac_lib_errortest/get_iftype_for_undefined_value.exe sac_lib_errortest/get_imagsrc_for_undefined_value.exe
sac_lib_errortest/set_kstnm_with_too_long_argument.exe: sac_lib.o sac_lib_errortest/set_kstnm_with_too_long_argument.F90
	/opt/local/bin/gfortran-mp-4.8 -ffree-line-length-none -fmax-identifier-length=63 -pipe -cpp -C -Wall -o $@ $^
sac_lib_errortest/set_kevnm_with_too_long_argument.exe: sac_lib.o sac_lib_errortest/set_kevnm_with_too_long_argument.F90
	/opt/local/bin/gfortran-mp-4.8 -ffree-line-length-none -fmax-identifier-length=63 -pipe -cpp -C -Wall -o $@ $^
sac_lib_errortest/set_iftype_with_invalid_argument.exe: sac_lib.o sac_lib_errortest/set_iftype_with_invalid_argument.F90
	/opt/local/bin/gfortran-mp-4.8 -ffree-line-length-none -fmax-identifier-length=63 -pipe -cpp -C -Wall -o $@ $^
sac_lib_errortest/get_iftype_for_undefined_value.exe: sac_lib.o sac_lib_errortest/get_iftype_for_undefined_value.F90
	/opt/local/bin/gfortran-mp-4.8 -ffree-line-length-none -fmax-identifier-length=63 -pipe -cpp -C -Wall -o $@ $^
sac_lib_errortest/get_imagsrc_for_undefined_value.exe: sac_lib.o sac_lib_errortest/get_imagsrc_for_undefined_value.F90
	/opt/local/bin/gfortran-mp-4.8 -ffree-line-length-none -fmax-identifier-length=63 -pipe -cpp -C -Wall -o $@ $^
