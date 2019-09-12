

translate ([-50,0,0])
cylinder( r=20, h=5, $fn= 100);

// $fn dice el número de lados del cilindro, para suavizar la superficie poner un número mayor, si pone 6 será un hexágono etc etc)

translate ([50,0,0])
cylinder( r=20, h=5, $fn= 6);

translate ([0,0,0])
cylinder( r=20, h=5, $fn= 3);