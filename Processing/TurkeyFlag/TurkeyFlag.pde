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
//RED
fill(227,10,23);
rect(0,0,xLoc,yLoc);

//WHITE CIRCLE
fill(255);
ellipse(xLoc*2/5,yLoc/2,SIZE_FACTOR,SIZE_FACTOR);

//RED CIRCLE
fill(227,10,23);
ellipse(xLoc*4/9,yLoc/2,SIZE_FACTOR*0.8,SIZE_FACTOR*0.8);

//STAR
fill (255);
star (xLoc*3/5, yLoc/2,SIZE_FACTOR*0.23,SIZE_FACTOR*0.1,5);
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
