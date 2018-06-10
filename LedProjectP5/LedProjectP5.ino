const int RED_LED = 10;
const int BLUE_LED = 11;
const int YELLOW_LED = 12;

void setup() {
  pinMode(RED_LED,OUTPUT);
  pinMode(BLUE_LED,OUTPUT);
  pinMode(YELLOW_LED,OUTPUT);

  Serial.begin(9600);

}

void loop() {
  if(Serial.available()){// there is data 
      char val=Serial.read();
         if(val=='r'){ // red clicked
          digitalWrite(RED_LED,HIGH);
        }
         if(val=='b'){ // red clicked
          digitalWrite(BLUE_LED,HIGH);
        }
         if(val=='y'){ // red clicked
          digitalWrite(YELLOW_LED,HIGH);
        }
         if(val=='f'){ // red clicked
          digitalWrite(RED_LED,LOW);
          digitalWrite(BLUE_LED,LOW);
          digitalWrite(YELLOW_LED,LOW);
          
        }
    }

}
