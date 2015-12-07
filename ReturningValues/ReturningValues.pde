void setup()
{
  size(600, 600);
}
void draw()
{
  for(int i = 0; i <= width; i += 60)
  {
    for(int j = 0; j <= height; j += 60)
    {
      float shade = map(stormNumber(i/60, j/60), 0, 60466176, 0, 255);
      fill(shade, 0, 0);
      ellipse(i, j, 60, 60);
    }
  }
}
float stormNumber(float a, float b)
{
  float t1 = pow(2, a);
  float t2 = pow(3, b);
  float product = t1 * t2;
  return product;
}
float compoundStormNumber(float a, float b, float c, float d)
{
  float t3 = stormNumber(a, b);
  float t4 = stormNumber(c, d);
  float sum = t3 + t4;
  return sum;
}