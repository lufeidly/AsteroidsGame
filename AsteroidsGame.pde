Spaceship lufei;
Star[] night = new Star[150];

public void setup() 
{
  size(500,500);
    for (int i = 0; i < night.length; i++){
    night[i] = new Star();
  lufei = new Spaceship();
}
}
    
public void draw() 
{
    background(0);
    
    for(int i = 0; i < night.length; i++)
    {
      night[i].show();
    }
    lufei.move();
    lufei.show();
}
public void keyPressed(){
  if(keyPressed){
    if(key=='a')
      lufei.turn(-20);
    else if(key=='d')
      lufei.turn(20);
    else if(key=='w')
      lufei.accelerate(1);
      
     if(key == '0'){
     lufei.setCenterX((Math.random() * 500));
     lufei.setCenterY((Math.random() * 500));
     lufei.setXspeed(1);
     lufei.setYspeed(1);
   }
}
}
