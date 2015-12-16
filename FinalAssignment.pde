class Shape
{
  PVector position;
  int size;
  
  Shape()
  {
    //set up location with PVector
    position = new PVector(random(round(width)), 10);
    size = round(random(50, 100));
  }
  
  void update()
  {
    //update the position of the ellipses
    position.y += 5;
  }
  
  void display()
  {
    //ellipse shapes
    stroke(255);
    noFill();
    ellipse(position.x, position.y, size, size);
  }
}
// End of Shape Class

class Ship
{
  PVector position;
  int  x, y;
  boolean keys[];    // In this array, the index corresponds with W,S,A,D.
  int xVelocity, yVelocity;
  
  Ship()
  {
    //Ship position setup
    position = new PVector(width/2, height/2);
    //x = 540;
    //y = 360;
    keys = new boolean[4];
  }
  
  void display()
  {  // display Ship
    stroke(255);
    noFill();
    triangle(position.x,position.y,position.x+25,position.y+25,position.x-25,position.y+25); 
  }
  
  void update()
  {
   if(keys[0]){
      yVelocity = -5; 
   }
   if(keys[1]){
      yVelocity = 5;
    }
    if(keys[2]){
      xVelocity = -5;
    }
    if(keys[3]){
      xVelocity = 5;
    }
    if(!keys[2] && !keys[3]){ // if both Left and Right are released, horizontal velocity should be zero.
      xVelocity = 0;
      //println("no left or right");
    }
    if(!keys[0] && !keys[1]){ // if both Up and Down are released, vertical velocity should be zero.
      yVelocity = 0;
      //println("no left or right");
    }
    position.x += xVelocity;
    position.y += yVelocity;
  }
  
  boolean checkCollision(Shape[] shapes)
  {
    for(int x = 0; x < shapes.length-1; x++)
    {
      float distance = dist(position.x, position.y, shapes[x].position.x, shapes[x].position.y);
      if(distance < shapes[x].size)
      {
        return true;
      }
    }
    return false;
  }
  
   void keyPressed()
   {
    if(key == 'w'){
      keys[0] = true;
    } 
    if(key == 's'){
      keys[1] = true;
    }
    if(key == 'a'){
      keys[2] = true;
    }
    if(key == 'd'){
      keys[3] = true;
    } 
  }
  
  void keyReleased()
  { 
    if(key == 'w'){
      keys[0] = false;
    } 
    if(key == 's'){
      keys[1] = false;
    }
    if(key == 'a'){
      keys[2] = false;
    }
    if(key == 'd'){
      keys[3] = false;
    } 
  }

}
//End of Ship Class

class Timer
{
  float startTime, stopTime; // two variables to keep track of the time that the timer starts and length of time for the timer.
   boolean started = false;  // keep track of the timer, where it's been started on not. 
  
  //constructor. This sets the amount of the time to lapse before it sets the boolean below to true. 
  // an example use would be 
  // Timer myTimer = new Timer(2000);    <---- that sets the timer to 2 seconds.
  Timer(float _stopTime)
  {
    stopTime = _stopTime;
  }
  
  // you can call this anyway (inside the Setup which would start almost immediately or inside the draw loop, which would make 
  // it restart ever cycle.
  void timerStart()
  {
    startTime = millis();
    started = true;
  }
  
  void stopTimer()
  {
    started = false;
    println("time stopped");
  }
  
  // place this in your draw() loop to cheen the time has lapse.
  // an example block of code might be:
  //   if (myTimer.isFinished(){
  //      text("EXPLOSION!", 100, 100);
  //    }
  boolean isFinished()
  {
    float passedTime = millis() - startTime;
    if((passedTime > stopTime) && (started)) 
    {
      return true;
    } else 
    {
      return false;
    }
  }
}
// End of Timer Class

Ship ship;
Shape[] shapes;
Timer myTimer;
int numShapes;
PImage imgBackground;
PImage imgGameOver;
boolean startScreen = true;
PImage spaceImg;
void setup()
{
  size(1080, 720);
  background(0);
  imgBackground = loadImage("http://10-themes.com/data_images/wallpapers/55/482260-space.jpg");
  imgGameOver = loadImage("unnamed.png");
  spaceImg = loadImage("http://i.telegraph.co.uk/multimedia/archive/02357/eso-summary_2357457k.jpg");
  strokeWeight(10);
  ship = new Ship();
  shapes = new Shape[2000];
  for(int x = 0; x < shapes.length-1; x++){    // create 2000 instances of Shape to the array
    shapes[x] = new Shape();
  }
  myTimer = new Timer(300);     // sets timer to half a second
  myTimer.timerStart();
}

void draw()
{
  //show start screen
  if(startScreen)
  {
    background(0);
    image(spaceImg, 111, 0);
    fill(255);
    textSize(25);
    text("Click to Play", 440, 670);
  }
  else
  {
    background(0);
    image(imgBackground, 0, 0);
    //check for collisions
    if(ship.checkCollision(shapes))
    {
      image(imgGameOver, 0, 0);
    }
    else{
      ship.update();
      ship.display();
      
      if(myTimer.isFinished()){                      // whenever the timer goes off, add another shape
        numShapes++;                             // increase the number of shapes
        myTimer.timerStart(); // restart the timer      // restart the timer everytime the timer goes off
      }
      if (numShapes == shapes.length-1){         // incase we run out of shapes, restart the count
        numShapes = 0;
      }
      //this for loops handles the number of enemies. 
      for(int newShape = numShapes; newShape > 0 ; newShape --){    //  keep track of all the previous
        shapes[newShape].update();                                         //  Shape 'spawned'.
        shapes[newShape].display();
      }
    }
  }
}

void mousePressed()
{
  startScreen = false;
}

void keyPressed(){
  ship.keyPressed(); // the global keyPressed function calls the Ship class keyPressed method. 
}

void keyReleased(){
  ship.keyReleased(); // the global keyReleased function calls the Ship class keyReleased method.
}
