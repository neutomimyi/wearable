## Variables

The variables in the tidy dataset come from the accelerometer and gyroscope 
3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 
't' to denote time) were captured at a constant rate of 50 Hz. Then they were 
filtered using a median filter and a 3rd order low pass Butterworth filter with 
a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal 
was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and 
tGravityAcc-XYZ) using another low pass Butterworth filter with a corner 
frequency of 0.3 Hz. 
  
Subsequently, the body linear acceleration and angular velocity were derived 
in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also 
the magnitude of these three-dimensional signals were calculated using the 
Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, 
tBodyGyroJerkMag). 
  
Finally a Fast Fourier Transform (FFT) was applied to some of these signals 
producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, 
fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain 
signals). 
  
These signals were used to estimate variables of the feature vector for each  
pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.  
  
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
  
The data is provided for each of the 6 activities of each of the 30 subjects. 
Activities are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING
and LAYING  
  
Full list of variables in the tidy dataset:  
subject  
tBodyAcc-mean()-X  
tBodyAcc-mean()-Y  
tBodyAcc-mean()-Z  
tBodyAcc-std()-X  
tBodyAcc-std()-Y  
tBodyAcc-std()-Z  
tGravityAcc-mean()-X  
tGravityAcc-mean()-Y  
tGravityAcc-mean()-Z  
tGravityAcc-std()-X  
tGravityAcc-std()-Y  
tGravityAcc-std()-Z  
tBodyAccJerk-mean()-X  
tBodyAccJerk-mean()-Y  
tBodyAccJerk-mean()-Z  
tBodyAccJerk-std()-X  
tBodyAccJerk-std()-Y  
tBodyAccJerk-std()-Z  
tBodyGyro-mean()-X  
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z  
tBodyGyro-std()-X  
tBodyGyro-std()-Y  
tBodyGyro-std()-Z  
tBodyGyroJerk-mean()-X  
tBodyGyroJerk-mean()-Y  
tBodyGyroJerk-mean()-Z  
tBodyGyroJerk-std()-X  
tBodyGyroJerk-std()-Y  
tBodyGyroJerk-std()-Z  
tBodyAccMag-mean()  
tBodyAccMag-std()  
tGravityAccMag-mean()  
tGravityAccMag-std()  
tBodyAccJerkMag-mean()  
tBodyAccJerkMag-std()  
tBodyGyroMag-mean()  
tBodyGyroMag-std()  
tBodyGyroJerkMag-mean()  
tBodyGyroJerkMag-std()  
fBodyAcc-mean()-X  
fBodyAcc-mean()-Y  
fBodyAcc-mean()-Z  
fBodyAcc-std()-X  
fBodyAcc-std()-Y  
fBodyAcc-std()-Z  
fBodyAccJerk-mean()-X  
fBodyAccJerk-mean()-Y  
fBodyAccJerk-mean()-Z  
fBodyAccJerk-std()-X  
fBodyAccJerk-std()-Y  
fBodyAccJerk-std()-Z  
fBodyGyro-mean()-X  
fBodyGyro-mean()-Y  
fBodyGyro-mean()-Z  
fBodyGyro-std()-X  
fBodyGyro-std()-Y  
fBodyGyro-std()-Z  
fBodyAccMag-mean()  
fBodyAccMag-std()  
fBodyBodyAccJerkMag-mean()  
fBodyBodyAccJerkMag-std()  
fBodyBodyGyroMag-mean()  
fBodyBodyGyroMag-std()  
fBodyBodyGyroJerkMag-mean()  
fBodyBodyGyroJerkMag-std()  

##Data
Data in the tidy dataset contains averages of each of the measurement variables 
(all variables except activity and subject) for each of the activity and each 
subject.

##Transformations and cleanup
Raw data is presented in the form of train and test datasets for the measurement 
variables, separate lists of train and test subjects and activity identifiers 
for each of the records in the train and test datasets. To obtain the tidy 
dataset the following steps are performed:  

* descriptive column names are applied to both train and test datasets  
* a column with descriptive activities added to both datasets  
* a column with subjects is added to both datasets  
* train and test datasets are merged to get a full dataset  
* only mean and standard deviation for each of the measurements of the signals 
are extracted from the full dataset  
* the extracted measurements are grouped by activity and subject  
* mean of each of the extracted measurement is calculated for each of the groups  
