complete <- function(directory, id=1:332){
  files <- list.files(directory, full.name=TRUE)
  result <- data.frame(id=integer(0), nobs=integer(0))
  for(i in id){
    result[nrow(result)+1, ] <- c(i, sum(complete.cases(read.csv(files[i]))))
  }
  result
}