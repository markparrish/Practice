void setup() {
  size(400,400);
  noLoop();
}
void draw() {
  background(0, 100, 0);
  for(int i = 0; i < 250; i++)
  {
    Clover myClover = new Clover((((int)(Math.random()*2))+3), ((int)(Math.random()*400)), ((int)(Math.random()*400)));
    myClover.show();
  }
}
void mousePressed() {
  redraw();
}
class Clover {
  int numLeaves, myX, myY;
  Clover(int leaves,int x,int y) { //constructor
    numLeaves = leaves;
    myX = x;
    myY = y;
  }
  void show() {
    fill(0, 200, 0);
    stroke(0, 255, 0);
    float rotation = random(PI*2);
    translate(myX, myY);
    rotate(rotation);
    for (float i = 0; i < PI * 2; i+= PI*2/numLeaves) {
      rotate(i);
      translate(6, 0);
      ellipse(0, 0, 10, 10);
      translate(-6, 0);
      rotate(-i);
    }
    rotate(-rotation);
    translate(-myX, -myY);
  }
}
