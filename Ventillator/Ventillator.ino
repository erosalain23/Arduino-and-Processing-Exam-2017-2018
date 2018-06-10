


int fan=9;//the pin where the fan is connected
void setup() {
  Serial.begin(9600);
  pinMode(fan,OUTPUT); 

}

void loop() {
if(Serial.available()){// there is data to read
    int val=Serial.read();
    float fan_speed=val*(255/1023.0);
    analogWrite(fan,fan_speed);
    Serial.println(fan_speed);
    delay(10);
  }
else{Serial.println("There is no data read! please check your code.");}  
      
}


