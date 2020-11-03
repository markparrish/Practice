Coin aCoin, bCoin, cCoin, dCoin, eCoin;
int numberHeads = 0;
int numberTails = 0;

void setup()
{
  size(500, 300);
  textAlign(CENTER,CENTER);
  aCoin = new Coin(50, 150);
  bCoin = new Coin(100, 150);
  cCoin = new Coin(150, 150);
  dCoin = new Coin(200, 150);
  eCoin = new Coin(250, 150);
}
void draw()
{
  background(190); 
  aCoin.show();
  bCoin.show();
  cCoin.show();
  dCoin.show();
  eCoin.show();
  fill(255);
  text("Total Heads: " + numberHeads, 400, 250);
  fill(0);
  text("Total Tails: " + numberTails, 400, 265);
}
void mousePressed()
{
  aCoin.flip();
  bCoin.flip();
  cCoin.flip();
  dCoin.flip();
  eCoin.flip();
}
class Coin
{
  //three member variables
  boolean heads; 
  int myX, myY;
  //constructor
  Coin(int x_, int y_)
  {
    myX = x_;
    myY = y_;
    flip();
  }
    //two member functions.
  void flip()
  {
    int n = ((int)(Math.random()*10)+1);
    if (n<=5) {
      heads = true;
      numberHeads += 1;
    } 
    if (n>5){
      heads = false;
      numberTails += 1;
    }
  }
  
  void show()
  {
    if (heads) {
      fill(255);
      text("HEADS", myX, myY+30);
    }
    else {
      fill(0);
      text("TAILS", myX, myY+30);
    }
    ellipse(myX, myY, 50, 50);
  }
}
