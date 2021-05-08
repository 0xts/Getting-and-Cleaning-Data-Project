# This script assumes that the dataset exists in the same directory as the script
#
#  (dir) Getting and Cleaning Data __
#                        ____________\____________
#                       |                         |
#             (script) run_analysis.R      (dir) UCI HAR Dataset
#

# Cleaning environment and console
rm(list = ls()); cat("\014");

cat("Building a complete dataset, Please wait...");

# Activities: 6 (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
activities <- read.table("./UCI HAR Dataset/activity_labels.txt");

# Features: 561 features in total
features <- read.table("./UCI HAR Dataset/features.txt");

# Loading training dataset
subTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "Subject ID");

xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = features$V2);
yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "Activity Label");

bodyAccX_Train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt");
bodyAccX_Train <- as.data.frame(rowSums(bodyAccX_Train, dims = 1)); names(bodyAccX_Train) <- "total_bodyAccX";

bodyAccY_Train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt");
bodyAccY_Train <- as.data.frame(rowSums(bodyAccY_Train, dims = 1)); names(bodyAccY_Train) <- "total_bodyAccY";

bodyAccZ_Train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt");
bodyAccZ_Train <- as.data.frame(rowSums(bodyAccZ_Train, dims = 1)); names(bodyAccZ_Train) <- "total_bodyAccZ";

bodyGyroX_Train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt");
bodyGyroX_Train <- as.data.frame(rowSums(bodyGyroX_Train, dims = 1)); names(bodyGyroX_Train) <- "total_bodyGyroX";

bodyGyroY_Train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt");
bodyGyroY_Train <- as.data.frame(rowSums(bodyGyroY_Train, dims = 1)); names(bodyGyroY_Train) <- "total_bodyGyroY";

bodyGyroZ_Train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt");
bodyGyroZ_Train <- as.data.frame(rowSums(bodyGyroZ_Train, dims = 1)); names(bodyGyroZ_Train) <- "total_bodyGyroZ";

tAccX_Train <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt");
tAccX_Train <- as.data.frame(rowSums(tAccX_Train, dims = 1)); names(tAccX_Train) <- "total_tAccX";

tAccY_Train <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt");
tAccY_Train <- as.data.frame(rowSums(tAccY_Train, dims = 1)); names(tAccY_Train) <- "total_tAccY";

tAccZ_Train <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt");
tAccZ_Train <- as.data.frame(rowSums(tAccZ_Train, dims = 1)); names(tAccZ_Train) <- "total_tAccZ";

# Building training dataset
trainDAtaset <- cbind(subTrain, yTrain, bodyAccX_Train, bodyAccY_Train, bodyAccZ_Train, bodyGyroX_Train, bodyGyroY_Train,
                      bodyGyroZ_Train, tAccX_Train, tAccY_Train, tAccZ_Train, xTrain);

# Removing all the variables from the environment to save space
rm(subTrain, yTrain,bodyAccX_Train, bodyAccY_Train, bodyAccZ_Train, bodyGyroX_Train, bodyGyroY_Train, bodyGyroZ_Train, 
   tAccX_Train, tAccY_Train, tAccZ_Train, xTrain);

# Loading and building testing dataset
subTest <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "Subject ID");

xTest <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = features$V2);
yTest <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "Activity Label");

bodyAccX_Test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt");
bodyAccX_Test <- as.data.frame(rowSums(bodyAccX_Test, dims = 1)); names(bodyAccX_Test) <- "total_bodyAccX";

bodyAccY_Test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt");
bodyAccY_Test <- as.data.frame(rowSums(bodyAccY_Test, dims = 1)); names(bodyAccY_Test) <- "total_bodyAccY";

bodyAccZ_Test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt");
bodyAccZ_Test <- as.data.frame(rowSums(bodyAccZ_Test, dims = 1)); names(bodyAccZ_Test) <- "total_bodyAccZ";

bodyGyroX_Test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt");
bodyGyroX_Test <- as.data.frame(rowSums(bodyGyroX_Test, dims = 1)); names(bodyGyroX_Test) <- "total_bodyGyroX";

bodyGyroY_Test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt");
bodyGyroY_Test <- as.data.frame(rowSums(bodyGyroY_Test, dims = 1)); names(bodyGyroY_Test) <- "total_bodyGyroY";

bodyGyroZ_Test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt");
bodyGyroZ_Test <- as.data.frame(rowSums(bodyGyroZ_Test, dims = 1)); names(bodyGyroZ_Test) <- "total_bodyGyroZ";

tAccX_Test <- read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt");
tAccX_Test <- as.data.frame(rowSums(tAccX_Test, dims = 1)); names(tAccX_Test) <- "total_tAccX";

tAccY_Test <- read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt");
tAccY_Test <- as.data.frame(rowSums(tAccY_Test, dims = 1)); names(tAccY_Test) <- "total_tAccY";

tAccZ_Test <- read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt");
tAccZ_Test <- as.data.frame(rowSums(tAccZ_Test, dims = 1)); names(tAccZ_Test) <- "total_tAccZ";

# Building test dataset
testDataset <- cbind(subTest, yTest, bodyAccX_Test, bodyAccY_Test, bodyAccZ_Test, bodyGyroX_Test, bodyGyroY_Test,
                     bodyGyroZ_Test, tAccX_Test, tAccY_Test, tAccZ_Test, xTest);
# Removing all the variables from the environment to save space
rm(subTest, yTest, bodyAccX_Test, bodyAccY_Test, bodyAccZ_Test, bodyGyroX_Test, bodyGyroY_Test,
   bodyGyroZ_Test, tAccX_Test, tAccY_Test, tAccZ_Test, xTest);

# Combinig Test and Training dataset
Dataset <- rbind(trainDAtaset, testDataset);
Dataset <- dplyr::as_tibble(Dataset);

for(i in activities$V1){
     c<-grep(i, Dataset$Activity.Label);
     Dataset$Activity.Label[c] <- activities$V2[i];
}

# Cleaning all the unnecessary variables
rm(activities, features, testDataset, trainDAtaset, c, i);

# Printing Dataset
cat("\n\nA complete dataset is ready and is stored in a variable named \"Dataset\". It contains 572 variable and 10299 observations. It constitutes of all the features, trainig data, testing data, Intertial signals, activity label, subject label.\n\n")
print(Dataset);

invisible(readline(prompt="\nPress [enter] to continue\n\n"));

# Extracting measurements on the mean and standard deviation for each statement
c <- grep("*mean*|*std*", names(Dataset)); c <- c(1,2,c);
extDAtaset <- Dataset[,c]; rm(c);

# Printing extracted dataset
cat("Extraction of a dataset with mean and standard deviation measurements is complete and is stored in a variable \"extDataset\".\n\n");
print(extDAtaset);

invisible(readline(prompt="\nPress [enter] to continue\n\n"));

# Buildiing a dataset with the average of each variable for each activity and each subject.
avgDataset <- dplyr::group_by(extDAtaset, Subject.ID, Activity.Label);
avgDataset <- dplyr::summarise_all(avgDataset, mean);

# Printing avg dataset
cat("Here's a dataset with the average of each variable for each activity and each subject, stored in a variable \"avgDataset\"\n\n");
print(avgDataset)
