class Line{
  PVector loc;
  float l;
  
  Line(PVector loc_, float l_) {
    loc = loc_;
    l=l_;
  }
    void show() {
    stroke(255);
    strokeWeight(20); 
    line(loc.x, loc.y, loc.x+l, loc.y);
    strokeWeight(5);
}}
