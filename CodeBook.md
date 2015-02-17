---
title: "CodeBook"
author: "JCFrench"
date: "Tuesday, February 17, 2015"
Course: getdata-011
CourseName: Getting and Cleaning Data
---

Each row of the tidy data set is uniquely indexed by the combination of subject 
and activity.

The UCI provided variable features include raw and filtered accelerometer and 
gyroscope signals. These signals were decompossed and processed.

Out of 561 features provided by the UCI dataset, the 79 features which 
represented mean or standard deviation estimates were selected for summation.

The remaining features have been summarized by averaging the mean and standard deviations vector from the existing UCI HAR Dataset. 

The combination of training and test data sets contain a total of 10299 
observations split over 30 test subjects and 6 named activities. Since each test
subject executed each of the 6 activities, the resulting tidy data set contains 
180 records. Each record in the tidy data set represent the average of roughly 60 observations from the test and training data sets.

Per the UCI HAR "ReadMe.txt" file, each feature is normalized and bounded 
within the range of [-1,1].

Further details on each of the Features can be found in the UCI HAR Dataset 
"features_info.txt"" file

subject
activity
tBodyAcc.mean...X               
tBodyAcc.mean...Y              
tBodyAcc.mean...Z               
tBodyAcc.std...X               
tBodyAcc.std...Y                
tBodyAcc.std...Z               
tGravityAcc.mean...X            
tGravityAcc.mean...Y           
tGravityAcc.mean...Z            
tGravityAcc.std...X            
tGravityAcc.std...Y             
tGravityAcc.std...Z            
tBodyAccJerk.mean...X           
tBodyAccJerk.mean...Y          
tBodyAccJerk.mean...Z           
tBodyAccJerk.std...X           
tBodyAccJerk.std...Y            
tBodyAccJerk.std...Z           
tBodyGyro.mean...X              
tBodyGyro.mean...Y             
tBodyGyro.mean...Z              
tBodyGyro.std...X              
tBodyGyro.std...Y               
tBodyGyro.std...Z              
tBodyGyroJerk.mean...X          
tBodyGyroJerk.mean...Y         
tBodyGyroJerk.mean...Z          
tBodyGyroJerk.std...X          
tBodyGyroJerk.std...Y           
tBodyGyroJerk.std...Z          
tBodyAccMag.mean..              
tBodyAccMag.std..              
tGravityAccMag.mean..           
tGravityAccMag.std..           
tBodyAccJerkMag.mean..          
tBodyAccJerkMag.std..          
tBodyGyroMag.mean..             
tBodyGyroMag.std..             
tBodyGyroJerkMag.mean..         
tBodyGyroJerkMag.std..         
fBodyAcc.mean...X               
fBodyAcc.mean...Y              
fBodyAcc.mean...Z               
fBodyAcc.std...X               
fBodyAcc.std...Y                
fBodyAcc.std...Z               
fBodyAcc.meanFreq...X           
fBodyAcc.meanFreq...Y          
fBodyAcc.meanFreq...Z           
fBodyAccJerk.mean...X          
fBodyAccJerk.mean...Y           
fBodyAccJerk.mean...Z          
fBodyAccJerk.std...X            
fBodyAccJerk.std...Y           
fBodyAccJerk.std...Z            
fBodyAccJerk.meanFreq...X      
fBodyAccJerk.meanFreq...Y       
fBodyAccJerk.meanFreq...Z      
fBodyGyro.mean...X              
fBodyGyro.mean...Y             
fBodyGyro.mean...Z              
fBodyGyro.std...X              
fBodyGyro.std...Y               
fBodyGyro.std...Z              
fBodyGyro.meanFreq...X          
fBodyGyro.meanFreq...Y         
fBodyGyro.meanFreq...Z          
fBodyAccMag.mean..             
fBodyAccMag.std..               
fBodyAccMag.meanFreq..         
fBodyBodyAccJerkMag.mean..      
fBodyBodyAccJerkMag.std..      
fBodyBodyAccJerkMag.meanFreq..  
fBodyBodyGyroMag.mean..        
fBodyBodyGyroMag.std..          
fBodyBodyGyroMag.meanFreq..    
fBodyBodyGyroJerkMag.mean..     
fBodyBodyGyroJerkMag.std..     
fBodyBodyGyroJerkMag.meanFreq..
