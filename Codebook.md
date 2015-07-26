## Codebook for full_data.txt and tidy.txt (variables are in the sequence displayed below)

subject:
+	The number of subjects that perform those activities.

activity:
+	The activity that subject is performing. The activity includes "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING".

other variables (66 of them):
These variables include "tBodyAcc-mean()-X, tBodyAcc-mean()-Y, tBodyAcc-mean()-Z, tBodyAcc-std()-X, tBodyAcc-std()-Y, tBodyAcc-std()-Z, tGravityAcc-mean()-X, tGravityAcc-mean()-Y, tGravityAcc-mean()-Z, tGravityAcc-std()-X, tGravityAcc-std()-Y, tGravityAcc-std()-Z, tBodyAccJerk-mean()-X, tBodyAccJerk-mean()-Y, tBodyAccJerk-mean()-Z, tBodyAccJerk-std()-X, tBodyAccJerk-std()-Y, tBodyAccJerk-std()-Z, tBodyGyro-mean()-X, tBodyGyro-mean()-Y, tBodyGyro-mean()-Z, tBodyGyro-std()-X, tBodyGyro-std()-Y, tBodyGyro-std()-Z, tBodyGyroJerk-mean()-X, tBodyGyroJerk-mean()-Y, tBodyGyroJerk-mean()-Z, tBodyGyroJerk-std()-X, tBodyGyroJerk-std()-Y, tBodyGyroJerk-std()-Z, tBodyAccMag-mean(), tBodyAccMag-std(), tGravityAccMag-mean(), tGravityAccMag-std(), tBodyAccJerkMag-mean(), tBodyAccJerkMag-std(), tBodyGyroMag-mean(), tBodyGyroMag-std(), tBodyGyroJerkMag-mean(), tBodyGyroJerkMag-std(), fBodyAcc-mean()-X, fBodyAcc-mean()-Y, fBodyAcc-mean()-Z, fBodyAcc-std()-X, fBodyAcc-std()-Y, fBodyAcc-std()-Z, fBodyAccJerk-mean()-X, fBodyAccJerk-mean()-Y, fBodyAccJerk-mean()-Z, fBodyAccJerk-std()-X, fBodyAccJerk-std()-Y, fBodyAccJerk-std()-Z, fBodyGyro-mean()-X, fBodyGyro-mean()-Y, fBodyGyro-mean()-Z, fBodyGyro-std()-X, fBodyGyro-std()-Y, fBodyGyro-std()-Z, fBodyAccMag-mean(), fBodyAccMag-std(), fBodyBodyAccJerkMag-mean(), fBodyBodyAccJerkMag-std(), fBodyBodyGyroMag-mean(), fBodyBodyGyroMag-std(), fBodyBodyGyroJerkMag-mean(), fBodyBodyGyroJerkMag-std()".

Each variable has original measurement name ('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions):
+	tBodyAcc-XYZ
+	tGravityAcc-XYZ
+	tBodyAccJerk-XYZ
+	tBodyGyro-XYZ
+	tBodyGyroJerk-XYZ
+	tBodyAccMag
+	tGravityAccMag
+	tBodyAccJerkMag
+	tBodyGyroMag
+	tBodyGyroJerkMag
+	fBodyAcc-XYZ
+	fBodyAccJerk-XYZ
+	fBodyGyro-XYZ
+	fBodyAccMag
+	fBodyAccJerkMag
+	fBodyGyroMag
+	fBodyGyroJerkMag

Each variable also has a part ('mean()' or 'std()') indicates estimation procedure of it:
mean(): Mean value of all signals for that subject for each subject and each activity.
std(): Mean value of the standard deviations of signals in one time window for each subject and each activity.
