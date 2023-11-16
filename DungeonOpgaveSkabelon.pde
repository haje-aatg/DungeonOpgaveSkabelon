boolean[][] Dungeon = {{false, false, false, false, false, false, false, false, false}, 
  {false, true, true, true, false, true, true, true, false}, 
  {false, true, false, true, false, true, false, true, false}, 
  {false, true, false, true, true, true, false, false, false}, 
  {false, true, false, true, false, true, false, true, false}, 
  {false, true, false, true, false, true, false, true, false}, 
  {false, true, true, true, false, true, true, true, false}, 
  {false, false, false, false, false, false, false, false, false}};
int squaresize = 10;
boolean running = true;
PVector place = new PVector(1, 1);
PVector direction = new PVector(1, 0);
PVector exit = new PVector(7, 4);

void setup() {
  //size(1920, 1080);
  fullScreen();
  background(0);
  fill(255);
  stroke(255);
  for (int xline = squaresize; xline<width; xline+=squaresize) {
    line(xline, 0, xline, height);
  }
  for (int yline = squaresize; yline<height; yline+=squaresize) {
    line(0, yline, width, yline);
  }
  println("Dungeon size is: " + Dungeon[0].length + " in x direction &: " + Dungeon.length + " in y direction");
  for (int xdir = 0; xdir<Dungeon[0].length; xdir++) {
    for (int ydir = 0; ydir<Dungeon.length; ydir++) {
      //println(xdir+" , "+ydir);
      if (Dungeon[ydir][xdir] == false) {
        square(xdir*squaresize, ydir*squaresize, squaresize);
      }
    }
  }
  fill(0, 255, 0);
  square(exit.x*squaresize, exit.y*squaresize, squaresize);
  fill(255, 0, 0);
  println("Finished setup @: " + millis());
}

void draw() {
  if (place.equals(exit)) {
    if (running == true) {
      println("Exiting @: " + millis());
    }
    running = false;
  } else {
    //println(place);
    //println(Dungeon[int(place.y+direction.y)][int(place.x+direction.x)]);
    square(place.x*squaresize, place.y*squaresize, squaresize);
    println(place + " : " + direction);
    Navigate();
  }
}

void Navigate() {
  //Din kode her!
}
