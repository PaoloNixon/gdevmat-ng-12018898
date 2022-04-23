public class Walker
{
  public float x = -500;
  public float y = 200;
  public float velocityLimit = 10;
  public float scale = 15;
  public float mass = 1;
  public int count = 0;
  public PVector position = new PVector(x,y);
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
  public float r;
  public float g;
  public float b;
  
  public Walker()
  {
    
  }
  
  public void applyForce(PVector force)
  {
    PVector f = PVector.div(force, this.mass);
    this.acceleration.add(f);
  }
  
  public void update()
  {
    this.velocity.add(this.acceleration);
    this.velocity.limit(velocityLimit);
    this.position.add(this.velocity);
    this.acceleration.mult(0);
    if(count == 0)
    {
      r = int(random(256));
      g = int(random(256));
      b = int(random(256));
      count++;
    }
    fill (r, g, b, 255);
  }
  
  public void render()
  {
    circle(position.x, position.y, scale);
  }
  
  public void col()
  {
    fill (int(random(256)),int(random(256)),int(random(256)), 255);
  }
  
  public void checkEdges()
  {
    if (this.position.x >= Window.right)
    {
      this.velocity.x *= -1.;
    }
    else if (this.position.x <= Window.left)
    {
      this.velocity.x *= -1.;
    }
        if (this.position.y >= Window.top)
    {
      this.velocity.y *= -1.;
    }
    else if (this.position.y <= Window.bottom)
    {
      this.velocity.y *= -1.;
    }
  }
}
