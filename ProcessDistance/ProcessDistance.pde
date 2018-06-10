import processing.serial.*;// including the serial library

Serial my_serial;//creating an instance of Serial Class

String received=null;
int new_line=10;// ascii code for carriage return
float valeu;// its gonna store the valeu in float

void setup(){
  size(640,480);// its the window 
  noStroke();
  //String my_port=Serial.list()[10];
  my_serial=new Serial(this,"COM5",9600);// matching the baud rate 
}
void draw(){
  while(my_serial.available()>0){
    received=my_serial.readString();
    //received=my_serial.readStringUntil(new_line); //read until it hit a new line
    if(received!=null){
      println(received);
      background(127,0,0);
      valeu=float(received);
      valeu=valeu*10;
      fill(111,150,200);
      ellipseMode(CENTER);
      ellipse(width/2+valeu,height/2,50,50);     
      fill(255,200,200);
      rectMode(CENTER);
      rect(width/2,height/2+51,600,50);

      
    }
  }
}
