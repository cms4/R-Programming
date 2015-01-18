corr <- function(directory, threshold=0){
  files <- list.files(directory, full.name=TRUE)
  result <- numeric(0)
  for(i in 1:length(files)){
    cur <- sum(complete.cases(read.csv(files[i])))
    if(cur > threshold){
      dat <- data.frame()
      dat <- rbind(dat, read.csv(files[i]))
      dat <- dat[complete.cases(dat), ]
      result <- c(result, cor(dat[, "nitrate"], dat[, "sulfate"]))
    }
  }
  options(digits=4)
  round(result, 5)
}