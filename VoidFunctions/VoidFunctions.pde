void setup()
{
  size(800, 600);
}
void draw()
{
  drawRandomCircle();
  if(mousePressed)
  {
    drawCircleAt(mouseX, mouseY);
  }
  drawCenterSquare();
}
void drawRandomCircle()
{
  stroke(random(50, 200), 0, random(50, 200));
  fill(random(50, 200), 0, random(50, 200), 200);
  float size = random(30, 80);
  ellipse(random(width), random(height), size, size);
}
void drawCircleAt(float x, float y)
{
  noStroke();
  fill(100);
  ellipse(x, y, 30, 30);
}
void drawCenterSquare()
{
  stroke(0);
  fill(0, 0, 255);
  rect(width/2 - 25, height/2 - 25, 50, 50);
}