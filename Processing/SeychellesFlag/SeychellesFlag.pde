int SIZE_FACTOR = 450;
int xLoc = SIZE_FACTOR * 2;
int yLoc = SIZE_FACTOR * 1;

size (1000, 1000);

noStroke();
//RED
fill(214,40,40);
rect(0,0,xLoc,yLoc);

//WHITE
fill(255,255,255);
triangle(0,yLoc,xLoc,yLoc*1/3,xLoc,yLoc*2/3);

//GREEN
fill(0,122,61);
triangle(0,yLoc,xLoc,yLoc*2/3,xLoc,yLoc);

//YELLOW
fill(252,216,86);
triangle(0,yLoc,xLoc*1/3,0,xLoc*2/3,0);

//Blue
fill(0,63,135);
triangle(0,yLoc,0,0,xLoc*1/3,0);
