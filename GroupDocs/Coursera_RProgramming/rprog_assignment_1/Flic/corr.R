# Author: FlicAnderson

getwd()
setwd("Z://CMEP/Rstats/Coursera_RProgramming/data/rprog_data_specdata/")

# TASK: Write a function that takes a directory of data files and a threshold for complete cases and calculates the correlation between sulfate and nitrate for monitor locations where the number of completely observed cases (on all variables) is greater than the threshold. The function should return a vector of correlations for the monitors that meet the threshold requirement. If no monitors meet the threshold requirement, then the function should return a numeric vector of length 0.

corr <- function(directory, threshold = 0) {
  # directory: character vector of length 1 indicating location of csv files
  # threshold: numeric vector of length 1 indicating no of complete obs on all variables; default=0
  
  datA <- complete("specdata", id=1:332)
  overThreshold <- which(datA$nobs > threshold)
  
  datafiles <- list.files(directory, full.names=TRUE)
  datafiles <- datafiles[overThreshold]
  datB <- NULL
  if(threshold <= max(datA$nobs)){
    for(i in 1:length(datafiles)){
      idCount <- datafiles[i]
      datafile <- read.csv(datafiles[i])
      datB <- c(datB, cor(datafile$sulfate, datafile$nitrate, use="complete.obs"))
    }
  } else if(threshold > max(datA$nobs)){ 
    (datB <- as.numeric(datB)) 
  }
  datB
}