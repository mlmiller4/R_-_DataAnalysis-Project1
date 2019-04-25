for(row in 1:nrow(df2)){
  
 awards = df2[row, "Awards"]
 awards_parse = strsplit(awards, " ")[[1]]
 wins_num = 0
 noms_num = 0
 
 if(awards == 'N/A'){
    df2[row, "Wins"] = 0
    df2[row, "Nominations"] = 0
 } else {
 
   for(i in 1:length(awards_parse)){
     word = awards_parse[i]
     
     if(grepl("win", word)){
       wins_num =  wins_num + as.numeric(as.character(awards_parse[i-1]))
     }
     
     if(grepl("nomination", word)){
       noms_num = noms_num + as.numeric(as.character(awards_parse[i-1]))
     }
     
     if(grepl("Won", word) | grepl("won", word)){
       wins_num = wins_num + as.numeric(as.character(awards_parse[i+1]))
     }
     
     if(grepl("Nominated", word) & grepl("for", awards_parse[i+1])){
       noms_num = noms_num + as.numeric(as.character(awards_parse[i+2]))
     }
   }
   
   df2[row, "Wins"] = wins_num
   df2[row, "Nominations"] = noms_num
 }
}