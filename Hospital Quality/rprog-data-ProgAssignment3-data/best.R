best <- function(state, outcome){
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  prefix <- c("Hospital", "30", "Day", "Death.", "Mortality.", "Rates", "from")
  outcome <- unlist(strsplit(outcome, " "))
  outcome <- paste(toupper(substring(outcome, 1, 1)), substring(outcome, 2), sep="", collapse=".")
  outcome <- paste(c(prefix, outcome), collapse=".")
  if(!(state %in% data$State)){
    stop("invalid state")
  }
  if(!(outcome %in% colnames(data))){
    stop("invalid outcome")
  }
  subData <- data[data$State==state, c("Hospital.Name", outcome)]
  subData[, 2] <- as.numeric(subData[, 2])
  subData <- subData[order(subData[, 2], subData[, 1]), ]
  subData[1, 1]
}