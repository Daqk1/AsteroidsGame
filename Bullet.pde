class Bullet extends Floater{
  public Bullet(Spaceship ship){
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myPointDirection = ship.pD();

  }
  public void show(){
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
  public void move(){
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  public double gX(){
     return myCenterX;
   }
   public double gY(){
     return myCenterY;
   }
}
