PImage image;

void setup() {
  size(300, 300);
  image = loadImage("King_Dedede.png");
}

void draw() {
  image(image, 0, 0);
}
