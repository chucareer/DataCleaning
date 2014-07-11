CodeBook

Variable Description
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc.xyz and tGyro.xyz. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc.xyz and tGravityAcc.xyz) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk.xyz and tBodyGyroJerk.xyz). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc.xyz, fBodyAccJerk.xyz, fBodyGyro.xyz, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'.XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc.XYZ
tGravityAcc.XYZ
tBodyAccJerk.XYZ
tBodyGyro.XYZ
tBodyGyroJerk.xyz
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc.xyz
fBodyAccJerk.xyz
fBodyGyro.xyz
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
angle: Angle between two vectors

The set of variables that were estimated from these signals are: 
mean: Mean value
std: Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle variable:
gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

All variables names excluding angle measurements are starting with measurement, following by estimates(mean/std) and direction if available. All angle variables are starting with angle, following by two vectors. Subject and activity are also included in the dataset.



