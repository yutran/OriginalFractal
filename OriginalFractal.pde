public void setup()
{
  size(500,500);
}

public void draw()
{
  background(0);
  myFractal(250, 250, 200);
}

public void myFractal(float x, float y, float z)
{
  ellipse(x, y, z, z);
  if (z > 5)
  {
    fill((int)(Math.random()*250));
    myFractal(x+z/2, y, z/2);
    myFractal(x-z/2, y, z/2);
    myFractal(x, y+z/2, z/2);
    myFractal(x, y-z/2, z/2);
  }

}
