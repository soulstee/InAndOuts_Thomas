const int ButtonPin1 = 2;
const int ButtonPin2 = 3;
const int ButtonPin3 = 4;
const int PiezoPin = 5;

int buttonState1 = 0;
int buttonState2 = 0;
int buttonState3 = 0;

int notes1[] = {262, 294, 330, 349, 392, 440, 494, 523, 523, 494, 440, 392, 330, 294, 262}; // This sequence plays the "Do Re Mi" sequence.
int notes2[] = {196, 165, 147, 165, 196, 165, 147, 165, 196, 196, 196, 196, 196, 196, 196, 196, 196, 165, 147, 165}; // This sequence plays the opening verse of "Blue's Blues".
int notes3[] = {131, 880, 880, 659, 880, 880, 698, 880, 659, 880, 147, 1319, 1319, 494, 1319, 1319, 131, 880, 880, 880, 880, 880}; //This sequence plays the opening verse of "Prelude No. 2".
int noteDuration = 500;

void setup() {
  pinMode(ButtonPin1, INPUT);
  pinMode(ButtonPin2, INPUT);
  pinMode(ButtonPin3, INPUT);
  pinMode(PiezoPin, OUTPUT);

  Serial.begin(9600);
}

void loop() {
  buttonState1 = digitalRead(ButtonPin1);
  buttonState2 = digitalRead(ButtonPin2);
  buttonState3 = digitalRead(ButtonPin3);

  if (buttonState1 == HIGH) {                     // If Push Button #1 is pressed...
    for (int i = 0; i < 15; i++) {                // An array is made based from the number of notes in the sequence "int notes1[]"...
      tone(PiezoPin, notes1[i], noteDuration);    // Data is being sent to the piezo to play each assigned note.
      delay(noteDuration);                        // Specifies how long each note in the assigned sequence will play.
    }
    Serial.write('1');                            // This value is assigned to send binary data to Processing for Push Button #1.

  } else if ( buttonState2 == HIGH) {                     // If Push Button #2 is pressed...
    for (int i = 0; i < 20; i++) {                        // An array is made based from the number of notes in the sequence "int notes2[]"...
      tone(PiezoPin, notes2[i], noteDuration);            // Data is being sent to the piezo to play each assigned note.
      delay(noteDuration);                                // Specifies how long each note in the assigned sequence will play.
    }
    Serial.write('2');                                    // This value is assigned to send binary data to Processing for Push Button #2.

  } else if (buttonState3 == HIGH) {                      // If Push Button #3 is pressed...
    for (int i = 0; i < 22; i++) {                        // An array is made based from the number of notes in the sequence "int notes3[]"...
      tone(PiezoPin, notes3[i], noteDuration);            // Data is being sent to the piezo to play each assigned note.
      delay(noteDuration);                                // Specifies how long each note in the assigned sequence will play.
    }
    Serial.write('3');                                    // This value is assigned to send binary data to Processing for Push Button #3.

  } else {                    // Else, if no push buttons are pressed...
    noTone(PiezoPin);         // The piezo will remain mute.
    Serial.write('0');        // This value is assigned to send binary data to Processing for when no push buttons are in action.
  }
  delay(20);
}
