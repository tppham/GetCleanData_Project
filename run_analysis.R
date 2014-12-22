run_analysis <- function() {
	
	#Read column name of feature based on feature.txt
	fnames <- read.table("rawdata/features.txt")
	
	#extract feature names that contain string "mean" or "std"
	fnames <- fnames[grepl("mean",fnames[,2]) == TRUE | grepl("std",fnames[,2]), ]
	
	#Read column name of activity based on activity_labels.txt
	anames <- read.table("rawdata/activity_labels.txt")
	
	#Extract data from test data
	testdata <- extract_data(fnames,"rawdata/test/subject_test.txt", "rawdata/test/X_test.txt", "rawdata/test/y_test.txt")
	
	#Extract data from train data
	traindata <- extract_data(fnames,"rawdata/train/subject_train.txt", "rawdata/train/X_train.txt", "rawdata/train/y_train.txt")
	
	#combine test data and train data into one dataset
	output <- rbind(testdata,traindata)
	?
	#use descriptive activity names for activity in dataset
	output$activity <- anames[output$activity,2]
	
	#write the output into tidydata.txt 
	write.table(output,file="tidydata.txt", row.names=FALSE)
    
    output
}

## Function extract_data will take three files as input for the extraction.
## INPUT:  featurename and three files include: 
## 1. fname: list of feature name to subset
## 2. subjectfile stores the id of participant (e.g subject_test.txt)
## 3. featurefile stores stores the measurement captured (e.g. x_test.txt)
## 4. activitiesfile stores the activities that participant do such as: walking, standing, laying, ... (e.g. y_test.txt)
## OUTPUT: data frame store subject_id, activities, mean and standard devication for each measure
extract_data <- function(fnames, subjectfile, featurefile, activitiesfile) {
	#Read subject, activity and feature data into R
	subject <- read.table(subjectfile)
	activity <- read.table(activitiesfile)
	feature <- read.table(featurefile)
	
	#Extract feature data that contain data about mean and std of each measurement feature data 
	feature <- feature[,fnames[,1]]
	
	#Change column names of feature data based on name extracted from features.txt file
	colnames(feature) <- fnames[,2]
	
		
	#Change column names of subject data, activity data
	colnames(subject) <- "subjectId"
	colnames(activity) <- "activity"
	
	#combine 3 dataframe as output
	output <-cbind(subject, activity, feature)
	
    #average each variable for each activity and each subject
    library(reshape2)
    output$subjectactivity <- paste(output$subjectId, output$activity)
    outputmelt <- melt(output, id="subjectactivity", measure.vars = fnames[,2])
    outputcast <- dcast(outputmelt, subjectactivity ~ variable, mean)
    
    #write data to tidydata.txt
    write.table(outputcast, file="tidydata.txt")
    
	
}