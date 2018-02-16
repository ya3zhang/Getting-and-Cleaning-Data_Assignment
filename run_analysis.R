###Read data from the feature and activity files
Features <- read.table("./features.txt", header = FALSE)
activitys_names<-read.table("./activity_labels.txt", header = FALSE)

### Read data from train set
X_train <- read.table("./train/X_train.txt", header = FALSE)
Y_train <- read.table("./train/Y_train.txt", header = FALSE)
Subject_train <- read.table("./train/subject_train.txt", header = FALSE)
##rename columns in train set
names(X_train) <- Features$V2
names(Y_train) <- "Activities"
names(Subject_train) <- "Subjects"
## Add subject and activity to train set
Train <- cbind(Subject_train,Y_train,X_train)


###Read data from test set
X_test <- read.table("./test/X_test.txt", header = FALSE)
Y_test <- read.table("./test/Y_test.txt", header = FALSE)
Subject_test <- read.table("./test/subject_test.txt", header = FALSE)
##rename columns in test set
names(X_test) <- Features$V2
names(Y_test) <- "Activities"
names(Subject_test) <- "Subjects"
##Add subject and activity to test set
Test <- cbind(Subject_test,Y_test,X_test)

###Merges the train and the test sets to create one data set.
Mergeddata <- rbind(Train, Test)

###Extracts only the measurements on the mean and standard deviation for each measurement.
mean<-grep("-mean()", names(Mergeddata), fixed = TRUE)
std <-grep("-std()", names(Mergeddata))
Mean_Std <- Mergeddata[,c(1,2,mean,std)]

###Uses descriptive activity names to name the activities in the data set
Mean_Std$Activities <- as.character(factor(Mean_Std$Activities, 
                                           levels = 1:6, 
                                           labels= activitys_names$V2))

###Appropriately labels the data set with descriptive variable names.
names(Mean_Std) <- sub("tBodyAcc-", "Body acceleration signal in time domain (from the accelerometer)",names(Mean_Std))
names(Mean_Std) <- sub("tGravityAcc-", "Gravity acceleration signal in time domain (from the accelerometer)", names(Mean_Std))
names(Mean_Std) <- sub("tBodyAccMag-","Body acceleration signal in time domain applied to Fast Fourier Transform(from the accelerometer)", names(Mean_Std))
names(Mean_Std) <- sub("tBodyAccJerk-","Body acceleration jerk signal in time domain (from the accelerometer)", names(Mean_Std))
names(Mean_Std) <- sub("tBodyAccJerkMag-","Body acceleration jerk signal in time domain applied to Fast Fourrier Transform (from the accelerometer)", names(Mean_Std))
names(Mean_Std) <- sub("tGravityAccMag-","Gravity acceleration signal in time domain applied to Fast Fourier Transform(from the accelerometer)", names(Mean_Std))
names(Mean_Std) <- sub("tBodyGyro-","Body acceleration signal in time domain (from the gyroscope)", names(Mean_Std))
names(Mean_Std) <- sub("tBodyGyroMag-","Body acceleration signal in time domain applied to Fast Fourrier Transform(from the gyroscope)", names(Mean_Std))
names(Mean_Std) <- sub("tBodyGyroJerk-","Body acceleration jerk signal in time domain (from the gyroscope)", names(Mean_Std))
names(Mean_Std) <- sub("tBodyGyroJerkMag-","Body acceleration jerk signal in time domain applied to Fast Fourrier Transform(from the gyroscope)", names(Mean_Std))
names(Mean_Std) <- sub("fBodyAcc-","Body acceleration signal in frequence domain (from the accelerometer)", names(Mean_Std))
names(Mean_Std) <- sub("fBodyAccMag-","Body acceleration signal in frequence domain applied to Fast Fourier Transform(from the accelerometer)", names(Mean_Std))
names(Mean_Std) <- sub("fBodyAccJerk-","Body acceleration jerk signal in frequence domain (from the accelerometer)", names(Mean_Std))
names(Mean_Std) <- sub("fBodyGyro-","Body acceleration signal in frequence domain (from the gyroscope)", names(Mean_Std))
names(Mean_Std) <- sub("fBodyBodyAccJerkMag-","Body acceleration jerk signal in frequence domain applied to Fast Fourrier Transform (from the accelerometer)", names(Mean_Std))
names(Mean_Std) <- sub("fBodyBodyGyroJerkMag-","Body acceleration jerk signal in frequence domain applied to Fast Fourrier Transform(from the gyroscope)", names(Mean_Std))
names(Mean_Std) <- sub("fBodyBodyGyroMag-","Body acceleration signal in frequence domain applied to Fast Fourier Transform (from the gyroscope)", names(Mean_Std))
names(Mean_Std) <- sub("mean()", "MEAN", names(Mean_Std))
names(Mean_Std) <- sub("mean()", "MEAN", names(Mean_Std))
names(Mean_Std) <- sub("std()","STANDARD DEVIATION", names(Mean_Std))

###From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Mean_Std1<- group_by(Mean_Std, Subjects, Activities)
Tidy_Data <- summarise_all(Mean_Std1, funs(mean))

write.table(Tidy_Data, "TidyData.txt", row.name=FALSE)
