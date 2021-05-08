# Getting-and-Cleaning-Data-Project
### Submission for Coursera project

This script assumes that the dataset exists in the same directory as the script -

```  
  (dir) Getting and Cleaning Data __
                        ____________\____________
                       |                         |
             (script) run_analysis.R      (dir) UCI HAR Dataset
```

* The script initally loads all the data available in different variables. (For a description of all the variables used in the script, pleaes check CodeBook.md file.)
* It then combines all the available data to build a complete dataset under a variable "Dataset."
* Once a complete data set is built, the script extracts a dataset with only the measurements on the mean and standard deviation for each measurement. 
* After that, it groups the dataset extDataset by Subject.ID and Activity.Label variables.
* The grouped data at last is summarised using `dplyr::summarise_all()` function to return a tidy data set with the average of each variable for each activity and each subject from extDataset.


Note: All the datasets are loaded and printed as a [tibble](https://tibble.tidyverse.org/).
