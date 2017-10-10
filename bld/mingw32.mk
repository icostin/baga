builder := mingw32
bld_mode := cc
feat_list += gcc mingw

p := i686-w64-mingw32-
cc_name := gcc
cxx_name := g++

exe_suffix := .exe
dlib_prefix :=
dlib_suffix := .dll

define dlib_export
	$(cmd_vis)mkdir -p $(dir $1)../bin
	$(cmd_vis)cp -f $2 $(dir $1)../bin/$(notdir $1)
	$(cmd_vis)cp -f $2.a $1.a
endef

CFLAGS :=
CXXFLAGS :=
LDFLAGS = -Wl,--out-implib,$@.a

include $b/cc-builder.mk
