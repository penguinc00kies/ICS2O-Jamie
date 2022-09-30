background ( 39, 148, 203 );
size ( 800, 800 );

//Grass
noStroke();
fill ( 10, 245, 81 );
rect ( -10, 600, 900, 200 );

//Sun
fill ( 224, 208, 18 );
ellipse ( 400, 50, 200, 200 );

//House Body
fill (99, 35, 11 );
rect (300, 500, 200, 200 );

//Roof
fill (39, 14, 3 );
beginShape ();
vertex (270, 500 );
vertex (530, 500 );
vertex (400, 370 );
endShape ();

//West Ray
stroke (248, 134, 7, 150 );
strokeWeight (18);
line (280, 50, 230, 50 );

//Southwest Ray
line (305, 125, 275, 155 );

//South Ray
line (400, 170, 400, 220 );

//Southeast Ray
line (495, 125, 525, 155 );

//East Ray
line (520, 50, 570, 50 );
