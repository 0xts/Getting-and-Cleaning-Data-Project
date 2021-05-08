### **Code Book**

The script takes all the data and builds a dataset with all the subject labels, activity labels, inertial signals, training data and testing data.

### **Variables**

*Dataset* - A complete data set that constitues of all the features, trainig data, testing data, Intertial signals, activity label, subject label.
*extDataset* - A dataset extracted from complete dataset "Dataset," which contains all the mean and standard deviation measurements.
*avgDataset* - A dataset created from extDataset, which summarizes the average of each variable (from extDataset) for each activity and each subject.

***Other variables that were used in the scipt were removed from the environment by the completion of the script. Below is a list of all those variables***

*activities* - Variable containing "activity_labels.txt" data

*features* - Variable containing "features.txt" data

*subTrain* - Variable containing "subject_train.txt" data

*xTrain* - Variable containing "x_train.txt" data

*yTrain* - Variable containing "y_train.txt" data

*bodyAccX_Train* - Variable containing "body_acc_x_train.txt" data

*bodyAccY_Train* - Variable containing "body_acc_y_train.txt" data

*bodyAccZ_Train* - Variable contating "body_acc_z_train.txt" data

*bodyGyroX_Train* - Variable containing "body_gyro_x_train.txt" data

*bodyGyroY_Train* - Variable containing "body_gyro_y_train.txt" data

*bodyGyroZ_Train* - Variable containing "body_gyro_z_train.txt" data

*tAccX_Train* - Variable containing "total_acc_x_train.txt" data

*tAccY_Train* - Variable containing "total_acc_y_train.txt" data

*tAccZ_Train* - Variable containing "total_acc_z_train.txt" data

*trainDataset* - Variable containing a dataset made by combining all the available training data

*subTest* - Variable containing "subject_test.txt" data

*xTest* - Variable containing "x_test.txt" data

*yTest* - - Variable containing "y_test.txt" data

*bodyAccX_Test* - Variable containing "body_acc_x_test.txt" data

*bodyAccY_Test* - Variable containing "body_acc_y_test.txt" data

*bodyAccZ_Test* - Variable containing "body_acc_z_test.txt" data

*bodyGyroX_Test* - Variable containing "body_gyro_x_test.txt" data

*bodyGyroY_Test* - Variable containing "body_gyro_y_test.txt" data

*bodyGyroZ_Test* - Variable containing "body_gyro_z_test.txt" data

*tAccX_Test* - Variable containing "total_acc_x_test.txt" data

*tAccY_Test* - Variable containing "total_acc_y_test.txt" data

*tAccZ_Test* - Variable containing "total_acc_z_test.txt" data

*testDataset* - Variable containing a dataset made by combining all the available testing data

*i* - Variable used for intermediate calculations

*c* - Variable used for intermediate calculations


### Summary

The script automatically prints Dataset, extDataset and avgDataset, where, Dataset is dereived from the all the available data using cbind and rbind functions.
extDataset is extracted from Dataset using subsetting using square brackets [].
avgDataset is calculated by evaluating a summary on a grouped extDataset, grouped using group_by() function on Activity.Label and Subject.Label 
