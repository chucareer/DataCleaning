## Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Feature dataset
feature <- read.table("features.txt", stringsAsFactor = F)
activityLabels <- read.table("activity_labels.txt", stringsAsFactor = F)

## Testing dataset
setwd("test")
test <- cbind(read.table("subject_test.txt", col.names = "Subject"), 
              read.table("x_test.txt", col.names = c(feature[,2])), 
              read.table("y_test.txt", col.names = "Activity"))

## Train Dataset
setwd("..")
setwd("train")
train <- cbind(read.table("subject_train.txt", col.names = "Subject"), 
              read.table("x_train.txt", col.names = c(feature[,2])), 
              read.table("y_train.txt", col.names = "Activity"))

##Stack testing dataset and train dataset
mergedFile <- rbind(test, train)

##Select the variables with mean and std
finalData <- mergedFile[, grep("mean|std|subject|activity", tolower(names(mergedFile)))]

##Clean the variable name
nameList <- gsub("\\.{2}|\\.{3}", ".", tolower(names(finalData)))
nameList <- sub("\\.$", "", nameList)
names(finalData) <- nameList

##Create the tidy dataset
tidyData <- aggregate(finalData[, c(2:87)],
                      by = list(finalData$subject, finalData$activity), FUN = "mean")
tidyData <- merge(tidyData, activityLabels, by.x = "Group.2", by.y = "V1")
names(tidyData)[c(1,2,89)] <- c("activity", "subject", "activityLabel")

##Write tidy data
setwd("..")
if(!file.exists("./tidyData")) {dir.create("./tidyData")}
setwd("tidyData")
write.csv(tidyData, file = "tidyData.csv")
