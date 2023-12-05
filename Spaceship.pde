class Spaceship extends Floater  
{   
   public Spaceship() {
     myColor = 200;
     myCenterX = 250;
     myCenterY = 250;
     corners = 4;
     myXspeed = 1;
     myYspeed = 1;
     myPointDirection = 270;
     xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = -8;
     yCorners[0] = -8;
     xCorners[1] = 16;
     yCorners[1] = 0;
     xCorners[2] = -8;
     yCorners[2] = 8;
     xCorners[3] = -2;
     yCorners[3] = 0;
   }
  public void setCenterX(double x) {
    myCenterX = x;
  }
    public void setCenterY(double y) {
    myCenterY = y;
    }
    public void setXspeed(double x) {
      myXspeed = x;
   }
   public void setYspeed(double y) {
     myYspeed = y;
   }
   public void setPointDirection(double p) {
     myPointDirection = p;
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
