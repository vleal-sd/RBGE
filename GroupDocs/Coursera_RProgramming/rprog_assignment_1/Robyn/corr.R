corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  files<-list.files(directory, full.names = TRUE) ##creates variable files
  ##files<-c("specdata/001.csv", "specdata/002.csv", "specdata/003.csv", "specdata/004.csv", "specdata/005.csv", "specdata/006.csv")
  data<-data.frame()       ##creates empty data frame
  for(i in files){
    data<- rbind(data, read.csv(i))      ##appends data from each csv file to the data frame
  }
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  cdata <- complete("specdata", (1:length(files)))  ##uses the complete function, telling 
                                                    ##it to use the number(length of files) 
                                                    ##as the id. It loads all files from specdata!
  cdata_sub<- cdata[which(cdata[,"nobs"]>threshold),]   ##creates a subset of the complete dataset 
                                                        ##where number of complete cases is greater 
                                                        ##than the threshold. Only contains ID and nobs
  
  tdata<-data.frame()
  ##cdata_sub[,"id"]
  for (i in cdata_sub[,"id"]){                        ##loops through ids in cdata_sub
    tdata<-rbind(tdata, data[which(data[,"ID"]==i),]) ##pulls all the data from the original 
                                                      ##data table into tdata, using the ids from cdata
  }
 
  ## Return a numeric vector of correlations
  ctdata<- tdata[complete.cases(tdata),]            ##removes not complete cases
  
  cordata<-data.frame()   
  for (i in cdata_sub[,"id"]){                      ##loops through ids in cdata_sub
    cordata<-rbind(cordata, cor(ctdata[which(ctdata[,"ID"]==i), 2],ctdata[which(ctdata[,"ID"]==i), 3]))
  }     ##creates a table of the correlations between sulfates and nitrates for each id
        ##cor takes x and y where x is equal to the value of the second column(sulfate) of the current  
        ##id and y is equal to the value of the third column(nitrate) of the current id.
  if (length(cordata) == 0) {
    vector(mode="numeric")    ##looks for the special case of no result and returns 0 as a vector
    }else{
        cordata[,1]           ##otherwise it returns the first column (correlations). 
  }
 
  
}
