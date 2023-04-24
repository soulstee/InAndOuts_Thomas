import processing.serial.*;

Serial myPort;
int val = 0;

void setup() {
  size(500, 500);
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
   printArray(Serial.list()); // this line prints the port list to the console
}

void draw() {
  background(255);
  
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }

  if (val == 1) {
    fill(#DDF0FF);
    ellipse(width/2, height/2, 100, 100);
  } else {
    fill(#DBBBF5);
    rect(width/2-50, height/2-50, 100, 100);
  }
}

void serialEvent(Serial myPort) {
  println("serialEvent called!");
  val = myPort.read();
}
