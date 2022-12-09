class Spaceship extends Floater
{
  public Spaceship() {
    corners = 4;
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
    myColor = color(255, 255, 255);
    myCenterX = 500;
    myCenterY = 500;
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  public void setX(double x) {
    myCenterX = x;
  }
  public void setY(double y) {
    myCenterY = y;
  }
  public void setSpeedX(double x) {
    myXspeed = x;
  }
  public void setSpeedY(double y) {
    myYspeed = y;
  }
  public double getSpeed(){
    return myXspeed;
  }
  public double getYSpeed(){
    return myYspeed;
  }
  public void getPointDirection(double x) {
    myPointDirection = x;
  }
  public double pD() {
    return myPointDirection;
  }
}
