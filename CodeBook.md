---
title: "CodeBook.md"
output: html_document
---

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.



Getting and Cleaning Data Project 2
This document explains the code used to create the tidy dataset produced.

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

From the Train and Test folders, the code reads the subject, x and y data.

Train and Test data were combined.

To determine which columns of data to include, I sorted by the terms 'std' (for standard deviation) and 'mean' from 'features.txt'.

The 'Activity' column was assigned names in place of integers 1-6, and the variable names were derived from 'features.txt'.

Variables are described in more depth here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

To determine which columns of data to include, I sorted by the terms 'std' (for standard deviation) and 'mean' from 'features.txt'.

The 'Activity' column was assigned names in place of integers 1-6, and the variable names were derived from 'features.txt'.


The following is the list of variables in the tidy data set:

 [1] "subject"                         "activity"                       "tBodyAcc-mean()-X"               "tBodyAcc-mean()-Y"              
 [5] "tBodyAcc-mean()-Z"               "tBodyAcc-std()-X"                "tBodyAcc-std()-Y"                "tBodyAcc-std()-Z"               
 [9] "tGravityAcc-mean()-X"            "tGravityAcc-mean()-Y"            "tGravityAcc-mean()-Z"            "tGravityAcc-std()-X"            
[13] "tGravityAcc-std()-Y"             "tGravityAcc-std()-Z"             "tBodyAccJerk-mean()-X"           "tBodyAccJerk-mean()-Y"          
[17] "tBodyAccJerk-mean()-Z"           "tBodyAccJerk-std()-X"            "tBodyAccJerk-std()-Y"            "tBodyAccJerk-std()-Z"           
[21] "tBodyGyro-mean()-X"              "tBodyGyro-mean()-Y"              "tBodyGyro-mean()-Z"              "tBodyGyro-std()-X"              
[25] "tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"               "tBodyGyroJerk-mean()-X"          "tBodyGyroJerk-mean()-Y"         
[29] "tBodyGyroJerk-mean()-Z"          "tBodyGyroJerk-std()-X"           "tBodyGyroJerk-std()-Y"           "tBodyGyroJerk-std()-Z"          
[33] "tBodyAccMag-mean()"              "tBodyAccMag-std()"               "tGravityAccMag-mean()"           "tGravityAccMag-std()"           
[37] "tBodyAccJerkMag-mean()"          "tBodyAccJerkMag-std()"           "tBodyGyroMag-mean()"             "tBodyGyroMag-std()"             
[41] "tBodyGyroJerkMag-mean()"         "tBodyGyroJerkMag-std()"          "fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"              
[45] "fBodyAcc-mean()-Z"               "fBodyAcc-std()-X"                "fBodyAcc-std()-Y"                "fBodyAcc-std()-Z"               
[49] "fBodyAcc-meanFreq()-X"           "fBodyAcc-meanFreq()-Y"           "fBodyAcc-meanFreq()-Z"           "fBodyAccJerk-mean()-X"          
[53] "fBodyAccJerk-mean()-Y"           "fBodyAccJerk-mean()-Z"           "fBodyAccJerk-std()-X"            "fBodyAccJerk-std()-Y"           
[57] "fBodyAccJerk-std()-Z"            "fBodyAccJerk-meanFreq()-X"       "fBodyAccJerk-meanFreq()-Y"       "fBodyAccJerk-meanFreq()-Z"      
[61] "fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"              "fBodyGyro-mean()-Z"              "fBodyGyro-std()-X"              
[65] "fBodyGyro-std()-Y"               "fBodyGyro-std()-Z"               "fBodyGyro-meanFreq()-X"          "fBodyGyro-meanFreq()-Y"         
[69] "fBodyGyro-meanFreq()-Z"          "fBodyAccMag-mean()"              "fBodyAccMag-std()"               "fBodyAccMag-meanFreq()"         
[73] "fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-std()"       "fBodyBodyAccJerkMag-meanFreq()"  "fBodyBodyGyroMag-mean()"        
[77] "fBodyBodyGyroMag-std()"          "fBodyBodyGyroMag-meanFreq()"     "fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-std()"     
[81] "fBodyBodyGyroJerkMag-meanFreq()"


line	variable name							expanded names
[1] 	"subject"  
    	"activity"                       
    	"tBodyAcc-mean()-X"               		"tBody Accelerometer -mean()-X"               
    	"tBodyAcc-mean()-Y" 					"tBody Accelerometer -mean()-Y"              
 [5] 	"tBodyAcc-mean()-Z"						"tBody Accelerometer -mean()-Z"              
  				"								"tBody Accelerometer -std()-X"                
  												"tBody Accelerometer -std()-Y"                
  												"tBody Accelerometer -std()-Z"               
 [9] 											"tGravity Accelerometer -mean()-X"            
 												"tGravity Accelerometer -mean()-Y"            
 												"tGravity Accelerometer -mean()-Z"            
												"tGravity Accelerometer -std()-X"            
