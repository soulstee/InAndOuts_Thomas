const int ButtonPin1 = 2;
const int ButtonPin2 = 3;
const int ButtonPin3 = 4;
const int PiezoPin = 7;

int buttonState1 = 0;
int buttonState2 = 0;
int buttonState3 = 0;

int notes1[] = {262, 294, 330, 349, 392, 440, 494, 523, 523, 494, 440, 392, 330, 294, 262}; // This sequence plays the "Do Re Mi" sequence.
int notes2[] = {196, 165, 147, 165, 196, 165, 147, 165, 196, 196, 196, 196, 196, 196, 196, 196, 196, 165, 147, 165}; // This sequence plays the opening verse of "Blue's Blues".
int notes3[] = {131, 880, 880, 659, 880, 880, 698, 880, 659, 880, 147, 1319, 1319, 494, 1319, 1319, 131, 880, 880, 880, 880, 880}; //This sequence plays the opening verse of "Prelude No. 2".
int noteDuration = 500;

void setup() {
  pinMode(ButtonPin1, INPUT_PULLUP);
  pinMode(ButtonPin2, INPUT);
  pinMode(ButtonPin3, INPUT);
  pinMode(PiezoPin, OUTPUT);

  Serial.begin(9600);
}

void loop() {
  buttonState1 = digitalRead(ButtonPin1);
  buttonState2 = digitalRead(ButtonPin2);
  buttonState3 = digitalRead(ButtonPin3);

  if (buttonState1 == HIGH) {
    for (int i = 0; i < 15; i++) {
      tone(PiezoPin, notes1[i], noteDuration);
      delay(noteDuration);
    }
    Serial.write('1');

  } else if ( buttonState2 == HIGH) {
    for (int i = 0; i < 20; i++) {
      tone(PiezoPin, notes2[i], noteDuration);
      delay(noteDuration);
    }
    Serial.write('2');

  } else if (buttonState3 == HIGH) {
    for (int i = 0; i < 22; i++) {
      tone(PiezoPin, notes3[i], noteDuration);
      delay(noteDuration);
    }
    Serial.write('3');

  } else {
    noTone(PiezoPin);
    Serial.write('0');
  }
  delay(10);
}
