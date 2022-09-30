int SIZE_FACTOR = 300;
int xLoc = SIZE_FACTOR * 2;
int yLoc = SIZE_FACTOR * 1;

size (1000, 1000);

noStroke();
//RED
fill(210,16,52);
rect(0,0,xLoc,yLoc);

//WHITE
fill(255,255,255);
rect(0,yLoc*1/3,xLoc,yLoc*2/3);

//BLACK
fill(0,0,0);
rect(0,yLoc*2/3,xLoc,yLoc*1/3);

//GREEN TRIANGLE
fill (0,114,41);
triangle (0,0,0,yLoc,xLoc/3,yLoc/2);
