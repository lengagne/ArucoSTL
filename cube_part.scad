include <modules.scad>

difference()
{
    cube([40,40,40],center=true);    
    cube([38,38,38],center=true);    
    translate([35/2,0,-5]) rotate([0,90,0])    shape();
    rotate([0,0,90])    translate([35/2,0,-5]) rotate([0,90,0])    shape();
    rotate([0,0,180])    translate([35/2,0,-5]) rotate([0,90,0])    shape();
    rotate([0,0,270])    translate([35/2,0,-5]) rotate([0,90,0])    shape();
    rotate([0,90,0])    translate([35/2,0,-5]) rotate([0,90,0])    shape();
    rotate([0,270,0])    translate([35/2,0,-5]) rotate([0,90,0])    shape();
}
