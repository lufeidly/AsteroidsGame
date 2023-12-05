//An Asteroid class that extends Floater
//The Asteroid class should override the inherited move() function so that the 
//asteroids turn as they move
//The Asteroid class should have a member variable that stores the speed 
//of turning (which could be randomly positive or negative)
//An ArrayList of type Asteroid with at least 5 instances of type Asteroid
//If the space ship collides with an asteroid, the asteroid should be removed 
//from the ArrayList

class Asteroid extends Floater
{
  double rotSpeed;
  
  public Asteroid() {
       
    myColor = 150;
     myCenterX = (Math.random()*500)-250;
     myCenterY = (Math.random()*500)-250;
     corners = 6;
     myXspeed = (Math.random()*4)-2;
     myYspeed = (Math.random()*4)-2;
     myPointDirection = (Math.random()*360);
     rotSpeed = (Math.random()*10);
     xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = -11;
     yCorners[0] = -8;
     xCorners[1] = 7;
     yCorners[1] = -8;
     xCorners[2] = 13;
     yCorners[2] = 0;
     xCorners[3] = 6;
     yCorners[3] = 10;
     xCorners[4] = -11;
     yCorners[4] = 8;
     xCorners[5] = -5;
     yCorners[5] = 0;
     }
     public void move()
     {
     turn((double)rotSpeed);
     super.move();    
    }
    
  }  
