class Walker
{
PVector position = new PVector();
PVector speed = new PVector(10, 10);
  
  void render()
  {
    int red = int(random(256));
    int green = int(random(256));
    int blue = int(random(256));
    int alpha = int(random(50, 101));
    fill(red,green,blue,alpha);
    noStroke();
    circle(position.x, position.y, 250);
  }
  
  void randomWalk()
  {
    int rng = int(random(8));
    if (rng == 0)
    {
      position.y += speed.y;
    }
    else if (rng == 1)
    {
      position.y -= speed.y;
    }
    else if (rng == 2)
    {
      position.x -= speed.x;
    }
    else if (rng == 3)
    {
      position.x += speed.x;
    }
        if (rng == 4)
    {
      position.x -= speed.x;
      position.y += speed.y;
    }
    else if (rng == 5)
    {
      position.x += speed.x;
      position.y += speed.y;
    }
    else if (rng == 6)
    {
      position.x -= speed.x;
      position.y -= speed.y;
    }
    else if (rng == 7)
    {
      position.x += speed.x;
      position.y -= speed.y;
    }
  }
  
  void moveAndBounce()
  {
    if (position.x < Window.left)
    {
      position.x += speed.x;
    }
    if (position.x > Window.right)
    {
      position.x -= speed.x;
    }
  
    if (position.y < Window.bottom)
    {
      position.y += speed.y;
    }
    if (position.y > Window.top)
    {
      position.y -= speed.y;
    }
  }
  
}
