void setup()
{
   size(1020, 720, P3D);
   camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
   background(255);
}

void draw()
{
  float gaussian = randomGaussian();
  println(gaussian);
  
  float standardDeviation = 200;
  float mean = 0;
  
  float x = standardDeviation * gaussian + mean;
  float y = int(random(-360, 361));
  //Circle
  gaussian = randomGaussian();
  standardDeviation = 40;
  mean = 5;
  float scale = standardDeviation * gaussian + mean;
  
  fill(int(random(256)),int(random(256)),int(random(256)),int(random(10, 101)));
  noStroke();
  
  circle(x, y, scale);
}
