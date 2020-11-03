void setup() {
  size(357,330);
  noLoop();
}
void draw() {
  for(int i = 0 ; i <= 7; i++)
  {
    for(int j = 0; j <= 30; j++)
    {
      if (j%2==0) {
      Brick myBrick = new Brick(i+(50*i),j+(j*10));
      myBrick.show();
    }
    else {
      Brick myBrick = new Brick(i-25+(50*i),j+(j*10));
      myBrick.show();
    }
  }
}
}
class Brick {
  int myX, myY;
  Brick(int x, int y)
  {
    myX = x;
    myY = y;
  }
  void show()
  {
    noStroke();
    fill(255,25,0);
    rect(myX,myY,50,10);
  }
}
