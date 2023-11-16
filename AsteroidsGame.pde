Spaceship lufei;
Star[] night = new Star[150];

public void setup() 
{
  size(500,500);
  background(0);
  for (int i = 0; i < night.length; i++){
    night[i] = new Star();
    lufei = new Spaceship();
    
  }
}
public void draw() 
//{
//  //for(int i = 0; i < night.length; i++){
//  //  night[i].show();
//}
{
    lufei.show();
    
}
public void keyPressed(){
  if(key =='w')
}
