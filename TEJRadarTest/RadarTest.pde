int SIZEFACTOR = 500;
int xLoc = SIZEFACTOR * 2;
int yLoc = SIZEFACTOR;
int radius = yLoc;
int angle = 0;
float x = cos(radians(-angle)) * radius;
float y = sin(radians(-angle)) * radius;

void draw(){
}


void setup(){
size (1000, 550);

//Background
fill (0);
rect (0, 0, xLoc, yLoc);

//Text Box
noStroke();
fill (100, 100, 100);
rect (0, 500, 1000, 50);

//Moves Origin To 500, 500
translate (500, 500);

//Semicircle
fill (0);
stroke (200, 200, 200);
strokeWeight (3);
arc (0, 0, 1000, 1000, PI, TWO_PI);
arc (0, 0, 750, 750, PI, TWO_PI);
arc (0, 0, 500, 500, PI, TWO_PI);
arc (0, 0, 250, 250, PI, TWO_PI);

//Line
stroke (97, 253, 2);
line (0, 0, x, y);

angle=90;
do{
  delay (200);
  x = cos(radians(-1*angle)) * radius;
  y = sin(radians(-1*angle)) * radius;
  stroke (97, 253, 2);
  line (0, 0, x, y);
  angle = angle+2;
  println (angle);
}while (angle < 180);
}
