void setup()
{
  size(1300, 800);
  background(25, 81, 20);
  //Preview Title Text
    fill(255);
    textSize(20);
    text("THE FOLLOWING PREVIEW HAS BEEN APPROVED FOR", 400, 305);
    textSize(28);
    text("ALL AUDIENCES", 540, 350);
    textSize(18);
    text("BY THE MOTION PICTURE ASSOCIATION OF AMERICA, INC.", 400, 390);
    textSize(13);
    text("www.filmratings.com", 400, 505);
    text("www.mpaa.org", 810, 505);
}
void draw()
{
    
  
}
void mousePressed()
{
  background(25, 81, 20);
  //Preview Title Text
    fill(255);
    textSize(20);
    text("THE FOLLOWING PREVIEW HAS BEEN APPROVED FOR", 400, 305);
    textSize(28);
    text("ALL AUDIENCES", 540, 350);
    textSize(18);
    text("BY THE MOTION PICTURE ASSOCIATION OF AMERICA, INC.", 400, 390);
    textSize(13);
    text("www.filmratings.com", 400, 505);
    text("www.mpaa.org", 810, 505);
  //Print Triangles
    fill(181, 70, 193);
    stroke(126, 17, 139);
    triangle(150, 50, 260, 70, pmouseX, pmouseY);
    triangle(860, 620, 1222, 750, 760, 788);
  //Golden Globe
    stroke(0);
    //base of Golden Globe
      fill(155, 90, 30);
      beginShape();
        vertex(mouseX + 50, mouseY + 50);
        vertex(mouseX + 130, mouseY + 50);
        vertex(mouseX + 160, mouseY + 80);
        vertex(mouseX + 20, mouseY + 80);
      endShape();
      rectMode(CENTER);
      fill(98, 77, 18);
      rect(mouseX + 90, mouseY + 65, 65, 20);
    //stem of Golden Globe
      fill(155, 99, 30);
      rectMode(CENTER);
      rect(mouseX + 90, mouseY, 60, 100);
      fill(103, 86, 40);
      rect(mouseX + 90, mouseY, 45, 80);
    //base of top of Globe
      stroke(210, 234, 54);
      fill(210, 234, 54);
      line(mouseX + 65, mouseY - 50, mouseX + 115, mouseY - 50);
      arc(mouseX + 90, mouseY - 50, 50, 30, PI, TWO_PI);
      stroke(0);
      arc(mouseX + 90, mouseY - 80, 70, 40, 0, PI, CHORD);
      stroke(0);
      beginShape();
        vertex(mouseX + 75, mouseY - 90);
        vertex(mouseX + 105, mouseY - 90);
        vertex(mouseX + 110, mouseY - 80);
        vertex(mouseX + 70, mouseY - 80);
      endShape();
    //Globe
      ellipseMode(CENTER);
      ellipse(mouseX + 90, mouseY - 113, 50, 50);
      stroke(231, 240, 177);
      ellipse(mouseX + 90, mouseY - 113, 50, 15);
      stroke(0);
      noFill();
      ellipse(mouseX + 90, mouseY - 113, 50, 50);
      point(mouseX + 80, mouseY - 113);
      point(mouseX + 100, mouseY - 113);
      
}
void keyPressed()
{
  background(25, 81, 20);
 //Preview Title Text
    fill(255);
    textSize(20);
    text("THE FOLLOWING PREVIEW HAS BEEN APPROVED FOR", 400, 305);
    textSize(28);
    text("ALL AUDIENCES", 540, 350);
    textSize(18);
    text("BY THE MOTION PICTURE ASSOCIATION OF AMERICA, INC.", 400, 390);
    textSize(13);
    text("www.filmratings.com", 400, 505);
    text("www.mpaa.org", 810, 505);
    
    //hexagons appear when keyPressed() is used
    noStroke();
    fill(150);
    beginShape();
      vertex(1030, 50);
      vertex(1100, 50);
      vertex(1170, 100);
      vertex(1100, 150);
      vertex(1030, 150);
      vertex(960, 100);
    endShape();
    fill(80);
    beginShape();
      vertex(1050, 80);
      vertex(1080, 80);
      vertex(1150, 100);
      vertex(1080, 120);
      vertex(1050, 120);
      vertex(990, 100);
    endShape();
    stroke(0);
    line(960, 100, 1170, 100);
}
