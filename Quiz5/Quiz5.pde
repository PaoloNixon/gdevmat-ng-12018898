void setup()
{
   size(1280, 720, P3D);
   camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

Walker myWalker = new Walker();
Walker myWalker2 = new Walker();

void draw()
{
  background(255);
  myWalker.randomWalk();
  myWalker.render();
  myWalker.moveAndBounce();
  
  myWalker2.randomWalk();
  myWalker2.render();
  myWalker2.moveAndBounce();
}
