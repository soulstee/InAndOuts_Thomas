const int piezoPin = 8;

void setup() {
  pinMode(piezoPin, OUTPUT);
  noTone(piezoPin); // This will turn off the piezo when the sketch isn't running.
  Serial.begin(9600);
}

void loop() {
  if (Serial.available()) {
   int note = Serial.read();
   tone(piezoPin, note, 200); // This will play the notes from Arduino for 50 milliseconds.
 }
}
