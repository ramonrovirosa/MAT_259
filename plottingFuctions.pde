void drawXLabels()
{
  int a=alpha_labels;
  fill(255,a);
  textFont(font_map); 
  stroke(255,a);
  textAlign(CENTER, TOP);
  
  // Use thin, gray lines to draw the grid
  stroke(255,a);
  strokeWeight(2);

  for (int row = XMIN; row <= XMAX; row++) {
    if (row % XINTERVAL == 0) {
      float x = map(row, XMIN, XMAX, PLOTX1, PLOTX2);
      textFont(font_map); 
      textAlign(CENTER, CENTER);         // Center vertically
      fill(255,a);
      text(row, x, PLOTY2 + 15,PLOTZ1);
      strokeWeight(2); 
      line(x, PLOTY2,PLOTZ1, x, PLOTY2+5,PLOTZ1);

    }
  }

}

void drawYLabels()
{
 int a=alpha_labels;
  fill(255,a);
  textFont(font_map); 
  stroke(255,a);
  strokeWeight(2); 
  for (float v = DATAMIN; v <= DATAMAX; v += YINTERVAL) {
    if (v % YINTERVAL == 0) {     // If a tick mark
      float y = map(v, DATAMAX, DATAMIN, PLOTY2, PLOTY1);  
      if (v % YINTERVAL == 0) {        // If a major tick mark
        textAlign(RIGHT, CENTER);         // Center vertically
        text(-floor(v), PLOTX1 - 10, y,PLOTZ1);
        line(PLOTX1 - 4, y, PLOTZ1, PLOTX1, y,PLOTZ1);     // Draw major tick
      } else {
       //line(PLOTX1 - 2, y, PLOTZ1, PLOTX1, y,PLOTZ1);   // Draw minor tick
      }
    }
  }
}

void drawZLabels()
{
  int a=alpha_labels;
  fill(255,a);
  textFont(font_map); 
  stroke(255,a);
  strokeWeight(2); 

  for (float v = DATAMINZ+ZINTERVAL; v <= DATAMAXZ; v += ZINTERVAL) {
    if (v % ZINTERVAL == 0) {     // If a tick mark
      float z = map(v, DATAMAXZ, DATAMINZ, PLOTZ2, PLOTZ1);  
      if (z % ZINTERVAL == 0) {        // If a major tick mark
        textAlign(RIGHT, CENTER);         // Center vertically
        text(floor(z)/10+9, PLOTX1 - 15, PLOTY1, z);
        line(PLOTX1 - 8, PLOTY1 , z, PLOTX1, PLOTY1, z);     // Draw major tick
      } 
    }
  }
}



void drawGrid()
{
  int a=alpha_grid;
  stroke(a); 
  strokeWeight(1); 
  for(int i = PLOTX1; i <= PLOTX2; i = i + gridInterval)
  {
      line(i,PLOTY1,PLOTZ1, i,PLOTY2,PLOTZ1);    
  }  
    for(int k = PLOTY1; k <= PLOTY2; k = k + gridInterval)
    {
      line(PLOTX1,k,PLOTZ1,PLOTX2,k,PLOTZ1);
    }     
}

void drawPlot()
{
  noStroke();
  //fill(93,186,255,120); 
  //fill(0,0);
  rectMode(CORNERS);
  pushMatrix(); 
  //translate(0,0,PLOTZ1);
  //rect(PLOTX1,PLOTY1,PLOTX2,PLOTY2); 
  popMatrix(); 
}

void drawAxisLabels() 
{
  int a=alpha_labels;
  fill(255,a);
  textLeading(15);
  textFont(font_map);  
  pushMatrix();
  translate(0,0,PLOTZ1);
  textAlign(CENTER, CENTER);
  // Use \n (enter/linefeed) to break the text into separate lines
  text("Longitude", (PLOTX1+PLOTX2)/2, PLOTY2+40);
  textAlign(CENTER, CENTER);
  text("Latitude", PLOTX1-60, (PLOTY1+PLOTY2)/2);
  popMatrix(); 
  //text("Hour of Day", PLOTX1-80,PLOTY1, (PLOTZ1+PLOTZ2)/2 );
  //textAlign(CENTER, CENTER);

}

void drawTitle() {
  smooth();
  int a=alpha_labels;
  fill(255,a);
  textAlign(LEFT);
  textFont(font_map);
  pushMatrix(); 
  translate(0,0,PLOTZ1);
  text("Travel Books Checked Out by Country", PLOTX1, PLOTY1 - 10);
  textAlign(RIGHT);
  text("MAT 259", PLOTX2, PLOTY1 - 10);  
  popMatrix(); 
}




