void setup()
{
  size(1280, 800);
  background(250);
}
void draw()
{
  background(250);
  //Borders of the air hockey
    stroke(255, 0, 0);
    strokeWeight(25);
    noFill();
    quad(0, 0, 1280, 0, 1270, 750, 0, 750); 
  //end
  
  //Center Cirle 
    noFill();
    stroke(255, 0, 0);
    strokeWeight(15);
    ellipseMode(CENTER);
    ellipse(640, 400, 150, 150);
    line(640, 0, 640, 325);
    line(640, 475, 640, 800);
    point(640, 350);
    point(640, 450);
  //end
  
  //Irrecgular polygon patterns
  //Poly 1
    fill(185, 69, 55);
    noStroke();
    beginShape();
      vertex(20, 100);
      vertex(30, 130);
      vertex(130, 150);
      vertex(120, 140);
    endShape(CLOSE);
  //Poly 2
    fill(100, 66, 66);
    strokeWeight(5);
    stroke(89, 15, 150);
    beginShape();
      vertex(680, 50);
      vertex(720, 35);
      vertex(780, 65);
      vertex(740, 200);
      vertex(700, 225);
    endShape(CLOSE);
  //Poly 3
    fill(65, 185, 62);
    strokeWeight(10);
    stroke(199, 45, 55);
    beginShape();
      vertex(350, 700);
      vertex(390, 660);
      vertex(410, 725);
      vertex(360, 725);
    endShape(CLOSE);
  //Poly 4
    fill(185, 15, 65);
    strokeWeight(7);
    stroke(150, 15, 181);
    beginShape();
      vertex(777, 666);
      vertex(1040, 388);
      vertex(1040, 735);
      vertex(777, 688);
    endShape(CLOSE);
  //end
  
  //Hockey Puck
    fill(0);
    stroke(0);
    strokeWeight(5);
    ellipse(mouseX, mouseY, 50, 50);
    noFill();
    stroke(255);
    strokeWeight(4);
    ellipse(mouseX, mouseY, 35, 35);
  //end
  
  //Goals
    noFill();
    strokeWeight(5);
    stroke(0, 0, 255);
    arc(15, 400, 150, 150, -HALF_PI, HALF_PI);
    arc(1265, 400, 150, 150, -PI, PI);
    fill(0, 0, 255);
    strokeWeight(5);
    stroke(0);
    rect(0, 325, 35, 150);
    rect(1245, 325, 35, 150);
    fill(255, 0, 0);
    strokeWeight(5);
    stroke(0);
    triangle(1275, 340, 1275, 460, 1250, 400);
    fill(255);
    triangle(5, 340, 5, 460, 30, 400);
  //end
}
