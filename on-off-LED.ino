const int BUTTON = 2;     // Pushbutton Input to Pin No.2
const int LED =  3;		  // Output LED to Pin No. 3
const int gLED = 4;


int BUTTONState = 0;      // To store input status

void setup() {
  pinMode(LED, OUTPUT);    // Define LED pin as output.   
  pinMode(BUTTON, INPUT);  // Define BUTTON pin as Input.   
  pinMode(gLED, OUTPUT);
}


void loop(){
  BUTTONState = digitalRead(BUTTON); // Reading input from Button Pin.

  if (BUTTONState == HIGH) // Checking if Input from button is HIGH (1/+5V)
   {     
     digitalWrite(LED, HIGH);  // If input is High make LED ON (HIGH/1/+5V)
     digitalWrite(gLED, LOW);
  } 
  else  
  {
     digitalWrite(LED, LOW);  // For every other condition make LED OFF (0/GND/LOW)
  digitalWrite(gLED, HIGH);
  }
}
