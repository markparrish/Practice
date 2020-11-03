Target t1;
Target t2;
void setup() 
{
  noLoop();
}

void draw() 
{
  background(197);
  t1 = new Target(25,50, (((int)(Math.random()*3))+1));
  t2 = new Target(75,50, (((int)(Math.random()*3))+1));
  t1.show();
  t2.show();
}

void mousePressed()
{
  redraw();
}

class Target 
{
  int numRings, myX, myY;
  Target(int x, int y, int v) 
  {
     myX = x;
     myY = y;
     numRings = v;
  }
  
  void show() 
  {
   int diameter = 50;
   for(int i = 0; i < numRings; i++) 
   {
      fill( (int) (Math.random()*256), (int) (Math.random()*256), (int) (Math.random()*256) );
      ellipse(myX,myY,diameter,diameter);
      diameter-=16;
   }
   print(numRings);
  }
}
