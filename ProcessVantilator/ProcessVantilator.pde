import controlP5.*;
import processing.serial.*;

Serial port;
ControlP5 cp5;// creating a controlP5 object
PFont font;
int fan_speed=0;
int MAX_INC= 100;

void setup(){
  size(300,500);
  
  printArray(Serial.list());//prints out all available ports
  
  port=new Serial(this,"COM5",9600);
  
  cp5=new ControlP5(this);
  font = createFont("calibri light",20);
  cp5.addButton("IncreaseSpeed") ///the name of he button  text "red"
      .setPosition(60,50)// x,y coordinates
      .setSize(180,80)// the width and height
      .setFont(font)// adding a font size
      ;
  cp5.addButton("DecreaseSpeed").setPosition(60,150).setSize(180,80).setFont(font);
}
void draw(){
  background(20,122,123);//bg color
  
  // title
  fill(255,255,255);// rgb color for the text
  text("SPEED CONTROL",100,30); // (text,x,y)
  println(fan_speed);
}

// functions that relates to every button declared 
void IncreaseSpeed(){
  if(fan_speed >= 1023){fan_speed=1023;}
  else{fan_speed+=MAX_INC;}
  port.write((int)fan_speed);
}
void DecreaseSpeed(){
  if(fan_speed > 0){
      fan_speed-=MAX_INC;
  }
  else{fan_speed=0;}
port.write((int)fan_speed);
}
