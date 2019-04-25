for(row in 1:nrow(df2)){
  rt = df2[row, "Runtime"]
  rt_parse = strsplit(rt, " ")[[1]]
  rt_numeric = 0
  
  if(rt_parse[1] == 'N/A'){
    rt_numeric = NA
  } else if (rt_parse[2] == 'min'){
    rt_numeric = as.numeric(as.character(rt_parse[1]))
  } else if (rt_parse[2] == 'h' & length(rt_parse) == 2){
    rt_numeric = 60 * as.numeric(as.character(rt_parse[1]))
  } else if (rt_parse[2] == 'h' & !is.null(rt_parse[3])){
    rt_numeric = 60 * as.numeric(as.character(rt_parse[1])) + as.numeric(as.character(rt_parse[3]))
  }
  
  #df2[row, "Runtime"] = rt_numeric
  df2[row, "runtime_numeric"] = rt_numeric
}

df2$Runtime = df2$runtime_numeric
df2 = df2[-40]





