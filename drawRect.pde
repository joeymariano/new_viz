class BounceRect {
  int x, y, s;
  boolean xTopWall = true;
  boolean xBottomWall = false;
  boolean yLeftWall = true;
  boolean yRightWall = false;
  
  BounceRect (int xPos, int yPos, int speed) {
   x = xPos;
   y = yPos;
   s = speed;
  }

  void update() {

    pg.beginDraw();
    pg.noStroke();

    if (x > pg.width - 20) {
      xBottomWall = true;
      xTopWall = false;
    } else if (x < 0) {
      xBottomWall = false;
      xTopWall = true;
    }
    if (y > pg.height - 20) {
      yRightWall = true;
      yLeftWall = false;
    } else if (y < 0) {
      yRightWall = false;
      yLeftWall = true;
      //y = left(y);
    }

    if (xTopWall == true) { 
      x+=s;
    }
    if (xBottomWall == true) { 
      x-=s;
    }
    if (yRightWall == true) { 
      y-=s;
    }
    if (yLeftWall == true) {
      y+=s;
    }

    pg.fill(50, 200, 255);
    pg.rect(x, y, 20, 20);

    pg.endDraw();
    image(pg, 0, 0, displayWidth, displayHeight);
  }
}