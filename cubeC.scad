include <modules.scad>


// part = 0 pour la couleur, part = 1 pour le noir, part = 2 pour le blanc
part = 2;
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
        translate([35/2,0,-5]) rotate([0,90,0])    noir ("Marker30.png","ID=30");
        rotate([0,0,90])    translate([35/2,0,-5]) rotate([0,90,0])    noir ("Marker31.png","ID=31");
        rotate([0,0,180])    translate([35/2,0,-5]) rotate([0,90,0])   noir ("Marker32.png","ID=32");
        rotate([0,0,270])    translate([35/2,0,-5]) rotate([0,90,0])   noir ("Marker33.png","ID=33");
        rotate([0,90,0])    translate([35/2,0,-5]) rotate([0,90,0])    noir ("Marker34.png","ID=34");
        rotate([0,270,0])    translate([35/2,0,-5]) rotate([0,90,0])   noir ("Marker35.png","ID=35");
    }
}

if (part == 2)
{

    // partie blanche
    color([1,1,1])  union()
    {
        translate([35/2,0,-5]) rotate([0,90,0])    blanc ("Marker30.png","ID=30");
        rotate([0,0,90])    translate([35/2,0,-5]) rotate([0,90,0])    blanc ("Marker31.png","ID=31");
        rotate([0,0,180])    translate([35/2,0,-5]) rotate([0,90,0])   blanc ("Marker32.png","ID=32");
        rotate([0,0,270])    translate([35/2,0,-5]) rotate([0,90,0])   blanc ("Marker33.png","ID=33");
        rotate([0,90,0])    translate([35/2,0,-5]) rotate([0,90,0])    blanc ("Marker34.png","ID=34");
        rotate([0,270,0])    translate([35/2,0,-5]) rotate([0,90,0])   blanc ("Marker35.png","ID=35");
    }
}