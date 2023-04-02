include <modules.scad>


// part = 0 pour la couleur, part = 1 pour le noir, part = 2 pour le blanc
part = 2;
//color([0,0,0])     noir ("Marker200.png","ID=200");
//color([1,1,1])  blanc ("Marker200.png","ID=200");


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
        translate([35/2,0,-5]) rotate([0,90,0])    noir ("Marker20.png","ID=20");
        rotate([0,0,90])    translate([35/2,0,-5]) rotate([0,90,0])    noir ("Marker21.png","ID=21");
        rotate([0,0,180])    translate([35/2,0,-5]) rotate([0,90,0])   noir ("Marker22.png","ID=22");
        rotate([0,0,270])    translate([35/2,0,-5]) rotate([0,90,0])   noir ("Marker23.png","ID=23");
        rotate([0,90,0])    translate([35/2,0,-5]) rotate([0,90,0])    noir ("Marker24.png","ID=24");
        rotate([0,270,0])    translate([35/2,0,-5]) rotate([0,90,0])   noir ("Marker25.png","ID=25");
    }
}

if (part == 2)
{

    // partie blanche
    color([1,1,1])  union()
    {
        translate([35/2,0,-5]) rotate([0,90,0])    blanc ("Marker20.png","ID=20");
        rotate([0,0,90])    translate([35/2,0,-5]) rotate([0,90,0])    blanc ("Marker21.png","ID=21");
        rotate([0,0,180])    translate([35/2,0,-5]) rotate([0,90,0])   blanc ("Marker22.png","ID=22");
        rotate([0,0,270])    translate([35/2,0,-5]) rotate([0,90,0])   blanc ("Marker23.png","ID=23");
        rotate([0,90,0])    translate([35/2,0,-5]) rotate([0,90,0])    blanc ("Marker24.png","ID=24");
        rotate([0,270,0])    translate([35/2,0,-5]) rotate([0,90,0])   blanc ("Marker25.png","ID=25");
    }
}