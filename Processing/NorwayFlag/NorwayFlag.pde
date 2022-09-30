int SIZE_FACTOR = 20;
int xLoc = SIZE_FACTOR *22;
int yLoc = SIZE_FACTOR * 16;

size (1000, 1000);

noStroke();
//RED
fill(239,43,45);
rect(0,0,xLoc,yLoc);

//WHITE HORIZANTAL
fill(255,255,255);
rect(0,yLoc*1/3,xLoc,yLoc*1/3);

//WHITE VERTICAL
fill(255,255,255);
rect(xLoc*3/11,0,xLoc*2/11,yLoc);

//BLUE HORIZONTAL
fill(0,40,104);
rect(0,yLoc*3/7,xLoc,yLoc*1/7);

//BLUE VERTICAL
fill(0,40,104);
rect(xLoc*7/22,0,xLoc*1/11,yLoc);
