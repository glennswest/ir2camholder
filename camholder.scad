

module body_mount4040()
{
    cube([40,40,5]);
    translate([20,20,5]) cylinder(r=5/2,h=7);
    translate([20,20,12]) sphere(r=10/2,$fn=128);

}

module camholder4040()
{
  difference(){
    body_mount4040();
    translate([10,10,-0.1]) cylinder(r=5.8/2,h=6);
    translate([20+10,10,-0.1]) cylinder(r=5.8/2,h=6);
    translate([20+10,20+10,-0.1]) cylinder(r=5.8/2,h=6);
    translate([10,20+10,-0.1]) cylinder(r=5.8/2,h=6);
    }
}

module body_mount2020()
{
    cube([20,40,5]);
    translate([10,20,5]) cylinder(r=5/2,h=7);
    translate([10,20,12]) sphere(r=10.2/2,$fn=128);

}

module camholder2020()
{
  difference(){
    body_mount2020();
    translate([10,10,-0.1]) cylinder(r=5.8/2,h=6);
    translate([10,20+10,-0.1]) cylinder(r=5.8/2,h=6);
    }
}

camholder2020();