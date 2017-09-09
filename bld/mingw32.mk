builder := mingw32
bld_mode := cc
feat_list += gcc mingw

p := i686-w64-mingw32-
cc_name := gcc
cxx_name := g++

exe_suffix := .exe
dlib_out_dir := bin
dlib_prefix :=
dlib_suffix := .dll

define dlib_export
	mkdir -p $(dir $1)../lib
	cp -f $2 $1
	cp -f $2.a $(dir $1)../lib/$(notdir $1).a
endef

CFLAGS :=
CXXFLAGS :=
LDFLAGS = -Wl,--out-implib,$@.a

include $b/cc-builder.mk
