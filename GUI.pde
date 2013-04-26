GPanel pnl;
GOption Asia,Europe,NAmerica,SAmerica,Africa,Australia, MEast, CAmerica;
GToggleGroup sCountry = new GToggleGroup();
GCheckbox All,chckTitles;
ArrayList<GTextIconControl> controls = new ArrayList<GTextIconControl>();


void GUIControls(){
  G4P.registerSketch(this);
  G4P.setGlobalColorScheme(GCScheme.CYAN_SCHEME);
  createPanelElements();
  
}

void createPanelElements(){
  pnl = new GPanel(this, 10, 160, 100, 280, "Regions");
  pnl.setCollapsed(false);
  //pnl.background(100);
  
  All = new GCheckbox(this, 5,25, 66,20, "All");
  //pnl.addControl(All);
  controls.add(All);
  
  Asia = new GOption(this, 5,50, 90,25,"Asia");
  //pnl.addControl(Asia);
  controls.add(Asia);
  
  Europe = new GOption(this, 5,75, 90,25,"Europe");
  //pnl.addControl(Europe);
  controls.add(Europe);
  
  NAmerica = new GOption(this, 5,100, 90,25,"N America");
  //pnl.addControl(NAmerica);
  controls.add(NAmerica);
  
  SAmerica = new GOption(this, 5,125, 90,25,"S America");
  //pnl.addControl(SAmerica);
  controls.add(SAmerica);
  
  Africa = new GOption(this, 5,150, 90,25,"Africa");
  //pnl.addControl(Africa);
  controls.add(Africa);
  
  Australia = new GOption(this, 5,175, 90,25,"Australia");
  //pnl.addControl(Australia);
  controls.add(Australia);
  
  MEast = new GOption(this, 5,200, 90,25,"Mid East");
  //pnl.addControl(MEast);
  controls.add(MEast);
  
  CAmerica = new GOption(this, 5,225, 90,25,"Carribean");
  //pnl.addControl(MEast);
  controls.add(CAmerica);
  
  chckTitles = new GCheckbox(this, 5,250, 66,20, "Titles");
  
  sCountry.addControls(All,Asia,Europe,NAmerica,SAmerica,Africa,Australia,MEast,CAmerica);
  pnl.addControls(All,Asia,Europe,NAmerica,SAmerica,Africa,Australia,MEast,CAmerica);
  pnl.addControl(chckTitles);
}

boolean drawAll=false, drawAsia=false,drawEurope=false,drawNAmerica=false,drawSAmerica=false, drawAfrica=false, drawAustralia=false, drawMEast=false, drawCAmerica=false;
boolean drawTitles=false;

public void handleToggleControlEvents(GToggleControl option, GEvent event){
  if (option == All){
    for (GTextIconControl control : controls){
      drawAll = !drawAll;
      if(drawAll == false){
        drawAsia = false;
          drawEurope = false;
          drawNAmerica = false;
          drawSAmerica = false;
          drawAfrica=false;
          drawAustralia=false;
          drawMEast=false;
          drawCAmerica=false;
      }
      if(drawAll == true){
        drawAsia = true;
          drawEurope = true;
          drawNAmerica = true;
          drawSAmerica = true;
          drawAfrica=true;
          drawAustralia=true;
          drawMEast=true;
          drawCAmerica=true;
      }  
    }
  }
  else if (option == Asia){
    for (GTextIconControl control : controls) {
      //println("drawAsia");
      drawAll = false;
          drawAsia = true;
          drawEurope = false;
          drawNAmerica = false;
          drawSAmerica = false;
          drawAfrica=false;
          drawAustralia=false;
          drawMEast=false;
          drawCAmerica=false;
    }
  }
  else if (option == Europe){
    for (GTextIconControl control : controls) {
        drawAll = false;
          drawAsia = false;
          drawEurope = true;
          drawNAmerica = false;
          drawSAmerica = false;
          drawAfrica=false;
          drawAustralia=false;
          drawMEast=false;
          drawCAmerica=false;
    }
  }
  else if (option == NAmerica){
    for (GTextIconControl control : controls) {
        drawAll = false;
          drawAsia = false;
          drawEurope = false;
          drawNAmerica = true;
          drawSAmerica = false;
          drawAfrica=false;
          drawAustralia=false;
          drawMEast=false;
          drawCAmerica=false;
    }
  }
  else if (option == SAmerica){
    for (GTextIconControl control : controls) {
         drawAll = false;
          drawAsia = false;
          drawEurope = false;
          drawNAmerica = false;
          drawSAmerica = true;
          drawAfrica=false;
          drawAustralia=false;
          drawMEast=false;
          drawCAmerica=false;
    }
  }
  else if (option == Africa){
    for (GTextIconControl control : controls) {
        drawAll = false;
          drawAsia = false;
          drawEurope = false;
          drawNAmerica = false;
          drawSAmerica = false;
          drawAfrica=true;
          drawAustralia=false;
          drawMEast=false;
          drawCAmerica=false;
    }
  }
   else if (option == Australia){
    for (GTextIconControl control : controls) {
        drawAll = false;
          drawAsia = false;
          drawEurope = false;
          drawNAmerica = false;
          drawSAmerica = false;
          drawAfrica=false;
          drawAustralia=true;
          drawMEast=false;
          drawCAmerica=false;
    }
   }
  else if (option == MEast){
    for (GTextIconControl control : controls){
          drawAll = false;
          drawAsia = false;
          drawEurope = false;
          drawNAmerica = false;
          drawSAmerica = false;
          drawAfrica=false;
          drawAustralia=false;
          drawMEast=true;
          drawCAmerica=false;
    }
  }
  else if(option == CAmerica) {
      for (GTextIconControl control : controls){
          drawAll = false;
          drawAsia = false;
          drawEurope = false;
          drawNAmerica = false;
          drawSAmerica = false;
          drawAfrica=false;
          drawAustralia=false;
          drawMEast=false;
          drawCAmerica=true;
     }
   }
   else if(option == chckTitles){
     //for (GTextIconControl control : controls){
       drawTitles = !drawTitles;
       println(drawTitles);
     //}
   }  
}

void handlePanelEvents(GPanel panel, GEvent event){}

