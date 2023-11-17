class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star()
  {
    myX = (int)Math.random()*200;
    myY = (int)Math.random()*200;
  }
  public void show()
  {
    fill(50,50,50);
    ellipse(myX, myY, 5, 5);
  }
}
