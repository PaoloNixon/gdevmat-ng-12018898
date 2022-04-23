Walker[] walkers = new Walker[8];

PVector wind = new PVector(0, -0.4);

void setup()
{
  size(1280, 750, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  for (int i = 0; i < walkers.length; i++)
  {
    int posY = 2 * ((Window.windowHeight / 2)/ walkers.length) * (i - (walkers.length/2));
    walkers[i] = new Walker();
    walkers[i].position = new PVector(-600, posY);
    walkers[i].mass = i+1;
    walkers[i].scale = walkers[i].mass * 6;
  }
}

void draw()
{
  background(80);
  
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i].acceleration = new PVector(0.045 * walkers[i].mass, 0);
    float mew = 0.01f;
    float normal = 1;
    if (walkers[i].position.x >= 0)
    {
      mew = 0.4f;
    }
    float frictionMagnitude = mew * normal;
    PVector friction = walkers[i].velocity.copy();
    friction.mult(-1);
    friction.normalize();
    friction.mult(frictionMagnitude);
    walkers[i].applyForce(friction);
    
    //PVector gravity = new PVector(0.2 * walkers[i].mass, 0);
    walkers[i].render();
    walkers[i].update();
    //walkers[i].applyForce(wind);
    walkers[i].checkEdges();
  } 
}
