import processing.serial.*;

Serial myPort;
PImage[] notes = new PImage[3];
int currentNote = -1;

void setup() {
  size(500, 500);
  myPort = new Serial(this, Serial.list()[0], 9600);
  
  notes[0] = loadImage("note1.png");
  notes[1] = loadImage("note2.png");
  notes[2] = loadImage("note3.png");
}

void draw() {
  background(255);
  
  // If there is a  current note, then the corresponding image will be shown.
  if (currentNote != -1) {
    image(notes[currentNote], 100, 100);
  }
}

void serialEvent(Serial port) {
  String input = port.readStringUntil('\n'); // Remember that this code will read the input from Arduino
  
  if (input != null) {
    int buttonIndex = Integer.parseInt(input.trim()); // Remmeber that this code will convert the input to an integer
    
    // If the input is a valid button index such as 0, 1, or 2, then the current note will be updated and a signal will be sent back to Arduino 
    if (buttonIndex >= 0 && buttonIndex <= 2) {
      currentNote = buttonIndex;
      myPort.write("1");
    }
  }
}
