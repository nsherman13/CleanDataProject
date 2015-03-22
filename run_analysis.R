run_analysis <- function(){
  #merge all measurement data
  x_train <- read.table("./data/train/X_train.txt")
  x_test <- read.table("./data/test/x_test.txt")
  merged_measurements <- rbind(x_train,x_test)
  # read and merge all subject and activites data
  y_train <- read.table("./data/train/y_train.txt")
  y_test <- read.table("./data/test/y_test.txt")
  merged_activities <- rbind(y_train,y_test)
  subject_train <- read.table("./data/train/subject_train.txt")
  subject_test <- read.table("./data/test/subject_test.txt")
  merged_subjects <- rbind(subject_train,subject_test)
  activity_labels <- read.table("./data/activity_labels.txt")
  features <- read.table("./data/features.txt")
  features <- features[,2]
  colnames(merged_subjects) <- c("Subject_ID")
  colnames(merged_activities) <- c("Activity_ID")
  colnames(activity_labels) <- c("Activity_ID","Activity_Name")
  colnames(merged_measurements) <- features
  all_data_merged <- cbind(merged_subjects,merged_activities,merged_measurements)
  #filter on subject,activity and any columns that have the word mean or std in
  cols_with_mean <- grepl("mean()",colnames(all_data_merged))
  cols_with_std <- grepl("std()",colnames(all_data_merged))
  filtered_data <- cbind(all_data_merged[,1:2],all_data_merged[,cols_with_mean | cols_with_std])
  filtered_data_with_activity_labels <- merge(activity_labels,filtered_data)
  #remove activity_id from dataframe
  filtered_data_with_activity_labels <- filtered_data_with_activity_labels[,2:ncol(filtered_data_with_activity_labels)]
  final_dataset <- aggregate(filtered_data[,3:ncol(filtered_data_with_activity_labels)],filtered_data_with_activity_labels[,1:2],mean)
  #rename all columns
  colnames(final_dataset) <- c(
"Activity",                 "SubjectID",                    "tBodyAccMean.X",              
"tBodyAccMean.Y",               "tBodyAccMean.Z",               "tBodyAccStd.X",               
"tBodyAccStd.Y",                "tBodyAccStd.Z",               "tGravityAccMean.X",           
"tGravityAccMean.Y",            "tGravityAccMean.Z",            "tGravityAccStd.X",            
"tGravityAccStd.Y",             "tGravityAccStd.Z",             "tBodyAccJerkMean.X",          
"tBodyAccJerkMean.Y",           "tBodyAccJerkMean.Z",           "tBodyAccJerkStd.X",          
"tBodyAccJerkStd.Y",            "tBodyAccJerkStd.Z",            "tBodyGyroMean.X",             
"tBodyGyroMean.Y",              "tBodyGyroMean.Z",              "tBodyGyroStd.X",              
"tBodyGyroStd.Y",               "tBodyGyroStd.Z",               "tBodyGyroJerkMean.X",         
"tBodyGyroJerkMean.Y",          "tBodyGyroJerkMean.Z",          "tBodyGyroJerkStd.X",          
"tBodyGyroJerkSTD.Y",           "tBodyGyroJerkStd.Z",           "tBodyAccMagMean",             
"tBodyAccMagStd",               "tGravityAccMagMean",           "tGravityAccMagStd",           
"tBodyAccJerkMagMean",          "tBodyAccJerkMagStd",           "tBodyGyroMagMean",            
"tBodyGyroMagStd",              "tBodyGyroJerkMagMean",         "tBodyGyroJerkMagStd",         
"fBodyAccMean.X",               "fBodyAccMean.Y",               "fBodyAccMean.Z",              
"fBodyAccStd.X",                "fBodyAccStd.Y",                "fBodyAccStd.Z",               
"fBodyAccMeanFreq.X",           "fBodyAccMeanFreq.Y",          "fBodyAccMeanFreq.Z",          
"fBodyAccJerkMean.X",           "fBodyAccJerkMean.Y",           "fBodyAccJerkMean.Z",          
"fBodyAccJerkStd.X",            "fBodyAccJerkStd.Y",            "fBodyAccJerkStd.Z",           
"fBodyAccJerkMeanFreq.X",       "fBodyAccJerkMeanFreq.Y",       "fBodyAccJerkMeanFreq.Z",      
"fBodyGyroMean.X",              "fBodyGyroMean.Y",              "fBodyGyroMean.Z",             
"fBodyGyroStd.X",               "fBodyGyroStd.Y",               "fBodyGyroStd.Z",              
"fBodyGyroMeanFreq.X",          "fBodyGyroMeanFreq.Y",          "fBodyGyroMeanFreq.Z",         
"fBodyAccMagMean",              "fBodyAccMagStd",               "fBodyAccMagMeanFreq",         
"fBodyBodyAccJerkMagMean",      "fBodyBodyAccJerkMagStd",       "fBodyBodyAccJerkMagMeanFreq", 
"fBodyBodyGyroMagMean",         "fBodyBodyGyroMagStd",         "fBodyBodyGyroMagMeanFreq",    
"fBodyBodyGyroJerkMagMean",     "fBodyBodyGyroJerkMagStd",     "fBodyBodyGyroJerkMagMeanFreq"
)
  
return(final_dataset)  
  
  
  
}