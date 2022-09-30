background ( 39, 148, 203 );
size ( 800, 800 );

//Snow
noStroke();
fill ( 255, 255, 255 );
rect ( -10, 600, 900, 200 );

//Sun
fill ( 224, 208, 18 );
ellipse ( 750, 50, 200, 200 );

//Sun Rays 
fill ( 207, 142, 71, 125 );
ellipse ( 750, 50, 260, 260 );

final float sizeFactor = 6;
float baseSnowballRadius = sizeFactor * 50;
int xLoc = 400;
float yLoc = sizeFactor * 100;
float yHead = yLoc / 2.3;

//Big Snowball Bottom Outline
//stroke( 39, 148, 203 );
//arc ( xLoc, yLoc, baseSnowballRadius, baseSnowballRadius, 0, PI );

//Big Snowball
stroke( 39, 148, 203 );
fill ( 250, 250, 250 );
ellipse ( xLoc, yLoc, baseSnowballRadius, baseSnowballRadius );

//Middle Snowball
noStroke();
ellipse ( xLoc, yLoc / 1.4, baseSnowballRadius / 1.25, baseSnowballRadius / 1.25 );

//Head Snowball
noStroke();
ellipse ( xLoc, yLoc / 2.3, baseSnowballRadius / 1.58, baseSnowballRadius / 1.58 );

//Carrot
fill ( 233, 143, 10 );
triangle ( xLoc - yHead / 2, yHead, xLoc, yHead * 1.08, xLoc, yHead * 0.92 );

//Mouth
strokeWeight (sizeFactor);
stroke ( 0, 0, 0 );
line ( xLoc + sizeFactor * 4, yHead * 1.15,  xLoc - sizeFactor * 4, yHead * 1.15 );

//Right Eye
fill ( 0, 0, 0 );
ellipse ( xLoc + sizeFactor * 4, yHead / 1.15, sizeFactor * 1.5, sizeFactor * 1.5 );

//Left Eye
ellipse ( xLoc - sizeFactor * 6, yHead / 1.15, sizeFactor * 1.5, sizeFactor * 1.5 );

//Right Arm
stroke ( 95, 56, 5 );
line ( xLoc + baseSnowballRadius * 0.34, yLoc / 1.55, xLoc + baseSnowballRadius * 0.8, yLoc / 1.4 );

//Left Arm
line ( xLoc - baseSnowballRadius * 0.34, yLoc / 1.55, xLoc - baseSnowballRadius * 0.8, yLoc / 1.4 );

//Hat Brim
strokeWeight (sizeFactor * 2);
stroke ( 0, 0, 0 );
line ( xLoc - baseSnowballRadius / 3.6, yLoc / 3.1, xLoc + baseSnowballRadius / 3.6, yLoc / 3.1 );

rectMode (CENTER);
fill ( 0, 0, 0 );
rect ( xLoc, yLoc / 4.7, sizeFactor * 19, sizeFactor * 19 );

//1st Button
fill ( 0, 0, 0 );
ellipse ( xLoc, yLoc / 1.65, sizeFactor * 1.3, sizeFactor * 1.3 );

//2nd Button
fill ( 0, 0, 0 );
ellipse ( xLoc, yLoc / 1.4, sizeFactor * 1.3, sizeFactor * 1.3 );

//3rd Button
fill ( 0, 0, 0 );
ellipse ( xLoc, yLoc / 1.18, sizeFactor * 1.3, sizeFactor * 1.3 );

//4th Button
fill ( 0, 0, 0 );
ellipse ( xLoc, yLoc, sizeFactor * 1.3, sizeFactor * 1.3 );
