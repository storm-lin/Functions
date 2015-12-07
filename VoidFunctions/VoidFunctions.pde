int t = 0;//time-tracking variable
void setup()
{
  size(800, 600);
  frameRate(30);
}
void draw()
{
  drawRandomCircle();
  drawMouseCircle(100, 200, 0);
  if(mousePressed)
  {
    drawCircleAt(mouseX, mouseY);
  }
  drawTimeDisks(t);
  drawCenterSquare();
  for(int i = 0; i <= width; i += 10)
  {
    drawSineValue(i, map(t, 0, 300, 0, 360));
  }
  t++;//increment time variable
  if(t >= 300)//every 10 seconds
  {
    t = 0;//reset t
  }
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
void drawTimeDisks(int time)
{
  stroke(0);
  int shade = (int)map(time, 0, 300, 255, 0);//create a shade of gray that gets darker as time increases
  fill(shade);//fill with the calculated shade of gray
  for(int i = 25; i < width; i += 100)//starting at x=25, every 100 pixels until the edge of the canvas
  {
    ellipse(i, map(time, 0, 300, 25, height - 25), 50, 50);//draw a circle with a y coordinate that increases as time increases
  }
}
void drawSineValue(float x, float startAngle)
{
  float angle = startAngle + map(x, 0, width, 0, 360);
  fill(255);
  ellipse(x, map(sin(radians(angle)), -1, 1, height, 0), 10, 10);
}