int SIZE_FACTOR = 300;
int xLoc = SIZE_FACTOR * 3;
int yLoc = SIZE_FACTOR * 2;

void setup()
{
size (1000, 1000);
noStroke();
}


void draw()
{
//Yellow
fill(254,203,0);
rect(0,0,xLoc,yLoc);

//GREEN
fill(52,178,51);
rect(0,yLoc*1/3,xLoc,yLoc*2/3);

//BLACK
fill(234,40,57);
rect(0,yLoc*2/3,xLoc,yLoc*1/3);

//STAR
fill (255);
star (xLoc/2, yLoc/2,SIZE_FACTOR*0.29,SIZE_FACTOR*0.7,5);
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
