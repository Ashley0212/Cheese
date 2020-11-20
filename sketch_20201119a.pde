int size=80;
void setup() {
  size(800, 800);
  background(255);
  for (int i = 0; i < 10; i ++) {
    for (int j = 0; j < 10; j ++) {
      
      drawShape(int(width/10*(i+0.5)), int(height/10*(j+0.5)), int(size));
    }
  }
}

void drawShape(int posx, int posy, int cell) {
  int a=(int) random(3);
  switch (a){
  case 0:
  noStroke();
  rectMode(CENTER);
  fill(255);
  rect(posx,posy,cell*2,cell*2);
  break;
  case 1:
  noStroke();
  rectMode(CENTER);
  fill(202,184,185);
  rect(posx,posy,cell,cell);
  break;
  case 2:
  noStroke();
  rectMode(CENTER);
  fill(126,127,122);
  rect(posx,posy,cell,cell);
  break;

 
  }
}
