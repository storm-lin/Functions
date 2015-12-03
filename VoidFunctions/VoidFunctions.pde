void setup()
{
  size(1000, 600);
}
void draw()
{
  drawRandomCircle();
  if(mousePressed)
  {
    drawCircleAt(mouseX, mouseY);
  }
}
void drawRandomCircle()
{
  stroke(random(50, 200), 0, random(50, 200));
  fill(random(50, 200), 0, random(50, 200), 200);
  float size = random(30, 100);
  ellipse(random(width), random(height), size, size);
}
void drawCircleAt(float x, float y)
{
  noStroke();
  fill(100);
  ellipse(x, y, 30, 30);
}