

import processing.serial.*;// including the serial library

Serial my_serial;//creating an instance of Serial Class
String received=null;
int new_line=10;// ascii code for carriage return
float valeu;// its gonna store the valeu in float

void setup(){
  size(640,480);// its the window 
  
  //String my_port=Serial.list()[10];
  my_serial=new Serial(this,"COM5",9600);// matching the baud rate 
}
void draw(){
  while(my_serial.available()>0){
    received=my_serial.readStringUntil(new_line); //read until it hit a new line
    if(received!=null){
      // there is some data
      background(0);
      valeu=float(received);// casts the serial string to a float
      valeu=valeu/200*height;
      
      rectMode(CENTER);
      rect(width/2,height-(valeu/2),100,valeu);
    }
  }
}
