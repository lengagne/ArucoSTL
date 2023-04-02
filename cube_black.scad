include <modules.scad>


ref=0;
file0 = str("markers/Marker",str(ref),".png");
nb0 = ref;
file1 = str("markers/Marker",str(ref+1),".png");
nb1 = ref+1;
file2 = str("markers/Marker",str(ref+2),".png");
nb2 = ref+2;
file3 = str("markers/Marker",str(ref+3),".png");
nb3 = ref+3;
file4 = str("markers/Marker",str(ref+4),".png");
nb4 = ref+4;
file5 = str("markers/Marker",str(ref+5),".png");
nb5 = ref+5;


echo(file0)
echo(file1)
echo(file2)
echo(file3)
echo(file4)
echo(file5)

// partie noire
color([0,0,0])      union()
{
    translate([35/2,0,-5]) rotate([0,90,0])    noir (file0,nb0);
    rotate([0,0,90])    translate([35/2,0,-5]) rotate([0,90,0])    noir (file1,nb1);
    rotate([0,0,180])    translate([35/2,0,-5]) rotate([0,90,0])   noir (file2,nb2);
    rotate([0,0,270])    translate([35/2,0,-5]) rotate([0,90,0])   noir (file3,nb3);
    rotate([0,90,0])    translate([35/2,0,-5]) rotate([0,90,0])    noir (file4,nb4);
    rotate([0,270,0])    translate([35/2,0,-5]) rotate([0,90,0])   noir (file5,nb5);
}


