
module noir(filename,text)
{
    rotate([0,0,180])
     difference() 
     {   
        union()
        { 
            translate([5,0,0])  cube([35,35,5],center=true); 
//            translate([22.5,0,0])  cube([2,2,5],center=true); 
        }
        translate([3,0,4.6])    scale([0.14,0.14,-0.03])  surface(file = filename, center = true);
        translate([22.0,-7.2,1.5])   rotate([0,0,90])  linear_extrude(4)  text (text, font="Ubuntu Mono:style=Bold", $fn=50,size= 4);
     } 
}

module blanc (filename,text)
{
    rotate([0,0,180])        
    intersection() 
    {    
        translate([5,0,0])  cube([35,35,5],center=true); 
        union(){ 
                translate([3,0,4.6])    scale([0.14,0.14,-0.03])  surface(file = filename, center = true); 
                translate([22.0,-7.2,1.5])   rotate([0,0,90])  linear_extrude(4)  text (text, font="Ubuntu Mono:style=Bold", $fn=50,size= 4); 
        } 
    } 
}

module shape ()
{
    rotate([0,0,180])   translate([5,0,0])  cube([35.5,35.5,5],center=true); 
//    rotate([0,0,180])   translate([22.5,0,0])  cube([2.5,2.5,5],center=true); 
}