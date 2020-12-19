class Ball {
  PVector loc;
  PVector speed = new PVector(0, 2);
  PVector acc = new PVector(0, 0);
  PVector gravity = new PVector(0, 0.5);
  float r;
  color c;
  boolean flag=false;
  
  Ball(PVector loc_, float r_, color c_, boolean f) {
  loc = loc_;
  r=r_;
  c=c_;
  flag=f;
  }

  void run() {
    update();//
    show();
    edge();//ball bouncing with edges of canvas
    collision();//balls collide with each other
    restart();
  }

  void collision() {
    for (int i=0; i<myBall.size(); i++) {
    Ball other = (Ball)myBall.get(i);
    PVector diff = PVector.sub(loc, other.loc);
    float distance = diff.mag();
        if (distance >0 && distance <r+other.r) {
            if(  (loc.x-width/2)*(loc.x-width/2)+
            (loc.y-height/2)*(loc.y-height/2)<height*height/16){flag=true;}
        diff.normalize();
        diff.mult(140/r);//small balls can be more easierly change motion
        acc.add(diff);
        r=r-2;
        stroke(255);
        strokeWeight(6);
        noFill();
        ellipse(loc.x, loc.y, r*2, r*2);
      }  }  }

  void update() {
    acc.add(gravity);
    speed.add(acc);
    //computing resistance from the air
    speed.mult(0.995);
    //limit the speed to maxium of 5
    if (speed.mag()>100) {
      speed.normalize();
      speed.mult(100);
    }
    if(flag){speed= new PVector(0,0);}
    loc.add(speed);
    acc = new PVector(0, 0);
  }

  void edge() {
    if (loc.x>width-r) {
    speed.x*=-1;r-=1;
    loc.x = width-r; 
    }
    if (loc.x<r) {
      speed.x*=-1;r-=1;
      loc.x = r;
    }
    if (loc.y>height-r) {
      speed.y*=-1;r-=1;
      loc.y = height-r; 
    }
    if (loc.y<r) {
      speed.y*=-1;r-=1;
      loc.y = r; 
    }
  
     for (int i=0; i< myLine.size();i++){
     Line ml = (Line)myLine.get(i);
         if ((loc.x>ml.loc.x-r-1)&&(loc.x<ml.loc.x+ml.l+r+1)&&
         (loc.y>ml.loc.y-r-1)&&(loc.y<ml.loc.y+r+1)){
         speed.y*=-1;
         stroke(255);
         strokeWeight(10);
         noFill();
         ellipse(loc.x, loc.y, r*2, r*2);
            if(loc.y>ml.loc.y){loc.y=ml.loc.y+r+1;  }
            if(loc.y<ml.loc.y){loc.y=ml.loc.y-r-1;  }
              }  }  }
              
  void restart(){
  
    if(r<20&&r>5){
    if(  (loc.x-width/2)*(loc.x-width/2)+
         (loc.y-height/2)*(loc.y-height/2)<height*height/16){flag=true;}
    
    else{loc.y=0;
    loc.x=random(width);
    r=r+20;}}
    
    if(r<5){loc.y=0;
    loc.x=random(width);
    r=r+20;}
    }
  
void show() {
      noStroke();
      fill(c); 
      ellipse(loc.x, loc.y, r*2, r*2);
      float ang = speed.heading();
      stroke(255);
      float arrowLength = 5;
      PVector headLocation = new PVector(loc.x+1.5*speed.mag()*cos(ang), 
      loc.y+1.5*speed.mag()*sin(ang));
      line(loc.x, loc.y, headLocation.x, headLocation.y);
      strokeWeight(6);
      line(headLocation.x, headLocation.y, headLocation.x + arrowLength*cos(ang + PI*3/4),
      headLocation.y + arrowLength*sin(ang + PI*3/4));
      line(headLocation.x, headLocation.y, headLocation.x + arrowLength*cos(ang - PI*3/4),
      headLocation.y + arrowLength*sin(ang - PI*3/4));     
    }   }
    
