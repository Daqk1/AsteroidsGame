class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid() {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -45;
    yCorners[0] = -40;
    xCorners[1] = -5;
    yCorners[1] = 30;
    xCorners[2] = 20;
    yCorners[2] = 40;
    xCorners[3] = 30;
    yCorners[3] = 0;
    xCorners[4] = 20;
    yCorners[4] = -25;
    xCorners[5] = 5;
    yCorners[5] = -30;
    myColor = color(190);
    myCenterX = Math.random()*1000;
    myCenterY = Math.random()*1000;
    rotSpeed = (Math.random()*10)-5;
    if (rotSpeed < 1 || rotSpeed > -1) {
      rotSpeed = (Math.random()*10)-5;
    }
  }
  public void move() {
    myCenterX = myCenterX + rotSpeed;
    myCenterY = myCenterY - rotSpeed;
    myPointDirection = myPointDirection + rotSpeed;
    if (myCenterX >width)
    {
      myCenterX = 0;
    } else if (myCenterX<0)
    {
      myCenterX = width;
    }
    if (myCenterY >height)
    {
      myCenterY = 0;
    } else if (myCenterY < 0)
    {
      myCenterY = height;
    }
  }
  public double mX() {
    return myCenterX;
  }
  public double mY() {
    return myCenterY;
  }
}
