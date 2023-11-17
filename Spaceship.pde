class Spaceship extends Floater  
{   
   public Spaceship() {
     myCenterX = 250;
     myCenterY = 250;
     myColor = 255;
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
    myCenterX = y;
    }
    public void setXspeed(double x) {
      myXspeed = x;
   }
   public void setYspeed(double y) {
     myYspeed = y;
   }
   //public void keyPressed()
   //{
   //  if(key == '0')
   //  myCenterX = (Math.random() * 200) + 10;
   //  myCenterY = (Math.random() * 200) + 10;
   //  lufei.setXspeed(1);
   //  lufei.setYspeed(1);
   //}
}
