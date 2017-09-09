bld_mode := cc
feat_list += cc

CC := $p$(or $(cc_name),cc)
CXX := $p$(or $(cxx_name),c++)
AR := $p$(or $(ar_name),ar)
CFLAGS ?= -fPIC
CXXFLAGS ?= -fPIC

target := $(shell $(CC) -dumpmachine)
t ?= $(tmp_root)/$(target)-$(builder)-$(cfg)
o ?= $(out_root)/$(target)-$(builder)-$(cfg)

ifeq ($(cfg),debug)
CPPFLAGS := -D_DEBUG=1
CFLAGS += -O0 -g
CXXFLAGS += -O0 -g
endif

ifeq ($(cfg),release)
CPPFLAGS := -DNDEBUG
CFLAGS += -Ofast 
CXXFLAGS += -Ofast 
exe_export ?= strip --strip-unneeded -o $1 $2
endif

