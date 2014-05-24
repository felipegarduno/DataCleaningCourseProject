#Codebook
This codebook explains the script run_analysis.R that does the cleaning and merging of the train data set and test data set provided by the url https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. Also explains the variables that conforms the final data set.

##Run_analysis.R
The first three lines are used to read the files “X_test.txt”, “subject_test.txt” and “y_test.txt” that are contained in the “train” folder and keep the data sets in data frames with the names testdata, subjecttest and labeltest respective. The “X_test.txt” is a data set with the measures of the 561 variables explained in the “features.txt”; the “subject_test.txt” is a data set that identifies the subject that was carry the device; the “y_labels.txt” is a data set that has the coded activity that the subject was performing, the codes for the activities can be found in the “activity_labels.txt” file. The “features.txt” and “activity_labels.txt” are contained in the zip file download from the url above.

The 4th line reads the “features.txt” file that contains the names of the 561 variables of the “X_test.txt”, so in the 5th line the names are attached to the testdata data set. 
The 6-7 lines simply assign names to the variables Activiy and Subject of their respective data frames.
The 8th line joins the testdata data frame, the subjecttest data frame and the labeltest data frames.

The lines 9-15 does the same work with the data sets contained in the “test” folder.
The 16th line of code join the data from the data frames “traindata” and “testdata” and this joined data is saved in a data frame named “joindata”.

The lines 17-18 locates the variables that measures mean and standard deviation and keep the locations on a vector, then this vector is used in line 19th to extract these variables and keep them in a new data frame named “filterdata”.
The lines 20-23 matches the codes of the activities on the “filterdata” data frame and the “nameactivity” data frame that is created from reading the “activity_labels.txt”. After matching, the names of the activities are attached to the “filterdata” data frame in a new column. 

The 27th line returns a data frame with the mean of each variable in the “filterdata” data frame for each subject for each activity. This data frame is named “meandataset”.
The 28th line renames the first two columns in order to be more explicit.
The final line of code writes the “meandataset” in a txt file named “tidy_data.txt”.

##Variables.
Here is the list of variables that are contained in the “tidy_data.txt” data set.
Note: the t prefix indicates time, the f prefix indicates frequency. Acc means acceleration and Gyro means gyroscope. The x, y and z at the end of some variables indicates the axis.
For more information about the variables, please refer to “features_info.txt” contained in the zip file downloaded from the url mentioned above.


