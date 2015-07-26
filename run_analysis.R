# Extract feature names and indexes related to mean and standard deviations of variables.
feature_data <- read.csv('./UCI HAR Dataset/features.txt', sep = ' ', header = FALSE)
names(feature_data) <- c('index', 'name')
feature_index <- grep('-mean\\(\\)|-std\\(\\)', feature_data$name)
feature_names <- feature_data$name[feature_index]
# Genearate Test data and label the variables
test_label <- read.csv('./UCI HAR Dataset/test/y_test.txt', header = FALSE)
names(test_label) <- c('activity')
test_subject <- read.csv('./UCI HAR Dataset/test/subject_test.txt', header = FALSE)
names(test_subject) <- c('subject')
test_feature <- data.frame(t(sapply(strsplit(readLines('./UCI HAR Dataset/test/X_test.txt'), '\\s+'), c)))
test_feature <- test_feature[, 2:length(test_feature)]
test_feature <- test_feature[,feature_index]
names(test_feature) <- feature_names
test_data <- cbind(test_subject, test_label, test_feature)
# Genearate Train data and label the variables
train_label <- read.csv('./UCI HAR Dataset/train/y_train.txt', header = FALSE)
names(train_label) <- c('activity')
train_subject <- read.csv('./UCI HAR Dataset/train/subject_train.txt', header = FALSE)
names(train_subject) <- c('subject')
train_feature <- data.frame(t(sapply(strsplit(readLines('./UCI HAR Dataset/train/X_train.txt'), '\\s+'), c)))
train_feature <- train_feature[, 2:length(train_feature)]
train_feature <- train_feature[,feature_index]
names(train_feature) <- feature_names
train_data <- cbind(train_subject, train_label, train_feature)
# Combine Test and Train data
data <- rbind(test_data, train_data)
# Generate names for activity vector
data$activity <- factor(data$activity, levels = c(1,2,3,4,5,6), 
                        labels=c('WALKING', 'WALKING_UPSTAIRS', 'WALKING_DOWNSTAIRS', 
                                 'SITTING', 'STANDING', 'LAYING'))
# Translate to numeric variables for measurements
for(i in 3:68) {
  data[, i] = as.numeric(as.character(data[, i]))
}
write.table(data, './full_data.txt', row.names = FALSE)
# Generate Tidy data set
tidy <- aggregate(.~subject + activity, data = data, mean)
write.table(tidy, './tidy.txt', row.names = FALSE)