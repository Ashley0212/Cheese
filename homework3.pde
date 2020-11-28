
String message = "All work and no play make Jack a dull boy";
PFont f1;
PFont f2;
PFont f3;
float r1 = 100;
float r2 = 200;
float r3 = 400;
int bgcolour=-1;
int step=10;

void setup() {
  size(900, 900);
  f1 = createFont("Courier10 BT",r1/4,true);
  f2 = createFont("Courier10 BT",r2/4,true);
  f3 = createFont("Courier10 BT",r3/4,true);
  frameRate(10); 
  // The text must be centered!
  textAlign(CENTER);
  smooth();
}

void draw() {
 bgcolour=bgcolour+step;
  if(bgcolour>50||bgcolour<0)
  {
    step=step*(-1);
  }
  fill(bgcolour,20);
  strokeWeight(0);
  rect(0,0,width,height);
  start1();
  start2();
  start3(); 
  }
  
void start1(){
  textFont(f1);
  translate(random(-width/2,width/2), random(-height/2,height / 2));
  noFill();
  noStroke();
  ellipse(0, 0, r1*2, r1*2);
  float arclength = 0;
  for (int i = 0; i < message.length(); i++)
  {
    char currentChar = message.charAt(i);
    float w = textWidth(currentChar);
    arclength += w/2;
    float theta = PI + arclength / r1;    
    pushMatrix();
    // Polar to cartesian coordinate conversion
    translate(r1*cos(theta), r1*sin(theta));
    // Rotate the box
    rotate(theta+PI/2); // rotation is offset by 90 degrees
    // Display the character
    int cl = int(currentChar); 
    fill(cl, random(20,100), random(20,50),60); 
    noStroke(); 
    ellipse(0, 0, 40, 40);
    fill(random(100,250));
    text(currentChar,0,0);
    popMatrix();
    // Move halfway again
    arclength += w/2;
  }
}

void start2(){
  textFont(f2);
  translate(random(-width/2,width/2), random(-height/2,height / 2));
  noFill();
  noStroke();
  ellipse(0, 0, r2*2, r2*2);
  float arclength = 0;
  for (int i = 0; i < message.length(); i++)
  {
    char currentChar = message.charAt(i);
    float w = textWidth(currentChar);
    arclength += w/2;
    float theta = PI + arclength / r2;    
    pushMatrix();
    // Polar to cartesian coordinate conversion
    translate(r2*cos(theta), r2*sin(theta));
    // Rotate the box
    rotate(theta+PI/2); // rotation is offset by 90 degrees
    // Display the character
    int cl = int(currentChar); 
    fill(cl, random(20,100), random(20,50),60); 
    noStroke(); 
    ellipse(0, 0, 60, 60);
    fill(random(100,250));
    text(currentChar,0,0);
    popMatrix();
    // Move halfway again
    arclength += w/2;
  }
}
void start3(){
  textFont(f3);
  translate(random(-width/2,width/2), random(-height/2,height / 2));
  noFill();
  noStroke();
  ellipse(100, 0, r3*2, r3*2);
  float arclength = 0;
  for (int i = 0; i < message.length(); i++)
  {
    char currentChar = message.charAt(i);
    float w = textWidth(currentChar);
    arclength += w/2;
    float theta = PI + arclength / r3;    
    pushMatrix();
    // Polar to cartesian coordinate conversion
    translate(r3*cos(theta), r3*sin(theta));
    // Rotate the box
    rotate(theta+PI/2); // rotation is offset by 90 degrees
    // Display the character
    int cl = int(currentChar); 
    fill(cl, random(50,100), random(20,50),60); 
    noStroke(); 
    ellipse(0, 0, 80, 80);
    fill(random(150,250));
    text(currentChar,0,0);
    popMatrix();
    // Move halfway again
    arclength += w/2;
  }
}
