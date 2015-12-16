void setup()
{
  size(300, 300);
  background(61, 55, 55);
  //pong paddles
  rectMode(CENTER);
  rect(10, 50, 20, 50);
  rectMode(CORNERS);
  rect(279, 170, 299, 220); 
  stroke(255, 185, 15);
  //arrow
  point(150, 223);
  point(120, 193);
  stroke(229, 27, 27);
  line(150, 223, 120, 193);
  line(150, 223, 144, 208);
  line(150, 223, 135, 216);
  stroke(61, 55, 55);
  fill(255, 185, 15);
  //balls
  ellipseMode(CORNER);
  ellipse(100, 173, 15, 15);
  ellipseMode(CENTER);
  ellipse(164, 238, 15, 15);
}
