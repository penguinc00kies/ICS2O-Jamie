//Jamie
//November 21, 2018
//v0.1
//Draws Circles In A Gradient

void setup () {
  //BACKGROUND PROCESSES
  size (600, 600);
  rectMode ( CENTER );
  background ( 255 );
  int d = width/10;
  int xLoc = d;
  int yLoc = d;
  int randomNumber = (int)random(11);

//CIRCLES AND SQUARES
while (yLoc < height * 2) {
  xLoc = d;
  while (xLoc < width * 2) {
    noStroke();
    rect (xLoc/2, yLoc/2, d, d);
    fill ((int)random(266), (int)random(266), (int)random(266), (int)random(266));
    ellipse (xLoc/2, yLoc/2, d, d);
    xLoc += d*2;
  }
  yLoc += d*2;
  xLoc = -1*d/2;
}

//LINE WEIGHT
strokeWeight(8);


//pROCESSING FOR WHAT LINE PATTERN TO USE
if (randomNumber < 5){
for (yLoc = d/2; yLoc < height; yLoc = yLoc+d) {
  stroke ((int)random(266), (int)random(266), (int)random(266), (int)random(266));
  line((int)random(601), yLoc, (int)random(601), yLoc);
}
}
else if (randomNumber > 5){
for (xLoc = d/2; xLoc < width; xLoc = xLoc + d) {
  stroke ((int)random(266), (int)random(266), (int)random(266), (int)random(266));
  line(xLoc, (int)random(601), xLoc, (int)random(601));
}
}
else {
  for (yLoc = d/2; yLoc < height; yLoc = yLoc+d) {
  stroke ((int)random(266), (int)random(266), (int)random(266), (int)random(266));
  line((int)random(601), (int)random(601), (int)random(601), (int)random(601));
}
  for (xLoc = d/2; xLoc < width; xLoc = xLoc + d) {
  stroke ((int)random(266), (int)random(266), (int)random(266), (int)random(266));
  line((int)random(601), (int)random(601), (int)random(601), (int)random(601));
}
}
}
