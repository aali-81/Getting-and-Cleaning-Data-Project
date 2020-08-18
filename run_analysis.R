# Script for Course #3 Project
#
# You should create one R script called run_analysis.R that does the following.
# 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each
#    variable for each activity and each subject.

# load the packages
library(dplyr)
setwd("D:/R/DataScience") #you can change the path to your own path.

# Create data folder
if(!file.exists("Cleaning_Data_W4")) {
  dir.create("Cleaning_Data_W4")
}


# get the data, load it into data.frames
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl,destfile = "./Cleaning_Data_W4/rundata.zip")
unzip("./Cleaning_Data_W4/rundata.zip") # unzips to the home dir
# D:\R\DataScience\Cleaning_Data_W4\UCI HAR Dataset\test
# D:\R\DataScience\Cleaning_Data_W4\UCI HAR Dataset\train

 
col_names <- read.table("./UCI HAR Dataset/features.txt") # the variable names

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = col_names[,2]) # the values from the activity
Y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = as.factor(c("activity"))) # the activity
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = as.factor(c("subject"))) # the subject

#Activites: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt",  col.names = col_names[,2])  # the values from the activity
Y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = c("activity")) 
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = c("subject")) # the subject

# ---------------------------------------------
# 1. Merges the training and the test sets to create one data set.
testdata  <- cbind(X_test,Y_test,subject_test)
traindata <- cbind(X_train,Y_train,subject_train)
alldata   <- rbind(testdata,traindata)

# ---------------------------------------------
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
mean.std <- select(alldata, contains("mean"),contains("std"),activity,subject)

# ---------------------------------------------
# 3. Uses descriptive activity names to name the activities in the data set
xlate_act <- function(x)
{
  activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
  activities[x,2]
}
mean.std <- mutate(mean.std, activity = xlate_act(mean.std$activity))

# ---------------------------------------------
# 4. Appropriately labels the data set with descriptive variable names.


names(mean.std)<-gsub("Acc", "Accelerometer", names(mean.std))
names(mean.std)<-gsub("Gyro", "Gyroscope", names(mean.std))
names(mean.std)<-gsub("BodyBody", "Body", names(mean.std))
names(mean.std)<-gsub("Mag", "Magnitude", names(mean.std))
names(mean.std)<-gsub("^t", "Time", names(mean.std))
names(mean.std)<-gsub("^f", "Frequency", names(mean.std))
names(mean.std)<-gsub(".tBody", "TimeBody", names(mean.std))
names(mean.std)<-gsub(".mean", "Mean", names(mean.std), ignore.case = TRUE)
names(mean.std)<-gsub(".std", "STD", names(mean.std), ignore.case = TRUE)
names(mean.std)<-gsub("freq", "Frequency", names(mean.std), ignore.case = TRUE)
names(mean.std)<-gsub("angle", "Angle", names(mean.std))
names(mean.std)<-gsub("gravity", "Gravity", names(mean.std))
names(mean.std)<-gsub(".gravit", "Gravity", names(mean.std))



# ---------------------------------------------
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each
#    variable for each activity and each subject.
mean.std.grouped <- group_by(mean.std,activity,subject)
tidy.data <- summarise_all(mean.std.grouped,mean)
View(tidy.data)
write.table(tidy.data,"./Cleaning_Data_W4/tidy_data.txt",quote = FALSE, row.names = FALSE)


# To view the tidy_data set provided you can run the follow commands
# data <- read.table("./Cleaning_Data_W4/tidy_data.txt", header = TRUE) 
# View(data)

