# Variable names

* [1] "Subject.ID"
* [2] "Activity.Name"
* [3] "Time.Body.Accelerometer.Mean.X"
* [4] "Time.Body.Accelerometer.Mean.Y"
* [5] "Time.Body.Accelerometer.Mean.Z"
* [6] "Time.Body.Accelerometer.Std.X"
* [7] "Time.Body.Accelerometer.Std.Y"
* [8] "Time.Body.Accelerometer.Std.Z"
* [9] "Time.Gravity.Accelerometer.Mean.X"
* [10] "Time.Gravity.Accelerometer.Mean.Y"
* [11] "Time.Gravity.Accelerometer.Mean.Z"
* [12] "Time.Gravity.Accelerometer.Std.X"
* [13] "Time.Gravity.Accelerometer.Std.Y"
* [14] "Time.Gravity.Accelerometer.Std.Z"
* [15] "Time.Body.Accelerometer.Jerk.Mean.X"
* [16] "Time.Body.Accelerometer.Jerk.Mean.Y"
* [17] "Time.Body.Accelerometer.Jerk.Mean.Z"
* [18] "Time.Body.Accelerometer.Jerk.Std.X"
* [19] "Time.Body.Accelerometer.Jerk.Std.Y"
* [20] "Time.Body.Accelerometer.Jerk.Std.Z"
* [21] "Time.Body.Gyroscope.Mean.X"
* [22] "Time.Body.Gyroscope.Mean.Y"
* [23] "Time.Body.Gyroscope.Mean.Z"
* [24] "Time.Body.Gyroscope.Std.X"
* [25] "Time.Body.Gyroscope.Std.Y"
* [26] "Time.Body.Gyroscope.Std.Z"
* [27] "Time.Body.Gyroscope.Jerk.Mean.X"
* [28] "Time.Body.Gyroscope.Jerk.Mean.Y"
* [29] "Time.Body.Gyroscope.Jerk.Mean.Z"
* [30] "Time.Body.Gyroscope.Jerk.Std.X"
* [31] "Time.Body.Gyroscope.Jerk.Std.Y"
* [32] "Time.Body.Gyroscope.Jerk.Std.Z"
* [33] "Time.Body.Accelerometer.Magnitude.Mean"
* [34] "Time.Body.Accelerometer.Magnitude.Std"
* [35] "Time.Gravity.Accelerometer.Magnitude.Mean"
* [36] "Time.Gravity.Accelerometer.Magnitude.Std"
* [37] "Time.Body.Accelerometer.Jerk.Magnitude.Mean"
* [38] "Time.Body.Accelerometer.Jerk.Magnitude.Std"
* [39] "Time.Body.Gyroscope.Magnitude.Mean"
* [40] "Time.Body.Gyroscope.Magnitude.Std"
* [41] "Time.Body.Gyroscope.Jerk.Magnitude.Mean"
* [42] "Time.Body.Gyroscope.Jerk.Magnitude.Std"
* [43] "Frequency.Body.Accelerometer.Mean.X"
* [44] "Frequency.Body.Accelerometer.Mean.Y"
* [45] "Frequency.Body.Accelerometer.Mean.Z"
* [46] "Frequency.Body.Accelerometer.Std.X"
* [47] "Frequency.Body.Accelerometer.Std.Y"
* [48] "Frequency.Body.Accelerometer.Std.Z"
* [49] "Frequency.Body.Accelerometer.Jerk.Mean.X"
* [50] "Frequency.Body.Accelerometer.Jerk.Mean.Y"
* [51] "Frequency.Body.Accelerometer.Jerk.Mean.Z"
* [52] "Frequency.Body.Accelerometer.Jerk.Std.X"
* [53] "Frequency.Body.Accelerometer.Jerk.Std.Y"
* [54] "Frequency.Body.Accelerometer.Jerk.Std.Z"
* [55] "Frequency.Body.Gyroscope.Mean.X"
* [56] "Frequency.Body.Gyroscope.Mean.Y"
* [57] "Frequency.Body.Gyroscope.Mean.Z"
* [58] "Frequency.Body.Gyroscope.Std.X"
* [59] "Frequency.Body.Gyroscope.Std.Y"
* [60] "Frequency.Body.Gyroscope.Std.Z"
* [61] "Frequency.Body.Accelerometer.Magnitude.Mean"
* [62] "Frequency.Body.Accelerometer.Magnitude.Std"
* [63] "Frequency.BodyBody.Accelerometer.Jerk.Magnitude.Mean"
* [64] "Frequency.BodyBody.Accelerometer.Jerk.Magnitude.Std"
* [65] "Frequency.BodyBody.Gyroscope.Magnitude.Mean"
* [66] "Frequency.BodyBody.Gyroscope.Magnitude.Std"
* [67] "Frequency.BodyBody.Gyroscope.Jerk.Magnitude.Mean"
* [68] "Frequency.BodyBody.Gyroscope.Jerk.Magnitude.Std"


# Variable Descriptions:
## Subject.ID:
* Represents 30 observations in this study. It is a numeric variable, with interger values from 1 to 30.

## Activity.Name:
* Represents 6 activities (WALKING, WALKING_UPSTARIS, WALKING_DOWNSTARIS, SITTING, STANDING, LAYING) each volunteer performed. It is a character variable.

## Features:
* The rest of the variables are features that come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

time.BodyAcc-XYZ
time.GravityAcc-XYZ
time.BodyAccJerk-XYZ
time.BodyGyro-XYZ
time.BodyGyroJerk-XYZ
time.BodyAccMag
time.GravityAccMag
time.BodyAccJerkMag
time.BodyGyroMag
time.BodyGyroJerkMag
frequency.BodyAcc-XYZ
frequency.BodyAccJerk-XYZ
frequency.BodyGyro-XYZ
frequency.BodyAccMag
frequency.BodyAccJerkMag
frequency.BodyGyroMag
frequency.BodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
