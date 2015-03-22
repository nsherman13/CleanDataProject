# CleanDataProject
The run analysis script reads, combines and filters on specific columns to create a tidy dataset. I have broken it down by assumptions and data transformation strategy.

Assumptions
1) Zip extracted to working directory and I maintained folder structure. I changed "UCI HAR" .... to data to simplify reading tables.
2) I included all columns that ended with mean or meanFreq or std, because these columns were all average or standard deviation measurements.

Data Transformation Strategy
1) Load measurement(x_train,x_test),activity(y_train,y_test),subject(subject_train,subject_test) and merge respectively using rbind.(Example: merged_measurements = rbind(x_train,x_test). Also loaded activity_labels and features.
2) Used features as a basis for initial column names for final dataset.
3) Combined measurements, activity and subject data and filtered to only include columns with mean or std in their name.
4) Aggregated data by subject ID and activity and calculated mean value on grouped data.
5) Combined activity_labels to translate 1,2,3,4,5,6 to their appropriate activity.
6) Modified Names of columns of tidy data set

