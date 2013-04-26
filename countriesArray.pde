ArrayList<Country>Countries = new ArrayList<Country>();

String theQuery = "SELECT title as Title, Count(IF(subj like '%travel%', 1, NULL)) as travelCount FROM inraw where subj like '%travel%' GROUP BY title Having Count(IF(subj like '%travel%', 1, NULL)) > 1;";
int totalNumberCountries = 0;

//void setup(){
//
//  //saveSqlQuery(theQuery);
////  getCountryLatLong();
////  loadData("./data/savedData.txt");
//}

//load CSV file
void getCountryLatLong(){
  String[] lines = loadStrings("./data/geodata.csv");
  for(int indx = 50; indx <= 305; indx++){
      String[] pieces = split(lines[indx], ',');
      if (pieces.length == 3) {
        String placename=pieces[0];
        float latval = float(pieces[1]);
        float lngval = float(pieces[2]);
        //geolist[indx]=placename;
        
        Country c = new Country(placename,latval,lngval);
        Countries.add(c);
        totalNumberCountries++;
        }
    } 
}
