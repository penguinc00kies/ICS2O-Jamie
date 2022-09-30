int SIZE_FACTOR = 200;
int xLoc = SIZE_FACTOR * 3;
int yLoc = SIZE_FACTOR * 2;

size (1000, 1000);

noStroke();
//RED
fill(165,25,49);
rect(0,0,xLoc,yLoc);

//WHITE
fill(255,255,255);
rect(0,yLoc*1/6,xLoc,yLoc*2/3);

//BLUE
fill(45,42,74);
rect(0,yLoc*1/3,xLoc,yLoc*1/3);
