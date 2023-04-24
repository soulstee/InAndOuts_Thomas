const int buttonPin = 2;     // creates variable called buttonPin and assigns value of 2
const int LED =  13;      // creates variable called LED and assigns value of 13
const int piezoPin = 8;

// sets up integer variable that will change over time
int buttonState = 0;         // creates variable to track buttonState, assigns initial value of 0
int previousButtonState = 0; // previous state of the button
int val = 0;


// setup runs once at startup
void setup() {
  pinMode(LED, OUTPUT);  // initialize LED pin as an output.
  pinMode(buttonPin, INPUT);  // initialize pushbutton pin as an input.
  pinMode(piezoPin, OUTPUT);
}

// loop runs infinitely
void loop() {
  buttonState = digitalRead(buttonPin);    // read the state of the pushbutton value
  
  // conditional statement
  if (buttonState != previousButtonState) {
    if (buttonState == HIGH) {
      digitalWrite(LED, HIGH);
      tone(piezoPin, 1000, 100);
      val = 1;
    } else {
      digitalWrite(LED, LOW);
      val = 0;
    }
    previousButtonState = buttonState;
    Serial.write(val);  //to send binary data to Processing
  }
}
