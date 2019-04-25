for(row in 1:nrow(df2)){
  
 year = df2[row, "Year"]
 decade = 0
 
 if(year > 1880 & year < 1890){
   decade = 1880
 } else if (year >= 1890 & year < 1900){
   decade = 1890
 } else if (year >= 1900 & year < 1910){
   decade = 1900
 } else if (year >= 1910 & year < 1920){
   decade = 1910
 } else if (year >= 1920 & year < 1930){
   decade = 1920
 } else if (year >= 1930 & year < 1940){
   decade = 1930
 } else if (year >= 1940 & year < 1950){
   decade = 1940
 } else if (year >= 1950 & year < 1960){
   decade = 1950
 } else if (year >= 1960 & year < 1970){
   decade = 1960
 } else if (year >= 1970 & year < 1980){
   decade = 1970
 } else if (year >= 1980 & year < 1990){
   decade = 1980
 } else if (year >= 1990 & year < 2000){
   decade = 1990
 } else if (year >= 2000 & year < 2010){
   decade = 2000
 } else if (year >= 2010){
   decade = 2010
 }
  
 df2[row, "Decade"] = as.character(as.numeric(decade))
   
}