// Bouncing Random Star by Thomas Mena
// February 7, 2023
// This project sounds a moving star that will bounce off the edge of the screen when it hits it. When the 1 button is pressed, the color of the star will change; when the 2 button is pressed, the color of the background will change. The colors are randomized each time the sketch is ran.

float r = random(0, 255);

float x = 50;
float y = 50;

float xspeed = 3;
float yspeed = 1;

void setup() {
  size(800, 800);
}

void draw() {
  background(255);
  
  x = x + xspeed;
  y = y + yspeed;
  
  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
  }
  
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }
  
  if (keyPressed) {
    if (key == '1') {
      fill(r);
    } else if (key == '2')
      background(r);
  } else {
    fill(#FFE81F);
    background(255);
  }
  
  translate(x, y);
  stroke(0);
  strokeWeight(2);
  beginShape();
  vertex(0, -50);
  vertex(14, -20);
  vertex(47, -15);
  vertex(23, 7);
  vertex(29, 40);
  vertex(0, 25);
  vertex(-29, 40);
  vertex(-23, 7);
  vertex(-47, -15);
  vertex(-14, -20);
  endShape(CLOSE);
}
