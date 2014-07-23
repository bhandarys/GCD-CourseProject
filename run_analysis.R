## Read the data set and bind them to create a single set x_Cons
x_train <- read.table("C:\\R\\UCI HAR Dataset\\train\\X_train.txt")
x_test <- read.table("C:\\R\\UCI HAR Dataset\\test\\X_test.txt")
x_Cons <- rbind(x_train, x_test)

# remove variables from memory
remove(x_train, x_test)

## Read faetures and add them as column names
Features <- read.table("C:\\R\\UCI HAR Dataset\\features.txt")
colnames(x_Cons) <- t(Features[,2])
remove(Features)

#Create temp variables containing only means (with out meanFreq) and std
# & merge with original dataset
tempMeanVals <- x_Cons[, grep("mean", colnames(x_Cons))]
tempMeanVals <- tempMeanVals[, -grep("meanFreq", colnames(tempMeanVals))]
tempStdVals <- x_Cons[, grep("std", colnames(x_Cons))]
DataSet <- cbind(tempMeanVals, tempStdVals)
remove(tempMeanVals, tempStdVals, x_Cons)

# Read subject and merge with dataset
sub_train <- read.table("C:\\R\\UCI HAR Dataset\\train\\subject_train.txt")
sub_test <- read.table("C:\\R\\UCI HAR Dataset\\test\\subject_test.txt")
sub_Cons <- rbind(sub_train, sub_test)
colnames(sub_Cons) <- ("Subject")
DataSet <- cbind(sub_Cons, DataSet)
remove(sub_train, sub_test, sub_Cons)

# Read labels and replace with bind them
y_train <- read.table("C:\\R\\UCI HAR Dataset\\train\\y_train.txt")
y_test <- read.table("C:\\R\\UCI HAR Dataset\\test\\y_test.txt")
y_Cons <- rbind(y_train, y_test)
colnames(y_Cons) <- c("Activity")
#remove(y_test, y_train)

# Read activity labels and replace the values with labels. Merge with DataSet
Activities <- read.table("C:\\R\\UCI HAR Dataset\\activity_labels.txt")
y_Cons <- apply(y_Cons, MARGIN = 2, FUN = function(x) y_Cons[x,1] = Activities[x,2])
##y_Cons <- as.data.frame(y_Cons)
DataSet <- cbind(y_Cons, DataSet)

#Save DataSet
#remove(Activities, y_Cons)
write.table(DataSet, "C:\\R\\UCI HAR Dataset\\DataSet.txt", row.names=FALSE, col.names = TRUE)

# Aggregate the dataset based on Subject & Activity and Function, mean
TidySet <- aggregate(DataSet, by=list(DataSet$Subject, DataSet$Activity), FUN = mean, na.rm=FALSE)

# Remove additional columns and rename appropriatly
TidySet<-TidySet[-grep("Group.1", colnames(TidySet))]
##TidySet<-TidySet[-grep("Group.2", colnames(TidySet))]
TidySet<-TidySet[-grep("Activity", colnames(TidySet))]
colnames(TidySet)[1] <- "Activity"

# Save the tidy set
write.table(TidySet, "C:\\R\\UCI HAR Dataset\\TidySet.txt", row.names=FALSE, col.names = TRUE)