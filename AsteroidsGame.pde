Spaceship bob = new Spaceship();
Star [] space = new Star[200];
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
