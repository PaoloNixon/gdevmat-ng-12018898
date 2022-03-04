class Walker
{
  float x;
  float y;
  
  void render()
  {
    int red = int(random(256));
    int green = int(random(256));
    int blue = int(random(256));
    int alpha = int(random(50, 101));
    fill(red,green,blue,alpha);
    noStroke();
    circle(x, y, 30);
  }
  
  void randomWalk()
  {
    int rng = int(random(8));
    println(rng);
    if (rng == 0)
    {
      y += 10;
    }
    else if (rng == 1)
    {
      y -= 10;
    }
    else if (rng == 2)
    {
      x -= 10;
    }
    else if (rng == 3)
    {
      x += 10;
    }
        if (rng == 4)
    {
      x -= 10;
      y += 10;
    }
    else if (rng == 5)
    {
      x += 10;
      y += 10;
    }
    else if (rng == 6)
    {
      x -= 10;
      y -= 10;
    }
    else if (rng == 7)
    {
      x += 10;
      y -= 10;
    }
  }
  
    void randomWalkBiased()
  {
    int rng = int(random(15));
    println(rng);
    if (rng == 0)
    {
      y += 10;
    }
    else if (rng >= 1 && rng <= 3)
    {
      y -= 10;
    }
    else if (rng == 4)
    {
      x -= 10;
    }
    else if (rng >= 5 && rng <= 6)
    {
      x += 10;
    }
        if (rng == 7)
    {
      x -= 10;
      y += 10;
    }
    else if (rng >= 8 && rng <= 10)
    {
      x += 10;
      y += 10;
    }
    else if (rng >= 11 && rng <= 13)
    {
      x -= 10;
      y -= 10;
    }
    else if (rng == 14)
    {
      x += 10;
      y -= 10;
    }
  }
  
}
