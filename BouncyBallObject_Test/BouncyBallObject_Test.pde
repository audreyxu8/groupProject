//**bugs: the bubbles get stuck in corners and sometimes to each other
//if you don't want the bubbles to move take out speed ---> but they get spaced out weirdly (together in groups)
//need to figure out how to make bubbles the size of the score, add images to each bubble, click on the bubble to give info about the anime, add some audio(??) 
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

int numBounce = 10;
Ball [] balls;
Table animeList;

void setup(){
 background(19,31,31);
 size(1000,1000);
 noStroke();
 loadData();
   
 }


void draw(){
  background(0);
  for (int i = 0; i < balls.length; i++){
    balls[i].display();
    balls[i].rollover(mouseX, mouseY);
  }
  
  textAlign(LEFT);
  fill(0);
  
 //for each bouncey ball in the bounceyBall list....
 //for(Ball b: bounceyBall){
 //  b.checkBoundaries();
 //  b.checkCollision(bounceyBall);
 //  b.move();
 //  b.display();
 //}
  
}

void loadData(){
  animeList = loadTable("AnimeList.csv", "header");
  balls = new Ball[animeList.getRowCount()];
  
  for (int i=0; i < animeList.getRowCount(); i++){
    TableRow row = animeList.getRow(i);
    float score = row.getFloat("score");
    String n = row.getString("title");
    balls[i] = new Ball(score*10,n);
  }
}
