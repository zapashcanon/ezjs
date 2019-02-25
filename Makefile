
#############################################################################
#
#          This file is managed by ocp-autoconf.
#
#  Remove it from `manage_files` in 'ocp-autoconf.config' if you want to
#  modify it manually.
#
#############################################################################

include autoconf/Makefile.config

all: build

-include ocp-autoconf.d/Makefile

build: conf ocp-build-build $(PROJECT_BUILD)

install: ocp-build-install $(PROJECT_INSTALL)

clean: ocp-build-clean $(PROJECT_CLEAN)

distclean: clean ocp-distclean $(PROJECT_DISTCLEAN)
	find . -name '*~' -exec rm -f {} \;

test: build
	cp _obuild/main/main.js test

include autoconf/Makefile.rules
