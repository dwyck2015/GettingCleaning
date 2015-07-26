### R Script: run_analysis.R
### The script summarizes wearable computing data collected from the accelerometers 
### from Samsung Galaxy S smartphones.

## read all data files
colheader <- read.table("./UCI HAR Dataset/features.txt") # contains colnames for data_test & data_train
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE)
data_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)
activity_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE, sep=" ")
person_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)
data_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
activity_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE, sep=" ")
person_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)
## set column names
names(data_test) <- colheader[,2]
names(data_train)<- names(data_test)
## append activity & subject columns to data
data_test$activity <- activity_test[,1]
data_test$subject <- person_test[,1]
data_train$activity <- activity_train[,1]
data_train$subject <- person_train[,1]

### 1. Merge the training and the test sets to create one data set. ###
# merge test and train data
merged <- rbind(data_test,data_train)

### 2. Extracts only the measurements on the mean and standard deviation for each measurement. ###
meanstd <- grep("^subject$|^activity$|(mean\\(\\))|(std\\(\\))", colnames(merged),value=TRUE) 
merged <- merged[,meanstd]

### 3. Uses descriptive activity names to name the activities in the data set. ###
for (i in seq_along(merged$activity)) {
  merged$activity[i] <- as.character(activity_labels[merged$activity[i],2])
}

### 4. Appropriately labels the data set with descriptive variable names. ###
names(merged) <- gsub("\\(\\)","",names(merged))
merged <- merged[,c(68,67,1:66)]

### 5. From the data set in step 4, creates a second, independent tidy data set ###
###    with the average of each variable for each activity and each subject.    ###
library(reshape2)
mergemelt <- melt(merged, id = c("subject","activity"), measure.vars = names(merged[3:68]))
datameans <- dcast(mergemelt, subject + activity ~ variable, mean )
write.table(datameans,file="tidyproject.txt",row.names=FALSE)
