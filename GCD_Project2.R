### Get and Clean Data, Project 2

### data downloaded from   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## get train data
setwd("~/datasciencecoursera/GCD_Project1/UCI HAR Dataset/train")
train_y <- read.table("y_train.txt")

##  long form train_y <- read.table("~/datasciencecoursera/GCD_Project1/UCI HAR Dataset/train/y_train.txt")
train_X <- read.table("X_train.txt")
train_subject <- read.table("subject_train.txt")

TrainXY <- cbind(train_y, train_X)
TrainSXY <- cbind(train_subject, TrainXY)

### rename columns subject, activiy, Col 1 - Col 561
cn <- c('subject', 'activity', paste('Col', 1:561))
colnames(TrainSXY) <- (cn)

### get Test Data
setwd("~/datasciencecoursera/GCD_Project1/UCI HAR Dataset/test")
testy <- read.table("y_test.txt")
testx <- read.table("X_test.txt")
testsubject <- read.table("subject_test.txt")

### bind together
TestXY <- cbind(testy, testx)
TestSXY <- cbind(testsubject, TestXY)
### rename columns (names same as above)
cn <- c('subject', 'activity', paste('Col', 1:561))
colnames(TestSXY) <- (cn)

# end of Test Data collection

## now combine
TestTrainSXY <- rbind(TestSXY, TrainSXY)

OrderedTT <- TestTrainSXY[with(TestTrainSXY, order(subject)), ]

### get  column names from dataset
setwd("~/datasciencecoursera/GCD_Project1/UCI HAR Dataset")
featuresDF <- read.table("features.txt")

f2 <- as.character(featuresDF$V2)

cn2 <- c('subject', 'activity', f2)   ### create list of column names
colnames(OrderedTT) <- (cn2)              #  assign column names

### get columns that contain "mean" or "std"
fmeans <- f2[grepl("mean", f2)]
fstd <- f2[grepl("std", f2)]

##df[ , grepl( "ABC" , names( df ) ) ]
MeansDF <- OrderedTT[ , grepl( "mean" , names(OrderedTT) ) ]
StdDF <- OrderedTT[ , grepl("std", names(OrderedTT))]
StdMeanDF <- OrderedTT[ , (grepl( "mean" , names(OrderedTT) )   | grepl("std", names(OrderedTT))  )]
StdMeanDF2 <- OrderedTT[ , (grepl( "subject" , names(OrderedTT)) | grepl( "activity" , names(OrderedTT)) | grepl( "mean" , names(OrderedTT) )   | grepl("std", names(OrderedTT))) ]
### this command included subject, activity, and any columns with mean or std in them.


### replacing activities numbers with names - walking, etc.
library(plyr)
library(dplyr)
###  group by suject and activity and summarise
pWq <- StdMeanDF2 %>%
      group_by(subject, activity) %>%
      summarise_each(funs(mean))

pWq$activity2 <- mapvalues(pWq$activity,
                           from = c(1,2,3,4,5,6), 
                           to = c("Walking", "Walking Upstairs", "Walking Downstairs",
                                  "Sitting", "Standing", "Laying"))

### rearrange columns
colz <- grep("activity2", names(pWq))
pWq <- pWq[ , c(colz, (1:ncol(pWq))[-colz])]
pWq$activity <- NULL

col_idx2 <- grep("subject", names(pWq))
pWq <- pWq[ , c(col_idx2, (1:ncol(pWq))[-col_idx2])]

### change column activity2 to activity
colnames(pWq)[2] <- "activity"

### write file to working directory
write.table(pWq, file = "Tidy-Samsung", row.name=FALSE)

#### END
