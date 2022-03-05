class Walker
{
  
  public float scale = 50;
  public float count = 250;
  
  public float gaussian = randomGaussian();
  public float standardDeviation = 200;
  public float mean = 0;
  public float x = standardDeviation * gaussian + mean;
  public float y = int(random(-360, 361));
  public float r = 0;
  public float g = 0;
  public float b = 0;
  
  PVector position = new PVector(x, y);
  
  void render()
  {
  if (count == 250)
  {
    reset();
    position.y = int(random(-360, 361));
    fill(int(random(256)), int(random(256)), int(random(256)),int(random(50, 101)));
  
    count = 0;
  }
  circle(position.x, position.y, scale);
  count++;
  }
  
  void renderScaleAndColor()
  {
    if (count == 250)
    {
      scale = (int (random(15, 41)));
      r = int(random(256));
      g = int(random(256));
      b = int(random(256));
    }
    fill( r, g, b,100);
    noStroke();
  }
  
  void reset()
  {
    gaussian = randomGaussian();
    x = standardDeviation * gaussian + mean;
    position.y = y;
    position.x = x;
  }
}
