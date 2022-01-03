include <../project_vars.scad>

// total panel
panel_width = 255;
panel_height = 57;

// actual panel of plugs
plug_panel_from_side = 19;
plug_panel_height = 26;

// notch
notch_from_side = 20;
notch_width = 12;

// main bracket
fake_hole_offset=-5;
fake_hole_height=10;
main_bracket_width = ((r_total_width - panel_width) / 2) + plug_panel_from_side;

// extension around panel
bracket_extension_width = ((r_total_width - panel_width) / 2) + notch_from_side + notch_width;
bracket_extension_height = (r_unit - plug_panel_height) / 2;

// m3 screw offsets
m3_h_offset = main_bracket_width - 10;
// 1/4 up
m3_v1_offset = r_unit / 4;
// 3/4 up
m3_v2_offset = (r_unit / 4) * 3;

difference() {
    // main plastic
    union() {
        cube([main_bracket_width, r_unit, thickness]);
        cube([bracket_extension_width, bracket_extension_height, thickness]);
        translate([0, r_unit - bracket_extension_height, 0])
            cube([bracket_extension_width, bracket_extension_height, thickness]);
        translate([main_bracket_width, 0, 0])
            color("#FF0000") cube([notch_width, 1, 4]);
        translate([main_bracket_width, r_unit - 1, 0])
            color("#00FF00") cube([notch_width, 1, 4]);
    }
    // rack screw holes
    translate([r_screw_h_offset, r_screw_v_offset, fake_hole_offset])
        cylinder(fake_hole_height, r_screw_r, r_screw_r);
    translate([r_screw_h_offset, r_screw_v_offset + r_screw_delta, fake_hole_offset])
        cylinder(fake_hole_height, r_screw_r, r_screw_r);

    // m3 screw holes
    translate([m3_h_offset, m3_v1_offset, fake_hole_offset])
        cylinder(fake_hole_height, m3_r, m3_r);
    translate([m3_h_offset, m3_v2_offset, fake_hole_offset])
        cylinder(fake_hole_height, m3_r, m3_r);
}
