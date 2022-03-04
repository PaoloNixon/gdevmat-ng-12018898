class Walker
{
  public float x;
  public float y;
  public float tx=0 , ty = 10000;
  public float st = 1000;
  public float ct = 255;
  
  void render()
  {
    float red = map(noise(ct * 2), 0, 1, 0, 255);
    float green = map(noise(ct * 5), 0, 1, 0, 255);
    float blue = map(noise(ct * 3), 0, 1, 0, 255);
    fill(red,green,blue);
    noStroke();
    float scale = map(noise(st), 0, 1, 5, 150);
    circle(x, y, scale);
    
    st += 0.01f;
    ct += 0.01f;
  }
  
  void perlinWalk()
  {
    x = map(noise(tx), 0, 1, -640, 640);
    y = map(noise(ty), 0, 1, -360, 360);
    
    tx += 0.01f;
    ty += 0.01f;
  }
  
  
}
