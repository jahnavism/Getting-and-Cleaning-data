##Check if the file exist if not then download the file
filename <- "getdata_dataset.zip"
## Download and unzip the dataset:
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}


# Load activity labels and features
activityLabels <- read.table("./activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])
features <- read.table("./features.txt")
features[,2] <- as.character(features[,2])


# Extract only the data on mean and standard deviation
featuresWanted <- grep(".*mean.*|.*std.*", features[,2])
featuresWanted.names <- features[featuresWanted,2]
featuresWanted.names = gsub('-mean', 'Mean', featuresWanted.names)
featuresWanted.names = gsub('-std', 'Std', featuresWanted.names)
featuresWanted.names <- gsub('[-()]', '', featuresWanted.names)



# Load the train dataset
train <- read.table("./train/X_train.txt")[featuresWanted]
trainActivities <- read.table("./train/Y_train.txt")
trainSubjects <- read.table("./train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)

# Load the test dataset
test <- read.table("./test/X_test.txt")[featuresWanted]
testActivities <- read.table("./test/Y_test.txt")
testSubjects <- read.table("./test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

# Merge test and train datasets and add labels to the data
allData <- rbind(train, test)
colnames(allData) <- c("subject", "activity", featuresWanted.names)

# Turn activities & subjects into factors
allData$activity <- factor(allData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
allData$subject <- as.factor(allData$subject)

#Load reshape2 package
library(reshape2)

#Melt the data using subject and activity as ids and later cast it to a dataframe while calculating mean
allData.melted <- melt(allData, id = c("subject", "activity"))
allData.mean <- dcast(allData.melted, subject + activity ~ variable, mean)

#Write into tidy.txt file
write.table(allData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)


