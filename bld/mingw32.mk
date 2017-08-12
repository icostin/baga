builder := mingw32
bld_mode := cc

p := x86_64-w64-mingw32-
cc_name := gcc
cxx_name := g++

include $b/cc-builder.mk
