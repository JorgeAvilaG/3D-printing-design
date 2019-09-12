//características del vidrio
ladovidrio = 30;
grosorvidrio = 4;

//Longitud del rack depende del número de muestas que selecciones aquí:

numerodemuestras =16;

//rack
grosorparedes = 4;
longitudrack = numerodemuestras*(3+grosorvidrio+1)+3;
alturarack =32 + grosorparedes;




/////RACK
module rack()
{




//unir los lados
module lados()
{
union(){
cube([grosorparedes+ladovidrio+5,3,grosorparedes]);
translate([0,longitudrack-grosorvidrio+1,0])
cube([grosorparedes+ladovidrio+5,3,grosorparedes]);
}
}
lados();
translate([0,0,alturarack-grosorparedes])
lados();

//ladodiagonal
translate ([5,0,0])
rotate ([0,-47,0])


cube([grosorparedes+ladovidrio+5+5,3,grosorparedes]);
    
    
translate([ladovidrio+grosorparedes+2,longitudrack-grosorvidrio+1,3])
    rotate([0,-133,0])
    cube([grosorparedes+ladovidrio+5+5,3,grosorparedes]);


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
        
        
        
        
        
        
        