Walker[] walkers = new Walker[100];
Walker blackhole = new Walker();

void setup()
{
   size(1280, 720, P3D);
   camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);\
  for (int i = 0; i < 100; i++)
  {
    walkers[i] = new Walker();
  }
}

float speed = 5;

void draw()
{
  background(0);
  
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i].renderScaleAndColor();
    walkers[i].render();
    PVector direction = PVector.sub(blackhole.position, walkers[i].position);
    direction.normalize();
    direction.mult(speed);
    walkers[i].position.add(direction);
  }
  
  fill(255, 255, 255);
  blackhole.render();

}
