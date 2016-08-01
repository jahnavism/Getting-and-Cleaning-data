Dataset description

Measurements
•	tBodyAccMeanX
•	tBodyAccMeanY
•	tBodyAccMeanZ
•	tBodyAccStdX
•	tBodyAccStdY
•	tBodyAccStdZ
•	tGravityAccMeanX
•	tGravityAccMeanY
•	tGravityAccMeanZ
•	tGravityAccStdX
•	tGravityAccStdY
•	tGravityAccStdZ
•	tBodyAccJerkMeanX
•	tBodyAccJerkMeanY
•	tBodyAccJerkMeanZ
•	tBodyAccJerkStdX
•	tBodyAccJerkStdY
•	tBodyAccJerkStdZ
•	tBodyGyroMeanX
•	tBodyGyroMeanY
•	tBodyGyroMeanZ
•	tBodyGyroStdX
•	tBodyGyroStdY
•	tBodyGyroStdZ
•	tBodyGyroJerkMeanX
•	tBodyGyroJerkMeanY
•	tBodyGyroJerkMeanZ
•	tBodyGyroJerkStdX
•	tBodyGyroJerkStdY
•	tBodyGyroJerkStdZ
•	tBodyAccMagMean
•	tBodyAccMagStd
•	tGravityAccMagMean
•	tGravityAccMagStd
•	tBodyAccJerkMagMean
•	tBodyAccJerkMagStd
•	tBodyGyroMagMean
•	tBodyGyroMagStd
•	tBodyGyroJerkMagMean
•	tBodyGyroJerkMagStd
•	fBodyAccMeanX
•	fBodyAccMeanY
•	fBodyAccMeanZ
•	fBodyAccStdX
•	fBodyAccStdY
•	fBodyAccStdZ
•	fBodyAccMeanFreqX
•	fBodyAccMeanFreqY
•	fBodyAccMeanFreqZ
•	fBodyAccJerkMeanX
•	fBodyAccJerkMeanY
•	fBodyAccJerkMeanZ
•	fBodyAccJerkStdX
•	fBodyAccJerkStdY
•	fBodyAccJerkStdZ
•	fBodyAccJerkMeanFreqX
•	fBodyAccJerkMeanFreqY
•	fBodyAccJerkMeanFreqZ
•	fBodyGyroMeanX
•	fBodyGyroMeanY
•	fBodyGyroMeanZ
•	fBodyGyroStdX
•	fBodyGyroStdY
•	fBodyGyroStdZ
•	fBodyGyroMeanFreqX
•	fBodyGyroMeanFreqY
•	fBodyGyroMeanFreqZ
•	fBodyAccMagMean
•	fBodyAccMagStd
•	fBodyAccMagMeanFreq
•	fBodyBodyAccJerkMagMean
•	fBodyBodyAccJerkMagStd
•	fBodyBodyAccJerkMagMeanFreq
•	fBodyBodyGyroMagMean
•	fBodyBodyGyroMagStd
•	fBodyBodyGyroMagMeanFreq
•	fBodyBodyGyroJerkMagMean
•	fBodyBodyGyroJerkMagStd
•	fBodyBodyGyroJerkMagMeanFreq

Dataset information

Merge the training and the test sets to create one data set.
After setting the source directory for the files, read into tables the data located in
•	features.txt
•	activity_labels.txt
•	subject_train.txt
•	x_train.txt
•	y_train.txt
•	subject_test.txt
•	x_test.txt
•	y_test.txt
First data containing x_train, y_train, subject_train  are combined along with features and activity_labels to get training data. Similarly x_test, y_test and subject_test are combined along with features and activity_labels to get test data.These two datasets are combined. 

Extract only the mean and standard deviation measurements from the data
grep was used to generate a logical vector containing measurements of mean and standard deviation.

Name the columns appropriately to depict the measurement
Gsub was used to replace mean with Mean, std with Std and remove ()

Create tidy dataset from the combined dataset with means for each activity and subject
Melt and dcast functions are used to breakdown the dataframe and later rebuild the dataframe finding the mean for each activity.

