int img;
int diameter;
PImage[] images;

void setup() {
  images = new PImage[4];
  size(1000, 1000);
  images[0] = loadImage("pikachu.jpg");
  images[1] = loadImage("mario.png");
  images[2] = loadImage("anastasia.jpg");
  images[3] = loadImage("jeni.jpg");
  background(255);
  img = 0;
  diameter = 20;
}

void draw() {
  int x = (int)random(images[img].width);
  int y = (int)random(images[img].height);
  color c = images[img].get(x, y);
  fill(c);
  noStroke();
  ellipse(x, y, diameter, diameter);
}

void mousePressed() {
 clear();
 background(255);
 img = (int)random(0, 4);
 redraw();
}

void mouseDragged() {

}

void mouseReleased() {

}
