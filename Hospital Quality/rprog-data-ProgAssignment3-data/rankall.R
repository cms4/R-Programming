rankall <- function(outcome, num = "best"){
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  states <- sort(unique(data$State))
  result <- data.frame(hospital=character(), state=character())
  for(each in states){
    result <- rbind(result, data.frame(hospital=rankhospital(each, outcome, num), state=each))
  }
  result
}