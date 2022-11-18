class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  private int myColor;
  public Star(){
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*1000);
    myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  public void show(){
    fill(myColor);
    ellipse(myX, myY, 3, 3);
}
}
