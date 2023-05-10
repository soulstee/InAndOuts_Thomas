const int ButtonPin1 = 2;
const int ButtonPin2 = 3;
const int ButtonPin3 = 4;
const int PiezoPin = 5;
const int LED = 13;

const int C4 = 261;
const int D4 = 294;
const int E4 = 329;

const int noteSequence[] = {C4, D4, E4, E4, D4, C4, D4, C4, C4, E4};
const int sequenceLength = sizeof(noteSequence) / sizeof(int);
int currentPosition = 0;

bool GameWin;
bool GameOver;

void setup() {
  pinMode(ButtonPin1, INPUT_PULLUP);
  pinMode(ButtonPin2, INPUT_PULLUP);
  pinMode(ButtonPin3, INPUT_PULLUP);

  pinMode(LED, OUTPUT);
  pinMode(PiezoPin, OUTPUT);

  Serial.begin(9600);
  playNoteAndSendPosition(noteSequence[0]);
}

void loop() {
  if (GameOver) {

    if (GameWin) {
      flashLED(500);
    } else {
      flashLED(100);
      flashLED(100);
      flashLED(100);
    }

    delay(1000);
    currentPosition = 0;
    GameWin = true;
    GameOver = false;
    playNoteAndSendPosition(noteSequence[0]);
  }

  if (digitalRead(ButtonPin1) == LOW) {
    checkNotePressed(C4);
  } else if (digitalRead(ButtonPin2) == LOW) {
    checkNotePressed(D4);
  } else if (digitalRead(ButtonPin3) == LOW) {
    checkNotePressed(E4);
  }
}


void playNoteAndSendPosition(int note) {
  tone(PiezoPin, note, 200);
  delay(200);
  noTone(PiezoPin);
  Serial.write(note);
}



void playNoteAndAdvanceSequence() {
  currentPosition++;

  if (currentPosition == sequenceLength) {
    GameWin = true;
    GameOver = true;
  } else {
    playNoteAndSendPosition(noteSequence[currentPosition]);
  }
}


void checkNotePressed(int note) {

  if (note == noteSequence[currentPosition]) {
    playNoteAndAdvanceSequence();
  } else {
    GameWin = false;
    GameOver = true;
    Serial.write(currentPosition);
  }
}

void flashLED(int duration) {
  digitalWrite(LED, HIGH);
  delay(duration);
  digitalWrite(LED, LOW);
  delay(duration);
}
