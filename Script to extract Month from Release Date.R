for(row in 1:nrow(df3)){
  
  released = df3[row, "Released"]
  released = substring(released, 6, 7)
  released = as.numeric(as.character(released))
   
  if(!is.na(released)){
    
    if(released == 1){
      df3[row, "ReleaseMOnth"] = "January"
    } else if(released == 2){
      df3[row, "ReleaseMOnth"] = "February"
    } else if(released == 3){
      df3[row, "ReleaseMOnth"] = "March"
    } else if(released == 4){
      df3[row, "ReleaseMOnth"] = "April"
    } else if(released == 5){
      df3[row, "ReleaseMOnth"] = "May"
    } else if(released == 6){
      df3[row, "ReleaseMOnth"] = "June"
    } else if(released == 7){
      df3[row, "ReleaseMOnth"] = "July"
    } else if(released == 8){
      df3[row, "ReleaseMOnth"] = "August"
    } else if(released == 9){
      df3[row, "ReleaseMOnth"] = "September"
    } else if(released == 10){
      df3[row, "ReleaseMOnth"] = "October"
    } else if(released == 11){
      df3[row, "ReleaseMOnth"] = "November"
    } else if(released == 12){
      df3[row, "ReleaseMOnth"] = "December"
    }
  }
  
}