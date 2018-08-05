# Download and unzip the data

if(!file.exists("~/data")){dir.create("~/data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="~/data/Dataset.zip")
 
 
unzip(zipfile="~/data/Dataset.zip",exdir="~/data")

# Read the data

DataSubjectTest <- read.table("~/data/UCI HAR Dataset/test/subject_test.txt")
DataFeaturesTest <- read.table("~/data/UCI HAR Dataset/test/X_test.txt")
DataActivityTest <- read.table("~/data/UCI HAR Dataset/test/y_test.txt")
DataSubjectTrain <- read.table("~/data/UCI HAR Dataset/train/subject_train.txt")
DataFeaturesTrain <- read.table("~/data/UCI HAR Dataset/train/X_train.txt")
DataActivityTrain <- read.table("~/data/UCI HAR Dataset/train/y_train.txt")

# Merges the training and the test sets to create one data set

DataSubject <- rbind(DataSubjectTrain, DataSubjectTest)
DataActivity <- rbind(DataActivityTrain, DataActivityTest)
DataFeatures <- rbind(DataFeaturesTrain, DataFeaturesTest)



names(DataSubject) <- c("Subject")
names(DataActivity) <- c("Activity")
DataFeatNames <- read.table("~/data/UCI HAR Dataset/features.txt")
names(DataFeatures) <- DataFeatNames$V2


DataCombo <- cbind(DataSubject, DataActivity)
Data <- cbind(DataFeatures, DataCombo)


# Extracts only the measurements on the mean and standard deviation for each measurement

FeatNamesSubdata <- DataFeatNames$V2 [grep("mean\\(\\)|std\\(\\)", DataFeatNames$V2)]
ChoosenNames <- c(as.character(FeatNamesSubdata), "Subject", "Activity" )
Data <- subset(Data, select=ChoosenNames)

# Uses descriptive activity names to name the activities in the data set

ActivityLabels <- read.table("~/data/UCI HAR Dataset/activity_labels.txt")
Data$Activity <- factor(Data$Activity, labels = as.character(ActivityLabels$V2))

# Appropriately labels the data set with descriptive variable names

names(Data) <- gsub("^t", "Time", names(Data))
names(Data) <- gsub("^f", "Frequency", names(Data))
names(Data) <- gsub("Acc", "Accelerometer", names(Data))
names(Data) <- gsub("Gyro", "Gyroscope", names(Data))
names(Data) <- gsub("Mag", "Magnitude", names(Data))
names(Data) <- gsub("BodyBody", "Body", names(Data))

# From the previous dataset, creates a second, independent tidy data set with the average of each variable for each activity and each subject
# You need to use plyr

library(plyr) 
 
Data2 <- aggregate(. ~Subject + Activity, Data, mean)
Data2 <- Data2[order(Data2$Subject,Data2$Activity),]
write.table(Data2, file = "tidydata.txt",row.name=FALSE)
