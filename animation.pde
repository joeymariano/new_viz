// Class for animating a sequence of GIFs

class Animation {
  PImage[] images;
  int imageCount;
  int frame;

  Animation(String imagePrefix, int count, int digitSize) {
    imageCount = count;
    images = new PImage[imageCount];
    //display = createGraphics(displayWidth, displayHeight);

    for (int i = 0; i < imageCount; i++) {
      // Use nf() to number format 'i' into two digits
      String filename = imagePrefix + nf(i, digitSize) + ".gif";
      images[i] = loadImage(filename);
    }
  }

  void display(int xpos, int ypos) {
    frame = (frame+1) % imageCount;
    pushMatrix();
    translate(width/2, height/2);
    scale(15);
    angle += .08;
    if (angle <= -PI) {
      angle = 0;
    }
    rotate(angle);
    image(images[frame], xpos, ypos);
    popMatrix();
  }

  int getWidth() {
    return images[0].width;
  }

  int getHeight() {
    return images[0].height;
  }
}