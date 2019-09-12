//características del vidrio
ladovidrio = 30;
grosorvidrio = 4;

//Longitud del rack depende del número de muestas que selecciones aquí:

numerodemuestras =10;

//rack
grosorparedes = 4;
longitudrack = numerodemuestras*(3+grosorvidrio+1)+3;
alturarack =32 + grosorparedes;




/////RACK
module rack()
{




//unir los lados

 difference()
 {   
cube([grosorparedes+ladovidrio+5,3,alturarack]);


translate([(grosorparedes+ladovidrio+5)/2,15,alturarack/2])
        rotate([90,0,0])
cylinder(r=13,h=40,$fn=4);
 }   
   


difference()
{ 
translate([0,longitudrack-3,0])
cube([grosorparedes+ladovidrio+5,3,alturarack]);

translate([(grosorparedes+ladovidrio+5)/2,500,alturarack/2])
        rotate([90,0,0])
cylinder(r=13,h=1000,$fn=4);
} 


//separador entre dispositivos
module separador(distancia=0)
{
    translate([0,distancia,0])
    cube([grosorparedes+3,3,alturarack]);
}
    i=0;
for (i = [0:numerodemuestras])
    {
    separador(distancia= i*(3+grosorvidrio+1));
    }
translate([ladovidrio+1,0,0])
for (i = [0:numerodemuestras])
    {
    separador(distancia= i*(3+grosorvidrio+1));
    }




//fondo
cube ([10,longitudrack,grosorparedes]);
translate([ladovidrio+grosorparedes*2+1-10,0,0])
cube ([10,longitudrack,grosorparedes]);


//laterales
cube([grosorparedes,longitudrack,alturarack]);
translate([ladovidrio+grosorparedes+1,0,0])
cube([grosorparedes,longitudrack,alturarack]);
    
    
    
    //estructura central
    module central()
{
    
    if (numerodemuestras > 10)
    {
        translate([0,(longitudrack-3)/2,0])
        cube([grosorparedes+ladovidrio+5,3,grosorparedes]);
        
        
translate([0,0,alturarack-4])
        translate([0,(longitudrack-3)/2,0])
cube([grosorparedes+ladovidrio+5,3,grosorparedes]);
        
        
        
       translate([0,(longitudrack-3)/2,0]) 
      translate ([5,0,0])
rotate ([0,-47,0])
cube([grosorparedes+ladovidrio+5+5,3,grosorparedes]);  
        
        
  translate([0,(longitudrack-3)/2,0])       
  translate([ladovidrio+grosorparedes+2,3-grosorvidrio+1,3])
    rotate([0,-133,0])
    cube([grosorparedes+ladovidrio+5+5,3,grosorparedes]);     
    }
}



if (numerodemuestras > 10)
{
central();
}
 }       
 




rack(); 
        
        
        
        
        
        
        