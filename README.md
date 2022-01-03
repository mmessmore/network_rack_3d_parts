# Network Rack 3D Parts

## Background
I bought a ["10 inch" rack from a random company](https://amzn.to/32OxonI).
It's not exactly 10 inches. Not the worst thing, since the only actual 10"
component I had was a patch panel.

These are the various parts I'm creating to neatly mount my gear in it.

These brackets are *not* generic adapters, but specific to the gear.

## Status

Currently parts are yet to be printed or tested.  This is early in progress.

## Building

I'm a software developer by nature, so these are not designed to be built by a
GUI such as Cura.  You can do it that way, but this has Makefiles to do the
work.

I've tried to do a pretty generic Makefile system for my workflow here, so that
may be helpful itself if you're doing a project.

I'm using OpenSCAD for modeling and generating STL files.  Then I'm using the
Prusa fork of Slic3r to generate the Gcode files.  In theory, you could drop
Slic3r in just fine and change the Makefiles.  I'm just doing this on Arch,
the Prusa fork is there OOB, and I'm lazy.

Those pieces of software need to be installed and in your `$PATH`.

### Config

I have a [Creality Ender 3](https://amzn.to/3mQNTXt) printer, so
[config file](./config.ini) is setup for that w/ [Creality Brand
PLA](https://amzn.to/31jR0PY).

You can generate a new config file via the Slic3r GUI and replace the
[./config.ini](./config.ini) for your printer and filament or edit by hand. Use
the File->Export->Config via the GUI and not one of the "Config Bundle"
options so that the config includes all values.

### Instructions

Run `make` in the top-level directory to generate both STL and Gcode files, or
in one of the sub-directories to generate that part only.  You can run
`make stl` in either to only generate STL files only for use in Cura, etc. if
you want to go that route.

### Note

Variables for OpenSCAD for the rack itself are in the top-level
[project_vars.scad](./project_vars.scad) file. I do prefer doing math and
setting variables in my SCAD files vs inline in general.  To me, that's more
readable.  I should be more consistent with my naming, but that's a personal
flaw.

All rack measurements were done by hand.  These seem to be somewhat
inconsistent in the product based on reviews.  You may want to double check
yourself and update the top level variables appropriately outside the machine
screw and generic rack unit values.

## Contributions

Contributions are welcome.  Just enter a PR and make sure to let me know the
purpose.

## License

Like most of my projects, this is under an [MIT License](./LICENSE).  You are
welcome to do what you like, preserving attribution, etc. in accordance with
that.

I do not like being restrictive and feel that this strikes a balance. I am not
open to changing that license.

## Individual Parts

### [10" Patch Panel](./patch_panel)

This is a [TRENDnet 12-port Cat6 Patch Panel](https://amzn.to/3mQNTXt).

The bracket that ships with it to mount in a rack or a wall doesn't fit.  So
this is a new bracket.

This will require drilling 2 holes in the sheet metal on the panel for m3
machine screws.  It also tries to use the notches to provide a little extra
stability, however they're not proper "clips" like the original bracket.

I'm trying to make it very stable.

## Disclaimers

Links to Amazon are affiliate links. Using them helps me a bit.  Or don't.
Whatever.

There is 0 Guarantee here. This may not work for you.  It may blow up your
3D printer, burn your house down.  Side effects may include heartburn, nausea,
depression, or death.  Ask your doctor if this project is right for you.  Do
not use if you are allergic to trial and error.