| Position | Variable Name                | Description 
| -------- | :--------------------------: | :----------:
| 1        | subject                      | The subject id 
| 2        | activityname                 | The name of the activity
| 3        | activity                     | The code of the activity
| 4        | tbodyaccmeanx                | Mean of time body acceleration signals in x-axis
| 5        | tbodyaccmeany                | Mean of time body acceleration signals in y-axis
| 6        | tbodyaccmeanz                | Mean of time body acceleration signals in z-axis
| 7        | tgravityaccmeanx             | Mean of time gravity acceleration signals in x-axis
| 8        | tgravityaccmeany             | Mean of time gravity acceleration signals in y-axis
| 9        | tgravityaccmeanz             | Mean of time gravity acceleration signals in z-axis
| 10       | tbodyaccjerkmeanx            | Mean of time body acceleration Jerk signals in x-axis
| 11       | tbodyaccjerkmeany            | Mean of time body acceleration Jerk signals in y-axis
| 12       | tbodyaccjerkmeanz            | Mean of time body acceleration Jerk signals in z-axis
| 13       | tbodygyromeanx               | Mean of time body gyroscope signals in x-axis
| 14       | tbodygyromeany               | Mean of time body gyroscope signals in y-axis
| 15       | tbodygyromeanz               | Mean of time body gyroscope signals in z-axis
| 16       | tbodygyrojerkmeanx           | Mean of time body gyroscope Jerk signals in x-axis
| 17       | tbodygyrojerkmeany           | Mean of time body gyroscope Jerk signals in y-axis
| 18       | tbodygyrojerkmeanz           | Mean of time body gyroscope Jerk signals in z-axis
| 19       | tbodyaccmagmean              | Mean of time body acceleration magnitude
| 20       | tgravityaccmagmean           | Mean of time gravity acceleration magnitude
| 21       | tbodyaccjerkmagmean          | Mean of time body acceleration Jerk signal magnitude
| 22       | tbodygyromagmean             | Mean of time body gyroscope magnitude 
| 23       | tbodygyrojerkmagmean         | Mean of time body gyroscope Jerk signal magnitude
| 24       | fbodyaccmeanx                | Mean of frequency body acceleration in x-axis
| 25       | fbodyaccmeany                | Mean of frequency body acceleration in y-axis
| 26       | fbodyaccmeanz                | Mean of frequency body acceleration in z-axis
| 27       | fbodyaccmeanfreqx            | Mean of frequency body acceleration mean frequency in x-axis
| 28       | fbodyaccmeanfreqy            | Mean of frequency body acceleration mean frequency in y-axis
| 29       | fbodyaccmeanfreqz            | Mean of frequency body acceleration mean frequency in z-axis
| 30       | fbodyaccjerkmeanx            | Mean of frequency body acceleration Jerk signal in x-axis
| 31       | fbodyaccjerkmeany            | Mean of frequency body acceleration Jerk signal in y-axis
| 32       | fbodyaccjerkmeanz            | Mean of frequency body acceleration Jerk signal in z-axis
| 33       | fbodyaccjerkmeanfreqx        | Mean of frequency body acceleration Jerk signal mean frequency in x-axis
| 34       | fbodyaccjerkmeanfreqy        | Mean of frequency body acceleration Jerk signal mean frequency in y-axis
| 35       | fbodyaccjerkmeanfreqz        | Mean of frequency body acceleration Jerk signal mean frequency in z-axis
| 36       | fbodygyromeanx               | Mean of frequency body gyroscope signal in x-axis
| 37       | fbodygyromeany               | Mean of frequency body gyroscope signal in y-axis
| 38       | fbodygyromeanz               | Mean of frequency body gyroscope signal in z-axis
| 39       | fbodygyromeanfreqx           | Mean of frequency body gyroscope signal mean frequency in x-axis
| 40       | fbodygyromeanfreqy           | Mean of frequency body gyroscope signal mean frequency in y-axis
| 41       | fbodygyromeanfreqz           | Mean of frequency body gyroscope signal mean frequency in z-axis
| 42       | fbodyaccmagmean              | Mean of frequency body acceleration magnitude
| 43       | fbodyaccmagmeanfreq          | Mean of frequency body acceleration magnitude mean frequency
| 44       | fbodybodyaccjerkmagmean      | Mean of frequency body acceleration Jerk signal magnitude
| 45       | fbodybodyaccjerkmagmeanfreq  | Mean of frequency body acceleration Jerk signal magnitude mean frequency
| 46       | fbodybodygyromagmean         | Mean of frequency body gyroscope signal magnitude mean
| 47       | fbodybodygyromagmeanfreq     | Mean of frequency body gyroscope signal magnitude mean frequency
| 48       | fbodybodygyrojerkmagmean     | Mean of frequency body gyroscope Jerk signal magnitude mean
| 49       | fbodybodygyrojerkmagmeanfreq | Mean of frequency body gyroscope Jerk signal magnitude mean frequency
| 50       | tbodyaccstdx                 | Standard deviation of time body acceleration signals in x-axis
| 51       | tbodyaccstdy                 | Standard deviation of time body acceleration signals in y-axis
| 52       | tbodyaccstdz                 | Standard deviation of time body acceleration signals in z-axis
| 53       | tgravityaccstdx              | Standard deviation of time gravity acceleration signals in x-axis
| 54       | tgravityaccstdy              | Standard deviation of time gravity acceleration signals in y-axis
| 55       | tgravityaccstdz              | Standard deviation of time gravity acceleration signals in z-axis
| 56       | tbodyaccjerkstdx             | Standard deviation of time body acceleration Jerk signals in x-axis
| 57       | tbodyaccjerkstdy             | Standard deviation of time body acceleration Jerk signals in y-axis
| 58       | tbodyaccjerkstdz             | Standard deviation of time body acceleration Jerk signals in z-axis
| 59       | tbodygyrostdx                | Standard deviation of time body gyroscope signals in x-axis
| 60       | tbodygyrostdy                | Standard deviation of time body gyroscope signals in y-axis
| 61       | tbodygyrostdz                | Standard deviation of time body gyroscope signals in z-axis
| 62       | tbodygyrojerkstdx            | Standard deviation of time body gyroscop Jerk signals in x-axis
| 63       | tbodygyrojerkstdy            | Standard deviation of time body gyroscop Jerk signals in y-axis
| 64       | tbodygyrojerkstdz            | Standard deviation of time body gyroscop Jerk signals in z-axis
| 65       | tbodyaccmagstd               | Standard deviation of time body acceleration magnitude
| 66       | tgravityaccmagstd            | Standard deviation of time gravity acceleration magnitude
| 67       | tbodyaccjerkmagstd           | Standard deviation of time body acceleration Jerk signals magnitude
| 68       | tbodygyromagstd              | Standard deviation of time body gyroscope magnitude
| 69       | tbodygyrojerkmagstd          | Standard deviation of time body gyroscope Jerk signals magnitude
| 70       | fbodyaccstdx                 | Standard deviation of frequency body acceleration in x-axis
| 71       | fbodyaccstdy                 | Standard deviation of frequency body acceleration in y-axis
| 72       | fbodyaccstdz                 | Standard deviation of frequency body acceleration in z-axis
| 73       | fbodyaccjerkstdx             | Standard deviation of frequency body acceleration Jerks signals in x-axis
| 74       | fbodyaccjerkstdy             | Standard deviation of frequency body acceleration Jerks signals in y-axis
| 75       | fbodyaccjerkstdz             | Standard deviation of frequency body acceleration Jerks signals in z-axis
| 76       | fbodygyrostdx                | Standard deviation of frequency body gyroscope signals in x-axis
| 77       | fbodygyrostdy                | Standard deviation of frequency body gyroscope signals in y-axis
| 78       | fbodygyrostdz                | Standard deviation of frequency body gyroscope signals in z-axis
| 79       | fbodyaccmagstd               | Standard deviation of frequency body acceleration magnitude 
| 80       | fbodybodyaccjerkmagstd       | Standard deviation of body acceleration Jerk signals magnitude
| 81       | fbodybodygyromagstd          | Standard deviation of body gyrocope magnitude
| 82       | fbodybodygyrojerkmagstd      | Standard deviation of body gyroscope Jerk signals magnitude




