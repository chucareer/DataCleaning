Getting and Cleaning Data
============

The project is to demonstrate how to collect, work with and clean a dataset. The goal is to prepare tidy data that can be used for later analysis. 

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data set also was available from the below link.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The R code called run_analysis.R that does the following:

    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement. 
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names. 
    5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
    
The R code is assuming the current working environment under "UCI HAR Dataset" folder as the file was extracted. 




