union()
{

difference()
{
difference()
{
cube([35,35,4], center = true); //base del portamuestras

union()// unión de las piezas que forman los agujeros
{
translate([0,10.5,-5])
cylinder(r=2, h=10, $fn=100); //agujero pequeño
translate([0,-8.5,-0])
cube([4,4,10], center = true); //agujero grande
translate([0,-6.5,-5])
cylinder(r=2, h=10, $fn=100);
translate([0,-10.5,-5])
cylinder(r=2, h=10, $fn=100);
}
}
rotate([0,0,45/2])
translate([-0.75,-15,1.5])
cube([1.5,30,30], center = false); //ranura para el dispositivo
}

rotate([0,0,45/2])
union()
{
translate([3.25,13.5,0])//4 piezas que sujetan los substratos
difference()
{
translate([0,0,4.5])
cube([5,3,5], center = true);

translate([1,0,7])
rotate([0,45,0])
cube([10,4,5], center = true);
}
rotate([0,0,180])
translate([3.25,13.5,0])
difference()
{
translate([0,0,4.5])
cube([5,3,5], center = true);

translate([1,0,7])
rotate([0,45,0])
cube([10,4,5], center = true);
}
rotate([0,0,180])
translate([3.25,13.5,0])
rotate([0,0,180])
translate([6.5,0,0])
difference()
{
translate([0,0,4.5])
cube([5,3,5], center = true);

translate([1,0,7])
rotate([0,45,0])
cube([10,4,5], center = true);
}
translate([3.25,13.5,0])
rotate([0,0,180])
translate([6.5,0,0])
difference()
{
translate([0,0,4.5])
cube([5,3,5], center = true);

translate([1,0,7])
rotate([0,45,0])
cube([10,4,5], center = true);
}
}
}