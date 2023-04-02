include <modules.scad>


// part = 0 pour la couleur, part = 1 pour le noir, part = 2 pour le blanc
part = 0;
//color([0,0,0])     noir ("Marker100.png","ID=100");
//color([1,1,1])  blanc ("Marker100.png","ID=100");


if (part == 0)
{
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
}

if (part == 1)
{
    // partie noire
    color([0,0,0])      union()
    {
        translate([35/2,0,-5]) rotate([0,90,0])    noir ("Marker10.png","ID=10");
        rotate([0,0,90])    translate([35/2,0,-5]) rotate([0,90,0])    noir ("Marker11.png","ID=11");
        rotate([0,0,180])    translate([35/2,0,-5]) rotate([0,90,0])   noir ("Marker12.png","ID=12");
        rotate([0,0,270])    translate([35/2,0,-5]) rotate([0,90,0])   noir ("Marker13.png","ID=13");
        rotate([0,90,0])    translate([35/2,0,-5]) rotate([0,90,0])    noir ("Marker14.png","ID=14");
        rotate([0,270,0])    translate([35/2,0,-5]) rotate([0,90,0])   noir ("Marker15.png","ID=15");
    }
}

if (part == 2)
{

    // partie blanche
    color([1,1,1])  union()
    {
        translate([35/2,0,-5]) rotate([0,90,0])    blanc ("Marker10.png","ID=10");
        rotate([0,0,90])    translate([35/2,0,-5]) rotate([0,90,0])    blanc ("Marker11.png","ID=11");
        rotate([0,0,180])    translate([35/2,0,-5]) rotate([0,90,0])   blanc ("Marker12.png","ID=12");
        rotate([0,0,270])    translate([35/2,0,-5]) rotate([0,90,0])   blanc ("Marker13.png","ID=13");
        rotate([0,90,0])    translate([35/2,0,-5]) rotate([0,90,0])    blanc ("Marker14.png","ID=14");
        rotate([0,270,0])    translate([35/2,0,-5]) rotate([0,90,0])   blanc ("Marker15.png","ID=15");
    }
}