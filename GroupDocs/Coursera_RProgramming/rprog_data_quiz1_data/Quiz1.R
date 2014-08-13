# RProgramming Quiz 1


#Q1 The R language is a dialect of which of the following programming languages?
#S

#Q2 The definition of free software consists of four freedoms (freedoms 0 through 3). Which of the following is NOT one of the freedoms that are part of the definition?
#The freedom to prevent users from using the software for undesirable purposes.

#Q3 In R the following are all atomic data types except
# complex

#Q4 If I execute the expression x <- 4 in R, what is the class of the object `x' as determined by the `class()' function?
# numeric

#Q5 What is the class of the object defined by x <- c(4, TRUE)?
# numeric

#Q6 If I have two vectors x <- c(1,3, 5) and y <- c(3, 2, 10), what is produced by the expression cbind(x, y)?
# a matrix with 2 columns and 3 rows

#Q7 A key property of vectors in R is that
# elements of the vector must all be of the same class

#Q8 Suppose I have a list defined as x <- list(2, "a", "b", TRUE). What does x[[1]] give me?
# a numeric vector of length 1

#Q9 Suppose I have a vector x <- 1:4 and a vector y <- 2. What is produced by the expression x + y?
# a numeric vector with elements 3, 4, 5, 6

#Q10 Suppose I have a vector x <- c(17, 14, 4, 5, 13, 12, 10) and I want to set all elements of this vector that are greater than 10 to be equal to 4. What R code achieves this?
#x[x > 10] <- 4

#Q11 In the dataset provided for this Quiz, what are the column names of the dataset?
datA <- read.csv(file="hw1_data.csv", header=TRUE)
names(datA)

#Q12 Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
datA[1:2,]

#Q13 How many observations (i.e. rows) are in this data frame?
nrow(datA)

#Q14 Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
datA[c(nrow(datA)-1, nrow(datA)),]


#Q15 What is the value of Ozone in the 47th row?
datA$Ozone[47]

#Q16 How many missing values are in the Ozone column of this data frame?
length(which(is.na(datA$Ozone)==TRUE))

#Q17 What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation
mean(datA$Ozone, na.rm=TRUE)

#Q18 Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
mean(datA[which(datA$Ozone>31 & datA$Temp >90),]$Solar.R)

#Q19 What is the mean of "Temp" when "Month" is equal to 6? 
mean(datA[which(datA$Month==6),]$Temp)

#Q20 What was the maximum ozone value in the month of May (i.e. Month = 5)?
max(datA[which(datA$Month==5),]$Ozone, na.rm=TRUE)



