void setup()
{
  size(800, 600);
}
void draw()
{
  drawRandomCircle();
  drawMouseCircle(100, 200, 0);
  if(mousePressed)
  {
    drawCircleAt(mouseX, mouseY);
  }
  drawCenterSquare();
}
void drawRandomCircle()
{
  stroke(random(50, 200), 0, random(50, 200));//random magenta stroke
  fill(random(50, 200), 0, random(50, 200), 200);//random translucent magenta fill
  float size = random(30, 80);//set size
  ellipse(random(width), random(height), size, size);//draw circle at random location
}
void drawCircleAt(float x, float y)
{
  noStroke();
  fill(100);
  ellipse(x, y, 30, 30);//draw circle at inputted location
}
void drawCenterSquare()
{
  stroke(0);
  fill(0, 0, 255);
  rect(width/2 - 25, height/2 - 25, 50, 50);//square of side length 50 in center of canvas
}
void drawMouseCircle(int r, int g, int b)
{
  noStroke();
  fill(r, g, b);//fill with the inputted color
  ellipse(mouseX, mouseY, 30, 30);//draw circle at the mouse's location
}