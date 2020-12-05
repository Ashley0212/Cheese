int x=50;
int y=120;
int a=60;
int y1=160;
int y2=200;
int y3=240;
int y4=330;
int x1=x+a*2;
float b;
PFont f1;
float speed = 0;
float easing = 0.03;
int c=1;

void setup() {
  f1 = createFont("Courier10 BT",30,true);
  textFont(f1);
  textAlign(CENTER);
  size(2000,2000);
  background(0);
  stroke(255);
  strokeWeight(7);
  fill(232,218,70);
  ellipse(x,y,a,a);
  fill(000,105,116);
  ellipse(x,y1,a,a);
  fill(235,234,227);
  ellipse(x,y2,a,a);
  fill(51,49,50);
  ellipse(x,y3,a,a);
  noFill();
  rectMode(CENTER);
  rect(x,y4,a-10,a-10);
}

void draw() {
   if((mouseX-x)*(mouseX-x)+(mouseY-y)*(mouseY-y)<a*a/4)
     {
      if(mousePressed == true){    
          strokeWeight(7);
          stroke(208,170,170);
          fill(232,218,70);
          ellipse(x,y,a,a);
          c=1;
 } 
      else{
         strokeWeight(7);
         stroke(255);
         fill(232,218,70);
         ellipse(x,y,a,a);
      } }
  if((mouseX-x)*(mouseX-x)+(mouseY-y1)*(mouseY-y1)<a*a/4)
    {
     if(mousePressed == true){    
          strokeWeight(7);
          stroke(208,170,170);
          fill(000,105,116);
          ellipse(x,y1,a,a);
          c=2;
 } 
      else{
         strokeWeight(7);
         stroke(255);
         fill(000,105,116);
         ellipse(x,y1,a,a);
      } }
  if((mouseX-x)*(mouseX-x)+(mouseY-y2)*(mouseY-y2)<a*a/4)
     {
     if(mousePressed == true){    
          strokeWeight(7);
          stroke(208,170,170);
          fill(235,234,227);
          ellipse(x,y2,a,a);
          c=3;
 } 
      else{
         strokeWeight(7);
         stroke(255);
         fill(235,234,227);
         ellipse(x,y2,a,a);
      }  }
  if((mouseX-x)*(mouseX-x)+(mouseY-y3)*(mouseY-y3)<a*a/4)
     {
     if(mousePressed == true){    
          strokeWeight(7);
          stroke(208,170,170);
          fill(51,49,50);
          ellipse(x,y3,a,a);
          fill(51,49,50,100);
          c=4;
 } 
      else{
         strokeWeight(7);
         stroke(255);
         fill(51,49,50);
         ellipse(x,y3,a,a);
  }   }
  if(((mouseX>x-(a-10)/2)&&(mouseX<x+(a-10)/2))&&((mouseY>y4-(a-10)/2)&&(mouseY<y4+(a-10)/2)))
     {
     if(mousePressed == true){    
          strokeWeight(7);
          stroke(208,170,170);
          noFill();
          rectMode(CENTER);
          rect(x,y4,a-10,a-10);
          fill(0,5);
          noStroke();
          rect(width/2,height/2,width,height);
 } 
      else{
         strokeWeight(7);
         stroke(255);
         noFill();
         rectMode(CENTER);
         rect(x,y4,a-10,a-10);
   } }   }


void mouseDragged(){
float target = dist(mouseX, mouseY, pmouseX, pmouseY);
  speed += (target - speed) * easing;
  if(mousePressed == true){
    if(c==1){fill(232,218,70,100);}
    if(c==2){fill(000,105,116,100);}
    if(c==3){fill(235,234,227,100);}
    if(c==4){fill(51,49,50,100);}
    b=speed*2;
    noStroke();  
    ellipse(mouseX, mouseY, b, b);
  }  }
