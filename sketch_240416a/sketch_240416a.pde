






/**
 * Continuous Lines. 
 * 
 * Click and drag the mouse to draw a line. 
 */

void setup() {
  size(980, 540);
  background(255,0,0);
}

void draw() {
  stroke(0);
  if (mousePressed == true) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
