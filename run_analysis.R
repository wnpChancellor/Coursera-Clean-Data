
# (0) Load features and activity

features <- read.table("/Users/jingshi/Desktop/coursera/UCI HAR Dataset/features.txt")[,2]
activity <- read.table("/Users/jingshi/Desktop/coursera/UCI HAR Dataset/activity_labels.txt")
colnames(activity)=c('Code', 'Activity.Name')

######################################################################

# (1) Merge training and test datasets to create one dataset;

# Load train datasets;
x.train<-read.table("/Users/jingshi/Desktop/coursera/UCI HAR dataset/train/X_train.txt")
colnames(x.train)<-as.character(features)

y.train<-read.table("/Users/jingshi/Desktop/coursera/UCI HAR dataset/train/y_train.txt")
colnames(y.train)<-c("Activity.ID")

sub.train<-read.table("/Users/jingshi/Desktop/coursera/UCI HAR dataset/train/subject_train.txt")
colnames(sub.train)<-c("Subject.ID")

train<-cbind(sub.train, y.train, x.train)

#load test datsets;
x.test<-read.table("/Users/jingshi/Desktop/coursera/UCI HAR dataset/test/X_test.txt")
colnames(x.test)<-as.character(features)

y.test<-read.table("/Users/jingshi/Desktop/coursera/UCI HAR dataset/test/y_test.txt")
colnames(y.test)<-c("Activity.ID")

sub.test<-read.table("/Users/jingshi/Desktop/coursera/UCI HAR dataset/test/subject_test.txt")
colnames(sub.test)<-c("Subject.ID")

test<-cbind(sub.test, y.test, x.test)

# merge train and test datasets;
merged.data<-rbind(train,test)

###################################################################################

# (2) Keep only the measurements on the mean and std;

select.feature<-grepl("std[(][)]|mean[(][)]",features)
mean.std<-merged.data[,c(select.feature)]

###################################################################################

# (3) Uses descriptive activity names to name the activities in the data set
data.final<-merge(mean.std,activity, by.x="Activity.ID", by.y="Code")

###################################################################################

# (4) Appropriately labels the data set with descriptive variable names. 
colNames <- names(data.final)

colNames <-gsub("Acc", ".Accelerometer", colNames)

colNames <-gsub("Gyro", ".Gyroscope", colNames)

colNames <-gsub("Mag", ".Magnitude", colNames)

colNames <-gsub("Jerk", ".Jerk", colNames)

colNames <-gsub("^t", "Time.", colNames)

colNames <-gsub("^f", "Frequency.", colNames)

colNames <-gsub("mean..", "Mean", colNames)

colNames <-gsub("std..", "Std", colNames)

names(data.final) <- make.names(colNames)


#############################################

# (5) From the data set in step 4, creates a second, independent tidy data set

# with the average of each variable for each activity and each subject.

library('reshape2')

data.melt <- melt(data.final,id.vars=c("Subject.ID",'Activity.Name'))

tidy.data <- dcast(data.melt,Subject.ID + Activity.Name ~ variable, mean)

# output a tidy dataset
write.table(tidy.data, "/Users/jingshi/Desktop/coursera/UCI HAR Dataset/Tidy_Data.txt", row.names=FALSE)

