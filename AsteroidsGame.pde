//your variable declarations here
Spaceship ship = new Spaceship();
Star [] stars = new Star [1000];
ArrayList <Asteroid> theMeteor;
Asteroid meteor = new Asteroid();
int x = 0;
int y;

public void setup() 
{
  size(1000,1000);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }

  theMeteor = new ArrayList <Asteroid>();
  for(int i = 0; i < 20; i++){
    theMeteor.add(i, new Asteroid());
  }

}
public void draw() 
{
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  for(int i = 0; i < theMeteor.size();i++){
    Asteroid meteor = theMeteor.get(i);
    meteor.show();
    meteor.move();
    float col = dist((float)ship.getX(), (float)ship.getY(),(float) meteor.mX(),(float) meteor.mY());
   if(col < 50){
     theMeteor.remove(i);
     }
  }
  ship.show();
  ship.move();
  if(y > 0){
     y--;
  }
  if(y == 0){
   ship.setSpeedX(0);
   ship.setSpeedY(0);
   ship.accelerate(0);
 }
}

public void keyPressed(){
  if(key == 'h'){
     ship.setSpeedX(0);
     ship.setSpeedY(0);
     ship.setX(Math.random()*1000);
     ship.setY(Math.random()*1000);  
     ship.getPointDirection(Math.random()*360);
  }
  if(key == 'w'){
    y = 20;
    ship.accelerate(y);
  }
  if(key == 'a'){
    ship.getPointDirection(x);
    x+=36;
  }
  if(key == 'd'){
    ship.getPointDirection(x);
    x-=36;
}
}
