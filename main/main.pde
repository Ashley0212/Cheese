ArrayList myLine;
ArrayList myBall;
PVector ml;
void setup() {
  size(3200,1800);
  myLine = new ArrayList();
  myBall = new ArrayList();
}

void draw() {
  background(0);
  for (int i=0; i<myBall.size(); i++) {
    Ball mb = (Ball)myBall.get(i);
    mb.run();
  }

for (int i=0; i<myLine.size(); i++) {
    Line ml = (Line)myLine.get(i);
    ml.show();
  }}

void keyPressed() {
  if (key == 'A') {
    PVector mb = new PVector(int(width*randomGaussian()),int(height/4*randomGaussian()));
    color cb = color(random(100,255), random(100,255), random(100,255));
    myBall.add(new Ball(mb, random(30,60), cb));}
  if (key == 'S'){
    PVector ml = new PVector(mouseX, mouseY);
    myLine.add(new Line(ml,random(100,400)));
  }}
