GetCleanData_Project
====================

##CODEBOOK for Human Activity Recognition Using Smartphones Dataset



Variable name | Description | Example value
--- | --- | ---
subjectId | unique id of participant | 1,2,3 ... 30
activity | one of the 5 activities used for the study | WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING


### Feature code book
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation


columnname | --- | ---
--- | --- | ---
tBodyAcc-mean()-X | --- | ---
tBodyAcc-mean()-Y | --- | ---
tBodyAcc-mean()-Z | --- | ---
tBodyAcc-std()-X | --- | ---
tBodyAcc-std()-Y | --- | ---
tBodyAcc-std()-Z | --- | ---
tGravityAcc-mean()-X | --- | ---
tGravityAcc-mean()-Y | --- | ---
tGravityAcc-mean()-Z | --- | ---
tGravityAcc-std()-X | --- | ---
tGravityAcc-std()-Y | --- | ---
tGravityAcc-std()-Z | --- | ---
tBodyAccJerk-mean()-X | --- | ---
tBodyAccJerk-mean()-Y | --- | ---
tBodyAccJerk-mean()-Z | --- | ---
tBodyAccJerk-std()-X | --- | ---
tBodyAccJerk-std()-Y | --- | ---
tBodyAccJerk-std()-Z | --- | ---
tBodyGyro-mean()-X | --- | ---
tBodyGyro-mean()-Y | --- | ---
tBodyGyro-mean()-Z | --- | ---
tBodyGyro-std()-X | --- | ---
tBodyGyro-std()-Y | --- | ---
tBodyGyro-std()-Z | --- | ---
tBodyGyroJerk-mean()-X  | --- | ---
tBodyGyroJerk-mean()-Y | --- | ---
tBodyGyroJerk-mean()-Z | --- | ---
tBodyGyroJerk-std()-X | --- | ---
tBodyGyroJerk-std()-Y | --- | ---
tBodyGyroJerk-std()-Z | --- | ---
tBodyAccMag-mean() | --- | ---
tBodyAccMag-std() | --- | ---
tBodyAccJerkMag-mean() | --- | ---
tBodyAccJerkMag-std()  | --- | ---
tBodyGyroMag-mean()  | --- | ---
tBodyGyroMag-std() | --- | ---
tBodyGyroJerkMag-mean() | --- | ---
tBodyGyroJerkMag-std() | --- | ---
266 fBodyAcc-mean()-X | --- | ---
267 fBodyAcc-mean()-Y | --- | ---
268 fBodyAcc-mean()-Z | --- | ---
269 fBodyAcc-std()-X | --- | ---
270 fBodyAcc-std()-Y | --- | ---
271 fBodyAcc-std()-Z | --- | ---
294 fBodyAcc-meanFreq()-X | --- | ---
295 fBodyAcc-meanFreq()-Y | --- | ---
296 fBodyAcc-meanFreq()-Z | --- | ---
345 fBodyAccJerk-mean()-X | --- | ---
346 fBodyAccJerk-mean()-Y | --- | ---
347 fBodyAccJerk-mean()-Z | --- | ---
348 fBodyAccJerk-std()-X | --- | ---
349 fBodyAccJerk-std()-Y | --- | ---
350 fBodyAccJerk-std()-Z | --- | ---
424 fBodyGyro-mean()-X | --- | ---
425 fBodyGyro-mean()-Y | --- | ---
426 fBodyGyro-mean()-Z | --- | ---
427 fBodyGyro-std()-X | --- | ---
428 fBodyGyro-std()-Y | --- | ---
429 fBodyGyro-std()-Z | --- | ---
452 fBodyGyro-meanFreq()-X  | --- | ---
453 fBodyGyro-meanFreq()-Y | --- | ---
454 fBodyGyro-meanFreq()-Z | --- | ---
503 fBodyAccMag-mean() | --- | ---
504 fBodyAccMag-std() | --- | ---
516 fBodyBodyAccJerkMag-mean() | --- | ---
517 fBodyBodyAccJerkMag-std() | --- | ---
529 fBodyBodyGyroMag-mean() | --- | ---
530 fBodyBodyGyroMag-std() | --- | ---
539 fBodyBodyGyroMag-meanFreq()  | --- | ---
542 fBodyBodyGyroJerkMag-mean()  | --- | ---
543 fBodyBodyGyroJerkMag-std() | --- | ---
552 fBodyBodyGyroJerkMag-meanFreq()  | --- | ---