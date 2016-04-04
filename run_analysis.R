# MAKE SURE THIS FILE IS IN THE SAME DIRECTORY AS THE UCI HAR DATASET AND SET WORKING DIRECTORY TO THIS DIRECTORY
# Import dplyr package
library(dplyr)
# Get directory such that the R script is in the UCI HAR Dataset

dir <- getwd()
# The activity labels and the features text file is read to R using the read.table function

activity_labels <- read.table("activity_labels.txt", header = FALSE)
features <- read.table("features.txt", header = FALSE)
# Change directory to test
setwd("test")
# Read into table, the file with all the measurements for test, the activity and the volunteer ID
x_test <- read.table("x_test.txt", header = FALSE)
y_test <- read.table("y_test.txt", header = FALSE)
subject_test <- read.table("subject_test.txt", header = FALSE)
setwd(dir)
# Change directory to train
setwd("train")

# Read into table, the file with all the measurements for train, the activity and the volunteer ID

x_train <- read.table("x_train.txt", header = FALSE)
y_train <- read.table("y_train.txt", header = FALSE)
subject_train <- read.table("subject_train.txt", header = FALSE)

#Step 1: Combine data for test and train but independently to contain any memory problems.
recognition_data <- rbind(x_test, x_train)
Activity <- rbind(y_test, y_train)
Subject <- rbind(subject_test, subject_train)

# Step 4: Appropriate labeling of variable names
features <- gsub("\\()", "", features[ , 2])
features <- gsub("^f", "frequency_", features)
features <- gsub("^t", "time_", features)
features <- gsub("*BodyBody", "Body_", features)
features <- gsub("*Gyro", "Gyro_", features)

#  Applying column names to the consolidated file

names(recognition_data) <- features
# Step 2: Extract measurement on the mean an standard deviation for each measurement

recognition_data_mean_set <- subset(recognition_data, select = c(grep("[Mm]ean", names(recognition_data))))
recognition_data_std_set <- subset(recognition_data, select = c(grep("[Ss]td", names(recognition_data))))

#Step 2: Combine the above to obtain the consolidated data set

recognition_data_consolidated <- cbind(recognition_data_mean_set, recognition_data_std_set)
names(Activity) <- "Activity"
names(Subject) <- "Volunteer_ID"
recognition_data_consolidated <- cbind(recognition_data_consolidated, Activity, Subject)

# Step 3: Name Activity Column with meaningful names from the Activity file
recognition_data_consolidated[ ,87] <- activity_labels[ ,2][match(recognition_data_consolidated$Activity, activity_labels[,1])]

# Step 5: Create a tidy set with the average of each variable for each activity and Volunteer ID (subject)

df1 <- recognition_data_consolidated %>% group_by(Activity, Volunteer_ID) %>% summarise_each(funs(mean))
setwd(dir)

# Part of Step 4: Output a csv file with the tidy data set.
write.csv(df1, "recognition_data_tidy.csv")

