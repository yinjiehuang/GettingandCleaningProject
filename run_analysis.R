## This is the script file preprocessing UCI Human Activity Recoginition Using Smartphones Dataset
## First of all, let's read in data
train <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainL <- read.table("./UCI HAR Dataset/train/y_train.txt")
train_s <- read.table("./UCI HAR Dataset/train/subject_train.txt")
test <- read.table("./UCI HAR Dataset/test/X_test.txt")
testL <- read.table("./UCI HAR Dataset/test/y_test.txt")
test_s <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## Let's merge train and test with their corresponding lables
data <- rbind(cbind(train_s, trainL, train), cbind(test_s, testL, test))

## Read in the feature names
features <- read.table("./UCI HAR Dataset/features.txt")
# Extract index of features contains mean() or std()
temp <- as.character(features[, 2])
index <- sort(c(grep("mean", temp),grep("std()", temp)))
mydata <- data[, c(1, 2, index + 2)]

## Use descriptive names to name the activities
names <- c("subject", "label", temp[index])
names(mydata) <- names

## Label the data with descriptive variable names
mydata$label <- factor(mydata$label, levels = c(1, 2, 3, 4, 5, 6), labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

## Finally, let's write the data as txt file
## Let's use reshape2 library
library(reshape2)
mdata <- melt(mydata, id = c("subject", "label"))
tidydata <- dcast(mdata, subject + label ~ variable, mean)
write.table(tidydata, file = "data.txt", row.name = FALSE)