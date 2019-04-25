df2$row_to_keep = TRUE

for(row in 1:nrow(df2)){
  
  title = df2[row, "Title"]
  year = df2[row, "Year"]
  date = df2[row, "Date"]
  released = df2[row, "Released"]
  released = substring(released, 1, 4)
  released = as.numeric(as.character(released))
  

  
    if(!is.na(date) & !is.na(released) & !is.na(year)){
      
      if(abs(date-released)>10 | abs(released-year)>10 | abs(year-date)>10){
        df2[row, "row_to_keep"] = FALSE
      }
    }
  
    if(!is.na(date) & !is.na(released) & is.na(year)){
      
      if(abs(date - released) > 10){
        df2[row, "row_to_keep"] = FALSE
      }
    }
  
    if(!is.na(date) & is.na(released) & !is.na(year)){
      
      if(abs(date - year) > 10){
        df2[row, "row_to_keep"] = FALSE
      }
    }
  
    if(is.na(date) & !is.na(released) & !is.na(year)){
      
      if(abs(released - year) > 10){
        df2[row, "row_to_keep"] = FALSE
      }
    }
}

keep = as.vector(df3$row_to_keep)
df2 = df2[keep,]
df2 = df2[-c(67)]
