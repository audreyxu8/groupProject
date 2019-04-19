// HHaiiiiiiii <3 
////aljhfdsalk;hga;skhdjgas;h
Table AnimeList; 
//animeBubbles [] bubbles;

void setup()
{
  AnimeList = loadTable("AnimeList.csv", "header");
 
   size(700,760);
   loadData();
    //for (int i = 0; i < animeList.getRowCount(); i++){

    TableRow row = animeList.getRow(50);
    //float id = row.getInt("animeID");
    String n = row.getString("title");
    float score = row.getFloat("score");
    float episodes = row.getInt("episodes");
    String studio = row.getString("studio");
    println(score);
}
    
//---------------------------------BUBBLES:

void draw(){
 background(19,31,31);
 for(int i = 0; i < bubbles.length; i++){
  bubbles[i].display();
  bubbles[i].rollover(mouseX,mouseY);
 }
 
void loadData(){
   animeBubbles = new Bubbles[table.getRowCount()];

for(int i = 0; i < table.getRowCount(); i ++){
  TableRow row = table.getRowCount(i);
  
  //give rows of all of the table
  float x = row.getInt("x");
  float y = row.getInt("y");
  float d = row.getFloat("diameter");
  String n = row.getString("name");
  
  animeBubbles[i] = new Bubbles(episodes,score,diameter,name);
  }
}

void mousePressed(){
 
  TableRow row = table.addRow();
  row.setfloat("x", mouseX);
  row.setfloat("y",mouseY);
  row.setfloat("diameter",random(40,80));
  row.setString("name","newAnime");
  if(table.getRowCount() > 10){
   table.removeRow(0);
  }
  
  saveTable(table, "AnimeList.csv");
  loadData();
}
  

//---------------------------------------------
//}

//float rank = row.getInt("rank");


//void setup() {
//  size(640, 360);
//  noStroke();
//  noLoop();  // Run once and stop
//}

//void draw() {
//  background(100);
//  pieChart(300, angles);
//}

//void pieChart(float diameter, int[] data) {
//  float lastAngle = 0;
//  for (int i = 0; i < data.length; i++) {
//    float gray = map(i, 0, data.length, 0, 255);
//    fill(gray);
//    arc(width/2, height/2, diameter, diameter, lastAngle, lastAngle+radians(data[i]));
//    lastAngle += radians(data[i]);
//  }
//}
