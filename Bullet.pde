class Bullet extends Floater
{
  public Bullet(Spaceship lufei){
    myCenterX = lufei.getX();
    myCenterY = lufei.getY();
    myXspeed = lufei.getXspeed();
    myYspeed = lufei.getYspeed();
    myPointDirection = lufei.getPointDirection();
    accelerate(10);
  }  
  public void show(){
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
      public double getX() {
       return myCenterX;
       }
      public double getY() {
       return myCenterY;
       }
       public double getXspeed() {
         return myXspeed;
       }
        public double getYspeed() {
         return myYspeed;
       }
       public double getPointDirection() {
         return myPointDirection;
       }
}
