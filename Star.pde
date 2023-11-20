class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  public void show()
  {
    strokeWeight(0);
    fill((int)(Math.random()*250), (int)(Math.random()*250), (int)(Math.random()*250));
    ellipse(myX, myY, 4, 4);
  }
}
