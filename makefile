.PHONY: install uninstall reinstall

PREFIX_DIR ?= $(if $(filter root,$(USER)),/usr/local,$(HOME)/.local)
$(and $(verbose),$(info prefix dir: $(PREFIX_DIR)))

v := $(and $(verbose),v)

install:
	install -$vDt$(PREFIX_DIR)/bin baga
	install -m644 -$vDt$(PREFIX_DIR)/lib/baga *.gmk *.mk
	install -m644 -$vDt$(PREFIX_DIR)/lib/baga/bld bld/*

uninstall:
	-rm -f $(PREFIX_DIR)/bin/baga 
	-rm -rf $(PREFIX_DIR)/lib/baga

reinstall: uninstall install
