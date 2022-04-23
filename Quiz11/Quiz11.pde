Walker[] walkers = new Walker[10];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
    for(int i = 0; i < walkers.length; i++)
  {
    walkers[i] = new Walker();
    walkers[i].position = new PVector(random(-640, 641), random(-360, 361));
    walkers[i].mass = i+random(1, 11);
    walkers[i].scale = walkers[i].mass * 4;
  }
}

void draw()
{
  background(255);
  
  for(int i = 0; i < walkers.length; i++)
  {
    walkers[i].update();
    walkers[i].render();
    for (int j = 0; j < walkers.length; j++)
    {
      if(i != j)
      {
        walkers[i].applyForce(walkers[j].calculateAttraction(walkers[i]));
      }
    }
  }
}
