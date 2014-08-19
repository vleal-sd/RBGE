# Author: FlicAnderson

getwd()
setwd("Z://CMEP/Rstats/Coursera_RProgramming/data/rprog_data_specdata/")

# TASK: return mean of the pollutant listed in the id vector:

pollutantmean <- function(directory, pollutant, id=1:332) {
  # directory: character vector of length 1 indicating location of csv files
  # pollutant: character vector of length 1 indicating name of pollutant to calculate mean for (sulphate or nitrate)
  # id: intiger vector giving monitor ID numbers to be used
  
  
  datA <- data.frame() 
  datafiles <- list.files(directory, full.names=TRUE)
  datafiles <- datafiles[id]

    for(i in 1:length(datafiles)){
      datA <- rbind(datA, read.csv(datafiles[i])) 
    }
  print(mean(datA[[pollutant]], na.rm=TRUE))
}

