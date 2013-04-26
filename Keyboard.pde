String myText = "Type A Country/Region Name: ";
String typeCountry = "";
String showCount="Checkouts: ";

void typeCountryBox(){
  textAlign(LEFT, BOTTOM);
  int a=alpha_labels;
  fill(255,a);
  textSize(16);
  
  text(myText, 150, -10, width, height);
  text(typeCountry,340,-10,width,height);
  textAlign(LEFT, BOTTOM);
  text(showCount,550,-10,width, height);


}
 
boolean enterPressed = false; 
 
void keyPressed() {
  if (keyCode == BACKSPACE) {
    if (typeCountry.length() > 0) {
      typeCountry = typeCountry.substring(0, typeCountry.length()-1);
      enterPressed = false;
      showCount = "Checkouts: ";
    }
  } 
  else if (keyCode == DELETE) {
    typeCountry = "";
    enterPressed = false;
    showCount = "Checkouts: ";
  }
  else if(keyCode == ENTER){
    //println(typeCountry);
    //show country
    enterPressed = true;
    //getwhattodraw
    //drawMovingTitles();
  }
 
// else if(key == 'f'){
//    fade_alpha = !fade_alpha; 
//    alphavalue=150;
//    typeCountry = typeCountry + key;
//  } 
//  else if(key == 'm'){
//    view_map = !view_map; 
//    typeCountry = typeCountry + key;
//  } 
//  else if(key == 'g'){
//    view_grid = !view_grid; 
//    alphavalue=150;
//    typeCountry = typeCountry + key;
//  }
// else if(key == 'l'){
//   view_labels = !view_labels; 
//   alphavalue=150;
//   typeCountry = typeCountry + key;
// }
//  else if(key == 's'){
//   //n=0; //starts over animation at zero 
//   typeCountry = typeCountry + key;
// }
 
  else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT) {
    typeCountry = typeCountry + key;
    enterPressed = false;
    showCount = "Checkouts: ";
  }
   
   
}












