SDK_DIR ?= lib/twr-sdk
VERSION ?= vdev
APP_DIR ?= src
INC_DIR += include

CFLAGS += -D'VERSION="${VERSION}"'

-include ${SDK_DIR}/Makefile.mk

.PHONY: all
all: debug

.PHONY: sdk
sdk: lib/twr-sdk/Makefile.mk

.PHONY: update
update:
	@git submodule update --remote --merge lib/twr-sdk
	# @git submodule update --remote --merge .vscode

lib/twr-sdk/Makefile.mk:
	@git submodule update --init lib/twr-sdk
	# @git submodule update --init .vscode
