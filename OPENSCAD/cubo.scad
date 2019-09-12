


//-- Rota siempre con respecto al origen de los ejes, la translación igual siempre con respecto al origen de coordenadas (distancias en mm y angulos en º)

rotate([0,0,45])
  translate([50,0,0])
  cube([20,20,20],center=true);
  
rotate([0,0,45])
  cube([20,20,10], center = true);
