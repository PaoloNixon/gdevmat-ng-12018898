Walker[] walkers = new Walker[100];
Walker walker = new Walker();
void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i] = new Walker();
    walkers[i].scale = int(random(15, 51));
  }
  
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth;
  float y = -(mouseY - Window.windowHeight);
  return new PVector(x,y);
}

void draw()
{
  background(80);
  PVector mouse = mousePos();
  PVector direction = mousePos();
  direction.normalize().mult(0.2);
  stroke(255);
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i].update();
    walkers[i].render();
    
    //Follows the mouse
    if(walkers[i].position.x < mouse.x)
    {
      walkers[i].acceleration.x = 0.2;
    }
    if(walkers[i].position.x > mouse.x)
    {
      walkers[i].acceleration.x = -0.2;
    }
    if(walkers[i].position.y < mouse.y)
    {
      walkers[i].acceleration.y = 0.2;
    }
    if(walkers[i].position.y > mouse.y)
    {
      walkers[i].acceleration.y = -0.2;
    }
    
    //Goes to the direction
    //walkers[i].checkEdges();
    //walkers[i].acceleration.x = direction.x;
    //walkers[i].acceleration.y = direction.y;
  }
  println(direction.x);
}
