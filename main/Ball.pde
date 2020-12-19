class Ball {
  PVector loc;
  PVector speed = new PVector(0, 0);
  PVector acc = new PVector(0, 0);
  PVector gravity = new PVector(0, 0.5);
  float r;
  color c;
  
  Ball(PVector loc_, float r_, color c_) {
    loc = loc_;
    r=r_;
    c=c_;
  }

  void run() {
    update();//
    show();
    edge();//ball bouncing with edges of canvas
    collision();//balls collide with each other
    reStart();
  }

  void collision() {
    for (int i=0; i<myBall.size(); i++) {
      Ball other = (Ball)myBall.get(i);
      PVector diff = PVector.sub(loc, other.loc);
      float distance = diff.mag();

      if (distance >0 && distance <r+other.r) {
        diff.normalize();
        diff.mult(140/r);//small balls can be more easierly change motion
        acc.add(diff);
        r=r-2;
        stroke(255);
        strokeWeight(10);
        noFill();
        ellipse(loc.x, loc.y, r*2, r*2);      
      }    }  }

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
    loc.add(speed);
    acc = new PVector(0, 0);
  }

  void edge() {
    if (loc.x>width-r) {
      speed.x*=-1;
      loc.x = width-r;
      stroke(255);
        strokeWeight(10);
        noFill();
        ellipse(loc.x, loc.y, r*2, r*2);
    }
    if (loc.x<r) {
      speed.x*=-1;
      loc.x = r;
      stroke(255);
        strokeWeight(10);
        noFill();
        ellipse(loc.x, loc.y, r*2, r*2);
    }
    if (loc.y>height-r) {
      speed.y*=-1;
      loc.y = height-r;
      stroke(255);
        strokeWeight(10);
        noFill();
        ellipse(loc.x, loc.y, r*2, r*2);
    }
    if (loc.y<r) {
      speed.y*=-1;
      loc.y = r;
      stroke(255);
      strokeWeight(10);
      noFill();
      ellipse(loc.x, loc.y, r*2, r*2);
    }
  
for (int i=0; i< myLine.size();i++){
Line ml = (Line)myLine.get(i);
      if ((loc.x>ml.loc.x-r-1)&&(loc.x<ml.loc.x+ml.l+r+1)&&(loc.y>ml.loc.y-r-1)&&(loc.y<ml.loc.y+r+1)){
      speed.y*=-1;
      stroke(255);
      strokeWeight(10);
      noFill();
      ellipse(loc.x, loc.y, r*2, r*2);
          }  }  }
  
void reStart() {
      if (r < 10.0) {
      loc.x=width;
      loc.y=random(0,height/4);
      r=random(30,80);
    }  }

void show() {
      noStroke();
      fill(c); 
      ellipse(loc.x, loc.y, r*2, r*2);
      float ang = speed.heading();
      stroke(255);
      float arrowLength = 10;
      PVector headLocation = new PVector(loc.x+5*speed.mag()*cos(ang), loc.y+5*speed.mag()*sin(ang));
      line(loc.x, loc.y, headLocation.x, headLocation.y);
      strokeWeight(10);
      line(headLocation.x, headLocation.y, headLocation.x + arrowLength*cos(ang + PI*3/4), headLocation.y + arrowLength*sin(ang + PI*3/4));
      line(headLocation.x, headLocation.y, headLocation.x + arrowLength*cos(ang - PI*3/4), headLocation.y + arrowLength*sin(ang - PI*3/4));     
    }   }
