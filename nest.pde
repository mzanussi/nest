PImage img;
int counter = 0;
static final int marginOut = 10;
static final int marginIn = 70;
int pointSize = 10;

void setup() {
  size(640, 427);
  img = loadImage("scat.jpg");
  imageMode(CENTER);
  background(0);
}

void draw() { 
  counter++;
  int x1 = int(random(marginOut,width-marginOut));
  int y1 = int(random(marginOut,height-marginOut));
  int x2 = int(random(marginOut,width-marginOut));
  int y2 = int(random(marginOut,height-marginOut));
  line(x1, y1, x2, y2);
  stroke(int(random(0,255)));
  if (counter % 10 == 0) {
    color pix = img.get((x1+x2)/2,(y1+y2)/2);
    noStroke();
    fill(pix, 128);
    ellipse(int(random(marginIn,width-marginIn)),int(random(marginIn,height-marginIn)),pointSize,pointSize);
  }
  if (counter == 2000) {
    noLoop();
  }
}