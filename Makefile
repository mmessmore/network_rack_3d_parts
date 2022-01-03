# Copyright (c) 2021 Michael Messmore

subdirs := $(shell find . -maxdepth 1 -type d -not -name '.*')

SLICER := ''

.PHONY: all
all:
	for d in $(subdirs); do \
		$(MAKE) -C $$d; \
	done

.PHONY: stl
stl:
	for d in $(subdirs); do \
		$(MAKE) -C $$d stl; \
	done

.PHONY: clean
clean:
	for d in $(subdirs); do \
		$(MAKE) -C $$d clean; \
	done

