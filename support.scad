include <modules.scad>


// part = 1 pour le noir, part = 2 pour le blanc

part = 2;
//color([0,0,0])     noir ("Marker100.png","ID=100");
//color([1,1,1])  blanc ("Marker100.png","ID=100");


if (part == 1)
{
    // partie noire
    color([0,0,0])      union()
    {
        difference()
        {
            cylinder(r=112/2,h=2,$fn=100,center=true);
            cylinder(r=112/2 - 10 ,h=5.5,$fn=100,center=true);       
        }
        
        difference()
        {
            cylinder(r=141/2,h=2,$fn=100,center=true);
            cylinder(r=141/2 - 10 ,h=5.5,$fn=100,center=true);       
        }    

       for ( i = [0:60:360])    rotate([0,0,i]) translate([118/2,0,0])
        difference()
        {
            cylinder(r=12/2,h=2,$fn=100,center=true);
            cylinder(r=3/2,h=2.5,$fn=100,center=true);
        }
        
        translate([0,0,1.5])
        {
        
            translate([-65,45,0])   noir ("Marker100.png","ID=100");
            translate([-65,-45,0])  noir ("Marker101.png","ID=101");
            translate([0,-80,0])    noir ("Marker102.png","ID=102");
            translate([75,45,0])    noir ("Marker104.png","ID=104");
            translate([75,-45,0])   noir ("Marker103.png","ID=103");    
            translate([0,80,0])     noir ("Marker105.png","ID=105");
        }

        difference()
        {
            translate([-85,-28,-1]) cube([20,56,3]);
            color([1,0,0])
            translate([-71,13,0]) rotate([0,0,-90])    linear_extrude(3)  text("POLYTECH", font="Ubuntu Mono:style=Bold", $fn=50,size= 5 );
            translate([-76,13,0]) rotate([0,0,-90])    linear_extrude(3)  text("CLERMONT", font="Ubuntu Mono:style=Bold", $fn=50,size= 5 );
            translate([-81,3,0]) rotate([0,0,-90])    linear_extrude(3)  text("GE", font="Ubuntu Mono:style=Bold", $fn=50,size= 5 );
        }        
    }
}

if (part == 2)
{

    // partie blanche
    color([1,1,1])  union()
    {
        translate([0,0,1.5])
        {
        
            translate([-65,45,0])    blanc ("Marker100.png","ID=100");
            translate([-65,-45,0])    blanc ("Marker101.png","ID=101");
            translate([0,-80,0])blanc ("Marker102.png","ID=102");
            translate([75,45,0])    blanc ("Marker104.png","ID=104");
            translate([75,-45,0])    blanc ("Marker103.png","ID=103");    
            translate([0,80,0])    blanc ("Marker105.png","ID=105");
        }
        union()
        {
        translate([-71,13,0]) rotate([0,0,-90])    linear_extrude(2)  text("POLYTECH", font="Ubuntu Mono:style=Bold", $fn=50,size= 5 );
        translate([-76,13,0]) rotate([0,0,-90])    linear_extrude(2)  text("CLERMONT", font="Ubuntu Mono:style=Bold", $fn=50,size= 5 );
        translate([-81,3,0]) rotate([0,0,-90])    linear_extrude(2)  text("GE", font="Ubuntu Mono:style=Bold", $fn=50,size= 5 );
        }   
    }
        
}