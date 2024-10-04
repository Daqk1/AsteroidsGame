//your variable declarations here
Spaceship ship = new Spaceship();
Star [] stars = new Star [1000];
ArrayList <Asteroid> theMeteor = new ArrayList <Asteroid>();
ArrayList<Bullet> gun = new ArrayList <Bullet>();
float x = 0.3;
public void setup()
{
  size(1000, 1000);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  for (int i = 0; i < 20; i++) {
    theMeteor.add(i, new Asteroid());
  }
}
public void draw()
{
  background(0);
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  for (int i = 0; i < gun.size(); i++) {
    gun.get(i).show();
    gun.get(i).move();
    gun.get(i).accelerate(0.5);
  }
  for (int i = 0; i < theMeteor.size(); i++) {
    theMeteor.get(i).show();
    theMeteor.get(i).move();
    float col = dist((float)ship.getX(), (float)ship.getY(), (float)theMeteor.get(i).mX(), (float)theMeteor.get(i).mY());
    if (col < 50) {
      theMeteor.remove(i);
    }
  }
  
    for (int a = 0; a < gun.size(); a++) {
      for (int i = 0; i < theMeteor.size(); i++) {
      if (gun.get(a).gX() > 1000) {
        gun.remove(a);
        break;
      } else if (gun.get(a).gY() > 1000) {
        gun.remove(a);
        break;
      } else if (gun.get(a).gY() < 0) {
        gun.remove(a);
        break;
      } else if (gun.get(a).gX() < 0) {
        gun.remove(a);
        break;
      }
      if ((dist((float)gun.get(a).gX(), (float)gun.get(a).gY(), (float)theMeteor.get(i).mX(), (float)theMeteor.get(i).mY())) < 10) {
        theMeteor.remove(i);
        gun.remove(a);
        break;
      }
    }
  }

  ship.show();
  ship.move();
}

public void keyPressed() {
  if (key == 'h') {
    ship.setSpeedX(0);
    ship.setSpeedY(0);
    ship.setX(Math.random()*1000);
    ship.setY(Math.random()*1000);
    ship.getPointDirection(Math.random()*360);
  }

 if (key == 'a') {
    ship.turn(-15);
  } else if (key == 'd') {
    ship.turn(15);
  } else if (key == 'w') {
    ship.accelerate(x);
  } else if (key == ' ') {
    gun.add(new Bullet(ship));
  }
}
