# Codebook - Getting and Cleaning Data - Project


## Variable Names - Tried to name all variable names to be meaninful and self explanatory. This data contains the average and standard deviation of the
triaxial movements.


	Activity	Volunteer_ID	time_BodyAcc-mean-X	time_BodyAcc-mean-Y	time_BodyAcc-mean-Z	time_GravityAcc-mean-X	time_GravityAcc-mean-Y	time_GravityAcc-mean-Z	time_BodyAccJerk-mean-X	time_BodyAccJerk-mean-Y	time_BodyAccJerk-mean-Z	time_BodyGyro_-mean-X	time_BodyGyro_-mean-Y	time_BodyGyro_-mean-Z	time_BodyGyro_Jerk-mean-X	time_BodyGyro_Jerk-mean-Y	time_BodyGyro_Jerk-mean-Z	time_BodyAccMag-mean	time_GravityAccMag-mean	time_BodyAccJerkMag-mean	time_BodyGyro_Mag-mean	time_BodyGyro_JerkMag-mean	frequency_BodyAcc-mean-X	frequency_BodyAcc-mean-Y	frequency_BodyAcc-mean-Z	frequency_BodyAcc-meanFreq-X	frequency_BodyAcc-meanFreq-Y	frequency_BodyAcc-meanFreq-Z	frequency_BodyAccJerk-mean-X	frequency_BodyAccJerk-mean-Y	frequency_BodyAccJerk-mean-Z	frequency_BodyAccJerk-meanFreq-X	frequency_BodyAccJerk-meanFreq-Y	frequency_BodyAccJerk-meanFreq-Z	frequency_BodyGyro_-mean-X	frequency_BodyGyro_-mean-Y	frequency_BodyGyro_-mean-Z	frequency_BodyGyro_-meanFreq-X	frequency_BodyGyro_-meanFreq-Y	frequency_BodyGyro_-meanFreq-Z	frequency_BodyAccMag-mean	frequency_BodyAccMag-meanFreq	frequency_Body_AccJerkMag-mean	frequency_Body_AccJerkMag-meanFreq	frequency_Body_Gyro_Mag-mean	frequency_Body_Gyro_Mag-meanFreq	frequency_Body_Gyro_JerkMag-mean	frequency_Body_Gyro_JerkMag-meanFreq	angle(tBodyAccMean,gravity)	angle(tBodyAccJerkMean),gravityMean)	angle(tBodyGyro_Mean,gravityMean)	angle(tBodyGyro_JerkMean,gravityMean)	angle(X,gravityMean)	angle(Y,gravityMean)	angle(Z,gravityMean)	time_BodyAcc-std-X	time_BodyAcc-std-Y	time_BodyAcc-std-Z	time_GravityAcc-std-X	time_GravityAcc-std-Y	time_GravityAcc-std-Z	time_BodyAccJerk-std-X	time_BodyAccJerk-std-Y	time_BodyAccJerk-std-Z	time_BodyGyro_-std-X	time_BodyGyro_-std-Y	time_BodyGyro_-std-Z	time_BodyGyro_Jerk-std-X	time_BodyGyro_Jerk-std-Y	time_BodyGyro_Jerk-std-Z	time_BodyAccMag-std	time_GravityAccMag-std	time_BodyAccJerkMag-std	time_BodyGyro_Mag-std	time_BodyGyro_JerkMag-std	frequency_BodyAcc-std-X	frequency_BodyAcc-std-Y	frequency_BodyAcc-std-Z	frequency_BodyAccJerk-std-X	frequency_BodyAccJerk-std-Y	frequency_BodyAccJerk-std-Z	frequency_BodyGyro_-std-X	frequency_BodyGyro_-std-Y	frequency_BodyGyro_-std-Z	frequency_BodyAccMag-std	frequency_Body_AccJerkMag-std	frequency_Body_Gyro_Mag-std	frequency_Body_Gyro_JerkMag-std

###Procedure

1. The files were individually imported to R using the read.table. The data files (x_test and x_train) was combined into a single file and in parallel 
the other text files were combined using the rbind.

2. To minimize memory related problems, the steps listed in the project were not followed strictly.Step 1 was performed first, then step 4, then step 2,
step 3 and lastly step 5.

3. comments are appropriately mentioned in the script.Tried to clean up variable names by deleting unnecessary characters, introduce "_" between some words
 and also spell out frequency(f) and time (t) based claculations

4. This code will write a csv file that contains tidy data. However once written, this will not check if there is a file already in the system.
