import processing.serial.*;

Serial myPort;
boolean buttonPressed1 = false;
boolean buttonPressed2 = false;
boolean buttonPressed3 = false;

PImage img1;
PImage img2;
PImage img3;

void setup() {
  size(500, 500);
  img1 = loadImage("sequence1.jpg");
  img2 = loadImage("sequence2.jpg");
  img3 = loadImage("sequence3.jpg");

  myPort = new Serial(this, "COM4", 9600);
}

void draw() {

  while (myPort.available() > 0) {
    char inChar = (char) myPort.read();

    if (inChar == '1') {
      buttonPressed1 = true;
    } else if (inChar == '2') {
      buttonPressed2 = true;
    } else if (inChar == '3') {
      buttonPressed3 = true;
    } else if (inChar == '0') {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = false;
    }
  }

  if (buttonPressed1) {
    image(img1, 0, 0, width, height);
  } else if (buttonPressed2) {
    image(img2, 0, 0, width, height);
  } else if (buttonPressed3) {
    image(img3, 0, 0, width, height);
  }
}
