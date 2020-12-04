Spaceship bob = new Spaceship();
Star [] space = new Star[200];
ArrayList <Asteroid> theList = new ArrayList <Asteroid>();
public void setup() 
{
  size(500, 500);
  for (int i = 0; i < space.length; i++)
  {
    space[i] = new Star();
  }
  bob.accelerate(0);
  bob.turn(90);
}
public void draw() 
{
    background(0);
    Asteroid thing = new Asteroid();
    theList.add(thing);
  for (int y = 0; y < 5; y++)
  {
    theList.add(new Asteroid());
  }

  for (int nI = 0; nI < 6; nI++)
  {
    theList.get(nI).show();
    theList.get(nI).move();
  }

  for (int nI = 0; nI < theList.size(); nI++)
  {
    if (dist(theList.get(nI).myCenterX, theList.get(nI).myCenterY, bob.myCenterX, bob.myCenterY) < 20) 
    {
      theList.remove(nI);
    }
  }

  for (int i = 0; i < space.length; i++)
  {
    space[i].show();
    bob.show();
  }
  bob.show();
  bob.move();
}

public void keyPressed()
{
  if (key == '1') {
    bob.accelerate(1);
  }
  if (key == '2') {
    bob.turn(-15);
  }
  if (key == '3') {
    bob.turn(15);
  }
  if (key == '4') {
    bob.hyperspace();
  }
}
