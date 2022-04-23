Walker[] walkers = new Walker[10];

PVector wind = new PVector(0.1, 0);

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  myWalker.position = new PVector(0, 300);
  myWalker.mass = 5;
  myWalker.scale = myWalker.mass * 10;
  
  for (int i = 0; i < walkers.length; i++)
  {
    int posX = 2 * (Window.windowWidth / 10) * (i - 5);
    walkers[i] = new Walker();
    walkers[i].position = new PVector(posX, 300);
    walkers[i].mass = i+random(1, 11);
    walkers[i].scale = walkers[i].mass * 4;
  }
}

Liquid ocean = new Liquid(0, -100, Window.right, Window.bottom, 0.1f);
Walker myWalker = new Walker();

void draw()
{
  background(255);
  
  ocean.render();
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i].render();
    walkers[i].update();
  
    PVector gravity = new PVector(0, -0.15f * walkers[i].mass);
    walkers[i].applyForce(gravity);
    walkers[i].applyForce(wind);
    
    float c = 0.1f;
    float normal = 1;
    float frictionMagnitude = c * normal;
    PVector friction = walkers[i].velocity.copy();
    myWalker.applyForce(friction.mult(-1).normalize().mult(frictionMagnitude));
    
    if (walkers[i].position.y <= Window.bottom)
    {
      walkers[i].position.y = Window.bottom;
      walkers[i].velocity.y *= -1;
    }
    
      if (ocean.isCollidingWith(walkers[i]))
    {
      wind = new PVector(0, 0);
      PVector dragForce = ocean.calculateDragForce(walkers[i]);
      walkers[i].applyForce(dragForce);
    }
    
     if (mousePressed)
    {
      walkers[i].velocity = new PVector(0, 0);
      wind = new PVector(0.1, 0);
      int posX = 2 * (Window.windowWidth / 10) * (i - 5);
      walkers[i].position = new PVector(posX, 300);
    }
  }
}
