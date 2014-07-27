The tidy dataset is based on the information and data files found in the following 
zip archive.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A full description is found on the original site.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The process to tidy the data combined the subject and activity along with the mean and
standard deviation of the measured values.

The following is the list of features extracted from the datasets and the equivalent labels
given in the new data set.

The column from the subject_test.txt and subject_train.txt is given the label "subject"

The column from the y_test.txt and y_train.txt is given the label "activity"
	The activity label substitution was performed using the data found 
	in the file, "activity_labels.txt"
		1 WALKING
		2 WALKING_UPSTAIRS
		3 WALKING_DOWNSTAIRS
		4 SITTING
		5 STANDING
		6 LAYING


From the files X_train.txt and X_test.txt;

Col#	Old Label						New Label
1		tBodyAcc-mean()-X				body.acc.mean.X
2 		tBodyAcc-mean()-Y				body.acc.mean.Y
3 		tBodyAcc-mean()-Z				body.acc.mean.Z
4 		tBodyAcc-std()-X				body.acc.std.X
5 		tBodyAcc-std()-Y				body.acc.std.Y
6 		tBodyAcc-std()-Z				body.acc.std.Z
41 		tGravityAcc-mean()-X			gravity.acc.mean.X
42 		tGravityAcc-mean()-Y			gravity.acc.mean.Y
43 		tGravityAcc-mean()-Z			gravity.acc.mean.Z
44 		tGravityAcc-std()-X				gravity.acc.std.X
45 		tGravityAcc-std()-Y				gravity.acc.std.Y
46 		tGravityAcc-std()-Z				gravity.acc.std.Z
121 	tBodyGyro-mean()-X				body.gyro.mean.X
122 	tBodyGyro-mean()-Y				body.gyro.mean.Y
123 	tBodyGyro-mean()-Z				body.gyro.mean.Z
124 	tBodyGyro-std()-X				body.gyro.std.X
125 	tBodyGyro-std()-Y				body.gyro.std.Y
126 	tBodyGyro-std()-Z				body.gyro.std.Z

