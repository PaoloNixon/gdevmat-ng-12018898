
void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

void draw()
{
  background(0);

  drawCartesianPlane();
  //1
  drawQuadraticFunction();
  //2
  drawLinearFunction();
  //3
  drawWaveFunction();
}

void drawCartesianPlane()
{
   strokeWeight(1);
  color white = color(255, 255, 255);
  fill(white);
  stroke(white);
  line(300, 0, -300, 0);
  line(0, -300, 0, 300);
  
  for (int i = -300; i <= 300; i += 10)
  {
    line(i, -2, i, 2);
    line (-2, i, 2, i);
  } 
}

void drawLinearFunction()
{
  color purple = color(255, 0, 255);
  fill(purple);
  noStroke();
  
  for (int x = -200; x <= 200; x++)
  {
    circle(x, -5*x + 30, 9);
  }
}

void drawQuadraticFunction()
{
  color yellow = color(255, 255, 0);
  fill(yellow);
  stroke(yellow);
  noStroke();
  
  for (float x = -300; x <= 300; x += 0.1f)
  {
    circle(x * 10, (x * x) - (x * 15) - 3, 6);
  }
}

//void drawCircleFunction()
//{
//  color yellow = color(255, 255, 0);
//  fill(yellow);
//  stroke(yellow);
//  float radius = 50;
  
//  for (int x = 0; x <= 360; x++)
//  {
//     circle((float)Math.cos(x) * radius, (float)Math.sin(x) * radius, 5);
//  }
//}

void drawWaveFunction()
{
  color blue = color(0, 0, 255);
  fill(blue);
  stroke(blue);
  float radius = 50;
  
  for (int x = -250; x<= 250; x++)
  {
    circle(x ,(float)Math.sin(0.1 * x) * radius, 6);
  }
}
