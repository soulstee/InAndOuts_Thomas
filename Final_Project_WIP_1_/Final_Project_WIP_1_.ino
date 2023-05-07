const int ButtonPin1 = 2;
const int ButtonPin2 = 3;
const int ButtonPin3 = 4;

const int LED = 13;
const int PiezoPin = 5;

const int notes[] = {262, 294, 330, 349, 392, 440, 494, 523}; // These will play the following notes in order: C4, D4, and E4
const int noteDuration = 1000; // How long each note will play in milliseconds
int currentNote = 0; // The index of the current note that is being played

void setup() {
  Serial.begin(9600);
  pinMode(ButtonPin1, INPUT);
  pinMode(ButtonPin2, INPUT);
  pinMode(ButtonPin3, INPUT);
  pinMode(LED, OUTPUT);
  pinMode(PiezoPin, OUTPUT);
}

void loop() {
  // This code will check to see if one of the push buttons are pressed.
  if (digitalRead(ButtonPin1) == LOW) {
    playNoteAndLight(0);
  } else if (digitalRead(ButtonPin2) == LOW) {
    playNoteAndLight(1);
  } else if (digitalRead(ButtonPin3) == LOW) {
    playNoteAndLight(2);
  }

  // This code controls the waiting time of the note duration before the LED is turned off and the next note plays
  if (millis() - noteDuration > noteDuration) {
    noTone(PiezoPin);
    digitalWrite(LED, LOW);
  }
}


void playNoteAndLight(int index) { // This part of the code will play the note at the given index, turn the LED on, and send the data to Processing
  tone(PiezoPin, notes[index]);
  digitalWrite(LED, HIGH);
  currentNote = index;
  delay(noteDuration);
  noTone(PiezoPin);
  digitalWrite(LED, LOW);
}
