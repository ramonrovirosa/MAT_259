class Country{
  String name;
  float longitude;
  float latitude;
  
  int countryCheckouts;
  int colorR,colorG,colorB;
  
  Country(String n, float lat, float lng){
    name=n;
    longitude = lng;
    latitude = lat;
    countryCheckouts = 0;
    
    Random randomGenerator = new Random();
    colorR = randomGenerator.nextInt(255);
    colorG = randomGenerator.nextInt(255);
    colorB = randomGenerator.nextInt(255);
  }
  
  ArrayList<String> titles = new ArrayList<String>();
  
  void countryItem(String title){
    titles.add(title);
  }
  
  void setCountryCheckouts(int num){countryCheckouts+=num;}
  
  int getCheckouts(){return countryCheckouts;}
  
  String getTitles(int index){return titles.get(index);}
  int getNumTitles(){return titles.size();}
  String getNames(){return name;}
  
  int getColorR(){return colorR;}
  int getColorG(){return colorG;}
  int getColorB(){return colorB;}
  
  float getLong(){return longitude;}
  float getLat(){return latitude;}
  
  boolean containsTitle(String s){ return titles.contains(s)? true : false; }

}
