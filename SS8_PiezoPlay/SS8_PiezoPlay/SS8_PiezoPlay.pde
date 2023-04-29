//Name: Thomas Garcia Mena
//Date: April 28, 2023
// This sketch will send data from here to Arduino, programming the piezo to play a sequence of notes within a timely manner by using an array.

import processing.serial.*;

Serial arduino;
int[] notes = {262, 294, 330, 349, 392}; //This are the notes data that the array will send to Arduino for the piezo to play

void setup() {
  arduino = new Serial(this, Serial.list()[0], 9600); //This will change the serial port to match to the one the Arduino is connected to.
}

void draw() {
  for (int i = 0; i < notes.length; i++) {
    arduino.write(notes[i]);
    delay(300); //This is the amount of time the piezo will until the array calls upon each note to play.
  }
}
