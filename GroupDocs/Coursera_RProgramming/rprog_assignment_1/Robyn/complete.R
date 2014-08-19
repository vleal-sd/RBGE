complete <- function(directory, id = 1:332) {
 
files<-list.files(directory, full.names = TRUE) ##creates variable files
data<-data.frame()       ##creates empty data frame
for(i in id){
  data<- rbind(data, read.csv(files[i]))      ##appends data from each csv file to the data frame
}
nobs<-data.frame()    ##creates an empty dataframe

for (i in id){
  data_subset<- data[which(data[,"ID"]==i),]            ##creating variable data-subset, 
                                                        ##where ID equals i.
  len<- length(data_subset[complete.cases(data_subset),"ID"])   ##creates variable len. Subsets all 
                                                                ##complete cases for where ID == i 
                                                                ##Sets len to the length of that subset.
                                                                ##ie. the number of complete cases
  nobs<-rbind(nobs, c(i,len))                                   ##appends the ID and length to 
                                                                ##the dataframe nobs

}
names(nobs)<-c("id", "nobs")          ##names the columns of the data frame
nobs
}



