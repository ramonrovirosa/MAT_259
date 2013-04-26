ArrayList<String> getWhatToDraw(){
  ArrayList<String> countryList = new ArrayList<String>();
  if(typeCountry.equals("Asia")  && enterPressed ){
    countryList.add("China");
    countryList.add("India");
    countryList.add("Indonesia");
    countryList.add("Japan");
    countryList.add("North Korea");
    countryList.add("South Korea");
    countryList.add("Laos");
    countryList.add("Macau");
    countryList.add("Malaysia");
    countryList.add("Mongolia");
    countryList.add("Nepel");
    countryList.add("Taiwan");
    countryList.add("Russia");
    countryList.add("Thailand");
    countryList.add("Vietnam");
    countryList.add("Yemen");
    countryList.add("Pakistan");
    countryList.add("Philippines");
    
    countryList.add("Bhutan");
    countryList.add("Hong Kong");
    countryList.add("Cambodia");
    countryList.add("Bangladesh");
    countryList.add("Myanmar");
    
    countryList.add("Kazakhstan");
    countryList.add("Uzbekistan");
    countryList.add("Turkmenistan");
    countryList.add("Bangladesh");
    countryList.add("Bhutan");
    
  }
  
  else if(typeCountry.equals("Europe")  && enterPressed){
    countryList.add("Russia");
    countryList.add("Ukraine");
    countryList.add("France");
    countryList.add("Spain");
    countryList.add("Sweden");
    countryList.add("Norway");
    countryList.add("Germany");
    countryList.add("Finland"); 
    countryList.add("Poland");
    countryList.add("Italy");
    countryList.add("United Kindgom");
    countryList.add("Romania");
     countryList.add("Belarus"); 
     countryList.add("Greece");
     countryList.add("Bulgaria");
     countryList.add("Iceland");
     countryList.add("Hungary");
     countryList.add("Portugal");
     countryList.add("Serbia");
     countryList.add("Ireland");
     countryList.add("Austria");
     countryList.add("Czech Republic");
     //countryList.add("Georgia");
     countryList.add("Lithuania");
     countryList.add("Latvia");
     countryList.add("Croatia");
     countryList.add("Slovakia");
     countryList.add("Estonia");
     countryList.add("Denmark");
     countryList.add("Netherlands");
     countryList.add("Switzerland");
     countryList.add("Moldova");
     countryList.add("Belgium");
     countryList.add("Albania");
     countryList.add("Macedonia");
     countryList.add("Turkey");
     countryList.add("Slovenia");
     countryList.add("Montenegro");
     countryList.add("Cyprus");
     countryList.add("Luxembourg");
     countryList.add("Malta");
     countryList.add("Vatican City");
  }
  
  else if(typeCountry.equals("North America")  && enterPressed){
    countryList.add("United States");
    countryList.add("Mexico");
    countryList.add("Canada");
    countryList.add("Nicaragua");
    countryList.add("Honduras");
    countryList.add("Costa Rica");
    countryList.add("Panama");
    countryList.add("El Salvador");
  }
  
  else if(typeCountry.equals("South America")  && enterPressed ){
    countryList.add("Brazil");
    countryList.add("Columbia");
    countryList.add("Argentina");
    countryList.add("Peru");
    countryList.add("Venezuela");
    countryList.add("Chile");
    countryList.add("Ecuador");
    countryList.add("Bolivia");
    countryList.add("Paraguay");
    countryList.add("Uruguay");
    countryList.add("Guyana");
    countryList.add("Suriname");
  }
  
  else if(typeCountry.equals("Caribbean")  && enterPressed ){
    countryList.add("Cuba");
    countryList.add("Dominican Republic");
    countryList.add("Puerto Rico");
    countryList.add("Jamaica");
    countryList.add("Trinidad and Tabago");
    countryList.add("Guadeloupe");
    countryList.add("Martinique");
    countryList.add("Bahamas");
    countryList.add("Barbados");
    countryList.add("Saint Lucia");
    countryList.add("Grenada");
    countryList.add("Aruba");
    countryList.add("Virgin Islands");
  }
  
  else if(typeCountry.equals("Africa")  && enterPressed ){
    countryList.add("South Africa");
    countryList.add("Egypt");
    countryList.add("Nigeria");
    countryList.add("Algeria");
    countryList.add("Morocco");
    countryList.add("Angola");
    countryList.add("Tunisia");
    countryList.add("Ethiopia"); 
    countryList.add("Sudan");
    countryList.add("Ghana");
    countryList.add("Kenya");
    countryList.add("Tanzania");
     countryList.add("Cameroon"); 
     countryList.add("Uganada");
     countryList.add("Libya");
     countryList.add("Ivory Coast");
     countryList.add("Bostwana");
     countryList.add("Guinea");
     countryList.add("Congo");
     countryList.add("Senegal");
     countryList.add("Gabon");
     countryList.add("Mozambique");
     countryList.add("Burkina Faso");
     countryList.add("Zambia");
     countryList.add("Madagascar");
     countryList.add("Chad");
     countryList.add("Mauritius");
     countryList.add("Mali");
     countryList.add("Nambia");
     countryList.add("Benin");
     countryList.add("Malawi");
     countryList.add("Rwanda");
     countryList.add("Niger");
     countryList.add("Guinea");
     countryList.add("Mauritania");
     countryList.add("Togo");
     countryList.add("Swaziland");
     countryList.add("Zimbabwe");
     countryList.add("Burundi");
     countryList.add("Sierra Leone");
     countryList.add("Erirea");
     countryList.add("Gambia City");
     countryList.add("Liberia");
      countryList.add("Comoros");
  
  }
  
  else if(typeCountry.equals("Australia")  && enterPressed){
    countryList.add("Australia");
     countryList.add("Indonesia");
     countryList.add("New Zealand");
     countryList.add("Fiji");
     countryList.add("New Guinea");
     countryList.add("Guam");
     countryList.add("Samoa");
    countryList.add("Tonga");    
  }
  
  else if(typeCountry.equals("Middle East") && enterPressed ){
     countryList.add("Egypt");
     countryList.add("Turkey");
     countryList.add("Iran");
     countryList.add("Iraq");
     countryList.add("Saudi Arabia");
     countryList.add("Yemen");
     countryList.add("Syria");
     countryList.add("Israel");   
     countryList.add("Jordan");
     countryList.add("United Arab Emirates");
     countryList.add("Lebanon"); 
     countryList.add("Oman");
     countryList.add("Kuwait");
     countryList.add("Qatar");
     countryList.add("Bahrain");
     countryList.add("Cyprus");
  }
  
  else if( (typeCountry.equals("All") || typeCountry.equals("World")) && enterPressed  ){
    for(int i=0;i<Countries.size();i++){
      countryList.add( Countries.get(i).getNames() );
    }
  }
  
  else if(enterPressed){
    countryList.add(typeCountry);
  }

  return countryList;

}
