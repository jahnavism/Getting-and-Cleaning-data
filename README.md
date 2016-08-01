Project Overview
This project helps to demonstrate the purpose of cleaning the dataset and make some useful insights. 

Project Description
Complete description of the project can be found in the below link.
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Output files
There are two files associated with the project out.
The Run_Analysis file contains the code and Tidy_data contains the cleaned data.

Code briefing
Below are the steps carried out as part of the tidying the data.
1.	Download the file from the link provided
2.	Load the activity and features file, extracting only the measurements containing only mean and standard deviation
3.	Load the test and train datasets, keeping only those columns which reflect a mean or standard deviation
4.	Combine both these datasets
5.	Convert activity and subject to factors
6.	Break and rebuild the dataframe calculating the average of each variable for subject and activity
7.	Load this clean data into tidy.txt file


