$fn = 100;
difference() {
    translate([0,0,-1.625]) cube([60,23,3.25]);
    union(){
        translate([60,0,0]) rotate([13.07,180,0])  cube([60,23,3.25]);
        rotate([13.07,0,0]) cube([60,23,3.25]);
    }
}
intersection() {
    translate([-50,0,-1.625]) cube([100,23,3.25]);
    union() {
        translate([0,61,0]) cylinder(h = 1.625, r1 = 61, r2 = 54, center = false);
        translate([0,61,-1.625]) cylinder(h = 1.625, r1 = 54, r2 = 61, center =false);
    }
}
