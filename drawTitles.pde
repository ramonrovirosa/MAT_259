Random randomGenerator = new Random();
GTextArea titlesArea;

void setupTitlesArea(){
  //titlesArea = new GTextArea(this, 660, 170, 230, 300, G4P.SCROLLBARS_BOTH);  
}


void drawMovingTitles(){
  ArrayList<String> drawing = getWhatToDraw();
  //println(drawing);
  String titles= "";
  int spacing = 0;
  int addSpace=0;
  for(int j=0; j<Countries.size(); j++){
    if( drawing.contains(Countries.get(j).getNames()) && Countries.get(j).getCheckouts() > 1){
      //println("In for loop");
      int numBooks=(Countries.get(j).getNumTitles() <= 100)? Countries.get(j).getNumTitles() : 100  ;
      //println(numBooks);
      for(int k=0;k<numBooks;k++){
        textAlign(LEFT);
        //textFont(font_sliders);
        textSize(12);
        if(Countries.get(j).getTitles(k).length() < 30 && (spacing <= 240) ){
          addSpace++;
          spacing +=16;
          titles = "\n"+Countries.get(j).getTitles(k);
          //int spac = (addSpace%2== 0)? spacing : spacing * -1;
          text(titles, 700, 155+spacing, 20);
          //titlesArea.setText(titles, 300);   
          
        } 
          //delay(100);
        
      }
    }
    
  }

}

public void handleTextEvents(GEditableTextControl textarea, GEvent event) {
  println(event);
}
