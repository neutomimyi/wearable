require(LaF)


##read proper column names from features.txt
features <- read.table("./UCI HAR Dataset//features.txt",
                       sep = " ", 
                       colClasses = c("numeric", "character"), 
                       col.names = c("featureID","featureName"))

##get a vector of features that are either mean or standard deviation of 
##measurements
reqFeatures = c(grep("mean()",features$featureName, fixed=TRUE), 
                grep("std()", features$featureName, fixed = TRUE))

##read the training dataset
laf <- laf_open_fwf("./UCI HAR Dataset/train/X_train.txt", 
                    column_types=rep("numeric",561), 
                    column_widths=rep(16,561))

##keep the training dataset in the data.frame
traindf <- laf[,]

##set column names to features in the training dataset
names(traindf) <- features$featureName

##read the test dataset
laf <- laf_open_fwf("./UCI HAR Dataset/test/X_test.txt", 
                    column_types=rep("numeric",561), 
                    column_widths=rep(16,561))

##keep the test dataset in the data.frame
testdf <- laf[,]

##set column names to features in the test dataset
names(testdf) <- features$featureName

##read activity_labels.txt
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", 
                             col.names = c("ActivityID", "ActivityName"), 
                             colClasses = c("numeric","character"))

##read activities set for the training dataset
trainActivity <- read.table("./UCI HAR Dataset/train/y_train.txt",col.names = "ActivityID")

##add Activity column with descriptive activity names to the training dataset
traindf$activity <- sapply(trainActivity$ActivityID, function(z) activityLabels[z,2])

##read activities set for the test dataset
testActivity <- read.table("./UCI HAR Dataset/test/y_test.txt",col.names = "ActivityID")

##add Activity column with descriptive activity names to the test dataset
testdf$activity <- sapply(testActivity$ActivityID, function(z) activityLabels[z,2])

##read subjects for the training dataset
trainSubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt",
                            col.names = "subject")

##add subjects to the data frame with training dataset
traindf$subject <- trainSubjects$subject

##read subjects for the test dataset
testSubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt",
                            col.names = "subject")

##add subjects to the data frame with test dataset
testdf$subject <- testSubjects$subject


##create a merge of training and test datasets
fulldf <- rbind(traindf, testdf)

##Extract only the measurements on the mean and standard deviation for each 
##measurement
fulldf <- fulldf[,c(reqFeatures,562:563)]

require(dplyr)

##create a tidy dataset
tidydf <- as.data.frame(fulldf %>% group_by(activity,subject) %>% 
                                summarise_each(funs(mean))
                        )

##write the tidy dataset to the disc
write.table(tidydf, file = "tidy_dataset.txt", row.names = FALSE)