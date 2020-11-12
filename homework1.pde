void setup(){
 size(1600,1600);
 }
 
void draw(){
 fill(mouseX-30,mouseY-30,140,2);
 rect(0,0,width,height);
 if(mouseX>0&&mouseY>0){
    noStroke();
    fill(255);
    rect(mouseX,mouseY,40,40);
    }
 if(mouseX>width/2||mouseY>height/2){
    stroke(255);
    strokeWeight(5);
    line(mouseX-random(-100,100),mouseY-50,mouseX+random(-100,100),mouseY+50);
    }
 if(mouseY>height/2&&mouseX>width/2){
    stroke(255,200);
    noFill();
    strokeWeight(random(3,8));
    ellipse(random(width/2,width),random(height/2,height),30,30);
    }}
