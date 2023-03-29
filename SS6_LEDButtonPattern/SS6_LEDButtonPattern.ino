/*
Name: Thomas Garcia Mena
Date: March 29, 2023
Dsscription: This is just a simple setup of a row of LEDs turning on in a timed pattern when the push button is pressed.
*/

const int LED_A = 13;
const int LED_B = 12;
const int LED_C = 11;
const int LED_D = 10;
const int LED_E = 9;
const int LED_F = 8;

const int ButtonPin = 2;
int ButtonState = 0;

void setup() {
  // put your setup code here, to run once:
  pinMode(LED_A, OUTPUT);
  pinMode(LED_B, OUTPUT);
  pinMode(LED_C, OUTPUT);
  pinMode(LED_D, OUTPUT);
  pinMode(LED_E, OUTPUT);
  pinMode(LED_F, OUTPUT);

  pinMode(ButtonPin, INPUT);

  
}

void loop() {
  // put your main code here, to run repeatedly:
  ButtonState = digitalRead(ButtonPin);

    if (ButtonState == HIGH) {
      digitalWrite(LED_A, HIGH);
      delay(1000);
      
      digitalWrite(LED_B, HIGH);
      delay(500);
      
      digitalWrite(LED_C, HIGH);
      delay(1000);
      
      digitalWrite(LED_D, HIGH);
      delay(500);
      
      digitalWrite(LED_E, HIGH);
      delay(1000);
      
      digitalWrite(LED_F, HIGH);
      delay(500);
      
    } else {
      digitalWrite(LED_A, LOW);
      digitalWrite(LED_B, LOW);
      digitalWrite(LED_C, LOW);
      digitalWrite(LED_D, LOW);
      digitalWrite(LED_E, LOW);
      digitalWrite(LED_F, LOW);
    }
  }
