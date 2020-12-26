class pipe{
  float top;
  float bottom;
  float x;
  float w;
  float speed;
  float spacing;
  float w1;

  pipe(){
    spacing = 125;
    top = random(height/ 6, .75 * height);
    bottom = height-(top + spacing);
    w = top/2;
    w1=bottom/2;
    x = width;
    speed = 6;
  }

  void show(){
    stroke(255，100，100);
    strokeWeight(5);
    line(x, 0, x-w, top);
    line(x-2*w, 0, x-w, top);
    line(x-w+w1, height, x-w, height-bottom);
    line(x-w-w1, height, x-w, height-bottom);
  }

  void update(){
    x -= speed;
  }

  boolean offscreen(){
    return x < -w;
  }

  boolean hit(bird b){
    if (b.pos.y<top){
        if (b.pos.x+b.r*2.3> b.pos.y/2-2*w+x && b.pos.x-b.r*2.3 < -b.pos.y/2+x )
        return true;}
     
    if (b.pos.y>height-bottom){
        if (b.pos.x+b.r*2.3> -b.pos.y/2+height/2-w1+x-w && b.pos.x-b.r*2.3 < b.pos.y/2-height/2+w1+x-w )
        return true;}
      return false;  
  }
}
