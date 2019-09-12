
difference()
{

union()
{
cylinder(r=20, h=10, $fn=100);
translate([0,0,10])
cylinder(r=10, h=10, $fn=100);

}


translate([0,0,-20])
cylinder(r=5, h=50, $fn=100);
}