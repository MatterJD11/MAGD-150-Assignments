boolean isBackground = true;
boolean isClicked = false;
boolean isNote = false;
PImage img;
PImage img2;
Note[] notes = new Note[5];
Note[] notes2 = new Note[5];
Curtain curtain;
void setup()
{
  //Curtains image over the orchestra image
  size(800, 600);
  img = loadImage("orchestrasinfonicasiciliana-2.jpg");
  img2 = loadImage("Red-Curtains-Vector-Powerpoint-Backgrounds-800x600.jpg");
  curtain = new Curtain(0, 0, img2);
}
void draw()
{
  // Redraws curtain image over orchestra image
  if(isNote == false)
  {
    image(img, 0, 0);
    curtain.showCurtain();
  }
  else
  {
    // Draws notes to travel randomly
    background(random(round(255)), random(round(255)), random(round(255)));
    for(int i = 0; i<notes.length; i++)
    {
      notes[i].update();
      notes[i].checkSides();
      notes[i].drawNote1();
      notes2[i].update();
      notes2[i].checkSides();
      notes2[i].drawNote2();
    }
  }
}
class Curtain
{
  int xPos = 0;
  int yPos = 0;
  PImage img2;
  //Curtain Constructor
  Curtain(int posX, int posY, PImage img)
  {
    xPos = posX;
    yPos = posY;
    img2 = img;
  }
  void update(int y)
  {
    if(isClicked == false)
    {
      yPos -= y;
    }
    else
    {
      yPos = 0;
    }
  }
  //Checks if the curtain is down
  boolean curtainIsDown()
  {
    if(yPos < 0)
      return false;
    else
      return true;
  }
  void showCurtain()
  {
    image(img2, xPos, yPos);
  }
}

// Class to Create Notes
public class Note
{
  float X;
  float Y;
  float xSpeed;
  float ySpeed;
  float circleXSize;
  float circleYSize;
  //Note Constructor
  Note(float xPos, float yPos, float cXsize, float cYsize)
  {
    X = xPos;
    Y = yPos;
    xSpeed = random(-10, 10);
    ySpeed = random(-10, 10);
    circleXSize = cXsize;
    circleYSize = cYsize;
  }
  // Update Note Position
  void update()
  {
    X+=xSpeed;
    Y+=ySpeed;
  }
  //Check notes circle size
  void checkSides()
  {
    float rX = circleXSize/2;
    float rY = circleYSize/2;
    if( X<rX || X>width-rX)
    {
      xSpeed = -xSpeed;
    }
    if( Y<rY || Y>height-rY)
    {
      ySpeed = -ySpeed;
    }
  }
  //Draw Note 1
  void drawNote1()
  {
    fill(0);
    rect(X+17, Y-100, 8, 100);
    ellipseMode(CENTER);
    ellipse(X, Y, circleXSize, circleYSize);
  }
  //Draw Note 2
  void drawNote2()
  {
    fill(0);
    ellipseMode(CENTER);
    ellipse(X, Y, circleXSize, circleYSize);
    ellipse(X+100, Y, circleXSize, circleYSize);
    rect(X+17, Y, 8, 100);
    rect(X+117, Y, 8, 100);
    rect(X+17, Y+100, 108, 8);
    rect(X+17, Y+80, 108, 8);
  }
}
void mousePressed() //<>//
{
  // Checks if the background is the orchestra and curtain
  if(isBackground == true)
  {
    // Checks if Clicked in order to chage the curtain position
    if(isClicked == false) //<>//
    {
      for(int x = 0; x < 10; x++)
      {
        curtain.showCurtain();
        curtain.update(50);
      }
      isClicked = true;
    }
    else
    {
      curtain.update(0);
      image(img2, 0, 0);
      isClicked = false;
    }
  }
}
void keyPressed()
{
  // As long as curtain is down play the random notes.
  if(curtain.curtainIsDown() == false)
  {
    if(isNote == false)
    {
      background(random(round(255)), random(round(255)), random(round(255)));
      for(int i = 0; i<notes.length; i++)
      {
        notes[i] = new Note(400, 300, 50, 20);
        notes2[i] = new Note(400, 300, 50, 20);
      }
      isNote = true;
    }
    isBackground = false;
  }
}
