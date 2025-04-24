const int BUTTON_PIN = 2;     // Pushbutton Input to Pin No.2
const int LED_PIN =  3;		  // Output LED to Pin No. 3
const int LED_gPIN =  4;	



byte lastButtonState = LOW;
byte ledState = LOW;

void setup() {
  pinMode(LED_PIN, OUTPUT);
  pinMode(BUTTON_PIN, INPUT);
  pinMode(LED_gPIN, OUTPUT);
}

void loop() {
  byte buttonState = digitalRead(BUTTON_PIN);
  if (buttonState != lastButtonState) {
    lastButtonState = buttonState;
    if (buttonState == LOW) {
      ledState = (ledState == HIGH) ? LOW: HIGH;
      digitalWrite(LED_PIN, ledState);
      digitalWrite(LED_gPIN, ledState);
    }
  }
}

