row_to_keep = c()

for(row in 1:nrow(movies_genre_runtime)){
  
 Action = movies_genre_runtime[row, "Action"]
 Adventure = movies_genre_runtime[row, "Adventure"]
 Animation = movies_genre_runtime[row, "Animation"]
 Comedy = movies_genre_runtime[row, "Comedy"]
 Crime = movies_genre_runtime[row, "Crime"]
 Documentary = movies_genre_runtime[row, "Documentary"]
 Drama = movies_genre_runtime[row, "Drama"]
 Romance = movies_genre_runtime[row, "Romance"]
 Short = movies_genre_runtime[row, "Short"]
 Thriller = movies_genre_runtime[row, "Thriller"]
 
 total = Action+Adventure+Animation+Comedy+Crime+Documentary+Drama+Romance+Short+Thriller
 
 if(total == 0){
   movies_genre_runtime$row_to_keep = c(row_to_keep, FALSE)
 } else {
   movies_genre_runtime$row_to_keep = c(row_to_keep, TRUE)
 }
}


