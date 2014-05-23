#Getting and Cleaning Data
#peer assessment W3
#Libardo Lopez

#step0 Preprocessing
#Dowload the data for the project: 
#Source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

setwd("F:/2014/Coursera/Data Science/Getting Clening Data/Week 3/Project_W3/peer_assessment/UCI HAR Dataset/")

# mark variables containing "mean" or "std" from features.txt
features <- read.table("./features.txt", quote="\"")
features_related = grepl("mean|std",features$V2)
#table(features_related) ## execute upon...
#features_related
#FALSE  TRUE 
#482    79 

# activity labels
activity_labels <- read.table("./activity_labels.txt")

#prepare the train and test datasets to merge
# TRAINING DATASET
# load train data raw
X_train <- read.table("./train/X_train.txt")
#str(X_train) ## execute upon...
#'data.frame':        7352 obs. of  561 variables:
#$ V1  : num  0.289 0.278 0.28 0.279 0.277 ...
#$ V2  : num  -0.0203 -0.0164 -0.0195 -0.0262 -0.0166 ...
#$ V3  : num  -0.133 -0.124 -0.113 -0.123 -0.115 ...

# mantain just related variables, work version
X_train_wk <- X_train[,features_related]
#str(X_train_wk) ## execute upon...
#'data.frame':        7352 obs. of  79 variables:
#$ V1  : num  0.289 0.278 0.28 0.279 0.277 ...
#$ V2  : num  -0.0203 -0.0164 -0.0195 -0.0262 -0.0166 ...
#$ V3  : num  -0.133 -0.124 -0.113 -0.123 -0.115 ...

# column names related
colnames(X_train_wk) <- features$V2[features_related]
y_train <- read.table("./train/y_train.txt")

# identifier variable and call variable "ID"
id_train <- read.table("./train/subject_train.txt")
colnames(id_train) <- c("ID")

# activity labels
X_train_wk$activity_label <- activity_labels[y_train$V1,2]

# Read in activity variables
X_train_wk$ID <- id_train$ID
#View(X_train_wk) ## execute upon...
#str(X_train_wk) ## execute upon...
#'data.frame':        7352 obs. of  81 variables:
#$ tBodyAcc-mean()-X              : num  0.289 0.278 0.28 0.279 0.277 ...
#$ tBodyAcc-mean()-Y              : num  -0.0203 -0.0164 -0.0195 -0.0262 -0.0166 .

# TEST DATASET

# load test data raw
X_test <- read.table("./test/X_test.txt")

# mantain just related variables, work version
X_test_wk <- X_test[,features_related]

#  related column names
colnames(X_test_wk) <- features$V2[features_related]

y_test <- read.table("./test/y_test.txt")

# identifier variable and call variable "ID"
id_test <- read.table("./test/subject_test.txt")
colnames(id_test) <- c("ID")

# Attach activity label variable to main dataset
X_test_wk$activity_label <- activity_labels[y_test$V1,2]

#Attach idenitifier variable to main dataset
X_test_wk$ID <- id_test$ID
#View(X_test_wk) ## execute upon...
#str(X_test_wk) ## execute upon...
#'data.frame':        2947 obs. of  81 variables:
#$ tBodyAcc-mean()-X              : num  0.257 0.286 0.275 0.27 0.275 ...
#$ tBodyAcc-mean()-Y              : num  -0.0233 -0.0132 -0.0261 -0.0326 -0.0278 .

# merge train and test data sets; summarize it by means by ID and activity_label
alldata <- rbind(X_train_wk, X_test_wk)
write.csv(alldata, "./alldata.csv")

library(plyr)
tidy_data <- ddply(alldata, c("ID","activity_label"), colwise(mean))
#View(tidy_data) ## execute upon...
#str(tidy_data) ## execute upon...
#'data.frame':        180 obs. of  81 variables:
#$ ID                             : int  1 1 1 1 1 1 2 2 2 2 ...
#$ activity_label                 : Factor w/ 6 levels "LAYING","SITTING",..: 1 2 3 4 5 NA 1 2 3 4 ...

# Write tidy_data.csv dataset
write.csv(tidy_data, "./tidy_data.csv")