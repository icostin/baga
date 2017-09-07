builder := mingw64
bld_mode := cc

p := x86_64-w64-mingw32-
cc_name := gcc
cxx_name := g++

exe_suffix := .exe
dlib_prefix :=
dlib_suffix := .dll

define dlib_export
	mkdir -p $(dir $1)../bin
	cp -f $2 $(dir $1)../bin/$(notdir $1)
	cp -f $2.a $1.a
endef

CFLAGS :=
CXXFLAGS :=
LDFLAGS = -Wl,--out-implib,$@.a

include $b/cc-builder.mk