[13] 											"tGravity Accelerometer -std()-Y"             
												"tGravity Accelerometer -std()-Z"             
												"tBody Accelerometer Jerk -mean()-X"           
												"tBody Accelerometer Jerk -mean()-Y"          
[17]											"tBody Accelerometer Jerk -mean()-Z"           
												"tBody Accelerometer Jerk -std()-X"            
												"tBody Accelerometer Jerk -std()-Y"            
												"tBody Accelerometer Jerk -std()-Z"           
[21] 											"tBody Gyroscope -mean()-X"              
												"tBody Gyroscope -mean()-Y"              
												"tBody Gyroscope -mean()-Z"              
												"tBody Gyroscope -std()-X"              
[25] 											"tBody Gyroscope -std()-Y"               
												"tBody Gyroscope -std()-Z"               
												"tBody Gyroscope Jerk -mean()-X"          
												"tBody Gyroscope Jerk -mean()-Y"         
[29] 											"tBody Gyroscope Jerk -mean()-Z"          
												"tBody Gyroscope Jerk -std()-X"           
												"tBody Gyroscope Jerk -std()-Y"           
												"tBody Gyroscope Jerk -std()-Z"          
[33] 											"tBody Accelerometer Mag-mean()"              
												"tBody Accelerometer Mag-std()"               
												"tGravity Accelerometer Mag-mean()"           
												"tGravity Accelerometer Mag-std()"           
[37] 											"tBody Accelerometer Jerk Mag-mean()"          
												"tBody Accelerometer Jerk Mag-std()"           
												"tBody Gyroscope Mag-mean()"             
												"tBody Gyroscope Mag-std()"             
[41] 											"tBody Gyroscope Jerk Mag-mean()"         
												"tBody Gyroscope Jerk Mag-std()"          
												"fBody Accelerometer -mean()-X"               
												"fBody Accelerometer -mean()-Y"              
[45] 											"fBody Accelerometer -mean()-Z"               
												"fBody Accelerometer -std()-X"                
												"fBody Accelerometer -std()-Y"                
												"fBody Accelerometer -std()-Z"               
[49] 											"fBody Accelerometer -meanFreq()-X"           
												"fBody Accelerometer -meanFreq()-Y"           
												"fBody Accelerometer -meanFreq()-Z"           
												"fBody Accelerometer Jerk -mean()-X"          
[53] 											"fBody Accelerometer Jerk -mean()-Y"           
												"fBody Accelerometer Jerk -mean()-Z"           
												"fBody Accelerometer Jerk -std()-X"            
												"fBody Accelerometer Jerk -std()-Y"           
[57] 											"fBody Accelerometer Jerk -std()-Z"            
												"fBody Accelerometer Jerk -meanFreq()-X"       
												"fBody Accelerometer Jerk -meanFreq()-Y"       
												"fBody Accelerometer Jerk -meanFreq()-Z"      
[61] 											"fBody Gyroscope -mean()-X"              
												"fBody Gyroscope -mean()-Y"              
												"fBody Gyroscope -mean()-Z"              
												"fBody Gyroscope -std()-X"              
[65] 											"fBody Gyroscope -std()-Y"               
												"fBody Gyroscope -std()-Z"               
												"fBody Gyroscope -meanFreq()-X"          
												"fBody Gyroscope -meanFreq()-Y"         
[69] 											"fBody Gyroscope -meanFreq()-Z"          
												"fBody Accelerometer Mag-mean()"              
												"fBody Accelerometer Mag-std()"               
												"fBody Accelerometer Mag-meanFreq()"         
[73] 											"fBodyBody Accelerometer Jerk Mag-mean()"      
												"fBodyBody Accelerometer Jerk Mag-std()"       
												"fBodyBody Accelerometer Jerk Mag-meanFreq()"  
												"fBodyBody Gyroscope Mag-mean()"        
[77] 											"fBodyBody Gyroscope Mag-std()"          
												"fBodyBody Gyroscope Mag-meanFreq()"     
												"fBodyBody Gyroscope Jerk Mag-mean()"     
												"fBodyBody Gyroscope Jerk Mag-std()"     
[81] 											"fBodyBody Gyroscope Jerk Mag-meanFreq()"





