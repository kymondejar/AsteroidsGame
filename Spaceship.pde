class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 4;   
    xCorners = new int[]{-8, 16, -8, -2};   
    yCorners = new int[]{-8, 0, 8, 0};   
    myColor = 145 ;   
    myCenterX = 200;
    myCenterY = 200;    
    myXspeed = 0;
    myYspeed = 0;   
    myPointDirection = 0; 
  }
  
  public float getX(){
    return myCenterX;
  }
  public float getY(){
    return myCenterY;
  }
  public double getXspeed(){
    return myXspeed;
  }
  public double getYspeed(){
    return myYspeed;
  }
  public double getPointDirection(){
    return myPointDirection;
  }

  public void hyperspace()
  {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random() * 500);
    myCenterY = (int)(Math.random()* 500);
    myPointDirection = (int)(Math.random() * 360);
  }
}
