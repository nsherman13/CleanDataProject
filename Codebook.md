Codebook for Run Analysis Tidy Dataset
Raw Data was collected from participants wearing Samsung Galaxy II while performing a variety of activities.

The purpose of this tidy dataset is to summarize the average values for all mean and standard deviation measurements per activity
and particpant. I have included a data dictionary and a high level set of steps in order to reproduce this dataset.
Note: All data values are grouped by Activity ID & Subject ID and are already normalized. This means there are no units
for any of the calculated values and all values are [-1,1]. In addition, any variable prefixed with a "t" is a time measured variable
while any prefixed with "f" are in the frequency domain.Please see features_info.txt for more information on all fields
as part of zip file or if there are question on how data was captured.

I have broken down this into Steps to Reproduce Results and a Data Dictionary.

Steps to Reproduce Results.

1) Rbind X_train.txt + X_test.txt
2) Rbind subject_train.txt + subject_test.txt
3) Rbind y_train.txt + y_test.txt.
4) Cbind (2),(3),(1) in that specific order.
5) Use grepl("mean",colnames((4)) and the same for "std" in order to filter out unnecessary columns. 
6) Aggregate by subject_ID and activity_id and apply mean function.
7) Merge activity_labels to data_frame(6) and remove activity_id label.
7) Rename columns as per data dictionary.
8) Observe results

Data Dictionary
"Activity": Name of Activity Performed as specified by activity_labels.txt. Valid Values are
 (WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING)
