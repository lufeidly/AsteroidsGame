//Start a new program in Processing called AsteroidsGame.
//Copy the code in AsteroidsGame.pde into your program.
//Open a new tab and name it Spaceship.pde. Copy the class definition from Spaceship.pde above. Do the same for Floater.pde and Star.pde.
//Write the Spaceship constructor. Make sure you initialize all 9 of the inherited protected member variables. You may find You may find the Asteroids Part 1 slide presentation and the Spaceship design worksheet helpful. You may also find this sample Spaceship program helpful in understanding how the protected Floater variables affect the Spaceship's movement.
//At the top of AsteroidsGame.pde, declare a variable of type Spaceship
//Initialize the Spaceship as a new instance of the class
//In draw() in AsteroidsGame.pde call the Spaceship's show() function
//When you are happy with appearance of the Spaceship, add a public void keyPressed() function in AsteroidsGame.pde
//Write code in keyPressed that allows you to control the spaceship with the keyboard. You must include the ability to turn left, turn right, accelerate, and enter "hyperspace." (There is no requirement for any fancy visual effects, hyperspace just needs to stop the ship, and give it a new random position and direction.)
//Add code to the draw() in AsteroidsGame.pde to move() the Spaceship
//Finish the Star class in Star.pde
//Finally, add code to AsteroidsGame.pde that declares and initializes an array of instances of the Star class to create a number of stars in random positions
Spaceship lufei;
Asteroid goofy;
//break statement stops the loop forces loop to stop

Star[] night = new Star[500];
ArrayList <Asteroid> list = new ArrayList <Asteroid>();
ArrayList <Bullet> pew = new ArrayList <Bullet>();
void setup() 
{
  size(500,500);
    for (int i = 0; i < night.length; i++){
    night[i] = new Star();
    lufei = new Spaceship();
    }
    list.add(new Asteroid());
    list.add(new Asteroid());
    list.add(new Asteroid());
    list.add(new Asteroid());
    list.add(new Asteroid());
    }
    
public void draw() 
{
    background(0);
    
    for(int i = 0; i < night.length; i++){
      night[i].show();
    }
    lufei.move();
    lufei.show();
    for(int i = 0; i < pew.size(); i++){
    pew.get(i).show();
    pew.get(i).move();
       }
    
    for(int i = 0; i < pew.size(); i++){
    for(int j = 0; j < list.size(); j++){
    if(dist((float)list.get(j).getX(), (float)list.get(j).getY(), (float)pew.get(i).getX(), (float)pew.get(i).getY()) < 20){
      pew.remove(i);
      list.remove(j);
    }
    }
    }
    //ask mr williams for help
    for(int i = 0; i < list.size(); i++){
    list.get(i).move();
    list.get(i).show();
    if (dist((float)list.get(i).myCenterX,(float)list.get(i).myCenterY, (float)lufei.myCenterX, (float)lufei.myCenterY) < 20) {
      list.remove(i);
    }   
    }
}
public void keyPressed(){
  if(keyPressed){
    if(key=='a')
      lufei.turn(-20);
    if(key=='d')
      lufei.turn(20);
    if(key=='w')
      lufei.accelerate(1);
      
      //bullet
      if(key == 'y')
      pew.add(new Bullet(lufei));
      
      //hyperspace
     if(key == 's'){
     lufei.setCenterX((Math.random() * 500));
     lufei.setCenterY((Math.random() * 500));
     lufei.setXspeed(1);
     lufei.setYspeed(1);
   }
}
}
