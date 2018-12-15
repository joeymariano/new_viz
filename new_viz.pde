Animation perspective;
Animation muncher;
BounceRect makeRect;
BounceRect makeRect2;
BounceRect makeRect3;
BounceRect makeRect4;
PGraphics pg;
PImage mask;
PImage img;
float angle = 0;


void setup() {
  pg = createGraphics(320, 180);
  makeRect = new BounceRect(0, 0, 10);
  makeRect2 = new BounceRect(320, 180, 20);
  makeRect3 = new BounceRect(100, 100, 15);
  makeRect4 = new BounceRect(300, 10, 5);
  fullScreen();
  noCursor();
  noSmooth();
  background(51);
  frameRate(12);
  muncher = new Animation("muncher_", 33, 2);
  perspective = new Animation("perspective_", 233, 3);
  rectMode(CENTER);
}

void draw() {
  pg.beginDraw();
  pg.clear();
  pg.endDraw();

  perspective.display(-perspective.getWidth()/2, -perspective.getWidth()/2);

  makeRect.update();
  makeRect2.update();
  makeRect3.update();
  makeRect4.update();
  saveFrame("######.png");
}
