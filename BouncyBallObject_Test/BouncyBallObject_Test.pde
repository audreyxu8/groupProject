//import processing.sound.*;
//SoundFile file;
int numBounce = 10;
Ball [] balls;
Table animeList;

void setup() {
  size(1920, 1000);
  noStroke();

  //for (int i = 0; i < width; i++) {
  //  for (int j = 0; j < height; j++) {
  //    float r = map(i, 0, width, 0, 255);
  //    float g = map(j, 0, height, 0, 255);
  //    stroke(r, g, 170);
  //    point(i, j);
  //  }
  //}


  loadData();

  //  file = new SoundFile(this, "cowboy.mp3");
  //  file.play();
}

void draw() {
  float r = map(mouseX, 0, width, 100, 255);
  float g = map(mouseX, 0, height, 100, 255);
  float b = map(mouseY, 0, width, 255, 0);

  background(r,g,b);
  for (int i = 0; i < 100; i++) {
    balls[i].display();
    balls[i].rollover(mouseX, mouseY);
    balls[i].move();
    balls[i].checkBoundaries();
  }

  textAlign(LEFT);
  fill(0);
}

void loadData() {
  animeList = loadTable("AnimeList.csv", "header");
  balls = new Ball[animeList.getRowCount()];

  for (int i=0; i < animeList.getRowCount(); i++) {
    TableRow row = animeList.getRow(i);
    float score = row.getFloat("score");
    String n = row.getString("title");
    balls[i] = new Ball((score-5)*25, n);
  }
}
