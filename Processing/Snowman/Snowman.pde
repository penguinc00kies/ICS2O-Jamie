background ( 39, 148, 203 );
size ( 800, 800 );

//Snow
noStroke();
fill ( 255, 255, 255 );
rect ( -10, 600, 900, 200 );

//Sun
fill ( 224, 208, 18 );
ellipse ( 750, 50, 200, 200 );

//Big Snowball
fill ( 250, 250, 250 );
ellipse ( 400, 600, 250, 250 );

//Big Snowball Bottom Outline
stroke( 0, 0, 0 );
arc ( 400, 600, 250, 250, 0, PI );

//Middle Snowball
noStroke();
ellipse ( 400, 470, 190, 190 );

//Head Snowball
ellipse ( 400, 345, 140, 140 );

//Carrot
fill ( 233, 143, 10 );
triangle ( 330, 345, 400, 330, 400, 360 );

//Left Eye
fill ( 0, 0, 0 );
ellipse ( 375, 310, 10, 10 );

//Right Eye
ellipse ( 425, 310, 10, 10 );

//Mouth
stroke ( 0, 0, 0 );
strokeWeight ( 4 );
line ( 380, 375, 400, 385 );
line ( 400, 385, 420, 375 );

//Left Arm
stroke ( 91, 52, 28 );
strokeWeight ( 6 );
line ( 325, 440, 250, 500 );

//Right Arm
stroke ( 91, 52, 28 );
strokeWeight ( 6 );
line ( 475, 440, 550, 500 );

//Top Button
noStroke();
fill ( 0, 0, 0 );
stroke ( 0, 0, 0 );
ellipse ( 400, 430, 9, 9 );

//Middle Button
ellipse ( 400, 480, 9, 9 );

//Middle Button
ellipse ( 400,530, 9, 9 );

//Bottom Button
ellipse ( 400,580, 9, 9 );
