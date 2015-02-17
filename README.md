---
title: "Readme"
author: "JCFrench"
date: "Tuesday, February 17, 2015"
output: html_document
Course: getdata-011
CourseName: Getting and Cleaning Data
----

Course Project

The course project for the 011 section of Getting and Cleaning Data correlates and summarizes the data provided by the University of California Irvine's (UCI) Human Activity Recognition (HAR) Database. 

The 4 components of this analysis are as follows:

1) Readme.md - Summary of Project, components, and steps needed to reproduce work

2) CodeBook.md - Summary of the dataset provided via the "getdata-011-jcfrench.txt" file

3) run_analysis.R - R Script which may be used to reproduce the dataset provided in the "getdata-011-jcfrench.txt" file

4) getdata-011-jcfrench.txt - The resulting tidy data set which may be accessed via this url: https://s3.amazonaws.com/coursera-uploads/user-a5f2b30348f5f179fa7a3ebe/973498/asst-3/82e71380b6e711e4b0b077200b244db8.txt

To reproduce this analyis, the following preconditions must be met:
1) dplyr package must be installed
2) The UCI HAR Dataset must be unzipped into the R working directory [the function dir() must contain the folder "UCI HAR Dataset"]

Once the "run_analysis.R" script has been run, the correlated and summarized dataset will be contained in the tidy data.frame

References:

See the original UCI HAR study website for full details on the source dataset:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
