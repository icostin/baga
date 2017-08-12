builder := mingw64
bld_mode := cc

p := x86_64-w64-mingw32-
cc_name := gcc
cxx_name := g++

dlib_out_dir := bin
exe_suffix := .exe
dlib_prefix :=
dlib_suffix := .dll

CFLAGS :=
CXXFLAGS :=

include $b/cc-builder.mk

