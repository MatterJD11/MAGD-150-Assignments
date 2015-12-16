int r = 255;
int b = 255;
boolean isPressed = false;
void setup()
{
  size(1350, 850);
  background(48, 83, 170);
  //Ad Hominem Text
    stroke(0);
    strokeWeight(5);
    fill(255);
    textSize(75);
    text("Miley Cyrus was Hannah Montana\n      when Bush was President", 40, 100);
  //Fox News Text
    stroke(0);
    fill(255);
    textSize(80);
    text("FOX", 640, 402);
    text("NEWS", 590, 470);
    noStroke();
    fill(r, 0, 0);
    rect(595, 480, 205, 35);
    fill(255);
    stroke(0);
    textSize(30);
    text(".com", 660, 507);
    noFill();
    stroke(255);
    strokeWeight(5);
    rect(580, 320, 240, 220);
}
void draw()
{
  
}
void keyPressed()
{
  background(48, 83, 170); 
  
  // On keyPressed event change backgrounds color. 
  if(isPressed)
    {
      background(r, 0, 0);
      //Thanks, Obama text
        textSize(75);
        text("THANKS, OBAMA!!", 600, 150);
        text("THANKS, OBAMA!!", 30, 700);
      //White Diagonal
        stroke(255);
        strokeWeight(25);
        noFill();
        line(0, 0, 1350, 850);
      //Generic Background Shapes
        stroke(0);
        strokeWeight(5);
        fill(0, 0, b);
        beginShape();
          vertex(0, 260);
          vertex(700, 260);
          vertex(650, 310);
          vertex(0, 310);
        endShape();
       beginShape();
         vertex(710, 570);
         vertex(1350, 570);
         vertex(1350, 620);
         vertex(760, 620);
         vertex(710, 570);
       endShape();
      //Fox News Text
        noStroke();
        fill(r, 0, 0);
        rect(580, 320, 240, 220);
        stroke(0);
        strokeWeight(1);
        fill(255);
        textSize(80);
        text("FOX", 640, 402);
        text("NEWS", 590, 470);
        noStroke();
        fill(0, 0, b);
        rect(595, 480, 205, 35);
        fill(255);
        stroke(0);
        textSize(30);
        text(".com", 660, 507);
        noFill();
        stroke(255);
        strokeWeight(5);
        rect(580, 320, 240, 220);
      //Mouse Triangle  
        fill(0, r, 0);
        triangle(mouseX, mouseY, mouseX + 20, mouseY + 30, mouseX + 7, mouseY + 37);
        fill(255);
      isPressed = false;
    }
  else
    {
      background(0, 0, b);
      //Thanks, Obama text
        textSize(75);
        text("THANKS, OBAMA!!", 600, 150);
        text("THANKS, OBAMA!!", 30, 700);
      //Black Diagonal
        stroke(0);
        strokeWeight(25);
        noFill();
        line(0, 0, 1350, 850);
      //Generic Background Shapes
        stroke(0);
        strokeWeight(5);
        fill(r, 0, 0);
        beginShape();
          vertex(0, 260);
          vertex(700, 260);
          vertex(650, 310);
          vertex(0, 310);
        endShape();
        beginShape();
         vertex(710, 570);
         vertex(1350, 570);
         vertex(1350, 620);
         vertex(760, 620);
         vertex(710, 570);
        endShape();
      //Fox News Text
        noStroke();
        fill(0, 0, b);
        rect(580, 320, 240, 220);
        stroke(0);
        fill(255);
        textSize(80);
        text("FOX", 640, 402);
        text("NEWS", 590, 470);
        noStroke();
        fill(r, 0, 0);
        rect(595, 480, 205, 35);
        fill(255);
        stroke(0);
        textSize(30);
        text(".com", 660, 507);
        noFill();
        stroke(255);
        strokeWeight(5);
        rect(580, 320, 240, 220);
      //Mouse Triangle  
        fill(0, r, 0);
        triangle(mouseX, mouseY, mouseX + 20, mouseY + 30, mouseX + 7, mouseY + 37);
        fill(255);
      isPressed = true;
    }
}
void mousePressed()
{
  //mousePressed Event called resets meme!
    background(48, 83, 170);
    //Ad Hominem Text
      stroke(0);
      strokeWeight(5);
      fill(255);
      textSize(75);
      text("Miley Cyrus was Hannah Montana\n      when Bush was President", 40, 100);
    //Fox News Text
      stroke(0);
      fill(255);
      textSize(80);
      text("FOX", 640, 402);
      text("NEWS", 590, 470);
      noStroke();
      fill(r, 0, 0);
      rect(595, 480, 205, 35);
      fill(255);
      stroke(0);
      textSize(30);
      text(".com", 660, 507);
      noFill();
      stroke(255);
      strokeWeight(5);
      rect(580, 320, 240, 220);
}
