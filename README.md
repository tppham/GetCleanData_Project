GetCleanData_Project
====================

Source code for project under Coursera "Getting and Cleaning Data"

##Steps to reproduce the result

1. Clone the repo to your local directory
2. Set working directory of R application or R studio as the downloaded directory
3. Run > source("run_analysis.R")
       > run_analysis()
4. The "tidydata.txt" will be generated in the working directory.


##How it works
###**Extract feature names that contain mean and standard deviation for each measurement**. 
+ Feature names are extracted from feature.txt . First we load feature.txt into R
+ Search for elements that containt word "mean" or "std" and stored as **anames**
### **Extract records from Train and Test directory.**
+ read subject_test.txt as subjectId data
+ read X_test.txt as feature data
+ read y_test.txt as activity data
+ Based on list of prefered feature names extracted earlier, we subset feature data
+ Update column names of feature with fnames for a meaningful column name
+ use cbind to combine subjectid, activity and feature data
### **Combine test and train data into one dataset**
+ Use rbind to comebind earlier data from test and train folder call **output**

### **Change activity variable into descriptive value**
+ replace value of activity column by chracter provided in features.txt

### **creation of tidy dataset**
+ create a column name subjectactivity using paste(subjectId , activity)
+ using reshape library, melt the data with variables as fnames
+ using dcast to cast melted data with subjectactivity ~ variable and mean funtion to get the mean of each measurement for each activity and each subject
+ use write.table to export the result into tidydata.txt
