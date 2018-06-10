//const int variation = 13;
void setup() {
 //pinMode(variation,INPUT);
 Serial.begin(9600);
}

void loop() {
  int valeu= int(random(200));
  Serial.println(valeu);
}
