//int colorR=255,colorG=255,colorB=255;

void drawCyl(){
   for(int j=0; j<Countries.size(); j++){ 
    pushMatrix();
    translate(Countries.get(j).getLong(),-Countries.get(j).getLat(),0);
 
      //imageMode(CENTER);
      
      
      
      //noFill();
      ArrayList<String> CountriesDrawing = getWhatToDraw();
      
      int checkouts = (Countries.get(j).getCheckouts()<=800)? Countries.get(j).getCheckouts() : 800 ;
     checkouts = checkouts/2; 
     //colorR = Countries.get(j).getColorR();
     //colorG = Countries.get(j).getColorG();
     //colorB = Countries.get(j).getColorB();
     stroke( Countries.get(j).getColorR(), Countries.get(j).getColorG(),  Countries.get(j).getColorB() );
     fill(Countries.get(j).getColorR(), Countries.get(j).getColorG(),  Countries.get(j).getColorB());
     if(drawAll){
       if(Countries.get(j).getCheckouts() > 1){
          //bezier(0,0,0 , 0,0,checkouts, 122.329+Countries.get(j).getLong(), 47.6-Countries.get(j).getLat(), checkouts,  122.329+Countries.get(j).getLong(), 47.6-Countries.get(j).getLat(), 0 );
          drawCylinder( 30, 2, checkouts/2);
          textSize(6);
          textAlign(CENTER);
           pushMatrix();
          translate(0,0,0);
          rotateX(radians(180f));
          text(Countries.get(j).getNames(), 0, 0, checkouts/4); 
          popMatrix();
        }
        //println("Drawing All");
      }
     
     else if( CountriesDrawing.contains(Countries.get(j).getNames()) && Countries.get(j).getCheckouts()/2 > 1){
        //bezier(0,0,0 , 0,0,checkouts, 122.329+Countries.get(j).getLong(), 47.6-Countries.get(j).getLat(), checkouts,  122.329+Countries.get(j).getLong(), 47.6-Countries.get(j).getLat(), 0 );
        drawCylinder( 30, 2, checkouts/2);
        textSize(6);
        
        //rotateZ(PI + PI/2);
        //rotateY(3*PI/2);
        //rotateX(PI/2);
        textAlign(LEFT,CENTER);
       
          rotateY(-PI/2);
          text(Countries.get(j).getNames(), checkouts/4+6, 0, 0); 

        showCount = "Checkouts: " + Countries.get(j).getCheckouts();
     }
    imageMode(CORNER); 
    popMatrix();
   }
}


void drawCylinder( int sides, float r, float h)
{
    float angle = 360 / sides;
    float halfHeight = h / 2;

    // draw top of the tube
    beginShape();
    for (int i = 0; i < sides; i++) {
        float x = cos( radians( i * angle ) ) * r;
        float y = sin( radians( i * angle ) ) * r;
        vertex( x, y, 0);
    }
    endShape(CLOSE);

    // draw bottom of the tube
    beginShape();
    for (int i = 0; i < sides; i++) {
        float x = cos( radians( i * angle ) ) * r;
        float y = sin( radians( i * angle ) ) * r;
        vertex( x, y, halfHeight);
    }
    endShape(CLOSE);
    
    // draw sides
    beginShape(TRIANGLE_STRIP);
    for (int i = 0; i < sides + 1; i++) {
        float x = cos( radians( i * angle ) ) * r;
        float y = sin( radians( i * angle ) ) * r;
        vertex( x, y, 0);
        vertex( x, y, halfHeight);    
    }
    endShape(CLOSE);

}
