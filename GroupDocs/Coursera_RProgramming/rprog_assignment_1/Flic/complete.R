# Author: FlicAnderson

getwd()
setwd("Z://CMEP/Rstats/Coursera_RProgramming/data/rprog_data_specdata/")

# TASK: read directory of files, report number of completely observed cases per datafile (return dataframe - [,1] is name of file, [,2] is number of complete cases:

complete <- function(directory, id=1:332){
  # directory: character vector of length 1 indicating location of csv files
  # id: intiger vector giving monitor ID numbers to be used

  datA <- data.frame()
  datafiles <- list.files(directory, full.names=TRUE)
  datafiles <- datafiles[id]
  for(i in 1:length(datafiles)){
    idCount <- id[i]
    nobs <- sum(complete.cases(read.csv(datafiles[i])))
    #datA <- rbind(datA, data.frame(id = id <- id[i], nobs = nobs <- sum(complete.cases(read.csv(datafiles[i])))))
    datA <- rbind(datA, data.frame(id=idCount, nobs))
  }  
  datA
}


