# README for run_analysis.R

## Overview
This markdown document describes the function the R script "run_analysis.R" prepared as the course project for "Getting and Cleaning Data". The "run_analysis.R" script is only script used in for the project and is henceforth referred to as the script.
The script summarizes wearable computing data collected from the accelerometers from Samsung Galaxy S smartphones.
The script does the following:  
1. Merges the training and the test sets to create one data set.  
2. Extracts only the measurements on the mean and standard deviation for each measurement.  
3.Uses descriptive activity names to name the activities in the data set.  
4. Appropriately labels the data set with descriptive variable names.  
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Working directory & file requirements
The folder "UCI HAR Dataset" must be a subdirectory of the working directory. The subdirectory "UCI HAR Dataset" must contain the following files:
* activity_labels.txt
* features.txt
and subdirectories:
* .\UCI HAR Dataset\test
* .\UCI HAR Dataset\train
The folder ".\UCI HAR Dataset\test" must contain the following files:
* X_test.txt
* y_test.txt
* subject_test.txt
The folder ".\UCI HAR Dataset\train" must contain the following files:
* X_train.txt
* y_train.txt
* subject_train.txt  

So long as all these requirements are met, run each line in the script!


## Packages required
One package needs to be installed in addition to the R base: reshape2


## Code description
This section describes each chunk of code in the script.

###### Read necessary data files
```{r}
## read all data files
colheader <- read.table("./UCI HAR Datasetfeatures.txt") # contains colnames for data_test & data_train
activity_labels <- read.table("./UCI HAR Datasetactivity_labels.txt", header=FALSE)
data_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)
activity_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE, sep=" ")
person_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)
data_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
activity_train <- read.table("./train/y_train.txt", header=FALSE, sep=" ")
person_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)
```

###### Set column names (Column names for data of interest (data.frames: data_test & data_train) are found in features.txt.)
```{r}
## set column names
names(data_test) <- colheader[,2]
names(data_train)<- names(data_test)
```

###### Append activity and subject labels to data of interest as columns names ..$activity & ..$subject
```{r}
## append activity & subject columns to data
data_test$activity <- activity_test[,1]
data_test$subject <- person_test[,1]
data_train$activity <- activity_train[,1]
data_train$subject <- person_train[,1]
```

###### 1. Merge the training and the test sets (data_test & data_train) to create one data set (data.frame: merged).
```{r}
# merge test and train data
merged <- rbind(data_test,data_train)
```

###### 2. Extracts only the measurements on the mean and standard deviation for each measurement (character vector: meanstd). These contain the character strings "mean()" and "std()".
```{r}
meanstd <- grep("^subject$|^activity$|(mean\\(\\))|(std\\(\\))", colnames(merged),value=TRUE) 
merged <- merged[,meanstd]
```

###### 3. Uses descriptive activity names to name the activities in the data set. These are found in activity_labels.txt (data.frame: activity_labels)
```{r}
for (i in seq_along(merged$activity)) {
  merged$activity[i] <- as.character(activity_labels[merged$activity[i],2])
}
```

###### 4. Appropriately labels the data set (data.frame: merged) with descriptive variable names (simply clean up by removing "()" from existing label names). Reorder colums so that at subject & activity are the first two columns.
```{r}
names(merged) <- gsub("\\(\\)","",names(merged))
names(merged) <- gsub("-mean","Mean",names(merged))
names(merged) <- gsub("-std","StDev",names(merged))
names(merged) <- gsub("-","",names(merged))
merged <- merged[,c(68,67,1:66)]
```

###### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. The final dataset is a data.frame named "datameans". Write table of datameans in file name "tidyproject.txt" in working directory.
```{r}
library(reshape2)
mergemelt <- melt(merged, id = c("subject","activity"), measure.vars = names(merged[3:68]))
datameans <- dcast(mergemelt, subject + activity ~ variable, mean )
write.table(datameans,file="tidyproject.txt",row.names=FALSE)
```