"SubjectID" : ID for participant. Valid values are from 1 to 30.                   
"tBodyAccMean.X" = mean body acceleration in the X axis per partcipant and activity. Valid values are from -1 to 1.              
"tBodyAccMean.Y" = mean body acceleration in the Y axis per participant and activity. Valid values are from -1 to 1.                
"tBodyAccMean.Z" = mean body acceleration in the z axis per participant and activity. Valid values are from -1 to 1.               
"tBodyAccStd.X" = mean standard dev body acceleration in the X axis per participant and activity. Valid values are from -1 to 1.                 
"tBodyAccStd.Y" = mean standard dev body acceleration in the Y axis per participant and activity. Valid values are from -1 to 1.                   
"tBodyAccStd.Z" = mean standard dev body acceleration in the Z axis per participant and activity. Valid values are from -1 to 1.                   
"tGravityAccMean.X" = mean gravity acceleration in the X axis per participant and activity. Valid values are from -1 to 1.               
"tGravityAccMean.Y" = mean gravity acceleration in the Y axis per participant and activity. Valid values are from -1 to 1.              
"tGravityAccMean.Z" = mean gravity acceleration in the Z axis per participant and activity. Valid values are from -1 to 1.              
"tGravityAccStd.X" =  mean standard deviation gravity acceleration in the X axis per participant and activity. Valid values are from -1 to 1.               
"tGravityAccStd.Y" =  mean standard deviation acceleration in the Y axis per participant and activity. Valid values are from -1 to 1                
"tGravityAccStd.Z" =  mean gravity acceleration in the Z axis per participant and activity. Valid values are from -1 to 1                
"tBodyAccJerkMean.X" = mean body acceleration jerk in the X axis per participant and activity. Valid values are from -1 to 1.
"tBodyAccJerkMean.Y" =  mean body acceleration jerk in the Y axis per participant and activity. Valid values are from -1 to 1.            
"tBodyAccJerkMean.Z" =  mean body acceleration jerk in the Z axis per participant and activity. Valid values are from -1 to 1.           
"tBodyAccJerkStd.X" =  mean standard deviation of body acceleration jerk in the X axis per participant and activity. Valid values are from -1 to 1.           
"tBodyAccJerkStd.Y" = mean standard deviation of body acceleration jerk in the Y axis per participant and activity. Valid values are from -1 to 1.  
"tBodyAccJerkStd.Z" = mean standard deviation of body acceleration jerk in the Z axis per participant and activity. Valid values are from -1 to 1.              
"tBodyGyroMean.X"  =  mean body gyro in the X axis per participant and activity.. Valid values are from -1 to 1.           
"tBodyGyroMean.Y" = mean body gyro in the Y axis per participant and activity. Valid values are from -1 to 1.               
"tBodyGyroMean.Z" = mean body gyro in the Z axis per participant and activity. Valid values are from -1 to 1.              
"tBodyGyroStd.X" = mean standard deviation body gyro in the X axis per particpant and activity. Valid values are from -1 to 1          
"tBodyGyroStd.Y" = mean standard deviation body gyro in the Y axis per participant and activity. Valid values are from -1 to 1.
"tBodyGyroStd.Z" = mean standard deviation body gyro in the Z axis per participant and activity. Valid values are from -1 to 1.               
"tBodyGyroJerkMean.X" = mean gyro jerk in the X axis per participant and activity. Valid values are from -1 to 1.
"tBodyGyroJerkMean.Y" = mean gyro jerk in the Y axis per participant and activity. Valid values are from -1 to 1.          
"tBodyGyroJerkMean.Z" = mean gyro jerk in the Z axis per participant and activity. Valid values are from -1 to 1.          
"tBodyGyroJerkStd.X" = mean standard deviation gyro jerk in the X axis per participant and activity. Valid values are from -1 to 1.          
"tBodyGyroJerkSTD.Y" = mean standard deviation gyro jerk in the Y axis per participant and activity. Valid values are from -1 to 1.           
"tBodyGyroJerkStd.Z" = mean standard deviation gyro jerk in the Z axis per participant and activity. Valid values are from -1 to 1.          
"tBodyAccMagMean"  = mean body acceleration mag per participant and activity. Valid values are from -1 to 1.           
"tBodyAccMagStd"  = mean standard deviation of body acceleration. Valid values are from -1 to 1.             
"tGravityAccMagMean" = mean gravity acceleration mag per participant and activity. Valid values are from -1 to 1.           
"tGravityAccMagStd" = mean standard deviation gravity acceleration mag per particpant and activity. Valid values from -1 to 1.             
"tBodyAccJerkMagMean" = mean body acceleration jerk mag per particpant and activity. Valid values are from -1 to 1.          
"tBodyAccJerkMagStd" = mean standard deviation body acceleration jerk mag per particpant and activity. Valid values are from -1 to 1.            
"tBodyGyroMagMean"  = mean body gyro mag per participant and activity. Valid values are from -1 to 1.         
"tBodyGyroMagStd"   = mean standard deviation gyro mag per participant and activity. Valid values are from -1 to 1.           
"tBodyGyroJerkMagMean" = mean body gyro jerk mag per particpant and activity. Valid values are from -1 to 1.         
"tBodyGyroJerkMagStd" = mean body gyro jerk mag per particpant and activity. Valid values are from -1 to 1.         
"fBodyAccMean.X"    = mean of body acceleration in X axis per participant and activity. Valid values are from -1 to 1.
"fBodyAccMean.Y"    = mean of body acceleration in Y axis per particpant and activity. Valid values are from -1 to 1.          
"fBodyAccMean.Z"    = mean of body acceleration in Z axis per participant and activity. Valid values are from -1 to 1.          
"fBodyAccStd.X"  = mean standard deviatio of body acceleration in X axis per particpant and activity. Valid values are from -1 to 1.               
"fBodyAccStd.Y"  = mean standard deviation  of body acceleration in Y axis per particpant and activity. Valid values are from -1 to 1.              
"fBodyAccStd.Z" =  mean standard deviation of body acceleration in Z axis per particpant and activity. Valid values are from -1 to 1.              
"fBodyAccMeanFreq.X" = mean frequency of body acceleration in X axis per particpant and activity. Valid values are from -1 to 1.           
"fBodyAccMeanFreq.Y" = mean frequency of body acceleration in Y axis per particpant and activity. Valid values are from -1 to 1.           
"fBodyAccMeanFreq.Z" = mean frequency of body acceleration in Z axis per particpant and activity. Valid values are from -1 to 1.           
"fBodyAccJerkMean.X" = mean of body acceleration jerk in X axis per particpant and activity. Valid values are from -1 to 1           
"fBodyAccJerkMean.Y"  = mean of body acceleration jerk in Y axis per particpant and activity. Valid values are from -1 to 1         
"fBodyAccJerkMean.Z" = mean of body acceleration jerk in Z axis per particpant and activity. Valid values are from -1 to 1           
"fBodyAccJerkStd.X"   = mean standard deviation of body acceleration jerk in X axis per particpant and activity. Valid values are from -1 to 1          
"fBodyAccJerkStd.Y"   = mean standard deviation of body acceleration jerk in Y axis per particpant and activity. Valid values are from -1 to 1         
"fBodyAccJerkStd.Z" = mean standard deviation of body acceleration jerk in Z axis per particpant and activity. Valid values are from -1 to 1           
"fBodyAccJerkMeanFreq.X" = mean frequency of body acceleration jerk in X axis per particpant and activity. Valid values are from -1 to 1       
"fBodyAccJerkMeanFreq.Y" = mean frequency of body acceleration jerk in Y axis per particpant and activity. Valid values are from -1 to 1              
"fBodyAccJerkMeanFreq.Z" = mean frequency of body acceleration jerk in Z axis per particpant and activity. Valid values are from -1 to 1            
"fBodyGyroMean.X" = mean body gyro in X axis per particpant and activity. Valid values are from -1 to 1.                     
"fBodyGyroMean.Y" = mean body gyro in Y axis per particpant and activity. Valid values are from -1 to 1.              
"fBodyGyroMean.Z" = mean body gyro in Z axis per particpant and activity. Valid values are from -1 to 1.            
"fBodyGyroStd.X"  = mean standard deviation body gyro in X axis per participant and activity. Valid values are from -1 to 1.            
"fBodyGyroStd.Y"  = mean standard deviation body gyro in Y axis per participant and activity. Valid values are from -1 to 1.             
"fBodyGyroStd.Z" = mean standard deviation body gyro in Z axis per participant and activity. Valid values are from -1 to 1.             
"fBodyGyroMeanFreq.X" mean body gyro frequency in X axis per particpant and activity. Valid values are from -1 to 1.          
"fBodyGyroMeanFreq.Y"  = mean body gyro frequency in Y axis per particpant and activity. Valid values are from -1 to 1.         
"fBodyGyroMeanFreq.Z" = mean body gyro frequency in Z axis per particpant and activity. Valid values are from -1 to 1.         
"fBodyAccMagMean" = mean body acceleration mag per particpant and activity. Valid values are from -1 to 1.              
"fBodyAccMagStd" = mean standard deviation body acceleration mag per particpant and activity. Valid values are from -1 to 1.             
"fBodyAccMagMeanFreq"  = mean body acceleration mag mean Freq in X axis per particpant and activity. Valid values are from -1 to 1.        
"fBodyBodyAccJerkMagMean" = mean body acceleration jerk mag in X axis per particpant and activity. Valid values are from -1 to 1.      
"fBodyBodyAccJerkMagStd" = mean standard deviation of bodybody acceleration jerk mag per participant and activity. Values are from -1 to 1.       
"fBodyBodyAccJerkMagMeanFreq" = mean frequency of bodybody acceleration jerk mag per particpant and activity. Valid values are from -1 to 1.
"fBodyBodyGyroMagMean" = mean of bodybody gyro mag per participant and activity. Valid values are from -1 to 1.      
"fBodyBodyGyroMagStd" = mean standard deviation of bodybody gyro mag. Valid values are from -1 to 1.
"fBodyBodyGyroMagMeanFreq" = mean frequency of bodybody gyro mag. Valid values are from -1 to 1.  
"fBodyBodyGyroJerkMagMean" = mean  of bodybody gyro jerk mag. Valid values are from -1 to 1.   
"fBodyBodyGyroJerkMagStd" = mean standard deviation of bodybody gyro jerk mag. Valid values are from -1 to 1.
"fBodyBodyGyroJerkMagMeanFreq" = mean frequency of bodybody gyro jerk mag. Valid values are from -1 to 1.



