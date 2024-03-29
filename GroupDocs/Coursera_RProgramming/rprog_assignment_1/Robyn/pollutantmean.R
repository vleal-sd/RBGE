pollutantmean <- function(directory, pollutant, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
  
  files<-list.files(directory, full.names = TRUE) ##creates variable files
  data<-data.frame()       ##creates empty data frame
  for(i in id){
    data<- rbind(data, read.csv(files[i]))      ##appends data from each csv file to the data frame
  }

        ## 'pollutant' is a character vector of length 1 indicating
        ## the name of the pollutant for which we will calculate the
        ## mean; either "sulfate" or "nitrate".
  
  mean(data[,pollutant], na.rm=TRUE)

        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used

        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)
  
  
}

