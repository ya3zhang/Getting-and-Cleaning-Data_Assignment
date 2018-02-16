Description of the study:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.The raw data for this project is accelerometer data collected from the Samsung Galaxy S smartphone.Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.


The dataset include the following files:
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels. 
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.


Analysis Process:
The train and test datasets are read in and merged into one dataframe.
The train and test dataframes are merged into one dataframe.
Only the subject, activity, mean(), and sd() columns are extracted by examing the columns names.
Uses descriptive activity names to name the activities in the data set.
The variable names are appropriately described and labeled.
Average of each variable for each activity and each subject.
The result output is TidyData.txt.


Variables in the R_script:
Features --- The dataframe containing 561 features.
activitys_names --- The dataframe containing the labels with their activity names.
Train --- The joined dataframe including all train data.
Test --- The joined dataframe including all test data.
Mergeddata--- The joined dataframe including both train and test data.
Mean_Std --- The dataframe with mean and standard deviation extracted.
Tidy_Data --- The final output dataframe with averaged mean and sd for each subject per activity.


Variables in output file:
 [1] "Subjects" --- The id of the experiment participant.  
 [2] "Activities" --- The name of the activity that the measurements correspond to.   
 [3] "Body acceleration signal in time domain (from the accelerometer)MEAN()-X"                                                         
 [4] "Body acceleration signal in time domain (from the accelerometer)MEAN()-Y"                                                         
 [5] "Body acceleration signal in time domain (from the accelerometer)MEAN()-Z"                                                         
 [6] "Gravity acceleration signal in time domain (from the accelerometer)MEAN()-X"                                                      
 [7] "Gravity acceleration signal in time domain (from the accelerometer)MEAN()-Y"                                                      
 [8] "Gravity acceleration signal in time domain (from the accelerometer)MEAN()-Z"                                                      
 [9] "Body acceleration jerk signal in time domain (from the accelerometer)MEAN()-X"                                                    
