import de.bezier.data.sql.*;
MySQL msql;


void saveSqlQuery(String theMsqlQuery){

   String[] textArray = new String[1];
   
   // connecting to the SPL database
   msql = new MySQL( this, "tango.mat.ucsb.edu", "spl0", "mat259", "V1sual1zat1on" ); //host, database, user, password
   if ( msql.connect() ){ 
     //String TheQuery=theMsqlQuery;
     println(theMsqlQuery);
     msql.query( theMsqlQuery);
     //textArray[0] = TheQuery;
     while( msql.next() ){
       //always use msql.getString instead of getInt or getFloat, because we're just saving this to a text file.  
       //We'll cast them as floats or ints later when we import it into our actual visualization. 
       textArray = append(textArray, msql.getString(1)+ "," + msql.getString(2) ); //separate each column by the "^^" delimiter so that we can parse the file later on.  
     }     
   }
   
   else
   {
   println(" connection failed !");
   }
   //println("done");
   saveStrings("./data/savedData.txt", textArray);
}

void loadData(String filePath){

  String savedData[] = loadStrings(filePath);
  //println("QUERY: " + savedData[0]);
  for (int i=1; i < savedData.length; i++) { //for the number of titles

    String temp[] = split(savedData[i], "\n");
    String temp2[] = split(temp[0], ",");
    //println(temp2[0]);
    
    for(int j=0;j<Countries.size();j++){
       //if the country name is in the title
       if(temp2[0].indexOf( Countries.get(j).getNames() ) >= 0){
         //if(! Countries.get(j).containsTitle(temp2[0]) ){
           Countries.get(j).countryItem(temp2[0]);
           //println(temp[0]);
         //}
         Countries.get(j).setCountryCheckouts(Integer.parseInt(temp2[1]));
       }
    }          
 }
     //for(int j=0;j<Countries.size();j++){
        //println(Countries.get(j).getNames() + " : " + Countries.get(j).getCheckouts() );  
     //}
     println("Done Loading");

}
