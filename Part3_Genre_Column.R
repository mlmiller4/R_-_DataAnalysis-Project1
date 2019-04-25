dict = c()

# Create dictionary of all genres
for(row in 1:nrow(df2)){
  
  genre = df2[row, "Genre"]
  genre_parse = strsplit(genre, ", ")[[1]]
  
  for(i in 1:length(genre_parse)){
    word = genre_parse[i]
    
    if(!word %in% dict & word != 'N/A'){
      dict = c(dict, word)  
    }
  }
}

dict = sort(dict)
#************************************


# Create new columns with 1's and 0's
for(row in 1:nrow(df2)){
  
  genre = df2[row, "Genre"] 
  genre_parse = strsplit(genre, ", ")[[1]]
  
  for(i in 1:length(dict)){
    
    if(dict[i] %in% genre_parse){
      df2[row, dict[i]] = 1
    } else {
      df2[row, dict[i]] = 0
    }
  }
}

df2 <- df2[-c(6)]
