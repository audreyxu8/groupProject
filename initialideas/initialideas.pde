// HHaiiiiiiii <3 
////aljhfdsalk;hga;skhdjgas;h

Table animeList; 

  animeList = loadTable("AnimeList.csv", "header");
 
    //for (int i = 0; i < animeList.getRowCount(); i++){

    TableRow row = animeList.getRow(50);
    //float id = row.getInt("animeID");
    String n = row.getString("title");
    float score = row.getFloat("score");
    float episodes = row.getInt("episodes");
    String studio = row.getString("studio");
    println(score);
    
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
