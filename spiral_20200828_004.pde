// Rupert Russell
// 28 August 2020
// Code on Github at: https://github.com/rupertrussell/spiral_20200828_004
// artwork on redbubble at: https://www.redbubble.com/shop/ap/56100636?ref=studio-promote
float radSec;
float count = 0 ;
float initialSize = 9411 * 1.7;
float newSize;
int saveCount = 0;
int oldSaveCount = 0;
void setup() {
  size(9411, 9411);
  smooth();
  strokeWeight(26);
  stroke(#8CBA51);
  background(#DEFF8B);
  fill(#DEFF8B);
}

void draw() {
  saveCount ++;

  count = count + 1;
  translate(width / 5, height / 5);
  radSec = 360 / 60 * count;
  pushMatrix();
  rotate(radians(radSec));
  newSize = initialSize / 2 - count;
  rect(0, 0, newSize, newSize);
  popMatrix();

  if (saveCount == oldSaveCount + 3000) {
    save(saveCount + ".png");
    println("saved " + saveCount + ".png");
    oldSaveCount = saveCount;
  }

  if (newSize <= 0) {
    save("spiral-9411x9411-26.png");
    exit();
  }
}


void keyPressed(){
   save("spiral-9411x9411-26.png");
}