[10] "Body acceleration jerk signal in time domain (from the accelerometer)MEAN()-Y"                                                    
[11] "Body acceleration jerk signal in time domain (from the accelerometer)MEAN()-Z"                                                    
[12] "Body acceleration signal in time domain (from the gyroscope)MEAN()-X"                                                             
[13] "Body acceleration signal in time domain (from the gyroscope)MEAN()-Y"                                                             
[14] "Body acceleration signal in time domain (from the gyroscope)MEAN()-Z"                                                             
[15] "Body acceleration jerk signal in time domain (from the gyroscope)MEAN()-X"                                                        
[16] "Body acceleration jerk signal in time domain (from the gyroscope)MEAN()-Y"                                                        
[17] "Body acceleration jerk signal in time domain (from the gyroscope)MEAN()-Z"                                                        
[18] "Body acceleration signal in time domain applied to Fast Fourier Transform(from the accelerometer)MEAN()"                          
[19] "Gravity acceleration signal in time domain applied to Fast Fourier Transform(from the accelerometer)MEAN()"                       
[20] "Body acceleration jerk signal in time domain applied to Fast Fourrier Transform (from the accelerometer)MEAN()"                   
[21] "Body acceleration signal in time domain applied to Fast Fourrier Transform(from the gyroscope)MEAN()"                             
[22] "Body acceleration jerk signal in time domain applied to Fast Fourrier Transform(from the gyroscope)MEAN()"                        
[23] "Body acceleration signal in frequence domain (from the accelerometer)MEAN()-X"                                                    
[24] "Body acceleration signal in frequence domain (from the accelerometer)MEAN()-Y"                                                    
[25] "Body acceleration signal in frequence domain (from the accelerometer)MEAN()-Z"                                                    
[26] "Body acceleration jerk signal in frequence domain (from the accelerometer)MEAN()-X"                                               
[27] "Body acceleration jerk signal in frequence domain (from the accelerometer)MEAN()-Y"                                               
[28] "Body acceleration jerk signal in frequence domain (from the accelerometer)MEAN()-Z"                                               
[29] "Body acceleration signal in frequence domain (from the gyroscope)MEAN()-X"                                                        
[30] "Body acceleration signal in frequence domain (from the gyroscope)MEAN()-Y"                                                        
[31] "Body acceleration signal in frequence domain (from the gyroscope)MEAN()-Z"                                                        
[32] "Body acceleration signal in frequence domain applied to Fast Fourier Transform(from the accelerometer)MEAN()"                     
[33] "Body acceleration jerk signal in frequence domain applied to Fast Fourrier Transform (from the accelerometer)MEAN()"              
[34] "Body acceleration signal in frequence domain applied to Fast Fourier Transform (from the gyroscope)MEAN()"                        
[35] "Body acceleration jerk signal in frequence domain applied to Fast Fourrier Transform(from the gyroscope)MEAN()"                   
[36] "Body acceleration signal in time domain (from the accelerometer)STANDARD DEVIATION()-X"                                           
[37] "Body acceleration signal in time domain (from the accelerometer)STANDARD DEVIATION()-Y"                                           
[38] "Body acceleration signal in time domain (from the accelerometer)STANDARD DEVIATION()-Z"                                           
[39] "Gravity acceleration signal in time domain (from the accelerometer)STANDARD DEVIATION()-X"                                        
[40] "Gravity acceleration signal in time domain (from the accelerometer)STANDARD DEVIATION()-Y"                                        
[41] "Gravity acceleration signal in time domain (from the accelerometer)STANDARD DEVIATION()-Z"                                        
[42] "Body acceleration jerk signal in time domain (from the accelerometer)STANDARD DEVIATION()-X"                                      
[43] "Body acceleration jerk signal in time domain (from the accelerometer)STANDARD DEVIATION()-Y"                                      
[44] "Body acceleration jerk signal in time domain (from the accelerometer)STANDARD DEVIATION()-Z"                                      
[45] "Body acceleration signal in time domain (from the gyroscope)STANDARD DEVIATION()-X"                                               
[46] "Body acceleration signal in time domain (from the gyroscope)STANDARD DEVIATION()-Y"                                               
[47] "Body acceleration signal in time domain (from the gyroscope)STANDARD DEVIATION()-Z"                                               
[48] "Body acceleration jerk signal in time domain (from the gyroscope)STANDARD DEVIATION()-X"                                          
[49] "Body acceleration jerk signal in time domain (from the gyroscope)STANDARD DEVIATION()-Y"                                          
[50] "Body acceleration jerk signal in time domain (from the gyroscope)STANDARD DEVIATION()-Z"                                          
[51] "Body acceleration signal in time domain applied to Fast Fourier Transform(from the accelerometer)STANDARD DEVIATION()"            
[52] "Gravity acceleration signal in time domain applied to Fast Fourier Transform(from the accelerometer)STANDARD DEVIATION()"         
[53] "Body acceleration jerk signal in time domain applied to Fast Fourrier Transform (from the accelerometer)STANDARD DEVIATION()"     
[54] "Body acceleration signal in time domain applied to Fast Fourrier Transform(from the gyroscope)STANDARD DEVIATION()"               
[55] "Body acceleration jerk signal in time domain applied to Fast Fourrier Transform(from the gyroscope)STANDARD DEVIATION()"          
[56] "Body acceleration signal in frequence domain (from the accelerometer)STANDARD DEVIATION()-X"                                      
[57] "Body acceleration signal in frequence domain (from the accelerometer)STANDARD DEVIATION()-Y"                                      
[58] "Body acceleration signal in frequence domain (from the accelerometer)STANDARD DEVIATION()-Z"                                      
[59] "Body acceleration jerk signal in frequence domain (from the accelerometer)STANDARD DEVIATION()-X"                                 
[60] "Body acceleration jerk signal in frequence domain (from the accelerometer)STANDARD DEVIATION()-Y"                                 
[61] "Body acceleration jerk signal in frequence domain (from the accelerometer)STANDARD DEVIATION()-Z"                                 
[62] "Body acceleration signal in frequence domain (from the gyroscope)STANDARD DEVIATION()-X"                                          
[63] "Body acceleration signal in frequence domain (from the gyroscope)STANDARD DEVIATION()-Y"                                          
[64] "Body acceleration signal in frequence domain (from the gyroscope)STANDARD DEVIATION()-Z"                                          
[65] "Body acceleration signal in frequence domain applied to Fast Fourier Transform(from the accelerometer)STANDARD DEVIATION()"       
[66] "Body acceleration jerk signal in frequence domain applied to Fast Fourrier Transform (from the accelerometer)STANDARD DEVIATION()"
[67] "Body acceleration signal in frequence domain applied to Fast Fourier Transform (from the gyroscope)STANDARD DEVIATION()"          
[68] "Body acceleration jerk signal in frequence domain applied to Fast Fourrier Transform(from the gyroscope)STANDARD DEVIATION()" 

