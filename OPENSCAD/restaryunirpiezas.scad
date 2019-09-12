
//Comandos union y diferencia para restar y unir piezas

translate([50,0,0])

difference(){
    union(){

        cylinder(r=50/2, h=5, $fn =100);

        cylinder ( r= 20/2, h= 20, $fn=80);
}

cylinder( r= 8/2, h=80, $fn= 30, center=true);
}