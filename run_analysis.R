###run_analysis.R
###Author: JCFrench
###Date: 02/17/2015

###This run_analysis.R script answers the Coursera/John Hopkins "GetData-011"
###course project.

###run_analysis.R reads the UCI HAR Dataset files, combines them into correlated
###datasets, and then summarizes all mean and standard deviation features for
###each subject and activity.

### The Getting & Cleaning Data Class assignment called out 5 specific data
### processing goals. They are listed here in order for clarity, but are 
### acheived incrementally in the data munging process as convienent:
### Goal 1: Merge Test and Training sets to create one data set
### Goal 2: Select only features with the text "mean" or "std" in the col name
### Goal 3: Use Descriptive activity names
### Goal 4: Label data set with descriptive variable names
### Goal 5: Create tidy data set with the average of each variable for each 
###         activity and each subject.


### Goal 3: Use Descriptive activity names
### The file "activity_labels.txt" provides a numbered list of activities.
### Since the file is already ordered correctly, only the labels need be loaded.
actlab <- read.table("./UCI HAR Dataset/activity_labels.txt", 
                     colClasses=c("NULL","character"))
### These activity labels will be applied to the activities contained in the 
### Y_test.txt & Y_train.txt files

### Goal 4: Label data set with descriptive variable names
### The file "features.txt" provides a numbered list of column names.
### Read the feature.txt file.
features <- read.table("./UCI HAR Dataset/features.txt", sep=" ", 
###                       as.is=T,
                       colClasses=c("NULL","character"),
                       col.names=c("NULL","feature"))
### The resulting column names need to be adjusted to remove illegal characters.
features$feature <- make.names(features$feature)
### These feature names will be applied to the variables contained in the 
### X_test.txt & X_train.txt files


### Goal 1: Merge Test and Training sets to create one data set
### Interpretation: Correlate Subjects, Activities, and Features for the Test 
### & Training data sets. This will involve reading appropriate files,
### performing appropriate adjustments, and then binding the columns together. 
### Once the test & train sets have been assembled, the two sets of records 
### can be concatenated with a row bind.

### Step 1) Read the test data files.
### Step 1a) Get Test Subjects
stest <- read.table("./UCI HAR Dataset/test/subject_test.txt",
                    col.names = "subject")
### Step 1b) Get Test Activities (Outcomes)
ytest <- read.table("./UCI HAR Dataset/test/Y_test.txt",
                    col.names = "activity")
### Goal 3: Use Descriptive activity names
### Convert Activity Codes into activity labels by replacing codes with 
### descriptive labels
atest <- lapply(ytest,function(x)actlab[x,1])
### Step 1c) Get Test Data Features
xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
### Goal 4: Label data set with descriptive variable names
### Apply labels to feature columns
names(xtest) <- features$feature
### Goal 2: Select only features with the text "mean" or "std" in the col name
### Use regular expressions to select features which contain "mean" or "std"
ctest <- xtest[,sort(c(grep("mean",features$feature),
                       grep("std",features$feature)))]
### bind the columns for subjects, activities, and features into a data.frame
test <- cbind(stest,atest,ctest)

### Repeat all of the same steps to pull together the training data
strain <- read.table("./UCI HAR Dataset/train/subject_train.txt",
                     col.names = "subject")
ytrain <- read.table("./UCI HAR Dataset/train/Y_train.txt",
                     col.names = "activity")
atrain <- lapply(ytrain,function(x)actlab[x,1])
xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
names(xtrain) <- features$feature
ctrain <- xtrain[,sort(c(grep("mean",features$feature),
                         grep("std",features$feature)))]
train <- cbind(strain,atrain,ctrain)

### Use dplyr to perform summarised analysis.
library(dplyr)

### Goal 5: Create tidy data set with the average of each variable for each 
### activity and each subject.

### Explanation of dplyr pipeline:
### Step 1) Bind the test and train data sets by appending the rows together.
### Step 2) Convert the data.frame into a dplyr table.dataframe
### Step 3) Group the tbl_df by subject and activity.
### Step 4) Summarize all other fields by computing the means for each 
### variable within each group.
tidy <- tbl_df(rbind(train,test)) %>%
        group_by(subject,activity)%>%
        summarise_each(funs(mean))

### The following statement is not part of the assignment goals. 
### Instead, it writes the required output data file for submission.
### write.table(tidy,"getdata-011-jcfrench.txt",row.names=F)
