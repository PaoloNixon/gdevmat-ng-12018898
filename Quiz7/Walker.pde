public class Walker
{
  public float x = int(random(-640,641));
  public float y = int(random(-360,361));
  public float velocityLimit = 10;
  public float scale = 15;
  
  public PVector position = new PVector(x,y);
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
  
  public Walker()
  {
    
  }
  
  public void update()
  {
    this.velocity.add(this.acceleration);
    this.velocity.limit(velocityLimit);
    this.position.add(this.velocity);
  }
  
  public void render()
  {
    circle(position.x, position.y, scale);
  }
  
  public void checkEdges()
  {
    if (this.position.x > Window.right)
    {
      this.position.x = Window.left;
    }
    else if (this.position.x < Window.left)
    {
      this.position.x = Window.right;
    }
        if (this.position.y > Window.top)
    {
      this.position.y = Window.bottom;
    }
    else if (this.position.y < Window.bottom)
    {
      this.position.y = Window.top;
    }
  }
  
}
