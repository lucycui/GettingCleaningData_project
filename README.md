
### Directory
The directory contains:
+	UCI HAR Dataset: contains the original data set.
+	Codebook.md: decribes the data generation process along with each variables.
+	full_data.txt: is the combine data of train and test data in original data set. 
+	tidy.txt: is the tidy data set (more information is in Codebook.md).
+	run_analysis.R: R script to clean the original data and generate full_data.csv and tidy.csv



### Data Cleaning for full_data.csv

The original data is from Human Activity Recognition Using Smartphones Dataset Version 1.0. More information can be found on http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The process of generating full_data.csv from Human Activity Recognition Using Smartphones Dataset:
+	Combine the feature and label data from both test and train groups in the original data set.
+	Pick variables related to mean and standard deviatoins of measurements in the original data set.
+	Remane variable names to reflect activity, subject, and measures. 

### Data Cleaning for tidy.csv
tidy.csv is generated from full_data.csv
The process of generating tidy.csv:
+	tidy.csv contains the mean of all measurements in full_data.csv for each subject and each activity.