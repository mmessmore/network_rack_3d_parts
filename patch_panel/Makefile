stl_files := $(shell ls *.scad | sed -e 's!\.scad$$!.stl!g' )
gcode_files := $(shell ls *.scad | sed -e 's!\.scad$$!.gcode!g' )
include_files := $(shell ls ../*.scad)
SLICER := 'prusa-slicer'

all: gcode

gcode: $(gcode_files)

stl: $(stl_files)

%.stl: %.scad $(include_files)
	openscad -o $@ $<

%.gcode: %.stl ../slicer_config.ini
	$(SLICER) --load ../slicer_config.ini -g $<

.PHONY: clean
clean:
	rm -f $(stl_files) $(gcode_files)
