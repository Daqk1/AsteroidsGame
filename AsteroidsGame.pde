//your variable declarations here
Spaceship ship = new Spaceship();
Star [] stars = new Star [1000];
int right = 0;
int left = 0;

public void setup() 
{
  size(1000,1000);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  ship.show();
   for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  ship.move();
  
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
    ship.accelerate(10);    
  }
  if(key == 'a'){
    ship.getPointDirection(right);
    right-= 20;
  }
  if(key == 'd'){
    ship.getPointDirection(left);
    left+=20;
}
}
