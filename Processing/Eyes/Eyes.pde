// Name: Jamie (and minimally, Ahmed)
// Date: Nov 5, 2018
// Ver : v0.1
// Description:  
//     This program will draw a face and
//     give it either 1, 2, or 3 eyes.


//Variables
final int sizeFactor = (int)random(400)+100;
int xLoc = 400;
int yLoc = 400;
int eyes =  (int)random(3)+1;
PImage thirdEye;

void setup () {

size ( 800, 800 );
background ((int)random(256),(int)random(256),(int)random(256));
thirdEye = loadImage("eye.png"); 

//Head
fill (#EAE426);
noStroke();
ellipse ( xLoc, yLoc, sizeFactor, sizeFactor );

//Mouth
fill (#EA768C);
arc ( xLoc, yLoc + sizeFactor * 0.1, sizeFactor*0.6, sizeFactor*0.6, 0, PI );

//Inefficient Algorithm
/*
if (eyes == 1){
fill (#10AF0E);
ellipse (xLoc, yLoc - sizeFactor * 0.2, sizeFactor/4, sizeFactor/4);
}

if (eyes == 2){
fill (#10AF0E);
ellipse (xLoc + sizeFactor * 0.2, yLoc - sizeFactor * 0.2, sizeFactor/4, sizeFactor/4);
ellipse (xLoc - sizeFactor * 0.2,  yLoc - sizeFactor * 0.2, sizeFactor/4, sizeFactor/4);
}

if (eyes == 3){
fill (#10AF0E);
ellipse (xLoc + sizeFactor * 0.2, yLoc - sizeFactor * 0.2, sizeFactor/4, sizeFactor/4);
ellipse (xLoc - sizeFactor * 0.2,  yLoc - sizeFactor * 0.2, sizeFactor/4, sizeFactor/4);
image (thirdEye, xLoc - sizeFactor/8, yLoc - sizeFactor * 0.5, sizeFactor/4, sizeFactor/4);
}
*/

//Mr. Muir's Efficient Algorithm
if (eyes > 1){
ellipse (xLoc + sizeFactor * 0.2, yLoc - sizeFactor * 0.2, sizeFactor/4, sizeFactor/4);
ellipse (xLoc - sizeFactor * 0.2,  yLoc - sizeFactor * 0.2, sizeFactor/4, sizeFactor/4);
}

if (eyes == 1 || eyes == 3){
image (thirdEye, xLoc - sizeFactor/8, yLoc - sizeFactor * 0.5, sizeFactor/4, sizeFactor/4);
}

}
