include <modules.scad>


module text_()
{
 union()
        {
    translate([-25,-18,1.5])  rotate([0,0,90])  linear_extrude(1)  text ("CIBLE / TARGET", font="Ubuntu Mono:style=Bold", $fn=50,size= 4);             
        translate([20,-28,1.5]) rotate([0,0,90])    linear_extrude(1)  text("POLYTECH CLERMONT", font="Ubuntu Mono:style=Bold", $fn=50,size= 5 );
        translate([28,-27,1.5]) rotate([0,0,90])    linear_extrude(1)  text("GENIE ELECTRIQUE", font="Ubuntu Mono:style=Bold", $fn=50,size= 5 );
        }      
}

// part = 0 pour la couleur, part = 1 pour le noir, part = 2 pour le blanc
part = 1;

if (part == 0)
{
    difference()
    {
        cylinder(r=40,h=5, $fn=50,center=true);
        translate([-10,0,0]) rotate([0,0,180])   shape();
        text_();
    }
}

if (part == 1)  // partie noire
{
    
    color([0,0,0])      union()
    {
        translate([-10,0,0]) rotate([0,0,180])   noir ("Marker0.png","ID=0");
        text_();
    }
}

if (part == 2)
{

    // partie blanche
    color([1,1,1])  union()
    {
        translate([-10,0,0]) rotate([0,0,180])   blanc ("Marker0.png","ID=0");
    }
}