## Getting and Cleaning Data Course Project
## 

## Read raw data from test and train datasets. 
## Each consists of three parts, subject vector, activity vector and 
##    data table consisting of measured and calculated values.

sub.train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
sub.test<-read.table("./UCI HAR Dataset/test/subject_test.txt")

act.train<-read.table("./UCI HAR Dataset/train/y_train.txt")
act.test<-read.table("./UCI HAR Dataset/test/y_test.txt")

data.train<-read.table("./UCI HAR Dataset/train/X_train.txt")
data.test<-read.table("./UCI HAR Dataset/test/X_test.txt")

## List of columns containing mean and standard deviation of measured values.
cfilter <- c(1:6,41:46,121:126)

## Combine subject, activity and measured data
test.frame <- cbind(sub.test, act.test, data.test[,cfilter])
train.frame <- cbind(sub.train, act.train, data.train[,cfilter])

## Housekeeping to free up memory...
rm("sub.train","sub.test","act.train","act.test","data.train","data.test")

## Combine trimmed train and test datasets
dataset <- rbind(test.frame, train.frame)

## Add colum names.  c("subject","activity",
##						"body.acc.mean.X","body.acc.mean.Y","body.acc.mean.Z",
##						"body.acc.std.X","body.acc.std.Y","body.acc.std.Z",
##						"gravity.acc.mean.X","gravity.acc.mean.Y","gravity.acc.mean.Z",
##						"gravity.acc.std.X","gravity.acc.std.Y","gravity.acc.std.Z",
##						"body.gyro.mean.X","body.gyro.mean.Y","body.gyro.mean.Z",
##						"body.gyro.std.X","body.gyro.std.Y","body.gyro.std.Z")
colnames(dataset) <- c("subject","activity","body.acc.mean.X","body.acc.mean.Y","body.acc.mean.Z","body.acc.std.X","body.acc.std.Y","body.acc.std.Z","gravity.acc.mean.X","gravity.acc.mean.Y","gravity.acc.mean.Z","gravity.acc.std.X","gravity.acc.std.Y","gravity.acc.std.Z","body.gyro.mean.X","body.gyro.mean.Y","body.gyro.mean.Z","body.gyro.std.X","body.gyro.std.Y","body.gyro.std.Z")

## Housekeeping...
rm("test.frame", "train.frame")

## Apply activity labels
## 1 WALKING
## 2 WALKING_UPSTAIRS
## 3 WALKING_DOWNSTAIRS
## 4 SITTING
## 5 STANDING
## 6 LAYING
activ <- read.table("./UCI HAR Dataset/activity_labels.txt")
colnames(activ) <-c("id","Name")
dataset[,2]<-activ$Name[match(dataset[,2],activ$id)]

write.table(dataset, file="./getdata-005-project/tidy1.txt", row.names=FALSE)
