all: binary_tree_map_lib_errortest/add_too_long_key.exe
binary_tree_map_lib_errortest/add_too_long_key.exe: binary_tree_map_lib.o binary_tree_map_lib_errortest/add_too_long_key.F90
	/opt/local/bin/gfortran-mp-4.8 -ffree-line-length-none -fmax-identifier-length=63 -pipe -cpp -C -Wall -o $@ $^
