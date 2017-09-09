builder := host_clang
bld_mode := cc
feat_list += clang
p :=
cc_name := clang
cxx_name := clang++

include $b/cc-builder.mk

# vim: set ft=make :
